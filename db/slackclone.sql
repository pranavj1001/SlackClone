-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 04:28 PM
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
(81, 'user4', 'Alright'),
(82, 'user1', 'OK Bot commit an issue'),
(83, 'bot', '... To which project?'),
(84, 'user1', 'project1'),
(85, 'bot', 'Ohok, working on it....'),
(86, 'bot', 'Okay, Now type down the text for new Issue.'),
(87, 'user1', 'First issue'),
(88, 'bot', 'Success: Issue commited to project1'),
(89, 'user1', 'OK Bot commit an issue'),
(90, 'bot', '... To which project?'),
(91, 'user1', 'project1'),
(92, 'bot', 'Ohok, working on it....'),
(93, 'bot', 'Okay, Now type down the text for new Issue.'),
(94, 'user1', 'will be deleted'),
(95, 'bot', 'Success: Issue commited to project1'),
(96, 'user1', 'OK Bot commit an issue'),
(97, 'bot', '... To which project?'),
(98, 'user1', 'project1'),
(99, 'bot', 'Ohok, working on it....'),
(100, 'bot', 'Okay, Now type down the text for new Issue.'),
(101, 'user1', 'third issue'),
(102, 'bot', 'Success: Issue commited to project1'),
(103, 'user1', 'OK Bot delete a commit whose id = 2'),
(104, 'user1', 'OK Bot delete a commit whose id equals 2'),
(105, 'bot', '... of which project?'),
(106, 'user1', 'OK Bot delete a commit whose id equals 2'),
(107, 'bot', '... of which project?'),
(108, 'user1', 'project1'),
(109, 'bot', 'Alright, working on it. Will let you know when its done.'),
(110, 'bot', 'Sorry you''re not authorized to delete this issue'),
(111, 'bot', '... of which project?'),
(112, 'user1', 'OK Bot delete a commit whose id equals 2'),
(113, 'user1', 'project1'),
(114, 'bot', 'Alright, working on it. Will let you know when its done.'),
(115, 'user1', 'OK Bot'),
(116, 'bot', 'Hey there, user1 How can I help you?'),
(117, 'user1', 'OK Bot delete a commit whose id equals 2'),
(118, 'bot', '... of which project?'),
(119, 'user1', 'project1'),
(120, 'bot', 'Alright, working on it. Will let you know when its done.'),
(121, 'user1', 'OK Bot delete a commit whose id equals 2'),
(122, 'bot', '... of which project?'),
(123, 'user1', 'project1'),
(124, 'bot', 'Alright, working on it. Will let you know when its done.'),
(125, 'user1', 'OK Bot delete a commit whose id equals 2'),
(126, 'bot', '... of which project?'),
(127, 'user1', 'project1'),
(128, 'bot', 'Alright, working on it. Will let you know when its done.'),
(129, 'user1', 'OK Bot delete a commit whose id equals 2'),
(130, 'bot', '... of which project?'),
(131, 'user1', 'project1'),
(132, 'bot', 'Alright, working on it. Will let you know when its done.'),
(133, 'user1', 'OK Bot delete a commit whose id equals 2'),
(134, 'bot', '... of which project?'),
(135, 'bot', 'Alright, working on it. Will let you know when its done.'),
(136, 'user1', 'project1'),
(137, 'bot', 'Sorry, couldn''t delete the issue. Servers might be down for maintenance. Please try again later.'),
(138, 'user1', 'OK Bot delete a commit whose id equals 2'),
(139, 'bot', '... of which project?'),
(140, 'user1', 'project1'),
(141, 'bot', 'Alright, working on it. Will let you know when its done.'),
(142, 'bot', 'Sorry, couldn''t delete the issue. Servers might be down for maintenance. Please try again later.'),
(143, 'user1', 'OK Bot delete a commit whose id equals 2'),
(144, 'bot', '... of which project?'),
(145, 'user1', 'project1'),
(146, 'bot', 'Alright, working on it. Will let you know when its done.'),
(147, 'bot', 'Sorry, couldn''t delete the issue. Servers might be down for maintenance. Please try again later.'),
(148, 'user1', 'OK Bot delete a commit whose id equals 2'),
(149, 'bot', '... of which project?'),
(150, 'user1', 'project1'),
(151, 'bot', 'Alright, working on it. Will let you know when its done.'),
(152, 'bot', 'Success: Deleted Issue #2 by user1'),
(153, 'user1', 'OK Bot delete a commit whose id equals 2'),
(154, 'bot', '... of which project?'),
(155, 'user1', 'project1'),
(156, 'bot', 'Alright, working on it. Will let you know when its done.'),
(157, 'bot', 'Sorry, couldn''t delete the issue. Servers might be down for maintenance. Please try again later.'),
(158, 'user1', 'OK Bot delete a commit whose id equals 2'),
(159, 'bot', '... of which project?'),
(160, 'user1', 'project1'),
(161, 'bot', 'Alright, working on it. Will let you know when its done.'),
(162, 'user1', 'OK Bot delete a commit whose id equals 2'),
(163, 'bot', '... of which project?'),
(164, 'bot', 'Alright, working on it. Will let you know when its done.'),
(165, 'user1', 'project1'),
(166, 'user1', 'OK Bot delete a commit whose id equals 2'),
(167, 'bot', '... of which project?'),
(168, 'user1', 'project1'),
(169, 'bot', 'Alright, working on it. Will let you know when its done.'),
(170, 'user1', 'OK Bot commit an issue'),
(171, 'bot', '... To which project?'),
(172, 'user1', 'project1'),
(173, 'bot', 'Ohok, working on it....'),
(174, 'bot', 'Okay, Now type down the text for new Issue.'),
(175, 'user1', 'fourth issue'),
(176, 'bot', 'Success: Issue commited to project1'),
(177, 'user1', 'OK Bot delete a commit whose id equals 2'),
(178, 'bot', '... of which project?'),
(179, 'user1', 'project1'),
(180, 'bot', 'Alright, working on it. Will let you know when its done.'),
(181, 'bot', 'Sorry, couldn''t delete the issue. Servers might be down for maintenance. Please try again later.'),
(182, 'user1', 'OK Bot delete a commit whose id equals 2'),
(183, 'bot', '... of which project?'),
(184, 'user1', 'project1'),
(185, 'bot', 'Alright, working on it. Will let you know when its done.'),
(186, 'bot', 'Success: Deleted Issue #2 by user1'),
(187, 'user1', 'OK Bot show some technology news'),
(188, 'bot', 'Sorry, I don''t understand.'),
(189, 'user1', 'OK Bot show some music news'),
(190, 'bot', 'Sorry, I don''t understand.'),
(191, 'user1', 'OK Bot show me some technology news'),
(192, 'bot', 'Ohok, Working on it......'),
(193, 'user1', 'OK Bot show some me music news'),
(194, 'bot', 'Sorry, I don''t understand.'),
(195, 'user1', 'OK Bot show me some music news'),
(196, 'bot', 'Ohok, Working on it......'),
(197, 'user1', 'OK Bot show me some music news'),
(198, 'bot', 'Ohok, Working on it......'),
(199, 'user1', 'OK Bot show me some music news'),
(200, 'bot', 'Ohok, Working on it......'),
(201, 'bot', 'Ohok, Working on it......'),
(202, 'user1', 'OK Bot show me some music news'),
(203, 'user1', 'OK Bot show me some news'),
(204, 'bot', 'Ohok, Working on it......'),
(205, 'bot', 'Here you go\nTitle: ''Jeremy Corbyn struggles over cost of childcare policy''\nDescription: Jeremy Corbyn stumbles over the cost of his party''s plan to offer free childcare to two-year-olds.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/election-2017-40090520\nPublished on: 2017-05-30\n\nTitle: ''Election 2017: SNP manifesto calls for referendum ''at end of Brexit process''''\nDescription: Nicola Sturgeon says referendum should be held "not now, but when the final terms of the deal are known"\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-scotland-scotland-politics-40086276\nPublished on: 2017-05-30\n\nTitle: ''Mike Dubke: White House communications director quits''\nDescription: Mike Dubke resigns, and press secretary Sean Spicer will reportedly give fewer briefings.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/world-us-canada-40090865\nPublished on: 2017-05-30\n\nTitle: ''Zoo tiger death: Rosa King ''always loved'' job, mother says''\nDescription: The mother of Rosa King, who died at Hamerton Park, says her zoo work was "what she always loved".\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-england-cambridgeshire-40089174\nPublished on: 2017-05-30\n\nTitle: ''Rolf Harris trial: Jury discharged as no verdicts reached''\nDescription: Prosecutors say they will not seek a retrial, as jurors fail to reach verdicts on sex assault charges.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40095612\nPublished on: 2017-05-30\n\nTitle: ''Ultra-tough antibiotic to fight superbugs''\nDescription: The modified drug might help put an end to resistant superbug infections, experts hope.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/health-40091179\nPublished on: 2017-05-30\n'),
(206, 'user1', 'OK Bot show me indian news'),
(207, 'bot', 'Ohok, Working on it......'),
(208, 'bot', 'Here you go\nTitle: ''India thanks Germany for backing its NSG membership bid - Times of India''\nDescription: India on Tuesday thanked Germany for backing its membership bid in the Nuclear Suppliers Group as the two countries supported each other''s candidature for a permanent seat in a reformed UN Security Council.\nAuthor: Data Not Available\nMore info: http://timesofindia.indiatimes.com/india/india-thanks-germany-for-backing-its-nsg-membership-bid/articleshow/58911660.cms\nPublished on: 2017-05-30\n\nTitle: ''Cattle regulation law stayed by Madras HC - Times of India''\nDescription: Amidst raging debate over the motive of the Centreâ€™s May 23 notification regulating cattle sale and animal markets, the Madurai bench of the Madras high court stayed its operation on Tuesday.\nAuthor: L Saravanan\nMore info: http://timesofindia.indiatimes.com/city/chennai/cattle-regulation-law-stayed-by-madras-hc/articleshow/58910774.cms\nPublished on: 2017-05-30\n\nTitle: ''Babri Masjid case: Court frames ''criminal conspiracy'' charges against Advani, Joshi, Bharti and others - Times of India''\nDescription: LUCKNOW: A CBI court on Tuesday charged former deputy PM LK Adavni, senior BJP leader MM Joshi and cabinet minister Uma Bharati for their role in conspiracy behind the demolition of Babri Masjid in Ayodhya in 1992.\nAuthor: Pravin Kumar\nMore info: http://timesofindia.indiatimes.com/india/babri-marsjid-case-advani-joshi-uma-bharti-granted-bail-on-rs-50000-bond/articleshow/58910168.cms\nPublished on: 2017-05-30\n\nTitle: ''Bangladesh 21/4 in 6.3 Overs | India vs Bangladesh: Live Cricket Score of Ind vs Ban, 5th warm-up match, The Oval - The Times of India''\nDescription: Get live cricket score '),
(209, 'user1', 'OK Bot show me music news'),
(210, 'bot', 'Ohok, Working on it......'),
(211, 'user1', 'OK Bot show me science news'),
(212, 'bot', 'Ohok, Working on it......'),
(213, 'bot', 'Here you go\nTitle: ''Meet This Newly Discovered Flying Squirrel''\nDescription: North Americaâ€™s newest mammal, Humboldtâ€™s Flying Squirrel, helps solve an evolutionary mystery.\nAuthor: Virginia Morell\nMore info: http://news.nationalgeographic.com/2017/05/flying-squirrel-new-species-north-america.html\nPublished on: 2017-05-30\n\nTitle: ''How Photographing Albinism Changed This Family''s Future''\nDescription: While shooting a story about the condition, Stephanie Sinclair decided to adopt two albino children from China.\nAuthor: Stephanie Sinclair\nMore info: http://www.nationalgeographic.com/photography/proof/2017/05/albinism-china-children-national-geographic-photographer.html\nPublished on: 2017-05-30\n\nTitle: ''Rare Blueprints Show How an Iconic Baseball Stadium Evolved''\nDescription: Intricate hand-drawn architectural diagrams detail renovations to the original Yankee Stadium.\nAuthor: Greg Miller\nMore info: http://news.nationalgeographic.com/2017/05/baseball-yankee-stadium-hand-drawn-blueprints-architectural.html\nPublished on: 2017-05-30\n\nTitle: ''For Them, Being Pale Can Bring Scorn, Threats, and Worse''\nDescription: Fashion models with albinism are popular, but many people with the condition face exclusion, health problems, and savage attacks.\nAuthor: Susan Ager\nMore info: http://www.nationalgeographic.com/magazine/2017/06/albinism-health-genetics-society.html\nPublished on: 2017-05-30\n\nTitle: ''Snake Regurgitates Another Snake in Startling Video''\nDescription: The eaten snake, which was on the cusp of disappearing into its predatorâ€™s mouth, seems to have made it out alive.\nAuthor: Christina Nunez\nMore info: http://news.nationalgeographic.com/2017/05/snake-regurgitates-live-snake-video.html\nPublished on: 2017-05-29\n\nTitle: ''19 Electrifying Photos of Epic Storms''\nDescription: As warm weather storms in, so does tornado season.\nAuthor: Data Not Available\nMore info: http://www.nationalgeographic.com/photography/proof/2017/05/epic-storm-gallery.html\nPublished on: 2017-05-28\n'),
(214, 'user1', 'OK Bot show me business news'),
(215, 'bot', 'Ohok, Working on it......'),
(216, 'bot', 'Here you go\nTitle: ''''Very bad for the US. This will change'': Trump fires back at Germany, Merkel in tweet''\nDescription: President Donald Trump went after Germany in a tweet Tuesday morning after Chancellor Angela Merkel said Germany could no longer "fully rely" on the US.\nAuthor: Bob Bryan\nMore info: http://www.businessinsider.com/donald-trump-tweet-on-germany-nato-2017-5\nPublished on: 2017-05-30\n\nTitle: ''White House communications director Michael Dubke is out â€” and it could just be the start of a bigger shake-up''\nDescription: Dubke handed in his resignation before President Donald Trump left for his international trip earlier this month.\nAuthor: Sonam Sheth and Associated Press\nMore info: http://www.businessinsider.com/ap-the-latest-wh-communications-director-michael-dubke-resigns-2017-5\nPublished on: 2017-05-30\n\nTitle: ''Steve Cohen is reportedly prepping the biggest hedge fund launch ever''\nDescription: Billionaire Steve Cohen is looking to raise $20 billion for his hedge fund comeback, the Wall Street Journal reported.\nAuthor: Rachael Levy\nMore info: http://www.businessinsider.com/steve-cohen-is-reportedly-prepping-the-biggest-hedge-fund-launch-ever-2017-5\nPublished on: 2017-05-30\n\nTitle: ''Democrats are pushing an unlikely source â€” Jerry Springer â€” to run for governor in Ohio''\nDescription: Democrats are pushing Jerry Springer to run for Ohio governor in 2018, eight Democratic insiders confirmed to Business Insider.\nAuthor: Allan Smith and Maxwell Tani\nMore info: http://www.businessinsider.com/jerry-springer-ohio-governor-2018-trump-2017-5\nPublished on: 2017-05-30\n\nTitle: ''Russian officials reportedly discussed having ''derogatory'' information about Trump''\nDescription: CNN says US officials intercepted conversations between Russian officials discussing potentially derogatory financial information about President Donald Trump.\nAuthor: Natasha Bertrand\nMore info: http://www.businessinsider.com/russian-officials-reportedly-discussed-having-derogatory-information-about-trump-2017-5\nPublished on: 2017-05-30\n\nTitle: ''The creator of Android has finally unveiled his new phone''\nDescription: After months of teasing, it''s finally here â€” and it has some exciting new features.\nAuthor: Rob Price, Business Insider UK\nMore info: http://www.businessinsider.com/android-creator-andy-rubin-unveils-new-essential-phone-ph-1-2017-5\nPublished on: 2017-05-30\n'),
(217, 'user1', 'OK Bot show me technology news'),
(218, 'bot', 'Ohok, Working on it......'),
(219, 'user1', 'OK Bot show me gaming news'),
(220, 'bot', 'Ohok, Working on it......'),
(221, 'bot', 'Here you go\nTitle: ''Fire Emblem Warriors Will Feature New, Twin Protagonists - IGN''\nDescription: In addition, the game will reportedly focus on characters from Shadow Dragon, Awakening and Fates.\nAuthor: Evan Campbell\nMore info: http://ca.ign.com/articles/2017/05/30/fire-emblem-warriors-will-feature-new-twin-protagonists\nPublished on: 2017-05-30\n\nTitle: ''Next Arms Global Testpunch Packs New Modes - IGN''\nDescription: Nintendo also revealed the most popular fighter for the first weekend of the online beta.\nAuthor: Evan Campbell\nMore info: http://ca.ign.com/articles/2017/05/30/next-arms-global-testpunch-packs-new-modes\nPublished on: 2017-05-30\n\nTitle: ''Monster Hunter XX Official Switch Japanese Reveal Trailer - IGN Video''\nDescription: Capcom gives us a first look at Monster Hunter XX running on Switch. 3DS players can transfer their save to Switch version.\nAuthor: Data Not Available\nMore info: http://ca.ign.com/videos/2017/05/30/monster-hunter-xx-official-switch-japanese-reveal-trailer\nPublished on: 2017-05-30\n\nTitle: ''A Visual History of Wonder Woman''s Costumes - IGN''\nDescription: We trace the evolution of Wonder Woman''s iconic costume across DC''s comics, TV shows, games and movies.\nAuthor: Jesse Schedeen\nMore info: http://ca.ign.com/articles/2017/05/30/a-visual-history-of-wonder-womans-costumes\nPublished on: 2017-05-30\n\nTitle: ''PlayStation 3 Has Ceased Production - IGN''\nDescription: It''s the end of an era as the Sony console that (eventually) could ends production in Japan.\nAuthor: Wesley Copeland\nMore info: http://ca.ign.com/articles/2017/05/30/playstation-3-has-ceased-production\nPublished on: 2017-05-30\n\nTitle: ''The Nintendo Theme Park Will Probably Include Real-Life Mario Kart - IGN''\nDescription: A trademark''s given us some small hints at what might be to come from Nintendo''s US attractions.\nAuthor: Joe Skrebels\nMore info: http://ca.ign.com/articles/2017/05/30/the-nintendo-theme-park-will-probably-include-real-life-mario-kart\nPublished on: 2017-05-30\n'),
(222, 'user1', 'OK Bot show me technology news'),
(223, 'bot', 'Ohok, Working on it......'),
(224, 'user1', 'OK Bot show me technology news'),
(225, 'bot', 'Ohok, Working on it......'),
(226, 'bot', 'Here you go\nTitle: ''Dellâ€™s Inspiron 27 7000 all-in-one is ready for VR''\nDescription: Dell''s latest machine is all about making it cheaper for you to get your virtual reality fix while keeping your tabletop uncluttered.\nAuthor: Daniel Cooper\nMore info: https://www.engadget.com/2017/05/30/dell-s-inspiron-27-7000-all-in-one-is-ready-for-vr/\nPublished on: 2017-05-30\n\nTitle: ''Intelâ€™s Core i9 Extreme Edition CPU is an 18-core beast''\nDescription: Start saving up: Intel just unveiled its first 18-core consumer CPU.\nAuthor: Devindra Hardawar\nMore info: https://www.engadget.com/2017/05/30/intel-core-i9-extreme/\nPublished on: 2017-05-30\n\nTitle: ''This is Andy Rubinâ€™s Essential Phone''\nDescription: Android creator Andy Rubin has unveiled the first phone by his new company, Essential.\nAuthor: Nick Summers\nMore info: https://www.engadget.com/2017/05/30/essential-phone-andy-rubin-android/\nPublished on: 2017-05-30\n\nTitle: ''â€˜District 9â€™ director to debut his new sci-fi flick on Steam''\nDescription: The short film â€˜Volume 1â€™ sees mankind battling aliens once again.\nAuthor: Tom Regan\nMore info: https://www.engadget.com/2017/05/30/district-9-director-to-debut-his-new-sci-fi-flick-on-steam/\nPublished on: 2017-05-30\n\nTitle: ''What we played in May''\nDescription: Our favorites this month include a GameCube remaster of a PlayStation classic.\nAuthor: Engadget\nMore info: https://www.engadget.com/2017/05/29/gaming-irl-may-2017/\nPublished on: 2017-05-29\n'),
(227, 'user1', 'OK Bot show me music news'),
(228, 'bot', 'Ohok, Working on it......'),
(229, 'bot', 'Here you go\nTitle: ''Just Love What You Love, Feat. Lisa Hanawalt and Ilse ValfrÃ©''\nDescription: MTV Podcasts - New adventures in sound from the MTV News team. Talking that talk since 2016.\nAuthor: Tavi Gevinson\nMore info: http://www.mtv.com/news/podcasts/rookie/just-love-what-you-love-feat-lisa-hanawalt-and-ilse-valfre/\nPublished on: Data Not A\n\nTitle: ''Ariana Grande Vows To Return To â€˜Braveâ€™ Manchester For Benefit Concert In Heartbreaking Letter''\nDescription: ''I extend my hand and heart and everything I possibly can give''\nAuthor: Rebecca Thomas\nMore info: http://www.mtv.com/news/3016511/ariana-breaks-full-statement-manchester-attack/\nPublished on: Data Not A\n\nTitle: ''Ariana Grande Manchester Concert Attack: Everything We Know So Far''\nDescription: Details continue to roll in from the tragedy\nAuthor: Sasha Geffen\nMore info: http://www.mtv.com/news/3015493/ariana-grande-manchester-concert-attack-what-we-know/\nPublished on: Data Not A\n\nTitle: ''How To Help Manchester''\nDescription: Here are a few ways you can help victims and their families from anywhere in the world\nAuthor: Marcus Patrick Ellsworth\nMore info: http://www.mtv.com/news/3015604/how-to-help-manchester/\nPublished on: Data Not A\n\nTitle: ''Thereâ€™s More To The Manchester Bombing''\nDescription: Ariana Grandeâ€™s fans werenâ€™t the only target\nAuthor: Jane Coaston\nMore info: http://www.mtv.com/news/3015879/theres-more-to-the-manchester-bombing/\nPublished on: Data Not A\n'),
(230, 'user1', 'OK Bot show me technology news'),
(231, 'bot', 'Ohok, Working on it......'),
(232, 'user1', 'OK Bot show me technology news'),
(233, 'bot', 'Ohok, Working on it......'),
(234, 'user1', 'OK Bot show me technology news'),
(235, 'bot', 'Ohok, Working on it......'),
(236, 'bot', 'Here you go\nTitle: ''Dellâ€™s Inspiron 27 7000 all-in-one is ready for VR''\nDescription: Dell''s latest machine is all about making it cheaper for you to get your virtual reality fix while keeping your tabletop uncluttered.\nAuthor: Daniel Cooper\nMore info: https://www.engadget.com/2017/05/30/dell-s-inspiron-27-7000-all-in-one-is-ready-for-vr/\nPublished on: 2017-05-30\n\nTitle: ''Intelâ€™s Core i9 Extreme Edition CPU is an 18-core beast''\nDescription: Start saving up: Intel just unveiled its first 18-core consumer CPU.\nAuthor: Devindra Hardawar\nMore info: https://www.engadget.com/2017/05/30/intel-core-i9-extreme/\nPublished on: 2017-05-30\n\nTitle: ''This is Andy Rubinâ€™s Essential Phone''\nDescription: Android creator Andy Rubin has unveiled the first phone by his new company, Essential.\nAuthor: Nick Summers\nMore info: https://www.engadget.com/2017/05/30/essential-phone-andy-rubin-android/\nPublished on: 2017-05-30\n\nTitle: ''â€˜District 9â€™ director to debut his new sci-fi flick on Steam''\nDescription: The short film â€˜Volume 1â€™ sees mankind battling aliens once again.\nAuthor: Tom Regan\nMore info: https://www.engadget.com/2017/05/30/district-9-director-to-debut-his-new-sci-fi-flick-on-steam/\nPublished on: 2017-05-30\n\nTitle: ''What we played in May''\nDescription: Our favorites this month include a GameCube remaster of a PlayStation classic.\nAuthor: Engadget\nMore info: https://www.engadget.com/2017/05/29/gaming-irl-may-2017/\nPublished on: 2017-05-29\n'),
(237, 'user1', 'OK Bot show me music news'),
(238, 'bot', 'Ohok, Working on it......'),
(239, 'bot', 'Here you go\nTitle: ''Just Love What You Love, Feat. Lisa Hanawalt and Ilse ValfrÃ©''\nDescription: MTV Podcasts - New adventures in sound from the MTV News team. Talking that talk since 2016.\nAuthor: Tavi Gevinson\nMore info: http://www.mtv.com/news/podcasts/rookie/just-love-what-you-love-feat-lisa-hanawalt-and-ilse-valfre/\nPublished on: NA\n\nTitle: ''Ariana Grande Vows To Return To â€˜Braveâ€™ Manchester For Benefit Concert In Heartbreaking Letter''\nDescription: ''I extend my hand and heart and everything I possibly can give''\nAuthor: Rebecca Thomas\nMore info: http://www.mtv.com/news/3016511/ariana-breaks-full-statement-manchester-attack/\nPublished on: NA\n\nTitle: ''Ariana Grande Manchester Concert Attack: Everything We Know So Far''\nDescription: Details continue to roll in from the tragedy\nAuthor: Sasha Geffen\nMore info: http://www.mtv.com/news/3015493/ariana-grande-manchester-concert-attack-what-we-know/\nPublished on: NA\n\nTitle: ''How To Help Manchester''\nDescription: Here are a few ways you can help victims and their families from anywhere in the world\nAuthor: Marcus Patrick Ellsworth\nMore info: http://www.mtv.com/news/3015604/how-to-help-manchester/\nPublished on: NA\n\nTitle: ''Thereâ€™s More To The Manchester Bombing''\nDescription: Ariana Grandeâ€™s fans werenâ€™t the only target\nAuthor: Jane Coaston\nMore info: http://www.mtv.com/news/3015879/theres-more-to-the-manchester-bombing/\nPublished on: NA\n');

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
(198, 'bot', 'Name: ''Doctor Who''\nOverview: The Doctor looks and seems human. He''s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living â€“ more of a hobby actually, and he''s very, very good at it. He''s saved us from alien menaces and evil from before time began â€“ but just who is he?\nReleased Date: 2005-03-26\n\nName: ''The Walking Dead''\nOverview: Sheriff''s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.\nReleased Date: 2010-10-31\n\nName: ''The Big Bang Theory''\nOverview: The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon''s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny''s social skills and common sense.\nReleased Date: 2007-09-24\n\nName: ''The Flash''\nOverview: After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only "meta-human" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won''t be long before the world learns what Barry Allen has become...The Flash.\nReleased Date: 2014-10-07\n\nName: ''Game of Thrones''\nOverview: Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night''s Watch, is all that stands between the realms of men and icy horrors beyond.\nReleased Date: 2011-04-17\n\n'),
(199, 'user4', 'OK Bot show me stock related info about GE'),
(200, 'bot', 'Ohok, Working on it......'),
(201, 'user4', 'OK Bot show me stock related info about GE'),
(202, 'bot', 'Ohok, Working on it......'),
(203, 'bot', 'Oops! Not able to find this company'),
(204, 'user4', 'OK Bot show me stock related info about GE'),
(205, 'bot', 'Ohok, Working on it......'),
(206, 'user4', 'OK Bot show me stock related info about GOOGL'),
(207, 'bot', 'Ohok, Working on it......');

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
-- Table structure for table `team7`
--

