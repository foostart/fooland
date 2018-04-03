-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 03:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET FOREIGN_KEY_CHECKS=0;
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

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--
-- Creation: Apr 03, 2018 at 08:30 AM
--

CREATE TABLE `datas` (
  `data_id` int(11) NOT NULL,
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
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `datas`:
--

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--
-- Creation: Apr 03, 2018 at 08:49 AM
--

CREATE TABLE `patterns` (
  `pattern_id` int(11) NOT NULL,
  `pattern_category_id` int(11) DEFAULT NULL,
  `pattern_regex` text COLLATE utf8mb4_unicode_ci,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `patterns`:
--

--
-- Dumping data for table `patterns`
--

INSERT INTO `patterns` (`pattern_id`, `pattern_category_id`, `pattern_regex`, `site_id`) VALUES
(1, 1, '<div class=\\\'p-title\\\'>[\\w\\W]*?<a.*href=\"(.*?)\">', 1),
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
-- Creation: Apr 03, 2018 at 08:20 AM
--

CREATE TABLE `pattern_categories` (
  `patt_category_id` int(11) NOT NULL,
  `patt_category_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `pattern_categories`:
--

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
-- Creation: Apr 03, 2018 at 07:30 AM
--

CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_name` text COLLATE utf8mb4_unicode_ci,
  `site_url` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `sites`:
--

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_url`) VALUES
(1, 'batdongsan', '{\r\n	\"site_name\" : \"batdongsan\",\r\n	\"site_url\" : \"https://batdongsan.com.vn\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-cho-thue\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Dự án\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/du-an-bat-dong-san\"\r\n		}\r\n	]\r\n}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `patterns`
--
ALTER TABLE `patterns`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `pattern_categories`
--
ALTER TABLE `pattern_categories`
  ADD PRIMARY KEY (`patt_category_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datas`
--
ALTER TABLE `datas`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patterns`
--
ALTER TABLE `patterns`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pattern_categories`
--
ALTER TABLE `pattern_categories`
  MODIFY `patt_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table datas
--

--
-- Metadata for table patterns
--

--
-- Metadata for table pattern_categories
--

--
-- Metadata for table sites
--

--
-- Metadata for database db_realestate
--
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
