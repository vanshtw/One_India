-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2018 at 05:58 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `booking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight_record`
--

CREATE TABLE IF NOT EXISTS `flight_record` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Flight_Name` varchar(30) DEFAULT NULL,
  `Source` varchar(5) DEFAULT NULL,
  `Destination` varchar(5) DEFAULT NULL,
  `Depart_Time` varchar(30) DEFAULT NULL,
  `Dest_Time` varchar(30) DEFAULT NULL,
  `Total_Duration` varchar(30) DEFAULT NULL,
  `Price` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `flight_record`
--

INSERT INTO `flight_record` (`id`, `Flight_Name`, `Source`, `Destination`, `Depart_Time`, `Dest_Time`, `Total_Duration`, `Price`) VALUES
(1, 'Indigo', 'DEL', 'MAA', '06:50 am', '09:40 am', '2 hrs 50 min', 'Rs 3500'),
(2, 'Indigo', 'DEL', 'BOM', '08:20 am', '10:30 am', '2 hrs 10 min', 'Rs 2800'),
(3, 'Indigo', 'DEL', 'BLR', '09:15 am', '12:00 pm', '2 hrs 45 min', 'Rs 3300'),
(4, 'Indigo', 'DEL', 'HYD', '08:15 am', '10:30 am', '2 hrs 15 min', 'Rs 3000'),
(5, 'Indigo', 'MAA', 'DEL', '09:15 pm', '11:30 pm', '2 hrs 15 min', 'Rs 3100'),
(6, 'Indigo', 'MAA', 'BOM', '09:20 pm', '11:30 pm', '2 hrs 10 min', 'Rs 2900'),
(7, 'Indigo', 'MAA', 'BLR', '10:15 pm', '01:00 am', '2 hrs 45 min', 'Rs 3400'),
(8, 'Indigo', 'MAA', 'HYD', '08:20 pm', '10:35 pm', '2 hrs 15 min', 'Rs 3100'),
(9, 'Indigo', 'BOM', 'DEL', '08:20 pm', '10:30 pm', '2 hrs 10 min', 'Rs 2900'),
(10, 'Indigo', 'BOM', 'MAA', '09:20 am', '11:30 am', '2 hrs 10 min', 'Rs 2800'),
(11, 'Indigo', 'BOM', 'BLR', '04:15 pm', '07:00 pm', '2 hrs 45 min', 'Rs 3400'),
(12, 'Indigo', 'BOM', 'HYD', '06:20 pm', '08:35 pm', '2 hrs 15 min', 'Rs 3200'),
(13, 'Indigo', 'BLR', 'DEL', '09:15 pm', '12:00 am', '2 hrs 45 min', 'Rs 2900'),
(14, 'Indigo', 'BLR', 'MAA', '11:15 am', '02:00 pm', '2 hrs 45 min', 'Rs 3600'),
(15, 'Indigo', 'BLR', 'BOM', '04:35 am', '07:20 am', '2 hrs 45 min', 'Rs 3100'),
(16, 'Indigo', 'BLR', 'HYD', '06:25 pm', '09:20 pm', '2 hrs 55 min', 'Rs 3000'),
(17, 'Indigo', 'HYD', 'DEL', '08:20 pm', '10:30 pm', '2 hrs 10 min', 'Rs 3200'),
(18, 'Indigo', 'HYD', 'MAA', '08:20 am', '10:45 am', '2 hrs 25 min', 'Rs 3200'),
(19, 'Indigo', 'HYD', 'BOM', '05:20 pm', '07:30 pm', '2 hrs 10 min', 'Rs 3300'),
(20, 'Indigo', 'HYD', 'BLR', '02:25 am', '05:00 am', '2 hrs 45 min', 'Rs 2600'),
(21, 'SpiceJet', 'DEL', 'MAA', '06:55 am', '09:45 am', '2 hrs 50 min', 'Rs 3400'),
(22, 'SpiceJet', 'DEL', 'BOM', '08:25 am', '10:35 am', '2 hrs 10 min', 'Rs 2700'),
(23, 'SpiceJet', 'DEL', 'BLR', '09:25 am', '12:10 pm', '2 hrs 45 min', 'Rs 3200'),
(24, 'SpiceJet', 'DEL', 'HYD', '08:25 am', '10:40 am', '2 hrs 15 min', 'Rs 2900'),
(25, 'SpiceJet', 'MAA', 'DEL', '09:25 pm', '11:40 pm', '2 hrs 15 min', 'Rs 3000'),
(26, 'SpiceJet', 'MAA', 'BOM', '09:30 pm', '11:40 pm', '2 hrs 10 min', 'Rs 2800'),
(27, 'SpiceJet', 'MAA', 'BLR', '10:25 pm', '01:10 am', '2 hrs 45 min', 'Rs 3300'),
(28, 'SpiceJet', 'MAA', 'HYD', '08:25 pm', '10:40 pm', '2 hrs 15 min', 'Rs 3000'),
(30, 'SpiceJet', 'BOM', 'DEL', '08:30 pm', '10:50 pm', '2 hrs 20 min', 'Rs 2900'),
(31, 'SpiceJet', 'BOM', 'MAA', '09:25 am', '11:20 am', '1 hrs 55 min', 'Rs 2700'),
(32, 'SpiceJet', 'BOM', 'BLR', '04:15 pm', '07:00 pm', '2 hrs 45 min', 'Rs 3300'),
(33, 'SpiceJet', 'BOM', 'HYD', '06:30 pm', '08:55 pm', '2 hrs 25 min', 'Rs 3300'),
(34, 'SpiceJet', 'BLR', 'DEL', '09:15 pm', '12:00 am', '2 hrs 45 min', 'Rs 2800'),
(35, 'SpiceJet', 'BLR', 'MAA', '11:25 am', '02:10 pm', '2 hrs 45 min', 'Rs 3500'),
(36, 'SpiceJet', 'BLR', 'BOM', '04:15 am', '07:00 am', '2 hrs 45 min', 'Rs 3000'),
(37, 'SpiceJet', 'BLR', 'HYD', '06:15 pm', '09:10 pm', '2 hrs 55 min', 'Rs 2990'),
(39, 'SpiceJet', 'HYD', 'DEL', '08:30 pm', '10:30 pm', '2 hrs 00 min', 'Rs 3100'),
(40, 'SpiceJet', 'HYD', 'MAA', '08:40 am', '10:45 am', '2 hrs 05 min', 'Rs 3000'),
(41, 'SpiceJet', 'HYD', 'BOM', '05:00 pm', '07:10 pm', '2 hrs 10 min', 'Rs 3200'),
(42, 'SpiceJet', 'HYD', 'BLR', '02:25 am', '04:50 am', '2 hrs 25 min', 'Rs 2500'),
(43, 'Air India', 'DEL', 'MAA', '06:40 am', '09:50 am', '3 hrs 10 min', 'Rs 3800'),
(44, 'Air India', 'DEL', 'BOM', '08:00 am', '10:30 am', '2 hrs 30 min', 'Rs 3000'),
(45, 'Air India', 'DEL', 'BLR', '09:05 am', '12:00 pm', '2 hrs 55 min', 'Rs 3500'),
(46, 'Air India', 'DEL', 'HYD', '08:05 am', '10:30 am', '2 hrs 25 min', 'Rs 3200'),
(47, 'Air India', 'MAA', 'DEL', '09:05 pm', '11:40 pm', '2 hrs 35 min', 'Rs 3100'),
(48, 'Air India', 'MAA', 'BOM', '09:00 pm', '11:30 pm', '2 hrs 30 min', 'Rs 3200'),
(49, 'Air India', 'MAA', 'BLR', '10:05 pm', '01:00 am', '2 hrs 55 min', 'Rs 3600'),
(50, 'Air India', 'MAA', 'HYD', '08:00 pm', '10:35 pm', '2 hrs 35 min', 'Rs 3400'),
(51, 'Air India', 'BOM', 'DEL', '08:00 pm', '10:30 pm', '2 hrs 30 min', 'Rs 3200'),
(52, 'Air India', 'BOM', 'MAA', '09:00 am', '11:30 am', '2 hrs 30 min', 'Rs 3200'),
(53, 'Air India', 'BOM', 'BLR', '04:35 pm', '07:40 pm', '3 hrs 05 min', 'Rs 3600'),
(54, 'Air India', 'BOM', 'HYD', '06:20 pm', '08:45 pm', '2 hrs 25 min', 'Rs 3400'),
(55, 'Air India', 'BLR', 'DEL', '09:15 pm', '12:10 am', '2 hrs 55 min', 'Rs 3000'),
(56, 'Air India', 'BLR', 'MAA', '11:15 am', '02:10 pm', '2 hrs 55 min', 'Rs 3800'),
(57, 'Air India', 'BLR', 'BOM', '04:35 am', '07:30 am', '2 hrs 55 min', 'Rs 3200'),
(58, 'Air India', 'BLR', 'HYD', '07:25 pm', '10:20 pm', '2 hrs 55 min', 'Rs 3200'),
(59, 'Air India', 'HYD', 'DEL', '08:20 pm', '10:45 pm', '2 hrs 25 min', 'Rs 3400'),
(60, 'Air India', 'HYD', 'MAA', '08:20 am', '10:55 am', '2 hrs 35 min', 'Rs 3300'),
(61, 'Air India', 'HYD', 'BOM', '05:20 pm', '07:40 pm', '2 hrs 20 min', 'Rs 3400'),
(62, 'Air India', 'HYD', 'BLR', '02:25 am', '05:20 am', '3 hrs 05 min', 'Rs 2800');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