CREATE TABLE `team7` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team7`
--

INSERT INTO `team7` (`id`, `sender`, `message`) VALUES
(1, 'user7', 'OK Bot'),
(2, 'bot', 'Hey there, user7 How can I help you? You may have typed the wrong command. Follow the manual for help.'),
(3, 'user7', 'OK Bot show me stock related info about AAPL'),
(4, 'bot', 'Ohok, Working on it......'),
(5, 'bot', 'Oops! Not able to find this company'),
(6, 'user7', 'OK Bot show me stock related info about AAPL'),
(7, 'bot', 'Ohok, Working on it......'),
(8, 'bot', 'Ohok, Working on it......'),
(9, 'user7', 'OK Bot show me stock related info about AAPL'),
(10, 'user7', 'OK Bot show me stock related info about AAPL'),
(11, 'bot', 'Ohok, Working on it......'),
(12, 'user7', 'OK Bot show me stock related info about AAPL'),
(13, 'bot', 'Ohok, Working on it......'),
(14, 'user7', 'OK Bot show me stock related info about GOOGL'),
(15, 'bot', 'Ohok, Working on it......'),
(16, 'user7', 'OK Bot show me stock related info about GOOGL'),
(17, 'bot', 'Ohok, Working on it......'),
(18, 'user7', 'OK Bot show me stock related info about GE'),
(19, 'bot', 'Ohok, Working on it......'),
(20, 'user7', 'OK Bot show me stock related info about SONY'),
(21, 'bot', 'Ohok, Working on it......'),
(22, 'bot', 'Oops! Not able to find this company'),
(23, 'user7', 'OK Bot show me stock related info about TYO'),
(24, 'bot', 'Ohok, Working on it......'),
(25, 'bot', 'Oops! Not able to find this company'),
(26, 'user7', 'OK Bot show me stock related info about GOOGL'),
(27, 'bot', 'Ohok, Working on it......'),
(28, 'user7', 'OK Bot show me stock related info about GOOGL'),
(29, 'bot', 'Ohok, Working on it......'),
(30, 'user7', 'OK Bot show me stock related info GOOGL'),
(31, 'bot', 'Hey there, user7 How can I help you? You may have typed the wrong command. Follow the manual for help.'),
(32, 'user7', 'OK Bot show me stock related info about GOOGL'),
(33, 'bot', 'Ohok, Working on it......'),
(34, 'bot', 'Ohok, Working on it......'),
(35, 'user7', 'OK Bot show me stock related info about GOOGL'),
(36, 'bot', '\nShowing Info about: GOOGL\nLegal Name: Alphabet Inc.\nSector: Technology\nIndustry Group: Internet Information Providers\nAddress: 1600 AMPHITHEATRE PARKWAY, MOUNTAIN VIEW, CA 94043\nPhone Number: 650-253-0000\nCompany URL: abc.xyz\nStock Price: 947.85'),
(37, 'bot', '\nShowing Info about: GOOGL\nLegal Name: Alphabet Inc.\nSector: Technology\nIndustry Group: Internet Information Providers\nAddress: 1600 AMPHITHEATRE PARKWAY, MOUNTAIN VIEW, CA 94043\nPhone Number: 650-253-0000\nCompany URL: abc.xyz\nStock Price: 947.85'),
(38, 'user7', 'OK Bot show me stock related info about AAPL'),
(39, 'bot', 'Ohok, Working on it......'),
(40, 'bot', '\nShowing Info about: AAPL\nLegal Name: APPLE INC\nSector: Consumer Goods\nIndustry Group: Electronic Equipment\nAddress: ONE INFINITE LOOP, CUPERTINO, CA 95014\nPhone Number: (408) 996-1010\nCompany URL: www.apple.com\nStock Price: 152.06'),
(41, 'user7', 'OK Bot show me stock related info about GE'),
(42, 'bot', 'Ohok, Working on it......'),
(43, 'bot', '\nShowing Info about: GE\nLegal Name: GENERAL ELECTRIC CO\nSector: Industrial Goods\nIndustry Group: Diversified Machinery\nAddress: 41 FARNSWORTH STREET, BOSTON, MA 02210\nPhone Number: 617-443-3000\nCompany URL: www.ge.com\nStock Price: 27.47'),
(44, 'user7', 'OK Bot define a project '),
(45, 'bot', 'Alright, what''s the name of the project?'),
(46, 'user7', 'project1'),
(47, 'bot', 'Ohok, working on it....'),
(48, 'bot', 'Success: New Project project1 is now online!'),
(49, 'user7', 'OK Bot commit an issue'),
(50, 'bot', '... To which project?'),
(51, 'user7', 'project1'),
(52, 'bot', 'Ohok, working on it....'),
(53, 'bot', 'Okay, Now type down the text for new Issue.'),
(54, 'user7', 'first issue'),
(55, 'bot', 'Success: Issue commited to project1'),
(56, 'user7', 'OK Bot display the latest commit of project1'),
(57, 'bot', 'Ohok, working on it....'),
(58, 'bot', 'Issue #2\nDescription: first issue\nIssued by: user7\nDate and Time: 2017-05-19 00:16:52\n');

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
-- Table structure for table `team8`
--

CREATE TABLE `team8` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team8`
--

