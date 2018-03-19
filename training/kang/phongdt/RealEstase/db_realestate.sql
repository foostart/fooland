-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2018 at 01:25 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

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
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` text COLLATE utf8mb4_unicode_ci,
  `district_type` text COLLATE utf8mb4_unicode_ci,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  KEY `ProviceID` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `district_type`, `province_id`) VALUES
(1, '1', 'Quận', 1),
(2, '12', 'Quận', 1),
(3, 'Thủ Đức', 'Quận', 1),
(4, '9', 'Quận', 1),
(5, 'Gò Vấp', 'Quận', 1),
(6, 'Bình Thạnh', 'Quận', 1),
(7, 'Tân Bình', 'Quận', 1),
(8, 'Tân Phú', 'Quận', 1),
(9, 'Phú Nhuận', 'Quận', 1),
(10, '2', 'Quận', 1),
(11, '3', 'Quận', 1),
(12, '10', 'Quận', 1),
(13, '11', 'Quận', 1),
(14, '4', 'Quận', 1),
(15, '5', 'Quận', 1),
(16, '6', 'Quận', 1),
(17, '8', 'Quận', 1),
(18, 'Bình Tân', 'Quận', 1),
(19, '7', 'Quận', 1),
(20, 'Củ Chi', 'Huyện', 1),
(21, 'Hóc Môn', 'Huyện', 1),
(22, 'Bình Chánh', 'Huyện', 1),
(23, 'Nhà Bè', 'Huyện', 1),
(24, 'Cần Giờ', 'Huyện', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--

DROP TABLE IF EXISTS `patterns`;
CREATE TABLE IF NOT EXISTS `patterns` (
  `pattern_id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern_regex` text COLLATE utf8mb4_unicode_ci,
  `pattern_range` text COLLATE utf8mb4_unicode_ci,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pattern_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patterns`
--

INSERT INTO `patterns` (`pattern_id`, `pattern_name`, `pattern_regex`, `pattern_range`, `site_id`) VALUES
(1, 'Lấy thông tin bất động sản', 'class=\'p-title\'>[\\s|<h3>]*<a href=[\'\"](.*?)[\'\"][\\w\\W]*?>\\s*(.*?)\\s*<\\/a>[\\w\\W]*?class=\"product-price\">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\"product-area\">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\"product-city-dist\">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\'floatright mar-right-10\'>(.*?)<\\/div>', NULL, 1),
(2, 'Lấy thông tin tìm mua nhà đất', 'class=\'vip-title\'><a[\\w\\W]*?href=\'(.*?)\'>(.*?)<\\/a>[\\w\\W]*?Diện tích:<\\/label>(.*?)[<sup>][\\w\\W]*?Giá:<\\/label>\\s*(.*?)\\s*<\\/div>[\\w\\W]*?\'vip-dis\'>(.*?)<\\/div>[\\w\\W]*?\'createdate\'>(.*?)<\\/div>', '1,2,4,3,5,6', 2),
(3, 'Lấy dữ liệu trang dothi.net', '<a class=\"vip[\\w\\W]*?href=\"(.*?)\">\\s*(.*?)\\s*<\\/a>[\\w\\W]*?<\\/label>\\s*(.*?)\\s*<\\/[\\w\\W]*?<\\/label>\\s*(.*?)\\s*[&nbsp;m&#178;]*\\s*<\\/div>[\\w\\W]*?<strong>\\s*(.*?)<\\/strong>[\\w\\W]*?class=\"date\">\\s*(.*?)\\s*<\\/span>', NULL, 3),
(4, 'Lấy thông tin trang phonhadat.net', 'h4 class=\"title\">\\s*<a[\\w\\W]*?href=\"(.*?)\">(.*?)<\\/a>[\\w\\W]*?<span>(.*?)<\\/span>[\\w\\W]*?class=\"area\">\\s*(.*?)[&nbsp;][\\w\\W]*?class=\"address\">\\s*(.*?)\\s*<\\/div>[\\w\\W]*?class=\"price\">\\s*(.*?)\\s*<\\/div>', '1,2,6,4,5,3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`province_id`, `province_name`) VALUES
(1, 'HCM');

-- --------------------------------------------------------

--
-- Table structure for table `real_estates`
--

DROP TABLE IF EXISTS `real_estates`;
CREATE TABLE IF NOT EXISTS `real_estates` (
  `real_estate_id` int(11) NOT NULL AUTO_INCREMENT,
  `real_estate_name` text COLLATE utf8mb4_unicode_ci,
  `real_estate_price` text COLLATE utf8mb4_unicode_ci,
  `real_estate_area` text COLLATE utf8mb4_unicode_ci,
  `real_estate_date` date DEFAULT NULL,
  `real_estate_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`real_estate_id`),
  KEY `LocationID` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` text COLLATE utf8mb4_unicode_ci,
  `site_url` text COLLATE utf8mb4_unicode_ci,
  `site_link_page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_url`, `site_link_page`) VALUES
(1, 'batdongsan.com.vn', 'https://batdongsan.com.vn/nha-dat-ban', '/p[page]'),
(2, 'timmuanhadat.com.vn', 'http://timmuanhadat.com.vn/nha-dat-bat-dong-san/', 'can-ban/trang--[page].html'),
(3, 'dothi.net', 'https://dothi.net/nha-dat-ban/', 'p[page].htm'),
(4, 'phonhadat.net', 'http://phonhadat.net/nha-dat-ban', '/p[page].htm');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
CREATE TABLE IF NOT EXISTS `wards` (
  `ward_id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_name` text COLLATE utf8mb4_unicode_ci,
  `ward_type` text COLLATE utf8mb4_unicode_ci,
  `district_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`),
  KEY `districtID` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`ward_id`, `ward_name`, `ward_type`, `district_id`) VALUES
