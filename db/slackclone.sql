-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 08:06 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slackclone`
--
CREATE DATABASE IF NOT EXISTS `slackclone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `slackclone`;

-- --------------------------------------------------------

--
-- Table structure for table `team1`
--

CREATE TABLE `team1` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team1`
--

INSERT INTO `team1` (`id`, `sender`, `message`) VALUES
(1, 'user1', 'hey'),
(2, 'user1', 'heyo'),
(3, 'user1', 'hey, Pranav'),
(4, 'user1', 'hey, Pranav wassup?'),
(5, 'user1', 'just another trial'),
(6, 'user4', 'message from another user'),
(7, 'user1', 'bot building is under progress now'),
(8, 'user1', 'Hey Bot what''s the time'),
(9, 'user4', 'now our bot can reply'),
(10, 'user4', 'Hey Bot, Whatsup?'),
(11, 'bot', 'Hey there, I''m a bot.'),
(12, 'user4', 'nice to see you reply '),
(13, 'user4', 'Hey Bot'),
(14, 'bot', 'Hey there, I''m a bot.'),
(15, 'user4', 'jdnfsjkdfjdskfb Hey Bot'),
(16, 'bot', 'Hey there, I''m a bot.'),
(17, 'user4', 'the bot now replies to Hey Bot'),
(18, 'bot', 'Hey there, I''m a bot.'),
(19, 'user4', 'i think the we should delay the ajax calls as it puts load on the app'),
(20, 'user4', 'cancel the*'),
(21, 'user2', 'Hey Bot'),
(22, 'bot', 'Hey there, I''m a bot.'),
(23, 'user2', 'Hey Bot'),
(24, 'bot', 'Hey there, I''m a bot.'),
(25, 'user4', 'Hey Bot'),
(26, 'user4', 'OK Bot'),
(27, 'bot', 'Hey there, I''m a bot.'),
(28, 'user4', 'OK Bot define project'),
(29, 'bot', 'Hey there, I''m a bot.'),
(30, 'user4', 'OK Bot define a project'),
(31, 'bot', 'Alright, what''s the name of the project?'),
(32, 'user4', 'project1'),
(33, 'bot', 'Ohok, working on it....'),
(34, 'bot', 'Success: New Project project1 is now online!'),
(35, 'user4', 'OK Bot define a new project'),
(36, 'bot', 'Alright, what''s the name of the project?'),
(37, 'user4', 'trial'),
(38, 'bot', 'Ohok, working on it....'),
(39, 'bot', 'Failure: Not able to define the Project trial'),
(40, 'user4', 'OK Bot define a new project'),
(41, 'bot', 'Alright, what''s the name of the project?'),
(42, 'user4', 'Project1'),
(43, 'bot', 'Ohok, working on it....'),
(44, 'bot', 'Success: New Project Project1 is now online!'),
(45, 'bot', 'Alright, what''s the name of the project?'),
(46, 'user4', 'OK Bot define a new project'),
(47, 'user4', 'hello'),
(48, 'bot', 'Ohok, working on it....'),
(49, 'bot', 'Success: New Project hello is now online!'),
(50, 'user4', 'OK Bot define a project'),
(51, 'bot', 'Alright, what''s the name of the project?'),
(52, 'user4', 'project2'),
(53, 'bot', 'Ohok, working on it....'),
(54, 'bot', 'Success: New Project project2 is now online!'),
(55, 'user4', 'OK Bot define project a'),
(56, 'bot', 'Hey there, I''m a bot.'),
(57, 'user4', 'OK Bot'),
(58, 'bot', 'Hey there, I''m a bot.'),
(59, 'user4', 'OK Bot'),
(60, 'bot', 'Hey there, user4 How can I help you?'),
(61, 'user4', 'This Bot is awesome'),
(62, 'user4', 'OK Bot define a new project'),
(63, 'bot', 'Alright, what''s the name of the project?'),
(64, 'user4', 'project2'),
(65, 'bot', 'Ohok, working on it....'),
(66, 'bot', 'Success: New Project project2 is now online!'),
(67, 'user4', 'OK Bot define a new project'),
(68, 'bot', 'Alright, what''s the name of the project?'),
(69, 'user4', 'project2'),
(70, 'bot', 'Ohok, working on it....'),
(71, 'user4', 'OK Bot define a new project'),
(72, 'bot', 'Alright, what''s the name of the project?'),
(73, 'user4', 'project1'),
(74, 'bot', 'Ohok, working on it....'),
(75, 'user4', 'OK Bot define a new project'),
(76, 'bot', 'Alright, what''s the name of the project?'),
(77, 'user4', 'project1'),
(78, 'bot', 'Ohok, working on it....'),
(79, 'bot', 'This Project already exists.'),
(80, 'user4', 'Alright'),
(81, 'user4', 'Alright');

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
-- Table structure for table `team2`
--

CREATE TABLE `team2` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team2`
--

INSERT INTO `team2` (`id`, `sender`, `message`) VALUES
(1, 'user4', 'a new table for team2'),
(2, 'user4', 'hey a new message from user2'),
(3, 'user4', 'Hey Bot welcome to Team 2'),
(4, 'bot', 'Hey there, I''m a bot.');

-- --------------------------------------------------------

--
-- Table structure for table `team3`
--

