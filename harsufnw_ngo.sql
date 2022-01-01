-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2022 at 05:56 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `harsufnw_ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `about_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_desc`, `images`, `delete_status`, `created_at`) VALUES
(4, 'We work a decade back with street and “slum” children by providing awareness, medical services, mid-day meal, various counseling and vocational training in various Urban &amp; Rural areas of Dehradun district. We assist children, the poor and the marginalized individuals and communities in need-regardless of background, caste, race, religion Harsukh Foundation is registered under Society Act, Income Tax department.', '1614107090_78e9gs3ljhrfu5x2znyc1614107090.png', 0, '2020-06-29 12:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `delete_status` int(2) NOT NULL,
  `position` int(11) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `delete_status`, `position`, `color_code`, `images`, `parent_id`) VALUES
(1, 'Food', 0, 1, '#FF0000', 'medical.png', 0),
(2, 'Education', 0, 2, '#495057', 'tree-plantation.png', 0),
(3, 'Community Development', 0, 3, '#495057', 'animal-walfare.png', 0),
(4, 'Women\'s Empowerment', 0, 4, '#495057', 'envoirment-protection.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved` int(11) NOT NULL DEFAULT '0',
  `delete_status` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `message`, `created_at`, `approved`, `delete_status`, `post_id`, `slug`) VALUES
