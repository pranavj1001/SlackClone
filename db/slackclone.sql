-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2017 at 12:25 PM
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
(110, 'bot', 'Hey there, I''m a bot.');

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
(116, 'bot', 'Failure: Not able to commit the issue to ');

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
(126, 'bot', 'Issue #2\nDescription: Second Issue\nIssued by: user6\nDate and Time: 2017-05-01 14:32:28\n');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `team4`
--
ALTER TABLE `team4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `team4project1`
--
ALTER TABLE `team4project1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team5`
--
ALTER TABLE `team5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
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
