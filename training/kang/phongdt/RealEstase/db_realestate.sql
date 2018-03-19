-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2018 at 01:14 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `real_estates`
--

INSERT INTO `real_estates` (`real_estate_id`, `real_estate_name`, `real_estate_price`, `real_estate_area`, `real_estate_date`, `real_estate_url`, `district_id`) VALUES
(1, 'Căn hộ cao cấp tiện ích 5*, chỉ từ 1,2 tỷ/căn, LK Võ Văn Kiệt, 5-15\' đến Q1,4,5,6,7. Góp 5 tr/tháng', '1.4 Tỷ', '70', '2018-03-19', 'https://dothi.net/ban-can-ho-chung-cu-duong-41-1-phuong-16-1/can-ho-cao-cap-tien-ich-5-chi-tu-12-tycan-lk-vo-van-kiet-515-den-q14567-gop-5-trthang-pr10739828.htm', 1),
(2, 'Nhà đẹp khu phố 6 nối dài đường Dương Cát Lợi kho A Nhà Bè, ưu tiên đầu tư sinh lời, giá 4.4 tỷ', '4.4 Tỷ', '90', '2018-03-19', 'https://dothi.net/ban-nha-rieng-duong-duong-cat-loi-76/nha-dep-khu-pho-6-noi-dai-duong-duong-cat-loi-kho-a-nha-be-uu-tien-dau-tu-sinh-loi-gia-44ty-pr10739409.htm', 1),
(3, 'Căn hộ Oriental Plaza đã bàn giao, thanh toán 50% nhận nhà, tặng 1 lượng vàng. LH: 093.777.3639', '2.2 Tỷ', '77', '2018-03-19', 'https://dothi.net/ban-can-ho-chung-cu-duong-au-co-phuong-tan-thanh/can-ho-oriental-plaza-da-ban-giao-thanh-toan-50-nhan-nha-tang-1-luong-vang-lh-0937773639-pr10737556.htm', 1),
(4, 'Bán nhà phố khu trung tâm DT: 5x12m. Đường Lê Đức Thọ Phường 17 Gò Vấp. Giá mền: 5.6 tỷ.', '5.6 Tỷ', '60', '2018-03-19', 'https://dothi.net/ban-nha-rieng-duong-le-duc-tho-phuong-17-2/ban-nha-pho-khu-trung-tam-dt-5x12m-duong-le-duc-tho-phuong-17-go-vap-gia-men-56-ty-pr10737552.htm', 1),
(5, 'Bán Chung Cư 5* Kiến trúc Pháp, IRIS GARDEN - Mỹ Đình, 115m2, 3PN, 2VS, Giá 2,9 tỷ, Gọi: 0932861888', '2.9 Tỷ', '115', '2018-03-17', 'https://dothi.net/ban-can-ho-chung-cu-duong-tran-huu-duc-phuong-my-dinh-1/ban-chung-cu-5-kien-truc-phap-iris-garden-my-dinh-115m2-3pn-2vs-gia-29-ty-goi-0932861888-pr10735113.htm', 1),
(6, 'Bán lô đất kẹp cống Khu K38 đường An Thượng 37', '9.60 Tỷ', '74', '2018-03-17', 'https://dothi.net/ban-dat-dat-nen-duong-an-thuong-37-phuong-my-an/ban-lo-dat-kep-cong-khu-k38-duong-an-thuong-37-pr10734813.htm', 1),
(7, 'Chính chủ bán nhà 4 tầng, ngã 5 Hà Trì, Hà Đông, giá 1.8 tỷ. 0905596784', '1.8 Tỷ', '32', '2018-03-17', 'https://dothi.net/ban-nha-rieng-duong-ha-tri-phuong-ha-cau/chinh-chu-ban-nha-4-tang-nga-5-ha-tri-ha-dong-gia-18-ty-0905596784-pr7200809.htm', 1),
(8, 'Chỉ cần 1,5 tỷ có ngay nhà 4-5 tầng, về ở ngay Yên Phúc - Hà Đông, HTNH, lãi suất 7,5%. 0967822784', '2.4 Tỷ', '36', '2018-03-17', 'https://dothi.net/ban-nha-rieng-duong-yen-phuc-phuong-phuc-la/chi-can-15-ty-co-ngay-nha-45-tang-ve-o-ngay-yen-phuc-ha-dong-htnh-lai-suat-75-0967822784-pr9118056.htm', 1),
(9, 'Bán nhà 4T ngõ 2 Lê Trọng Tấn, Hà Đông, đường thông, ngõ rộng, ô tô đỗ ngay cửa 2 tỷ. 0905596784', '2 Tỷ', '32', '2018-03-17', 'https://dothi.net/ban-nha-rieng-pho-le-trong-tan-phuong-la-khe/ban-nha-4t-ngo-2-le-trong-tan-ha-dong-duong-thong-ngo-rong-o-to-do-ngay-cua-2-ty-0905596784-pr9038636.htm', 1),
(10, 'Sở hữu nhà mới 4T*40m2  tại đường Lương Thế Vinh, HN chỉ với 3 tỷ. Gọi 0967822784', '4.05 Tỷ', '36', '2018-03-17', 'https://dothi.net/ban-nha-rieng-duong-luong-the-vinh-phuong-thanh-xuan-bac/so-huu-nha-moi-4t40m2-tai-duong-luong-the-vinh-hn-chi-voi-3-ty-goi-0967822784-pr9499738.htm', 1),
(11, 'Bán nhà 4T, 45m2, đường thông, ngõ rộng, Mỗ Lao, Hà Đông gần Hồ Gươm Plaza, 3,2 tỷ. 0905596784', '3.2 Tỷ', '45', '2018-03-17', 'https://dothi.net/ban-nha-rieng-duong-mo-lao-phuong-mo-lao/ban-nha-4t-45m2-duong-thong-ngo-rong-mo-lao-ha-dong-gan-ho-guom-plaza-32-ty-0905596784-pr8502136.htm', 1),
(12, 'Bán căn biệt thự mini LK đường Phạm Văn Đồng gần ngã 4 Bình Triệu, đầu đường 17, sổ hồng rõ ràng', '12 Tỷ', '219', '2018-03-17', 'https://dothi.net/ban-nha-rieng-duong-17-4-phuong-hiep-binh-chanh/ban-can-biet-thu-mini-lk-duong-pham-van-dong-gan-nga-4-binh-trieu-dau-duong-17-so-hong-ro-rang-pr9042959.htm', 1),
(13, 'Bán dãy trọ 10 phòng 1.2 tỷ/dãy đã cho thuê kín. SH riêng, gần KCN', '1.2 Tỷ', '', '2018-03-17', 'https://dothi.net/ban-nha-rieng-duong-nguyen-van-bua-xa-xuan-thoi-thuong/ban-day-tro-10-phong-12-tyday-da-cho-thue-kin-shr-gan-kcn-pr10725064.htm', 1),
(14, 'Bán gấp lô đất 6x20m đường Trần Đại Nghĩa, Bình Chánh, gần QL1A, BV Nhi Đồng III, giá 800 triệu', '800 Triệu', '120', '2018-03-17', 'https://dothi.net/ban-dat-pho-tran-dai-nghia-xa-le-minh-xuan/ban-gap-lo-dat-6x20m-duong-tran-dai-nghia-binh-chanh-gan-ql1a-bv-nhi-dong-iii-gia-800-trieu-pr10723188.htm', 1),
(15, '05 căn phố Hoàng Văn Thái, Lê Trọng Tấn, thang máy đẹp, gara ô tô. KD đẹp, làm VP 60m đến 150m2', '11 Tỷ', '112', '2018-03-17', 'https://dothi.net/ban-nha-rieng-pho-le-trong-tan-phuong-khuong-mai/05-can-pho-hoang-van-thai-le-trong-tan-thang-may-dep-gara-o-to-kd-dep-lam-vp-60m-den-150m2-pr7928270.htm', 1),
(16, 'Bán đất phân lô đường Nguyễn Cảnh Dị, khu đô thị Đại Kim, 81m2, 7.7 tỷ, thương lượng, 0968811116', '7 Tỷ', '100', '2018-03-17', 'https://dothi.net/ban-dat-nen-du-an-duong-nguyen-canh-di-phuong-dai-kim/ban-nha-pho-nguyen-cong-thai-khu-dt-dai-kim-duong-8m-via-he-kd-dinh-59m2-x-5-tang-gia-7-ty-pr9658297.htm', 1),
(17, 'Gấp! Đang rất cần tiền nên bán gấp lô đất, 800tr/200m2', '800 Triệu', '200', '2018-03-16', 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/gap-dang-rat-can-tien-nen-ban-gap-lo-dat-800tr200m2-pr10712641.htm', 1),
(18, 'Bán gấp MT Nguyễn Thượng Hiền, Phường 5, DT 77.4m2, 3 tầng, giá 9 tỷ', '9 Tỷ', '77', '2018-03-16', 'https://dothi.net/ban-nha-mat-pho-duong-nguyen-thuong-hien-phuong-5-16/ban-gap-mt-nguyen-thuong-hien-phuong-5-dt-774-m2-3-tang-gia-9-ty-pr10712533.htm', 1),
(19, 'Bán - Nhận kí gửi đất KDC Tân Đô với giá cực hấp dẫn. LH: 0902412398', 'Thỏa thuận', '125', '2018-03-16', 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-10-419/ban-dat-tan-do-gia-re-thu-lai-dat-nen-du-an-kdc-tan-duc-voi-gia-cao-lh-0902412398-pr10682644.htm', 1),
(20, 'Bán miếng đất ngay Tỉnh Lộ 10, có sổ, gần chợ, bệnh viện, LH 0938 502 089', '839 Triệu', '200', '2018-03-16', 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-mieng-dat-ngay-t-lo-10-co-so-gan-cho-benh-vien-lh-0938-502-089-pr10711192.htm', 1),
(21, 'Bán ký gửi nhà đất khu vực Long An! Liên hệ: 0907 27 56 59', 'Thỏa thuận', '100', '2018-03-16', 'https://dothi.net/ban-dat-xa-huu-thanh/ban-ky-gui-nha-dat-kv-binh-chanh-long-an-lien-he-0907-27-56-59-pr10682106.htm', 1),
(22, 'ĐẤT MẶT TIỀN ĐƯỜNG LONG THUẬN SỔ RIÊNG TỪNG NỀN GIÁ GỐC CHÍNH CĐT CAM KẾT SINH LỜI. LH 0968 788 496', '875 Triệu', '80', '2018-03-16', 'https://dothi.net/ban-dat-duong-long-thuan-phuong-long-phuoc-2/dat-mat-tien-duong-long-thuan-so-rieng-tung-nen-gia-goc-chinh-cdt-cam-ket-sinh-loi-lh-0968-788-496-pr10706776.htm', 1),
(23, 'Cần nhượng lại căn hô tại Xuân Phương 60m2, giá 1.4 tỷ gồm nội thất. LH: 0936 226 992', '1.4 Tỷ', '60', '2018-03-16', 'https://dothi.net/ban-can-ho-chung-cu-duong-70-2-xa-xuan-phuong-3/can-nhuong-lai-can-ho-tai-xuan-phuong-60m2-gia-14-ty-gom-noi-that-lh-0936-226-992-pr10472239.htm', 1),
(24, 'Bán nhà đất P Tân An, TP. Thủ Dầu Một, Bình Dương', '2.9 Tỷ', '990', '2018-03-16', 'https://dothi.net/ban-nha-rieng-duong-dx-131-xa-tan-an/ban-nha-va-dat-p-tan-an-tp-thu-dau-mot-binh-duong-pr10699282.htm', 1),
(25, 'Nhận ký gửi đất khu công nghiệp Tân Đô giá hấp dẫn. liên hệ: 0906 689 497', 'Thỏa thuận', '130', '2018-03-16', 'https://dothi.net/ban-dat-nen-du-an-xa-duc-hoa-ha/nhan-ky-gui-dat-khu-cong-nghiep-tan-do-gia-hap-dan-lien-he-0906-689-497-pr9268735.htm', 1),
(26, 'Đất nền dự án khu dân cư Tân Đô, Long An. Liên hệ để ký gửi: 0901 359 990', 'Thỏa thuận', '130', '2018-03-16', 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-10-419/dat-nen-du-an-khu-dan-cu-tan-do-long-an-lien-he-de-ky-gui-0901-359-990-pr8901067.htm', 1),
(27, 'Giá cực cao - Mua đất dự án Tân Đô, Long An 0906.779.195', 'Thỏa thuận', '', '2018-03-16', 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-10-419/gia-cuc-cao-mua-dat-du-an-tan-do-long-an-0906779195-pr6295671.htm', 1),
(28, 'Tôi đang cần tiền nên sang gấp 3 lô đất thổ cư 100%, sổ hồng riêng, xây dựng tự do', '405 Triệu', '125', '2018-03-16', 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/toi-dang-can-tien-nen-sang-gap-3-lo-dat-tho-cu-100-so-hong-rieng-xay-dung-tu-do-pr7088012.htm', 1),
(29, 'Đất nền dự án Biên Hòa chỉ 6.5 - 7tr/m2, giai đoạn 1, sinh lợi 30%/năm, SH riêng, 090.10.68000', '800 Triệu', '130', '2018-03-15', 'https://dothi.net/ban-dat-nen-du-an-pho-phung-hung-1-xa-tam-phuoc-3/dat-nen-du-an-bien-hoa-chi-657trm2-giai-doan1-sinh-loi-30nam-sh-rieng-0901068000-pr10693689.htm', 1),
(30, 'Mở bán 50 lô đất ở đô thị mặt tiền Tỉnh Lộ 10, giá 405 tr, đối diện chợ chiều Tỉnh Lộ 10, sổ riêng', '405 Triệu', '125', '2018-03-15', 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-10-xa-pham-van-hai/mo-ban-50-lo-dat-o-do-thi-mat-tien-tinh-lo-10-gia-405-tr-doi-dien-cho-chieu-tinh-lo-10-so-rieng-pr9150529.htm', 1),
(31, 'Ngân hàng SCB thanh lí gấp lô đất gần bệnh viện Chợ Rẫy II, SHR, 700tr/130m2. Đường nhựa 10m', '700 Triệu', '130', '2018-03-15', 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ngan-hang-scb-thanh-li-gap-lo-dat-gan-benh-vien-cho-ray-ii-shr-700tr130m2-duong-nhua-10m-pr10693492.htm', 1),
(32, 'Đất nền KĐT Phú Sinh mới chỉ 330 tr/lô, CK 10 chỉ vàng + STK 10 triệu + Trả góp 24 tháng 0% LS', '330 Triệu', '80', '2018-03-15', 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-9-419/dat-nen-kdt-phu-sinh-moi-chi-330trlo-ck-10-chi-vang-stk-10-trieu-tra-gop-24-thang-0-ls-pr10693370.htm', 1),
(33, 'Chỉ từ 1,2 tỷ/căn, lk Võ Văn Kiệt, Q.8, giá tốt giai đoạn đầu, tk Châu Âu, tiện ích 5*, góp 5tr/th', '1.2 Tỷ', '70', '2018-03-15', 'https://dothi.net/ban-can-ho-chung-cu-duong-41-1-phuong-16-1/chi-tu-12-tycan-lk-vo-van-kiet-q8-gia-tot-giai-doan-dau-tk-chau-au-tien-ich-5-gop-5trth-pr10685930.htm', 1),
(34, 'Nhà phố liền kề 3.5 tỷ/căn, trung tâm TP.Biên Hòa, 2 mặt tiền Lý Văn Sâm và Nguyễn Bảo Đức', '3.5 Tỷ', '85', '2018-03-15', 'https://dothi.net/ban-nha-mat-pho-duong-nguyen-bao-duc-phuong-tam-hiep-4/nha-pho-lien-ke-35tycan-trung-tam-tpbien-hoa-2-mat-tien-ly-van-sam-va-nguyen-bao-duc-pr10685507.htm', 1),
(35, 'Chỉ 4.5 tỷ có ngay nhà cực hiếm ô tô tránh Q. Cầu Giấy, KD đỉnh, 35m2 x 3 tầng', '4.5 Tỷ', '35', '2018-03-14', 'https://dothi.net/ban-nha-rieng-pho-tran-binh-phuong-mai-dich/chi-45-ty-co-ngay-nha-cuc-hiem-o-to-tranh-q-cau-giay-kd-dinh-35m2-x-3t-pr10678048.htm', 1),
(36, 'Gia đình tôi cần bán 300m2 đất, giá 850 triệu, SH riêng, MT Tỉnh Lộ 10. LH: 0938702747', '850 Triệu', '300', '2018-03-14', 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/gia-dinh-toi-can-ban-300m2-dat-gia-850-trieu-sh-rieng-mt-tinh-lo-10-lh-0938702747-pr9217775.htm', 1),
(37, 'Nhượng 2 lô giá 600tr/80m2 - SHR, MT Vĩnh Lộc - Bình Chánh - Gần Chợ buôn bán', '600 Triệu', '80', '2018-03-14', 'https://dothi.net/ban-dat-duong-vinh-loc-xa-binh-chanh-3/nhuong-2-lo-gia-600tr80m2-shr-mt-vinh-loc-binh-chanh-gan-cho-buon-ban-pr8955016.htm', 1),
(38, 'Bán nhà mặt tiền HXH 487 Huỳnh Tấn Phát, P.Tân Thuận Đông, Q7, DT 5x12m, 2 lầu, ST, giá 4.6 tỷ', '4.6 Tỷ', '60', '2018-03-14', 'https://dothi.net/ban-nha-rieng-duong-huynh-tan-phat-phuong-tan-thuan-dong-1/ban-nha-mat-tien-hem-xe-hoi-487-huynh-tan-phat-p-tan-thuan-dong-q7dt-5x12m-3-lau-stgia-46ty-pr10669699.htm', 1),
(39, 'Bán gấp lô đất 6x19m, 5x26m thổ cư, SH riêng, KDC Tên Lửa 2, giá 465 triệu', '465 Triệu', '114', '2018-03-14', 'https://dothi.net/ban-dat-nen-du-an-xa-pham-van-hai/ban-gap-lo-dat-6x19m-5x26m-tho-cu-sh-rieng-kdc-ten-lua-2-gia-465-trieu-pr6245821.htm', 1),
(40, 'Bán gấp lô đất 2 mặt tiền, vị trí đắc địa để kinh doanh, sổ hồng, xây dựng ngay. 950 triệu', '950 Triệu', '178', '2018-03-13', 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-gap-lo-dat-2-mat-tien-vi-tri-dac-dia-de-kinh-doanh-so-hong-xay-dung-ngay-950-trieu-pr9893237.htm', 1);

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