(1, 'gdgdfg', 'gdgdf@ff.com', 'gfgdfg', '2021-02-25 00:32:05', 1, 0, 195, 'support'),
(2, 'dsdasd', 'dadasd.ffff', 'fsdfsf', '2021-02-25 00:33:48', 1, 0, 195, 'support');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone_no` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `website` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `delete_status` int(2) NOT NULL COMMENT '1=delete',
  `request_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone_no`, `email_id`, `website`, `description`, `delete_status`, `request_time`) VALUES
(13, 'twst', '349438943', 'test', 'fsdfs', 'fsdfsdf', 0, '2021-02-23 20:15:20'),
(14, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'My name’s Eric and I just came across your website - harsukhfoundation.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like harsukhfoundation.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-06-17 16:05:54'),
(15, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with harsukhfoundation.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out harsukhfoundation.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-08-10 13:02:14'),
(16, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'My name’s Eric and I just came across your website - harsukhfoundation.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like harsukhfoundation.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-09-01 16:02:17'),
(17, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'My name’s Eric and I just came across your website - harsukhfoundation.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like harsukhfoundation.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-09-01 17:48:50'),
(18, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at harsukhfoundation.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-10-22 16:12:50'),
(19, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'Hi, my name is Eric and I’m betting you’d like your website harsukhfoundation.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at harsukhfoundation.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-11-16 18:29:00'),
(20, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'www.talkwithwebvisitors.com', 'Hello, my name’s Eric and I just ran across your website at harsukhfoundation.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=harsukhfoundation.com\r\n', 0, '2021-11-21 03:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `danation`
--

CREATE TABLE `danation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `donate_dt` datetime NOT NULL,
  `purpose` text NOT NULL,
  `pay_method` text NOT NULL,
  `pay_notes` text NOT NULL,
  `status` int(2) NOT NULL,
  `delete_status` int(2) NOT NULL,
  `txn_no` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danation`
--

INSERT INTO `danation` (`id`, `name`, `email`, `phone`, `amount`, `donate_dt`, `purpose`, `pay_method`, `pay_notes`, `status`, `delete_status`, `txn_no`) VALUES
(74, 'test', 'test@gmail.com', 'test', 10.00, '2021-03-07 17:05:54', 'sdjjdf', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(75, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-09-11 22:53:28', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(76, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-09-20 15:19:14', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(77, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-09-30 02:14:41', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(78, 'go@showhis.email', 'go@showhis.email', 'go@showhis.email', 0.00, '2021-09-30 12:04:25', 'go@showhis.email', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(79, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-10-01 18:25:06', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(80, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-10-08 11:22:43', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(81, '78kg8766kjtycchrtfhtycutykdtjhdkf www.apple.com cug', '1995maksimivanov00@mail.ru', 'JdanovJdan1983@mail.ru', 6.00, '2021-10-11 14:34:23', '', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(82, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-10-14 20:12:56', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(83, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-10-15 18:32:13', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(84, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-10-23 00:18:07', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(85, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-10-26 04:47:22', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(86, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-05 03:38:38', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(87, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-11 23:04:08', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(88, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-15 02:46:43', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(89, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-19 10:37:37', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(90, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-24 14:37:09', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(91, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-25 15:11:35', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(92, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-29 12:20:49', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(93, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-11-30 09:14:14', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(94, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-01 20:42:53', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(95, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-05 06:18:46', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(96, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-05 21:44:20', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(97, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-08 01:16:56', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(98, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-09 11:18:12', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(99, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-20 13:56:16', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(100, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-24 04:53:13', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(101, 'harsukhfoundation.com', 'harsukhfoundation.com@buycodeshop.com', 'harsukhfoundation.com', 0.00, '2021-12-31 16:34:36', 'harsukhfoundation.com', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL),
(102, 'xczczxc', 'czxczcz@ggg.cc', 'czxcxc', 1.00, '2022-01-01 11:24:55', 'fsdfs', 'Instamojo Gateway', 'Redirected to PG', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL DEFAULT '0',
  `state_name` varchar(155) DEFAULT NULL,
  `district_name` varchar(155) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `state_id`, `state_name`, `district_name`, `status`, `created_at`) VALUES
(1, 1, 'ANDAMAN AND NICOBAR ISLANDS', 'Nicobar', 1, '2021-02-18 04:35:28'),
(2, 1, 'ANDAMAN AND NICOBAR ISLANDS', 'Mayabunder', 1, '2021-02-18 04:35:28'),
(3, 1, 'ANDAMAN AND NICOBAR ISLANDS', 'South Andaman', 1, '2021-02-18 04:35:28'),
(4, 2, 'ANDHRA PRADESH', 'Anantapur', 1, '2021-02-18 04:35:28'),
(5, 2, 'ANDHRA PRADESH', 'Chittoor', 1, '2021-02-18 04:35:28'),
(6, 2, 'ANDHRA PRADESH', 'East Godavari', 1, '2021-02-18 04:35:28'),
(7, 2, 'ANDHRA PRADESH', 'Guntur', 1, '2021-02-18 04:35:28'),
(8, 2, 'ANDHRA PRADESH', 'Kadapa', 1, '2021-02-18 04:35:28'),
(9, 2, 'ANDHRA PRADESH', 'Krishna', 1, '2021-02-18 04:35:28'),
(10, 2, 'ANDHRA PRADESH', 'Kurnool', 1, '2021-02-18 04:35:28'),
(11, 2, 'ANDHRA PRADESH', 'Nellore', 1, '2021-02-18 04:35:28'),
(12, 2, 'ANDHRA PRADESH', 'Prakasam', 1, '2021-02-18 04:35:28'),
(13, 2, 'ANDHRA PRADESH', 'Srikakulam', 1, '2021-02-18 04:35:28'),
(14, 2, 'ANDHRA PRADESH', 'Visakhapatnam', 1, '2021-02-18 04:35:28'),
(15, 2, 'ANDHRA PRADESH', 'Vizianagaram', 1, '2021-02-18 04:35:28'),
(16, 2, 'ANDHRA PRADESH', 'West Godavari', 1, '2021-02-18 04:35:28'),
(17, 3, 'ARUNACHAL PRADESH', 'Changlang', 1, '2021-02-18 04:35:28'),
(18, 3, 'ARUNACHAL PRADESH', 'Dibang Valley', 1, '2021-02-18 04:35:28'),
(19, 3, 'ARUNACHAL PRADESH', 'East Kameng', 1, '2021-02-18 04:35:28'),
(20, 3, 'ARUNACHAL PRADESH', 'East Siang', 1, '2021-02-18 04:35:28'),
(21, 3, 'ARUNACHAL PRADESH', 'Kurung Kumey', 1, '2021-02-18 04:35:28'),
(22, 3, 'ARUNACHAL PRADESH', 'Lohit', 1, '2021-02-18 04:35:28'),
(23, 3, 'ARUNACHAL PRADESH', 'Lower Dibang Valley', 1, '2021-02-18 04:35:28'),
(24, 3, 'ARUNACHAL PRADESH', 'Lower Subansiri', 1, '2021-02-18 04:35:28'),
(25, 3, 'ARUNACHAL PRADESH', 'Papum Pare', 1, '2021-02-18 04:35:28'),
(26, 3, 'ARUNACHAL PRADESH', 'Tawang', 1, '2021-02-18 04:35:28'),
(27, 3, 'ARUNACHAL PRADESH', 'Tirap', 1, '2021-02-18 04:35:28'),
(28, 3, 'ARUNACHAL PRADESH', 'Upper Siang', 1, '2021-02-18 04:35:28'),
(29, 3, 'ARUNACHAL PRADESH', 'Upper Subansiri', 1, '2021-02-18 04:35:28'),
(30, 3, 'ARUNACHAL PRADESH', 'West Kameng', 1, '2021-02-18 04:35:28'),
(31, 3, 'ARUNACHAL PRADESH', 'West Siang', 1, '2021-02-18 04:35:28'),
(32, 4, 'ASSAM', 'Baksa', 1, '2021-02-18 04:35:28'),
(33, 4, 'ASSAM', 'Mushalpur', 1, '2021-02-18 04:35:28'),
(34, 4, 'ASSAM', 'Bajali', 1, '2021-02-18 04:35:28'),
(35, 4, 'ASSAM', 'Barpeta', 1, '2021-02-18 04:35:28'),
(37, 4, 'ASSAM', 'Bongaigaon', 1, '2021-02-18 04:35:28'),
(38, 4, 'ASSAM', 'Cachar', 1, '2021-02-18 04:35:28'),
(39, 4, 'ASSAM', 'Charaideo', 1, '2021-02-18 04:35:28'),
(40, 4, 'ASSAM', 'Chirang', 1, '2021-02-18 04:35:28'),
(41, 4, 'ASSAM', 'Darrang', 1, '2021-02-18 04:35:28'),
(42, 4, 'ASSAM', 'Dhemaji', 1, '2021-02-18 04:35:28'),
(43, 4, 'ASSAM', 'Dhubri', 1, '2021-02-18 04:35:28'),
(44, 4, 'ASSAM', 'Dibrugarh', 1, '2021-02-18 04:35:28'),
(45, 4, 'ASSAM', 'Dima Hasao', 1, '2021-02-18 04:35:28'),
(46, 4, 'ASSAM', 'Goalpara', 1, '2021-02-18 04:35:28'),
(47, 4, 'ASSAM', 'Golaghat', 1, '2021-02-18 04:35:28'),
(48, 4, 'ASSAM', 'Hailakandi', 1, '2021-02-18 04:35:28'),
(49, 4, 'ASSAM', 'Hojai', 1, '2021-02-18 04:35:28'),
(50, 4, 'ASSAM', 'Jorhat', 1, '2021-02-18 04:35:28'),
(51, 4, 'ASSAM', 'Kamrup Metropolitan', 1, '2021-02-18 04:35:28'),
(52, 4, 'ASSAM', 'Kamrup', 1, '2021-02-18 04:35:28'),
(53, 4, 'ASSAM', 'Karbi Anglong', 1, '2021-02-18 04:35:28'),
(54, 4, 'ASSAM', 'Karimganj', 1, '2021-02-18 04:35:28'),
(55, 4, 'ASSAM', 'Kokrajhar', 1, '2021-02-18 04:35:28'),
(56, 4, 'ASSAM', 'Lakhimpur', 1, '2021-02-18 04:35:28'),
(57, 4, 'ASSAM', 'Majuli', 1, '2021-02-18 04:35:28'),
(58, 4, 'ASSAM', 'Morigaon', 1, '2021-02-18 04:35:28'),
(59, 4, 'ASSAM', 'Nagaon', 1, '2021-02-18 04:35:28'),
(60, 4, 'ASSAM', 'Nalbari', 1, '2021-02-18 04:35:28'),
(61, 4, 'ASSAM', 'Sivasagar', 1, '2021-02-18 04:35:28'),
(62, 4, 'ASSAM', 'Sonitpur', 1, '2021-02-18 04:35:28'),
(63, 4, 'ASSAM', 'South Salmara-Mankachar', 1, '2021-02-18 04:35:28'),
(64, 4, 'ASSAM', 'Tinsukia', 1, '2021-02-18 04:35:28'),
(65, 4, 'ASSAM', 'Udalguri#', 1, '2021-02-18 04:35:28'),
(66, 4, 'ASSAM', 'West Karbi Anglong', 1, '2021-02-18 04:35:28'),
(67, 5, 'BIHAR', 'Araria', 1, '2021-02-18 04:35:28'),
(68, 5, 'BIHAR', 'Arwal', 1, '2021-02-18 04:35:28'),
(69, 5, 'BIHAR', 'Aurangabad', 1, '2021-02-18 04:35:28'),
(70, 5, 'BIHAR', 'Banka', 1, '2021-02-18 04:35:28'),
(71, 5, 'BIHAR', 'Begusarai', 1, '2021-02-18 04:35:28'),
(72, 5, 'BIHAR', 'Bhagalpur', 1, '2021-02-18 04:35:28'),
(73, 5, 'BIHAR', 'Bhojpur', 1, '2021-02-18 04:35:28'),
(74, 5, 'BIHAR', 'Buxar', 1, '2021-02-18 04:35:28'),
(75, 5, 'BIHAR', 'Darbhanga', 1, '2021-02-18 04:35:28'),
(76, 5, 'BIHAR', 'East Champaran (Motihari)', 1, '2021-02-18 04:35:28'),
(77, 5, 'BIHAR', 'Gaya', 1, '2021-02-18 04:35:28'),
(78, 5, 'BIHAR', 'Gopalganj', 1, '2021-02-18 04:35:28'),
(79, 5, 'BIHAR', 'Jamui', 1, '2021-02-18 04:35:28'),
(80, 5, 'BIHAR', 'Jehanabad', 1, '2021-02-18 04:35:28'),
(81, 5, 'BIHAR', 'Kaimur (Bhabua)', 1, '2021-02-18 04:35:28'),
(82, 5, 'BIHAR', 'Katihar', 1, '2021-02-18 04:35:28'),
(83, 5, 'BIHAR', 'Khagaria', 1, '2021-02-18 04:35:28'),
(84, 5, 'BIHAR', 'Kishanganj', 1, '2021-02-18 04:35:28'),
(85, 5, 'BIHAR', 'Lakhisarai', 1, '2021-02-18 04:35:28'),
(86, 5, 'BIHAR', 'Madhepura', 1, '2021-02-18 04:35:28'),
(87, 5, 'BIHAR', 'Madhubani', 1, '2021-02-18 04:35:28'),
(88, 5, 'BIHAR', 'Munger (Monghyr)', 1, '2021-02-18 04:35:28'),
(89, 5, 'BIHAR', 'Muzaffarpur', 1, '2021-02-18 04:35:28'),
(90, 5, 'BIHAR', 'Nalanda', 1, '2021-02-18 04:35:28'),
(91, 5, 'BIHAR', 'Nawada', 1, '2021-02-18 04:35:28'),
(92, 5, 'BIHAR', 'Patna', 1, '2021-02-18 04:35:28'),
(93, 5, 'BIHAR', 'Purnia (Purnea)', 1, '2021-02-18 04:35:28'),
(94, 5, 'BIHAR', 'Rohtas', 1, '2021-02-18 04:35:28'),
(95, 5, 'BIHAR', 'Saharsa', 1, '2021-02-18 04:35:28'),
(96, 5, 'BIHAR', 'Samastipur', 1, '2021-02-18 04:35:28'),
(97, 5, 'BIHAR', 'Saran', 1, '2021-02-18 04:35:28'),
(98, 5, 'BIHAR', 'Sheikhpura', 1, '2021-02-18 04:35:28'),
(99, 5, 'BIHAR', 'Sheohar', 1, '2021-02-18 04:35:28'),
(100, 5, 'BIHAR', 'Sitamarhi', 1, '2021-02-18 04:35:28'),
(101, 5, 'BIHAR', 'Siwan', 1, '2021-02-18 04:35:28'),
(102, 5, 'BIHAR', 'Supaul', 1, '2021-02-18 04:35:28'),
(103, 5, 'BIHAR', 'Vaishali', 1, '2021-02-18 04:35:28'),
(104, 5, 'BIHAR', 'West Champaran', 1, '2021-02-18 04:35:28'),
(105, 6, 'CHATTISGARH', 'Balod', 1, '2021-02-18 04:35:28'),
(106, 6, 'CHATTISGARH', 'Baloda Bazar', 1, '2021-02-18 04:35:28'),
(107, 6, 'CHATTISGARH', 'Balrampur', 1, '2021-02-18 04:35:28'),
(108, 6, 'CHATTISGARH', 'Bastar', 1, '2021-02-18 04:35:28'),
(109, 6, 'CHATTISGARH', 'Bemetara', 1, '2021-02-18 04:35:28'),
(110, 6, 'CHATTISGARH', 'Bijapur', 1, '2021-02-18 04:35:28'),
(111, 6, 'CHATTISGARH', 'Bilaspur', 1, '2021-02-18 04:35:28'),
(112, 6, 'CHATTISGARH', 'Dantewada (South Bastar)', 1, '2021-02-18 04:35:28'),
(113, 6, 'CHATTISGARH', 'Dhamtari', 1, '2021-02-18 04:35:28'),
(114, 6, 'CHATTISGARH', 'Durg', 1, '2021-02-18 04:35:28'),
(115, 6, 'CHATTISGARH', 'Gariyaband', 1, '2021-02-18 04:35:28'),
(116, 6, 'CHATTISGARH', 'Janjgir-Champa', 1, '2021-02-18 04:35:28'),
(117, 6, 'CHATTISGARH', 'Jashpur', 1, '2021-02-18 04:35:28'),
(118, 6, 'CHATTISGARH', 'Kabirdham (Kawardha)', 1, '2021-02-18 04:35:28'),
(119, 6, 'CHATTISGARH', 'Kanker (North Bastar)', 1, '2021-02-18 04:35:28'),
(120, 6, 'CHATTISGARH', 'Kondagaon', 1, '2021-02-18 04:35:28'),
(121, 6, 'CHATTISGARH', 'Korba', 1, '2021-02-18 04:35:28'),
(122, 6, 'CHATTISGARH', 'Korea (Koriya)', 1, '2021-02-18 04:35:28'),
(123, 6, 'CHATTISGARH', 'Mahasamund', 1, '2021-02-18 04:35:28'),
(124, 6, 'CHATTISGARH', 'Mungeli', 1, '2021-02-18 04:35:28'),
(125, 6, 'CHATTISGARH', 'Narayanpur', 1, '2021-02-18 04:35:28'),
(126, 6, 'CHATTISGARH', 'Raigarh', 1, '2021-02-18 04:35:28'),
(127, 6, 'CHATTISGARH', 'Raipur', 1, '2021-02-18 04:35:28'),
(128, 6, 'CHATTISGARH', 'Rajnandgaon', 1, '2021-02-18 04:35:28'),
(129, 6, 'CHATTISGARH', 'Sukma', 1, '2021-02-18 04:35:28'),
(130, 6, 'CHATTISGARH', 'Surajpur  ', 1, '2021-02-18 04:35:28'),
(131, 6, 'CHATTISGARH', 'Surguja', 1, '2021-02-18 04:35:28'),
(132, 7, 'CHANDIGARH (UT)', 'Chandigarh', 1, '2021-02-18 04:35:28'),
(133, 8, 'DAMAN AND DIU', 'Daman', 1, '2021-02-18 04:35:28'),
(134, 8, 'DAMAN AND DIU', 'Diu', 1, '2021-02-18 04:35:28'),
(135, 9, 'DELHI', 'Central Delhi', 1, '2021-02-18 04:35:28'),
(136, 9, 'DELHI', 'East Delhi', 1, '2021-02-18 04:35:28'),
(137, 9, 'DELHI', 'New Delhi', 1, '2021-02-18 04:35:28'),
(138, 9, 'DELHI', 'North Delhi', 1, '2021-02-18 04:35:28'),
(139, 9, 'DELHI', 'North East  Delhi', 1, '2021-02-18 04:35:28'),
(140, 9, 'DELHI', 'North West  Delhi', 1, '2021-02-18 04:35:28'),
(141, 9, 'DELHI', 'Shahdara', 1, '2021-02-18 04:35:28'),
(142, 9, 'DELHI', 'South Delhi', 1, '2021-02-18 04:35:28'),
(143, 9, 'DELHI', 'South East Delhi', 1, '2021-02-18 04:35:28'),
(144, 9, 'DELHI', 'South West  Delhi', 1, '2021-02-18 04:35:28'),
(145, 9, 'DELHI', 'West Delhi', 1, '2021-02-18 04:35:28'),
(146, 10, 'DADRA AND NAGAR HAVELI', 'DADRA AND NAGAR HAVELI', 1, '2021-02-18 04:35:28'),
(147, 11, 'GOA', 'North Goa', 1, '2021-02-18 04:35:28'),
(148, 11, 'GOA', 'South Goa', 1, '2021-02-18 04:35:28'),
(149, 12, 'GUJARAT', 'Ahmedabad', 1, '2021-02-18 04:35:28'),
(150, 12, 'GUJARAT', 'Amreli', 1, '2021-02-18 04:35:28'),
(151, 12, 'GUJARAT', 'Anand', 1, '2021-02-18 04:35:28'),
(152, 12, 'GUJARAT', 'Aravalli', 1, '2021-02-18 04:35:28'),
(153, 12, 'GUJARAT', 'Banaskantha (Palanpur)', 1, '2021-02-18 04:35:28'),
(154, 12, 'GUJARAT', 'Bharuch', 1, '2021-02-18 04:35:28'),
(155, 12, 'GUJARAT', 'Bhavnagar', 1, '2021-02-18 04:35:28'),
(156, 12, 'GUJARAT', 'Botad', 1, '2021-02-18 04:35:28'),
(157, 12, 'GUJARAT', 'Chhota Udepur', 1, '2021-02-18 04:35:28'),
(158, 12, 'GUJARAT', 'Dahod', 1, '2021-02-18 04:35:28'),
(159, 12, 'GUJARAT', 'Dangs (Ahwa)', 1, '2021-02-18 04:35:28'),
(160, 12, 'GUJARAT', 'Devbhoomi Dwarka', 1, '2021-02-18 04:35:28'),
(161, 12, 'GUJARAT', 'Gandhinagar', 1, '2021-02-18 04:35:28'),
(162, 12, 'GUJARAT', 'Gir Somnath', 1, '2021-02-18 04:35:28'),
(163, 12, 'GUJARAT', 'Jamnagar', 1, '2021-02-18 04:35:28'),
(164, 12, 'GUJARAT', 'Junagadh', 1, '2021-02-18 04:35:28'),
(165, 12, 'GUJARAT', 'Kachchh', 1, '2021-02-18 04:35:28'),
(166, 12, 'GUJARAT', 'Kheda (Nadiad)', 1, '2021-02-18 04:35:28'),
(167, 12, 'GUJARAT', 'Mahisagar', 1, '2021-02-18 04:35:28'),
(168, 12, 'GUJARAT', 'Mehsana', 1, '2021-02-18 04:35:28'),
(169, 12, 'GUJARAT', 'Morbi', 1, '2021-02-18 04:35:28'),
(170, 12, 'GUJARAT', 'Narmada (Rajpipla)', 1, '2021-02-18 04:35:28'),
(171, 12, 'GUJARAT', 'Navsari', 1, '2021-02-18 04:35:28'),
(172, 12, 'GUJARAT', 'Panchmahal (Godhra)', 1, '2021-02-18 04:35:28'),
(173, 12, 'GUJARAT', 'Patan', 1, '2021-02-18 04:35:28'),
(174, 12, 'GUJARAT', 'Porbandar', 1, '2021-02-18 04:35:28'),
(175, 12, 'GUJARAT', 'Rajkot', 1, '2021-02-18 04:35:28'),
(176, 12, 'GUJARAT', 'Sabarkantha (Himmatnagar)', 1, '2021-02-18 04:35:28'),
(177, 12, 'GUJARAT', 'Surat', 1, '2021-02-18 04:35:28'),
(178, 12, 'GUJARAT', 'Surendranagar', 1, '2021-02-18 04:35:28'),
(179, 12, 'GUJARAT', 'Tapi (Vyara)', 1, '2021-02-18 04:35:28'),
(180, 12, 'GUJARAT', 'Vadodara', 1, '2021-02-18 04:35:28'),
(181, 12, 'GUJARAT', 'Valsad', 1, '2021-02-18 04:35:28'),
(182, 13, 'Himachal Pradesh', 'Bilaspur', 1, '2021-02-18 04:35:28'),
(183, 13, 'Himachal Pradesh', 'Chamba', 1, '2021-02-18 04:35:28'),
(184, 13, 'Himachal Pradesh', 'Hamirpur', 1, '2021-02-18 04:35:28'),
(185, 13, 'Himachal Pradesh', 'Kangra', 1, '2021-02-18 04:35:28'),
(186, 13, 'Himachal Pradesh', 'Kinnaur', 1, '2021-02-18 04:35:28'),
(187, 13, 'Himachal Pradesh', 'Kullu', 1, '2021-02-18 04:35:28'),
(188, 13, 'Himachal Pradesh', 'Lahaul &amp', 1, '2021-02-18 04:35:28'),
(189, 13, 'Himachal Pradesh', 'Mandi', 1, '2021-02-18 04:35:28'),
(190, 13, 'Himachal Pradesh', 'Shimla', 1, '2021-02-18 04:35:28'),
(191, 13, 'Himachal Pradesh', 'Sirmaur (Sirmour)', 1, '2021-02-18 04:35:28'),
(192, 13, 'Himachal Pradesh', 'Solan', 1, '2021-02-18 04:35:28'),
(193, 13, 'Himachal Pradesh', 'Una', 1, '2021-02-18 04:35:28'),
(194, 14, 'Haryana', 'Ambala', 1, '2021-02-18 04:35:28'),
(195, 14, 'Haryana', 'Bhiwani', 1, '2021-02-18 04:35:28'),
(196, 14, 'Haryana', 'Charkhi Dadri', 1, '2021-02-18 04:35:28'),
(197, 14, 'Haryana', 'Faridabad', 1, '2021-02-18 04:35:28'),
(198, 14, 'Haryana', 'Fatehabad', 1, '2021-02-18 04:35:28'),
(199, 14, 'Haryana', 'Gurgaon', 1, '2021-02-18 04:35:28'),
(200, 14, 'Haryana', 'Hisar', 1, '2021-02-18 04:35:28'),
(201, 14, 'Haryana', 'Jhajjar', 1, '2021-02-18 04:35:28'),
(202, 14, 'Haryana', 'Jind', 1, '2021-02-18 04:35:28'),
(203, 14, 'Haryana', 'Kaithal', 1, '2021-02-18 04:35:28'),
(204, 14, 'Haryana', 'Karnal', 1, '2021-02-18 04:35:28'),
(205, 14, 'Haryana', 'Kurukshetra', 1, '2021-02-18 04:35:28'),
(206, 14, 'Haryana', 'Mahendragarh', 1, '2021-02-18 04:35:28'),
(207, 14, 'Haryana', 'Mewat', 1, '2021-02-18 04:35:28'),
(208, 14, 'Haryana', 'Palwal', 1, '2021-02-18 04:35:28'),
(209, 14, 'Haryana', 'Panchkula', 1, '2021-02-18 04:35:28'),
(210, 14, 'Haryana', 'Panipat', 1, '2021-02-18 04:35:28'),
(211, 14, 'Haryana', 'Rewari', 1, '2021-02-18 04:35:28'),
(212, 14, 'Haryana', 'Rohtak', 1, '2021-02-18 04:35:28'),
(213, 14, 'Haryana', 'Sirsa', 1, '2021-02-18 04:35:28'),
(214, 14, 'Haryana', 'Sonipat', 1, '2021-02-18 04:35:28'),
(215, 14, 'Haryana', 'Yamunanagar', 1, '2021-02-18 04:35:28'),
(216, 15, 'Jammu and Kashmir', 'Anantnag', 1, '2021-02-18 04:35:28'),
(217, 15, 'Jammu and Kashmir', 'Bandipore', 1, '2021-02-18 04:35:28'),
(218, 15, 'Jammu and Kashmir', 'Baramulla', 1, '2021-02-18 04:35:28'),
(219, 15, 'Jammu and Kashmir', 'Budgam', 1, '2021-02-18 04:35:28'),
(220, 15, 'Jammu and Kashmir', 'Doda', 1, '2021-02-18 04:35:28'),
(221, 15, 'Jammu and Kashmir', 'Ganderbal', 1, '2021-02-18 04:35:28'),
(222, 15, 'Jammu and Kashmir', 'Jammu', 1, '2021-02-18 04:35:28'),
(223, 15, 'Jammu and Kashmir', 'Kargil', 1, '2021-02-18 04:35:28'),
(224, 15, 'Jammu and Kashmir', 'Kathua', 1, '2021-02-18 04:35:28'),
(225, 15, 'Jammu and Kashmir', 'Kishtwar', 1, '2021-02-18 04:35:28'),
(226, 15, 'Jammu and Kashmir', 'Kulgam', 1, '2021-02-18 04:35:28'),
(227, 15, 'Jammu and Kashmir', 'Kupwara', 1, '2021-02-18 04:35:28'),
(228, 15, 'Jammu and Kashmir', 'Leh', 1, '2021-02-18 04:35:28'),
(229, 15, 'Jammu and Kashmir', 'Poonch', 1, '2021-02-18 04:35:28'),
(230, 15, 'Jammu and Kashmir', 'Pulwama', 1, '2021-02-18 04:35:28'),
(231, 15, 'Jammu and Kashmir', 'Rajouri', 1, '2021-02-18 04:35:28'),
(232, 15, 'Jammu and Kashmir', 'Ramban', 1, '2021-02-18 04:35:28'),
(233, 15, 'Jammu and Kashmir', 'Reasi', 1, '2021-02-18 04:35:28'),
(234, 15, 'Jammu and Kashmir', 'Samba', 1, '2021-02-18 04:35:28'),
(235, 15, 'Jammu and Kashmir', 'Shopian', 1, '2021-02-18 04:35:28'),
(236, 15, 'Jammu and Kashmir', 'Srinagar', 1, '2021-02-18 04:35:28'),
(237, 15, 'Jammu and Kashmir', 'agar (Mohali)', 1, '2021-02-18 04:35:28'),
(238, 16, 'JHARKHAND', 'Garhwa', 1, '2021-02-18 04:35:28'),
(239, 16, 'JHARKHAND', 'Palamu', 1, '2021-02-18 04:35:28'),
(240, 16, 'JHARKHAND', 'Latehar', 1, '2021-02-18 04:35:28'),
(241, 16, 'JHARKHAND', 'Chatra', 1, '2021-02-18 04:35:28'),
(242, 16, 'JHARKHAND', 'Hazaribagh', 1, '2021-02-18 04:35:28'),
(243, 16, 'JHARKHAND', 'Koderma', 1, '2021-02-18 04:35:28'),
(244, 16, 'JHARKHAND', 'Giridih', 1, '2021-02-18 04:35:28'),
(245, 16, 'JHARKHAND', 'Ramgarh', 1, '2021-02-18 04:35:28'),
(246, 16, 'JHARKHAND', 'Bokaro', 1, '2021-02-18 04:35:28'),
(247, 16, 'JHARKHAND', 'Dhanbad', 1, '2021-02-18 04:35:28'),
(248, 16, 'JHARKHAND', 'Gumla', 1, '2021-02-18 04:35:28'),
(249, 16, 'JHARKHAND', 'Lohardaga', 1, '2021-02-18 04:35:28'),
(250, 16, 'JHARKHAND', 'Simdega', 1, '2021-02-18 04:35:28'),
(251, 16, 'JHARKHAND', 'Ranchi', 1, '2021-02-18 04:35:28'),
(252, 16, 'JHARKHAND', 'Khunti', 1, '2021-02-18 04:35:28'),
(253, 16, 'JHARKHAND', 'West Singhbhum', 1, '2021-02-18 04:35:28'),
(254, 16, 'JHARKHAND', 'Saraikela Kharsawan', 1, '2021-02-18 04:35:28'),
(255, 16, 'JHARKHAND', 'East Singhbhum', 1, '2021-02-18 04:35:28'),
(256, 16, 'JHARKHAND', 'Jamtara', 1, '2021-02-18 04:35:28'),
(257, 16, 'JHARKHAND', 'Deoghar', 1, '2021-02-18 04:35:28'),
(258, 16, 'JHARKHAND', 'Dumka', 1, '2021-02-18 04:35:28'),
(259, 16, 'JHARKHAND', 'Pakur', 1, '2021-02-18 04:35:28'),
(260, 16, 'JHARKHAND', 'Godda', 1, '2021-02-18 04:35:28'),
(261, 16, 'JHARKHAND', 'Sahebganj', 1, '2021-02-18 04:35:28'),
(262, 17, 'KERALA', 'Alappuzha', 1, '2021-02-18 04:35:28'),
(263, 17, 'KERALA', 'Ernakulam', 1, '2021-02-18 04:35:28'),
(264, 17, 'KERALA', 'Idukki', 1, '2021-02-18 04:35:28'),
(265, 17, 'KERALA', 'Kannur', 1, '2021-02-18 04:35:28'),
(266, 17, 'KERALA', 'Kasaragod', 1, '2021-02-18 04:35:28'),
(267, 17, 'KERALA', 'Kollam', 1, '2021-02-18 04:35:28'),
(268, 17, 'KERALA', 'Kottayam', 1, '2021-02-18 04:35:28'),
(269, 17, 'KERALA', 'Kozhikode', 1, '2021-02-18 04:35:28'),
(270, 17, 'KERALA', 'Malappuram', 1, '2021-02-18 04:35:28'),
(271, 17, 'KERALA', 'Palakkad', 1, '2021-02-18 04:35:28'),
(272, 17, 'KERALA', 'Pathanamthitta', 1, '2021-02-18 04:35:28'),
(273, 17, 'KERALA', 'Thiruvananthapuram', 1, '2021-02-18 04:35:28'),
(274, 17, 'KERALA', 'Thrissur', 1, '2021-02-18 04:35:28'),
(275, 17, 'KERALA', 'Wayanad', 1, '2021-02-18 04:35:28'),
(276, 18, 'KARNATAKA', 'Bagalkot', 1, '2021-02-18 04:35:28'),
(277, 18, 'KARNATAKA', 'Bangalore Urban', 1, '2021-02-18 04:35:28'),
(278, 18, 'KARNATAKA', 'Bangalore Rural', 1, '2021-02-18 04:35:28'),
(279, 18, 'KARNATAKA', 'Belgaum', 1, '2021-02-18 04:35:28'),
(280, 18, 'KARNATAKA', 'Bellary', 1, '2021-02-18 04:35:28'),
(281, 18, 'KARNATAKA', 'Bidar', 1, '2021-02-18 04:35:28'),
(282, 18, 'KARNATAKA', 'Bijapur', 1, '2021-02-18 04:35:28'),
(283, 18, 'KARNATAKA', 'Chamarajanagar', 1, '2021-02-18 04:35:28'),
(284, 18, 'KARNATAKA', 'Chikballapur', 1, '2021-02-18 04:35:28'),
(285, 18, 'KARNATAKA', 'Chikmagalur', 1, '2021-02-18 04:35:28'),
(286, 18, 'KARNATAKA', 'Chitradurga', 1, '2021-02-18 04:35:28'),
(287, 18, 'KARNATAKA', 'Dakshina Kannada', 1, '2021-02-18 04:35:28'),
(288, 18, 'KARNATAKA', 'Davanagere', 1, '2021-02-18 04:35:28'),
(289, 18, 'KARNATAKA', 'Dharwad', 1, '2021-02-18 04:35:28'),
(290, 18, 'KARNATAKA', 'Gadag', 1, '2021-02-18 04:35:28'),
(291, 18, 'KARNATAKA', 'Gulbarga', 1, '2021-02-18 04:35:28'),
(292, 18, 'KARNATAKA', 'Hassan', 1, '2021-02-18 04:35:28'),
(293, 18, 'KARNATAKA', 'Haveri', 1, '2021-02-18 04:35:28'),
(294, 18, 'KARNATAKA', 'Kodagu', 1, '2021-02-18 04:35:28'),
(295, 18, 'KARNATAKA', 'Kolar', 1, '2021-02-18 04:35:28'),
(296, 18, 'KARNATAKA', 'Koppal', 1, '2021-02-18 04:35:28'),
(297, 18, 'KARNATAKA', 'Mandya', 1, '2021-02-18 04:35:28'),
(298, 18, 'KARNATAKA', 'Mysore', 1, '2021-02-18 04:35:28'),
(299, 18, 'KARNATAKA', 'Raichur', 1, '2021-02-18 04:35:28'),
(300, 18, 'KARNATAKA', 'Ramanagara', 1, '2021-02-18 04:35:28'),
(301, 18, 'KARNATAKA', 'Shimoga', 1, '2021-02-18 04:35:28'),
(302, 18, 'KARNATAKA', 'Tumkur', 1, '2021-02-18 04:35:28'),
(303, 18, 'KARNATAKA', 'Udupi', 1, '2021-02-18 04:35:28'),
(304, 18, 'KARNATAKA', 'Uttara Kannada', 1, '2021-02-18 04:35:28'),
(305, 18, 'KARNATAKA', 'Vijayanagara', 1, '2021-02-18 04:35:28'),
(306, 18, 'KARNATAKA', 'Yadgir', 1, '2021-02-18 04:35:28'),
(307, 19, 'LAKSHADWEEP', 'LAKSHADWEEP', 1, '2021-02-18 04:35:28'),
(308, 20, 'MEGHALAYA', 'EAST GARO HILLS', 1, '2021-02-18 04:35:28'),
(309, 20, 'MEGHALAYA', 'EAST JAINTIA HILLS', 1, '2021-02-18 04:35:28'),
(310, 20, 'MEGHALAYA', 'EAST KHASI HILLS', 1, '2021-02-18 04:35:28'),
(311, 20, 'MEGHALAYA', 'NORTH GARO HILLS', 1, '2021-02-18 04:35:28'),
(312, 20, 'MEGHALAYA', 'RI BHOI', 1, '2021-02-18 04:35:28'),
(313, 20, 'MEGHALAYA', 'SOUTH GARO HILLS', 1, '2021-02-18 04:35:28'),
(314, 20, 'MEGHALAYA', 'SOUTH WEST GARO HILLS', 1, '2021-02-18 04:35:28'),
(315, 20, 'MEGHALAYA', 'SOUTH WEST KHASI HILLS', 1, '2021-02-18 04:35:28'),
(316, 20, 'MEGHALAYA', 'WEST GARO HILLS', 1, '2021-02-18 04:35:28'),
(317, 20, 'MEGHALAYA', 'WEST JAINTIA HILLS', 1, '2021-02-18 04:35:28'),
(318, 20, 'MEGHALAYA', 'WEST KHASI HILLS', 1, '2021-02-18 04:35:28'),
(319, 21, 'MAHARASHTRA', 'AHMEDNAGAR', 1, '2021-02-18 04:35:28'),
(320, 21, 'MAHARASHTRA', 'AKOLA', 1, '2021-02-18 04:35:28'),
(321, 21, 'MAHARASHTRA', 'AMRAVATI', 1, '2021-02-18 04:35:28'),
(322, 21, 'MAHARASHTRA', 'AURANGABAD', 1, '2021-02-18 04:35:28'),
(323, 21, 'MAHARASHTRA', 'BEED', 1, '2021-02-18 04:35:28'),
(324, 21, 'MAHARASHTRA', 'BHANDARA', 1, '2021-02-18 04:35:28'),
(325, 21, 'MAHARASHTRA', 'BULDHANA', 1, '2021-02-18 04:35:28'),
(326, 21, 'MAHARASHTRA', 'CHANDRAPUR', 1, '2021-02-18 04:35:28'),
(327, 21, 'MAHARASHTRA', 'DHULE', 1, '2021-02-18 04:35:28'),
(328, 21, 'MAHARASHTRA', 'GADCHIROLI', 1, '2021-02-18 04:35:28'),
(329, 21, 'MAHARASHTRA', 'GONDIA', 1, '2021-02-18 04:35:28'),
(330, 21, 'MAHARASHTRA', 'HINGOLI', 1, '2021-02-18 04:35:28'),
(331, 21, 'MAHARASHTRA', 'JALGAON', 1, '2021-02-18 04:35:28'),
(332, 21, 'MAHARASHTRA', 'JALNA', 1, '2021-02-18 04:35:28'),
(333, 21, 'MAHARASHTRA', 'KOLHAPUR', 1, '2021-02-18 04:35:28'),
(334, 21, 'MAHARASHTRA', 'LATUR', 1, '2021-02-18 04:35:28'),
(335, 21, 'MAHARASHTRA', 'MUMBAI', 1, '2021-02-18 04:35:28'),
(336, 21, 'MAHARASHTRA', 'MUMBAI SUBURBAN', 1, '2021-02-18 04:35:28'),
(337, 21, 'MAHARASHTRA', 'NAGPUR', 1, '2021-02-18 04:35:28'),
(338, 21, 'MAHARASHTRA', 'NANDED', 1, '2021-02-18 04:35:28'),
(339, 21, 'MAHARASHTRA', 'NANDURBAR', 1, '2021-02-18 04:35:28'),
(340, 21, 'MAHARASHTRA', 'NASHIK', 1, '2021-02-18 04:35:28'),
(341, 21, 'MAHARASHTRA', 'OSMANABAD', 1, '2021-02-18 04:35:28'),
(342, 21, 'MAHARASHTRA', 'PALGHAR', 1, '2021-02-18 04:35:28'),
(343, 21, 'MAHARASHTRA', 'PARBHANI', 1, '2021-02-18 04:35:28'),
(344, 21, 'MAHARASHTRA', 'PUNE', 1, '2021-02-18 04:35:28'),
(345, 21, 'MAHARASHTRA', 'RAIGAD', 1, '2021-02-18 04:35:28'),
(346, 21, 'MAHARASHTRA', 'RATNAGIRI', 1, '2021-02-18 04:35:28'),
(347, 21, 'MAHARASHTRA', 'SANGLI', 1, '2021-02-18 04:35:28'),
(348, 21, 'MAHARASHTRA', 'SATARA', 1, '2021-02-18 04:35:28'),
(349, 21, 'MAHARASHTRA', 'SINDHUDURG', 1, '2021-02-18 04:35:28'),
(350, 21, 'MAHARASHTRA', 'SOLAPUR', 1, '2021-02-18 04:35:28'),
(351, 21, 'MAHARASHTRA', 'THANE', 1, '2021-02-18 04:35:28'),
(352, 21, 'MAHARASHTRA', 'WARDHA', 1, '2021-02-18 04:35:28'),
(353, 21, 'MAHARASHTRA', 'WASHIM', 1, '2021-02-18 04:35:28'),
(354, 21, 'MAHARASHTRA', 'YAVATMAL', 1, '2021-02-18 04:35:28'),
(355, 22, 'MANIPUR', 'BISHNUPUR', 1, '2021-02-18 04:35:28'),
(356, 22, 'MANIPUR', 'CHANDEL', 1, '2021-02-18 04:35:28'),
(357, 22, 'MANIPUR', 'CHURACHANDPUR', 1, '2021-02-18 04:35:28'),
(358, 22, 'MANIPUR', 'IMPHAL EAST', 1, '2021-02-18 04:35:28'),
(359, 22, 'MANIPUR', 'IMPHAL WEST', 1, '2021-02-18 04:35:28'),
(360, 22, 'MANIPUR', 'SENAPATI', 1, '2021-02-18 04:35:28'),
(361, 22, 'MANIPUR', 'TAMENGLONG', 1, '2021-02-18 04:35:28'),
(362, 22, 'MANIPUR', 'THOUBAL', 1, '2021-02-18 04:35:28'),
(363, 22, 'MANIPUR', 'UKHRUL', 1, '2021-02-18 04:35:28'),
(364, 23, 'MADHYA PRADESH', 'AGAR MALWA', 1, '2021-02-18 04:35:28'),
(365, 23, 'MADHYA PRADESH', 'ALIRAJPUR', 1, '2021-02-18 04:35:28'),
(366, 23, 'MADHYA PRADESH', 'ANUPPUR', 1, '2021-02-18 04:35:28'),
(367, 23, 'MADHYA PRADESH', 'ASHOKNAGAR', 1, '2021-02-18 04:35:28'),
(368, 23, 'MADHYA PRADESH', 'BALAGHAT', 1, '2021-02-18 04:35:28'),
(369, 23, 'MADHYA PRADESH', 'BARWANI', 1, '2021-02-18 04:35:28'),
(370, 23, 'MADHYA PRADESH', 'BETUL', 1, '2021-02-18 04:35:28'),
(371, 23, 'MADHYA PRADESH', 'BHIND', 1, '2021-02-18 04:35:28'),
(372, 23, 'MADHYA PRADESH', 'BHOPAL', 1, '2021-02-18 04:35:28'),
(373, 23, 'MADHYA PRADESH', 'BURHANPUR', 1, '2021-02-18 04:35:28'),
(374, 23, 'MADHYA PRADESH', 'CHHATARPUR', 1, '2021-02-18 04:35:28'),
(375, 23, 'MADHYA PRADESH', 'CHHINDWARA', 1, '2021-02-18 04:35:28'),
(376, 23, 'MADHYA PRADESH', 'DAMOH', 1, '2021-02-18 04:35:28'),
(377, 23, 'MADHYA PRADESH', 'DATIA', 1, '2021-02-18 04:35:28'),
(378, 23, 'MADHYA PRADESH', 'DEWAS', 1, '2021-02-18 04:35:28'),
(379, 23, 'MADHYA PRADESH', 'DHAR', 1, '2021-02-18 04:35:28'),
(380, 23, 'MADHYA PRADESH', 'DINDORI', 1, '2021-02-18 04:35:28'),
(381, 23, 'MADHYA PRADESH', 'EAST NIMAR', 1, '2021-02-18 04:35:28'),
(382, 23, 'MADHYA PRADESH', 'GUNA', 1, '2021-02-18 04:35:28'),
(383, 23, 'MADHYA PRADESH', 'GWALIOR', 1, '2021-02-18 04:35:28'),
(384, 23, 'MADHYA PRADESH', 'HARDA', 1, '2021-02-18 04:35:28'),
(385, 23, 'MADHYA PRADESH', 'HOSHANGABAD', 1, '2021-02-18 04:35:28'),
(386, 23, 'MADHYA PRADESH', 'INDORE', 1, '2021-02-18 04:35:28'),
(387, 23, 'MADHYA PRADESH', 'JABALPUR', 1, '2021-02-18 04:35:28'),
(388, 23, 'MADHYA PRADESH', 'JHABUA', 1, '2021-02-18 04:35:28'),
(389, 23, 'MADHYA PRADESH', 'KATNI', 1, '2021-02-18 04:35:28'),
(390, 23, 'MADHYA PRADESH', 'KHARGONE', 1, '2021-02-18 04:35:28'),
(391, 23, 'MADHYA PRADESH', 'MANDLA', 1, '2021-02-18 04:35:28'),
(392, 23, 'MADHYA PRADESH', 'MANDSAUR', 1, '2021-02-18 04:35:28'),
(393, 23, 'MADHYA PRADESH', 'MORENA', 1, '2021-02-18 04:35:28'),
(394, 23, 'MADHYA PRADESH', 'NARSINGHPUR', 1, '2021-02-18 04:35:28'),
(395, 23, 'MADHYA PRADESH', 'NEEMUCH', 1, '2021-02-18 04:35:28'),
(396, 23, 'MADHYA PRADESH', 'PANNA', 1, '2021-02-18 04:35:28'),
(397, 23, 'MADHYA PRADESH', 'RAISEN', 1, '2021-02-18 04:35:28'),
(398, 23, 'MADHYA PRADESH', 'RAJGARH', 1, '2021-02-18 04:35:28'),
(399, 23, 'MADHYA PRADESH', 'RATLAM', 1, '2021-02-18 04:35:28'),
(400, 23, 'MADHYA PRADESH', 'REWA', 1, '2021-02-18 04:35:28'),
(401, 23, 'MADHYA PRADESH', 'SAGAR', 1, '2021-02-18 04:35:28'),
(402, 23, 'MADHYA PRADESH', 'SATNA', 1, '2021-02-18 04:35:28'),
(403, 23, 'MADHYA PRADESH', 'SEHORE', 1, '2021-02-18 04:35:28'),
(404, 23, 'MADHYA PRADESH', 'SEONI', 1, '2021-02-18 04:35:28'),
(405, 23, 'MADHYA PRADESH', 'SHAHDOL', 1, '2021-02-18 04:35:28'),
(406, 23, 'MADHYA PRADESH', 'SHAJAPUR', 1, '2021-02-18 04:35:28'),
(407, 23, 'MADHYA PRADESH', 'SHEOPUR', 1, '2021-02-18 04:35:28'),
(408, 23, 'MADHYA PRADESH', 'SHIVPURI', 1, '2021-02-18 04:35:28'),
(409, 23, 'MADHYA PRADESH', 'SIDHI', 1, '2021-02-18 04:35:28'),
(410, 23, 'MADHYA PRADESH', 'SINGRAULI', 1, '2021-02-18 04:35:28'),
(411, 23, 'MADHYA PRADESH', 'TIKAMGARH', 1, '2021-02-18 04:35:28'),
(412, 23, 'MADHYA PRADESH', 'UJJAIN', 1, '2021-02-18 04:35:28'),
(413, 23, 'MADHYA PRADESH', 'UMARIA', 1, '2021-02-18 04:35:28'),
(414, 23, 'MADHYA PRADESH', 'VIDISHA', 1, '2021-02-18 04:35:28'),
(415, 24, 'MIZORAM', 'AIZAWL', 1, '2021-02-18 04:35:28'),
(416, 24, 'MIZORAM', 'CHAMPHAI', 1, '2021-02-18 04:35:28'),
(417, 24, 'MIZORAM', 'KOLASIB', 1, '2021-02-18 04:35:28'),
(418, 24, 'MIZORAM', 'LAWNGTLAI', 1, '2021-02-18 04:35:28'),
(419, 24, 'MIZORAM', 'LUNGLEI', 1, '2021-02-18 04:35:28'),
(420, 24, 'MIZORAM', 'MAMIT', 1, '2021-02-18 04:35:28'),
(421, 24, 'MIZORAM', 'SAIHA', 1, '2021-02-18 04:35:28'),
(422, 24, 'MIZORAM', 'SERCHHIP', 1, '2021-02-18 04:35:28'),
(423, 25, 'NAGALAND', 'DIMAPUR', 1, '2021-02-18 04:35:28'),
(424, 25, 'NAGALAND', 'KIPHIRE', 1, '2021-02-18 04:35:28'),
(425, 25, 'NAGALAND', 'KOHIMA', 1, '2021-02-18 04:35:28'),
(426, 25, 'NAGALAND', 'LONGLENG', 1, '2021-02-18 04:35:28'),
(427, 25, 'NAGALAND', 'MOKOKCHUNG', 1, '2021-02-18 04:35:28'),
(428, 25, 'NAGALAND', 'MON', 1, '2021-02-18 04:35:28'),
(429, 25, 'NAGALAND', 'PEREN', 1, '2021-02-18 04:35:28'),
(430, 25, 'NAGALAND', 'PHEK', 1, '2021-02-18 04:35:28'),
(431, 25, 'NAGALAND', 'TUENSANG', 1, '2021-02-18 04:35:28'),
(432, 25, 'NAGALAND', 'WOKHA', 1, '2021-02-18 04:35:28'),
(433, 25, 'NAGALAND', 'ZUNHEBOTO', 1, '2021-02-18 04:35:28'),
(434, 26, 'ODISHA', 'ANUGUL', 1, '2021-02-18 04:35:28'),
(435, 27, 'ODISHA', 'BALANGIR', 1, '2021-02-18 04:35:28'),
(436, 27, 'ODISHA', 'BALESHWAR', 1, '2021-02-18 04:35:28'),
(437, 27, 'ODISHA', 'BARGARH', 1, '2021-02-18 04:35:28'),
(438, 27, 'ODISHA', 'BHADRAK', 1, '2021-02-18 04:35:28'),
(439, 27, 'ODISHA', 'BOUDH', 1, '2021-02-18 04:35:28'),
(440, 27, 'ODISHA', 'CUTTACK', 1, '2021-02-18 04:35:28'),
(441, 27, 'ODISHA', 'DEOGARH', 1, '2021-02-18 04:35:28'),
(442, 27, 'ODISHA', 'DHENKANAL', 1, '2021-02-18 04:35:28'),
(443, 27, 'ODISHA', 'GAJAPATI', 1, '2021-02-18 04:35:28'),
(444, 27, 'ODISHA', 'GANJAM', 1, '2021-02-18 04:35:28'),
(445, 27, 'ODISHA', 'JAGATSINGHAPUR', 1, '2021-02-18 04:35:28'),
(446, 27, 'ODISHA', 'JAJAPUR', 1, '2021-02-18 04:35:28'),
(447, 27, 'ODISHA', 'JHARSUGUDA', 1, '2021-02-18 04:35:28'),
(448, 27, 'ODISHA', 'KALAHANDI', 1, '2021-02-18 04:35:28'),
(449, 27, 'ODISHA', 'KANDHAMAL', 1, '2021-02-18 04:35:28'),
(450, 27, 'ODISHA', 'KENDRAPARA', 1, '2021-02-18 04:35:28'),
(451, 27, 'ODISHA', 'KENDUJHAR', 1, '2021-02-18 04:35:28'),
(452, 27, 'ODISHA', 'KHORDHA', 1, '2021-02-18 04:35:28'),
(453, 27, 'ODISHA', 'KORAPUT', 1, '2021-02-18 04:35:28'),
(454, 27, 'ODISHA', 'MALKANGIRI', 1, '2021-02-18 04:35:28'),
(455, 27, 'ODISHA', 'MAYURBHANJ', 1, '2021-02-18 04:35:28'),
(456, 27, 'ODISHA', 'NABARANGPUR', 1, '2021-02-18 04:35:28'),
(457, 27, 'ODISHA', 'NAYAGARH', 1, '2021-02-18 04:35:28'),
(458, 27, 'ODISHA', 'NUAPADA', 1, '2021-02-18 04:35:28'),
(459, 27, 'ODISHA', 'PURI', 1, '2021-02-18 04:35:28'),
(460, 27, 'ODISHA', 'RAYAGADA', 1, '2021-02-18 04:35:28'),
(461, 27, 'ODISHA', 'SAMBALPUR', 1, '2021-02-18 04:35:28'),
(462, 27, 'ODISHA', 'SONEPUR', 1, '2021-02-18 04:35:28'),
(463, 27, 'ODISHA', 'SUNDARGARH', 1, '2021-02-18 04:35:28'),
(464, 28, 'PONDICHERRY', 'KARAIKAL', 1, '2021-02-18 04:35:28'),
(465, 28, 'PONDICHERRY', 'MAHE', 1, '2021-02-18 04:35:28'),
(466, 28, 'PONDICHERRY', 'PONDICHERRY', 1, '2021-02-18 04:35:28'),
(467, 28, 'PONDICHERRY', 'YANAM', 1, '2021-02-18 04:35:28'),
(468, 29, 'RAJASTHAN', 'AJMER', 1, '2021-02-18 04:35:28'),
(469, 29, 'RAJASTHAN', 'ALWAR', 1, '2021-02-18 04:35:28'),
(470, 29, 'RAJASTHAN', 'BANSWARA', 1, '2021-02-18 04:35:28'),
(471, 29, 'RAJASTHAN', 'BARAN', 1, '2021-02-18 04:35:28'),
(472, 29, 'RAJASTHAN', 'BARMER', 1, '2021-02-18 04:35:28'),
(473, 29, 'RAJASTHAN', 'BHARATPUR', 1, '2021-02-18 04:35:28'),
(474, 29, 'RAJASTHAN', 'BHILWARA', 1, '2021-02-18 04:35:28'),
(475, 29, 'RAJASTHAN', 'BIKANER', 1, '2021-02-18 04:35:28'),
(476, 29, 'RAJASTHAN', 'BUNDI', 1, '2021-02-18 04:35:28'),
(477, 29, 'RAJASTHAN', 'CHITTORGARH', 1, '2021-02-18 04:35:28'),
(478, 29, 'RAJASTHAN', 'CHURU', 1, '2021-02-18 04:35:28'),
(479, 29, 'RAJASTHAN', 'DAUSA', 1, '2021-02-18 04:35:28'),
(480, 29, 'RAJASTHAN', 'DHOLPUR', 1, '2021-02-18 04:35:28'),
(481, 29, 'RAJASTHAN', 'DUNGARPUR', 1, '2021-02-18 04:35:28'),
(482, 29, 'RAJASTHAN', 'GANGANAGAR', 1, '2021-02-18 04:35:28'),
(483, 29, 'RAJASTHAN', 'HANUMANGARH', 1, '2021-02-18 04:35:28'),
(484, 29, 'RAJASTHAN', 'JAIPUR', 1, '2021-02-18 04:35:28'),
(485, 29, 'RAJASTHAN', 'JAISALMER', 1, '2021-02-18 04:35:28'),
(486, 29, 'RAJASTHAN', 'JALORE', 1, '2021-02-18 04:35:28'),
(487, 29, 'RAJASTHAN', 'JHALAWAR', 1, '2021-02-18 04:35:28'),
(488, 29, 'RAJASTHAN', 'JHUNJHUNU', 1, '2021-02-18 04:35:28'),
(489, 29, 'RAJASTHAN', 'JODHPUR', 1, '2021-02-18 04:35:28'),
(490, 29, 'RAJASTHAN', 'KARAULI', 1, '2021-02-18 04:35:28'),
(491, 29, 'RAJASTHAN', 'KOTA', 1, '2021-02-18 04:35:28'),
(492, 29, 'RAJASTHAN', 'NAGAUR', 1, '2021-02-18 04:35:28'),
(493, 29, 'RAJASTHAN', 'PALI', 1, '2021-02-18 04:35:28'),
(494, 29, 'RAJASTHAN', 'PRATAPGARH', 1, '2021-02-18 04:35:28'),
(495, 29, 'RAJASTHAN', 'RAJSAMAND', 1, '2021-02-18 04:35:28'),
(496, 29, 'RAJASTHAN', 'SAWAI MADHOPUR', 1, '2021-02-18 04:35:28'),
(497, 29, 'RAJASTHAN', 'SIKAR', 1, '2021-02-18 04:35:28'),
(498, 29, 'RAJASTHAN', 'SIROHI', 1, '2021-02-18 04:35:28'),
(499, 29, 'RAJASTHAN', 'TONK', 1, '2021-02-18 04:35:28'),
(500, 29, 'RAJASTHAN', 'UDAIPUR', 1, '2021-02-18 04:35:28'),
(501, 30, 'SIKKIM', 'EAST DISTRICT', 1, '2021-02-18 04:35:28'),
(502, 30, 'SIKKIM', 'NORTH DISTRICT', 1, '2021-02-18 04:35:28'),
(503, 30, 'SIKKIM', 'SOUTH DISTRICT', 1, '2021-02-18 04:35:28'),
(504, 30, 'SIKKIM', 'WEST DISTRICT', 1, '2021-02-18 04:35:28'),
(505, 31, 'TAMIL NADU', 'Ariyalur', 1, '2021-02-18 04:35:28'),
(506, 31, 'TAMIL NADU', 'CHENNAI', 1, '2021-02-18 04:35:28'),
(507, 31, 'TAMIL NADU', 'COIMBATORE', 1, '2021-02-18 04:35:28'),
(508, 31, 'TAMIL NADU', 'CUDDALORE', 1, '2021-02-18 04:35:28'),
(509, 31, 'TAMIL NADU', 'DHARMAPURI', 1, '2021-02-18 04:35:28'),
(510, 31, 'TAMIL NADU', 'DINDIGUL', 1, '2021-02-18 04:35:28'),
(511, 31, 'TAMIL NADU', 'ERODE', 1, '2021-02-18 04:35:28'),
(512, 31, 'TAMIL NADU', 'KANCHIPURAM', 1, '2021-02-18 04:35:28'),
(513, 31, 'TAMIL NADU', 'KANNIYAKUMARI', 1, '2021-02-18 04:35:28'),
(514, 31, 'TAMIL NADU', 'KARUR', 1, '2021-02-18 04:35:28'),
(515, 31, 'TAMIL NADU', 'KRISHNAGIRI', 1, '2021-02-18 04:35:28'),
(516, 31, 'TAMIL NADU', 'MADURAI', 1, '2021-02-18 04:35:28'),
(517, 31, 'TAMIL NADU', 'NAGAPATTINAM', 1, '2021-02-18 04:35:28'),
(518, 31, 'TAMIL NADU', 'NAMAKKAL', 1, '2021-02-18 04:35:28'),
(519, 31, 'TAMIL NADU', 'PERAMBALUR', 1, '2021-02-18 04:35:28'),
(520, 31, 'TAMIL NADU', 'PUDUKKOTTAI', 1, '2021-02-18 04:35:28'),
(521, 31, 'TAMIL NADU', 'RAMANATHAPURAM', 1, '2021-02-18 04:35:28'),
(522, 31, 'TAMIL NADU', 'SALEM', 1, '2021-02-18 04:35:28'),
(523, 31, 'TAMIL NADU', 'SIVAGANGA', 1, '2021-02-18 04:35:28'),
(524, 31, 'TAMIL NADU', 'THANJAVUR', 1, '2021-02-18 04:35:28'),
(525, 31, 'TAMIL NADU', 'THENI', 1, '2021-02-18 04:35:28'),
(526, 31, 'TAMIL NADU', 'THE NILGIRIS', 1, '2021-02-18 04:35:28'),
(527, 31, 'TAMIL NADU', 'THIRUVALLUR', 1, '2021-02-18 04:35:28'),
(528, 31, 'TAMIL NADU', 'THIRUVARUR', 1, '2021-02-18 04:35:28'),
(529, 31, 'TAMIL NADU', 'TIRUCHIRAPPALLI', 1, '2021-02-18 04:35:28'),
(530, 31, 'TAMIL NADU', 'TIRUNELVELI', 1, '2021-02-18 04:35:28'),
(531, 31, 'TAMIL NADU', 'TIRUPPUR', 1, '2021-02-18 04:35:28'),
(532, 31, 'TAMIL NADU', 'TIRUVANNAMALAI', 1, '2021-02-18 04:35:28'),
(533, 31, 'TAMIL NADU', 'TUTICORIN', 1, '2021-02-18 04:35:28'),
(534, 31, 'TAMIL NADU', 'VELLORE', 1, '2021-02-18 04:35:28'),
(535, 31, 'TAMIL NADU', 'VILLUPURAM', 1, '2021-02-18 04:35:28'),
(536, 31, 'TAMIL NADU', 'VIRUDHUNAGAR', 1, '2021-02-18 04:35:28'),
(537, 32, 'TRIPURA', 'Dhalai', 1, '2021-02-18 04:35:28'),
(538, 32, 'TRIPURA', 'Gomati', 1, '2021-02-18 04:35:28'),
(539, 32, 'TRIPURA', 'Khowai', 1, '2021-02-18 04:35:28'),
(540, 32, 'TRIPURA', 'North Tripura', 1, '2021-02-18 04:35:28'),
(541, 32, 'TRIPURA', 'Sipahijala', 1, '2021-02-18 04:35:28'),
(542, 32, 'TRIPURA', 'South Tripura', 1, '2021-02-18 04:35:28'),
(543, 32, 'TRIPURA', 'Unakoti', 1, '2021-02-18 04:35:28'),
(544, 32, 'TRIPURA', 'West Tripura', 1, '2021-02-18 04:35:28'),
(545, 33, 'UTTARAKHAND', 'ALMORA', 1, '2021-02-18 04:35:28'),
(546, 33, 'UTTARAKHAND', 'BAGESHWAR', 1, '2021-02-18 04:35:28'),
(547, 33, 'UTTARAKHAND', 'CHAMOLI', 1, '2021-02-18 04:35:28'),
(548, 33, 'UTTARAKHAND', 'CHAMPAWAT', 1, '2021-02-18 04:35:28'),
(549, 33, 'UTTARAKHAND', 'DEHRADUN', 1, '2021-02-18 04:35:28'),
(550, 33, 'UTTARAKHAND', 'HARIDWAR', 1, '2021-02-18 04:35:28'),
(551, 33, 'UTTARAKHAND', 'NAINITAL', 1, '2021-02-18 04:35:28'),
(552, 33, 'UTTARAKHAND', 'PAURI GARHWAL', 1, '2021-02-18 04:35:28'),
(553, 33, 'UTTARAKHAND', 'PITHORAGARH', 1, '2021-02-18 04:35:28'),
(554, 33, 'UTTARAKHAND', 'RUDRA PRAYAG', 1, '2021-02-18 04:35:28'),
(555, 33, 'UTTARAKHAND', 'TEHRI GARHWAL', 1, '2021-02-18 04:35:28'),
(556, 33, 'UTTARAKHAND', 'UDAM SINGH NAGAR', 1, '2021-02-18 04:35:28'),
(557, 33, 'UTTARAKHAND', 'UTTAR KASHI', 1, '2021-02-18 04:35:28'),
(558, 34, 'UTTAR PRADESH', 'AGRA', 1, '2021-02-18 04:35:28'),
(559, 34, 'UTTAR PRADESH', 'ALIGARH', 1, '2021-02-18 04:35:28'),
(560, 34, 'UTTAR PRADESH', 'ALLAHABAD', 1, '2021-02-18 04:35:28'),
(561, 34, 'UTTAR PRADESH', 'AMBEDKAR NAGAR', 1, '2021-02-18 04:35:28'),
(562, 34, 'UTTAR PRADESH', 'Amethi', 1, '2021-02-18 04:35:28'),
(563, 34, 'UTTAR PRADESH', 'AMROHA', 1, '2021-02-18 04:35:28'),
(564, 34, 'UTTAR PRADESH', 'AURAIYA', 1, '2021-02-18 04:35:28'),
(565, 34, 'UTTAR PRADESH', 'AZAMGARH', 1, '2021-02-18 04:35:28'),
(566, 34, 'UTTAR PRADESH', 'BAGHPAT', 1, '2021-02-18 04:35:28'),
(567, 34, 'UTTAR PRADESH', 'BAHRAICH', 1, '2021-02-18 04:35:28'),
(568, 34, 'UTTAR PRADESH', 'BALLIA', 1, '2021-02-18 04:35:28'),
(569, 34, 'UTTAR PRADESH', 'BALRAMPUR', 1, '2021-02-18 04:35:28'),
(570, 34, 'UTTAR PRADESH', 'BANDA', 1, '2021-02-18 04:35:28'),
(571, 34, 'UTTAR PRADESH', 'BARABANKI', 1, '2021-02-18 04:35:28'),
(572, 34, 'UTTAR PRADESH', 'BAREILLY', 1, '2021-02-18 04:35:28'),
(573, 34, 'UTTAR PRADESH', 'BASTI', 1, '2021-02-18 04:35:28'),
(574, 34, 'UTTAR PRADESH', 'BHADOHI', 1, '2021-02-18 04:35:28'),
(575, 34, 'UTTAR PRADESH', 'BIJNOR', 1, '2021-02-18 04:35:28'),
(576, 34, 'UTTAR PRADESH', 'BUDAUN', 1, '2021-02-18 04:35:28'),
(577, 34, 'UTTAR PRADESH', 'BULANDSHAHR', 1, '2021-02-18 04:35:28'),
(578, 34, 'UTTAR PRADESH', 'CHANDAULI', 1, '2021-02-18 04:35:28'),
(579, 34, 'UTTAR PRADESH', 'CHITRAKOOT', 1, '2021-02-18 04:35:28'),
(580, 34, 'UTTAR PRADESH', 'DEORIA', 1, '2021-02-18 04:35:28'),
(581, 34, 'UTTAR PRADESH', 'ETAH', 1, '2021-02-18 04:35:28'),
(582, 34, 'UTTAR PRADESH', 'ETAWAH', 1, '2021-02-18 04:35:28'),
(583, 34, 'UTTAR PRADESH', 'FAIZABAD', 1, '2021-02-18 04:35:28'),
(584, 34, 'UTTAR PRADESH', 'FARRUKHABAD', 1, '2021-02-18 04:35:28'),
(585, 34, 'UTTAR PRADESH', 'FATEHPUR', 1, '2021-02-18 04:35:28'),
(586, 34, 'UTTAR PRADESH', 'FIROZABAD', 1, '2021-02-18 04:35:28'),
(587, 34, 'UTTAR PRADESH', 'GAUTAM BUDDHA NAGAR', 1, '2021-02-18 04:35:28'),
(588, 34, 'UTTAR PRADESH', 'GHAZIABAD', 1, '2021-02-18 04:35:28'),
(589, 34, 'UTTAR PRADESH', 'GHAZIPUR', 1, '2021-02-18 04:35:28'),
(590, 34, 'UTTAR PRADESH', 'GONDA', 1, '2021-02-18 04:35:28'),
(591, 34, 'UTTAR PRADESH', 'GORAKHPUR', 1, '2021-02-18 04:35:28'),
(592, 34, 'UTTAR PRADESH', 'HAMIRPUR', 1, '2021-02-18 04:35:28'),
(593, 34, 'UTTAR PRADESH', 'HAPUR', 1, '2021-02-18 04:35:28'),
(594, 34, 'UTTAR PRADESH', 'HARDOI', 1, '2021-02-18 04:35:28'),
(595, 34, 'UTTAR PRADESH', 'HATHRAS', 1, '2021-02-18 04:35:28'),
(596, 34, 'UTTAR PRADESH', 'JALAUN', 1, '2021-02-18 04:35:28'),
(597, 34, 'UTTAR PRADESH', 'JAUNPUR', 1, '2021-02-18 04:35:28'),
(598, 34, 'UTTAR PRADESH', 'JHANSI', 1, '2021-02-18 04:35:28'),
(599, 34, 'UTTAR PRADESH', 'KANNAUJ', 1, '2021-02-18 04:35:28'),
(600, 34, 'UTTAR PRADESH', 'KANPUR DEHAT', 1, '2021-02-18 04:35:28'),
(601, 34, 'UTTAR PRADESH', 'KANPUR NAGAR', 1, '2021-02-18 04:35:28'),
(602, 34, 'UTTAR PRADESH', 'Kasganj', 1, '2021-02-18 04:35:28'),
(603, 34, 'UTTAR PRADESH', 'KAUSHAMBI', 1, '2021-02-18 04:35:28'),
(604, 34, 'UTTAR PRADESH', 'KHERI', 1, '2021-02-18 04:35:28'),
(605, 34, 'UTTAR PRADESH', 'KUSHI NAGAR', 1, '2021-02-18 04:35:28'),
(606, 34, 'UTTAR PRADESH', 'LALITPUR', 1, '2021-02-18 04:35:28'),
(607, 34, 'UTTAR PRADESH', 'LUCKNOW', 1, '2021-02-18 04:35:28'),
(608, 34, 'UTTAR PRADESH', 'MAHARAJGANJ', 1, '2021-02-18 04:35:28'),
(609, 34, 'UTTAR PRADESH', 'MAHOBA', 1, '2021-02-18 04:35:28'),
(610, 34, 'UTTAR PRADESH', 'MAINPURI', 1, '2021-02-18 04:35:28'),
(611, 34, 'UTTAR PRADESH', 'MATHURA', 1, '2021-02-18 04:35:28'),
(612, 34, 'UTTAR PRADESH', 'MAU', 1, '2021-02-18 04:35:28'),
(613, 34, 'UTTAR PRADESH', 'MEERUT', 1, '2021-02-18 04:35:28'),
(614, 34, 'UTTAR PRADESH', 'MIRZAPUR', 1, '2021-02-18 04:35:28'),
(615, 34, 'UTTAR PRADESH', 'MORADABAD', 1, '2021-02-18 04:35:28'),
(616, 34, 'UTTAR PRADESH', 'MUZAFFARNAGAR', 1, '2021-02-18 04:35:28'),
(617, 34, 'UTTAR PRADESH', 'PILIBHIT', 1, '2021-02-18 04:35:28'),
(618, 34, 'UTTAR PRADESH', 'PRATAPGARH', 1, '2021-02-18 04:35:28'),
(619, 34, 'UTTAR PRADESH', 'RAE BARELI', 1, '2021-02-18 04:35:28'),
(620, 34, 'UTTAR PRADESH', 'RAMPUR', 1, '2021-02-18 04:35:28'),
(621, 34, 'UTTAR PRADESH', 'SAHARANPUR', 1, '2021-02-18 04:35:28'),
(622, 34, 'UTTAR PRADESH', 'SAMBHAL', 1, '2021-02-18 04:35:28'),
(623, 34, 'UTTAR PRADESH', 'SANT KABEER NAGAR', 1, '2021-02-18 04:35:28'),
(624, 34, 'UTTAR PRADESH', 'SHAHJAHANPUR', 1, '2021-02-18 04:35:28'),
(625, 34, 'UTTAR PRADESH', 'SHAMLI', 1, '2021-02-18 04:35:28'),
(626, 34, 'UTTAR PRADESH', 'SHRAVASTI', 1, '2021-02-18 04:35:28'),
(627, 34, 'UTTAR PRADESH', 'SIDDHARTH NAGAR', 1, '2021-02-18 04:35:28'),
(628, 34, 'UTTAR PRADESH', 'SITAPUR', 1, '2021-02-18 04:35:28'),
(629, 34, 'UTTAR PRADESH', 'SONBHADRA', 1, '2021-02-18 04:35:28'),
(630, 34, 'UTTAR PRADESH', 'SULTANPUR', 1, '2021-02-18 04:35:28'),
(631, 34, 'UTTAR PRADESH', 'UNNAO', 1, '2021-02-18 04:35:28'),
(632, 34, 'UTTAR PRADESH', 'VARANASI', 1, '2021-02-18 04:35:28'),
(633, 35, 'WEST BENGAL', '24 PARAGANAS NORTH', 1, '2021-02-18 04:35:28'),
(634, 35, 'WEST BENGAL', '24 PARAGANAS SOUTH', 1, '2021-02-18 04:35:28'),
(635, 35, 'WEST BENGAL', 'Alipurduar', 1, '2021-02-18 04:35:28'),
(636, 35, 'WEST BENGAL', 'BANKURA', 1, '2021-02-18 04:35:28'),
(637, 35, 'WEST BENGAL', 'BARDHAMAN', 1, '2021-02-18 04:35:28'),
(638, 35, 'WEST BENGAL', 'BIRBHUM', 1, '2021-02-18 04:35:28'),
(639, 35, 'WEST BENGAL', 'COOCHBEHAR', 1, '2021-02-18 04:35:28'),
(640, 35, 'WEST BENGAL', 'DARJEELING', 1, '2021-02-18 04:35:28'),
(641, 35, 'WEST BENGAL', 'DINAJPUR DAKSHIN', 1, '2021-02-18 04:35:28'),
(642, 35, 'WEST BENGAL', 'DINAJPUR UTTAR', 1, '2021-02-18 04:35:28'),
(643, 35, 'WEST BENGAL', 'HOOGHLY', 1, '2021-02-18 04:35:28'),
(644, 35, 'WEST BENGAL', 'HOWRAH', 1, '2021-02-18 04:35:28'),
(645, 35, 'WEST BENGAL', 'JALPAIGURI', 1, '2021-02-18 04:35:28'),
(646, 35, 'WEST BENGAL', 'KOLKATA', 1, '2021-02-18 04:35:28'),
(647, 35, 'WEST BENGAL', 'MALDAH', 1, '2021-02-18 04:35:28'),
(648, 35, 'WEST BENGAL', 'MEDINIPUR EAST', 1, '2021-02-18 04:35:28'),
(649, 35, 'WEST BENGAL', 'MEDINIPUR WEST', 1, '2021-02-18 04:35:28'),
(650, 35, 'WEST BENGAL', 'MURSHIDABAD', 1, '2021-02-18 04:35:28'),
(651, 35, 'WEST BENGAL', 'NADIA', 1, '2021-02-18 04:35:28'),
(652, 35, 'WEST BENGAL', 'PURULIA', 1, '2021-02-18 04:35:28'),
(653, 36, 'TELANGANA', 'Adilabad', 1, '2021-02-18 04:35:28'),
(654, 36, 'TELANGANA', 'Bhadradri Kothagudem', 1, '2021-02-18 04:35:28'),
(655, 36, 'TELANGANA', 'Hyderabad', 1, '2021-02-18 04:35:28'),
(656, 36, 'TELANGANA', 'Jagitial', 1, '2021-02-18 04:35:28'),
(657, 36, 'TELANGANA', 'Jangaon', 1, '2021-02-18 04:35:28'),
(658, 36, 'TELANGANA', 'Jayashankar Bhupalpally', 1, '2021-02-18 04:35:28'),
(659, 36, 'TELANGANA', 'Jogulamba Gadwal', 1, '2021-02-18 04:35:28'),
(660, 36, 'TELANGANA', 'Kamareddy', 1, '2021-02-18 04:35:28'),
(661, 36, 'TELANGANA', 'Karimnagar', 1, '2021-02-18 04:35:28'),
(662, 36, 'TELANGANA', 'Khammam', 1, '2021-02-18 04:35:28'),
(663, 36, 'TELANGANA', 'Komaram Bheem', 1, '2021-02-18 04:35:28'),
(664, 36, 'TELANGANA', 'Mahabubabad', 1, '2021-02-18 04:35:28'),
(665, 36, 'TELANGANA', 'Mahabubnagar', 1, '2021-02-18 04:35:28'),
(666, 36, 'TELANGANA', 'Mancherial', 1, '2021-02-18 04:35:28'),
(667, 36, 'TELANGANA', 'Medak', 1, '2021-02-18 04:35:28'),
(669, 36, 'TELANGANA', 'Mulugu', 1, '2021-02-18 04:35:28'),
(670, 36, 'TELANGANA', 'Nagarkurnool', 1, '2021-02-18 04:35:28'),
(671, 36, 'TELANGANA', 'Narayanpet', 1, '2021-02-18 04:35:28'),
(672, 36, 'TELANGANA', 'Nalgonda', 1, '2021-02-18 04:35:28'),
(673, 36, 'TELANGANA', 'Nirmal', 1, '2021-02-18 04:35:28'),
(674, 36, 'TELANGANA', 'Nizamabad', 1, '2021-02-18 04:35:28'),
(675, 36, 'TELANGANA', 'Peddapalli', 1, '2021-02-18 04:35:28'),
(676, 36, 'TELANGANA', 'Rajanna Sircilla', 1, '2021-02-18 04:35:28'),
(677, 36, 'TELANGANA', 'Ranga Reddy', 1, '2021-02-18 04:35:28'),
(678, 36, 'TELANGANA', 'Sangareddy', 1, '2021-02-18 04:35:28'),
(679, 36, 'TELANGANA', 'Siddipet', 1, '2021-02-18 04:35:28'),
(680, 36, 'TELANGANA', 'Suryapet', 1, '2021-02-18 04:35:28'),
(681, 36, 'TELANGANA', 'Vikarabad', 1, '2021-02-18 04:35:28'),
(682, 36, 'TELANGANA', 'Wanaparthy', 1, '2021-02-18 04:35:28'),
(683, 36, 'TELANGANA', 'Warangal Rural', 1, '2021-02-18 04:35:28'),
(684, 36, 'TELANGANA', 'Warangal Urban', 1, '2021-02-18 04:35:28'),
(685, 36, 'TELANGANA', 'Yadadri Bhuvanagiri', 1, '2021-02-18 04:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `id` int(11) NOT NULL,
  `images` text NOT NULL,
  `delete_status` int(2) NOT NULL DEFAULT '0',
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`id`, `images`, `delete_status`, `category`) VALUES
(5, '1615116067_dvzqtf9y18wlei2cs7n51615116067.jpg', 0, NULL),
(6, '1615116086_3j2il81kb5wunyv649ad1615116086.png', 0, NULL),
(7, '1615116107_7qdi3a8jnf26ex19pzby1615116107.jpg', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notic`
--

