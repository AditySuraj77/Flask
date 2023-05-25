import json
from datetime import datetime

from flask import Flask, render_template, request, session, redirect,flash
from flask_mail import Mail
from flask_sqlalchemy import SQLAlchemy

with open('config.json', 'r') as c:  # Configuration files
    params = json.load(c)["params"]

local_server = True

app = Flask(__name__, template_folder='Template', static_folder='static')
app.secret_key = 'super-secret-key'

app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,  # Send mail to gmail account and Database Both
    MAIL_USERNAME=params['gmail-user'],
    MAIL_PASSWORD=params['gmail-password'],
)
mail = Mail(app)

if local_server:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']

else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


class Contact(db.Model):
    Srno = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(30), nullable=False)
    Email = db.Column(db.String(15), nullable=False)
    Phone = db.Column(db.String(12), nullable=False)  # Contact detail pull from html file to database
    Message = db.Column(db.String(120), nullable=False)
    Date = db.Column(db.String(12), nullable=True)


class Post(db.Model):
    srno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(30), nullable=False)
    slug = db.Column(db.String(20), nullable=False)  # Send Data from Database to HTML File
    content = db.Column(db.String(12), nullable=False)
    tagline = db.Column(db.String(12), nullable=False)
    Date = db.Column(db.String(12), nullable=True)


@app.route("/")
def index():  # This endpoint are fetch all data to database by using confugration variables.
    flash('Submitted Sucessfully')
    posts = Post.query.filter_by().all()[0:params['no_of_posts']]
    return render_template('index.html', params=params, posts=posts)


@app.route("/post/<string:post_slug>", methods=['GET'])
def post(post_slug):
    posts = Post.query.filter_by(slug=post_slug).first()  # Send Data from Database to HTML File to slug_post Page

    return render_template('post.html', params=params, posts=posts)


@app.route("/about")
def about():
    return render_template('about.html', params=params)


@app.route("/dashboard")
def panel():
    return render_template('dashboard.html', params=params)


@app.route("/logout")
def logout():
    session.pop('user')  # The endpoint for logout
    return redirect('/dashboard')


@app.route("/delete/<string:srno>", methods=['GET', 'POST'])
def delete(srno):
    if 'user' in session and session['user'] == params['Admin_user']:
        posts = Post.query.filter_by(srno=srno).first()
        db.session.delete(posts)  # The endpoint for delete post from Database and html file
        db.session.commit()
        return redirect('/login')


@app.route("/edit/<string:srno>", methods=['GET', 'POST'])
def edit(srno):
    if 'user' in session and session['user'] == params['Admin_user']:
        if request.method == 'POST':
            tit = request.form.get('title')
            sl = request.form.get(
                'slug')  # This endpoint is give acess for user to add a new post in DB and HTlML files
            con = request.form.get('content')
            tag = request.form.get('tagline')
            dt = datetime.now()

            if srno == '0':
                posts = Post(title=tit, slug=sl, content=con, tagline=tag, Date=dt)
                db.session.add(posts)  # This endpoint is give acess for user to add a new post in DB and HTlML files
                db.session.commit()

        return render_template('edit.html', params=params, srno=srno)


@app.route("/login", methods=['GET', 'POST'])
def dashboard():
    if 'user' in session and session['user'] == params['Admin_user']:
        posts = Post.query.all()
        return render_template('dashboard.html', params=params, posts=posts)

    if request.method == 'POST':  # This endpoint are ask user to login if user already login so he render Dashboard but /n
        username = request.form.get(
            'uname')  # user are not login so render login page then complete login task and render Dashboard
        userpass = request.form.get('pass')
        if username == params['Admin_user'] and userpass == params['Admin_password']:
            session['user'] = username
            posts = Post.query.all()
            return render_template('dashboard.html', params=params, posts=posts)
    else:
        return render_template('login.html', params=params)


@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        '''Add entry to the database'''
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')  # Contact detail pull from html file to database
        message = request.form.get('message')
        entry = Contact(Name=name, Email=email, Phone=phone, Message=message, Date=datetime.now())
        db.session.add(entry)
        db.session.commit()

        mail.send_message('New message from' + name,
                          sender=email,  # Send mail to gmail account and Database Both
                          recipients=[params['gmail-user']],
                          body=f" Email = {email}, \n Phone = {phone}, \n Message = {message}"
                          )
        flash('Submitted Sucessfully', 'Sucess')
    return render_template('contact.html')


app.run(debug=True)
