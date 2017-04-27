-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2017 at 05:14 PM
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
(66, 'bot', 'Success: New Project project2 is now online!');

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
(9, 'user2', 'team4', '1de9a70660fb54b17535e830c8614358');

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
(6, 'user5', 'user5@user5.com', '0c1009e92128844c97a43f69f3be12d6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team1`
--
ALTER TABLE `team1`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
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
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