CREATE TABLE `notic` (
  `id` int(11) NOT NULL,
  `notics` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delete_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notic`
--

INSERT INTO `notic` (`id`, `notics`, `description`, `delete_status`) VALUES
(7, 'Pune Covid-19 update: Over 1,100 new cases, 6 deaths in last 24 hours', 'Pune Covid-19 update: Over 1,100 new cases, 6 deaths in last 24 hours', 0),
(8, 'The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or exhales. These droplets are too heavy to hang in the air, and quickly fall on floors or surfaces.', 'The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or exhales. These droplets are too heavy to hang in the air, and quickly fall on floors or surfaces.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_date` datetime NOT NULL,
  `images` text NOT NULL,
  `youtube_url` text NOT NULL,
  `delete_status` int(2) NOT NULL,
  `approved` int(2) NOT NULL,
  `user_type` enum('admin','volunteer') DEFAULT NULL,
  `volunteer_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `delete_status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `delete_status`) VALUES
(1, 'Managing Director (MD)', 1),
(2, 'Head of Bihar State', 1),
(3, 'Head of Uttar pradesh State', 1),
(4, 'Rajstan State Head', 0),
(5, 'Chhattisgarh State Head', 0),
(6, 'Founder & President', 0),
(7, 'Head of Andaman and Nicobar Islands UT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `images` text NOT NULL,
  `delete_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `status`, `images`, `delete_status`) VALUES
(20, 'Harsukh Foundation', '', 1, '1613865684_c45prozuxf1i7q62estn1613865684.jpg', 1),
(21, 'Harsukh Foundation', '', 1, '1613865703_xef14ta9v3ornbz2g0dq1613865703.jpg', 1),
(22, 'harsukhfoundation', '', 1, '1613933487_3ob1jtrc92hgadeqw5xy1613933487.jpg', 1),
(23, 'harsukhfoundation', '', 1, '1613933255_ms71uv8wtl09hijodfkg1613933255.jpg', 0),
(24, 'slider1', '', 1, '1615115897_38kz649lxcbumfgipwnj1615115897.png', 0),
(25, 'slider2', '', 1, '1615115921_d20tbrchwx36o8m5kve91615115921.png', 0),
(26, 'slider3', '', 1, '1615115941_7h3cv60yrj19t2w5bux81615115941.png', 0),
(27, 'slider4', '', 1, '1615115960_tb1go5n0mpyxrklfva2u1615115960.png', 0),
(28, 'slider5', '', 1, '1615115977_tn8rzvm7fwud25pc0x3y1615115977.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `location` text NOT NULL,
  `mobile_1` varchar(255) NOT NULL,
  `mobile_2` varchar(255) NOT NULL,
  `email_1` text NOT NULL,
  `email_2` text NOT NULL,
  `facebook` text NOT NULL,
  `youtube` text NOT NULL,
  `whatapp` varchar(255) NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `delete_status` int(2) NOT NULL DEFAULT '0',
  `twitter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `location`, `mobile_1`, `mobile_2`, `email_1`, `email_2`, `facebook`, `youtube`, `whatapp`, `instagram`, `linkedin`, `delete_status`, `twitter`) VALUES
