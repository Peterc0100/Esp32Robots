-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2024 at 11:56 AM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Robots`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actions`
--

CREATE TABLE `Actions` (
  `id` int(11) NOT NULL,
  `commandid` int(11) NOT NULL,
  `robot` char(18) NOT NULL,
  `eventdt` datetime NOT NULL,
  `actiondt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Actions`
--

INSERT INTO `Actions` (`id`, `commandid`, `robot`, `eventdt`, `actiondt`) VALUES
(1, 129, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:00'),
(3, 116, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:27:24'),
(4, 137, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:05'),
(6, 118, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:27:24'),
(7, 131, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:09'),
(9, 116, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:27:24'),
(10, 127, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:13'),
(12, 117, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:27:24'),
(13, 134, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:18'),
(15, 109, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:27:24'),
(16, 137, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:22'),
(18, 118, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:27:24'),
(19, 140, 'Vernie', '2023-05-09 11:17:46', '2024-02-20 11:13:26'),
(21, 116, 'Dippie3', '2023-05-09 11:17:46', '2024-02-19 14:30:41'),
(22, 113, 'Dippie3', '2024-02-16 11:07:52', '2024-02-20 11:13:28'),
(23, 114, 'Dippie3', '2024-02-16 11:08:57', '2024-02-20 11:13:33'),
(24, 115, 'Dippie3', '2024-02-16 11:09:39', '2024-02-20 11:13:37'),
(25, 113, 'Dippie3', '2024-02-16 11:24:46', '2024-02-20 11:13:41'),
(26, 114, 'Dippie3', '2024-02-16 11:25:05', '2024-02-20 11:13:45'),
(27, 115, 'Dippie3', '2024-02-16 11:25:23', '2024-02-20 11:13:50'),
(28, 113, 'Dippie3', '2024-02-16 11:26:02', '2024-02-20 11:13:54'),
(29, 114, 'Dippie3', '2024-02-16 11:26:28', '2024-02-20 11:13:58'),
(30, 115, 'Dippie3', '2024-02-16 11:26:38', '2024-02-20 11:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `Action` varchar(64) NOT NULL,
  `Description` varchar(64) NOT NULL,
  `Robot` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commands`
--

INSERT INTO `commands` (`id`, `Action`, `Description`, `Robot`) VALUES
(1, '06,01,;', 'tbc', 'mippie'),
(2, '06,02,;', 'ACTION_BURPING', 'mippie'),
(3, '06,03,;', 'ACTION_DRINKING', 'mippie'),
(4, '06,04,;', 'ACTION_EATING', 'mippie'),
(5, '06,05,;', 'ACTION_FARTING_SHORT', 'mippie'),
(6, '06,06,;', 'ACTION_OUT_OF_BREATH', 'mippie'),
(7, '06,07,;', 'BOXING_PUNCHCONNECT_1', 'mippie'),
(8, '06,08,;', 'BOXING_PUNCHCONNECT_2', 'mippie'),
(9, '06,09,;', 'BOXING_PUNCHCONNECT_3', 'mippie'),
(10, '06,10,;', 'FREESTYLE_TRACKING_1', 'mippie'),
(11, '06,11,;', 'MIP_1', 'mippie'),
(12, '06,12,;', 'MIP_2', 'mippie'),
(13, '06,13,;', 'MIP_3', 'mippie'),
(14, '06,14,;', 'MIP_APP', 'mippie'),
(15, '06,15,;', 'MIP_AWWW', 'mippie'),
(16, '06,16,;', 'MIP_BIG_SHOT', 'mippie'),
(17, '06,17,;', 'MIP_BLEH', 'mippie'),
(18, '06,18,;', 'MIP_BOOM', 'mippie'),
(19, '06,19,;', 'MIP_BYE', 'mippie'),
(20, '06,20,;', 'MIP_CONVERSE_1', 'mippie'),
(21, '06,21,;', 'MIP_CONVERSE_2', 'mippie'),
(22, '06,22,;', 'MIP_DROP', 'mippie'),
(23, '06,23,;', 'MIP_DUNNO', 'mippie'),
(24, '06,24,;', 'MIP_FALL_OVER_1', 'mippie'),
(25, '06,25,;', 'MIP_FALL_OVER_2', 'mippie'),
(26, '06,26,;', 'MIP_FIGHT', 'mippie'),
(27, '06,27,;', 'MIP_GAME', 'mippie'),
(28, '06,28,;', 'MIP_GLOAT', 'mippie'),
(29, '06,29,;', 'MIP_GO', 'mippie'),
(30, '06,30,;', 'MIP_GOGOGO', 'mippie'),
(31, '06,31,;', 'MIP_GRUNT_1', 'mippie'),
(32, '06,32,;', 'MIP_GRUNT_2', 'mippie'),
(33, '06,33,;', 'MIP_GRUNT_3', 'mippie'),
(34, '06,34,;', 'MIP_HAHA_GOT_IT', 'mippie'),
(35, '06,35,;', 'MIP_HI_CONFIDENT', 'mippie'),
(36, '06,36,;', 'MIP_HI_NOT_SURE', 'mippie'),
(37, '06,37,;', 'MIP_HI_SCARED', 'mippie'),
(38, '06,38,;', 'MIP_HUH', 'mippie'),
(39, '06,39,;', 'MIP_HUMMING_1', 'mippie'),
(40, '06,40,;', 'MIP_HUMMING_2', 'mippie'),
(41, '06,41,;', 'MIP_HURT', 'mippie'),
(42, '06,42,;', 'MIP_HUUURGH', 'mippie'),
(43, '06,43,;', 'MIP_IN_LOVE', 'mippie'),
(44, '06,44,;', 'MIP_IT', 'mippie'),
(45, '06,45,;', 'MIP_JOKE', 'mippie'),
(46, '06,46,;', 'MIP_K', 'mippie'),
(47, '06,47,;', 'MIP_LOOP_1', 'mippie'),
(48, '06,48,;', 'MIP_LOOP_2', 'mippie'),
(49, '06,49,;', 'MIP_LOW_BATTERY', 'mippie'),
(50, '06,50,;', 'MIP_MIPPEE', 'mippie'),
(51, '06,51,;', 'MIP_MORE', 'mippie'),
(52, '06,52,;', 'MIP_MUAH_HA', 'mippie'),
(53, '06,53,;', 'MIP_MUSIC', 'mippie'),
(54, '06,54,;', 'MIP_OBSTACLE', 'mippie'),
(55, '06,55,;', 'MIP_OHOH', 'mippie'),
(56, '06,56,;', 'MIP_OH_YEAH', 'mippie'),
(57, '06,57,;', 'MIP_OOPSIE', 'mippie'),
(58, '06,58,;', 'MIP_OUCH_1', 'mippie'),
(59, '06,59,;', 'MIP_OUCH_2', 'mippie'),
(60, '06,60,;', 'MIP_PLAY', 'mippie'),
(61, '06,61,;', 'MIP_PUSH', 'mippie'),
(62, '06,62,;', 'MIP_RUN', 'mippie'),
(63, '06,63,;', 'MIP_SHAKE', 'mippie'),
(64, '06,64,;', 'MIP_SIGH', 'mippie'),
(65, '06,65,;', 'MIP_SINGING', 'mippie'),
(66, '06,66,;', 'MIP_SNEEZE', 'mippie'),
(67, '06,67,;', 'MIP_SNORE', 'mippie'),
(68, '06,68,;', 'MIP_STACK', 'mippie'),
(69, '06,69,;', 'MIP_SWIPE_1', 'mippie'),
(70, '06,70,;', 'MIP_SWIPE_2', 'mippie'),
(71, '06,71,;', 'MIP_TRICKS', 'mippie'),
(72, '06,72,;', 'MIP_TRIIICK', 'mippie'),
(73, '06,73,;', 'MIP_TRUMPET', 'mippie'),
(74, '06,74,;', 'MIP_WAAAAA', 'mippie'),
(75, '06,75,;', 'MIP_WAKEY', 'mippie'),
(76, '06,76,;', 'MIP_WHEEE', 'mippie'),
(77, '06,77,;', 'MIP_WHISTLING', 'mippie'),
(78, '06,78,;', 'MIP_WHOAH', 'mippie'),
(79, '06,79,;', 'MIP_WOO', 'mippie'),
(80, '06,80,;', 'MIP_YEAH', 'mippie'),
(81, '06,81,;', 'MIP_YEEESSS', 'mippie'),
(82, '06,82,;', 'MIP_YO', 'mippie'),
(83, '06,83,;', 'MIP_YUMMY', 'mippie'),
(84, '06,84,;', 'MOOD_ACTIVATED', 'mippie'),
(85, '06,85,;', 'MOOD_ANGRY', 'mippie'),
(86, '06,86,;', 'MOOD_ANXIOUS', 'mippie'),
(87, '06,87,;', 'MOOD_BORING', 'mippie'),
(88, '06,88,;', 'MOOD_CRANKY', 'mippie'),
(89, '06,89,;', 'MOOD_ENERGETIC', 'mippie'),
(90, '06,90,;', 'MOOD_EXCITED', 'mippie'),
(91, '06,91,;', 'MOOD_GIDDY', 'mippie'),
(92, '06,92,;', 'MOOD_GRUMPY', 'mippie'),
(93, '06,93,;', 'MOOD_HAPPY', 'mippie'),
(94, '06,94,;', 'MOOD_IDEA', 'mippie'),
(95, '06,95,;', 'MOOD_IMPATIENT', 'mippie'),
(96, '06,96,;', 'MOOD_NICE', 'mippie'),
(97, '06,97,;', 'MOOD_SAD', 'mippie'),
(98, '06,98,;', 'MOOD_SHORT', 'mippie'),
(99, '06,99,;', 'MOOD_SLEEPY', 'mippie'),
(100, '06,100,;', 'MOOD_TIRED', 'mippie'),
(101, '06,101,;', 'SOUND_BOOST', 'mippie'),
(102, '06,102,;', 'SOUND_CAGE', 'mippie'),
(103, '06,103,;', 'SOUND_GUNS', 'mippie'),
(104, '06,104,;', 'SOUND_ZINGS', 'mippie'),
(105, '113,10,20,;', 'Drive Backward speed 10 time 20 ms', 'mippie'),
(106, '114,10,20,;', 'Drive forward speed 10 time 20 ms', 'mippie'),
(107, '115,18,12,;', 'Turn Left 90 speed half speed', 'mippie'),
(108, '115,36,12,;', 'Turn Left 180 half speed', 'mippie'),
(109, '115,90,25,;', 'Turn Left circle 360 speed half speed', 'mippie'),
(110, '116,18,12,;', 'Turn right 90 speed half speed', 'mippie'),
(111, '116,36,12,', 'Turn right 180 half speed', 'mippie'),
(112, '116,72,12,;', 'Turn right circle 360 speed half speed', 'mippie'),
(113, '132,100,00,00,;', 'Chest Led Red', 'mippie'),
(114, '132,00,90,00,;', 'Chest Led Green', 'mippie'),
(115, '132,00,00,85,;', 'Chest Led Blue', 'mippie'),
(116, '137,85,00,00,25,25,;', 'Flash Red 25 onn 25 off', 'mippie'),
(117, '137,00,95,00,25,25,;', 'Flash Blue 25 on 25 off', 'mippie'),
(118, '137,00,00,95,25,25,;', 'Flash green 25 on 25 off', 'mippie'),
(119, '138,03,02,01,00,;', 'Head led 1 blink fast 2 blink slow', 'mippie'),
(120, '19,00,07,01,01,05,;', 'squeaky fart \"now your turn!\" ', 'Furby'),
(121, '19,00,07,01,01,03,;', 'huge fart \"wuagh! Cheese and crackers\" ', 'Furby'),
(122, '19,00,08,02,01,01,;', '\"so, how does make oo-nye feel?\" ', 'Furby'),
(123, '20,01,255,01,;', 'athenna green', 'Furby'),
(124, '20,255,01,01,;', 'athenna red', 'Furby'),
(125, '20,01,01,255,;', 'athenna blue', 'Furby'),
(126, '36,01,00,07,;', 'set mood excited', 'Furby'),
(127, '12,01,129,01,17,09,05,08,60,100,127,03,;', 'turn circle (edit 05,08,60 only) ', 'Vernie'),
(128, '08,00,129,50,17,81,00,00,;', 'LED Off', 'Vernie'),
(129, '09,00,129,50,17,81,00,01,;', 'LED Pink', 'Vernie'),
(130, '10,00,129,50,17,81,00,02,;', 'LED Purple', 'Vernie'),
(131, '11,00,129,50,17,81,00,03,;', 'LED Blue', 'Vernie'),
(132, '12,00,129,50,17,81,00,04,;', 'LED Light Blue', 'Vernie'),
(133, '13,00,129,50,17,81,00,05,;', 'LED Cyan', 'Vernie'),
(134, '14,00,129,50,17,81,00,06,;', 'LED Green', 'Vernie'),
(135, '15,00,129,50,17,81,00,07,;', 'LED Yellow', 'Vernie'),
(136, '16,00,129,50,17,81,00,08,;', 'LED Orange', 'Vernie'),
(137, '17,00,129,50,17,81,00,09,;', 'LED Red', 'Vernie'),
(138, '18,00,129,50,17,81,00,10,;', 'LED White', 'Vernie'),
(139, '08,02,;', 'put dippie upright', 'Dippie3'),
(140, '12,01,129,01,17,09,05,08,-65,100,127,03,;', 'turn backwards circle (edit 05,08,-65 only) ', 'Vernie'),
(141, '132,100,00,00,;', 'Chest Led Red', 'Dippie3'),
(142, '132,00,100,00,;', 'Chest Led Red', 'Dippie3'),
(143, '132,00,00,100,;', 'chesdt ', 'Dippie3');

-- --------------------------------------------------------

--
-- Table structure for table `robots`
--

CREATE TABLE `robots` (
  `Pid` int(11) NOT NULL,
  `boardaddr` varchar(18) NOT NULL,
  `board` varchar(12) NOT NULL,
  `robot` varchar(18) NOT NULL,
  `macaddr` varchar(17) NOT NULL,
  `uuids` varchar(37) NOT NULL,
  `uuidc` varchar(37) NOT NULL,
  `active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `robots`
--

INSERT INTO `robots` (`Pid`, `boardaddr`, `board`, `robot`, `macaddr`, `uuids`, `uuidc`, `active`) VALUES
(1, '99:99:99:99:99', 'esp32blue', 'Vernie******', '88:88:88:88:88:88', '00001623-1212-efde-1623-785feabcd123', '00001624-1212-efde-1623-785feabcd123', 'N'),
(2, '99:99:99:99:99', 'esp32blue', 'mippie******', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(3, '99:99:99:99:99', 'esp32blue', 'Dippie1*****', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(4, '99:99:99:99:99', 'esp32blue', 'Dippie2*****', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(5, '99:99:99:99:99', 'esp32blue', 'Dippie3*****', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'Y'),
(6, '99:99:99:99:99', 'esp32buff', 'Vernie******', '88:88:88:88:88:88', '00001623-1212-efde-1623-785feabcd123', '00001624-1212-efde-1623-785feabcd123', 'N'),
(7, '99:99:99:99:99', 'esp32buff', 'mippie    *', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(8, '99:99:99:99:99', 'esp32buff', 'Dippie1 *', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(9, '99:99:99:99:99', 'esp32buff', 'Dippie2 *', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(10, '99:99:99:99:99', 'esp32buff', 'Dippie3 *', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(11, '99:99:99:99:99', 'esp32pink', 'Vernie     *', '88:88:88:88:88:88', '00001623-1212-efde-1623-785feabcd123', '00001624-1212-efde-1623-785feabcd123', 'N'),
(12, '99:99:99:99:99', 'esp32pink', 'mippie     *', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(13, '99:99:99:99:99', 'esp32pink', 'Dippie1 *', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(14, '99:99:99:99:99', 'esp32pink', 'Dippie2*****', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(15, '99:99:99:99:99', 'esp32pink', 'Dippie3 *', '88:88:88:88:88:88', '0000ffe0-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'N'),
(16, '99:99:99:99:99', 'PI4', 'Chippie *', '00:00:00:00:00:00', '00000000-0000-0000-0000-00000000000', '00000000-0000-0000-0000-00000000000', 'N'),
(17, '99:99:99:99:99', 'PI4', 'Organ *', '00:00:00:00:00:00', '00000000-0000-0000-0000+00000000001', '00000000-0000-0000-0000+00000000001', 'N'),
(18, '99:99:99:99:99', 'nodemcu', 'Rover *', '00:00:00:00:00:00', '00000000-0000-0000-0000+00000000002', '00000000-0000-0000-0000+00000000002', 'N'),
(19, '99:99:99:99:99', 'PI4', 'Artie *', '00:00:00:00:00:00', '00000000-0000-0000-0000+00000000003', '00000000-0000-0000-0000+00000000003', 'N'),
(20, '99:99:99:99:99', 'esp32pink', 'Furby', '88:88:88:88:88:88', 'dab91435-b5a1-e29c-b041-bcd562613bde', 'dab91383-b5a1-e29c-b041-bcd562613bde', 'N'),
(21, '99:99:99:99:99', 'notknown', 'Vortex *', '88:88:88:88:88:88', '00000000-0000-0000-0000+00000000005', '00000000-0000-0000-0000+00000000005', 'N'),
(22, '99:99:99:99:99', 'notknown', 'Vector *', '88:88:88:88:88:88', '00000000-0000-0000-0000+00000000006', '00000000-0000-0000-0000+00000000006', 'N'),
(23, '99:99:99:99:99', 'PI4', 'Ollie1 *', '88:88:88:88:88:88', '22bb746f-2ba0-7554-2d6f-726568705327', '00000000-0000-0000-0000+00000000007', 'N'),
(24, '99:99:99:99:99', 'PI4', 'Ollie2 *', '88:88:88:88:88:88', '22bb746f-2ba0-7554-2d6f-726568705327', '22bb746f-2bbf-7554-2d6f-726568705327', 'N'),
(25, '99:99:99:99:99', 'PI4', 'Ollie3 *', '88:88:88:88:88:88', '22bb746f-2ba0-7554-2d6f-726568705327', '22bb746f-2bbf-7554-2d6f-726568705327', 'N'),
(26, '99:99:99:99:99', 'esp32mini', 'Dippie2*****', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'Y'),
(27, '99:99:99:99:99', 'esp32mini', 'Vernie******', '88:88:88:88:88:88', '00001623-1212-efde-1623-785feabcd123', '00001624-1212-efde-1623-785feabcd123', 'Y'),
(28, '99:99:99:99:99', 'esp32mini\n', 'mippie******', '88:88:88:88:88:88', '0000ffe5-0000-1000-8000-00805f9b34fb', '0000ffe9-0000-1000-8000-00805f9b34fb', 'Y'),
(29, '99:99:99:99:99', 'esp32blue', 'Vernie******', '88:88:88:88:88:88', '00001623-1212-efde-1623-785feabcd123', '00001624-1212-efde-1623-785feabcd123', 'Y');

-- replace 99:99 with esp32 board address 
-- replace 88:88 with board address of robot

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `robot` varchar(17) NOT NULL,
  `commandid` int(11) NOT NULL,
  `actioned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robots`
--
ALTER TABLE `robots`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
