-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2015 at 06:13 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `top5`
--
CREATE DATABASE IF NOT EXISTS `top5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `top5`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'John', '', NULL, NULL),
(2, 'Tom', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `suburb` varchar(45) NOT NULL,
  `postcode` varchar(4) NOT NULL,
  `state` varchar(3) NOT NULL DEFAULT 'VIC',
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `description` varchar(255) DEFAULT 'TBA',
  `contact_details` varchar(45) DEFAULT 'TBA',
  `ratings` int(11) DEFAULT '0',
  `price_per_display` double DEFAULT '0',
  `all_clicks` int(11) DEFAULT '0',
  `clicks_after_last_bill` int(11) DEFAULT '0',
  `all_displays` int(11) DEFAULT '0',
  `displays_after_last_bill` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`,`address`,`postcode`),
  KEY `customer_id` (`customer_id`),
  KEY `name` (`name`),
  KEY `fk_places_tags1_idx` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `address`, `suburb`, `postcode`, `state`, `lat`, `lng`, `description`, `contact_details`, `ratings`, `price_per_display`, `all_clicks`, `clicks_after_last_bill`, `all_displays`, `displays_after_last_bill`, `created_at`, `updated_at`, `customer_id`, `tag_id`) VALUES
(1, 'Dancing Dog Cafe', '42 Albert St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 1),
(2, 'The Station Hotel', '59 Napier St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 1),
(3, '8bit Burgers and Hot Dogs', '8 Droop St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 1),
(4, 'Hung Vuong Saigon', '128 Hopkins St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 1),
(5, 'Bo De Vegetarian Restaurant', '94 Hopkins St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 1),
(6, 'Breadtop', '138A Hopkins St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 1),
(7, 'Safeway Carlton', '34/368-380 Lygon St', 'Carlton', '3053', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 2),
(8, 'Woolworths Airport West', '25-39 Louis St', 'Airport West', '3042', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 2),
(9, 'Woolworths Coburg North', '153-157 Elizabeth St', 'Coburg North', '3058', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 2),
(10, 'Woolworths Deer Park', '28-72 Neale Rd', 'Deer Park', '3023', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 2),
(11, 'Footscray IGA', 'Ballarat Rd', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 2),
(12, 'IGA X-press Maribyrnong', 'Shops 19-21 Wests Rd', 'Maribyrnong', '3032', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 2),
(13, 'Tait Home Timber & Hardware', '101-103 Geelong Rd', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 5),
(14, 'Bunnings West Footscray', '240-246 Geelong Rd', 'West Footscray', '', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 5),
(15, 'Sam''s Discount Paint', '137 Williams Rd', 'Yarraville', '3013', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 5),
(16, 'MGM Home Timber & Hardware', '182 Union Rd', 'Ascot Vale', '3032', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 5),
(17, 'Bowens Building Materials', '135-137 Macaulay Rd', 'North Melbourne', '3051', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 5),
(18, 'Access Hardware Melbourne', '74/92 Gracie St', 'Melbourne', '3051', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 5),
(19, 'The Exercise Room', '88 Buckley St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 12),
(20, 'VU Aquatic & Fitness Center', 'Ballarat Rd', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 12),
(21, 'Apollo 24/7 Gym', '37/91 Moreland Rd', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 12),
(22, 'Team Adrenalin', '88 Gordon St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 12),
(23, 'Mischa''s Boxing Central', '10/107 Whitehall St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 12),
(24, 'Zoom Fitness 24/7 Gym', '1/287 Ballarat Rd', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 12),
(25, 'Newton Betta Home Living', '216/226 Barkly St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 10),
(26, 'KRS Electronics Systems', '1/50 Buckley St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 10),
(27, 'Bramshaw ICS', '91 Moreland St', 'Melbourne', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 10),
(28, 'Jands Stage Lighting & Equipment', '11/21 Sabre Dr', 'Port Melbourne', '3207', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 10),
(29, 'Dick Smith Highpoint', 'Shop 3050, L3, 120 Rosemond Rd\r\n', 'Maribyrnong', '3032', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 10),
(30, 'Mobile Link', '149 Hopkins St', 'Footscray', '3011', 'VIC', NULL, NULL, 'TBA', 'TBA', 0, 0, 0, 0, 0, 0, NULL, NULL, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(25) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short` (`short`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `short`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Restaurants', NULL, NULL, NULL),
(2, 'SuperMarkets', NULL, NULL, NULL),
(5, 'Hardware Stores', NULL, NULL, NULL),
(10, 'Tech & Gadgets', '', NULL, NULL),
(12, 'Fitness Outlets', '', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `fk_places_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `places_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