(1, 'Kishanpur Rajpur Road, Dehradun', '999999999', '', 'support@harsukhfoundation.com', '', 'https://www.facebook.com/Harsukh-Foundation-653744158141606/', 'https://www.youtube.com/channel/UCkfXxVn3qywjsqlvRQqywUQ', '99999999999', 'https://www.instagram.com/harsukhfoundation/', 'https://www.linkedin.com/in/harsukh-foundation-539676208/', 0, 'https://www.facebook.com/Harsukh-Foundation-653744158141606/');

-- --------------------------------------------------------

--
-- Table structure for table `social_audit`
--

CREATE TABLE `social_audit` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_audit`
--

INSERT INTO `social_audit` (`id`, `title`, `description`, `amount`, `date`, `delete_status`) VALUES
(4, 'Donation for poor child', 'Donation for poor child', '100', '2021-02-23 19:39:40', 0),
(5, 'Donation for covid 19', 'Donation for covid 19', '100', '2021-02-23 19:40:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `state`) VALUES
(1, 'ANDAMAN AND NICOBAR ISLANDS'),
(2, 'ANDHRA PRADESH'),
(3, 'ARUNACHAL PRADESH'),
(4, 'ASSAM'),
(5, 'BIHAR'),
(6, 'CHATTISGARH'),
(7, 'CHANDIGARH'),
(8, 'DAMAN AND DIU'),
(9, 'DELHI'),
(10, 'DADRA AND NAGAR HAVELI'),
(11, 'GOA'),
(12, 'GUJARAT'),
(13, 'HIMACHAL PRADESH'),
(14, 'HARYANA'),
(15, 'JAMMU AND KASHMIR'),
(16, 'JHARKHAND'),
(17, 'KERALA'),
(18, 'KARNATAKA'),
(19, 'LAKSHADWEEP'),
(20, 'MEGHALAYA'),
(21, 'MAHARASHTRA'),
(22, 'MANIPUR'),
(23, 'MADHYA PRADESH'),
(24, 'MIZORAM'),
(25, 'NAGALAND'),
(26, 'ORISSA'),
(27, 'PUNJAB'),
(28, 'PONDICHERRY'),
(29, 'RAJASTHAN'),
(30, 'SIKKIM'),
(31, 'TAMIL NADU'),
(32, 'TRIPURA'),
(33, 'UTTARAKHAND'),
(34, 'UTTAR PRADESH'),
(35, 'WEST BENGAL'),
(36, 'TELANGANA');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `raised` decimal(10,2) NOT NULL,
  `days` int(3) NOT NULL,
  `datetime` datetime NOT NULL,
  `delete_status` int(2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `title`, `description`, `amount`, `create_by`, `raised`, `days`, `datetime`, `delete_status`, `category`, `images`) VALUES
(1, 'Azad Foundation Unit Of Azad Group', '<p><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong><span> </span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div>', 1000.00, 'AZAD Foundation', 500.00, 20, '2020-07-09 17:49:12', 1, 'tree_plantation', '1594297152_bmre8019d5wzastk6fup1594297152.png'),
(2, 'RUN FOR HINDON', '<p>आजाद फाउंडेशन द्वारा नदियों को प्रदूषण मुक्त बनाने की पहल के तहत सर्वप्रथम हिंडन नदी से अपने कार्यक्रम को प्रारंभ किया जा रहा है | फाउंडेशन का उद्देश्य नदी को प्रदूषण मुक्त बनाने के साथ-साथ गाजियाबाद के लोगों में नदी संरक्षण के प्रति जागरूकता का भाव जगाना है | इस मुहिम की शुरुआत अक्टूबर माह से प्रारंभ की जाएगी जिसमें व्यक्ति से कम से कम ₹50 का सहयोग अपेक्षित है | इस मुहिम में प्रत्येक डोनर के नाम पर हिंडन नदी क्षेत्र में एक वृक्ष लगाया जाएगा |<br></p>', 500000.00, 'AZAD Foundation', 10.00, 60, '2020-07-10 12:20:39', 0, 'tree_plantation', '1594363839_ev8djh94wkg5sczlafut1594363839.jpg'),
(3, 'Support for प्रीति For Kidney Transplant', '<div>(जिला-बलिया) UP</div><div>बहन #प्रीति  उम्र 21वर्ष जिनकी दोनो  किडनी पूरी तरह से खराब हो चुकी है, जिसका ट्रांसप्लांट अप्रैल में होने वाला था। प्रीति के पिता जी की किडनी लगने वाली है जो कि अभी कुबैत में फंसे हुए है। lockdown की वजह से नही आ पा रहे हैं। अभी urgent मे किडनी की जरुरत है लेकिन देर होने के कारण प्रीति यादव की तबीयत बिगड़ती जा रही है।  #सहारा_हॉस्पिटल_लखनऊ के ICU में हफ्ते में तीन बार डायलिसिस हो रहा है जिस वजह से बहुत ज्यादे पैसे की जरुरत है उनके पिताजी का भी काम बंद होने के कारण पैसे नही भेज पा रहे हैं ।</div><div>मेरी आपलोगों से विनती है कि ज्यादे नहीं तो छोटी सी भी सहायता कीजिये। 100 रुपये ही सही, आपके लिये ये शायद सिर्फ 100रु होगा लेकिन जरा सोचिये अगर ऐसे 100 लोग भी कर देते हैं तो 10000रु  हो जायेंगे जो शायद प्रीति के लिये एक बार डायलिसिस का हो जायेगा। आपका यह छोटा सा योगदान किसी के लिये बहुत बड़ी सहायता होगी। हम सब की मदद उनके पिताजी के आने तक उन्हें बचा सकता है।</div><div>#मंदिर में हज़ारों का चढ़ावा चढ़ाने से अधिक पुण्य का कार्य है जरूरतमंद की मदद करना।</div><div><br></div><div>फाउंडेशन द्वारा प्रीति के 1 दिन के इलाज का खर्च उठाने का लक्ष्य रखा गया है | कृपया आप सब सहयोग अवश्य करें</div>', 10000.00, 'AZAD Foundation', 10000.00, 5, '2020-07-18 23:37:51', 0, 'medical', '1595095671_8xlozg2a75qws0hi3nfc1595095671.jpg'),
(4, 'Farmer\'s Crop Was Burnt', '<p>उत्तर प्रदेश के फतेहपुर जिले से एक को सूचना मिली जहां पर एक गरीब किसान परिवार के फसल को खेत में रंजिश के चलते जला दिया गया पीड़ित परिवार की आजीविका कृषि पर ही निर्भर है ऐसे में परिवार के सामने रोजी-रोटी का संकट उत्पन्न हो गया है फाउंडेशन द्वारा पीड़ित परिवार से जानकारी लेने के बाद ₹10000 की मदद कराने का लक्ष्य रखा गया है जिसमें आप सब की सहभागिता अनिवार्य है | कृपया अपने सामर्थ्य के अनुसार पीड़ित परिवार की मदद अवश्य करें | पीड़ित परिवार की समस्त डिटेल आपको एनजीओ के लिंक में मिल जाएगी |</p><p><br></p><p><b>पीड़ित द्वारा लिखा गया पत्र-</b></p><p><b>सेवा में,</b></p><p><b>          श्रीमान</b></p><p><b>           कुलिन्दर सिंह यादव सर</b></p><p><b>           नई दिल्ली</b></p><p><b>           </b></p><p><b>विषय -किसी भी विभाग द्वारा कारवाई न किए जाने के सम्बंध में।</b></p><p><b>महोदय </b></p><p><b>         निवेदन है कि मैं राजेन्द्र पुत्र बुद्दा लाल ग्राम बैरमपुर मजरे कठेरवा थाना हुसैनगंज जनपद फतेहपुर उ.प्र.का निवासी हू। दिनांक 04/11/2020 करीब, 2:30 बजे दिन मे अज्ञात लोगो द्वारा मेरी  4 बीघा धान की खड़ी फसल को आग लगाकर खाक कर दिया गया।</b></p><p><b>   मैंने ग्राम प्रधान, लेखपाल, थाना,सदर तहसील व जिलाधिकारी को सूचना व प्रार्थना पत्र के माध्यम से सूचित किया परन्तु किसी ने अभी तक कुछ भी कारवाई नही हुई है।</b></p><p><b>   अतः श्रीमान जी से निवेदन है कि मामले की जांच करवाकर आवश्यक कानूनी कार्रवाई की जाये व मेरे जीवन यापन हेतु उक्त मुआवजा दिलाने की कृपा करें </b></p><p><b>                      धन्यवाद </b></p><p><b>                                     प्रार्थी </b></p><p><b>    दिनांक 08/11/2020    राजेंद्र  </b></p><p><b>                                        ग्राम बैरमपुर        मजरे कठेरवा थाना हुसैनगंज जनपद फतेहपुर</b></p><p></p><p><b>                    मो . +919519857402</b></p>', 10000.00, 'AZAD Foundation', 10000.00, 5, '2020-11-09 18:07:49', 0, 'disasterRelief', '1604925469_rd3mlycgki0v2pa81n9b1604925469.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `support_donation`
--

CREATE TABLE `support_donation` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `purpose` text NOT NULL,
  `create_time` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `add_on` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `image` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `first_name`, `last_name`, `mobile_number`, `email`, `password`, `add_on`, `last_update`, `last_login`, `ip_address`, `status`, `image`, `address`) VALUES
(1, 'harsukhfoundation', 'harsukhfoundation', 'harsukhfoundation', '9625081873', 'admin@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-11-28 08:00:26', '2021-01-30 16:52:57', '2019-11-16 04:16:00', '103.141.167.179', '1', 'avatar042.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phon_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `join_date` datetime NOT NULL,
  `image` text NOT NULL,
  `delete_status` int(5) NOT NULL DEFAULT '0',
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `linkeden` text NOT NULL,
  `instagram` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `phon_no`, `email`, `status`, `join_date`, `image`, `delete_status`, `facebook`, `twitter`, `linkeden`, `instagram`, `dob`, `address`, `gender`, `state`, `role`, `priority`) VALUES
(13, 'test', '111111111', 'test@gmail.com', 1, '2021-02-02 10:59:14', '1612243754_7lnzcaxmwk6p5q3gr4hj1612243754.jpg', 1, 'https://www.facebook.com', 'https://twitter.com', '', '', '2021-02-04', 'test', 'Male', 'Head of Bihar State', '', 10),
(14, 'test', '1111111111', 'test@gmail.com', 1, '2021-02-02 11:53:22', '1612247002_dj5um143rnxgf6iy0bav1612247002.jpg', 1, 'https://www.facebook.com', 'https://twitter.com', '', '', '2021-02-03', 'xcxcxc', 'Male', 'Head of Bihar State', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming`
--

