-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 10:38 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slackclone`
--

-- --------------------------------------------------------

--
-- Table structure for table `team1`
--

CREATE TABLE `team1` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team1`
--

INSERT INTO `team1` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user1', 'hey', '2017-06-14 22:00:00'),
(2, 'user1', 'heyo', '0000-00-00 00:00:00'),
(3, 'user1', 'hey, Pranav', '0000-00-00 00:00:00'),
(4, 'user1', 'hey, Pranav wassup?', '0000-00-00 00:00:00'),
(5, 'user1', 'just another trial', '0000-00-00 00:00:00'),
(6, 'user4', 'message from another user', '0000-00-00 00:00:00'),
(7, 'user1', 'bot building is under progress now', '0000-00-00 00:00:00'),
(8, 'user1', 'Hey Bot what\'s the time', '0000-00-00 00:00:00'),
(9, 'user4', 'now our bot can reply', '0000-00-00 00:00:00'),
(10, 'user4', 'Hey Bot, Whatsup?', '0000-00-00 00:00:00'),
(11, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(12, 'user4', 'nice to see you reply ', '0000-00-00 00:00:00'),
(13, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(14, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(15, 'user4', 'jdnfsjkdfjdskfb Hey Bot', '0000-00-00 00:00:00'),
(16, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(17, 'user4', 'the bot now replies to Hey Bot', '0000-00-00 00:00:00'),
(18, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(19, 'user4', 'i think the we should delay the ajax calls as it puts load on the app', '0000-00-00 00:00:00'),
(20, 'user4', 'cancel the*', '0000-00-00 00:00:00'),
(21, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(22, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(23, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(24, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(25, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(26, 'user4', 'OK Bot', '0000-00-00 00:00:00'),
(27, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(28, 'user4', 'OK Bot define project', '0000-00-00 00:00:00'),
(29, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(30, 'user4', 'OK Bot define a project', '0000-00-00 00:00:00'),
(31, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(32, 'user4', 'project1', '0000-00-00 00:00:00'),
(33, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(34, 'bot', 'Success: New Project project1 is now online!', '0000-00-00 00:00:00'),
(35, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(36, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(37, 'user4', 'trial', '0000-00-00 00:00:00'),
(38, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(39, 'bot', 'Failure: Not able to define the Project trial', '0000-00-00 00:00:00'),
(40, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(41, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(42, 'user4', 'Project1', '0000-00-00 00:00:00'),
(43, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(44, 'bot', 'Success: New Project Project1 is now online!', '0000-00-00 00:00:00'),
(45, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(46, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(47, 'user4', 'hello', '0000-00-00 00:00:00'),
(48, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(49, 'bot', 'Success: New Project hello is now online!', '0000-00-00 00:00:00'),
(50, 'user4', 'OK Bot define a project', '0000-00-00 00:00:00'),
(51, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(52, 'user4', 'project2', '0000-00-00 00:00:00'),
(53, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(54, 'bot', 'Success: New Project project2 is now online!', '0000-00-00 00:00:00'),
(55, 'user4', 'OK Bot define project a', '0000-00-00 00:00:00'),
(56, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(57, 'user4', 'OK Bot', '0000-00-00 00:00:00'),
(58, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(59, 'user4', 'OK Bot', '0000-00-00 00:00:00'),
(60, 'bot', 'Hey there, user4 How can I help you?', '0000-00-00 00:00:00'),
(61, 'user4', 'This Bot is awesome', '0000-00-00 00:00:00'),
(62, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(63, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(64, 'user4', 'project2', '0000-00-00 00:00:00'),
(65, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(66, 'bot', 'Success: New Project project2 is now online!', '0000-00-00 00:00:00'),
(67, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(68, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(69, 'user4', 'project2', '0000-00-00 00:00:00'),
(70, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(71, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(72, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(73, 'user4', 'project1', '0000-00-00 00:00:00'),
(74, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(75, 'user4', 'OK Bot define a new project', '0000-00-00 00:00:00'),
(76, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(77, 'user4', 'project1', '0000-00-00 00:00:00'),
(78, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(79, 'bot', 'This Project already exists.', '0000-00-00 00:00:00'),
(80, 'user4', 'Alright', '0000-00-00 00:00:00'),
(81, 'user4', 'Alright', '0000-00-00 00:00:00'),
(82, 'user1', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(83, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(84, 'user1', 'project1', '0000-00-00 00:00:00'),
(85, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(86, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(87, 'user1', 'First issue', '0000-00-00 00:00:00'),
(88, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(89, 'user1', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(90, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(91, 'user1', 'project1', '0000-00-00 00:00:00'),
(92, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(93, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(94, 'user1', 'will be deleted', '0000-00-00 00:00:00'),
(95, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(96, 'user1', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(97, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(98, 'user1', 'project1', '0000-00-00 00:00:00'),
(99, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(100, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(101, 'user1', 'third issue', '0000-00-00 00:00:00'),
(102, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(103, 'user1', 'OK Bot delete a commit whose id = 2', '0000-00-00 00:00:00'),
(104, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(105, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(106, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(107, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(108, 'user1', 'project1', '0000-00-00 00:00:00'),
(109, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(110, 'bot', 'Sorry you\'re not authorized to delete this issue', '0000-00-00 00:00:00'),
(111, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(112, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(113, 'user1', 'project1', '0000-00-00 00:00:00'),
(114, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(115, 'user1', 'OK Bot', '0000-00-00 00:00:00'),
(116, 'bot', 'Hey there, user1 How can I help you?', '0000-00-00 00:00:00'),
(117, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(118, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(119, 'user1', 'project1', '0000-00-00 00:00:00'),
(120, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(121, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(122, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(123, 'user1', 'project1', '0000-00-00 00:00:00'),
(124, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(125, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(126, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(127, 'user1', 'project1', '0000-00-00 00:00:00'),
(128, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(129, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(130, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(131, 'user1', 'project1', '0000-00-00 00:00:00'),
(132, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(133, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(134, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(135, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(136, 'user1', 'project1', '0000-00-00 00:00:00'),
(137, 'bot', 'Sorry, couldn\'t delete the issue. Servers might be down for maintenance. Please try again later.', '0000-00-00 00:00:00'),
(138, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(139, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(140, 'user1', 'project1', '0000-00-00 00:00:00'),
(141, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(142, 'bot', 'Sorry, couldn\'t delete the issue. Servers might be down for maintenance. Please try again later.', '0000-00-00 00:00:00'),
(143, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(144, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(145, 'user1', 'project1', '0000-00-00 00:00:00'),
(146, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(147, 'bot', 'Sorry, couldn\'t delete the issue. Servers might be down for maintenance. Please try again later.', '0000-00-00 00:00:00'),
(148, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(149, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(150, 'user1', 'project1', '0000-00-00 00:00:00'),
(151, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(152, 'bot', 'Success: Deleted Issue #2 by user1', '0000-00-00 00:00:00'),
(153, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(154, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(155, 'user1', 'project1', '0000-00-00 00:00:00'),
(156, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(157, 'bot', 'Sorry, couldn\'t delete the issue. Servers might be down for maintenance. Please try again later.', '0000-00-00 00:00:00'),
(158, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(159, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(160, 'user1', 'project1', '0000-00-00 00:00:00'),
(161, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(162, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(163, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(164, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(165, 'user1', 'project1', '0000-00-00 00:00:00'),
(166, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(167, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(168, 'user1', 'project1', '0000-00-00 00:00:00'),
(169, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(170, 'user1', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(171, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(172, 'user1', 'project1', '0000-00-00 00:00:00'),
(173, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(174, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(175, 'user1', 'fourth issue', '0000-00-00 00:00:00'),
(176, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(177, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(178, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(179, 'user1', 'project1', '0000-00-00 00:00:00'),
(180, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(181, 'bot', 'Sorry, couldn\'t delete the issue. Servers might be down for maintenance. Please try again later.', '0000-00-00 00:00:00'),
(182, 'user1', 'OK Bot delete a commit whose id equals 2', '0000-00-00 00:00:00'),
(183, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(184, 'user1', 'project1', '0000-00-00 00:00:00'),
(185, 'bot', 'Alright, working on it. Will let you know when its done.', '0000-00-00 00:00:00'),
(186, 'bot', 'Success: Deleted Issue #2 by user1', '0000-00-00 00:00:00'),
(187, 'user1', 'OK Bot show some technology news', '0000-00-00 00:00:00'),
(188, 'bot', 'Sorry, I don\'t understand.', '0000-00-00 00:00:00'),
(189, 'user1', 'OK Bot show some music news', '0000-00-00 00:00:00'),
(190, 'bot', 'Sorry, I don\'t understand.', '0000-00-00 00:00:00'),
(191, 'user1', 'OK Bot show me some technology news', '0000-00-00 00:00:00'),
(192, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(193, 'user1', 'OK Bot show some me music news', '0000-00-00 00:00:00'),
(194, 'bot', 'Sorry, I don\'t understand.', '0000-00-00 00:00:00'),
(195, 'user1', 'OK Bot show me some music news', '0000-00-00 00:00:00'),
(196, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(197, 'user1', 'OK Bot show me some music news', '0000-00-00 00:00:00'),
(198, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(199, 'user1', 'OK Bot show me some music news', '0000-00-00 00:00:00'),
(200, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(201, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(202, 'user1', 'OK Bot show me some music news', '0000-00-00 00:00:00'),
(203, 'user1', 'OK Bot show me some news', '0000-00-00 00:00:00'),
(204, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(205, 'bot', 'Here you go\nTitle: \'Jeremy Corbyn struggles over cost of childcare policy\'\nDescription: Jeremy Corbyn stumbles over the cost of his party\'s plan to offer free childcare to two-year-olds.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/election-2017-40090520\nPublished on: 2017-05-30\n\nTitle: \'Election 2017: SNP manifesto calls for referendum \'at end of Brexit process\'\'\nDescription: Nicola Sturgeon says referendum should be held \"not now, but when the final terms of the deal are known\"\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-scotland-scotland-politics-40086276\nPublished on: 2017-05-30\n\nTitle: \'Mike Dubke: White House communications director quits\'\nDescription: Mike Dubke resigns, and press secretary Sean Spicer will reportedly give fewer briefings.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/world-us-canada-40090865\nPublished on: 2017-05-30\n\nTitle: \'Zoo tiger death: Rosa King \'always loved\' job, mother says\'\nDescription: The mother of Rosa King, who died at Hamerton Park, says her zoo work was \"what she always loved\".\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-england-cambridgeshire-40089174\nPublished on: 2017-05-30\n\nTitle: \'Rolf Harris trial: Jury discharged as no verdicts reached\'\nDescription: Prosecutors say they will not seek a retrial, as jurors fail to reach verdicts on sex assault charges.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40095612\nPublished on: 2017-05-30\n\nTitle: \'Ultra-tough antibiotic to fight superbugs\'\nDescription: The modified drug might help put an end to resistant superbug infections, experts hope.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/health-40091179\nPublished on: 2017-05-30\n', '0000-00-00 00:00:00'),
(206, 'user1', 'OK Bot show me indian news', '0000-00-00 00:00:00'),
(207, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(208, 'bot', 'Here you go\nTitle: \'India thanks Germany for backing its NSG membership bid - Times of India\'\nDescription: India on Tuesday thanked Germany for backing its membership bid in the Nuclear Suppliers Group as the two countries supported each other\'s candidature for a permanent seat in a reformed UN Security Council.\nAuthor: Data Not Available\nMore info: http://timesofindia.indiatimes.com/india/india-thanks-germany-for-backing-its-nsg-membership-bid/articleshow/58911660.cms\nPublished on: 2017-05-30\n\nTitle: \'Cattle regulation law stayed by Madras HC - Times of India\'\nDescription: Amidst raging debate over the motive of the Centreâ€™s May 23 notification regulating cattle sale and animal markets, the Madurai bench of the Madras high court stayed its operation on Tuesday.\nAuthor: L Saravanan\nMore info: http://timesofindia.indiatimes.com/city/chennai/cattle-regulation-law-stayed-by-madras-hc/articleshow/58910774.cms\nPublished on: 2017-05-30\n\nTitle: \'Babri Masjid case: Court frames \'criminal conspiracy\' charges against Advani, Joshi, Bharti and others - Times of India\'\nDescription: LUCKNOW: A CBI court on Tuesday charged former deputy PM LK Adavni, senior BJP leader MM Joshi and cabinet minister Uma Bharati for their role in conspiracy behind the demolition of Babri Masjid in Ayodhya in 1992.\nAuthor: Pravin Kumar\nMore info: http://timesofindia.indiatimes.com/india/babri-marsjid-case-advani-joshi-uma-bharti-granted-bail-on-rs-50000-bond/articleshow/58910168.cms\nPublished on: 2017-05-30\n\nTitle: \'Bangladesh 21/4 in 6.3 Overs | India vs Bangladesh: Live Cricket Score of Ind vs Ban, 5th warm-up match, The Oval - The Times of India\'\nDescription: Get live cricket score ', '0000-00-00 00:00:00'),
(209, 'user1', 'OK Bot show me music news', '0000-00-00 00:00:00'),
(210, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(211, 'user1', 'OK Bot show me science news', '0000-00-00 00:00:00'),
(212, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(213, 'bot', 'Here you go\nTitle: \'Meet This Newly Discovered Flying Squirrel\'\nDescription: North Americaâ€™s newest mammal, Humboldtâ€™s Flying Squirrel, helps solve an evolutionary mystery.\nAuthor: Virginia Morell\nMore info: http://news.nationalgeographic.com/2017/05/flying-squirrel-new-species-north-america.html\nPublished on: 2017-05-30\n\nTitle: \'How Photographing Albinism Changed This Family\'s Future\'\nDescription: While shooting a story about the condition, Stephanie Sinclair decided to adopt two albino children from China.\nAuthor: Stephanie Sinclair\nMore info: http://www.nationalgeographic.com/photography/proof/2017/05/albinism-china-children-national-geographic-photographer.html\nPublished on: 2017-05-30\n\nTitle: \'Rare Blueprints Show How an Iconic Baseball Stadium Evolved\'\nDescription: Intricate hand-drawn architectural diagrams detail renovations to the original Yankee Stadium.\nAuthor: Greg Miller\nMore info: http://news.nationalgeographic.com/2017/05/baseball-yankee-stadium-hand-drawn-blueprints-architectural.html\nPublished on: 2017-05-30\n\nTitle: \'For Them, Being Pale Can Bring Scorn, Threats, and Worse\'\nDescription: Fashion models with albinism are popular, but many people with the condition face exclusion, health problems, and savage attacks.\nAuthor: Susan Ager\nMore info: http://www.nationalgeographic.com/magazine/2017/06/albinism-health-genetics-society.html\nPublished on: 2017-05-30\n\nTitle: \'Snake Regurgitates Another Snake in Startling Video\'\nDescription: The eaten snake, which was on the cusp of disappearing into its predatorâ€™s mouth, seems to have made it out alive.\nAuthor: Christina Nunez\nMore info: http://news.nationalgeographic.com/2017/05/snake-regurgitates-live-snake-video.html\nPublished on: 2017-05-29\n\nTitle: \'19 Electrifying Photos of Epic Storms\'\nDescription: As warm weather storms in, so does tornado season.\nAuthor: Data Not Available\nMore info: http://www.nationalgeographic.com/photography/proof/2017/05/epic-storm-gallery.html\nPublished on: 2017-05-28\n', '0000-00-00 00:00:00'),
(214, 'user1', 'OK Bot show me business news', '0000-00-00 00:00:00'),
(215, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(216, 'bot', 'Here you go\nTitle: \'\'Very bad for the US. This will change\': Trump fires back at Germany, Merkel in tweet\'\nDescription: President Donald Trump went after Germany in a tweet Tuesday morning after Chancellor Angela Merkel said Germany could no longer \"fully rely\" on the US.\nAuthor: Bob Bryan\nMore info: http://www.businessinsider.com/donald-trump-tweet-on-germany-nato-2017-5\nPublished on: 2017-05-30\n\nTitle: \'White House communications director Michael Dubke is out â€” and it could just be the start of a bigger shake-up\'\nDescription: Dubke handed in his resignation before President Donald Trump left for his international trip earlier this month.\nAuthor: Sonam Sheth and Associated Press\nMore info: http://www.businessinsider.com/ap-the-latest-wh-communications-director-michael-dubke-resigns-2017-5\nPublished on: 2017-05-30\n\nTitle: \'Steve Cohen is reportedly prepping the biggest hedge fund launch ever\'\nDescription: Billionaire Steve Cohen is looking to raise $20 billion for his hedge fund comeback, the Wall Street Journal reported.\nAuthor: Rachael Levy\nMore info: http://www.businessinsider.com/steve-cohen-is-reportedly-prepping-the-biggest-hedge-fund-launch-ever-2017-5\nPublished on: 2017-05-30\n\nTitle: \'Democrats are pushing an unlikely source â€” Jerry Springer â€” to run for governor in Ohio\'\nDescription: Democrats are pushing Jerry Springer to run for Ohio governor in 2018, eight Democratic insiders confirmed to Business Insider.\nAuthor: Allan Smith and Maxwell Tani\nMore info: http://www.businessinsider.com/jerry-springer-ohio-governor-2018-trump-2017-5\nPublished on: 2017-05-30\n\nTitle: \'Russian officials reportedly discussed having \'derogatory\' information about Trump\'\nDescription: CNN says US officials intercepted conversations between Russian officials discussing potentially derogatory financial information about President Donald Trump.\nAuthor: Natasha Bertrand\nMore info: http://www.businessinsider.com/russian-officials-reportedly-discussed-having-derogatory-information-about-trump-2017-5\nPublished on: 2017-05-30\n\nTitle: \'The creator of Android has finally unveiled his new phone\'\nDescription: After months of teasing, it\'s finally here â€” and it has some exciting new features.\nAuthor: Rob Price, Business Insider UK\nMore info: http://www.businessinsider.com/android-creator-andy-rubin-unveils-new-essential-phone-ph-1-2017-5\nPublished on: 2017-05-30\n', '0000-00-00 00:00:00'),
(217, 'user1', 'OK Bot show me technology news', '0000-00-00 00:00:00'),
(218, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(219, 'user1', 'OK Bot show me gaming news', '0000-00-00 00:00:00'),
(220, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(221, 'bot', 'Here you go\nTitle: \'Fire Emblem Warriors Will Feature New, Twin Protagonists - IGN\'\nDescription: In addition, the game will reportedly focus on characters from Shadow Dragon, Awakening and Fates.\nAuthor: Evan Campbell\nMore info: http://ca.ign.com/articles/2017/05/30/fire-emblem-warriors-will-feature-new-twin-protagonists\nPublished on: 2017-05-30\n\nTitle: \'Next Arms Global Testpunch Packs New Modes - IGN\'\nDescription: Nintendo also revealed the most popular fighter for the first weekend of the online beta.\nAuthor: Evan Campbell\nMore info: http://ca.ign.com/articles/2017/05/30/next-arms-global-testpunch-packs-new-modes\nPublished on: 2017-05-30\n\nTitle: \'Monster Hunter XX Official Switch Japanese Reveal Trailer - IGN Video\'\nDescription: Capcom gives us a first look at Monster Hunter XX running on Switch. 3DS players can transfer their save to Switch version.\nAuthor: Data Not Available\nMore info: http://ca.ign.com/videos/2017/05/30/monster-hunter-xx-official-switch-japanese-reveal-trailer\nPublished on: 2017-05-30\n\nTitle: \'A Visual History of Wonder Woman\'s Costumes - IGN\'\nDescription: We trace the evolution of Wonder Woman\'s iconic costume across DC\'s comics, TV shows, games and movies.\nAuthor: Jesse Schedeen\nMore info: http://ca.ign.com/articles/2017/05/30/a-visual-history-of-wonder-womans-costumes\nPublished on: 2017-05-30\n\nTitle: \'PlayStation 3 Has Ceased Production - IGN\'\nDescription: It\'s the end of an era as the Sony console that (eventually) could ends production in Japan.\nAuthor: Wesley Copeland\nMore info: http://ca.ign.com/articles/2017/05/30/playstation-3-has-ceased-production\nPublished on: 2017-05-30\n\nTitle: \'The Nintendo Theme Park Will Probably Include Real-Life Mario Kart - IGN\'\nDescription: A trademark\'s given us some small hints at what might be to come from Nintendo\'s US attractions.\nAuthor: Joe Skrebels\nMore info: http://ca.ign.com/articles/2017/05/30/the-nintendo-theme-park-will-probably-include-real-life-mario-kart\nPublished on: 2017-05-30\n', '0000-00-00 00:00:00'),
(222, 'user1', 'OK Bot show me technology news', '0000-00-00 00:00:00'),
(223, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(224, 'user1', 'OK Bot show me technology news', '0000-00-00 00:00:00'),
(225, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(226, 'bot', 'Here you go\nTitle: \'Dellâ€™s Inspiron 27 7000 all-in-one is ready for VR\'\nDescription: Dell\'s latest machine is all about making it cheaper for you to get your virtual reality fix while keeping your tabletop uncluttered.\nAuthor: Daniel Cooper\nMore info: https://www.engadget.com/2017/05/30/dell-s-inspiron-27-7000-all-in-one-is-ready-for-vr/\nPublished on: 2017-05-30\n\nTitle: \'Intelâ€™s Core i9 Extreme Edition CPU is an 18-core beast\'\nDescription: Start saving up: Intel just unveiled its first 18-core consumer CPU.\nAuthor: Devindra Hardawar\nMore info: https://www.engadget.com/2017/05/30/intel-core-i9-extreme/\nPublished on: 2017-05-30\n\nTitle: \'This is Andy Rubinâ€™s Essential Phone\'\nDescription: Android creator Andy Rubin has unveiled the first phone by his new company, Essential.\nAuthor: Nick Summers\nMore info: https://www.engadget.com/2017/05/30/essential-phone-andy-rubin-android/\nPublished on: 2017-05-30\n\nTitle: \'â€˜District 9â€™ director to debut his new sci-fi flick on Steam\'\nDescription: The short film â€˜Volume 1â€™ sees mankind battling aliens once again.\nAuthor: Tom Regan\nMore info: https://www.engadget.com/2017/05/30/district-9-director-to-debut-his-new-sci-fi-flick-on-steam/\nPublished on: 2017-05-30\n\nTitle: \'What we played in May\'\nDescription: Our favorites this month include a GameCube remaster of a PlayStation classic.\nAuthor: Engadget\nMore info: https://www.engadget.com/2017/05/29/gaming-irl-may-2017/\nPublished on: 2017-05-29\n', '0000-00-00 00:00:00'),
(227, 'user1', 'OK Bot show me music news', '0000-00-00 00:00:00'),
(228, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(229, 'bot', 'Here you go\nTitle: \'Just Love What You Love, Feat. Lisa Hanawalt and Ilse ValfrÃ©\'\nDescription: MTV Podcasts - New adventures in sound from the MTV News team. Talking that talk since 2016.\nAuthor: Tavi Gevinson\nMore info: http://www.mtv.com/news/podcasts/rookie/just-love-what-you-love-feat-lisa-hanawalt-and-ilse-valfre/\nPublished on: Data Not A\n\nTitle: \'Ariana Grande Vows To Return To â€˜Braveâ€™ Manchester For Benefit Concert In Heartbreaking Letter\'\nDescription: \'I extend my hand and heart and everything I possibly can give\'\nAuthor: Rebecca Thomas\nMore info: http://www.mtv.com/news/3016511/ariana-breaks-full-statement-manchester-attack/\nPublished on: Data Not A\n\nTitle: \'Ariana Grande Manchester Concert Attack: Everything We Know So Far\'\nDescription: Details continue to roll in from the tragedy\nAuthor: Sasha Geffen\nMore info: http://www.mtv.com/news/3015493/ariana-grande-manchester-concert-attack-what-we-know/\nPublished on: Data Not A\n\nTitle: \'How To Help Manchester\'\nDescription: Here are a few ways you can help victims and their families from anywhere in the world\nAuthor: Marcus Patrick Ellsworth\nMore info: http://www.mtv.com/news/3015604/how-to-help-manchester/\nPublished on: Data Not A\n\nTitle: \'Thereâ€™s More To The Manchester Bombing\'\nDescription: Ariana Grandeâ€™s fans werenâ€™t the only target\nAuthor: Jane Coaston\nMore info: http://www.mtv.com/news/3015879/theres-more-to-the-manchester-bombing/\nPublished on: Data Not A\n', '0000-00-00 00:00:00'),
(230, 'user1', 'OK Bot show me technology news', '0000-00-00 00:00:00'),
(231, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(232, 'user1', 'OK Bot show me technology news', '0000-00-00 00:00:00'),
(233, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(234, 'user1', 'OK Bot show me technology news', '0000-00-00 00:00:00'),
(235, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(236, 'bot', 'Here you go\nTitle: \'Dellâ€™s Inspiron 27 7000 all-in-one is ready for VR\'\nDescription: Dell\'s latest machine is all about making it cheaper for you to get your virtual reality fix while keeping your tabletop uncluttered.\nAuthor: Daniel Cooper\nMore info: https://www.engadget.com/2017/05/30/dell-s-inspiron-27-7000-all-in-one-is-ready-for-vr/\nPublished on: 2017-05-30\n\nTitle: \'Intelâ€™s Core i9 Extreme Edition CPU is an 18-core beast\'\nDescription: Start saving up: Intel just unveiled its first 18-core consumer CPU.\nAuthor: Devindra Hardawar\nMore info: https://www.engadget.com/2017/05/30/intel-core-i9-extreme/\nPublished on: 2017-05-30\n\nTitle: \'This is Andy Rubinâ€™s Essential Phone\'\nDescription: Android creator Andy Rubin has unveiled the first phone by his new company, Essential.\nAuthor: Nick Summers\nMore info: https://www.engadget.com/2017/05/30/essential-phone-andy-rubin-android/\nPublished on: 2017-05-30\n\nTitle: \'â€˜District 9â€™ director to debut his new sci-fi flick on Steam\'\nDescription: The short film â€˜Volume 1â€™ sees mankind battling aliens once again.\nAuthor: Tom Regan\nMore info: https://www.engadget.com/2017/05/30/district-9-director-to-debut-his-new-sci-fi-flick-on-steam/\nPublished on: 2017-05-30\n\nTitle: \'What we played in May\'\nDescription: Our favorites this month include a GameCube remaster of a PlayStation classic.\nAuthor: Engadget\nMore info: https://www.engadget.com/2017/05/29/gaming-irl-may-2017/\nPublished on: 2017-05-29\n', '0000-00-00 00:00:00'),
(237, 'user1', 'OK Bot show me music news', '0000-00-00 00:00:00'),
(238, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(239, 'bot', 'Here you go\nTitle: \'Just Love What You Love, Feat. Lisa Hanawalt and Ilse ValfrÃ©\'\nDescription: MTV Podcasts - New adventures in sound from the MTV News team. Talking that talk since 2016.\nAuthor: Tavi Gevinson\nMore info: http://www.mtv.com/news/podcasts/rookie/just-love-what-you-love-feat-lisa-hanawalt-and-ilse-valfre/\nPublished on: NA\n\nTitle: \'Ariana Grande Vows To Return To â€˜Braveâ€™ Manchester For Benefit Concert In Heartbreaking Letter\'\nDescription: \'I extend my hand and heart and everything I possibly can give\'\nAuthor: Rebecca Thomas\nMore info: http://www.mtv.com/news/3016511/ariana-breaks-full-statement-manchester-attack/\nPublished on: NA\n\nTitle: \'Ariana Grande Manchester Concert Attack: Everything We Know So Far\'\nDescription: Details continue to roll in from the tragedy\nAuthor: Sasha Geffen\nMore info: http://www.mtv.com/news/3015493/ariana-grande-manchester-concert-attack-what-we-know/\nPublished on: NA\n\nTitle: \'How To Help Manchester\'\nDescription: Here are a few ways you can help victims and their families from anywhere in the world\nAuthor: Marcus Patrick Ellsworth\nMore info: http://www.mtv.com/news/3015604/how-to-help-manchester/\nPublished on: NA\n\nTitle: \'Thereâ€™s More To The Manchester Bombing\'\nDescription: Ariana Grandeâ€™s fans werenâ€™t the only target\nAuthor: Jane Coaston\nMore info: http://www.mtv.com/news/3015879/theres-more-to-the-manchester-bombing/\nPublished on: NA\n', '0000-00-00 00:00:00'),
(240, 'user1', 'added a new column datetime', '2017-06-02 23:59:52'),
(241, 'user1', 'finally mereged in master', '2017-06-10 00:41:24'),
(242, 'ganesh', 'good morning', '2017-06-29 22:57:48'),
(254, 'ganesh', 'hey', '2017-07-06 20:28:58'),
(255, 'ganesh', 'good morning', '2017-07-07 12:16:54'),
(256, 'ganesh', 'good afternoon', '2017-07-07 12:57:52'),
(257, 'ganesh', '4.39', '2017-07-07 16:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `team1project1`
--

CREATE TABLE `team1project1` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team1project1`
--

INSERT INTO `team1project1` (`id`, `issuedescription`, `createdby`, `datetime`) VALUES
(1, 'First issue', 'user1', '2017-05-27 14:37:25'),
(3, 'third issue', 'user1', '2017-05-27 14:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `team1project2`
--

CREATE TABLE `team1project2` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team1_members`
--

CREATE TABLE `team1_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team1_members`
--

INSERT INTO `team1_members` (`id`, `username`, `datetime`, `lastseen`) VALUES
(1, 'ganesh', '2017-07-09 14:17:02', '0000-00-00 00:00:00'),
(2, 'user1', '2017-07-10 15:33:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team2`
--

CREATE TABLE `team2` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team2`
--

INSERT INTO `team2` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user4', 'a new table for team2', '0000-00-00 00:00:00'),
(2, 'user4', 'hey a new message from user2', '0000-00-00 00:00:00'),
(3, 'user4', 'Hey Bot welcome to Team 2', '0000-00-00 00:00:00'),
(4, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team2_members`
--

CREATE TABLE `team2_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team3`
--

CREATE TABLE `team3` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team3`
--

INSERT INTO `team3` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user4', 'a new table for team3', '0000-00-00 00:00:00'),
(2, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(3, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(4, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(5, 'user4', 'Hey Bot whats the time', '0000-00-00 00:00:00'),
(6, 'bot', 'Current Time is 12:12:38 PM', '0000-00-00 00:00:00'),
(7, 'user4', 'Hey Bot What\'s the time?', '0000-00-00 00:00:00'),
(8, 'bot', 'Current Time is 12:13:27 PM', '0000-00-00 00:00:00'),
(9, 'user4', 'yeah Hey Bot', '0000-00-00 00:00:00'),
(10, 'bot', 'Current Time is 12:13:27 PM', '0000-00-00 00:00:00'),
(11, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(12, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(13, 'bot', 'Current Time is 12:15:39 PM', '0000-00-00 00:00:00'),
(14, 'user4', 'Hey Bot what\'s the time?', '0000-00-00 00:00:00'),
(15, 'user4', 'Hey Bot what\'s the time?', '0000-00-00 00:00:00'),
(16, 'bot', 'Current Time is 12:15:55 PM', '0000-00-00 00:00:00'),
(17, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(18, 'bot', 'Current Time is 12:15:55 PM', '0000-00-00 00:00:00'),
(19, 'user4', 'Hey Bot what\'s the time', '0000-00-00 00:00:00'),
(20, 'bot', 'Current Time is 12:17:02 PM', '0000-00-00 00:00:00'),
(21, 'user4', 'Hey Bot', '0000-00-00 00:00:00'),
(22, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(23, 'user2', 'Hey There', '0000-00-00 00:00:00'),
(24, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(25, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(26, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(27, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(28, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(29, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(30, 'user2', 'Hey Bot this is another trial', '0000-00-00 00:00:00'),
(31, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(32, 'user2', 'Hey Bot create a new project', '0000-00-00 00:00:00'),
(33, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(34, 'user2', 'project1', '0000-00-00 00:00:00'),
(35, 'user2', 'Hey Bot project1', '0000-00-00 00:00:00'),
(36, 'bot', 'undefined', '0000-00-00 00:00:00'),
(37, 'user2', 'Hey Bot revert project definition', '0000-00-00 00:00:00'),
(38, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(39, 'user2', 'Hey Bot create a new project', '0000-00-00 00:00:00'),
(40, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(41, 'user2', 'Hey Bot project1', '0000-00-00 00:00:00'),
(42, 'bot', 'undefined', '0000-00-00 00:00:00'),
(43, 'user2', 'Hey Bot project1', '0000-00-00 00:00:00'),
(44, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(45, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(46, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(47, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(48, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(49, 'user2', 'project1', '0000-00-00 00:00:00'),
(50, 'bot', 'undefined', '0000-00-00 00:00:00'),
(51, 'user2', 'okay', '0000-00-00 00:00:00'),
(52, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(53, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(54, 'user2', 'project3', '0000-00-00 00:00:00'),
(55, 'bot', 'undefined', '0000-00-00 00:00:00'),
(56, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(57, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(58, 'user2', 'project3', '0000-00-00 00:00:00'),
(59, 'bot', 'undefined', '0000-00-00 00:00:00'),
(60, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(61, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(62, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(63, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(64, 'user2', 'project1', '0000-00-00 00:00:00'),
(65, 'bot', 'undefined', '0000-00-00 00:00:00'),
(66, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(67, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(68, 'user2', 'project1', '0000-00-00 00:00:00'),
(69, 'bot', 'undefined', '0000-00-00 00:00:00'),
(70, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(71, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(72, 'user2', 'project 6', '0000-00-00 00:00:00'),
(73, 'bot', 'undefined', '0000-00-00 00:00:00'),
(74, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(75, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(76, 'user2', 'project 6', '0000-00-00 00:00:00'),
(77, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(78, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(79, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(80, 'user2', 'project 7', '0000-00-00 00:00:00'),
(81, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(82, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(83, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(84, 'user2', 'project9', '0000-00-00 00:00:00'),
(85, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(86, 'user2', 'Hey Bot, define a new project', '0000-00-00 00:00:00'),
(87, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(88, 'user2', 'Hey Bot, define a new project', '0000-00-00 00:00:00'),
(89, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(90, 'user2', 'project7', '0000-00-00 00:00:00'),
(91, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(92, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(93, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(94, 'user2', 'project 8', '0000-00-00 00:00:00'),
(95, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(96, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(97, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(98, 'user2', 'pri', '0000-00-00 00:00:00'),
(99, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(100, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(101, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(102, 'user2', 'prj', '0000-00-00 00:00:00'),
(103, 'bot', 'Ohok, working on it....\nundefined', '0000-00-00 00:00:00'),
(104, 'user2', 'Hey Bot define a new project', '0000-00-00 00:00:00'),
(105, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(106, 'user2', 'project67', '0000-00-00 00:00:00'),
(107, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(108, 'bot', 'Success: New Projectproject67 is now online!', '0000-00-00 00:00:00'),
(109, 'user2', 'Hey Bot', '0000-00-00 00:00:00'),
(110, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(111, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(112, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(113, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(114, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(115, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(116, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(117, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(118, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(119, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(120, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(121, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(122, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(123, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(124, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(125, 'bot', 'What do I look like? A JOKE MACHINE!?', '0000-00-00 00:00:00'),
(126, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(127, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(128, 'bot', 'I\'m glad I know sign language, it\'s pretty handy.', '0000-00-00 00:00:00'),
(129, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(130, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(131, 'user2', 'OK Bot', '0000-00-00 00:00:00'),
(132, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(133, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(134, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(135, 'bot', 'Did you hear about the guy whose whole left side was cut off? He\'s all right now.', '0000-00-00 00:00:00'),
(136, 'user2', 'OK Bot humor me', '0000-00-00 00:00:00'),
(137, 'bot', 'Picking a good one for ya', '0000-00-00 00:00:00'),
(138, 'bot', 'Why do mermaid wear sea-shells? Because b-shells are too small.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team3_members`
--

CREATE TABLE `team3_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team4`
--

CREATE TABLE `team4` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team4`
--

INSERT INTO `team4` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user2', 'First Message', '0000-00-00 00:00:00'),
(2, 'user2', 'OK Bot create a new project', '0000-00-00 00:00:00'),
(3, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(4, 'user2', 'project1', '0000-00-00 00:00:00'),
(5, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(6, 'bot', 'Success: New Project project1 is now online!', '0000-00-00 00:00:00'),
(7, 'user2', 'OK Bot create a new project', '0000-00-00 00:00:00'),
(8, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(9, 'user2', 'project1', '0000-00-00 00:00:00'),
(10, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(11, 'bot', 'This Project already exists.', '0000-00-00 00:00:00'),
(12, 'user2', 'ohok', '0000-00-00 00:00:00'),
(13, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(14, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(15, 'user2', 'project1', '0000-00-00 00:00:00'),
(16, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(17, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(18, 'user2', 'project1', '0000-00-00 00:00:00'),
(19, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(20, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(21, 'user2', 'This is the first issue', '0000-00-00 00:00:00'),
(22, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(23, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(24, 'user2', 'project1', '0000-00-00 00:00:00'),
(25, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(26, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(27, 'user2', 'project1', '0000-00-00 00:00:00'),
(28, 'bot', 'Alright, type down the text for the Issue.', '0000-00-00 00:00:00'),
(29, 'user2', 'OK Bot insert an issue', '0000-00-00 00:00:00'),
(30, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(31, 'user2', 'project2', '0000-00-00 00:00:00'),
(32, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(33, 'bot', 'This Project doesn\'t exist.', '0000-00-00 00:00:00'),
(34, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(35, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(36, 'user2', 'project1', '0000-00-00 00:00:00'),
(37, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(38, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(39, 'user2', 'first issue', '0000-00-00 00:00:00'),
(40, 'bot', 'Alright, type down the text for the Issue.', '0000-00-00 00:00:00'),
(41, 'bot', 'Failure: Not able to commit the issue to ', '0000-00-00 00:00:00'),
(42, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(43, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(44, 'user2', 'project1', '0000-00-00 00:00:00'),
(45, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(46, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(47, 'user2', 'First trial', '0000-00-00 00:00:00'),
(48, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(49, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(50, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(51, 'user2', 'project1', '0000-00-00 00:00:00'),
(52, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(53, 'user2', 'first issue', '0000-00-00 00:00:00'),
(54, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(55, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(56, 'user2', 'project1', '0000-00-00 00:00:00'),
(57, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(58, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(59, 'user2', 'first trial', '0000-00-00 00:00:00'),
(60, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(61, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(62, 'user2', 'project1', '0000-00-00 00:00:00'),
(63, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(64, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(65, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(66, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(67, 'user2', 'project1', '0000-00-00 00:00:00'),
(68, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(69, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(70, 'user2', 'first trial', '0000-00-00 00:00:00'),
(71, 'user2', 'another trial', '0000-00-00 00:00:00'),
(72, 'user2', 'OK Bot', '0000-00-00 00:00:00'),
(73, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(74, 'user2', 'insert an issue', '0000-00-00 00:00:00'),
(75, 'user2', 'first trial', '0000-00-00 00:00:00'),
(76, 'user2', 'OK Bot insert an issue', '0000-00-00 00:00:00'),
(77, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(78, 'user2', 'project2', '0000-00-00 00:00:00'),
(79, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(80, 'bot', 'This Project doesn\'t exist.', '0000-00-00 00:00:00'),
(81, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(82, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(83, 'user2', 'project1', '0000-00-00 00:00:00'),
(84, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(85, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(86, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(87, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(88, 'user2', 'project1', '0000-00-00 00:00:00'),
(89, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(90, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(91, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(92, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(93, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(94, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(95, 'user2', 'project1', '0000-00-00 00:00:00'),
(96, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(97, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(98, 'user2', 'OK Bot commit an Issue', '0000-00-00 00:00:00'),
(99, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(100, 'user2', 'project1', '0000-00-00 00:00:00'),
(101, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(102, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(103, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(104, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(105, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(106, 'user2', 'project1', '0000-00-00 00:00:00'),
(107, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(108, 'user2', 'hey', '0000-00-00 00:00:00'),
(109, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(110, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(111, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(112, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(113, 'user2', 'project1', '0000-00-00 00:00:00'),
(114, 'user2', 'first trial', '0000-00-00 00:00:00'),
(115, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(116, 'bot', 'Failure: Not able to commit the issue to ', '0000-00-00 00:00:00'),
(117, 'user2', 'OK Bot I\'m feeling tiredness', '0000-00-00 00:00:00'),
(118, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(119, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(120, 'user2', 'OK Bot I\'m feeling anxiety', '0000-00-00 00:00:00'),
(121, 'user2', 'OK Bot display the latest commit', '0000-00-00 00:00:00'),
(122, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(123, 'user2', 'project1', '0000-00-00 00:00:00'),
(124, 'user2', 'OK Bot display the latest commit', '0000-00-00 00:00:00'),
(125, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(126, 'user2', 'project2', '0000-00-00 00:00:00'),
(127, 'bot', 'This Project doesn\'t exist. Want to create a new project with this name: \'project2\' ? Then just type \'OK Bot create a new project\'', '0000-00-00 00:00:00'),
(128, 'user2', 'OK Bot define a project', '0000-00-00 00:00:00'),
(129, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(130, 'user2', 'project2', '0000-00-00 00:00:00'),
(131, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(132, 'bot', 'Success: New Project project2 is now online!', '0000-00-00 00:00:00'),
(133, 'user2', 'OK Bot display the latest commit of project2', '0000-00-00 00:00:00'),
(134, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(135, 'bot', 'Issue #1\nDescription: no issues found\nIssued by: admin\nDate and Time: 2017-05-06 23:32:44\n', '0000-00-00 00:00:00'),
(136, 'user2', 'OK Bot display a commit whose id equals 3', '0000-00-00 00:00:00'),
(137, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(138, 'user2', 'OK Bot display the commit whose id equals 3', '0000-00-00 00:00:00'),
(139, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(140, 'user2', 'project2', '0000-00-00 00:00:00'),
(141, 'bot', 'Issue #1\nDescription: no issues found\nIssued by: admin\nDate and Time: 2017-05-06 23:32:44\n', '0000-00-00 00:00:00'),
(142, 'user2', 'OK Bot define a new issue', '0000-00-00 00:00:00'),
(143, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(144, 'user2', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(145, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(146, 'user2', 'project2', '0000-00-00 00:00:00'),
(147, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(148, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(149, 'user2', 'issue trial', '0000-00-00 00:00:00'),
(150, 'bot', 'Success: Issue commited to project2', '0000-00-00 00:00:00'),
(151, 'user2', 'OK Bot display the commit whose id equals 3', '0000-00-00 00:00:00'),
(152, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(153, 'user2', 'project2', '0000-00-00 00:00:00'),
(154, 'bot', 'Success: Issue commited to project2', '0000-00-00 00:00:00'),
(155, 'user2', 'OK Bot display the commit whose id equals 3', '0000-00-00 00:00:00'),
(156, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(157, 'user2', 'project2', '0000-00-00 00:00:00'),
(158, 'bot', 'Not Able to perform this request.', '0000-00-00 00:00:00'),
(159, 'user2', 'Hey', '0000-00-00 00:00:00'),
(160, 'user2', 'YOLO', '0000-00-00 00:00:00'),
(161, 'user2', 'OK Bot', '0000-00-00 00:00:00'),
(162, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team4project1`
--

CREATE TABLE `team4project1` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team4project2`
--

CREATE TABLE `team4project2` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team4project2`
--

INSERT INTO `team4project2` (`id`, `issuedescription`, `createdby`, `datetime`) VALUES
(1, 'no issues found', 'admin', '2017-05-06 23:32:44'),
(2, 'issue trial', 'user2', '2017-05-06 23:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `team4_members`
--

CREATE TABLE `team4_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team5`
--

CREATE TABLE `team5` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team5`
--

INSERT INTO `team5` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user6', 'First Message', '0000-00-00 00:00:00'),
(2, 'user6', 'OK Bot', '0000-00-00 00:00:00'),
(3, 'bot', 'Hey there, user6 How can I help you?', '0000-00-00 00:00:00'),
(4, 'user5', 'OK Bot', '0000-00-00 00:00:00'),
(5, 'bot', 'Hey there, user5 How can I help you?', '0000-00-00 00:00:00'),
(6, 'user6', 'OK Bot create a new project', '0000-00-00 00:00:00'),
(7, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(8, 'user5', 'project1', '0000-00-00 00:00:00'),
(9, 'user6', 'project1', '0000-00-00 00:00:00'),
(10, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(11, 'bot', 'Success: New Project project1 is now online!', '0000-00-00 00:00:00'),
(12, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(13, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(14, 'user5', 'project1', '0000-00-00 00:00:00'),
(15, 'user5', 'project1', '0000-00-00 00:00:00'),
(16, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(17, 'user6', 'project1', '0000-00-00 00:00:00'),
(18, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(19, 'user6', 'First Issue - Work on designing the site, it is too rough and looks mediocre', '0000-00-00 00:00:00'),
(20, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(21, 'user5', 'cool', '0000-00-00 00:00:00'),
(22, 'user5', 'cool', '0000-00-00 00:00:00'),
(23, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(24, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(25, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(26, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(27, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(28, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(29, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(30, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(31, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(32, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(33, 'user6', 'OK Bit display the latest issue of project1', '0000-00-00 00:00:00'),
(34, 'user6', 'OK Bot display the issue of project1', '0000-00-00 00:00:00'),
(35, 'bot', 'Hey there, user6 How can I help you?', '0000-00-00 00:00:00'),
(36, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(37, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(38, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(39, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(40, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(41, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(42, 'bot', 'This Project doesn\'t exist. Want to create a new project with this name: \'OK Bot commit an issue\' ? Then just type \'OK Bot create a new project\'', '0000-00-00 00:00:00'),
(43, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(44, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(45, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(46, 'user6', 'project1', '0000-00-00 00:00:00'),
(47, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(48, 'user6', 'Second Issue', '0000-00-00 00:00:00'),
(49, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(50, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(51, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(52, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(53, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(54, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(55, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(56, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(57, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(58, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(59, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(60, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(61, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(62, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(63, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(64, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(65, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(66, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(67, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(68, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(69, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(70, 'user6', 'OK Bot display the latest issue of project2', '0000-00-00 00:00:00'),
(71, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(72, 'bot', 'This Project doesn\'t exist. Want to create a new project with this name: \'project2\' ? Then just type \'OK Bot create a new project\'', '0000-00-00 00:00:00'),
(73, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(74, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(75, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(76, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(77, 'bot', 'Issue #2\r\nDescription: Second Issue\r\nIssued by: user6\r\nDate & Time: ', '0000-00-00 00:00:00'),
(78, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(79, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(80, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(81, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(82, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(83, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(84, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(85, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(86, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(87, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(88, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(89, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(90, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(91, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(92, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(93, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(94, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(95, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(96, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(97, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(98, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(99, 'user6', 'OK Bot', '0000-00-00 00:00:00'),
(100, 'bot', 'Hey there, user6 How can I help you?', '0000-00-00 00:00:00'),
(101, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(102, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(103, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(104, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(105, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(106, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(107, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(108, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(109, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(110, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(111, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate ', '0000-00-00 00:00:00'),
(112, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(113, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(114, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate And Time: 2017-05-01 14:32:28\n', '0000-00-00 00:00:00'),
(115, 'user6', 'OK Bot display the latest issue of project1', '0000-00-00 00:00:00'),
(116, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(117, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate and Time: 2017-05-01 14:32:28\n', '0000-00-00 00:00:00'),
(118, 'user6', 'OK Bot display the latest commit', '0000-00-00 00:00:00'),
(119, 'bot', 'Hey there, user6 How can I help you?', '0000-00-00 00:00:00'),
(120, 'user6', 'OK Bot display the latest issue', '0000-00-00 00:00:00'),
(121, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(122, 'user6', 'project1', '0000-00-00 00:00:00'),
(123, 'user6', 'OK Bot display the latest issue', '0000-00-00 00:00:00'),
(124, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(125, 'user6', 'project1', '0000-00-00 00:00:00'),
(126, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate and Time: 2017-05-01 14:32:28\n', '0000-00-00 00:00:00'),
(127, 'user2', 'user2 here', '0000-00-00 00:00:00'),
(128, 'user2', 'OK Bot what is the date?', '0000-00-00 00:00:00'),
(129, 'bot', 'Current Date is 5/2/2017', '0000-00-00 00:00:00'),
(130, 'bot', 'Current Date is 5/2/2017', '0000-00-00 00:00:00'),
(131, 'user2', 'OK Bot what is the date?', '0000-00-00 00:00:00'),
(132, 'user2', 'OK Bot display the commit whose id = 2', '0000-00-00 00:00:00'),
(133, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(134, 'user2', 'OK Bot display the issue whose id = 2', '0000-00-00 00:00:00'),
(135, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(136, 'user2', 'OK Bot display the issue whose id = 2', '0000-00-00 00:00:00'),
(137, 'bot', 'Hey there, user2 How can I help you?', '0000-00-00 00:00:00'),
(138, 'user2', 'OK Bot display the commit whose id equals 2', '0000-00-00 00:00:00'),
(139, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(140, 'user2', 'OK Bot display the commit whose id equals 2', '0000-00-00 00:00:00'),
(141, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(142, 'user2', 'OK Bot display the commit whose id equals 2', '0000-00-00 00:00:00'),
(143, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(144, 'user2', 'OK Bot display the commit whose id = 1', '0000-00-00 00:00:00'),
(145, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(146, 'user2', 'project1', '0000-00-00 00:00:00'),
(147, 'user2', 'OK Bot display the commit whose id = 1', '0000-00-00 00:00:00'),
(148, 'bot', '... of which project?', '0000-00-00 00:00:00'),
(149, 'user2', 'project1', '0000-00-00 00:00:00'),
(150, 'bot', 'Issue #1\nDescription: First Issue - Work on designing the site, it is too rough and looks mediocre\nIssued by: user6\nDate and Time: 2017-05-01 13:36:36\n', '0000-00-00 00:00:00'),
(151, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(152, 'bot', 'Hey there, user5 How can I help you?', '0000-00-00 00:00:00'),
(153, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(154, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(155, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(156, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(157, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(158, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(159, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(160, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(161, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(162, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(163, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(164, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(165, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(166, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(167, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(168, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(169, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(170, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(171, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(172, 'bot', 'Name: \'Guardians of the Galaxy Vol. 2\'\nDescription: The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill\'s true parentage.\nReleased Date: 2017-04-24\n\nName: \'Beauty and the Beast\'\nDescription: A live-action adaptation of Disney\'s version of the classic \'Beauty and the Beast\' tale of a cursed prince and a beautiful young woman who helps him break the spell.\nReleased Date: 2017-03-16\n\nName: \'The Fate of the Furious\'\nDescription: When a mysterious woman seduces Dom into the world of crime and a betrayal of those closest to him, the crew face trials that will test them as never before.\nReleased Date: 2017-04-12\n\nName: \'The Boss Baby\'\nDescription: A story about how a new baby\'s arrival impacts a family, told from the point of view of a delightfully unreliable narrator, a wildly imaginative 7 year old named Tim.\nReleased Date: 2017-03-23\n\nName: \'Guardians of the Galaxy\'\nDescription: Light years from Earth, 26 years after being abducted, Peter Quill finds himself the prime target of a manhunt after discovering an orb wanted by Ronan the Accuser.\nReleased Date: 2014-07-30\n\n', '0000-00-00 00:00:00'),
(173, 'user5', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(174, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(175, 'bot', 'Name: \'Guardians of the Galaxy Vol. 2\'\nDescription: The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill\'s true parentage.\nReleased Date: 2017-04-24\n\nName: \'Beauty and the Beast\'\nDescription: A live-action adaptation of Disney\'s version of the classic \'Beauty and the Beast\' tale of a cursed prince and a beautiful young woman who helps him break the spell.\nReleased Date: 2017-03-16\n\nName: \'The Fate of the Furious\'\nDescription: When a mysterious woman seduces Dom into the world of crime and a betrayal of those closest to him, the crew face trials that will test them as never before.\nReleased Date: 2017-04-12\n\nName: \'The Boss Baby\'\nDescription: A story about how a new baby\'s arrival impacts a family, told from the point of view of a delightfully unreliable narrator, a wildly imaginative 7 year old named Tim.\nReleased Date: 2017-03-23\n\nName: \'Guardians of the Galaxy\'\nDescription: Light years from Earth, 26 years after being abducted, Peter Quill finds himself the prime target of a manhunt after discovering an orb wanted by Ronan the Accuser.\nReleased Date: 2014-07-30\n\n', '0000-00-00 00:00:00'),
(176, 'user5', 'OK Bot display current popular movies from the year 2016', '0000-00-00 00:00:00'),
(177, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(178, 'user5', 'OK Bot display current popular movies from the year 2016', '0000-00-00 00:00:00'),
(179, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(180, 'user5', 'OK Bot display current popular movies from the year 2016', '0000-00-00 00:00:00'),
(181, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(182, 'user5', 'OK Bot display the current popular movies from the year 2016', '0000-00-00 00:00:00'),
(183, 'bot', 'Hey there, user5 How can I help you?', '0000-00-00 00:00:00'),
(184, 'user5', 'OK Bot display current popular movies from the year 2016', '0000-00-00 00:00:00'),
(185, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(186, 'bot', 'Name: \'Sing\'\nOverview: A koala named Buster recruits his best friend to help him drum up business for his theater by hosting a singing competition.\nReleased Date: 2016-11-23\n\nName: \'Captain America: Civil War\'\nOverview: Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.\nReleased Date: 2016-04-27\n\nName: \'Rogue One: A Star Wars Story\'\nOverview: A rogue band of resistance fighters unite for a mission to steal the Death Star plans and bring a new hope to the galaxy.\nReleased Date: 2016-12-14\n\nName: \'John Wick\'\nOverview: Ex-hitman John Wick comes out of retirement to track down the gangsters that took everything from him.\nReleased Date: 2014-10-22\n\nName: \'Fantastic Beasts and Where to Find Them\'\nOverview: In 1926, Newt Scamander arrives at the Magical Congress of the United States of America with a magically expanded briefcase, which houses a number of dangerous creatures and their habitats. When the creatures escape from the briefcase, it sends the American wizarding authorities after Newt, and threatens to strain even further the state of magical and non-magical relations.\nReleased Date: 2016-11-16\n\n', '0000-00-00 00:00:00'),
(187, 'user5', 'OK Bot display the current popular tv shows', '0000-00-00 00:00:00'),
(188, 'bot', 'Hey there, user5 How can I help you?', '0000-00-00 00:00:00'),
(189, 'user5', 'OK Bot display the current popular tv shows', '0000-00-00 00:00:00'),
(190, 'bot', 'Hey there, user5 How can I help you?', '0000-00-00 00:00:00'),
(191, 'user5', 'OK Bot display the current popular tv shows', '0000-00-00 00:00:00'),
(192, 'bot', 'Hey there, user5 How can I help you?', '0000-00-00 00:00:00'),
(193, 'user5', 'OK Bot display current popular tv shows', '0000-00-00 00:00:00'),
(194, 'bot', 'Ohok, fetching TV Shows details......', '0000-00-00 00:00:00'),
(195, 'bot', 'Name: \'undefined\'\nOverview: The Doctor looks and seems human. He\'s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living â€“ more of a hobby actually, and he\'s very, very good at it. He\'s saved us from alien menaces and evil from before time began â€“ but just who is he?\nReleased Date: undefined\n\nName: \'undefined\'\nOverview: Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.\nReleased Date: undefined\n\nName: \'undefined\'\nOverview: The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon\'s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny\'s social skills and common sense.\nReleased Date: undefined\n\nName: \'undefined\'\nOverview: After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \"meta-human\" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.\nReleased Date: undefined\n\nName: \'undefined\'\nOverview: Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.\nReleased Date: undefined\n\n', '0000-00-00 00:00:00'),
(196, 'user5', 'OK Bot display the current popular tv shows', '0000-00-00 00:00:00'),
(197, 'bot', 'Ohok, fetching TV Shows details......', '0000-00-00 00:00:00'),
(198, 'bot', 'Name: \'Doctor Who\'\nOverview: The Doctor looks and seems human. He\'s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living â€“ more of a hobby actually, and he\'s very, very good at it. He\'s saved us from alien menaces and evil from before time began â€“ but just who is he?\nReleased Date: 2005-03-26\n\nName: \'The Walking Dead\'\nOverview: Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.\nReleased Date: 2010-10-31\n\nName: \'The Big Bang Theory\'\nOverview: The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon\'s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny\'s social skills and common sense.\nReleased Date: 2007-09-24\n\nName: \'The Flash\'\nOverview: After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \"meta-human\" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.\nReleased Date: 2014-10-07\n\nName: \'Game of Thrones\'\nOverview: Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.\nReleased Date: 2011-04-17\n\n', '0000-00-00 00:00:00'),
(199, 'user4', 'OK Bot show me stock related info about GE', '0000-00-00 00:00:00'),
(200, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(201, 'user4', 'OK Bot show me stock related info about GE', '0000-00-00 00:00:00'),
(202, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(203, 'bot', 'Oops! Not able to find this company', '0000-00-00 00:00:00'),
(204, 'user4', 'OK Bot show me stock related info about GE', '0000-00-00 00:00:00'),
(205, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(206, 'user4', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(207, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team5project1`
--

CREATE TABLE `team5project1` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team5project1`
--

INSERT INTO `team5project1` (`id`, `issuedescription`, `createdby`, `datetime`) VALUES
(1, 'First Issue - Work on designing the site, it is too rough and looks mediocre', 'user6', '2017-05-01 13:36:36'),
(2, 'Second Issue', 'user6', '2017-05-01 14:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `team5_members`
--

CREATE TABLE `team5_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team6`
--

CREATE TABLE `team6` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team6`
--

INSERT INTO `team6` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user6', 'Hey', '0000-00-00 00:00:00'),
(2, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(3, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(4, 'bot', 'This Project doesn\'t exist.', '0000-00-00 00:00:00'),
(5, 'user6', 'project1', '0000-00-00 00:00:00'),
(6, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(7, 'user6', 'OK Bot create a project', '0000-00-00 00:00:00'),
(8, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(9, 'user6', 'project101', '0000-00-00 00:00:00'),
(10, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(11, 'bot', 'Success: New Project project101 is now online!', '0000-00-00 00:00:00'),
(12, 'user6', 'commit an issue', '0000-00-00 00:00:00'),
(13, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(14, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(15, 'user6', 'project101', '0000-00-00 00:00:00'),
(16, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(17, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(18, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(19, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(20, 'user6', 'project101', '0000-00-00 00:00:00'),
(21, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(22, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(23, 'user6', 'trial issue', '0000-00-00 00:00:00'),
(24, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(25, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(26, 'user6', 'project101', '0000-00-00 00:00:00'),
(27, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(28, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(29, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(30, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(31, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(32, 'user6', 'project101', '0000-00-00 00:00:00'),
(33, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(34, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(35, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(36, 'user6', 'project101', '0000-00-00 00:00:00'),
(37, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(38, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(39, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(40, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(41, 'user6', 'project101', '0000-00-00 00:00:00'),
(42, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(43, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(44, 'user6', 'first trial', '0000-00-00 00:00:00'),
(45, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(46, 'bot', 'Failure: Not able to commit the issue to project101', '0000-00-00 00:00:00'),
(47, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(48, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(49, 'user6', 'project101', '0000-00-00 00:00:00'),
(50, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(51, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(52, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(53, 'user6', 'first', '0000-00-00 00:00:00'),
(54, 'bot', 'Failure: Not able to commit the issue to project101', '0000-00-00 00:00:00'),
(55, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(56, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(57, 'user6', 'project101', '0000-00-00 00:00:00'),
(58, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(59, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(60, 'user6', 'first', '0000-00-00 00:00:00'),
(61, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(62, 'bot', 'Success: Issue commited to project101', '0000-00-00 00:00:00'),
(63, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(64, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(65, 'user6', 'project101', '0000-00-00 00:00:00'),
(66, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(67, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(68, 'bot', '....', '0000-00-00 00:00:00'),
(69, 'user6', 'second trial', '0000-00-00 00:00:00'),
(70, 'bot', 'Success: Issue commited to project101', '0000-00-00 00:00:00'),
(71, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(72, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(73, 'user6', 'project101', '0000-00-00 00:00:00'),
(74, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(75, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(76, 'bot', '....', '0000-00-00 00:00:00'),
(77, 'user6', 'third issue', '0000-00-00 00:00:00'),
(78, 'bot', 'Success: Issue commited to project101', '0000-00-00 00:00:00'),
(79, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(80, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(81, 'user6', 'project101', '0000-00-00 00:00:00'),
(82, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(83, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(84, 'user6', 'fourth issue', '0000-00-00 00:00:00'),
(85, 'bot', 'Success: Issue commited to project101', '0000-00-00 00:00:00'),
(86, 'user6', 'OK Bot', '0000-00-00 00:00:00'),
(87, 'bot', 'Hey there, user6 How can I help you?', '0000-00-00 00:00:00'),
(88, 'user6', 'OK Bot whats the time', '0000-00-00 00:00:00'),
(89, 'bot', 'Current Time is 3:19:55 PM', '0000-00-00 00:00:00'),
(90, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(91, 'user6', 'OK Bot insert an issue', '0000-00-00 00:00:00'),
(92, 'user6', 'project101', '0000-00-00 00:00:00'),
(93, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(94, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(95, 'user6', 'revert issue definition', '0000-00-00 00:00:00'),
(96, 'bot', 'No Problem, issue definition reverted', '0000-00-00 00:00:00'),
(97, 'user6', 'OK Bot', '0000-00-00 00:00:00'),
(98, 'bot', 'Hey there, user6 How can I help you?', '0000-00-00 00:00:00'),
(99, 'user6', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(100, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(101, 'user6', 'revert issue definition', '0000-00-00 00:00:00'),
(102, 'bot', 'No Problem, issue definition reverted', '0000-00-00 00:00:00'),
(103, 'user6', 'OK Bot add an issue', '0000-00-00 00:00:00'),
(104, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(105, 'user6', 'project6', '0000-00-00 00:00:00'),
(106, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(107, 'bot', 'This Project doesn\'t exist. Want to create a new project with this name: \'project6\' ? Then just type \'OK Bot create a new project\'', '0000-00-00 00:00:00'),
(108, 'user6', 'OK Bot create a new project', '0000-00-00 00:00:00'),
(109, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(110, 'user6', 'revert project definition', '0000-00-00 00:00:00'),
(111, 'bot', 'No Problem, project definition reverted', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team6project101`
--

CREATE TABLE `team6project101` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team6project101`
--

INSERT INTO `team6project101` (`id`, `issuedescription`, `createdby`, `datetime`) VALUES
(1, 'first', 'user6', '2017-04-30 15:04:26'),
(2, 'second trial', 'user6', '2017-04-30 15:10:17'),
(3, 'third issue', 'user6', '2017-04-30 15:11:38'),
(4, 'fourth issue', 'user6', '2017-04-30 15:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `team6_members`
--

CREATE TABLE `team6_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team7`
--

CREATE TABLE `team7` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team7`
--

INSERT INTO `team7` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user7', 'OK Bot', '0000-00-00 00:00:00'),
(2, 'bot', 'Hey there, user7 How can I help you? You may have typed the wrong command. Follow the manual for help.', '0000-00-00 00:00:00'),
(3, 'user7', 'OK Bot show me stock related info about AAPL', '0000-00-00 00:00:00'),
(4, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(5, 'bot', 'Oops! Not able to find this company', '0000-00-00 00:00:00'),
(6, 'user7', 'OK Bot show me stock related info about AAPL', '0000-00-00 00:00:00'),
(7, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(8, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(9, 'user7', 'OK Bot show me stock related info about AAPL', '0000-00-00 00:00:00'),
(10, 'user7', 'OK Bot show me stock related info about AAPL', '0000-00-00 00:00:00'),
(11, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(12, 'user7', 'OK Bot show me stock related info about AAPL', '0000-00-00 00:00:00'),
(13, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(14, 'user7', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(15, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(16, 'user7', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(17, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(18, 'user7', 'OK Bot show me stock related info about GE', '0000-00-00 00:00:00'),
(19, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(20, 'user7', 'OK Bot show me stock related info about SONY', '0000-00-00 00:00:00'),
(21, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(22, 'bot', 'Oops! Not able to find this company', '0000-00-00 00:00:00'),
(23, 'user7', 'OK Bot show me stock related info about TYO', '0000-00-00 00:00:00'),
(24, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(25, 'bot', 'Oops! Not able to find this company', '0000-00-00 00:00:00'),
(26, 'user7', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(27, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(28, 'user7', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(29, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(30, 'user7', 'OK Bot show me stock related info GOOGL', '0000-00-00 00:00:00'),
(31, 'bot', 'Hey there, user7 How can I help you? You may have typed the wrong command. Follow the manual for help.', '0000-00-00 00:00:00'),
(32, 'user7', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(33, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(34, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(35, 'user7', 'OK Bot show me stock related info about GOOGL', '0000-00-00 00:00:00'),
(36, 'bot', '\nShowing Info about: GOOGL\nLegal Name: Alphabet Inc.\nSector: Technology\nIndustry Group: Internet Information Providers\nAddress: 1600 AMPHITHEATRE PARKWAY, MOUNTAIN VIEW, CA 94043\nPhone Number: 650-253-0000\nCompany URL: abc.xyz\nStock Price: 947.85', '0000-00-00 00:00:00'),
(37, 'bot', '\nShowing Info about: GOOGL\nLegal Name: Alphabet Inc.\nSector: Technology\nIndustry Group: Internet Information Providers\nAddress: 1600 AMPHITHEATRE PARKWAY, MOUNTAIN VIEW, CA 94043\nPhone Number: 650-253-0000\nCompany URL: abc.xyz\nStock Price: 947.85', '0000-00-00 00:00:00'),
(38, 'user7', 'OK Bot show me stock related info about AAPL', '0000-00-00 00:00:00'),
(39, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(40, 'bot', '\nShowing Info about: AAPL\nLegal Name: APPLE INC\nSector: Consumer Goods\nIndustry Group: Electronic Equipment\nAddress: ONE INFINITE LOOP, CUPERTINO, CA 95014\nPhone Number: (408) 996-1010\nCompany URL: www.apple.com\nStock Price: 152.06', '0000-00-00 00:00:00'),
(41, 'user7', 'OK Bot show me stock related info about GE', '0000-00-00 00:00:00'),
(42, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(43, 'bot', '\nShowing Info about: GE\nLegal Name: GENERAL ELECTRIC CO\nSector: Industrial Goods\nIndustry Group: Diversified Machinery\nAddress: 41 FARNSWORTH STREET, BOSTON, MA 02210\nPhone Number: 617-443-3000\nCompany URL: www.ge.com\nStock Price: 27.47', '0000-00-00 00:00:00'),
(44, 'user7', 'OK Bot define a project ', '0000-00-00 00:00:00'),
(45, 'bot', 'Alright, what\'s the name of the project?', '0000-00-00 00:00:00'),
(46, 'user7', 'project1', '0000-00-00 00:00:00'),
(47, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(48, 'bot', 'Success: New Project project1 is now online!', '0000-00-00 00:00:00'),
(49, 'user7', 'OK Bot commit an issue', '0000-00-00 00:00:00'),
(50, 'bot', '... To which project?', '0000-00-00 00:00:00'),
(51, 'user7', 'project1', '0000-00-00 00:00:00'),
(52, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(53, 'bot', 'Okay, Now type down the text for new Issue.', '0000-00-00 00:00:00'),
(54, 'user7', 'first issue', '0000-00-00 00:00:00'),
(55, 'bot', 'Success: Issue commited to project1', '0000-00-00 00:00:00'),
(56, 'user7', 'OK Bot display the latest commit of project1', '0000-00-00 00:00:00'),
(57, 'bot', 'Ohok, working on it....', '0000-00-00 00:00:00'),
(58, 'bot', 'Issue #2\nDescription: first issue\nIssued by: user7\nDate and Time: 2017-05-19 00:16:52\n', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team7project1`
--

CREATE TABLE `team7project1` (
  `id` int(11) NOT NULL,
  `issuedescription` text NOT NULL,
  `createdby` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team7project1`
--

INSERT INTO `team7project1` (`id`, `issuedescription`, `createdby`, `datetime`) VALUES
(1, 'no issues found', 'admin', '2017-05-19 00:15:19'),
(2, 'first issue', 'user7', '2017-05-19 00:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `team7_members`
--

CREATE TABLE `team7_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team8`
--

CREATE TABLE `team8` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team8`
--

INSERT INTO `team8` (`id`, `sender`, `message`, `datetime`) VALUES
(1, 'user1', 'OK Bot', '0000-00-00 00:00:00'),
(2, 'bot', 'Hey there, user1 How can I help you?', '0000-00-00 00:00:00'),
(3, 'user1', 'OK Bot sjas', '0000-00-00 00:00:00'),
(4, 'bot', 'Sorry, I don\'t understand.', '0000-00-00 00:00:00'),
(5, 'user1', 'OK Bot show me some news', '0000-00-00 00:00:00'),
(6, 'bot', 'Sorry, I don\'t understand.', '0000-00-00 00:00:00'),
(7, 'user1', 'OK Bot show me some news', '0000-00-00 00:00:00'),
(8, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(9, 'user1', 'OK Bot show me some news', '0000-00-00 00:00:00'),
(10, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(11, 'bot', 'Here you go\nTitle: \'BA boss \'won\'t resign\' over flight chaos\'\nDescription: Chief executive Alex Cruz says flight disruption at Heathrow and Gatwick had nothing to do with cost cutting.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40083778\nPublished on: T14:54:54 00:00\n\nTitle: \'Hamerton Zoo evacuated after \'serious incident\'\'\nDescription: A zoo is evacuated following a \"serious incident\" but no animals have escaped, police confirm.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-england-cambridgeshire-40084713\nPublished on: T16:12:50 00:00\n\nTitle: \'Tiger Woods held on drink-driving charge\'\nDescription: Golf star Tiger Woods is arrested on a drink-driving charge in Florida, police say.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/world-us-canada-40087317\nPublished on: T16:23:45 00:00\n\nTitle: \'Manchester attack: CCTV appears to show bomber shopping hours before explosion\'\nDescription: Footage emerges appearing to show Salman Abedi in a Manchester shop a day before the bombing.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/av/uk-40082292/manchester-attack-cctv-appears-to-show-bomber-shopping-hours-before-explosion\nPublished on: T15:00:17 00:00\n\nTitle: \'Manchester attacks: Police issue new bomber photo\'\nDescription: Officers want to hear from anyone who might have seen Salman Abedi carrying the blue suitcase.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40086352\nPublished on: T16:41:10 00:00\n\nTitle: \'Former Blue Peter presenter John Noakes dies at 83\'\nDescription: The TV show\'s longest-serving presenter was a favourite with viewers in the 1960s and 70s.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/entertainment-arts-40083025\nPublished on: T12:42:47 00:00\n', '0000-00-00 00:00:00'),
(12, 'user1', 'OK Bot show me some news', '0000-00-00 00:00:00'),
(13, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(14, 'bot', 'Here you go\nTitle: \'BA boss \'won\'t resign\' over flight chaos\'\nDescription: Chief executive Alex Cruz says flight disruption at Heathrow and Gatwick had nothing to do with cost cutting.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40083778\nPublished on: 2017-05-29\n\nTitle: \'Hamerton Zoo evacuated after \'serious incident\'\'\nDescription: A zoo is evacuated following a \"serious incident\" but no animals have escaped, police confirm.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-england-cambridgeshire-40084713\nPublished on: 2017-05-29\n\nTitle: \'Tiger Woods held on drink-driving charge\'\nDescription: Golf star Tiger Woods is arrested on a drink-driving charge in Florida, police say.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/world-us-canada-40087317\nPublished on: 2017-05-29\n\nTitle: \'Manchester attack: CCTV appears to show bomber shopping hours before explosion\'\nDescription: Footage emerges appearing to show Salman Abedi in a Manchester shop a day before the bombing.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/av/uk-40082292/manchester-attack-cctv-appears-to-show-bomber-shopping-hours-before-explosion\nPublished on: 2017-05-29\n\nTitle: \'Manchester attacks: Police issue new bomber photo\'\nDescription: Officers want to hear from anyone who might have seen Salman Abedi carrying the blue suitcase.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40086352\nPublished on: 2017-05-29\n\nTitle: \'Former Blue Peter presenter John Noakes dies at 83\'\nDescription: The TV show\'s longest-serving presenter was a favourite with viewers in the 1960s and 70s.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/entertainment-arts-40083025\nPublished on: 2017-05-29\n', '0000-00-00 00:00:00'),
(15, 'user1', 'OK Bot show me some technology news', '0000-00-00 00:00:00'),
(16, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(17, 'user1', 'OK Bot show me some news', '0000-00-00 00:00:00'),
(18, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(19, 'user1', 'OK Bot show me some technology news', '0000-00-00 00:00:00'),
(20, 'bot', 'Ohok, Working on it......', '0000-00-00 00:00:00'),
(21, 'bot', 'Here you go\nTitle: \'The Eve V feels like a serious Surface Pro competitor\'\nDescription: For some people, the Eve V could surpass Microsoft\'s Surface Pro.\nAuthor: Chris Velazco\nMore info: https://www.engadget.com/2017/06/02/eve-v-surface-pro-challenger/\nPublished on: 2017-06-02\n\nTitle: \'India will be the first to power its ports with green energy\'\nDescription: The Indian government hopes to generate 200 megawatts via solar and wind sources.\nAuthor: Matt Brian\nMore info: https://www.engadget.com/2017/06/02/india-wind-solar-renewable-ports/\nPublished on: 2017-06-02\n\nTitle: \'\'Rime\' goes DRM-free after hackers crack the game in days\'\nDescription: Hackers love a challenge, and the makers of \'Rime\' are making good on their promise earlier this week.\nAuthor: Mat Smith\nMore info: https://www.engadget.com/2017/06/02/rime-drm-hackers-crack/\nPublished on: 2017-06-02\n\nTitle: \'Netflix cancels \'Sense8\' after two seasons\'\nDescription: \'Sense8\' joins \'The Get Down,\' \'Hemlock Grove,\' \'Marco Polo,\' and more on the list of canceled Netflix shows.\nAuthor: Richard Lawler\nMore info: https://www.engadget.com/2017/06/01/netflix-cancels-sense8/\nPublished on: 2017-06-02\n\nTitle: \'61 US cities and three states vow to uphold Paris climate agreement\'\nDescription: 61 mayors and 3 state governors vow to support the Paris Climate Agreement anyway.\nAuthor: David Lumb\nMore info: https://www.engadget.com/2017/06/01/61-us-cities-and-three-states-vow-to-uphold-paris-climate-agreem/\nPublished on: 2017-06-01\n', '0000-00-00 00:00:00'),
(22, 'user1', 'OK Bot display popular movies', '0000-00-00 00:00:00'),
(23, 'bot', 'Hey there, I\'m a bot.', '0000-00-00 00:00:00'),
(24, 'user1', 'OK Bot display current popular movies', '0000-00-00 00:00:00'),
(25, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(26, 'user1', 'OK Bot show me upcoming movies', '0000-00-00 00:00:00'),
(27, 'bot', 'Ohok, fetching movie details......', '0000-00-00 00:00:00'),
(28, 'bot', 'Here you go\nName: \'Wonder Woman\'\nOverview: An Amazon princess comes to the world of Man to become the greatest of the female superheroes.\nReleased Date: 2017-05-30\n\nName: \'Alien: Covenant\'\nOverview: Bound for a remote planet on the far side of the galaxy, the crew of the colony ship Covenant discovers what they think is an uncharted paradise, but is actually a dark, dangerous world â€” whose sole inhabitant is the â€œsyntheticâ€ David, survivor of the doomed Prometheus expedition.\nReleased Date: 2017-05-09\n\nName: \'Baywatch\'\nOverview: Devoted lifeguard Mitch Buchannon butts heads with a brash new recruit. Together, they uncover a local criminal plot that threatens the future of the Bay.\nReleased Date: 2017-05-12\n\nName: \'The Mummy\'\nOverview: Though safely entombed in a crypt deep beneath the unforgiving desert, an ancient queen whose destiny was unjustly taken from her is awakened in our current day, bringing with her malevolence grown over millennia, and terrors that defy human comprehension.\nReleased Date: 2017-06-08\n\nName: \'Transformers: The Last Knight\'\nOverview: In the absence of Optimus Prime, a battle for survival has commenced between the human race and the Transformers. Cade Yeager forms an alliance with Bumblebee, an English lord, and an Oxford professor to learn why the Transformers keep coming back to Earth.\nReleased Date: 2017-06-21\n', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team8_members`
--

CREATE TABLE `team8_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team10`
--

CREATE TABLE `team10` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team10_members`
--

CREATE TABLE `team10_members` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `datetime` datetime NOT NULL,
  `lastseen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teamdetails`
--

CREATE TABLE `teamdetails` (
  `id` int(11) NOT NULL,
  `teamadmin` text NOT NULL,
  `teamname` text NOT NULL,
  `teampassword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamdetails`
--

INSERT INTO `teamdetails` (`id`, `teamadmin`, `teamname`, `teampassword`) VALUES
(5, 'user5', 'team1', 'bb251e9c6cd730254fd9247c425f29bc'),
(6, 'user5', 'team2', '803dcddd054c6ea7dcaff9131fedad00'),
(7, 'user5', 'team3', '294b319c79e3069a92434871571c9ae8'),
(8, 'user5', 'team5', '7a548f160996fafe2f51969211f2e0c7'),
(9, 'user2', 'team4', '1de9a70660fb54b17535e830c8614358'),
(10, 'user6', 'team6', '271170ec2bed4c154a45b775c8f25c23'),
(11, 'user7', 'team7', '7456d7c7b4aa2fb72474d7786489fba1'),
(12, 'user1', 'team8', '32de5be683a5f413ee47f4868cdd40ac'),
(13, 'ganesh', 'team10', '4bb0f934becd598094df5fb2e01f261d');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'pranav', 'pranav@pranav.com', '28150b466b7cf0ca24f483023f16a41d'),
(2, 'user1', 'user1@user1.com', '703d464fe2c3221745b87785d4a8ac5a'),
(3, 'user2', 'user2@user2.com', '02cb28e5772c57b073c6ed531072b544'),
(4, 'user3', 'user3@user3.com', '131537b807ca3664ddc5e6b0fae2d5f9'),
(5, 'user4', 'user4@user4.com', '7edb860a8c4181757a1e2db4fbc52a3f'),
(6, 'user5', 'user5@user5.com', '0c1009e92128844c97a43f69f3be12d6'),
(7, 'user6', 'user6@user6.com', 'f20a7f13b868541e32ec92105c42ba25'),
(8, 'user7', 'user7@user7.com', 'c42118712e96bc41c105d69495b63de2'),
(9, 'ganesh', 'ganesh@ganesh.com', 'b08e55931c8191ca869e9bda2d933b06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team1`
--
ALTER TABLE `team1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team1project1`
--
ALTER TABLE `team1project1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team1project2`
--
ALTER TABLE `team1project2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team1_members`
--
ALTER TABLE `team1_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team2`
--
ALTER TABLE `team2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team2_members`
--
ALTER TABLE `team2_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team3`
--
ALTER TABLE `team3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team3_members`
--
ALTER TABLE `team3_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team4`
--
ALTER TABLE `team4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team4project1`
--
ALTER TABLE `team4project1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team4project2`
--
ALTER TABLE `team4project2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team4_members`
--
ALTER TABLE `team4_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team5`
--
ALTER TABLE `team5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team5project1`
--
ALTER TABLE `team5project1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team5_members`
--
ALTER TABLE `team5_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team6`
--
ALTER TABLE `team6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team6project101`
--
ALTER TABLE `team6project101`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team6_members`
--
ALTER TABLE `team6_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team7`
--
ALTER TABLE `team7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team7project1`
--
ALTER TABLE `team7project1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team7_members`
--
ALTER TABLE `team7_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team8`
--
ALTER TABLE `team8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team8_members`
--
ALTER TABLE `team8_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team10`
--
ALTER TABLE `team10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team10_members`
--
ALTER TABLE `team10_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `team1`
--
ALTER TABLE `team1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `team1project1`
--
ALTER TABLE `team1project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `team1project2`
--
ALTER TABLE `team1project2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team1_members`
--
ALTER TABLE `team1_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team2`
--
ALTER TABLE `team2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `team2_members`
--
ALTER TABLE `team2_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team3`
--
ALTER TABLE `team3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `team3_members`
--
ALTER TABLE `team3_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team4`
--
ALTER TABLE `team4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `team4project1`
--
ALTER TABLE `team4project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team4project2`
--
ALTER TABLE `team4project2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team4_members`
--
ALTER TABLE `team4_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team5`
--
ALTER TABLE `team5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `team5project1`
--
ALTER TABLE `team5project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team5_members`
--
ALTER TABLE `team5_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team6`
--
ALTER TABLE `team6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `team6project101`
--
ALTER TABLE `team6project101`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `team6_members`
--
ALTER TABLE `team6_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team7`
--
ALTER TABLE `team7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `team7project1`
--
ALTER TABLE `team7project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team7_members`
--
ALTER TABLE `team7_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team8`
--
ALTER TABLE `team8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `team8_members`
--
ALTER TABLE `team8_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team10`
--
ALTER TABLE `team10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team10_members`
--
ALTER TABLE `team10_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