(1, 'Tân Định', 'Phường', 1),
(2, 'Đa Kao', 'Phường', 1),
(3, 'Bến Nghé', 'Phường', 1),
(4, 'Bến Thành', 'Phường', 1),
(5, 'Nguyễn Thái Bình', 'Phường', 1),
(6, 'Phạm Ngũ Lão', 'Phường', 1),
(7, 'Cầu Ông Lãnh', 'Phường', 1),
(8, 'Cô Giang', 'Phường', 1),
(9, 'Nguyễn Cư Trinh', 'Phường', 1),
(10, 'Cầu Kho', 'Phường', 1),
(11, 'Thạnh Xuân', 'Phường', 2),
(12, 'Thạnh Lộc', 'Phường', 2),
(13, 'Hiệp Thành', 'Phường', 2),
(14, 'Thới An', 'Phường', 2),
(15, 'Tân Chánh Hiệp', 'Phường', 2),
(16, 'An Phú Đông', 'Phường', 2),
(17, 'Tân Thới Hiệp', 'Phường', 2),
(18, 'Trung Mỹ Tây', 'Phường', 2),
(19, 'Tân Hưng Thuận', 'Phường', 2),
(20, 'Đông Hưng Thuận', 'Phường', 2),
(21, 'Tân Thới Nhất', 'Phường', 2),
(22, 'Linh Xuân', 'Phường', 3),
(23, 'Bình Chiểu', 'Phường', 3),
(24, 'Linh Trung', 'Phường', 3),
(25, 'Tam Bình', 'Phường', 3),
(26, 'Tam Phú', 'Phường', 3),
(27, 'Hiệp Bình Phước', 'Phường', 3),
(28, 'Hiệp Bình Chánh', 'Phường', 3),
(29, 'Linh Chiểu', 'Phường', 3),
(30, 'Linh Tây', 'Phường', 3),
(31, 'Linh Đông', 'Phường', 3),
(32, 'Bình Thọ', 'Phường', 3),
(33, 'Trường Thọ', 'Phường', 3),
(34, 'Long Bình', 'Phường', 4),
(35, 'Long Thạnh Mỹ', 'Phường', 4),
(36, 'Tân Phú', 'Phường', 4),
(37, 'Hiệp Phú', 'Phường', 4),
(38, 'Tăng Nhơn Phú A', 'Phường', 4),
(39, 'Tăng Nhơn Phú B', 'Phường', 4),
(40, 'Phước Long B', 'Phường', 4),
(41, 'Phước Long A', 'Phường', 4),
(42, 'Trường Thạnh', 'Phường', 4),
(43, 'Long Phước', 'Phường', 4),
(44, 'Long Trường', 'Phường', 4),
(45, 'Phước Bình', 'Phường', 4),
(46, 'Phú Hữu', 'Phường', 4),
(47, '15', 'Phường', 5),
(48, '13', 'Phường', 5),
(49, '17', 'Phường', 5),
(50, '6', 'Phường', 5),
(51, '16', 'Phường', 5),
(52, '12', 'Phường', 5),
(53, '14', 'Phường', 5),
(54, '10', 'Phường', 5),
(55, '05', 'Phường', 5),
(56, '07', 'Phường', 5),
(57, '04', 'Phường', 5),
(58, '01', 'Phường', 5),
(59, '9', 'Phường', 5),
(60, '8', 'Phường', 5),
(61, '11', 'Phường', 5),
(62, '03', 'Phường', 5),
(63, '13', 'Phường', 6),
(64, '11', 'Phường', 6),
(65, '27', 'Phường', 6),
(66, '26', 'Phường', 6),
(67, '12', 'Phường', 6),
(68, '25', 'Phường', 6),
(69, '05', 'Phường', 6),
(70, '07', 'Phường', 6),
(71, '24', 'Phường', 6),
(72, '06', 'Phường', 6),
(73, '14', 'Phường', 6),
(74, '15', 'Phường', 6),
(75, '02', 'Phường', 6),
(76, '01', 'Phường', 6),
(77, '03', 'Phường', 6),
(78, '17', 'Phường', 6),
(79, '21', 'Phường', 6),
(80, '22', 'Phường', 6),
(81, '19', 'Phường', 6),
(82, '28', 'Phường', 6),
(83, '02', 'Phường', 7),
(84, '04', 'Phường', 7),
(85, '12', 'Phường', 7),
(86, '13', 'Phường', 7),
(87, '01', 'Phường', 7),
(88, '03', 'Phường', 7),
(89, '11', 'Phường', 7),
(90, '07', 'Phường', 7),
(91, '05', 'Phường', 7),
(92, '10', 'Phường', 7),
(93, '06', 'Phường', 7),
(94, '08', 'Phường', 7),
(95, '09', 'Phường', 7),
(96, '14', 'Phường', 7),
(97, '15', 'Phường', 7),
(98, 'Tân Sơn Nhì', 'Phường', 8),
(99, 'Tây Thạnh', 'Phường', 8),
(100, 'Sơn Kỳ', 'Phường', 8),
(101, 'Tân Quý', 'Phường', 8),
(102, 'Tân Thành', 'Phường', 8),
(103, 'Phú Thọ Hoà', 'Phường', 8),
(104, 'Phú Thạnh', 'Phường', 8),
(105, 'Phú Trung', 'Phường', 8),
(106, 'Hoà Thạnh', 'Phường', 8),
(107, 'Hiệp Tân', 'Phường', 8),
(108, 'Tân Thới Hoà', 'Phường', 8),
(109, '04', 'Phường', 9),
(110, '05', 'Phường', 9),
(111, '09', 'Phường', 9),
(112, '07', 'Phường', 9),
(113, '03', 'Phường', 9),
(114, '01', 'Phường', 9),
(115, '02', 'Phường', 9),
(116, '08', 'Phường', 9),
(117, '15', 'Phường', 9),
(118, '10', 'Phường', 9),
(119, '11', 'Phường', 9),
(120, '17', 'Phường', 9),
(121, '14', 'Phường', 9),
(122, '12', 'Phường', 9),
(123, '13', 'Phường', 9),
(124, 'Thảo Điền', 'Phường', 10),
(125, 'An Phú', 'Phường', 10),
(126, 'Bình An', 'Phường', 10),
(127, 'Bình Trưng Đông', 'Phường', 10),
(128, 'Bình Trưng Tây', 'Phường', 10),
(129, 'Bình Khánh', 'Phường', 10),
(130, 'An Khánh', 'Phường', 10),
(131, 'Cát Lái', 'Phường', 10),
(132, 'Thạnh Mỹ Lợi', 'Phường', 10),
(133, 'An Lợi Đông', 'Phường', 10),
(134, 'Thủ Thiêm', 'Phường', 10),
(135, '08', 'Phường', 11),
(136, '07', 'Phường', 11),
(137, '14', 'Phường', 11),
(138, '12', 'Phường', 11),
(139, '11', 'Phường', 11),
(140, '13', 'Phường', 11),
(141, '06', 'Phường', 11),
(142, '09', 'Phường', 11),
(143, '10', 'Phường', 11),
(144, '04', 'Phường', 11),
(145, '05', 'Phường', 11),
(146, '03', 'Phường', 11),
(147, '02', 'Phường', 11),
(148, '01', 'Phường', 11),
(149, '15', 'Phường', 12),
(150, '13', 'Phường', 12),
(151, '14', 'Phường', 12),
(152, '12', 'Phường', 12),
(153, '11', 'Phường', 12),
(154, '10', 'Phường', 12),
(155, '09', 'Phường', 12),
(156, '01', 'Phường', 12),
(157, '08', 'Phường', 12),
(158, '02', 'Phường', 12),
(159, '04', 'Phường', 12),
(160, '07', 'Phường', 12),
(161, '05', 'Phường', 12),
(162, '06', 'Phường', 12),
(163, '03', 'Phường', 12),
(164, '15', 'Phường', 13),
(165, '05', 'Phường', 13),
(166, '14', 'Phường', 13),
(167, '11', 'Phường', 13),
(168, '03', 'Phường', 13),
(169, '10', 'Phường', 13),
(170, '13', 'Phường', 13),
(171, '08', 'Phường', 13),
(172, '09', 'Phường', 13),
(173, '12', 'Phường', 13),
(174, '07', 'Phường', 13),
(175, '06', 'Phường', 13),
(176, '04', 'Phường', 13),
(177, '01', 'Phường', 13),
(178, '02', 'Phường', 13),
(179, '16', 'Phường', 13),
(180, '12', 'Phường', 14),
(181, '13', 'Phường', 14),
(182, '09', 'Phường', 14),
(183, '06', 'Phường', 14),
(184, '08', 'Phường', 14),
(185, '10', 'Phường', 14),
(186, '05', 'Phường', 14),
(187, '18', 'Phường', 14),
(188, '14', 'Phường', 14),
(189, '04', 'Phường', 14),
(190, '03', 'Phường', 14),
(191, '16', 'Phường', 14),
(192, '02', 'Phường', 14),
(193, '15', 'Phường', 14),
(194, '01', 'Phường', 14),
(195, '04', 'Phường', 15),
(196, '09', 'Phường', 15),
(197, '03', 'Phường', 15),
(198, '12', 'Phường', 15),
(199, '02', 'Phường', 15),
(200, '08', 'Phường', 15),
(201, '15', 'Phường', 15),
(202, '07', 'Phường', 15),
(203, '01', 'Phường', 15),
(204, '11', 'Phường', 15),
(205, '14', 'Phường', 15),
(206, '05', 'Phường', 15),
(207, '06', 'Phường', 15),
(208, '10', 'Phường', 15),
(209, '13', 'Phường', 15),
(210, '14', 'Phường', 16),
(211, '13', 'Phường', 16),
(212, '09', 'Phường', 16),
(213, '06', 'Phường', 16),
(214, '12', 'Phường', 16),
(215, '05', 'Phường', 16),
(216, '11', 'Phường', 16),
(217, '02', 'Phường', 16),
(218, '01', 'Phường', 16),
(219, '04', 'Phường', 16),
(220, '08', 'Phường', 16),
(221, '03', 'Phường', 16),
(222, '07', 'Phường', 16),
(223, '10', 'Phường', 16),
(224, '08', 'Phường', 17),
(225, '02', 'Phường', 17),
(226, '01', 'Phường', 17),
(227, '03', 'Phường', 17),
(228, '11', 'Phường', 17),
(229, '09', 'Phường', 17),
(230, '10', 'Phường', 17),
(231, '04', 'Phường', 17),
(232, '13', 'Phường', 17),
(233, '12', 'Phường', 17),
(234, '05', 'Phường', 17),
(235, '14', 'Phường', 17),
(236, '06', 'Phường', 17),
(237, '15', 'Phường', 17),
(238, '16', 'Phường', 17),
(239, '07', 'Phường', 17),
(240, 'Bình Hưng Hòa', 'Phường', 18),
(241, 'Binh Hưng Hoà A', 'Phường', 18),
(242, 'Binh Hưng Hoà B', 'Phường', 18),
(243, 'Bình Trị Đông', 'Phường', 18),
(244, 'Bình Trị Đông A', 'Phường', 18),
(245, 'Bình Trị Đông B', 'Phường', 18),
(246, 'Tân Tạo', 'Phường', 18),
(247, 'Tân Tạo A', 'Phường', 18),
(248, 'An Lạc', 'Phường', 18),
(249, 'An Lạc A', 'Phường', 18),
(250, 'Tân Thuận Đông', 'Phường', 19),
(251, 'Tân Thuận Tây', 'Phường', 19),
(252, 'Tân Kiểng', 'Phường', 19),
(253, 'Tân Hưng', 'Phường', 19),
(254, 'Bình Thuận', 'Phường', 19),
(255, 'Tân Quy', 'Phường', 19),
(256, 'Phú Thuận', 'Phường', 19),
(257, 'Tân Phú', 'Phường', 19),
(258, 'Tân Phong', 'Phường', 19),
(259, 'Phú Mỹ', 'Phường', 19),
(260, 'Củ Chi', 'Thị Trấn', 20),
(261, 'Phú Mỹ Hưng', 'Xã', 20),
(262, 'An Phú', 'Xã', 20),
(263, 'Trung Lập Thượng', 'Xã', 20),
(264, 'An Nhơn Tây', 'Xã', 20),
(265, 'Nhuận Đức', 'Xã', 20),
(266, 'Phạm Văn Cội', 'Xã', 20),
(267, 'Phú Hòa Đông', 'Xã', 20),
(268, 'Trung Lập Hạ', 'Xã', 20),
(269, 'Trung An', 'Xã', 20),
(270, 'Phước Thạnh', 'Xã', 20),
(271, 'Phước Hiệp', 'Xã', 20),
(272, 'Tân An Hội', 'Xã', 20),
(273, 'Phước Vĩnh An', 'Xã', 20),
(274, 'Thái Mỹ', 'Xã', 20),
(275, 'Tân Thạnh Tây', 'Xã', 20),
(276, 'Hòa Phú', 'Xã', 20),
(277, 'Tân Thạnh Đông', 'Xã', 20),
(278, 'Bình Mỹ', 'Xã', 20),
(279, 'Tân Phú Trung', 'Xã', 20),
(280, 'Tân Thông Hội', 'Xã', 20),
(281, 'Hóc Môn', 'Thị Trấn', 21),
(282, 'Tân Hiệp', 'Xã', 21),
(283, 'Nhị Bình', 'Xã', 21),
(284, 'Đông Thạnh', 'Xã', 21),
(285, 'Tân Thới Nhì', 'Xã', 21),
(286, 'Thới Tam Thôn', 'Xã', 21),
(287, 'Xuân Thới Sơn', 'Xã', 21),
(288, 'Tân Xuân', 'Xã', 21),
(289, 'Xuân Thới Đông', 'Xã', 21),
(290, 'Trung Chánh', 'Xã', 21),
(291, 'Xuân Thới Thượng', 'Xã', 21),
(292, 'Bà Điểm', 'Xã', 21),
(293, 'Tân Túc', 'Thị Trấn', 22),
(294, 'Phạm Văn Hai', 'Xã', 22),
(295, 'Vĩnh Lộc A', 'Xã', 22),
(296, 'Vĩnh Lộc B', 'Xã', 22),
(297, 'Bình Lợi', 'Xã', 22),
(298, 'Lê Minh Xuân', 'Xã', 22),
(299, 'Tân Nhựt', 'Xã', 22),
(300, 'Tân Kiên', 'Xã', 22),
(301, 'Bình Hưng', 'Xã', 22),
(302, 'Phong Phú', 'Xã', 22),
(303, 'An Phú Tây', 'Xã', 22),
(304, 'Hưng Long', 'Xã', 22),
(305, 'Đa Phước', 'Xã', 22),
(306, 'Tân Quý Tây', 'Xã', 22),
(307, 'Bình Chánh', 'Xã', 22),
(308, 'Quy Đức', 'Xã', 22),
(309, 'Nhà Bè', 'Thị Trấn', 23),
(310, 'Phước Kiển', 'Xã', 23),
(311, 'Phước Lộc', 'Xã', 23),
(312, 'Nhơn Đức', 'Xã', 23),
(313, 'Phú Xuân', 'Xã', 23),
(314, 'Long Thới', 'Xã', 23),
(315, 'Hiệp Phước', 'Xã', 23),
(316, 'Cần Thạnh', 'Thị Trấn', 24),
(317, 'Bình Khánh', 'Xã', 24),
(318, 'Tam Thôn Hiệp', 'Xã', 24),
(319, 'An Thới Đông', 'Xã', 24),
(320, 'Thạnh An', 'Xã', 24),
(321, 'Long Hòa', 'Xã', 24),
(322, 'Lý Nhơn', 'Xã', 24);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`province_id`);

--
-- Constraints for table `patterns`
--
ALTER TABLE `patterns`
  ADD CONSTRAINT `patterns_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`);

--
-- Constraints for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD CONSTRAINT `real_estates_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`);

--
-- Constraints for table `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
