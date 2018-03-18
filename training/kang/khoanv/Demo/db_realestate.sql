-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2018 at 09:02 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

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
CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL,
  `district_name` text COLLATE utf8mb4_unicode_ci,
  `district_type` text COLLATE utf8mb4_unicode_ci,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
CREATE TABLE `patterns` (
  `pattern_id` int(11) NOT NULL,
  `pattern_regex` text COLLATE utf8mb4_unicode_ci,
  `pattern_range` text COLLATE utf8mb4_unicode_ci,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patterns`
--

INSERT INTO `patterns` (`pattern_id`, `pattern_regex`, `pattern_range`, `site_id`) VALUES
(1, 'class=\'p-title\'>[\\s|<h3>]*<a href=[\'\"](.*?)[\'\"][\\w\\W]*?>\\s*(.*?)\\s*<\\/a>[\\w\\W]*?class=\"product-price\">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\"product-area\">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\"product-city-dist\">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\'floatright mar-right-10\'>(.*?)<\\/div>', NULL, 1),
(2, 'class=\'vip-title\'><a[\\w\\W]*?href=\'(.*?)\'>(.*?)<\\/a>[\\w\\W]*?Diện tích:<\\/label>(.*?)[<sup>][\\w\\W]*?Giá:<\\/label>\\s*(.*?)\\s*<\\/div>[\\w\\W]*?\'vip-dis\'>(.*?)<\\/div>[\\w\\W]*?\'createdate\'>(.*?)<\\/div>', '1,2,4,3,5,6', 2),
(3, 'class=\'ct_title\'>\\s*<a href=\'(.*?)\'[\\w\\W]*?>(.*?)<\\/a>[\\w\\W]*?Diện tích:<\\/label>(.*?)[<sup>][\\w\\W]*?Giá:<\\/label>(.*?)[<\\/div>|\\/&nsp][\\w\\W]*?title=\'[\\w\\W]*?\'>(.*?)<\\/a>[\\w\\W]*?\'>(.*?)<\\/a>[\\w\\W]*?\'>(.*?)<\\/a>', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `province_id` int(11) NOT NULL,
  `province_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
CREATE TABLE `real_estates` (
  `real_estate_id` int(11) NOT NULL,
  `real_estate_name` text COLLATE utf8mb4_unicode_ci,
  `real_estate_price` text COLLATE utf8mb4_unicode_ci,
  `real_estate_area` text COLLATE utf8mb4_unicode_ci,
  `real_estate_date` date DEFAULT NULL,
  `real_estate_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `real_estates`
--

INSERT INTO `real_estates` (`real_estate_id`, `real_estate_name`, `real_estate_price`, `real_estate_area`, `real_estate_date`, `real_estate_url`, `district_id`) VALUES
(1, 'SIÊU DỰ ÁN PHÚ HỒNG THỊNH 8 THUẬN AN, ĐẦU TƯ SINH LỜI CAO,CÓ SỔ HỒNG RIÊNG.LH 01657749507', ' 60 m', 'Thỏa thuận', '2018-03-16', 'http://timmuanhadat.com.vn/sieu-du-an-phu-hong-thinh-8-thuan-an-dau-tu-sinh-loi-cao-co-so-hong-rieng-lh-01657749507-592270.html', 1),
(2, 'Bán đất tại thôn Minh Lai, Minh Sơn, Ngọc Lặc, Thanh Hóa', ' 245 m', '245 triệu', '2018-01-31', 'http://timmuanhadat.com.vn/ban-dat-tai-thon-minh-lai-minh-son-ngoc-lac-thanh-hoa-581108.html', 1),
(3, 'Bán nhà Phố Ẩm Thực  đường Lê Thái Tông, tổ 7, phường Chiềng Lề, TP Sơn La', ' 80 m', '3,2 tỷ', '2017-10-23', 'http://timmuanhadat.com.vn/ban-nha-pho-am-thuc-duong-le-thai-tong-to-7-phuong-chieng-le-tp-son-la-528429.html', 1),
(4, 'Tiến độ thi công thực tế tại  Dự án Khu đô thị mới Phú Lương, Hà Đông, Hà Nội', ' 62 m', '29 triệu / m<sup>2</sup>', '2017-08-16', 'http://timmuanhadat.com.vn/tien-do-thi-cong-thuc-te-tai-du-an-khu-do-thi-moi-phu-luong-ha-dong-ha-noi-495585.html', 1),
(5, 'Bán lô đất CLN, quy hoạch đất ở nông thôn, 1,05 triệu/m2. ST/ST: 48/135-136.', ' 1.000 m', '1,05 tỷ', '2018-03-12', 'http://timmuanhadat.com.vn/ban-tung-lo-hoac-ca-3-lo-dat-trong-cay-lau-nam-900-nghin-m2-bd-st-48-143-48-144-48-138-567461.html', 1),
(6, 'Cần bán nhà gấp', ' 200 m', '720 triệu', '2018-03-06', 'http://timmuanhadat.com.vn/can-ban-nha-gap-586979.html', 1),
(7, 'Nhà Xưởng Cần Bán Gấp (Bình Chánh)', ' KXĐ', 'Thỏa thuận', '2018-03-18', 'http://timmuanhadat.com.vn/nha-xuong-can-ban-gap-binh-chanh--266347.html', 1),
(8, 'BÁN 2 DÃY NHÀ QUỐC LỘ 50 VÀ NHÀ GẦN CHỢ HƯNG LONG, SỔ HỒNG RIÊNG GIÁ 420 TRIỆU - 750 TRIỆU', ' 60 m', '420 triệu', '2018-03-18', 'http://timmuanhadat.com.vn/ban-2-day-nha-quoc-lo-50-va-nha-gan-cho-hung-long-so-hong-rieng-gia-420-trieu-750-trieu-585368.html', 1),
(9, 'BÁN 2 DÃY NHÀ QUỐC LỘ 50 VÀ NHÀ GẦN CHỢ HƯNG LONG, SỔ HỒNG RIÊNG GIÁ 450 TRIỆU - 750 TRIỆU', ' 60 m', '450 triệu', '2018-03-18', 'http://timmuanhadat.com.vn/ban-1-khu-nha-ql-50-va-1-khu-nha-gan-cho-hung-long-so-hong-gia-460-tr-680-tr-1ty1-567815.html', 1),
(10, 'BÁN 2 DÃY NHÀ QUỐC LỘ 50 VÀ NHÀ GẦN CHỢ HƯNG LONG, SỔ HỒNG RIÊNG GIÁ 460 TRIỆU - 750 TRIỆU', ' 60 m', '460 triệu', '2018-03-18', 'http://timmuanhadat.com.vn/ban-2-day-nha-quoc-lo-50-va-nha-gan-cho-hung-long-so-hong-rieng-gia-460-trieu-750-trieu-586131.html', 1),
(11, 'Bán 2 dãy nhà Quốc Lộ 50 và gần chợ Hưng Long,sổ hồng riêng giá 420tr-750tr', ' 60 m', '420 triệu', '2018-03-18', 'http://timmuanhadat.com.vn/ban-2-day-nha-quoc-lo-50-va-gan-cho-hung-long-so-hong-rieng-gia-420tr-750tr-587005.html', 1),
(12, 'Cần Bán Chung Cư Tam Trinh, Yên Sở, Hoàng Mai, Hà Nội.', ' 47 m', 'Thỏa thuận', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-chung-cu-tam-trinh-yen-so-hoang-mai-ha-noi--550787.html', 1),
(13, 'Cần Bán Đất Chính Chủ Diện Tích 108m2 Tại Yên Sở.', ' 108 m', 'Thỏa thuận', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-chinh-chu-dien-tich-108m2-tai-yen-so--548079.html', 1),
(14, 'Cần Bán Đất Chính Chủ Tại Xã Đông Dư, Gia Lâm, Hà Nội.', ' 240 m', 'Thỏa thuận', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-chinh-chu-tai-xa-dong-du-gia-lam-ha-noi--570212.html', 1),
(15, 'Cần Bán Đất Chính Chủ Tại Đường Bùi Huy Bích, Hoàng Mai, Hà Nội.', ' 85 m', 'Thỏa thuận', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-chinh-chu-tai-duong-bui-huy-bich-hoang-mai-ha-noi--547323.html', 1),
(16, 'Cần Bán Đất Tại Xã Minh Phú, Sóc Sơn, Hà Nội.', ' 40.000 m', 'Thỏa thuận', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-tai-xa-minh-phu-soc-son-ha-noi--547467.html', 1),
(17, 'Nhà Hiếm, Gần phố, Trung tâm, An sinh Đỉnh Đào Tấn, Ba Đình', ' 33 m', '3,85 tỷ', '2018-03-18', 'http://timmuanhadat.com.vn/nha-hiem-gan-pho-trung-tam-an-sinh-dinh-dao-tan-ba-dinh-591287.html', 1),
(18, 'Nhà Hiếm, Đẹp Giang Văn Minh, Ba Đình', ' 36 m', '4 tỷ', '2018-03-18', 'http://timmuanhadat.com.vn/nha-hiem-dep-giang-van-minh-ba-dinh-591535.html', 1),
(19, 'Cực Hiếm, Bán nhà Nguyên Hồng, Đống Đa Thang Máy, Ô tô, Vườn Hoa', ' 44 m', '11,5 tỷ', '2018-03-18', 'http://timmuanhadat.com.vn/cuc-hiem-ban-nha-nguyen-hong-dong-da-thang-may-o-to-vuon-hoa-589806.html', 1),
(20, '12 tỷ sở hữu ngay Biệt thự, Bán nhà quận Hoàng Mai', ' 98 m', '12 tỷ', '2018-03-18', 'http://timmuanhadat.com.vn/12-ty-so-huu-ngay-biet-thu-ban-nha-quan-hoang-mai-589118.html', 1),
(21, 'Cực Hiếm,Kinh Doanh Khủng, Bán nhà mặt ngõ mới 298 Tây Sơn, Đống Đa', '13 tỷ', ' 50 m', '2018-03-18', 'http://timmuanhadat.com.vn/cuc-hiem-kinh-doanh-khung-ban-nha-mat-ngo-moi-298-tay-son-dong-da-587032.html', 1),
(22, 'Cực Đẹp, 9 tầng Thang Máy, Bán nhà mặt phố Nguyễn Khang, Cầu Giấy', '17,5 tỷ', ' 47 m', '2018-03-18', 'http://timmuanhadat.com.vn/cuc-dep-9-tang-thang-may-ban-nha-mat-pho-nguyen-khang-cau-giay-586469.html', 1),
(23, 'Kinh Doanh sầm uất, Ô tô, Vỉa Hè, Bán nhà Thái Hà, Đống Đa', '14,8 tỷ', ' 52 m', '2018-03-18', 'http://timmuanhadat.com.vn/kinh-doanh-sam-uat-o-to-via-he-ban-nha-thai-ha-dong-da-586087.html', 1),
(24, 'Nhà Đẹp Lung Linh, Bán nhà Nguyễn Lương Bằng, Đống Đa', '4,9 tỷ', ' 61 m', '2018-03-18', 'http://timmuanhadat.com.vn/nha-dep-lung-linh-ban-nha-nguyen-luong-bang-dong-da-586102.html', 1),
(25, 'Ô tô vào nhà, Rẻ, Gần phố Lê Trọng Tấn, Thanh Xuân', '10,8 tỷ', ' 112 m', '2018-03-18', 'http://timmuanhadat.com.vn/o-to-vao-nha-re-gan-pho-le-trong-tan-thanh-xuan-586334.html', 1),
(26, 'Rẻ, Kinh Doanh Đỉnh, Chủ nhờ bán nhà mặt phố Nguyễn Đức Cảnh, Hoàng Mai', 'Thỏa thuận', ' 59 m', '2018-03-18', 'http://timmuanhadat.com.vn/re-kinh-doanh-dinh-chu-nho-ban-nha-mat-pho-nguyen-duc-canh-hoang-mai-585973.html', 1),
(27, 'Bán nhà Đẹp, Rẻ Yên Lãng, Đống Đa', '6,95 tỷ', ' 64 m', '2018-03-18', 'http://timmuanhadat.com.vn/ban-nha-dep-re-yen-lang-dong-da-586003.html', 1),
(28, 'Rinh nhà đón Tết, An Sinh tốt, Hạ Yên, Yên Hòa', '4,95 tỷ', ' 40 m', '2018-03-18', 'http://timmuanhadat.com.vn/rinh-nha-don-tet-an-sinh-tot-ha-yen-yen-hoa-571761.html', 1),
(29, 'Ô tô, Kinh doanh, Khu Vip Thái Hà, Đống Đa chỉ 152 triệu/ m2', '14,8 tỷ', ' 98 m', '2018-03-18', 'http://timmuanhadat.com.vn/o-to-kinh-doanh-khu-vip-thai-ha-dong-da-chi-152-trieu-m2-572974.html', 1),
(30, '6 tầng thang máy, mới coong, Đặng Văn Ngữ', '685 ngàn', ' 43 m', '2018-03-18', 'http://timmuanhadat.com.vn/6-tang-thang-may-moi-coong-dang-van-ngu-572327.html', 1),
(31, 'Nhà phân lô Vip, ô tô, Mới coong Nguyễn Chí Thanh', '8,35 tỷ', ' 43 m', '2018-03-18', 'http://timmuanhadat.com.vn/nha-phan-lo-vip-o-to-moi-coong-nguyen-chi-thanh-572429.html', 1),
(32, 'Đón tết Nhà Mới Đẹp, An Sinh tốt, Hạ Yên, Yên Hòa', '3,95 tỷ', ' 30 m', '2018-03-18', 'http://timmuanhadat.com.vn/don-tet-nha-moi-dep-an-sinh-tot-ha-yen-yen-hoa-571340.html', 1),
(33, 'Kinh Doanh Cực Đỉnh, 60 triệu/ tháng Lê Đức Thọ, Cầu Giấy', '11,5 tỷ', ' 60 m', '2018-03-18', 'http://timmuanhadat.com.vn/kinh-doanh-cuc-dinh-60-trieu-thang-le-duc-tho-cau-giay-571286.html', 1),
(34, 'Nhà mặt phố, hiếm, kinh doanh đỉnh Ngọc Khánh', '9,5 tỷ', ' 28 m', '2018-03-18', 'http://timmuanhadat.com.vn/nha-mat-pho-hiem-kinh-doanh-dinh-ngoc-khanh-570065.html', 1),
(35, 'Khu Vip, Gần Phố, Ngõ thông Văn Cao, Ba Đình', '6,8 tỷ', ' 56 m', '2018-03-18', 'http://timmuanhadat.com.vn/khu-vip-gan-pho-ngo-thong-van-cao-ba-dinh-590413.html', 1),
(36, 'Hiếm, Ô tô, vỉa hè, Bán Gấp nhà Hoa Bằng, Cầu Giấy', '8,9 tỷ', ' 72 m', '2018-03-18', 'http://timmuanhadat.com.vn/hiem-o-to-via-he-ban-gap-nha-hoa-bang-cau-giay-590408.html', 1),
(37, '“CỰC HIẾM” Bán nhà ven hồ Văn Chương Đống Đa KINH DOANH ĐỈNH 60m2', '11,8 tỷ', ' 60 m', '2018-03-18', 'http://timmuanhadat.com.vn/-cuc-hiem-ban-nha-ven-ho-van-chuong-dong-da-kinh-doanh-dinh-60m2-547984.html', 1),
(38, 'Bán nhà Thái Hà Đống Đa KINH DOANH Ô TÔ 78m2', '11,9 tỷ', ' 78 m', '2018-03-18', 'http://timmuanhadat.com.vn/ban-nha-thai-ha-dong-da-kinh-doanh-o-to-78m2-547993.html', 1),
(39, '“SIÊU HIẾM” Bán nhà Dốc Tam Đa Tây Hồ KINH DOANH 41m2', '8,3 tỷ', ' 41 m', '2018-03-18', 'http://timmuanhadat.com.vn/-sieu-hiem-ban-nha-doc-tam-da-tay-ho-kinh-doanh-41m2-548499.html', 1),
(40, '“KINH DOANH SIÊU KHỦNG” Bán nhà mặt phố Kim Mã Ba Đình 65m2 MT 5m', '16,5 tỷ', ' 65 m', '2018-03-18', 'http://timmuanhadat.com.vn/-kinh-doanh-sieu-khung-ban-nha-mat-pho-kim-ma-ba-dinh-65m2-mt-5m-549380.html', 1),
(41, 'SIÊU DỰ ÁN PHÚ HỒNG THỊNH 8 THUẬN AN, ĐẦU TƯ SINH LỜI CAO,CÓ SỔ HỒNG RIÊNG.LH 01657749507', 'Thỏa thuận', ' 60 m', '2018-03-16', 'http://timmuanhadat.com.vn/sieu-du-an-phu-hong-thinh-8-thuan-an-dau-tu-sinh-loi-cao-co-so-hong-rieng-lh-01657749507-592270.html', 1),
(42, 'Bán đất tại thôn Minh Lai, Minh Sơn, Ngọc Lặc, Thanh Hóa', '245 triệu', ' 245 m', '2018-01-31', 'http://timmuanhadat.com.vn/ban-dat-tai-thon-minh-lai-minh-son-ngoc-lac-thanh-hoa-581108.html', 1),
(43, 'Bán nhà Phố Ẩm Thực  đường Lê Thái Tông, tổ 7, phường Chiềng Lề, TP Sơn La', '3,2 tỷ', ' 80 m', '2017-10-23', 'http://timmuanhadat.com.vn/ban-nha-pho-am-thuc-duong-le-thai-tong-to-7-phuong-chieng-le-tp-son-la-528429.html', 1),
(44, 'Tiến độ thi công thực tế tại  Dự án Khu đô thị mới Phú Lương, Hà Đông, Hà Nội', '29 triệu / m<sup>2</sup>', ' 62 m', '2017-08-16', 'http://timmuanhadat.com.vn/tien-do-thi-cong-thuc-te-tai-du-an-khu-do-thi-moi-phu-luong-ha-dong-ha-noi-495585.html', 1),
(45, 'Bán lô đất CLN, quy hoạch đất ở nông thôn, 1,05 triệu/m2. ST/ST: 48/135-136.', '1,05 tỷ', ' 1.000 m', '2018-03-12', 'http://timmuanhadat.com.vn/ban-tung-lo-hoac-ca-3-lo-dat-trong-cay-lau-nam-900-nghin-m2-bd-st-48-143-48-144-48-138-567461.html', 1),
(46, 'Cần bán nhà gấp', '720 triệu', ' 200 m', '2018-03-06', 'http://timmuanhadat.com.vn/can-ban-nha-gap-586979.html', 1),
(47, 'Nhà Xưởng Cần Bán Gấp (Bình Chánh)', 'Thỏa thuận', ' KXĐ', '2018-03-18', 'http://timmuanhadat.com.vn/nha-xuong-can-ban-gap-binh-chanh--266347.html', 1),
(48, 'BÁN 2 DÃY NHÀ QUỐC LỘ 50 VÀ NHÀ GẦN CHỢ HƯNG LONG, SỔ HỒNG RIÊNG GIÁ 420 TRIỆU - 750 TRIỆU', '420 triệu', ' 60 m', '2018-03-18', 'http://timmuanhadat.com.vn/ban-2-day-nha-quoc-lo-50-va-nha-gan-cho-hung-long-so-hong-rieng-gia-420-trieu-750-trieu-585368.html', 1),
(49, 'BÁN 2 DÃY NHÀ QUỐC LỘ 50 VÀ NHÀ GẦN CHỢ HƯNG LONG, SỔ HỒNG RIÊNG GIÁ 450 TRIỆU - 750 TRIỆU', '450 triệu', ' 60 m', '2018-03-18', 'http://timmuanhadat.com.vn/ban-1-khu-nha-ql-50-va-1-khu-nha-gan-cho-hung-long-so-hong-gia-460-tr-680-tr-1ty1-567815.html', 1),
(50, 'BÁN 2 DÃY NHÀ QUỐC LỘ 50 VÀ NHÀ GẦN CHỢ HƯNG LONG, SỔ HỒNG RIÊNG GIÁ 460 TRIỆU - 750 TRIỆU', '460 triệu', ' 60 m', '2018-03-18', 'http://timmuanhadat.com.vn/ban-2-day-nha-quoc-lo-50-va-nha-gan-cho-hung-long-so-hong-rieng-gia-460-trieu-750-trieu-586131.html', 1),
(51, 'Bán 2 dãy nhà Quốc Lộ 50 và gần chợ Hưng Long,sổ hồng riêng giá 420tr-750tr', '420 triệu', ' 60 m', '2018-03-18', 'http://timmuanhadat.com.vn/ban-2-day-nha-quoc-lo-50-va-gan-cho-hung-long-so-hong-rieng-gia-420tr-750tr-587005.html', 1),
(52, 'Cần Bán Chung Cư Tam Trinh, Yên Sở, Hoàng Mai, Hà Nội.', 'Thỏa thuận', ' 47 m', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-chung-cu-tam-trinh-yen-so-hoang-mai-ha-noi--550787.html', 1),
(53, 'Cần Bán Đất Chính Chủ Diện Tích 108m2 Tại Yên Sở.', 'Thỏa thuận', ' 108 m', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-chinh-chu-dien-tich-108m2-tai-yen-so--548079.html', 1),
(54, 'Cần Bán Đất Chính Chủ Tại Xã Đông Dư, Gia Lâm, Hà Nội.', 'Thỏa thuận', ' 240 m', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-chinh-chu-tai-xa-dong-du-gia-lam-ha-noi--570212.html', 1),
(55, 'Cần Bán Đất Chính Chủ Tại Đường Bùi Huy Bích, Hoàng Mai, Hà Nội.', 'Thỏa thuận', ' 85 m', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-chinh-chu-tai-duong-bui-huy-bich-hoang-mai-ha-noi--547323.html', 1),
(56, 'Cần Bán Đất Tại Xã Minh Phú, Sóc Sơn, Hà Nội.', 'Thỏa thuận', ' 40.000 m', '2018-03-18', 'http://timmuanhadat.com.vn/can-ban-dat-tai-xa-minh-phu-soc-son-ha-noi--547467.html', 1),
(57, 'Nhà Hiếm, Gần phố, Trung tâm, An sinh Đỉnh Đào Tấn, Ba Đình', '3,85 tỷ', ' 33 m', '2018-03-18', 'http://timmuanhadat.com.vn/nha-hiem-gan-pho-trung-tam-an-sinh-dinh-dao-tan-ba-dinh-591287.html', 1),
(58, 'Nhà Hiếm, Đẹp Giang Văn Minh, Ba Đình', '4 tỷ', ' 36 m', '2018-03-18', 'http://timmuanhadat.com.vn/nha-hiem-dep-giang-van-minh-ba-dinh-591535.html', 1),
(59, 'Cực Hiếm, Bán nhà Nguyên Hồng, Đống Đa Thang Máy, Ô tô, Vườn Hoa', '11,5 tỷ', ' 44 m', '2018-03-18', 'http://timmuanhadat.com.vn/cuc-hiem-ban-nha-nguyen-hong-dong-da-thang-may-o-to-vuon-hoa-589806.html', 1),
(60, '12 tỷ sở hữu ngay Biệt thự, Bán nhà quận Hoàng Mai', '12 tỷ', ' 98 m', '2018-03-18', 'http://timmuanhadat.com.vn/12-ty-so-huu-ngay-biet-thu-ban-nha-quan-hoang-mai-589118.html', 1),
(61, 'CẮT LỖ SÂU HOẶC BẰNG GIÁ CHUNG CƯ VINHOMES GARDENIA, MIỄN PHÍ TƯ VẤN VÀ XEM NHÀ LH 0934239678', '2.3 tỷ', '80.5 m²', '2018-03-18', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-ham-nghi-thi-tran-cau-dien-prj-vinhomes-gardenia/cat-lo-sau-hoac-bang-gia-mien-phi-tu-van-va-xem-nha-lh-0934239678-pr14498372', 1),
(62, 'BÁN NHÀ CẤP 4 TIỆN XÂY MỚI DT 3.55X18M, NGAY TRUNG TÂM QUẬN TÂN BÌNH 3.49 TỶ', '3.49 tỷ', '66 m²', '2018-03-18', 'https://batdongsan.com.vn/ban-nha-rieng-duong-tran-van-quang-phuong-10-10/cap-4-tien-xay-moi-dt-3-55x18m-ngay-trung-tam-quan-tan-binh-3-65-ty-pr15069313', 1),
(63, 'BÁN CĂN HỘ VINHOMES CENTRAL PARK 1PN 2.3 TỶ, 2PN 3.3 TỶ, 3PN 4.4TỶ, 4PN GIÁ 7.5TỶ. CALL 0977771919', '2.3 tỷ', 'Không xác định', '2018-03-18', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/vinmes-1pn-2-3-ty-2pn-3-3-ty-3pn-4-4ty-4pn-gia-7-5ty-call-0977771919-pr15231011', 1),
(64, 'MỞ BÁN 2020 NỀN GÍA 220TR,ĐÁP ỨNG CHÍNH SÁCH GIÃN DÂN NĂM 2020,VĨNH LỘC A.0933.489.299', '220 triệu', '44 m²', '2018-03-18', 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-1-xa-vinh-loc-a-1/mo-2020-gi-220tr-dp-ung-chinh-sch-gin-dn-nm-2020-0933-489-299-pr15230359', 1),
(65, 'ĐẤT NỀN MẶT TIỀN 25C, DỰ ÁN MEGA CITY2 CHÍNH THỨC NHẬN ĐẶT CHỔ,GIÁ GỐC CĐT, CK 21%_LH:0901.26.12.12', 'Thỏa thuận', 'Không xác định', '2018-03-18', 'https://batdongsan.com.vn/ban-dat-nen-du-an-khu-do-thi-nhon-trach/mat-tien-25c-mega-city2-chinh-thuc-nh-cho-gia-goc-cdt-ck-21-lh-0901-26-12-12-pr15230130', 1),
(66, 'D/A ASCENT LAKESIDE - Q.7 CHUẨN NHẬT CHO NHÀ VIỆT, TẶNG NGAY 100TR, GIÁ CHỈ 36TR/M2, L/H 0919140896', '4.2 tỷ', '103 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-tan-thuan-tay-1-prj-ascent-lakeside/d-a-q-7-chuan-nhat-cho-nha-viet-tang-ngay-100tr-gia-chi-36tr-m2-l-h-0919140896-pr15230089', 1),
(67, 'NHẬN KÝ GỬI ĐẤT NỀN KHU DÂN CƯ TÂN ĐÔ, AN HẠ RIVERSIDE (ECO VILLAGE) LH: 0901.893.659', '900 triệu', '105 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-xa-duc-hoa-ha-prj-an-ha-riverside/nh-ky-gui-khu-d-cu-t-do-eco-village-lh-0901-893-659-pr14057306', 1),
(68, 'NHẬN MUA BÁN, KÝ GỬI KDC AN HẠ RIVERSIDE (TÂN ĐÔ ECO VILLAGE) GIÁ TỐT NHẤT THỊ TRƯỜNG: 0901893659', '650 triệu', '130 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-xa-duc-hoa-ha-prj-an-ha-riverside/nh-mua-ky-gui-kdc-t-do-eco-village-gia-tot-nt-thi-truong-0901893659-pr11869774', 1),
(69, 'BÁN CĂN HỘ FLORITA 68M2, 70M2, 73M2, 80M2 GIÁ CHỈ 2.19 TỶ, THÁNG 3 NHẬN NHÀ LH: 0902416899', '2.19 tỷ', '68 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-d1-phuong-tan-hung-14-prj-can-ho-florita-duc-khai/bao-sang-ten-ch-68m2-73m2-57m2-80m2-103m2-cam-ket-gia-tot-nhat-thi-truong-lh-0902416899-pr13614082', 1),
(70, 'NHẬN MUA BÁN, KÝ GỬI KDC TÂN ĐỨC (TÂN ĐỨC E. CITY) CAM KẾT TỐT NHẤT THỊ TRƯỜNG LH 0933.901.906', '800 triệu', '125 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-xa-huu-thanh-prj-khu-do-thi-e-city-tan-duc/nhan-mua-ky-gui-kdc-cam-kt-tot-nhat-truong-lh-0933-901-906-pr15228929', 1),
(71, 'CẦN BÁN MIẾNG ĐẤT 1000 M2 MẶT TIỀN 15 M ĐƯỜNG BÚNG GỘI  GIÁ TỐT LH:0917198179', 'Thỏa thuận', 'Không xác định', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-duong-bung-goi-xa-cua-duong/can-mieng-1000-m2-mat-tien-gia-tot-lh-0917198179-pr15227858', 1),
(72, 'CĐT XUÂN MAI COMPLEX: CHỈ HƠN 800TR/CĂN HỘ NỘI THẤT ĐẦY ĐỦ, HỖ TRỢ VAY LÃI SUẤT 0%. LH: 0965409828', '800 triệu', 'Không xác định', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-la-khe-prj-xuan-mai-complex/cdt-chi-n-800tr-noi-that-day-du-tro-vay-lai-suat-0-lh-0965409828-pr15227421', 1),
(73, '10 SUẤT NGOẠI GIAO CUỐI CÙNG PHỐ PARIS CANH SALING CLUB BIỂN LỚN NHẤT BÃI TRƯỜNG', '6 tỷ', '160 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-xa-duong-to-prj-sonasea-villas-resort/20-suat-ngoai-giao-cuoi-cung-pho-paris-canh-saling-club-bien-lon-nhat-bai-truong-pr15087028', 1),
(74, 'BÁN NHÀ ĐƯỜNG AN DƯƠNG VƯƠNG 4X13 SỔ HỒNG CHÍNH CHỦ, HẺM 1/ RỘNG 8M', '2.93 tỷ', '185 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-rieng-duong-truong-dinh-hoi-phuong-16-1/hem-6m-p-q8-tret-3-lau-dien-tich-4x3-so-hong-rieng-pr15226596', 1),
(75, 'BÁN CẮT LỖ 500 TRIỆU CĂN HỘ R1 3 NGỦ 133M2 ROYAL CITY', '5.3 tỷ', '133 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-trai-phuong-thuong-dinh-prj-royal-city/cat-lo-500-trieu-r1-3-ngu-133m2-city-pr15226140', 1),
(76, 'BÁN CẮT LỖ CĂN HỘ 3 NGỦ FULL NỘI THẤT RẺ NHẤT TIMES CITY 3,15 TỶ', '3.15 tỷ', '92 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-minh-khai-phuong-vinh-tuy-prj-times-city/cat-lo-3-ngu-full-noi-that-re-nhat-3-15-ty-pr15226099', 1),
(77, 'BÁN NHÀ SỔ RIÊNG THUẬN AN, MỚI XÂY, SỔ RIÊNG, , HỖ TRỢ VAY NH 70% LÃI SUẤT THẤP, LH: 0987.030.434', '500 triệu', '50 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-rieng-phuong-binh-chuan/so-thuan-an-moi-xay-so-ho-tro-vay-nh-70-lai-suat-thap-lh-0987-030-434-pr14945594', 1),
(78, 'RA MẮT 18 CĂN SHOPHOUSE THÔNG MINH VEN BỜ SÔNG HÀN 9H00 NGÀY 24/03/2017 TẠI KHÁCH SẠN MELIA HÀ NỘI', 'Thỏa thuận', 'Không xác định', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-an-trung-2-phuong-an-hai-tay-prj-the-monarchy/ra-mat-18-shophouse-thong-minh-ven-bo-song-han-9h00-ngay-24-03-2017-tai-khach-san-melia-ha-noi-pr15225820', 1),
(79, 'BÁN LÔ ĐẤT KHÁCH SẠN MẶT TIỀN VIEW BIỂN NGUYỄN TẤT THÀNH - TP ĐÀ NẴNG', 'Thỏa thuận', '250 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-duong-nguyen-tat-thanh-phuong-thanh-khe-dong/lo-khach-san-mat-tien-view-bien-tp-da-nang-pr15225756', 1),
(80, 'BÁN CĂN HỘ Q7 RIVERSIDE TẦNG 8, 10, 12, 16, 18, CĂN GÓC, ĐÔNG NAM, VIEW SÔNG, GIÁ GỐC CHỦ ĐẦU TƯ', '1.3 tỷ', '53 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dao-tri-phuong-phu-thuan-3-prj-q7-saigon-riverside/tang-8-10-12-16-18-goc-dong-nam-view-song-gia-goc-chu-dau-tu-pr15225763', 1),
(81, 'CƠ HỘI NGÀN VÀNG MUA NHÀ PHỐ 02 MẶT TIỀN CÓ PHONG THỦY CÁT TƯỜNG CHỈ TỪ 500 TRIỆU ĐỒNG', '12.5 tỷ', '200 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-mat-pho-phuong-an-binh-10/co-hoi-ngan-vang-mua-02-tien-co-ng-thuy-cat-tuong-chi-tu-500-trieu-dong-pr15225744', 1),
(82, 'BÁN ĐẤT DỰ ÁN NẰM NGAY TRUNG TÂM TP. BIÊN HÒA, ĐỒNG NAI', 'Thỏa thuận', 'Không xác định', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-long-binh-tan/nam-ngay-trung-tam-tp-bien-hoa-dong-nai-pr15225582', 1),
(83, 'CHUNG CƯ XÃ HỘI PH CĂN VIEW BIỂN GIÁ GỐC CHỦ ĐẦU TƯ, LH 0905976175 HOẶC 01653008983', 'Thỏa thuận', '63.64 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-vinh-nguyen-prj-ph-nha-trang/xa-hoi-view-bien-gia-goc-chu-dau-tu-lh-0905976175-hoac-01653008983-pr10912323', 1),
(84, 'BÁN CHUNG CƯ ROYAL CITY HÀNG CĐT, TẶNG NỘI THẤT 500TR, MIỄN 10 NĂM DV + CK 16%, VAY 70%, LS: 0%', '34 triệu/m²', '151 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-trai-phuong-thuong-dinh-prj-royal-city/hang-cdt-tang-noi-that-500tr-mien-10-nam-dv-ck-16-vay-70-ls-0-pr15225266', 1),
(85, 'BÁN ĐẤT BV CHỢ RẪY 2 - BÌNH CHÁNH, 450 TRIỆU/NỀN 125M2, ĐƯỜNG 20M, SHR', '450 triệu', '125 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-le-minh-xuan/bv-cho-ray-2-binh-chanh-450-trieu-nen-125m2-20m-shr-pr14903248', 1),
(86, 'NHÀ PHỐ 4 TẤM,NGAY BỆNH VIỆN QUẬN BÌNH TÂN , ĐƯỜNG HƯƠNG LỘ 2 CHỈ 1TỶ650TR/CĂN, SỔ HỒNG CHÍNH CHỦ', '1.65 tỷ', '96 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-rieng-duong-huong-lo-2-65/pho-4-tam-ngay-benh-vien-quan-binh-tan-chi-1ty650tr-can-so-hong-chinh-chu-pr15225086', 1),
(87, 'BÁN GẤP CĂN HỘ 2PN VINHOMES CENTRAL PARK XEM ĐÚNG CĂN GIÁ 3.3TỶ. LH: 0961 79 79 99', '3.3 tỷ', '63 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/gap-2pn-vinmes-xem-dung-gia-3-3ty-lh-0961-79-79-99-pr15224665', 1),
(88, 'MỞ BÁN 6 CĂN NHÀ PHỐ 2 MẶT TIỀN, BIỆT THỰ 3 MẶT SÔNG JAMONA GOLDEN SILK', '8.3 tỷ', '102 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-bui-van-ba-phuong-tan-thuan-dong-1-prj-jamona-golden-silk/mo-9-can-pho-2-mat-tien-3-mat-song-silk-pr14084676', 1),
(89, 'GEM RIVERSIDE Q2 - DỰ ÁN HOT NHẤT KHU VỰC CỦA TĐ ĐẤT XANH- TẶNG NGAY 50TR CHO ĐỢT CÔNG BỐ ĐẦU TIÊN.', '38 triệu/m²', 'Không xác định', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-song-hanh-phuong-an-phu-prj-gem-riverside/q2-du-hot-nhat-khu-vuc-cua-td-dat-xh-tg-ngay-50tr-cho-dot-cong-bo-dau-tien-pr15223967', 1),
(90, 'BÁN CĂN HỘ MASTERI THẢO ĐIỀN GIÁ TỐT NHẤT 1PN GIÁ 2.2 TỶ/ 2PN GIÁ 2.7 TỶ/ 3PN GIÁ 3.1 TỶ', '2.2 tỷ', '50 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/gia-tot-1pn-gia-2-2-ty-2pn-gia-2-7-ty-3pn-gia-3-5-ty-pr14639367', 1),
(91, 'BÁN NHÀ CĂN GÓC 2 MẶT TIỀN TRẦN NHẬT DUẬT, P. TÂN ĐỊNH, QUẬN 1', '31 tỷ', '90.1 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-tran-nhat-duat-phuong-tan-dinh-2/can-goc-tien-t-p-quan-1-pr14036923', 1),
(92, 'CHÍNH CHỦ CẦN BÁN GẤP CĂN HỘ 71.2M2 VIEW CÔNG VIÊN NỘI KHU , GIÁ 2.43 TỶ, LIÊN HỆ: 0948.79.40.79', '2.43 tỷ', '71.2 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-bo-bao-tan-thang-phuong-son-ky/chinh-chu-gap-duplex-dang-cap-3pn-3wc-111-9m2-gia-3-3-ty-lien-he-0948-79-40-79-pr15222854', 1),
(93, 'DỰ ÁN VIEW SÔNG CỔ CÒ : AN PHÚ RIVERSIDE -NHẬN ĐẶT CHỔ CHỈ 20 TRIỆU 1 LÔ, CHỦ ĐẦU TƯ: 0982 30 80 30', '5.5 triệu/m²', '100 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-xa-dien-nam-trung/du-an-view-song-co-co-an-phu-riverside-nhan-cho-chi-20-trieu-1-lo-chu-dau-tu-0982-30-80-30-pr15222646', 1),
(94, 'TỔNG HỢP NHỮNG CĂN HỘ MASTERI ĐANG RAO BÁN T3/2018 CÓ SỔ HỒNG LH 0936 721 723 MR HOÀI', '2.7 tỷ', 'Không xác định', '2018-03-17', 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/tong-p-nhung-dang-rao-t3-2018-co-so-ng-lh-0936-721-723-mr-ai-pr15077743', 1),
(95, 'MỞ BÁN 100 NỀN SIÊU ĐẸP. MẶT TIỀN TỈNH LỘ 10, SỔ HỒNG RIÊNG, GIÁ ƯU ĐÃI', '490 triệu', '80 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-xa-binh-loi-1/mo-0-sieu-dep-mat-tien-so-hong-rieng-gia-uu-dai-pr15221812', 1),
(96, 'BÁN GẤP LÔ ĐẤT 250M2 TỈNH LỘ 10, ĐỨC HÒA HẠ, HUYỆN ĐỨC HÒA CÁCH CẦU XÁNG 3KM, THỔ CƯ 100%, SHR', '1.2 tỷ', '250 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-duc-hoa-ha/gap-250m2-huyen-cach-cau-xang-3km-tho-cu-0-shr-pr15219808', 1),
(97, 'ĐẤT VÀNG THỊ TRẤN DƯƠNG ĐÔNG , MẶT TIỀN 20 M ĐƯỜNG DƯƠNG ĐÔNG - CỬA CẠN , 2 MẶT TIỀN', 'Thỏa thuận', '623.9 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-duong-dt-45-thi-tran-duong-dong/vang-mat-tien-20-m-cua-can-2-mat-tien-pr15219107', 1),
(98, 'BÁN GẤP LÔ ĐẤT 6X20M ĐƯỜNG TRẦN ĐẠI NGHĨA, BÌNH CHÁNH, GẦN QL1A, BV NHI ĐỒNG 3 GIÁ 800 TRIỆU', '800 triệu', '120 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-pho-tran-dai-nghia-xa-le-minh-xuan/gap-lo-6x20m-duong-binh-chanh-gan-ql1a-bv-nhi-dong-3-gia-800-trieu-pr15221283', 1),
(99, 'THANH LÝ TẤT CẢ CÁC LÔ ĐẤT GIÁ RẺ, KDC TÂN ĐÔ ECO VILLAGE ( AN HẠ RIVERSIDE ) LH: 0901893659', '550 triệu', '130 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-xa-duc-hoa-ha-prj-lang-sinh-thai-du-lich-eco-village/thanh-ly-tat-ca-cac-gia-re-kdc-tan-do-anha-riverside-lh-0901893659-pr12704234', 1),
(100, 'TÔI BÁN MẢNH ĐẤT (LÔ KẾ GÓC), ĐỐI DIỆN TRƯỜNG, GẦN CHỢ, NGAY KCN, 125M2, ĐÃ CÓ SHR, ĐƯỜNG NHỰA 14M', '900 triệu', '125 m²', '2018-03-17', 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-binh-loi-1/toi-manh-ke-goc-doi-dien-truong-gan-cho-ngay-kcn-125m2-da-co-shr-nhua-14m-pr14608792', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_name` text COLLATE utf8mb4_unicode_ci,
  `site_url` text COLLATE utf8mb4_unicode_ci,
  `site_link_page` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_url`, `site_link_page`) VALUES
(1, 'batdongsan.com.vn', 'https://batdongsan.com.vn/nha-dat-ban', '/p[page]'),
(2, 'timmuanhadat.com.vn', 'http://timmuanhadat.com.vn/nha-dat-bat-dong-san/', 'can-ban/trang--[page].html'),
(3, 'alonhadat.com.vn', 'https://alonhadat.com.vn/nha-dat/', 'can-ban/trang--[page].html');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
CREATE TABLE `wards` (
  `ward_id` int(11) NOT NULL,
  `ward_name` text COLLATE utf8mb4_unicode_ci,
  `ward_type` text COLLATE utf8mb4_unicode_ci,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `ProviceID` (`province_id`);

--
-- Indexes for table `patterns`
--
ALTER TABLE `patterns`
  ADD PRIMARY KEY (`pattern_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD PRIMARY KEY (`real_estate_id`),
  ADD KEY `LocationID` (`district_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`ward_id`),
  ADD KEY `districtID` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `patterns`
--
ALTER TABLE `patterns`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `real_estate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `ward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
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
