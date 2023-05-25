-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 10:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleanblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Srno` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` int(12) NOT NULL,
  `Message` text NOT NULL,
  `Date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Srno`, `Name`, `Email`, `Phone`, `Message`, `Date`) VALUES
(1, 'Hello', 'hello@gmail.com', 0, 'Hi............', '2022-08-12 09:53:16'),
(2, 'Adi', 'Adi@email.com', 1234567891, 'Hello', '2022-08-13 10:54:08'),
(3, 'suraj', 'suraj@gmail.com', 2147483647, 'Hello we are try few somedays to send contact data to database finally we got sucess...', '2022-08-13 10:56:31'),
(4, 'suraj', 'suraj@gmail.com', 2147483647, 'Hello we are try few somedays to send contact data to database finally we got sucess...', '2022-08-13 10:58:13'),
(5, 'suraj', 'suraj@gmail.com', 2147483647, 'Hello we are try few somedays to send contact data to database finally we got sucess...', '2022-08-13 10:58:42'),
(6, 'suraj', 'suraj@gmail.com', 2147483647, 'Hello we are try few somedays to send contact data to database finally we got sucess...', '2022-08-13 10:59:22'),
(7, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:40:46'),
(8, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:42:46'),
(9, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:46:24'),
(10, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:47:17'),
(11, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:47:38'),
(12, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:51:26'),
(13, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:52:03'),
(14, 'Felix', 'Felix@yahoo.com', 2147483647, 'Looking good your website to using Flask in Backend....Nice', '2022-08-14 10:52:12'),
(15, 'Want', 'Want@yahoo.com', 2147483647, 'Wanter', '2022-08-15 10:23:18'),
(16, 'Want', 'Want@yahoo.com', 2147483647, 'Wanter..', '2022-08-15 10:42:33'),
(17, 'Want', 'Want@yahoo.com', 2147483647, 'Wanter..', '2022-08-15 10:45:00'),
(18, 'Felix', 'Felix@rediffmail.com', 1234567891, 'Hello Good job young man', '2022-08-15 10:48:15'),
(19, 'Duggu', 'Duggu@gmail.com', 2147483647, 'Duggu ', '2022-08-15 10:49:19'),
(20, 'Will', 'Will@gmil.com', 2147483647, 'Will ', '2022-08-17 10:39:27'),
(21, 'venture', 'Venture@gmail.com', 2147483647, 'Hello', '2022-08-23 10:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `srno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `tagline` varchar(60) NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`srno`, `title`, `slug`, `content`, `tagline`, `img_file`, `date`) VALUES
(1, 'Flask Tutorial', 'first_post', 'THis is my first flask App', 'Flask Guide...........', '', '2022-08-18 09:51:08'),
(2, 'Google', 'Second_post', 'Google LLC (/ˈɡuːɡəl/ (listen)) is an American multinational technology company that focuses on search engine technology, online advertising, cloud computing, computer software, quantum computing, e-commerce, artificial intelligence,[9] and consumer electronics. It has been referred to as the \"most powerful company in the world\"[10] and one of the world\'s most valuable brands due to its market dominance, data collection, and technological advantages in the area of artificial intelligence.[11][12][13] It is considered one of the Big Five American information technology companies, alongside Amazon, Apple, Meta, and Microsoft.\r\n\r\nGoogle was founded on September 4, 1998, by Larry Page and Sergey Brin while they were PhD students at Stanford University in California. Together they own about 14% of its publicly listed shares and control 56% of the stockholder voting power through super-voting stock. The company went public via an initial public offering (IPO) in 2004. In 2015, Google was reorganized as a wholly owned subsidiary of Alphabet Inc. Google is Alphabet\'s largest subsidiary and is a holding company for Alphabet\'s Internet properties and interests. Sundar Pichai was appointed CEO of Google on October 24, 2015, replacing Larry Page, who became the CEO of Alphabet. On December 3, 2019, Pichai also became the CEO of Alphabet.[14]\r\n\r\nThe company has since rapidly grown to offer a multitude of products and services beyond Google Search, many of which hold dominant market positions. These products address a wide range of use cases, including email (Gmail), navigation (Maps), cloud computing (Cloud), web browsing (Chrome), video sharing (YouTube), productivity (Workspace), operating systems (Android), cloud storage (Drive), language translation (Translate), photo storage (Photo), video calling (Meet), smart home (Nest), smartphones (Pixel), wearable technology (Fitbit), gaming (Stadia), music streaming (YouTube Music), video on demand (TV), artificial intelligence (Assistant), machine learning APIs (TensorFlow), AI chips (TPU), and more. Discontinued Google products include Glass, Google+, Reader, Play Music, Nexus, Hangouts, and Inbox by Gmail.[15][16]\r\n\r\nGoogle strives for ambitious technological innovations aimed at solving humanity\'s biggest problems.[17] Some of these include quantum computing (Sycamore), self-driving cars (Waymo, formerly the Google Self-Driving Car Project), smart cities (Sidewalk Labs), and transformer models (Google Brain).[18]\r\n\r\nGoogle and YouTube are the two most visited websites worldwide followed by Facebook and Twitter. Google is also the largest search engine, mapping and navigation application, email provider, office suite, video sharing platform, photo and cloud storage provider, mobile operating system, web browser, ML framework, and AI virtual assistant provider in the world as measured by market share. On the list of most valuable brands, Google is ranked second by Forbes[19] and fourth by Interbrand.[20] It has received significant criticism involving issues such as privacy concerns, tax avoidance, censorship, search neutrality, antitrust and abuse of its monopoly position', 'Dont run for New Old ie much better than new..........', '', '2022-08-18 10:37:13'),
(3, 'facebook', 'third_post', 'Facebook is an online social media and social networking service owned by American company Meta Platforms. Founded in 2004 by Mark Zuckerberg with fellow Harvard College students and roommates Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes, its name comes from the face book directories often given to American university students. Membership was initially limited to Harvard students, gradually expanding to other North American universities and, since 2006, anyone over 13 years old. As of July 2022, Facebook claimed 2.93 billion monthly active users,[6] and ranked third worldwide among the most visited websites as of July 2022.[7] It was the most downloaded mobile app of the 2010s.[8]\r\n\r\nFacebook can be accessed from devices with Internet connectivity, such as personal computers, tablets and smartphones. After registering, users can create a profile revealing information about themselves. They can post text, photos and multimedia which are shared with any other users who have agreed to be their \"friend\" or, with different privacy settings, publicly. Users can also communicate directly with each other with Facebook Messenger, join common-interest groups, and receive notifications on the activities of their Facebook friends and the pages they follow.\r\n\r\nThe subject of numerous controversies, Facebook has often been criticized over issues such as user privacy (as with the Cambridge Analytica data scandal), political manipulation (as with the 2016 U.S. elections) and mass surveillance.[9] Posts originating from the Facebook page of Breitbart News, a media organization previously affiliated with Cambridge Analytica, are currently among the most widely shared political content on Facebook.[10][11][12][13][14] Facebook has also been subject to criticism over psychological effects such as addiction and low self-esteem, and various controversies over content such as fake news, conspiracy theories, copyright infringement, and hate speech.[15] Commentators have accused Facebook of willingly facilitating the spread of such content,[16][17][18][19][20][21] as well as exaggerating its number of users to appeal to advertisers.', 'One Idea Change Everything......', '', '2022-08-18 10:37:13'),
(4, 'Microsoft', 'fourth_post', 'Windows is a group of several proprietary graphical operating system families developed and marketed by Microsoft. Each family caters to a certain sector of the computing industry. Active Windows families include Windows NT and Windows IoT; these may encompass subfamilies (e.g. Windows Server or Windows Embedded Compact/Windows CE). Defunct Windows families include Windows 9x, Windows Mobile and Windows Phone.\r\n\r\nMicrosoft introduced an operating environment named Windows on November 20, 1985, as a graphical operating system shell for MS-DOS in response to the growing interest in graphical user interfaces (GUIs).[6]\r\n\r\nApple came to see Windows as an unfair encroachment on their innovation in GUI development as implemented on products such as the Lisa and Macintosh (eventually settled in court in Microsoft\'s favor in 1993). On PCs, Windows is still the most popular operating system in all countries.[7][8] However, in 2014, Microsoft admitted losing the majority of the overall operating system market to Android,[9] because of the massive growth in sales of Android smartphones. In 2014, the number of Windows devices sold was less than 25% that of Android devices sold. According to StatCounter, for desktop and laptop computers Windows has approximately 75% market share as of April 2022.[10]\r\n\r\nAs of October 2021, the most recent version of Windows for PCs and tablets is Windows 11, version 21H2. The most recent version for embedded devices is Windows 11, version 21H2.[11] The most recent version for server computers is Windows Server 2022, version 21H2.[12] A specialized version of Windows also runs on the Xbox One and Xbox Series X/S video game consoles.[13]', 'Keep Working One Day you find What do you love.....', '', '2022-08-18 10:38:59'),
(5, 'Iphone', 'fifth_post', 'The iPhone is a line of smartphones designed and marketed by Apple Inc. These devices use Apple\'s iOS mobile operating system. The first-generation iPhone was announced by then-Apple CEO Steve Jobs on January 9, 2007. Since then, Apple has annually released new iPhone models and iOS updates. As of November 1, 2018, more than 2.2 billion iPhones had been sold.\r\n\r\nThe iPhone has a user interface built around a multi-touch screen. It connects to cellular networks or Wi-Fi, and can make calls, browse the web, take pictures, play music and send and receive emails and text messages. Since the iPhone\'s launch further features have been added, including larger screen sizes, shooting video, waterproofing, the ability to install third-party mobile apps through an app store, and many accessibility features. Up to iPhone 8 and 8 Plus, iPhones used a layout with a single button on the front panel that returns the user to the home screen. Since iPhone X, iPhone models have switched to a nearly bezel-less front screen design with app switching activated by gesture recognition. The older layout today is still used for Apple\'s currently-produced iPhone SE series.\r\n\r\nThe iPhone is one of the two largest smartphone platforms in the world alongside Android, forming a large part of the luxury market. The iPhone has generated large profits for Apple, making it one of the world\'s most valuable publicly traded companies. The first-generation iPhone was described as \"revolutionary\" and a \"game-changer\" for the mobile phone industry and subsequent models have also garnered praise. The iPhone has been credited with popularizing the smartphone and slate form factor, and with creating a large market for smartphone apps, or \"app economy\". As of January 2017, Apple\'s App Store contained more than 2.2 million applications for the iPhone.', 'It device must need to public not student......', '', '2022-08-18 10:38:59'),
(6, 'Alphabet', 'sixth_post', 'Alphabet Inc. is an American multinational technology conglomerate holding company headquartered in Mountain View, California. It was created through a restructuring of Google on October 2, 2015,[2] and became the parent company of Google and several former Google subsidiaries.[3][4][5] Alphabet is the world\'s third-largest technology company by revenue and one of the world\'s most valuable companies.[6][7] It is one of the Big Five American information technology companies, alongside Amazon, Apple, Meta and Microsoft.\r\n\r\nThe establishment of Alphabet Inc. was prompted by a desire to make the core Google business \"cleaner and more accountable\" while allowing greater autonomy to group companies that operate in businesses other than Internet services.[4][8] Founders Larry Page and Sergey Brin announced their resignation from their executive posts in December 2019, with the CEO role to be filled by Sundar Pichai, also the CEO of Google. Page and Brin remain employees, board members, and controlling shareholders of Alphabet Inc.[9]', 'I don\'t no What this tech really Do......', '', '2022-08-18 10:46:58'),
(7, 'HP', 'seventh_post', 'The Hewlett-Packard Company, commonly shortened to Hewlett-Packard (/ˈhjuːlɪt ˈpækərd/ HYEW-lit PAK-ərd) or HP, was an American multinational information technology company headquartered in Palo Alto, California. HP developed and provided a wide variety of hardware components, as well as software and related services to consumers, small and medium-sized businesses (SMBs), and large enterprises, including customers in the government, health, and education sectors. The company was founded in a one-car garage in Palo Alto by Bill Hewlett and David Packard in 1939, and initially produced a line of electronic test and measurement equipment. The HP Garage at 367 Addison Avenue is now designated an official California Historical Landmark, and is marked with a plaque calling it the \"Birthplace of \'Silicon Valley\'\".\r\n\r\nThe company won its first big contract in 1938 to provide test and measurement instruments for Walt Disney\'s production of the animated film Fantasia, which allowed Hewlett and Packard to formally establish the Hewlett-Packard Company on July 2, 1939.[1] The company grew into a multinational corporation widely respected for its products. HP was the world\'s leading PC manufacturer from 2007 until the second quarter of 2013, when Lenovo moved ahead of HP.[2][3][4] HP specialized in developing and manufacturing computing, data storage, and networking hardware; designing software; and delivering services. Major product lines included personal computing devices, enterprise and industry standard servers, related storage devices, networking products, software, and a range of printers and other imaging products. The company directly marketed its products to households; small- to medium-sized businesses and enterprises, as well as via online distribution; consumer-electronics and office-supply retailers; software partners; and major technology vendors. It also offered services and a consulting business for its products and partner products.\r\n\r\nIn 1999, HP spun off its electronic and bio-analytical test and measurement instruments business into Agilent Technologies; HP retained focus on its later products, including computers and printers. It merged with Compaq in 2002, and acquired Electronic Data Systems in 2008, which led to combined revenues of $118.4 billion that year and a Fortune 500 ranking of 9 in 2009. In November 2009, HP announced its acquisition of 3Com,[5] and closed the deal on April 12, 2010.[6] On April 28, 2010, HP announced its buyout of Palm, Inc. for $1.2 billion.[7] On September 2, 2010, HP won its bidding war for 3PAR with a $33 a share offer ($2.07 billion), which Dell declined to match.[8]\r\n\r\nOn November 1, 2015, the company spun off its enterprise products and services business Hewlett Packard Enterprise. HP retained the personal computer and printer businesses and was renamed HP Inc.[9]', 'Best And Big supplier og Digital Notebook......', '', '2022-08-18 10:46:58'),
(8, 'Bootstra', 'eighth_post', 'Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains HTML, CSS and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components...', 'Frontend Easy', '', '2022-08-21 10:31:36'),
(9, 'Virat Kohli', 'ninth_post', 'Virat Kohli is an Indian international cricketer and former captain of the India national cricket team.', 'Run Machine', '', '2022-08-22 14:11:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Srno`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