CREATE TABLE `team3` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team3`
--

INSERT INTO `team3` (`id`, `sender`, `message`) VALUES
(1, 'user4', 'a new table for team3'),
(2, 'user4', 'Hey Bot'),
(3, 'user4', 'Hey Bot'),
(4, 'bot', 'Hey there, I''m a bot.'),
(5, 'user4', 'Hey Bot whats the time'),
(6, 'bot', 'Current Time is 12:12:38 PM'),
(7, 'user4', 'Hey Bot What''s the time?'),
(8, 'bot', 'Current Time is 12:13:27 PM'),
(9, 'user4', 'yeah Hey Bot'),
(10, 'bot', 'Current Time is 12:13:27 PM'),
(11, 'user4', 'Hey Bot'),
(12, 'bot', 'Hey there, I''m a bot.'),
(13, 'bot', 'Current Time is 12:15:39 PM'),
(14, 'user4', 'Hey Bot what''s the time?'),
(15, 'user4', 'Hey Bot what''s the time?'),
(16, 'bot', 'Current Time is 12:15:55 PM'),
(17, 'user4', 'Hey Bot'),
(18, 'bot', 'Current Time is 12:15:55 PM'),
(19, 'user4', 'Hey Bot what''s the time'),
(20, 'bot', 'Current Time is 12:17:02 PM'),
(21, 'user4', 'Hey Bot'),
(22, 'bot', 'Hey there, I''m a bot.'),
(23, 'user2', 'Hey There'),
(24, 'user2', 'Hey Bot'),
(25, 'bot', 'Hey there, I''m a bot.'),
(26, 'user2', 'Hey Bot'),
(27, 'bot', 'Hey there, I''m a bot.'),
(28, 'user2', 'Hey Bot'),
(29, 'bot', 'Hey there, I''m a bot.'),
(30, 'user2', 'Hey Bot this is another trial'),
(31, 'bot', 'Hey there, I''m a bot.'),
(32, 'user2', 'Hey Bot create a new project'),
(33, 'bot', 'Alright, what''s the name of the project?'),
(34, 'user2', 'project1'),
(35, 'user2', 'Hey Bot project1'),
(36, 'bot', 'undefined'),
(37, 'user2', 'Hey Bot revert project definition'),
(38, 'bot', 'Hey there, I''m a bot.'),
(39, 'user2', 'Hey Bot create a new project'),
(40, 'bot', 'Alright, what''s the name of the project?'),
(41, 'user2', 'Hey Bot project1'),
(42, 'bot', 'undefined'),
(43, 'user2', 'Hey Bot project1'),
(44, 'bot', 'Hey there, I''m a bot.'),
(45, 'user2', 'Hey Bot define a new project'),
(46, 'bot', 'Alright, what''s the name of the project?'),
(47, 'user2', 'Hey Bot define a new project'),
(48, 'bot', 'Alright, what''s the name of the project?'),
(49, 'user2', 'project1'),
(50, 'bot', 'undefined'),
(51, 'user2', 'okay'),
(52, 'user2', 'Hey Bot define a new project'),
(53, 'bot', 'Alright, what''s the name of the project?'),
(54, 'user2', 'project3'),
(55, 'bot', 'undefined'),
(56, 'user2', 'Hey Bot define a new project'),
(57, 'bot', 'Alright, what''s the name of the project?'),
(58, 'user2', 'project3'),
(59, 'bot', 'undefined'),
(60, 'user2', 'Hey Bot'),
(61, 'bot', 'Hey there, I''m a bot.'),
(62, 'user2', 'Hey Bot define a new project'),
(63, 'bot', 'Alright, what''s the name of the project?'),
(64, 'user2', 'project1'),
(65, 'bot', 'undefined'),
(66, 'user2', 'Hey Bot define a new project'),
(67, 'bot', 'Alright, what''s the name of the project?'),
(68, 'user2', 'project1'),
(69, 'bot', 'undefined'),
(70, 'user2', 'Hey Bot define a new project'),
(71, 'bot', 'Alright, what''s the name of the project?'),
(72, 'user2', 'project 6'),
(73, 'bot', 'undefined'),
(74, 'user2', 'Hey Bot define a new project'),
(75, 'bot', 'Alright, what''s the name of the project?'),
(76, 'user2', 'project 6'),
(77, 'bot', 'Ohok, working on it....'),
(78, 'user2', 'Hey Bot define a new project'),
(79, 'bot', 'Alright, what''s the name of the project?'),
(80, 'user2', 'project 7'),
(81, 'bot', 'Ohok, working on it....'),
(82, 'user2', 'Hey Bot define a new project'),
(83, 'bot', 'Alright, what''s the name of the project?'),
(84, 'user2', 'project9'),
(85, 'bot', 'Ohok, working on it....'),
(86, 'user2', 'Hey Bot, define a new project'),
(87, 'bot', 'Alright, what''s the name of the project?'),
(88, 'user2', 'Hey Bot, define a new project'),
(89, 'bot', 'Alright, what''s the name of the project?'),
(90, 'user2', 'project7'),
(91, 'bot', 'Ohok, working on it....'),
(92, 'user2', 'Hey Bot define a new project'),
(93, 'bot', 'Alright, what''s the name of the project?'),
(94, 'user2', 'project 8'),
(95, 'bot', 'Ohok, working on it....'),
(96, 'user2', 'Hey Bot define a new project'),
(97, 'bot', 'Alright, what''s the name of the project?'),
(98, 'user2', 'pri'),
(99, 'bot', 'Ohok, working on it....'),
(100, 'user2', 'Hey Bot define a new project'),
(101, 'bot', 'Alright, what''s the name of the project?'),
(102, 'user2', 'prj'),
(103, 'bot', 'Ohok, working on it....\nundefined'),
(104, 'user2', 'Hey Bot define a new project'),
(105, 'bot', 'Alright, what''s the name of the project?'),
(106, 'user2', 'project67'),
(107, 'bot', 'Ohok, working on it....'),
(108, 'bot', 'Success: New Projectproject67 is now online!'),
(109, 'user2', 'Hey Bot'),
(110, 'bot', 'Hey there, I''m a bot.'),
(111, 'user2', 'OK Bot humor me'),
(112, 'bot', 'Picking a good one for ya'),
(113, 'user2', 'OK Bot humor me'),
(114, 'bot', 'Picking a good one for ya'),
(115, 'user2', 'OK Bot humor me'),
(116, 'bot', 'Picking a good one for ya'),
(117, 'user2', 'OK Bot humor me'),
(118, 'bot', 'Picking a good one for ya'),
(119, 'user2', 'OK Bot humor me'),
(120, 'bot', 'Picking a good one for ya'),
(121, 'user2', 'OK Bot humor me'),
(122, 'bot', 'Picking a good one for ya'),
(123, 'user2', 'OK Bot humor me'),
(124, 'bot', 'Picking a good one for ya'),
(125, 'bot', 'What do I look like? A JOKE MACHINE!?'),
(126, 'user2', 'OK Bot humor me'),
(127, 'bot', 'Picking a good one for ya'),
(128, 'bot', 'I''m glad I know sign language, it''s pretty handy.'),
(129, 'user2', 'OK Bot humor me'),
(130, 'bot', 'Picking a good one for ya'),
(131, 'user2', 'OK Bot'),
(132, 'bot', 'Hey there, user2 How can I help you?'),
(133, 'bot', 'Picking a good one for ya'),
(134, 'user2', 'OK Bot humor me'),
(135, 'bot', 'Did you hear about the guy whose whole left side was cut off? He''s all right now.'),
(136, 'user2', 'OK Bot humor me'),
(137, 'bot', 'Picking a good one for ya'),
(138, 'bot', 'Why do mermaid wear sea-shells? Because b-shells are too small.');

-- --------------------------------------------------------

--
-- Table structure for table `team4`
--

CREATE TABLE `team4` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team4`
--

