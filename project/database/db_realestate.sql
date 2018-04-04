-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 02:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_realestate`
--
CREATE DATABASE IF NOT EXISTS `db_realestate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_realestate`;

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

DROP TABLE IF EXISTS `datas`;
CREATE TABLE IF NOT EXISTS `datas` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_url` text COLLATE utf8mb4_unicode_ci,
  `data_title` text COLLATE utf8mb4_unicode_ci,
  `data_price` text COLLATE utf8mb4_unicode_ci,
  `data_area` text COLLATE utf8mb4_unicode_ci,
  `data_description` text COLLATE utf8mb4_unicode_ci,
  `data_type_of_news` text COLLATE utf8mb4_unicode_ci,
  `data_type_BDS` text COLLATE utf8mb4_unicode_ci,
  `data_location` text COLLATE utf8mb4_unicode_ci,
  `data_date` date DEFAULT NULL,
  `data_project_name` text COLLATE utf8mb4_unicode_ci,
  `data_contact_name` text COLLATE utf8mb4_unicode_ci,
  `data_contact_phone` text COLLATE utf8mb4_unicode_ci,
  `data_contact_email` text COLLATE utf8mb4_unicode_ci,
  `data_contact_address` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--

DROP TABLE IF EXISTS `patterns`;
CREATE TABLE IF NOT EXISTS `patterns` (
  `pattern_id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern_category_id` int(11) DEFAULT NULL,
  `pattern_regex` text COLLATE utf8mb4_unicode_ci,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patterns`
--

INSERT INTO `patterns` (`pattern_id`, `pattern_category_id`, `pattern_regex`, `site_id`) VALUES
(1, 1, '<div class=\'p-title\'>[\\w\\W]*?<a href=\'(.*?)\'[\\w\\W]*?<\\/a>', 1),
(2, 2, '<h1 itemprop=\"name\">\\s*(.*?)\\s*<\\/h1>', 1),
(3, 3, 'Giá:<\\/b>\\s*<strong>\\s*(.*?)&nbsp;\\s*<\\/strong>', 1),
(4, 4, 'Diện tích:<\\/b>\\s*<strong>\\s*(.*?)<\\/strong>', 1),
(5, 5, '<div class=\"pm-desc\">\\s*(.*?)\\s*<\\/div>', 1),
(6, 6, '<span class=\"select-text-content\">(.*?)<\\/span>', 1),
(7, 7, 'Loại tin rao[\\w\\W]*?<div class=\"right\">\\s*(.*?)\\s*<\\/div>', 1),
(8, 8, 'Địa chỉ\\s*<\\/div>\\s*<div class=\"right\">\\s*(.*?)\\s*<\\/div>', 1),
(9, 9, 'Ngày đăng:<\\/span>\\s*(.*?)\\s*<\\/div>', 1),
(10, 10, '<h1 itemprop=\"name\">\\s*(.*?)\\s*<\\/h1>', 1),
(11, 11, 'Tên liên lạc\\s*<\\/div>\\s*<div class=\"right\">\\s*(.*?)\\s*<\\/div>', 1),
(12, 12, 'Điện thoại\\s*<\\/div>\\s*<div class=\"right\">\\s*(.*?)\\s*<\\/div>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pattern_categories`
--

DROP TABLE IF EXISTS `pattern_categories`;
CREATE TABLE IF NOT EXISTS `pattern_categories` (
  `patt_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `patt_category_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`patt_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pattern_categories`
--

INSERT INTO `pattern_categories` (`patt_category_id`, `patt_category_name`) VALUES
(1, 'URL'),
(2, 'Title'),
(3, 'Price'),
(4, 'Description'),
(5, 'Area'),
(6, 'Type Of News'),
(7, 'Type BDS'),
(8, 'Location'),
(9, 'Date Created'),
(10, 'Project Name'),
(11, 'Contact Name'),
(12, 'Contact Phone'),
(13, 'Contact Email'),
(14, 'Contact Address');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` text COLLATE utf8mb4_unicode_ci,
  `site_url` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_url`) VALUES
(1, 'batdongsan', '{\r\n	\"site_name\" : \"batdongsan\",\r\n	\"site_url\" : \"https://batdongsan.com.vn\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-cho-thue\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Dự án\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/du-an-bat-dong-san\"\r\n		}\r\n	],\r\n	\"type_page_url\": \"/p{number}\"\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE IF NOT EXISTS `userlogin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_token` text COLLATE utf8mb4_unicode_ci,
  `user_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