INSERT INTO `team8` (`id`, `sender`, `message`) VALUES
(1, 'user1', 'OK Bot'),
(2, 'bot', 'Hey there, user1 How can I help you?'),
(3, 'user1', 'OK Bot sjas'),
(4, 'bot', 'Sorry, I don''t understand.'),
(5, 'user1', 'OK Bot show me some news'),
(6, 'bot', 'Sorry, I don''t understand.'),
(7, 'user1', 'OK Bot show me some news'),
(8, 'bot', 'Ohok, Working on it......'),
(9, 'user1', 'OK Bot show me some news'),
(10, 'bot', 'Ohok, Working on it......'),
(11, 'bot', 'Here you go\nTitle: ''BA boss ''won''t resign'' over flight chaos''\nDescription: Chief executive Alex Cruz says flight disruption at Heathrow and Gatwick had nothing to do with cost cutting.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40083778\nPublished on: T14:54:54 00:00\n\nTitle: ''Hamerton Zoo evacuated after ''serious incident''''\nDescription: A zoo is evacuated following a "serious incident" but no animals have escaped, police confirm.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-england-cambridgeshire-40084713\nPublished on: T16:12:50 00:00\n\nTitle: ''Tiger Woods held on drink-driving charge''\nDescription: Golf star Tiger Woods is arrested on a drink-driving charge in Florida, police say.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/world-us-canada-40087317\nPublished on: T16:23:45 00:00\n\nTitle: ''Manchester attack: CCTV appears to show bomber shopping hours before explosion''\nDescription: Footage emerges appearing to show Salman Abedi in a Manchester shop a day before the bombing.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/av/uk-40082292/manchester-attack-cctv-appears-to-show-bomber-shopping-hours-before-explosion\nPublished on: T15:00:17 00:00\n\nTitle: ''Manchester attacks: Police issue new bomber photo''\nDescription: Officers want to hear from anyone who might have seen Salman Abedi carrying the blue suitcase.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40086352\nPublished on: T16:41:10 00:00\n\nTitle: ''Former Blue Peter presenter John Noakes dies at 83''\nDescription: The TV show''s longest-serving presenter was a favourite with viewers in the 1960s and 70s.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/entertainment-arts-40083025\nPublished on: T12:42:47 00:00\n'),
(12, 'user1', 'OK Bot show me some news'),
(13, 'bot', 'Ohok, Working on it......'),
(14, 'bot', 'Here you go\nTitle: ''BA boss ''won''t resign'' over flight chaos''\nDescription: Chief executive Alex Cruz says flight disruption at Heathrow and Gatwick had nothing to do with cost cutting.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40083778\nPublished on: 2017-05-29\n\nTitle: ''Hamerton Zoo evacuated after ''serious incident''''\nDescription: A zoo is evacuated following a "serious incident" but no animals have escaped, police confirm.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-england-cambridgeshire-40084713\nPublished on: 2017-05-29\n\nTitle: ''Tiger Woods held on drink-driving charge''\nDescription: Golf star Tiger Woods is arrested on a drink-driving charge in Florida, police say.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/world-us-canada-40087317\nPublished on: 2017-05-29\n\nTitle: ''Manchester attack: CCTV appears to show bomber shopping hours before explosion''\nDescription: Footage emerges appearing to show Salman Abedi in a Manchester shop a day before the bombing.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/av/uk-40082292/manchester-attack-cctv-appears-to-show-bomber-shopping-hours-before-explosion\nPublished on: 2017-05-29\n\nTitle: ''Manchester attacks: Police issue new bomber photo''\nDescription: Officers want to hear from anyone who might have seen Salman Abedi carrying the blue suitcase.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/uk-40086352\nPublished on: 2017-05-29\n\nTitle: ''Former Blue Peter presenter John Noakes dies at 83''\nDescription: The TV show''s longest-serving presenter was a favourite with viewers in the 1960s and 70s.\nAuthor: BBC News\nMore info: http://www.bbc.co.uk/news/entertainment-arts-40083025\nPublished on: 2017-05-29\n');

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
(12, 'user1', 'team8', '32de5be683a5f413ee47f4868cdd40ac');

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
(8, 'user7', 'user7@user7.com', 'c42118712e96bc41c105d69495b63de2');

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
-- Indexes for table `team8`
--
ALTER TABLE `team8`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
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
-- AUTO_INCREMENT for table `team8`
--
ALTER TABLE `team8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
