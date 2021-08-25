-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2021 a las 17:41:50
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uldivine_database`
--

create DATABASE uldivin_database;
use uldivin_database;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_description`) VALUES
(4, 'finance sciences', 'all topics related to finance and economy like making double decker chocolate cake and how to end the world in 3 days'),
(5, 'gardening', 'different gardening techniques used to torture helpless victims and make them dream of attending horrible opera performances'),
(8, 'sad', 'sadsadsadsad'),
(9, 'Technical Difficulties', 'Issues and debates related to immediate actions which must be taken on event of a serious butthurt'),
(13, 'aaa', 'aaaaaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation`
--

CREATE TABLE `conversation` (
  `id` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conversation`
--

INSERT INTO `conversation` (`id`, `user_one`, `user_two`) VALUES
(15, 24, 30),
(16, 24, 25),
(17, 25, 30),
(18, 24, 26),
(19, 25, 27),
(21, 24, 29),
(22, 24, 31),
(23, 37, 24),
(24, 37, 35),
(25, 36, 24),
(26, 37, 26),
(27, 26, 25),
(28, 35, 24),
(29, 38, 36),
(30, 38, 35),
(31, 24, 38),
(32, 39, 35),
(33, 40, 24),
(34, 40, 25),
(35, 40, 26),
(36, 40, 27),
(37, 40, 29),
(38, 40, 30),
(39, 40, 31),
(40, 40, 39),
(41, 40, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_from`, `user_to`, `message`) VALUES
(2, 15, 24, 30, 'mmm'),
(3, 15, 30, 24, 'hello'),
(4, 15, 24, 30, 'aaa'),
(5, 15, 24, 30, 'hello there'),
(6, 15, 24, 30, 'a'),
(7, 16, 24, 25, 'hey there buddy'),
(8, 16, 24, 25, 'how ya doing?'),
(9, 16, 25, 24, 'doing fine bro'),
(10, 16, 25, 24, 'why havent you died yet'),
(11, 16, 24, 25, 'dasd as das das das'),
(12, 16, 25, 24, 'das das das'),
(13, 16, 24, 25, 'fuck off'),
(14, 16, 25, 24, 'you too ;}'),
(15, 16, 25, 24, ':]'),
(16, 16, 24, 25, 'dont be aa burden'),
(17, 16, 25, 24, ':)'),
(18, 16, 25, 24, 'no'),
(19, 16, 25, 24, 'be your own burden'),
(20, 16, 24, 25, 'yea i make my ownn burden'),
(21, 16, 25, 24, 'being bese-8b be like'),
(22, 16, 24, 25, 'aa'),
(23, 16, 25, 24, 'Hey there!'),
(24, 16, 24, 25, 'fuck off'),
(25, 16, 25, 24, 'ok, bye'),
(26, 16, 25, 24, 'You told me to fuck off, so I\\\'m going now'),
(27, 16, 24, 25, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(28, 16, 25, 24, 'aaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(29, 16, 24, 25, 'aaaaaaaaaaaaaaaaa'),
(30, 16, 25, 24, 'aaaaaaaaaaaaaaaa'),
(31, 16, 25, 24, 'hhhh'),
(32, 16, 25, 24, 'f off raveed'),
(33, 16, 24, 25, 'aaaaaaaaaaaaaaa'),
(34, 16, 24, 25, 'a'),
(35, 16, 24, 25, 'a'),
(36, 16, 24, 25, 'a'),
(37, 16, 25, 24, 'a'),
(38, 16, 25, 24, 'a'),
(39, 16, 24, 25, 'sasas'),
(40, 16, 24, 25, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(41, 16, 24, 25, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(42, 16, 24, 25, 'dsadas dsa'),
(43, 16, 24, 25, 'get lost'),
(44, 16, 24, 25, 'sdasd dssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),
(45, 16, 24, 25, 'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),
(46, 16, 24, 25, 'asdasdasd'),
(47, 16, 24, 25, 'asdasdasd'),
(48, 16, 24, 25, 'hey'),
(49, 22, 24, 31, 'hello?'),
(50, 16, 24, 25, 'oye'),
(51, 16, 24, 25, 'hello'),
(52, 23, 37, 24, 'wassup ma nigga'),
(53, 24, 37, 35, 'fuck u'),
(54, 24, 37, 35, 'fuck u'),
(55, 23, 24, 37, 'fuck you'),
(56, 25, 36, 24, 'soora'),
(57, 25, 24, 36, 'dalla'),
(58, 24, 35, 37, 'Please don\\\'t send offending messages'),
(59, 28, 35, 24, 'Hi there!'),
(60, 28, 35, 24, 'You ready for the presentation?'),
(61, 28, 24, 35, 'hello'),
(62, 30, 38, 35, 'hello'),
(63, 30, 35, 38, 'heyyy'),
(64, 30, 35, 38, 'heyyy'),
(65, 30, 35, 38, 'heyyy'),
(66, 30, 35, 38, 'heyyy'),
(67, 25, 24, 36, 'oye'),
(68, 25, 24, 36, 'i have something important to tell you'),
(69, 25, 24, 36, 'i have something important to tell you'),
(70, 31, 24, 38, 'hey'),
(71, 31, 24, 38, 'hello?'),
(72, 32, 39, 35, 'hello'),
(73, 28, 24, 35, 'nah man, im too nervous'),
(74, 33, 40, 24, 'hola'),
(75, 33, 24, 40, 'hllo'),
(76, 41, 40, 33, 'hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` int(8) NOT NULL,
  `post_by` int(8) NOT NULL,
  `post_votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`post_id`, `post_content`, `post_date`, `post_topic`, `post_by`, `post_votes`) VALUES
(82, 'qqqqq', '2018-11-19 16:03:59', 31, 26, 1),
(83, 'qqqqq', '2018-11-19 16:05:30', 31, 26, 1),
(84, 'go away', '2018-11-19 16:06:36', 31, 24, 1),
(85, 'fuck off', '2018-11-19 16:07:03', 31, 25, 1),
(86, 'yo wtf u niggas doing?\r\n', '2018-11-19 19:59:17', 31, 27, 0),
(87, 'im bored tf am i supposed to do?', '2018-11-21 16:04:52', 35, 25, 0),
(89, ' hj bjhb hj nj b j njn jjnsgjnfj ngjf ngjf ngjfn gdjf ngdjn gfdngjdn gjdfng djf gjdfn gjdjf gjd gjdf ngjdn fgjndjf gjdf ngjd fngjndfjg djf gjdf gjdfjgndjfnd gjdnfgjdfj gdjf gjdf gjdfjg dj gjd gjdjg jd gjdjg ndj gjdfn gjdnfj gndjf ngjd n', '2018-11-21 16:06:35', 31, 25, 1),
(94, 'chup kar gashti', '2018-11-28 18:02:58', 31, 29, 1),
(95, 'ami g ami g\r\n', '2018-11-30 14:19:52', 31, 29, 1),
(98, 'a', '2018-12-01 21:06:57', 31, 27, 0),
(100, 'hello people how are you all doing i hope ure doing well. if so, please kill yourself right now this is a matter of urgency we have to control the world population. this is a great cause and its an honor for all of u that u will die for such a great cause <br>', '2018-12-16 12:09:28', 31, 24, 2),
(101, 'i have a serious butthurt somebody pls help ;_;', '2018-12-16 21:59:22', 36, 24, 1),
(104, 'how would i know', '2018-12-17 22:03:29', 32, 24, 1),
(105, 'qqqqqqqqqqqqqq', '2018-12-17 22:27:00', 39, 24, 0),
(107, 'aa', '2018-12-17 22:44:48', 41, 24, 0),
(108, 'sdadadsadad', '2018-12-20 13:39:57', 31, 24, 1),
(109, 'Im stuck at database project. Need help ! Cant create a schema in SQL.', '2018-12-24 11:57:29', 42, 36, -2),
(110, 'Can anyone please tell me how to debug my C++ code?', '2018-12-24 12:04:30', 43, 35, -2),
(111, 'G O O G L E it, ure welcome', '2018-12-24 12:06:16', 43, 24, 0),
(112, 'Have you tried downloading some more RAM?', '2018-12-24 12:07:33', 43, 37, 1),
(113, 'What do libraries do? Allow you to read books in your code? Or embed books in your code?', '2018-12-24 12:11:09', 44, 35, -2),
(114, 'pls die', '2018-12-24 12:13:37', 44, 37, 3),
(115, 'Pewdiepie >>>>> T-series', '2018-12-24 12:41:02', 44, 36, 2),
(116, '\"It\'s okay if you\'re not made for coding\" - Sir Faisal Shafait', '2018-12-24 12:43:48', 43, 36, 0),
(117, 'SUBSCRIBE TO T SERIES!!', '2018-12-24 12:58:21', 44, 24, 1),
(118, 'hello', '2018-12-24 15:37:17', 44, 38, 1),
(119, 'hey', '2018-12-25 22:26:12', 44, 24, 1),
(120, 'we need to summon the magic cat to answer this question', '2018-12-27 18:01:51', 42, 24, 0),
(121, 'hello', '2018-12-28 18:01:24', 44, 24, 1),
(122, 'hey\r\n', '2018-12-31 19:54:09', 31, 24, 1),
(123, 'asdasd', '2021-08-19 11:51:29', 44, 24, 0),
(124, 'como es la finacioacion', '2021-08-19 13:00:09', 45, 40, 0),
(125, 'asdasjgdjhashgdahsgdas', '2021-08-23 20:16:42', 46, 24, 0),
(126, 'asdaskjdas', '2021-08-23 20:47:02', 46, 24, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postvotes`
--

CREATE TABLE `postvotes` (
  `voteId` int(11) NOT NULL,
  `votePost` int(11) NOT NULL,
  `voteBy` int(11) NOT NULL,
  `voteDate` date NOT NULL,
  `vote` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `postvotes`
--

INSERT INTO `postvotes` (`voteId`, `votePost`, `voteBy`, `voteDate`, `vote`) VALUES
(1, 89, 24, '2018-12-15', 1),
(2, 82, 24, '2018-12-17', 1),
(3, 100, 24, '2018-12-16', 1),
(4, 82, 25, '2018-12-16', -1),
(5, 100, 25, '2018-12-16', 1),
(6, 94, 25, '2018-12-16', 1),
(7, 101, 24, '2018-12-20', 1),
(8, 104, 37, '2018-12-24', 1),
(9, 110, 24, '2018-12-24', -1),
(10, 109, 37, '2018-12-24', -1),
(11, 110, 37, '2018-12-24', -1),
(12, 113, 37, '2018-12-24', -1),
(13, 114, 37, '2018-12-24', 1),
(14, 114, 35, '2018-12-24', 1),
(15, 112, 24, '2018-12-24', 1),
(16, 82, 36, '2018-12-24', 1),
(17, 115, 24, '2018-12-27', 1),
(18, 113, 36, '2018-12-24', -1),
(19, 115, 36, '2018-12-24', 1),
(20, 113, 38, '2018-12-24', 1),
(21, 113, 24, '2018-12-25', -1),
(22, 114, 24, '2018-12-25', 1),
(23, 118, 24, '2018-12-27', 1),
(24, 119, 24, '2018-12-27', 1),
(25, 117, 24, '2018-12-27', 1),
(26, 109, 24, '2018-12-27', -1),
(27, 121, 24, '2018-12-28', 1),
(28, 83, 24, '2018-12-31', 1),
(29, 84, 24, '2018-12-31', 1),
(30, 85, 24, '2018-12-31', 1),
(31, 95, 24, '2018-12-31', 1),
(32, 108, 24, '2018-12-31', 1),
(33, 122, 24, '2018-12-31', 1);

--
-- Disparadores `postvotes`
--
DELIMITER $$
CREATE TRIGGER `calc_forum_votes_after_delete` AFTER DELETE ON `postvotes` FOR EACH ROW BEGIN

		update posts
        set posts.post_votes = posts.post_votes - old.vote
        where posts.post_id = old.votePost;	

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calc_forum_votes_after_insert` AFTER INSERT ON `postvotes` FOR EACH ROW BEGIN
	
	update posts
        set posts.post_votes = posts.post_votes + new.vote
        where posts.post_id = new.votePost;	
		
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calc_forum_votes_after_update` AFTER UPDATE ON `postvotes` FOR EACH ROW BEGIN
	
		update posts
        set posts.post_votes = posts.post_votes + (new.vote * 2)
        where posts.post_id = new.votePost;	
		
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pwdreset`
--

INSERT INTO `pwdreset` (`pwdResetId`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(1, 'owaisrehman110@gmail.com', '73abf7a3e5e48bce', '$2y$10$9ytyvfXk8gb8gRzVfRglwevJBy6o46WDrp2ncNj58Y8sjWM4iNSTi', '1543912151'),
(2, '', '459ea1feb0d537ee', '$2y$10$jlC8JTnnikaZ7.4g4UMIHeIlqgJfe3iA4OFlruh5OQNtWVf1FfZqi', '1545078648'),
(4, 'asd@as.asd', 'fb72aeade725bc83', '$2y$10$HTEtmrlaWZpcspmoFAa90Owrd5V4UDorSyWapnRzGOjqxFkHKTexC', '1545079924'),
(5, 'a@a.a', '4c5a0e6dcd3aa696', '$2y$10$R6lxGNFwcrf0t3/onGFqseQNxzrYzsimBUU23k7XKUONE3rUZaTrm', '1545079978'),
(11, 'muhammadsaad.crytek@gmail.com', '34219d525a406a67', '$2y$10$TK.dVQ7B3Ulq95R.dCUdY.YLYAPOJBX8HDUiJW4CmEutkqg63BFQi', '1545915863'),
(12, 'pureliquid1999@gmail.com', '74e3d2f2db2cb3e3', '$2y$10$uB4kDEYHvlLk13irN3A/dOL7t6h.i6GKW8eXKZ3v2azUnlABXl.NW', '1545915911'),
(13, 'ms.merium.fatima@gmail.com', '62564c5e753b0ad3', '$2y$10$xBW5MsGZMevV8her23zBz.2qsJrWuLgtb.ThBiyUssPsy9tioShmi', '1546003625');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(8) NOT NULL,
  `topic_subject` varchar(255) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_cat` int(8) NOT NULL,
  `topic_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_subject`, `topic_date`, `topic_cat`, `topic_by`) VALUES
(31, 'how to plant a nuclear bomb', '2018-11-18 11:13:00', 5, 24),
(32, 'how to kill myself', '2018-11-18 11:22:59', 5, 24),
(35, 'lol', '2018-11-21 16:04:52', 5, 25),
(36, 'how to drink tea', '2018-12-16 21:59:22', 9, 24),
(39, 'qqqqqqqqqqqqqqq', '2018-12-17 22:27:00', 8, 24),
(41, 'aa', '2018-12-17 22:44:48', 5, 24),
(42, 'Help in SQL', '2018-12-24 11:57:29', 9, 36),
(43, 'Debugging', '2018-12-24 12:04:30', 9, 35),
(44, 'Libraries', '2018-12-24 12:11:09', 9, 35),
(45, 'forum', '2021-08-19 13:00:09', 4, 40),
(46, 'new foro', '2021-08-23 20:16:42', 5, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `userLevel` int(11) NOT NULL DEFAULT 0,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `gender` char(1) NOT NULL,
  `headline` varchar(500) DEFAULT NULL,
  `bio` varchar(4000) DEFAULT NULL,
  `userImg` varchar(500) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idUsers`, `userLevel`, `f_name`, `l_name`, `uidUsers`, `emailUsers`, `pwdUsers`, `gender`, `headline`, `bio`, `userImg`) VALUES
(24, 1, 'Crazy', 'Programmer', 'saad', 'muhammadsaad.crytek@gmail.com', '$2y$10$NlmqH7ELe9VUFwLqWuFcv.2Js/8jJ36Jga3KWYvXFuaaQN4CzaEtO', 'm', 'CEO of Google and Tesla (Elon is my wife)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '5c2268b62fa342.98640611.jpg'),
(25, 0, '', '', 'sadcat', 'a@a.a', '$2y$10$RiiU91TqjjVhPdVpypQBtuq0etClplrZ3HNTLPFrUheJ.sy7ZifwK', 'f', '', '', '5bf28f767563d4.32287587.jpg'),
(26, 0, '', '', 'crazyblogger', 'aaa@gmail.com', '$2y$10$zXwVteLyKxjwSMDk.a8/HeoYzmfFInzvftURiCyt27z03mgbdkSNy', 'm', '', '', '5c2097e915f3e7.13501262.jpg'),
(27, 0, '', '', 'vegetapoopoo', 'asd@asd.asd', '$2y$10$S4X2HZUWyQXV7zLwirj2dOBVEbDHFDhsX6y91asglNa6QBnlq9ik.', 'f', '', '', '5bf2ebf077fb14.69408796.gif'),
(29, 0, '', '', 'yhamster', 'anas.tasadduq@gmail.com', '$2y$10$j5scT2dgJuZGBBYBFRsKVe.n50dLCjdYvcpY1Vy1.jES8f6ojulAi', 'm', '', '', '5c03ad0de59709.45156405.jpg'),
(30, 0, '', '', 'Owais', 'owaisrehman110@gmail.com', '$2y$10$EM.p1ed./gfrenQRn5Je1etujHptdTebKy8fgDU0de1wGqQvOOCcK', 'm', '', '', 'default.png'),
(31, 0, '', '', 'constipated', 'was@was.was', '$2y$10$BnAjjEdfYa0koUab7jB2wuK/Hw5PEoRHMsIjuPOgFDK3umLLPnE2a', 'm', '', '                                Tell people about yourself\r\n                            ', '5c2099a0e98e21.69993944.jpg'),
(32, 0, 'burhan', 'ahmed', 'progamer', 'qq@qq.qq', '$2y$10$9RwEOoQi4i7BHcVuN9sihOQ156yAqPOi1/cGayAc83glZMUJ8B702', 'f', 'what to do with myself', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '5c1b521a779e33.90465765.jpg'),
(33, 0, 'soSaad', 'Seriously', 'sad', 'sad@sad.sad', '$2y$10$MgXJs2KXFHDywcokNF.Ya.FubCPFkCV5WhvpzyDw7KioB.hImzjpS', 'm', '', '', '5c1e837c23fbd4.49025477.jpg'),
(34, 0, 'aass', 'aass', 'designer', 'sss@sss.sss', '$2y$10$a/DczAbcWogc9E.QVtQ27uaIaQKIY.qi.d7OSyOI/XHT.g.DCF0XG', 'f', 'hallo hallo', 'pls go die, seriously', '5c20049a28f083.62453939.jpg'),
(35, 0, 'Anas', 'Tasadduq', 'aitasadduq', 'atasadduq.bese17seecs@seecs.edu.pk', '$2y$10$mE..r1B9evnZeZ03CRmChO6hOCzWyzSOiciIjvYynq4atCtWBZtfy', 'm', 'I\'m great!', 'I don\'t really want to tell much about myself...', '5c207f31c827d2.61541321.jpg'),
(36, 0, 'Ubaid', 'Asim', 'UbaidAsim', 'ubaidasim514@gmail.com', '$2y$10$mJY/nezYA6PXFy0t.xXMyuVQOAdLi5I/ag.SWwUVFvHkZGcfqwd3S', 'm', 'Freelance Graphics and Brand Designer, Social Media Strategist', 'Software Engineering Student at SEECS, NUST', '5c207f7341e066.29286370.jpg'),
(37, 0, 'Syed', 'Kamal', 'syedanaskamal', 'syedanaskamal@gmail.com', '$2y$10$.fUUvM3BoaCPV9Blp8CobONwQpI1r6kSUnts.QTm3a9Yovo5le.N6', 'm', 'wassup', 'no', 'default.png'),
(38, 0, '', '', 'testuser', 'testuser@test.com', '$2y$10$80YI6fiwFyOLHhn4CIOG/.xSAmkvG1L12LHGXjlNMdjwxeQCx/GNy', 'm', '', '', '5c20b68db30f81.29224418.jpg'),
(39, 0, '', '', 'marium', 'ms.merium.fatima@gmail.com', '$2y$10$l0AOTRif1CfL7pONxdOxHuyg4worYd4yagtUcom9u/LPeQs6n4ZN2', 'f', '', '', 'default.png'),
(40, 1, 'max', 'yoe', 'max', 'max@mail.com', '$2y$10$HSu7apTuzabNiOERckz8reEYc1V4E4dQ/85P5qFG6jFUjxfOA4pZG', 'm', '', '', 'default.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name_unique` (`cat_name`);

--
-- Indices de la tabla `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_one` (`user_one`),
  ADD KEY `user_two` (`user_two`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_from` (`user_from`),
  ADD KEY `user_to` (`user_to`),
  ADD KEY `conversation_id` (`conversation_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_topic` (`post_topic`),
  ADD KEY `post_by` (`post_by`);

--
-- Indices de la tabla `postvotes`
--
ALTER TABLE `postvotes`
  ADD PRIMARY KEY (`voteId`),
  ADD KEY `voteBy` (`voteBy`);

--
-- Indices de la tabla `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indices de la tabla `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `topic_cat` (`topic_cat`),
  ADD KEY `topic_by` (`topic_by`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `postvotes`
--
ALTER TABLE `postvotes`
  MODIFY `voteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conversation`
--
ALTER TABLE `conversation`
  ADD CONSTRAINT `conversation_ibfk_1` FOREIGN KEY (`user_one`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conversation_ibfk_2` FOREIGN KEY (`user_two`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_from`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_to`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_by`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `postvotes`
--
ALTER TABLE `postvotes`
  ADD CONSTRAINT `postvotes_ibfk_1` FOREIGN KEY (`voteBy`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`topic_by`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