INSERT INTO `team4` (`id`, `sender`, `message`) VALUES
(1, 'user2', 'First Message'),
(2, 'user2', 'OK Bot create a new project'),
(3, 'bot', 'Alright, what''s the name of the project?'),
(4, 'user2', 'project1'),
(5, 'bot', 'Ohok, working on it....'),
(6, 'bot', 'Success: New Project project1 is now online!'),
(7, 'user2', 'OK Bot create a new project'),
(8, 'bot', 'Alright, what''s the name of the project?'),
(9, 'user2', 'project1'),
(10, 'bot', 'Ohok, working on it....'),
(11, 'bot', 'This Project already exists.'),
(12, 'user2', 'ohok'),
(13, 'user2', 'OK Bot commit an issue'),
(14, 'bot', '... To which project?'),
(15, 'user2', 'project1'),
(16, 'user2', 'OK Bot commit an issue'),
(17, 'bot', '... To which project?'),
(18, 'user2', 'project1'),
(19, 'bot', '... To which project?'),
(20, 'bot', 'Okay, Now type down the text for new Issue.'),
(21, 'user2', 'This is the first issue'),
(22, 'user2', 'OK Bot commit an issue'),
(23, 'bot', '... To which project?'),
(24, 'user2', 'project1'),
(25, 'bot', '... To which project?'),
(26, 'bot', 'Okay, Now type down the text for new Issue.'),
(27, 'user2', 'project1'),
(28, 'bot', 'Alright, type down the text for the Issue.'),
(29, 'user2', 'OK Bot insert an issue'),
(30, 'bot', '... To which project?'),
(31, 'user2', 'project2'),
(32, 'bot', '... To which project?'),
(33, 'bot', 'This Project doesn''t exist.'),
(34, 'user2', 'OK Bot commit an issue'),
(35, 'bot', '... To which project?'),
(36, 'user2', 'project1'),
(37, 'bot', '... To which project?'),
(38, 'bot', 'Okay, Now type down the text for new Issue.'),
(39, 'user2', 'first issue'),
(40, 'bot', 'Alright, type down the text for the Issue.'),
(41, 'bot', 'Failure: Not able to commit the issue to '),
(42, 'user2', 'OK Bot commit an issue'),
(43, 'bot', '... To which project?'),
(44, 'user2', 'project1'),
(45, 'bot', '... To which project?'),
(46, 'bot', 'Okay, Now type down the text for new Issue.'),
(47, 'user2', 'First trial'),
(48, 'user2', 'OK Bot commit an issue'),
(49, 'bot', '... To which project?'),
(50, 'bot', '... To which project?'),
(51, 'user2', 'project1'),
(52, 'bot', 'Okay, Now type down the text for new Issue.'),
(53, 'user2', 'first issue'),
(54, 'user2', 'OK Bot commit an issue'),
(55, 'bot', '... To which project?'),
(56, 'user2', 'project1'),
(57, 'bot', '... To which project?'),
(58, 'bot', 'Okay, Now type down the text for new Issue.'),
(59, 'user2', 'first trial'),
(60, 'user2', 'OK Bot commit an issue'),
(61, 'bot', '... To which project?'),
(62, 'user2', 'project1'),
(63, 'bot', '... To which project?'),
(64, 'bot', 'Okay, Now type down the text for new Issue.'),
(65, 'user2', 'OK Bot commit an issue'),
(66, 'bot', '... To which project?'),
(67, 'user2', 'project1'),
(68, 'bot', '... To which project?'),
(69, 'bot', 'Okay, Now type down the text for new Issue.'),
(70, 'user2', 'first trial'),
(71, 'user2', 'another trial'),
(72, 'user2', 'OK Bot'),
(73, 'bot', 'Hey there, user2 How can I help you?'),
(74, 'user2', 'insert an issue'),
(75, 'user2', 'first trial'),
(76, 'user2', 'OK Bot insert an issue'),
(77, 'bot', '... To which project?'),
(78, 'user2', 'project2'),
(79, 'bot', '... To which project?'),
(80, 'bot', 'This Project doesn''t exist.'),
(81, 'user2', 'OK Bot commit an issue'),
(82, 'bot', '... To which project?'),
(83, 'user2', 'project1'),
(84, 'bot', '... To which project?'),
(85, 'bot', 'Okay, Now type down the text for new Issue.'),
(86, 'user2', 'OK Bot commit an issue'),
(87, 'bot', '... To which project?'),
(88, 'user2', 'project1'),
(89, 'bot', '... To which project?'),
(90, 'bot', 'Okay, Now type down the text for new Issue.'),
(91, 'user2', 'OK Bot commit an issue'),
(92, 'bot', '... To which project?'),
(93, 'user2', 'OK Bot commit an issue'),
(94, 'bot', '... To which project?'),
(95, 'user2', 'project1'),
(96, 'bot', '... To which project?'),
(97, 'bot', 'Okay, Now type down the text for new Issue.'),
(98, 'user2', 'OK Bot commit an Issue'),
(99, 'bot', '... To which project?'),
(100, 'user2', 'project1'),
(101, 'bot', '... To which project?'),
(102, 'bot', 'Okay, Now type down the text for new Issue.'),
(103, 'user2', 'OK Bot commit an issue'),
(104, 'bot', '... To which project?'),
(105, 'bot', 'Okay, Now type down the text for new Issue.'),
(106, 'user2', 'project1'),
(107, 'bot', '... To which project?'),
(108, 'user2', 'hey'),
(109, 'user2', 'OK Bot commit an issue'),
(110, 'bot', '... To which project?'),
(111, 'bot', 'Okay, Now type down the text for new Issue.'),
(112, 'bot', '... To which project?'),
(113, 'user2', 'project1'),
(114, 'user2', 'first trial'),
(115, 'bot', '... To which project?'),
(116, 'bot', 'Failure: Not able to commit the issue to '),
(117, 'user2', 'OK Bot I''m feeling tiredness'),
(118, 'bot', 'Hey there, user2 How can I help you?'),
(119, 'bot', 'Hey there, user2 How can I help you?'),
(120, 'user2', 'OK Bot I''m feeling anxiety'),
(121, 'user2', 'OK Bot display the latest commit'),
(122, 'bot', '... of which project?'),
(123, 'user2', 'project1'),
(124, 'user2', 'OK Bot display the latest commit'),
(125, 'bot', '... of which project?'),
(126, 'user2', 'project2'),
(127, 'bot', 'This Project doesn''t exist. Want to create a new project with this name: ''project2'' ? Then just type ''OK Bot create a new project'''),
(128, 'user2', 'OK Bot define a project'),
(129, 'bot', 'Alright, what''s the name of the project?'),
(130, 'user2', 'project2'),
(131, 'bot', 'Ohok, working on it....'),
(132, 'bot', 'Success: New Project project2 is now online!'),
(133, 'user2', 'OK Bot display the latest commit of project2'),
(134, 'bot', 'Ohok, working on it....'),
(135, 'bot', 'Issue #1\nDescription: no issues found\nIssued by: admin\nDate and Time: 2017-05-06 23:32:44\n'),
(136, 'user2', 'OK Bot display a commit whose id equals 3'),
(137, 'bot', 'Hey there, user2 How can I help you?'),
(138, 'user2', 'OK Bot display the commit whose id equals 3'),
(139, 'bot', '... of which project?'),
(140, 'user2', 'project2'),
(141, 'bot', 'Issue #1\nDescription: no issues found\nIssued by: admin\nDate and Time: 2017-05-06 23:32:44\n'),
(142, 'user2', 'OK Bot define a new issue'),
(143, 'bot', 'Hey there, user2 How can I help you?'),
(144, 'user2', 'OK Bot commit an issue'),
(145, 'bot', '... To which project?'),
(146, 'user2', 'project2'),
(147, 'bot', 'Ohok, working on it....'),
(148, 'bot', 'Okay, Now type down the text for new Issue.'),
(149, 'user2', 'issue trial'),
(150, 'bot', 'Success: Issue commited to project2'),
(151, 'user2', 'OK Bot display the commit whose id equals 3'),
(152, 'bot', '... of which project?'),
(153, 'user2', 'project2'),
(154, 'bot', 'Success: Issue commited to project2'),
(155, 'user2', 'OK Bot display the commit whose id equals 3'),
(156, 'bot', '... of which project?'),
(157, 'user2', 'project2'),
(158, 'bot', 'Not Able to perform this request.'),
(159, 'user2', 'Hey'),
(160, 'user2', 'YOLO'),
(161, 'user2', 'OK Bot'),
(162, 'bot', 'Hey there, user2 How can I help you?');

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
-- Table structure for table `team5`
--