CREATE TABLE `upcoming` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `images` text NOT NULL,
  `delete_status` int(2) NOT NULL,
  `datetime` datetime NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming`
--

INSERT INTO `upcoming` (`id`, `title`, `description`, `images`, `delete_status`, `datetime`, `category`) VALUES
(1, 'Tree Plantation', '<p><span style=\"color: rgb(122, 126, 154); font-family: Muli, sans-serif; font-size: 15px;\">#GREEN वृक्षारोपड़ के द्वारा पर्यावरण को संतुलित बनाने हेतु आज़ाद फाउंडेशन के साथ एक छोटा सा प्रयास।</span><br></p>', '1594284222_do4t1l0ib3hsj7ny5gmp1594284222.jpg', 0, '2020-07-09 14:00:02', 'tree_plantation'),
(2, 'Run For Hindon', '<p>अक्टूबर माह के प्रारंभ में पर्यावरण संरक्षण में योगदान देने के लिए आजाद फाउंडेशन द्वारा गाजियाबाद क्षेत्र में हिंडन नदी को प्रदूषण मुक्त बनाने के लिए कार्यक्रम चलाया जाएगा | जिसके अंतर्गत नदी के दोनों किनारों पर वृक्षारोपण करने के साथ-साथ नदी जलमार्ग से कचरे को भी साफ किया जाएगा | ज्यादा जानकारी के लिए फाउंडेशन से संपर्क करें |</p>', '1594828466_t6zlwokfmvqd1jirx7g91594828466.jpeg', 0, '2020-07-15 21:24:09', 'envoirment_protection');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `delete_status` int(2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `url`, `delete_status`, `status`) VALUES
(10, 'https://www.youtube.com/watch?v=Q67fEmslIW0', 0, 1),
(11, 'https://www.youtube.com/watch?v=ZWXp8FpAgUo', 0, 1),
(12, 'https://www.youtube.com/watch?v=YxTXQbb1AgM', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone_no` varchar(25) CHARACTER SET latin1 NOT NULL,
  `email_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(10) CHARACTER SET latin1 NOT NULL,
  `image` text CHARACTER SET latin1 NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 NOT NULL,
  `state` varchar(100) CHARACTER SET latin1 NOT NULL,
  `district` varchar(155) DEFAULT NULL,
  `zip_code` varchar(50) CHARACTER SET latin1 NOT NULL,
  `street_address` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `status` int(2) NOT NULL,
  `is_approved` int(2) NOT NULL COMMENT '1=approved',
  `add_on` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` int(2) NOT NULL COMMENT '1=delete',
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `linkeden` text NOT NULL,
  `instagram` text NOT NULL,
  `postdata` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `first_name`, `last_name`, `phone_no`, `email_id`, `password`, `gender`, `image`, `city`, `state`, `district`, `zip_code`, `street_address`, `description`, `status`, `is_approved`, `add_on`, `last_update`, `delete_status`, `facebook`, `twitter`, `linkeden`, `instagram`, `postdata`) VALUES
