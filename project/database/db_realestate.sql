-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 05:58 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
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
  `status` int(11) NOT NULL,
  `data_url_md5` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`data_id`, `data_url`, `data_title`, `data_price`, `data_area`, `data_description`, `data_type_of_news`, `data_type_BDS`, `data_location`, `data_date`, `data_project_name`, `data_contact_name`, `data_contact_phone`, `data_contact_email`, `data_contact_address`, `status`, `data_url_md5`) VALUES
(1, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-d1-phuong-tan-hung-14-prj-can-ho-florita-duc-khai/goc-77m-80m-co-2pn-gia-2-4ty-78m-103m-co-3pn-gia-tu-2-5ty-nhan-nha-thag3-0902416899-pr15322773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c020d93dcdac282058de0ef80b0399dd'),
(2, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tran-hung-dao-phuong-an-hai-tay-prj-the-monarchy/chiet-khau-c-khach-mua-le-len-den-14-goi-ngay-0901124466-pr15463057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '578d5e0e36394d3bcad2681015a801d3'),
(3, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-lac-long-quan-phuong-xuan-la/can-o-do-thi-dien-tich-1000m2-tai-quan-pr15458123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd0799b9633796c21556ec382a3c3a049'),
(4, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-15-74/tho-cu-cu-chi-tan-thanh-dong-so-hong-chinh-chu-khu-dan-cu-dong-duc-pr15459211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd530c908d48c1536145c44c774bb6c69'),
(5, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-to-hieu-phuong-vinh-nguyen-prj-ph-nha-trang/xa-i-cao-cap-view-bien-nhieu-tro-c-khach-hang-lh-0935636808-pr15041617', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c9263bad3e6810f8341379a9772a772b'),
(6, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-hong-ha-phuong-9-12-prj-orchard-garden/cc-dich-vu-1pn-co-noi-that-dang-co-p-dong-c-thue-13-trieu-thang-garden-pr13390145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1663e33fa9fc2e58b0f67d7de3bdf3cc'),
(7, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-pho-ta-quang-buu-phuong-4-15-prj-topaz-elite/phoenix-01-don-vi-quan-ly-toa-nha-realty-link-singapore-gia-24-27tr-m2-0909-58-69-58-pr15462593', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '66829ce879f558ff50da5e01cba85827'),
(8, 'https://batdongsan.com.vn/ban-dat-duong-tran-van-giau-72/ngan-hang-bidv-thanh-ly-15-lo-shr-mat-tien-lien-ke-bv-cho-ray-2-lh-0901091035-pr15462481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1fa0152534a86ef9e4a3ab5c4005879e'),
(9, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tat-thanh-phuong-18-prj-can-ho-riva-park/cao-cap-1pn-den-3pn-nhan-nha-ngay-tang-bo-bep-nhap-khau-y-ck-cao-len-den-500tr-pr14579032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f7de22d1e79c73a249f5344f7fd8edd8'),
(10, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-vinhomes-the-harmony/do-chuyen-doi-nhu-cau-su-dung-can-gap-sl-du-an-riverside-0979075636-pr15461771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9eea92091756134392c9cf418b39df8d'),
(11, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tuan-phuong-thanh-xuan-trung-prj-goldseason/cdt-tnr-thong-bao-ra-3-tang-moi-dep-nhat-cua-bang-hang-ck-len-toi-15-0-ls-trong-2-nam-pr15460760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '91b24651196f199de2a71362cb8fd418'),
(12, 'https://batdongsan.com.vn/ban-dat-duong-lien-phuong-phuong-phuoc-long-b/2mt-trung-tam-thuong-mai-20m-gan-ngay-khu-hop-the-thao-nam-rach-chiec-pr15460453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '49f99a69443fe053a5531a362af936ae'),
(13, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-phong-lan-2-phuong-viet-hung-2-prj-vinhomes-the-harmony/chinh-chu-gap-can-don-lap-goc-khu-352m2-ngay-truc-chinh-15m-lh-0913517789-pr15459929', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '736fa2607d4275200d91465478be54cc'),
(14, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-binh-thang-prj-samsora-riverside/gan-suoi-tien-thu-duc-gia-tu-600-trieu-pr15459588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9b01e2b06d85a75b29f4a4ea98aaac53'),
(15, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/chuyen-q2-1pn-2-2-ty-2pn-2-73-ty-3pn-3-6-ty-lh-ni-0901381558-pr14748727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b75acc4dba83389c6a85f6da27c6d92f'),
(16, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-bat-nan-phuong-binh-trung-tay-prj-saigon-mystery-villas/dao-kim-cuong-quan-2-suat-noi-bo-9ty-dep-ngay-khu-vuc-bo-song-lh-0907577679-pr15459303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4b64cf8ad38dd30a98df387f8f5d5e21'),
(17, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-72/gap-2-cho-trung-tam-gan-c-vien-nuoc-so-hong-rieng-sang-ten-ngay-thich-hop-xay-nha-tro-pr15459013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '947e23773ae928412832d72ebd14ef5d'),
(18, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-saigon-pearl/tien-re-lai-nhieu-thuong-luong-truc-tiep-chinh-chu-lh-0902681106-pr15458971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2f1fc6c227003933ae4d1c973f355e9b'),
(19, 'https://batdongsan.com.vn/ban-nha-rieng-pho-phuong-mai-phuong-phuong-mai/cuc-dep-42m2-x-4-5-tang-dong-da-lhcc-0979-569-589-pr15444270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0b8303388f5aeb55c2879aed122694a7'),
(20, 'https://batdongsan.com.vn/ban-nha-rieng-duong-10-phuong-hiep-binh-phuoc/van-phong-moi-xay-gia-dau-tu-tuy-chinh-thay-doi-thiet-ke-nhieu-cong-nang-ho-tro-vay-nh-pr15251258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7db172dccea3d938ed4a1835d9b53547'),
(21, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-xa-le-minh-xuan/khong-mua-kdc-ten-lua-2-ngay-bay-gio-thi-dung-bao-gio-mua-pr15457813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9e4fef8bdaadf46dd84f0993f96cea2b'),
(22, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-thong-nhat-phuong-thang-loi-6-prj-khu-do-thi-thien-loc/hot-ra-bang-gia-chinh-thuc-145-lo-dep-nhat-pr15456507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8f06b963df5365b22f151bdc1b8fe161'),
(23, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-binh-loi-1/ngan-hang-sacombank-lien-ket-ho-tro-vay-den-60-khi-mua-nen-tai-kdc-nam-risidence-pr13851140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1d8c9c067e8d9d909573859283fe2179'),
(24, 'https://batdongsan.com.vn/ban-nha-rieng-duong-le-van-hien-phuong-hoa-hai/can-tien-nh-2-tang-doi-dien-cho-lh-0905188805-pr15457342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8a5c2022d5735d08b93e8dd2e5094abf'),
(25, 'https://batdongsan.com.vn/ban-dat-duong-vo-van-van-xa-vinh-loc-b/sr-nguyen-thi-tu-1-cho-ao-xay-dung-gia-320tr-nen-0966-662-101-pr15457164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '45be392c3e872c2c77a9d1e30e50af28'),
(26, 'https://batdongsan.com.vn/ban-nha-rieng-duong-le-van-tho-67/chinh-chu-can-gap-hang-coffee-316-goc-nga-tu-lon-va-dep-t-quan-go-vap-pr15456740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cb2d91b78950731dd023f98da2170947'),
(27, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-cuu-phu-phuong-tan-tao-a-prj-tecco-town-binh-tan/100-cuoi-cung-nhan-nha-lien-trung-tam-lien-he-chu-dau-tu-0941-779-779-pr15200946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1a456b0f1fcdb116b759a53abea53db5'),
(28, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-co-nhue-1-prj-an-binh-city/cat-lo-3-ngu-95-6m2-gia-2-ty-tai-lh-hien-0972-252-22-pr15456345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '03c6e2e97bd464765daceddf0a2adc0c'),
(29, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-luy-ban-bich-phuong-tan-thoi-hoa-prj-carillon-7/tt-700tr-nhan-ngay-chcc-carilon7-mat-tien-ck-ngay-6-lh-0909-647-333-pr15287386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a5fd6823b0335d4eab5764bbc86848af'),
(30, 'https://batdongsan.com.vn/ban-nha-rieng-duong-binh-chuan-phuong-binh-chuan/moi-xay-dep-580-trieu-1-lau-1-tret-ngay-nga-tu-nhu-hinh-lh-0917562527-pr12939115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c856047f3b295fcae9e42d5e6d72dbad'),
(31, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-kien-hung-prj-khu-do-thi-thanh-ha-muong-thanh/chinh-chu-lien-ke-duong-30m-gia-2-081-ty-pr15451429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b57d82ed51ee9587bff7f6f8646cf606'),
(32, 'https://batdongsan.com.vn/ban-dat-xa-pham-van-hai/ngan-hang-thanh-ly-gap-12-lo-tho-cu-gia-620trieu-shr-ngay-cho-cau-sang-mat-tien-tinh-lo-10-pr15454788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4fc3ca3b236aebd7c98f954c6017d43b'),
(33, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-bui-cam-ho-phuong-tan-thoi-hoa-prj-tecco-dam-sen-complex/nhan-giu-cho-100-cuoi-cung-du-an-gia-goc-chu-dau-tu-pr15454499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '942bc098a78e4d682ad623ad56a47aef'),
(34, 'https://batdongsan.com.vn/ban-dat-duong-n-phuong-di-an/chih-chu-ca-gap-2-lo-lie-ke-trug-tam-hah-chih-a-bih-pr15454051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '046686a50ad0fd8905b0f5d9349fccf1'),
(35, 'https://batdongsan.com.vn/ban-dat-nen-du-an-thi-tran-duc-hoa-1/odt-nam-doi-dien-cho-so-hong-rieng-co-san-sang-ten-ngay-399-trieu-nen-pr15453369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7760e067c19eb4bf4b55337d37a8727a'),
(36, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tat-thanh-prj-the-arena-cam-ranh/sieu-pham-condotel-doc-bo-bien-sat-san-bay-vi-vu-dau-tu-von-400-trieu-lh-0906-928-377-pr15446118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f5615907622283ae1524f941481d3010'),
(37, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-72/ngan-hang-acb-thanh-ly-gap-300m2-binh-chanh-pr15453348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0885dd43936c51e543f5d85b762572b0'),
(38, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-70-2-phuong-xuan-phuong-prj-hateco-xuan-phuong/2pn-chi-1-1-ty-full-nt-tai-apollo-ck-len-toi-150tr-ls-0-pr15452535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd00740a1e7866e414b95a68f9ffc3dd8'),
(39, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tat-thanh-phuong-18-prj-lancaster-lincoln/0904297128-chi-toan-30-nhan-nha-noi-that-cao-cap-pr14348461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '01fb1316fd207b9164f98bd0f97321a9'),
(40, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-co-nhue-1-prj-an-binh-city/chuyen-nhuong-lai-9-thuoc-gia-tot-nhat-thi-truong-lien-he-0911-530-588-pr14870614', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '842661c44896d116ceef125dc501ce27');

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--

DROP TABLE IF EXISTS `patterns`;
CREATE TABLE `patterns` (
  `pattern_id` int(11) NOT NULL,
  `pattern_category_id` int(11) DEFAULT NULL,
  `pattern_regex` text COLLATE utf8mb4_unicode_ci,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
CREATE TABLE `pattern_categories` (
  `patt_category_id` int(11) NOT NULL,
  `patt_category_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_name` text COLLATE utf8mb4_unicode_ci,
  `site_url` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_url`) VALUES
(1, 'batdongsan', '{\r\n	\"site_name\" : \"batdongsan\",\r\n	\"site_url\" : \"https://batdongsan.com.vn\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-cho-thue\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Dự án\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/du-an-bat-dong-san\"\r\n		}\r\n	],\r\n	\"type_page_url\": \"/p{number}\"\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_token` text COLLATE utf8mb4_unicode_ci,
  `user_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_token`, `user_status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`),
  ADD UNIQUE KEY `data_url_md5` (`data_url_md5`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