CREATE TABLE `team5` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team5`
--

INSERT INTO `team5` (`id`, `sender`, `message`) VALUES
(1, 'user6', 'First Message'),
(2, 'user6', 'OK Bot'),
(3, 'bot', 'Hey there, user6 How can I help you?'),
(4, 'user5', 'OK Bot'),
(5, 'bot', 'Hey there, user5 How can I help you?'),
(6, 'user6', 'OK Bot create a new project'),
(7, 'bot', 'Alright, what''s the name of the project?'),
(8, 'user5', 'project1'),
(9, 'user6', 'project1'),
(10, 'bot', 'Ohok, working on it....'),
(11, 'bot', 'Success: New Project project1 is now online!'),
(12, 'user6', 'OK Bot commit an issue'),
(13, 'bot', '... To which project?'),
(14, 'user5', 'project1'),
(15, 'user5', 'project1'),
(16, 'bot', 'Ohok, working on it....'),
(17, 'user6', 'project1'),
(18, 'bot', 'Okay, Now type down the text for new Issue.'),
(19, 'user6', 'First Issue - Work on designing the site, it is too rough and looks mediocre'),
(20, 'bot', 'Success: Issue commited to project1'),
(21, 'user5', 'cool'),
(22, 'user5', 'cool'),
(23, 'user6', 'OK Bot display the latest issue of project1'),
(24, 'bot', '... of which project?'),
(25, 'user6', 'OK Bot display the latest issue of project1'),
(26, 'bot', 'Ohok, working on it....'),
(27, 'user6', 'OK Bot display the latest issue of project1'),
(28, 'bot', 'Ohok, working on it....'),
(29, 'user6', 'OK Bot display the latest issue of project1'),
(30, 'bot', 'Ohok, working on it....'),
(31, 'user6', 'OK Bot display the latest issue of project1'),
(32, 'bot', 'Ohok, working on it....'),
(33, 'user6', 'OK Bit display the latest issue of project1'),
(34, 'user6', 'OK Bot display the issue of project1'),
(35, 'bot', 'Hey there, user6 How can I help you?'),
(36, 'user6', 'OK Bot display the latest issue of project1'),
(37, 'bot', 'Ohok, working on it....'),
(38, 'user6', 'OK Bot commit an issue'),
(39, 'bot', '... To which project?'),
(40, 'user6', 'OK Bot commit an issue'),
(41, 'bot', 'Ohok, working on it....'),
(42, 'bot', 'This Project doesn''t exist. Want to create a new project with this name: ''OK Bot commit an issue'' ? Then just type ''OK Bot create a new project'''),
(43, 'user6', 'OK Bot commit an issue'),
(44, 'bot', '... To which project?'),
(45, 'bot', 'Ohok, working on it....'),
(46, 'user6', 'project1'),
(47, 'bot', 'Okay, Now type down the text for new Issue.'),
(48, 'user6', 'Second Issue'),
(49, 'bot', 'Success: Issue commited to project1'),
(50, 'bot', 'Ohok, working on it....'),
(51, 'user6', 'OK Bot display the latest issue of project1'),
(52, 'user6', 'OK Bot display the latest issue of project1'),
(53, 'bot', 'Ohok, working on it....'),
(54, 'user6', 'OK Bot display the latest issue of project1'),
(55, 'bot', 'Ohok, working on it....'),
(56, 'bot', 'Ohok, working on it....'),
(57, 'user6', 'OK Bot display the latest issue of project1'),
(58, 'bot', 'Ohok, working on it....'),
(59, 'user6', 'OK Bot display the latest issue of project1'),
(60, 'user6', 'OK Bot display the latest issue of project1'),
(61, 'bot', 'Ohok, working on it....'),
(62, 'bot', 'Ohok, working on it....'),
(63, 'user6', 'OK Bot display the latest issue of project1'),
(64, 'user6', 'OK Bot display the latest issue of project1'),
(65, 'bot', 'Ohok, working on it....'),
(66, 'user6', 'OK Bot display the latest issue of project1'),
(67, 'bot', 'Ohok, working on it....'),
(68, 'user6', 'OK Bot display the latest issue of project1'),
(69, 'bot', 'Ohok, working on it....'),
(70, 'user6', 'OK Bot display the latest issue of project2'),
(71, 'bot', 'Ohok, working on it....'),
(72, 'bot', 'This Project doesn''t exist. Want to create a new project with this name: ''project2'' ? Then just type ''OK Bot create a new project'''),
(73, 'user6', 'OK Bot display the latest issue of project1'),
(74, 'bot', 'Ohok, working on it....'),
(75, 'user6', 'OK Bot display the latest issue of project1'),
(76, 'bot', 'Ohok, working on it....'),
(77, 'bot', 'Issue #2\r\nDescription: Second Issue\r\nIssued by: user6\r\nDate & Time: '),
(78, 'user6', 'OK Bot display the latest issue of project1'),
(79, 'bot', 'Ohok, working on it....'),
(80, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(81, 'user6', 'OK Bot display the latest issue of project1'),
(82, 'bot', 'Ohok, working on it....'),
(83, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(84, 'user6', 'OK Bot display the latest issue of project1'),
(85, 'bot', 'Ohok, working on it....'),
(86, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(87, 'user6', 'OK Bot display the latest issue of project1'),
(88, 'bot', 'Ohok, working on it....'),
(89, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(90, 'user6', 'OK Bot display the latest issue of project1'),
(91, 'bot', 'Ohok, working on it....'),
(92, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(93, 'user6', 'OK Bot display the latest issue of project1'),
(94, 'bot', 'Ohok, working on it....'),
(95, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(96, 'user6', 'OK Bot display the latest issue of project1'),
(97, 'bot', 'Ohok, working on it....'),
(98, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(99, 'user6', 'OK Bot'),
(100, 'bot', 'Hey there, user6 How can I help you?'),
(101, 'user6', 'OK Bot display the latest issue of project1'),
(102, 'bot', 'Ohok, working on it....'),
(103, 'user6', 'OK Bot display the latest issue of project1'),
(104, 'bot', 'Ohok, working on it....'),
(105, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(106, 'bot', 'Ohok, working on it....'),
(107, 'user6', 'OK Bot display the latest issue of project1'),
(108, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(109, 'user6', 'OK Bot display the latest issue of project1'),
(110, 'bot', 'Ohok, working on it....'),
(111, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate '),
(112, 'user6', 'OK Bot display the latest issue of project1'),
(113, 'bot', 'Ohok, working on it....'),
(114, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate And Time: 2017-05-01 14:32:28\n'),
(115, 'user6', 'OK Bot display the latest issue of project1'),
(116, 'bot', 'Ohok, working on it....'),
(117, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate and Time: 2017-05-01 14:32:28\n'),
(118, 'user6', 'OK Bot display the latest commit'),
(119, 'bot', 'Hey there, user6 How can I help you?'),
(120, 'user6', 'OK Bot display the latest issue'),
(121, 'bot', '... of which project?'),
(122, 'user6', 'project1'),
(123, 'user6', 'OK Bot display the latest issue'),
(124, 'bot', '... of which project?'),
(125, 'user6', 'project1'),
(126, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate and Time: 2017-05-01 14:32:28\n'),
(127, 'user2', 'user2 here'),
(128, 'user2', 'OK Bot what is the date?'),
(129, 'bot', 'Current Date is 5/2/2017'),
(130, 'bot', 'Current Date is 5/2/2017'),
(131, 'user2', 'OK Bot what is the date?'),
(132, 'user2', 'OK Bot display the commit whose id = 2'),
(133, 'bot', '... of which project?'),
(134, 'user2', 'OK Bot display the issue whose id = 2'),
(135, 'bot', 'Hey there, user2 How can I help you?'),
(136, 'user2', 'OK Bot display the issue whose id = 2'),
(137, 'bot', 'Hey there, user2 How can I help you?'),
(138, 'user2', 'OK Bot display the commit whose id equals 2'),
(139, 'bot', '... of which project?'),
(140, 'user2', 'OK Bot display the commit whose id equals 2'),
(141, 'bot', '... of which project?'),
(142, 'user2', 'OK Bot display the commit whose id equals 2'),
(143, 'bot', '... of which project?'),
(144, 'user2', 'OK Bot display the commit whose id = 1'),
(145, 'bot', '... of which project?'),
(146, 'user2', 'project1'),
(147, 'user2', 'OK Bot display the commit whose id = 1'),
(148, 'bot', '... of which project?'),
(149, 'user2', 'project1'),
(150, 'bot', 'Issue #1\nDescription: First Issue - Work on designing the site, it is too rough and looks mediocre\nIssued by: user6\nDate and Time: 2017-05-01 13:36:36\n'),
(151, 'user5', 'OK Bot display current popular movies'),
(152, 'bot', 'Hey there, user5 How can I help you?'),
(153, 'user5', 'OK Bot display current popular movies'),
(154, 'bot', 'Hey there, I''m a bot.'),
(155, 'user5', 'OK Bot display current popular movies'),
(156, 'user5', 'OK Bot display current popular movies'),
(157, 'user5', 'OK Bot display current popular movies'),
(158, 'user5', 'OK Bot display current popular movies'),
(159, 'user5', 'OK Bot display current popular movies'),
(160, 'user5', 'OK Bot display current popular movies'),
(161, 'user5', 'OK Bot display current popular movies'),
(162, 'user5', 'OK Bot display current popular movies'),
(163, 'user5', 'OK Bot display current popular movies'),
(164, 'user5', 'OK Bot display current popular movies'),
(165, 'user5', 'OK Bot display current popular movies'),
(166, 'user5', 'OK Bot display current popular movies'),
(167, 'user5', 'OK Bot display current popular movies'),
(168, 'user5', 'OK Bot display current popular movies'),
(169, 'user5', 'OK Bot display current popular movies'),
(170, 'user5', 'OK Bot display current popular movies'),
(171, 'user5', 'OK Bot display current popular movies'),
(172, 'bot', 'Name: ''Guardians of the Galaxy Vol. 2''\nDescription: The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill''s true parentage.\nReleased Date: 2017-04-24\n\nName: ''Beauty and the Beast''\nDescription: A live-action adaptation of Disney''s version of the classic ''Beauty and the Beast'' tale of a cursed prince and a beautiful young woman who helps him break the spell.\nReleased Date: 2017-03-16\n\nName: ''The Fate of the Furious''\nDescription: When a mysterious woman seduces Dom into the world of crime and a betrayal of those closest to him, the crew face trials that will test them as never before.\nReleased Date: 2017-04-12\n\nName: ''The Boss Baby''\nDescription: A story about how a new baby''s arrival impacts a family, told from the point of view of a delightfully unreliable narrator, a wildly imaginative 7 year old named Tim.\nReleased Date: 2017-03-23\n\nName: ''Guardians of the Galaxy''\nDescription: Light years from Earth, 26 years after being abducted, Peter Quill finds himself the prime target of a manhunt after discovering an orb wanted by Ronan the Accuser.\nReleased Date: 2014-07-30\n\n'),
(173, 'user5', 'OK Bot display current popular movies'),
(174, 'bot', 'Ohok, fetching movie details......'),
(175, 'bot', 'Name: ''Guardians of the Galaxy Vol. 2''\nDescription: The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill''s true parentage.\nReleased Date: 2017-04-24\n\nName: ''Beauty and the Beast''\nDescription: A live-action adaptation of Disney''s version of the classic ''Beauty and the Beast'' tale of a cursed prince and a beautiful young woman who helps him break the spell.\nReleased Date: 2017-03-16\n\nName: ''The Fate of the Furious''\nDescription: When a mysterious woman seduces Dom into the world of crime and a betrayal of those closest to him, the crew face trials that will test them as never before.\nReleased Date: 2017-04-12\n\nName: ''The Boss Baby''\nDescription: A story about how a new baby''s arrival impacts a family, told from the point of view of a delightfully unreliable narrator, a wildly imaginative 7 year old named Tim.\nReleased Date: 2017-03-23\n\nName: ''Guardians of the Galaxy''\nDescription: Light years from Earth, 26 years after being abducted, Peter Quill finds himself the prime target of a manhunt after discovering an orb wanted by Ronan the Accuser.\nReleased Date: 2014-07-30\n\n'),
(176, 'user5', 'OK Bot display current popular movies from the year 2016'),
(177, 'bot', 'Ohok, fetching movie details......'),
(178, 'user5', 'OK Bot display current popular movies from the year 2016'),
(179, 'bot', 'Ohok, fetching movie details......'),
(180, 'user5', 'OK Bot display current popular movies from the year 2016'),
(181, 'bot', 'Ohok, fetching movie details......'),
(182, 'user5', 'OK Bot display the current popular movies from the year 2016'),
(183, 'bot', 'Hey there, user5 How can I help you?'),
(184, 'user5', 'OK Bot display current popular movies from the year 2016'),
(185, 'bot', 'Ohok, fetching movie details......'),
(186, 'bot', 'Name: ''Sing''\nOverview: A koala named Buster recruits his best friend to help him drum up business for his theater by hosting a singing competition.\nReleased Date: 2016-11-23\n\nName: ''Captain America: Civil War''\nOverview: Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.\nReleased Date: 2016-04-27\n\nName: ''Rogue One: A Star Wars Story''\nOverview: A rogue band of resistance fighters unite for a mission to steal the Death Star plans and bring a new hope to the galaxy.\nReleased Date: 2016-12-14\n\nName: ''John Wick''\nOverview: Ex-hitman John Wick comes out of retirement to track down the gangsters that took everything from him.\nReleased Date: 2014-10-22\n\nName: ''Fantastic Beasts and Where to Find Them''\nOverview: In 1926, Newt Scamander arrives at the Magical Congress of the United States of America with a magically expanded briefcase, which houses a number of dangerous creatures and their habitats. When the creatures escape from the briefcase, it sends the American wizarding authorities after Newt, and threatens to strain even further the state of magical and non-magical relations.\nReleased Date: 2016-11-16\n\n'),
(187, 'user5', 'OK Bot display the current popular tv shows'),
(188, 'bot', 'Hey there, user5 How can I help you?'),
(189, 'user5', 'OK Bot display the current popular tv shows'),
(190, 'bot', 'Hey there, user5 How can I help you?'),
(191, 'user5', 'OK Bot display the current popular tv shows'),
(192, 'bot', 'Hey there, user5 How can I help you?'),
(193, 'user5', 'OK Bot display current popular tv shows'),
(194, 'bot', 'Ohok, fetching TV Shows details......'),
(195, 'bot', 'Name: ''undefined''\nOverview: The Doctor looks and seems human. He''s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living â€“ more of a hobby actually, and he''s very, very good at it. He''s saved us from alien menaces and evil from before time began â€“ but just who is he?\nReleased Date: undefined\n\nName: ''undefined''\nOverview: Sheriff''s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.\nReleased Date: undefined\n\nName: ''undefined''\nOverview: The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon''s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny''s social skills and common sense.\nReleased Date: undefined\n\nName: ''undefined''\nOverview: After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only "meta-human" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won''t be long before the world learns what Barry Allen has become...The Flash.\nReleased Date: undefined\n\nName: ''undefined''\nOverview: Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night''s Watch, is all that stands between the realms of men and icy horrors beyond.\nReleased Date: undefined\n\n'),
(196, 'user5', 'OK Bot display the current popular tv shows'),
(197, 'bot', 'Ohok, fetching TV Shows details......'),
(198, 'bot', 'Name: ''Doctor Who''\nOverview: The Doctor looks and seems human. He''s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living â€“ more of a hobby actually, and he''s very, very good at it. He''s saved us from alien menaces and evil from before time began â€“ but just who is he?\nReleased Date: 2005-03-26\n\nName: ''The Walking Dead''\nOverview: Sheriff''s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.\nReleased Date: 2010-10-31\n\nName: ''The Big Bang Theory''\nOverview: The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon''s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny''s social skills and common sense.\nReleased Date: 2007-09-24\n\nName: ''The Flash''\nOverview: After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only "meta-human" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won''t be long before the world learns what Barry Allen has become...The Flash.\nReleased Date: 2014-10-07\n\nName: ''Game of Thrones''\nOverview: Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night''s Watch, is all that stands between the realms of men and icy horrors beyond.\nReleased Date: 2011-04-17\n\n');

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
-- Table structure for table `team6`
--

CREATE TABLE `team6` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team6`
--