(181, 'gggg', 'jhhjh', '787887', 'taraniduttjoshi@gmail.com', 'tytyty', 'Male', '1614106751_rbmgcjn2a1esfwo50v931614106751.jpg', 'jhhjjh', 'KARNATAKA', NULL, '877878', 'ghghghhg', 'hhhh', 1, 0, '2021-02-24 00:29:11', '2021-02-23 18:59:11', 0, '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_work`
--

CREATE TABLE `volunteer_work` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_date` datetime NOT NULL,
  `approved` int(2) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `delete_status` int(2) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer_work`
--

INSERT INTO `volunteer_work` (`id`, `title`, `message`, `post_date`, `approved`, `volunteer_id`, `delete_status`, `images`) VALUES
(1, 'hello', '<p>&nbsp;hgvygv</p>', '2020-06-18 13:59:04', 0, 0, 0, ''),
(2, 'What is Lorem Ipsum?ds', '<p>dsgeg</p>', '2020-06-18 14:01:46', 0, 5, 0, '1592469573_sxpn80ylruhtez4kgmf51592469573.jpg'),
(3, 'hello', '<p>dsdbrwhr</p>', '2020-06-18 14:02:06', 0, 5, 1, '1592469126_mkl83cba24i67wogqset1592469126.jpg'),
(4, 'DG you tffunnnN', '<p>Fgyy65fFjjn</p>', '2020-06-19 21:22:07', 0, 51, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `images` text NOT NULL,
  `delete_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`id`, `title`, `description`, `status`, `images`, `delete_status`) VALUES
(24, 'Who We Are?', 'Harsukh Foundation\' assists children & community in need-regardless of background, caste, race, religion, sex', 1, '1614103159_tuz5i3dap18kxjghr90w1614103159.png', 0),
(25, 'Our Mission', 'Harsukh Foundation is to empower underprivileged children, youth and women through relevant education ', 1, '1614103196_0yncqrheo43ijpt2wbdf1614103196.png', 0),
(26, 'Our Vision', 'Work as a catalyst in bringing sustainable change in the lives of underprivileged children, youth and women ', 1, '1614103231_edxfis1lq496h80gubka1614103231.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danation`
--
ALTER TABLE `danation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notic`
--
ALTER TABLE `notic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_audit`
--
ALTER TABLE `social_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_donation`
--
ALTER TABLE `support_donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming`
--
ALTER TABLE `upcoming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer_work`
--
ALTER TABLE `volunteer_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `danation`
--
ALTER TABLE `danation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notic`
--
ALTER TABLE `notic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_audit`
--
ALTER TABLE `social_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_donation`
--
ALTER TABLE `support_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `upcoming`
--
ALTER TABLE `upcoming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `volunteer_work`
--
ALTER TABLE `volunteer_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