INSERT INTO `team6` (`id`, `sender`, `message`) VALUES
(1, 'user6', 'Hey'),
(2, 'user6', 'OK Bot commit an issue'),
(3, 'bot', '... To which project?'),
(4, 'bot', 'This Project doesn''t exist.'),
(5, 'user6', 'project1'),
(6, 'bot', '... To which project?'),
(7, 'user6', 'OK Bot create a project'),
(8, 'bot', 'Alright, what''s the name of the project?'),
(9, 'user6', 'project101'),
(10, 'bot', 'Ohok, working on it....'),
(11, 'bot', 'Success: New Project project101 is now online!'),
(12, 'user6', 'commit an issue'),
(13, 'user6', 'OK Bot commit an issue'),
(14, 'bot', '... To which project?'),
(15, 'user6', 'project101'),
(16, 'bot', '... To which project?'),
(17, 'bot', 'Okay, Now type down the text for new Issue.'),
(18, 'user6', 'OK Bot commit an issue'),
(19, 'bot', '... To which project?'),
(20, 'user6', 'project101'),
(21, 'bot', '... To which project?'),
(22, 'bot', 'Okay, Now type down the text for new Issue.'),
(23, 'user6', 'trial issue'),
(24, 'user6', 'OK Bot commit an issue'),
(25, 'bot', '... To which project?'),
(26, 'user6', 'project101'),
(27, 'bot', '... To which project?'),
(28, 'bot', 'Okay, Now type down the text for new Issue.'),
(29, 'user6', 'OK Bot commit an issue'),
(30, 'bot', '... To which project?'),
(31, 'bot', '... To which project?'),
(32, 'user6', 'project101'),
(33, 'bot', 'Okay, Now type down the text for new Issue.'),
(34, 'user6', 'OK Bot commit an issue'),
(35, 'bot', '... To which project?'),
(36, 'user6', 'project101'),
(37, 'bot', '... To which project?'),
(38, 'bot', 'Okay, Now type down the text for new Issue.'),
(39, 'user6', 'OK Bot commit an issue'),
(40, 'bot', '... To which project?'),
(41, 'user6', 'project101'),
(42, 'bot', '... To which project?'),
(43, 'bot', 'Okay, Now type down the text for new Issue.'),
(44, 'user6', 'first trial'),
(45, 'bot', '... To which project?'),
(46, 'bot', 'Failure: Not able to commit the issue to project101'),
(47, 'user6', 'OK Bot commit an issue'),
(48, 'bot', '... To which project?'),
(49, 'user6', 'project101'),
(50, 'bot', '... To which project?'),
(51, 'bot', 'Okay, Now type down the text for new Issue.'),
(52, 'bot', '... To which project?'),
(53, 'user6', 'first'),
(54, 'bot', 'Failure: Not able to commit the issue to project101'),
(55, 'user6', 'OK Bot commit an issue'),
(56, 'bot', '... To which project?'),
(57, 'user6', 'project101'),
(58, 'bot', '... To which project?'),
(59, 'bot', 'Okay, Now type down the text for new Issue.'),
(60, 'user6', 'first'),
(61, 'bot', '... To which project?'),
(62, 'bot', 'Success: Issue commited to project101'),
(63, 'user6', 'OK Bot commit an issue'),
(64, 'bot', '... To which project?'),
(65, 'user6', 'project101'),
(66, 'bot', 'Ohok, working on it....'),
(67, 'bot', 'Okay, Now type down the text for new Issue.'),
(68, 'bot', '....'),
(69, 'user6', 'second trial'),
(70, 'bot', 'Success: Issue commited to project101'),
(71, 'user6', 'OK Bot commit an issue'),
(72, 'bot', '... To which project?'),
(73, 'user6', 'project101'),
(74, 'bot', 'Ohok, working on it....'),
(75, 'bot', 'Okay, Now type down the text for new Issue.'),
(76, 'bot', '....'),
(77, 'user6', 'third issue'),
(78, 'bot', 'Success: Issue commited to project101'),
(79, 'user6', 'OK Bot commit an issue'),
(80, 'bot', '... To which project?'),
(81, 'user6', 'project101'),
(82, 'bot', 'Ohok, working on it....'),
(83, 'bot', 'Okay, Now type down the text for new Issue.'),
(84, 'user6', 'fourth issue'),
(85, 'bot', 'Success: Issue commited to project101'),
(86, 'user6', 'OK Bot'),
(87, 'bot', 'Hey there, user6 How can I help you?'),
(88, 'user6', 'OK Bot whats the time'),
(89, 'bot', 'Current Time is 3:19:55 PM'),
(90, 'bot', '... To which project?'),
(91, 'user6', 'OK Bot insert an issue'),
(92, 'user6', 'project101'),
(93, 'bot', 'Ohok, working on it....'),
(94, 'bot', 'Okay, Now type down the text for new Issue.'),
(95, 'user6', 'revert issue definition'),
(96, 'bot', 'No Problem, issue definition reverted'),
(97, 'user6', 'OK Bot'),
(98, 'bot', 'Hey there, user6 How can I help you?'),
(99, 'user6', 'OK Bot commit an issue'),
(100, 'bot', '... To which project?'),
(101, 'user6', 'revert issue definition'),
(102, 'bot', 'No Problem, issue definition reverted'),
(103, 'user6', 'OK Bot add an issue'),
(104, 'bot', '... To which project?'),
(105, 'user6', 'project6'),
(106, 'bot', 'Ohok, working on it....'),
(107, 'bot', 'This Project doesn''t exist. Want to create a new project with this name: ''project6'' ? Then just type ''OK Bot create a new project'''),
(108, 'user6', 'OK Bot create a new project'),
(109, 'bot', 'Alright, what''s the name of the project?'),
(110, 'user6', 'revert project definition'),
(111, 'bot', 'No Problem, project definition reverted');

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
(10, 'user6', 'team6', '271170ec2bed4c154a45b775c8f25c23');

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
(7, 'user6', 'user6@user6.com', 'f20a7f13b868541e32ec92105c42ba25');

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
-- Indexes for table `team2`
--
ALTER TABLE `team2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team3`
--
ALTER TABLE `team3`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `team1project1`
--
ALTER TABLE `team1project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team1project2`
--
ALTER TABLE `team1project2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team2`
--
ALTER TABLE `team2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `team3`
--
ALTER TABLE `team3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
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
-- AUTO_INCREMENT for table `team5`
--
ALTER TABLE `team5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `team5project1`
--
ALTER TABLE `team5project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
