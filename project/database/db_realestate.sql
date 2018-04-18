-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 03:32 AM
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
  `data_url_md5` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`data_id`, `data_url`, `data_title`, `data_price`, `data_area`, `data_description`, `data_type_of_news`, `data_type_BDS`, `data_location`, `data_date`, `data_project_name`, `data_contact_name`, `data_contact_phone`, `data_contact_email`, `data_contact_address`, `status`, `data_url_md5`, `site_id`) VALUES
(1, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-mai-chi-tho-phuong-an-phu-prj-centana-thu-thiem/mo-25-gia-goc-cuoi-cung-tt-1-5-ty-vay-50-khong-minh-nhap-pr15608110', 'MỞ BÁN 25 CĂN CENTANA THỦ THIÊM GIÁ GỐC CUỐI CÙNG, TT 1,5 TỶ, VAY 50% KHÔNG CHỨNG MINH THU NHẬP', 'Thỏa thuận', '88m²', 'Mặt tiền đại lộ Mai Chí Thọ, cửa ngõ trục giao thông Đông - Tây, cách quận 1 chỉ 6km.<br/><br/>Kết nối nhiều tiện ích: Trung tâm tài chính mới Thủ Thiêm, trường quốc tế AIS, Parkson, Megamall, bệnh viện quốc tế Phúc An Khang, khu vui chơi tuyết Sài Gòn Snow Town...<br/><br/>Tiện tích nội khu: Công viên Safari 5000m2 đã hoạt động. Hồ bơi chân mây 450m2, gym, spa, Yoga, Showroom, siêu thị, nhà trẻ, Business Louge.<br/><br/>Giao nhà hoàn thiện, nội thất cao cấp: Thang máy Thụy Sĩ Schindler, cửa chống cháy 70 phút, khóa từ Adel của Mỹ, TBVS ToTo, tủ kệ bếp phủ Arylic, mặt bếp bằng đá, máy lọc nước uống tại vòi, sàn gỗ phòng ngủ...<br/><br/>Đang hoàn thiện, quý 4/2018 giao nhà.<br/><br/>Diện tích: 88m2 & 97m2, 2 phòng ngủ và 1 phòng đa năng. Tất cả các căn hộ đều có balcony, đón nắng và gió, view sông, khu thể thao quốc gia Rạch Chiếc, Thảo Điền, An Phú...<br/><br/>Giá chỉ từ 3,09 tỷ có VAT, Đảm bảo tốt nhất so với tất cả các dự án căn hộ trong khu vực. Lựa chọn tối ưu để an cư và đầu tư.<br/>Hỗ trợ vay ngân hàng 70% trong 20 năm. Vay 50% không cần chứng minh thu nhập.<br/><br/>Liên hệ: 0912 598058.<br/>http://happyland.net.vn/can-ho-quan-2-centana-thu-thiem/<br/>', 'Nhà đất bán', 'Bán căn hộ chung cư', 'Dự án Centana Thủ Thiêm, Đường Mai Chí Thọ, Phường An Phú, Quận 2, Hồ Chí Minh', '2018-04-14', 'MỞ BÁN 25 CĂN CENTANA THỦ THIÊM GIÁ GỐC CUỐI CÙNG, TT 1,5 TỶ, VAY 50% KHÔNG CHỨNG MINH THU NHẬP', 'Cty Happy Land', '0912598058', '', '', 2, 'a5d197e733d429a9abfa5f6bd17b8a39', 1),
(2, 'https://batdongsan.com.vn/ban-dat-duong-tran-van-giau-xa-le-minh-xuan/nhanh-lo-goc-200m2-va-ke-goc-125m2-doi-dien-kcn-mt-20m-gia-800tr-ngay-sieu-thi-pr15607431', 'BÁN NHANH LÔ GÓC 200M2 VÀ KỀ GÓC 125M2, ĐỐI DIỆN KCN, MT 20M, GIÁ 800TR, NGAY SIÊU THỊ', '800 triệu', '125m²', '* Cần tiền bán gấp lô góc 200m2.<br/>+ Lô kế góc 125m2, nằm ngay MT 20m, đối diện cổng cụm KCN, công nhân đông, kinh doanh sầm uất. Nằm trục đường chính kinh doanh cho thuê, buôn bán thuận lợi pháp lý rõ ràng. Giá bán gấp nên sang rẻ cho A/C cần KD.<br/>* Nằm trục đường Trần văn Giàu, ngay đối diện cổng KCN cách mặt tiền Tỉnh Lộ 10 500m. Đối diện chợ, BV, gần trường học.....<br/>* Diện tích: Lô góc - 200m2, lô thường - 125m2. Mặt tiền 20m.<br/>* Hạ tầng hoàn thiện đường nhựa 100%, điện nước đầy đủ, dân cư sinh sống đông đúc.<br/>* Mặt tiền đối diện khu chợ thương mại kinh doanh sầm uất, thuận lợi. Gần Coop Mart Vĩnh Lộc, chợ, trường học, hệ thống các ngân hàng lớn,.....<br/>* Giá bán: 1,2tỷ/200m2 (Lô góc), 800tr/125m2 (kế góc).<br/>*Bao sang sổ, nhận đất xây dựng ngay.<br/>* Anh/chị cần xin liên hệ ngay: 0938448286 - Anh Quang.<br/>- Đi xem đất và sổ, xin cảm ơn!!', 'Nhà đất bán', 'Bán đất', 'Đường Trần Văn Giàu, Xã Lê Minh Xuân, Bình Chánh, Hồ Chí Minh', '2018-04-14', 'BÁN NHANH LÔ GÓC 200M2 VÀ KỀ GÓC 125M2, ĐỐI DIỆN KCN, MT 20M, GIÁ 800TR, NGAY SIÊU THỊ', 'Lê Quang Duy', '0938448286', '', '', 2, '526eee49b6eaa640a9cc7370e065d409', 1),
(3, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ngo-chi-quoc-phuong-binh-chieu-prj-thu-duc-riverside/gia-goc-1-5-ty-80m2-uu-dai-10-dip-le-30-4-1-5-vi-tri-vang-tt-shr-nhan-xd-ngay-pr15607107', 'GIÁ GỐC 1,5 TỶ/80M2, ƯU ĐÃI 10 NỀN DỊP LỄ 30/4 - 1/5, VỊ TRÍ VÀNG TT THỦ ĐỨC, SHR, NHẬN NỀN XD NGAY', '1.5 tỷ', '80m²', '', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Dự án Thủ Đức Riverside, Đường Ngô Chí Quốc, Phường Bình Chiểu, Thủ Đức, Hồ Chí Minh', '2018-04-14', 'GIÁ GỐC 1,5 TỶ/80M2, ƯU ĐÃI 10 NỀN DỊP LỄ 30/4 - 1/5, VỊ TRÍ VÀNG TT THỦ ĐỨC, SHR, NHẬN NỀN XD NGAY', 'Chủ Đầu Tư', '0939233433', '', '', 2, '8d1d130178d5128294ad69279f9b5e4b', 1),
(4, 'https://batdongsan.com.vn/ban-nha-rieng-duong-binh-chuan-phuong-binh-chuan/moi-xay-dep-580-trieu-1-lau-1-tret-ngay-nga-tu-nhu-hinh-lh-0917562527-pr12939115', 'BÁN NHÀ MỚI XÂY, SỔ RIÊNG 1,35 TỶ 1 LẦU, 1 TRỆT NGAY NGÃ TƯ BÌNH CHUẨN (NHÀ NHƯ HÌNH).LH:0917562527', '1.35 tỷ', '68m²', 'Do không có nhu cầu ở nên tôi cần bán một số căn nhà ngay gần Miếu Ông Cù,<a href=\"/ban-nha-rieng-phuong-binh-chuan\"> Bình Chuẩn</a><br/><br/>Nhà xây 1 lầu, 1 trệt, 3 PN, 1 phòng khách, 1 vệ sinh, nhà đẹp, kiên cố, sổ đỏ chính chủ<br/><br/>DT: 4x12,5m- thổ cư 100%, ngay chợ Phú Phong- giá: 1,65 tỷ<br/>DT: 4 x17m- thổ cư 50m, đối diện chợ Phú Phong - giá : 1,35 tỷ<br/><br/>Khu nhà ngay trung tâm thương mại, rất thuận tiện cho việc đi lại, gần chợ, gần trường học, gần bệnh viện, khu dân cư ổn định, vị trí đẹp, không gian thoáng mát, cơ sở hạ tầng hoàn chỉnh, đường rộng 7m<br/><br/>Liên hệ: 0969143135/ 0917562527 chính chủ c Nhung', 'Nhà đất bán', 'Bán nhà riêng', 'Đường Bình Chuẩn, Phường Bình Chuẩn, Thuận An, Bình Dương', '2018-04-14', 'BÁN NHÀ MỚI XÂY, SỔ RIÊNG 1,35 TỶ 1 LẦU, 1 TRỆT NGAY NGÃ TƯ BÌNH CHUẨN (NHÀ NHƯ HÌNH).LH:0917562527', 'c Nhung', '0969143135', '', '', 2, 'c856047f3b295fcae9e42d5e6d72dbad', 1),
(5, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-co-nhue-1-prj-an-binh-city/chuyen-nhuong-lai-9-thuoc-gia-tot-nhat-thi-truong-lien-he-0911-530-588-pr15606670', 'CHUYỂN NHƯỢNG LẠI 9 CĂN THUỘC CHUNG CƯ AN BÌNH CITY GIÁ TỐT NHẤT THỊ TRƯỜNG. LIÊN HỆ: 0911.530.588', '24.6 triệu/m²', '90.6m²', 'Chuyển nhượng lại chung cư An Bình City, giá bán chỉ từ 24,6tr/m2.<br/>Hỗ trợ 24/7 em Ngân: 0911.530.588 - 0976.49.11.88.<br/><br/>Tháp A8:<br/>Căn 5 tháp A8, loại căn hộ A1, diện tích 74,7m2, căn 2 phòng ngủ đều có ánh sáng và gió tự nhiên, cửa hướng Nam, ban công hướng Bắc view khu biệt thự và hồ điều hòa.<br/>Giá bán: 25,3tr/m2, tổng giá trị 1.9 tỷ/căn.<br/><br/>- Căn 11 tháp A8, loại căn hộ B5, diện tích 86,5m2, cửa chính Đông ban công chính Tây và chính Nam view công viên và hồ điều hòa 16ha, thiết kế thông minh tất cả các phòng đều có ánh sáng và gió tự nhiên.<br/>Giá bán: 25,4tr/m2, tổng giá trị căn hộ 2,2 tỷ.<br/><br/>- Căn 01 tháp A8, loại căn hộ C1, diện tích 114,5m2, cửa vào chính Nam, ban công chính Bắc và chính Tây, view hồ điều hòa và khu biệt thự tuyệt đẹp.<br/>Giá bán: 25,2tr/m2. Tổng giá trị căn hộ 2,7 tỷ.<br/><br/>- Căn 03 tháp A8, loại căn hộ B1, diện tích 90,6m2, cửa vào chính Nam, ban công chính Bắc, view hồ, khu biệt thự và chung cư Green Stars.<br/>Giá bán: 24,6tr/m2. Tổng giá trị 2,2 tỷ/căn.<br/><br/>- Căn 10 tháp A8, loại căn hộ B4, diện tích 83,7m2, ban công chính Đông và Nam, cửa vào chính Bắc, view quảng trường và bể bơi rất đẹp.<br/>Giá bán: 25,8tr/m2. Tổng giá trị 2,3 tỷ.<br/><br/>Tháp A7:<br/>- Căn 5 tháp A7, loại căn hộ A1, diện tích 74,7m2, căn 2 phòng ngủ đều có ánh sáng và gió tự nhiên, cửa hướng Bắc, ban công chính Nam view quảng trường tuyệt đẹp.<br/>Giá bán: 25,6tr/m2. Tổng giá trị 1.9 tỷ/căn.<br/><br/>- Căn 02 tháp A7, loại căn hộ C2, diện tích 114,5m2, căn góc, cửa vào chính Nam, ban công chính Tây và Bắc, view hồ và công viên cây xanh đẹp.<br/>Giá bán: 24,6tr/m2. Tổng giá trị căn hộ 2,7 tỷ.<br/><br/>- Căn 09 tháp A7, loại căn hộ B4, diện tích 83,7m2, căn góc, ban công chính Đông và Nam, cửa vào chính Bắc, view 2 phía quảng trường và bể bơi.<br/>Giá bán: 25tr/m2. Tổng giá trị 2,3 tỷ.<br/><br/>- Căn 04 tháp A7, loại căn hộ B2, diện tích 90,6m2, ban công chính Bắc, cửa vào chính Nam, vị trí view vườn hoa và hồ điều hòa.<br/>Giá bán: 24,4tr/m2. Tổng giá trị 2,3 tỷ/căn.<br/><br/>- Căn 12 tháp A7, loại căn hộ B6, diện tích 86,5m2, ban công chính Đông và Bắc, cửa vào chính Tây, view bể bơi và quảng trường.<br/>Giá bán: 25,5tr/m2. Tổng giá trị 2,4 tỷ/căn.<br/>Ngoài ra tôi còn nhiều căn khác với giá bán hợp lý.<br/><br/>2. Tiến độ thanh toán:<br/><br/>- Đợt 1: 25% ngay khi ký hợp đồng mua bán.<br/>- Đợt 2: 30% sau 45 ngày kể từ ngày ký HĐMB.<br/>- Đợt 3: 15% sau 90 ngày kể từ ngày ký HĐ.<br/>- Đợt 4: 25% khi nhận thông báo bàn giao căn hộ.<br/>- Đợt 5: 5% khi cấp giấy chứng nhận quyền sử dụng đất.<br/><br/>3. Điểm nổi bật dự án:<br/><br/>- Thiết kế căn hộ thông minh, diện tích hợp lý tất cả các phòng đều có ánh sáng và đón gió tự nhiên.<br/><br/>- Cư dân sống nơi đây sẽ được sử dụng một quần thể rộng với kiến trúc hiện đại theo đó là không gian sống trong lành.<br/><br/>- Dịch vụ hoàn hảo có bể bơi bốn mùa, khu tập gym, spa... Và trung tâm thương mại đảm bảo cho cư dân nơi đây có một cuộc sống hiện đại.<br/><br/>Hỗ trợ 24/7 em Ngân: 0911.530.588 - 0976.49.11.88.<br/>...', 'Nhà đất bán', 'Bán căn hộ chung cư', 'Dự án An Bình City, Đường Phạm Văn Đồng, Phường Cổ Nhuế 1, Bắc Từ Liêm, Hà Nội', '2018-04-14', 'CHUYỂN NHƯỢNG LẠI 9 CĂN THUỘC CHUNG CƯ AN BÌNH CITY GIÁ TỐT NHẤT THỊ TRƯỜNG. LIÊN HỆ: 0911.530.588', 'Lương Kim Ngân', '0911530588', '', '', 2, '4b10d9e1c52ced4b3e9716677a5fa103', 1),
(6, 'https://batdongsan.com.vn/ban-nha-rieng-duong-binh-chuan-phuong-binh-chuan/can-gap-moi-xay-1-lau-1-tret-chi-570-tr-lh-0908604618-pr15606512', 'CẦN BÁN GẤP NHÀ RIÊNG BÌNH CHUẨN, MỚI XÂY, 1 LẦU 1 TRỆT, CHỈ 570 TR. LH 0908604618', '570 triệu', '48m²', 'Do cần tiền đầu tư nên tôi muốn bán gấp một số căn nhà mới xây ngay <a href=\"/ban-nha-rieng-duong-binh-chuan-161\">Bình Chuẩn</a><br/><br/>DT: 4x12m- 570tr<br/>DT: 5,5x20m- 780tr<br/>Nhà đúc 1 lầu 1 trệt 2pn 1pk 1pt nhà bếp vs 2wc <br/><br/>Nhà thiết kế hiện đại, thoáng mát có sân để xe hơi ngần trường chơ và khu công nghiệp ngay trung tâm phường bình chuẩn vị trí cực kỳ đắc địa<br/><br/>Liên hệ chủ nhà: 0908604618 gặp mr Hưng', 'Nhà đất bán', 'Bán nhà riêng', 'Đường Bình Chuẩn, Phường Bình Chuẩn, Thuận An, Bình Dương', '2018-04-14', 'CẦN BÁN GẤP NHÀ RIÊNG BÌNH CHUẨN, MỚI XÂY, 1 LẦU 1 TRỆT, CHỈ 570 TR. LH 0908604618', 'Vu Van Hieu', '0908604618', '', '', 2, 'e4fa4e07d47091d484b6f21d93ff58a1', 1),
(7, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-vo-van-kiet-phuong-3-15-prj-viva-riverside/mo-100-vi-tri-dep-nhat-gia-goc-chu-dau-tu-lien-he-dat-cho-0933008769-pr15606364', 'VIVA RIVERSIDE MỞ BÁN 100 CĂN VỊ TRÍ ĐẸP NHẤT, GIÁ GỐC CHỦ ĐẦU TƯ, LIÊN HỆ ĐẶT CHỖ: 0933008769', '2.3 tỷ', '83m²', 'Cập nhật chi tiết giỏ hàng tháng 4/2018: 0933008769.<br/>* Tổng quan dự án Viva Riverside, Quận 6 của CĐT Vietcomreal:<br/>+ Chủ đầu tư: Vietcomreal, CĐT uy tín trên thị trường.<br/>+ Ngân hàng bảo lãnh: Vietcombank ngân hàng thương mại cổ phần lớn uy tín.<br/>+ Vị trí dự án: Trung tâm Quận 6, 3 mặt tiền view sông, thoáng mát, liền kề TT thương mại Satra Mall lớn nhất Q. 6.<br/>+ Nhà thầu thi công: Hòa Bình đơn vị thi công chất lượng hàng đầu.<br/>+ Hiện tại dự án đang vượt tiến độ bàn giao.<br/>+ Pháp lý dự án: Rõ ràng minh bạch, pháp lý đầy đủ.<br/>+ Giá cả hợp lý đi cùng với chất lượng dự án.<br/>* Hotline tư vấn: 0933008769 (24/7).<br/><br/>* Dự án chung cư cao cấp Viva Riverside của Vietcomreal có các lợi thế như sau:<br/>- Mặt tiền đại lộ Võ Văn Kiệt (số 1472, đoạn đẹp nhất, trên bến dưới thuyền) và 2 mặt tiền đường gia phú, đường 61, nằm ở trung tâm Q. 5, Q. 6, cách cầu Nguyễn Tri Phương 2km.<br/>- Chủ đầu tư Vietcomreal, nhà thầu Hòa Bình, quản lý bởi the Sankei Building Management Nhật Bản.<br/>- Tiện ích nội khu: Trung tâm thương mại tại tầng 1, hồ bơi, phòng gym, nhà trẻ, phòng y tế tầng 3, vườn treo paradise tầng 21.<br/>- Tiện ích ngoại khu: Liền kề đại siêu thị satramall tại 1466 Võ Văn Kiệt (đã được phê duyệt), gần chợ Bình Tây, khu Chợ Lớn, cano-bus tuyến Bạch Đằng - Lò Gốm.<br/>- Đã xây đến lầu 25, dự kiến giao nhà quý III/2018, các căn hộ được thiết kế rất đẹp và hợp lý.<br/>- Đặc biệt, ngân hàng Vietcombank bảo lãnh và cho vay từng căn hộ, tỷ lệ 70%, lãi suất 0%/năm trong vòng 18 tháng.<br/><br/>Hỗ trợ thông tin dự án cho khách hàng 24/7: 0933008769.', 'Nhà đất bán', 'Bán căn hộ chung cư', 'Dự án Viva Riverside, số 1472 Đường Võ Văn Kiệt, Phường 3, Quận 6, Hồ Chí Minh', '2018-04-14', 'VIVA RIVERSIDE MỞ BÁN 100 CĂN VỊ TRÍ ĐẸP NHẤT, GIÁ GỐC CHỦ ĐẦU TƯ, LIÊN HỆ ĐẶT CHỖ: 0933008769', 'Phạm Viết Trường Linh', '0913337157', '', '', 2, '0671062c34162b86bfac0ba772c44f25', 1),
(8, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-him-lam-cho-lon/khu-quan-6-giao-nha-thang-5-gia-1-5-1-75-ty-lien-he-0934003558-pr15021077', 'CĂN HỘ KHU HIM LAM QUẬN 6 GIAO NHÀ THÁNG 5. GIÁ 1.5-1.75 TỶ, LIÊN HỆ: 0934003558', '1.75 tỷ', '72m²', 'LH Phiêu: 0934003558.<br/>Mở bán Block B các căn tầng 4,5,6,7, 14.<br/>Những điểm đặc biệt nổi bật của dự án:<br/>- Dự án đã cất nóc, đang hoàn thiện, giao nhà quý II/2018.<br/>- Giá gốc cực ưu đãi từ CĐT, thanh toán 3% mỗi tháng, đóng đủ 70% nhận nhà.<br/>- Vị trí cực kì đắc địa: Nằm trong khu thương gia Him Lam Chợ Lớn, view sông cực thoáng mát yên tĩnh, tiện ích nội khu gym, spa, cafe đầy đủ tiện nghi.<br/>Vị trí đắc địa dễ dàng kết nối nhanh chóng qua các quận trung tâm: Q5, Q1, Q11, Tân Phú, Bình Tân, Đầm Sen, về các tỉnh Miền Tây...<br/>- Tiện ích ngoại khu ngay trung tâm quận 6: Galaxy Kinh Dương Vương, Metro Bình Phú, Coop Mart Phú Lâm. Trường học xung quanh đầy đủ các cấp: Mầm non, tiểu học, trung học <a href=\"/ban-can-ho-chung-cu-duong-nguyen-van-luong-58\">Nguyễn Văn Luông</a>, gần bệnh viện quận 6, bệnh viện Triều An, gần bến xe Miền Tây.<br/>- Thiết kế thông thoáng, đa số đều là căn góc, diện tích đa dạng: Từ 57m2 (1.55 tỷ), 61m2 (1 tỷ 600tr), 72m2 (1 tỷ 750tr). Đã bao gồm VAT rẻ hơn so với thị trường khu vực từ 3 tr - 10 triệu/m2.<br/>- Giao nhà hoàn thiện nội thất full sàn gỗ, thiết bị vệ sinh, tủ bếp.<br/>Liên hệ: 0934003558.', 'Nhà đất bán', 'Bán căn hộ chung cư', 'Dự án Him Lam Chợ Lớn, Quận 6, Hồ Chí Minh', '2018-04-14', 'CĂN HỘ KHU HIM LAM QUẬN 6 GIAO NHÀ THÁNG 5. GIÁ 1.5-1.75 TỶ, LIÊN HỆ: 0934003558', 'Nguyễn Khả Phiêu', '0934003558', '', '', 2, '07f0dfc1ae3ccb296609d65e00a23dc0', 1),
(9, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-cuu-phu-phuong-tan-tao-a-prj-tecco-town-binh-tan/quan-nhan-nha-6-2018-pr15605836', 'CĂN HỘ QUẬN BÌNH TÂN NHẬN NHÀ 6/2018 HOTLINE: 0939.345.465', '1.25 tỷ', '81m²', '', 'Nhà đất bán', 'Bán căn hộ chung cư', 'Dự án Tecco Town Bình Tân, Bình Tân, Hồ Chí Minh', '2018-04-14', 'CĂN HỘ QUẬN BÌNH TÂN NHẬN NHÀ 6/2018 HOTLINE: 0939.345.465', 'Nguyên Duyêt Tân', '0939345465', '', '', 2, 'c005b2f13020b4282a69331c739f8ea5', 1),
(10, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-quoc-lo-13-phuong-hiep-binh-chanh/quyet-dinh-60-moi-siet-chat-ra-so-se-het-va-gia-se-len-mua-ngay-mat-tien-ql13-1ty89-118m2-pr15605845', 'QUYẾT ĐỊNH 60 MỚI SIẾT CHẶT RA SỔ, ĐẤT SẼ HẾT VÀ GIÁ SẼ LÊN, MUA NGAY ĐẤT MẶT TIỀN QL13 1TỶ89/118M2', '1.89 tỷ', '118m²', 'Tin nóng trong ngày!!!<br/>LH 0976.639.021 - 0934.077.477!<br/>Thông tin cụ thể: - Đất đẹp, 2 mặt tiền, hướng Đông, nhìn ra Quốc Lộ 13, hướng tây nhìn ra sông Sài Gòn - cầu Bình Lợi.<br/>- Vị trí đắc địa, nằm giữa khu đô thị hiện hữu Vạn Phúc City và dự án căn hộ Saigon Riverside City Thủ Đức (2.8 ha).<br/>- Gần BV Quốc tế Hạnh Phúc, bệnh viện Thủ Đức, Gần Chợ Đầu Mối Nông Sản Thủ Đức. Làng Đại học Quốc gia TP. HCM và Trung tâm Thể dục Thể thao Quốc gia II, có thể kinh doanh nhà trọ tốt.<br/>- Cách đại lộ Phạm Văn Đồng 1km, chỉ 15 phút là tới Sân bay Tân Sơn Nhất, và chỉ 3 phút là tới bến xe Miền Đông.<br/>- Ngay tuyến Metro 3B, trường học cấp 1, 2, 3, trường Quốc tế, siêu thị Lotte, E- mart, và Aeon Mall. Và nhiều tiện ích khác.<br/>- Khu dân cư yên tĩnh.<br/>- Sổ đỏ chính chủ.<br/><br/>Tặng ngay 2 cây Vàng 9999 cho khách thiện chí.<br/>Mua vàng thì lỗ mua thổ thì lời....!!!<br/>- Giá gốc CĐT 1.89tỷ/118m2, giá tốt so với khu vực và các dự án gần đó.<br/>- Ngân hàng hỗ trợ vay 50%.<br/>- Diện tích từ 118m2 đến 123m2, Sổ hồng riêng, Xây dựng tự do.<br/>- Khu dân cư hiện hữu, xung quanh biệt thự và nhà phố, tri thức cao, đường xá thông thoáng thuận tiện.<br/>LH ngay và liền cho chủ đất: LH 0976.639.021 - 0934.077.477!', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Đường Quốc Lộ 13, Phường Hiệp Bình Chánh, Thủ Đức, Hồ Chí Minh', '2018-04-14', 'QUYẾT ĐỊNH 60 MỚI SIẾT CHẶT RA SỔ, ĐẤT SẼ HẾT VÀ GIÁ SẼ LÊN, MUA NGAY ĐẤT MẶT TIỀN QL13 1TỶ89/118M2', 'Chủ Đất', '0934077477', '', '', 2, 'a7ce7ea4c26c4f188e0d63364d72fbac', 1),
(11, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-phap-van-phuong-yen-so-prj-gamuda-city-gamuda-gardens/shop-house-vua-o-vua-kinh-doanh-lh-0918714569-pr15605639', 'SHOPHOUSE GAMUDA - VỪA Ở VỪA KINH DOANH. LH 0918714569', 'Thỏa thuận', '75m²', 'Chủ đầu tư: Công ty TNHH Gamuda Land Việt Nam.<br/>Liên hệ: 0918714569.<br/><br/>- Đóng 50% nhận nhà, 50% còn lại hỗ trợ trả chậm 36 tháng không lãi suất.<br/><br/>Diện tích: 75m2 - 300m2.<br/>Bàn giao hoàn thiện bên ngoài, thô bên trong.<br/>Xây 4 tầng.<br/>________<br/>* Tổng quan khu đô thị sinh thái Gamuda Gardens.<br/>- Tổng diện tích đất: 73ha.<br/>- Mật độ cây xanh chiếm 50%.<br/>- Khu đô thị khép kín bao gồm tiện ích nội khu: Trường học, bệnh viện, trung tâm thương mại, khu giải trí, club house...<br/><br/>* Khu shophouse được thừa hưởng toàn bộ tiện ích của khu đô thị Gamuda Gardens mang lại:<br/>- Trường học Quốc tế SIS Singapore, trường mầm non IQ Motessori.<br/>- Trạm xăng và dịch vụ xe ô tô sông Hồng.<br/>- Câu lạc bộ Gamuda Club (bể bơi, gym, spa, sân tennis, quán cafe, nhà hàng... ).<br/>- Bệnh viện nội khu.<br/>- Đường dạo bộ và các khu công viên.<br/>- Chuỗi các nhà hàng khu shophouse.<br/>- Dịch vụ tổ chức tiệc ngoài trời BBQ.<br/>- Bảo vệ các chốt và hệ thống camera 24/24.<br/>________<br/>Hotline: 0918714569.<br/>Website: https://khudothigamudagardens.com', 'Nhà đất bán', 'Bán nhà biệt thự, liền kề (nhà trong dự án quy hoạch)', 'Dự án Gamuda City (Gamuda Gardens), Đường Pháp Vân, Phường Yên Sở, Hoàng Mai, Hà Nội', '2018-04-14', 'SHOPHOUSE GAMUDA - VỪA Ở VỪA KINH DOANH. LH 0918714569', 'Phạm Thị Bích', '0918714569', '', '', 2, 'd65b7c912da9bb38785e6520987aaea2', 1),
(12, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-nguyen-thi-hanh-phuong-6_1-prj-khu-do-thi-ven-song-vam-co/bds-dt-800m2-gia-4-5-ty-thuoc-resort-trieu-phu-hoang-gia-nam-sai-gon-pr15605627', 'BĐS VEN SÔNG DT: 800M2 GIÁ 4.5 TỶ THUÔC KHU RESORT TRIỆU ĐÔ PHÚ HOÀNG GIA NAM SÀI GÒN', '4.5 tỷ', '800m²', 'Chính thức mở bán 9 suất ưu đãi đặc biệt BĐS ven sông khu biệt thự kiêm resort tại Gia Phú Hoàng Gia Nam Sài Gòn.<br/>Thuộc phân khu giá trị và đẳng cấp bậc nhất khu đô thị hành chính kiểu mẫu 250ha.<br/><br/>DT: 500 tới 800m2/nền.<br/>Pháp lý: Sổ hồng công chứng trong ngày.<br/>Vị trí đắc địa: KĐT vệ tinh chiến lược TP. HCM.<br/><br/>Hệ thống giao thông vô cùng thuận tiện:<br/>* 25 phút với Bến du thuyền hiện hữu theo sông Sài Gòn tới Quận 1.<br/>* 15 phút tới Phú Mỹ Hưng theo tàu cao tốc.<br/>* 20 phút về tới Nam Sài Gòn theo cao tốc Trung Lương - tp. HCM.<br/><br/>* Dy chuyển thuận lợi với Quốc lộ 1A, Quốc Lộ 50, cao tốc <a href=\"/ban-dat-nen-du-an-thi-tran-ben-luc\">Bến Lức</a> - Long Thành.<br/><br/>Khả năng bộc phá giá cực kỳ lớn: Phân khu hành chính trọng yếu được tận hưởng nhũng chính sách quy hoạch ưu tiên hàng đầu.<br/>Cộng hưởng bởi những dịch vụ cao cấp: 2 Vincom của Phạm Nhật Vượng, Siêu Thị Aeon Nhật Bản, Bệnh viện trường học Quốc tế, Showroom ô tô Trường Hải, Trung bày ô tô Hon Da, Khu Thể thao hạng sang....<br/>Đặc biệt nằm ngay cạnh Khu tổ hợp dịch vụ nhà hàng khách sạn resort nghỉ dưỡng cao cấp.<br/>Xứng đáng mang lại cơ hội đầu tư siêu lợi nhuận sở hữu BĐS Ven sông giá trị cao.<br/><br/>Hãy dành 1 ít thời gian quý báu để là 1 trong 9 người duy nhất sở hữu được khu BĐS ven sông đẳng cấp này.<br/><br/>Hân hạnh được hỗ trợ: 0911748388 Mr Thắng.<br/>Đầu Tư phân phối độc quyền: Hoàng Khang Him Lam.', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Dự án Khu đô thị ven sông Vàm Cỏ, Đường Nguyễn Thị Hạnh, Phường 6, Tân An, Long An', '2018-04-14', 'BĐS VEN SÔNG DT: 800M2 GIÁ 4.5 TỶ THUÔC KHU RESORT TRIỆU ĐÔ PHÚ HOÀNG GIA NAM SÀI GÒN', 'Mr thắng', '0911748388', '', '', 2, 'e0578003d0777a5cd4a1ff55ffe9d592', 1),
(13, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tran-van-giau-xa-binh-loi-1/nhan-xay-dung-ngay-kdc-ten-lua-2-gia-sieu-re-sieu-nhuan-chi-560tr-pr15601385', 'NHẬN NỀN XÂY DỰNG NGAY,\" KDC TÊN LỬA 2\", GIÁ SIÊU RẺ, SIÊU LỢI NHUẬN CHỈ 560TR/NỀN', '560 triệu', '80m²', 'Thị trường khu Tây Sài Gòn đang cực kỳ sôi động và các nhà đầu tư kinh doanh lớn đang chuyển hướng sang các dự án thuộc vùng ven Sài Gòn. Đặc biệt là dự án KDC \"Tên Lửa 2\" đã và đang rất hot nhất vì dự án này đã hội tụ đầy đủ tất cả những nhu cầu và yêu cầu của khách hàng (vị trí địa lí, tiềm năng phát triển, cơ sở hạ tầng, pháp lý và giá cả phù hợp). <br/>* Vị trí: Phía Bắc giáp sông, phía Nam giáp KCN và kênh, phía Đông tiếp giáp với kênh và phía Tây giáp với nhiều KCN lớn. Đặc biệt ngay trung tâm của KDC là hồ sinh thái lớn 15ha tạo không khí trong lành mát mẻ. <br/>* Cách vòng xoay Phú Lâm và khu Tên Lửa Bình Tân chỉ 15 phút đi xe máy, cách BV Nhi Đồng TP đang hoạt động chỉ 10 phút, cách BV Chợ Rẩy 2 đang chuẩn bị khởi công xây dựng, BV Đa khoa Tân Tạo chỉ 5 phút. Liền kề nhiều KCN lớn. <br/>* Diện tích đa dạng: 5x16m; 5x21m; 5x26m; 6x17,5m; 6x19m; Lô góc: 7x21m; 6x26m;... Giá chỉ từ 7-12tr/m2. <br/>* Cơ sở hạ tầng đã hoàn thiện 100%, có điện, nước máy Safaco, cáp quang Internet, có hệ thống cây xanh xung quanh hồ, đường trải nhựa từ 14m - 42m. <br/>* Tiện ích nội khu: Trung tâm thương mại, trường học, trường mầm non, trung tâm văn hóa thể dục thể thao, Khu căn hộ cao cấp,.. Đã được phê duyệt quyết định 1/500. <br/>* Pháp lý: Đã có sổ hồng riêng từng nền, đất thổ cư 100% khách hàng mua bao sang tên công chứng trong ngày. <br/>- Bao giấy phép xây dựng (xây dựng tự do), Sacombank, VIB hỗ trợ vay đến 25 năm. <br/>- Chiết khấu từ 3 - 5%, tặng 2 chỉ vàng trong ngày mở bán. <br/>* Phương thức thanh toán linh hoạt và chiết khấu cao cho khách hàng thanh toán 95% giá trị lô đất. <br/>* LH ngay PKD: 0934.107.987, Mr. Hồ để được tư vấn cụ thể hơn và đi xem thực tế. <br/>Cảm ơn quý khách đã xem tin!', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Xã Bình Lợi, Đường Trần Văn Giàu, Bình Chánh, Hồ Chí Minh', '2018-04-14', 'NHẬN NỀN XÂY DỰNG NGAY,\" KDC TÊN LỬA 2\", GIÁ SIÊU RẺ, SIÊU LỢI NHUẬN CHỈ 560TR/NỀN', 'phan thanh ho', '0934107987', '', '', 2, 'f8d3fdb199a6e0d0ebadaa8cf9365389', 1),
(14, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tat-thanh-prj-the-arena-cam-ranh/7-ly-do-phai-so-huu-ngay-condotel-gia-1-2-ty-ck-6-5-0917678942-pr15605241', '7 LÝ DO “PHẢI” SỞ HỮU NGAY CĂN HỘ CONDOTEL THE ARENA CAM RANH-GIÁ 1,2 TỶ-CK 6.5% 0917678942', '1.2 tỷ', '35m²', '', 'Nhà đất bán', 'Bán căn hộ chung cư', 'Dự án The Arena Cam Ranh, Cam Ranh, Khánh Hòa', '2018-04-14', '7 LÝ DO “PHẢI” SỞ HỮU NGAY CĂN HỘ CONDOTEL THE ARENA CAM RANH-GIÁ 1,2 TỶ-CK 6.5% 0917678942', 'Nguyễn Long', '0917678942', '', '', 2, '4e4f6802eab73d0ea04a229f9386fbe1', 1),
(15, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-pham-hung-prj-khu-dan-cu-6b-intresco/ngay-mt-gia-re-nhat-kv-hd-thanh-toan-chi-5-thang-hien-huu-lh-0931819242-pr15605154', 'ĐẤT NGAY MT ĐƯỜNG PHẠM HÙNG, GIÁ RẺ NHẤT KV, HĐ THANH TOÁN CHỈ 5%/THÁNG KHU HIỆN HỮU. LH 0931819242', 'Thỏa thuận', '100m²', 'Mở bán đất nền nhà phố MT đường Phạm Hùng Star Residences (Sài Gòn Viễn Đông). Liên hệ chủ đầu tư 0931819242.<br/><br/>====****** Đặc biệt: Sở hữu (và xây dựng hạ tầng) đường Nguyễn Văn Cừ nối dài. (lộ giới 22m) nối liền Q1-Q5-Q8-Bình Chánh. Xem chi tiết trên bản đồ quy hoạch tổng thể hoặc LH chủ đầu tư: 0931819242.<br/><br/>Vị trí.<br/>+ Lộ giới 40m. Vị trí cực đẹp tiện đi lại, khu dân cư sầm uất chỉ mất 10p là có thể đi tới Q. 5, Q. 7, Q. 10, liền kề khu Trung Sơn, thích hợp đầu tư, kinh doanh mua bán.<br/><br/>+ Nằm trong tổng thể Khu quy hoạch Nguyễn Tri Phương nối dài, liền kề khu dân cư 6B Intresco, cách ngã 4 Nguyễn Văn Linh và Phạm Hùng chỉ 1km.<br/><br/>Các loại diện tích.<br/>+ Nhà Phố: 5x20m.<br/>+ Biệt thự: 10x20m.<br/>+ Đường nội bộ 12m - 14m - 22m - 40m.<br/>Giá tốt nhất khu Nam Sài Gòn.<br/>+ Chỉ từ 39 triệu /m2 (đã bao gồm VAT).<br/>Chính sách.<br/>Book chỗ 50 triệu/nền.<br/>Sau 15 ngày ký HĐ đóng 20%.<br/>Thanh toán linh hoạt trong 18 tháng cứ 2 tháng đóng 10%.<br/><br/>Liên hệ chủ đầu tư 0931819242 BÁ NGUYỆT.', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Dự án 6B Intresco, Bình Chánh, Hồ Chí Minh', '2018-04-14', 'ĐẤT NGAY MT ĐƯỜNG PHẠM HÙNG, GIÁ RẺ NHẤT KV, HĐ THANH TOÁN CHỈ 5%/THÁNG KHU HIỆN HỮU. LH 0931819242', 'BÁ NGUYỆT', '0931819242', '', '', 2, 'bc7c74ce4bf191c0804cb1bab7e14d44', 1),
(16, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-vinh-truong-prj-khu-do-thi-bien-an-vien/c-quyen-ph-phoi-biet-thu-nha-trg-so-so-huu-lau-dai-lh-0901-883-555-pr15396114', 'ĐỘC QUYỀN PHÂN PHỐI ĐẤT NỀN BIỆT THỰ AN VIÊN NHA TRANG - SỔ ĐỎ SỞ HỮU LÂU DÀI - LH: 0901.883.555', 'Thỏa thuận', '212m²', '', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Dự án KĐT biển An Viên, Phường Vĩnh Trường, Nha Trang, Khánh Hòa', '2018-04-14', 'ĐỘC QUYỀN PHÂN PHỐI ĐẤT NỀN BIỆT THỰ AN VIÊN NHA TRANG - SỔ ĐỎ SỞ HỮU LÂU DÀI - LH: 0901.883.555', 'Phân Phối Độc Quyền Dự Án Đất Biệt Thự An Viên Nha Trang', '0901883555', '', '', 2, 'c5223e91089dc243836fe0a15adfb792', 1),
(17, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-6-4-prj-vincity-quan-9/so-gia-tot-nhat-ngay-khu-tai-cu-phuoc-thien-doi-dien-04833-pr15584947', 'BÁN ĐẤT ĐƯỜNG SỐ 6 GIÁ TỐT NHẤT NGAY KHU TÁI CƯ PHƯỚC THIỆN, ĐỐI DIỆN VINCITY QUẬN 9. 0948963963', '1.43 tỷ', '57.3m²', 'Lô A15, Dự án Thái Dương 4, đường số 6, <a href=\"/ban-dat-nen-du-an-duong-nguyen-xien-61\">Nguyễn Xiển</a>, P. Long Bình, Quận 9.<br/>Kề bên khu dân cư Phước Thiện.<br/>- Ngay khu Vin City của tập đoàn Vingroup đang chuẩn bị khởi công.<br/>- Cách Bến xe Miền Đông mới, ga Metro 4km.<br/>- Cách Khu công nghệ cao 4km.<br/>- Gần chợ Gò Công, chợ Long Thạnh Mỹ,<br/>- Cách trường mẫu giáo Long Bình, trường tiểu học Long Bình, Trường cấp 3 Nguyễn Văn Tăng khoảng 1.5km.<br/>- Sổ hồng riêng sang tên ngay.<br/>- Xây dựng tự do, dân đông đúc sẵn.<br/>Cơ sở hạ tầng hoàn thiện sẵn: Điện, nước, vỉa hè cây xanh,<br/>- Tiềm năng phát triển cao cho nhà đầu tư và cơ hội mua đất giá rẻ cho người có nhu cầu ở.<br/>- Diện tích: 57.3m2 (4,2m x 13.6m).<br/>- Giá: 1tỷ425tr. Bao sang tên.<br/>Lh: 0948963963.', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Dự án Vincity quận 9, Quận 9, Hồ Chí Minh', '2018-04-14', 'BÁN ĐẤT ĐƯỜNG SỐ 6 GIÁ TỐT NHẤT NGAY KHU TÁI CƯ PHƯỚC THIỆN, ĐỐI DIỆN VINCITY QUẬN 9. 0948963963', 'Quoc Dai', '0948963963', '', '', 2, 'ebca838a4bcf67aab7ac08983562cb0a', 1),
(18, 'https://batdongsan.com.vn/ban-nha-rieng-phuong-binh-chuan/lau-va-co-4-phong-tro-dien-tich-100m2-gia-490tr-0981030029-pr15604147', 'BÁN NHÀ BÌNH CHUẨN,NHÀ LẦU,VÀ BÁN NHÀ CÓ 4 PHÒNG TRỌ DIỆN TÍCH 100M2 GIÁ 490TR 0981030029', '490 triệu', '100m²', 'diện tích đa dạng giá từ 430tr tới 800 tr<br/> -  5m x 20m,  nhà gồm: gồm 4 phòng trọ  đang cho thuê kím , giá 490 triệu/căn.<br/>- 5 m x 11 m, gồm 1 trệt, 1 lầu, 2 phòng ngủ, 1 phòng khách, 2 toilets,, bao sang tên công chứng, giá 650 triệu/căn ngay ngã ba vietsing<br/>-4m x 17 m, gồm 1 trệt, 1 lầu, 2 phòng ngủ, 1 phòng khách, 2 toilets, bao sang tên công chứng, giá 800 triệu/căn. <br/>- 4 m x 13 m, gồm 1 trệt, 1 lầu, 2 phòng ngủ, 1 phòng khách, 2 toilets, sổ hồng, bao sang tên công chứng, giá 640 triệu/căn. <br/>... giá nào cũng có liên hệ để xem  nhà<br/> cụ thể nhà đúc 1 tấm bao gồm: Sân trước để xe máy, 1 phòng khách, 1 bếp, 1 phòng thờ, 2 phòng ngủ, 2 vệ sinh ... Không gian thoáng mát tiện nghi (Nhà xây theo phong cách hiện đại). <br/>- Khu dân cư ổn định thân thiện, An ninh và dân trí cao. <br/>- Tiện ích: Gần trường tiểu học và trung học <a href=\"/ban-nha-rieng-duong-tan-phuoc-khanh-161\">Tân Phước Khánh</a>, cách chợ Tân Phước Khánh 400m, Cách ngã tư Miếu Ông Cù 2km, cách bệnh viện 2km. <br/>- Vị trí: hẻm bê tông rộng 4,5m xe vào thoải mái, cách đường DH403 (500m). <br/>- Hệ thống thoát nước và nước thải hoạt động ổn định không ngập úng. <br/>liên hệ 0981030029', 'Nhà đất bán', 'Bán nhà riêng', 'Phường Bình Chuẩn, Thuận An, Bình Dương', '2018-04-14', 'BÁN NHÀ BÌNH CHUẨN,NHÀ LẦU,VÀ BÁN NHÀ CÓ 4 PHÒNG TRỌ DIỆN TÍCH 100M2 GIÁ 490TR 0981030029', 'Sỹ', '0981030029', '', '', 2, '590faea0c3154a204450e5e956d18555', 1),
(19, 'https://batdongsan.com.vn/ban-dat-nen-du-an-xa-duong-to/sieu-dai-viet-phu-quoc-6-mo-lo-goc-3-mat-tien-ngay-nguyen-v-cu-gia-chi-tu-6-trieu-m2-pr15603344', 'SIÊU DỰ ÁN ĐẠI VIỆT - PHÚ QUỐC 6 MỞ BÁN LÔ GÓC 3 MẶT TIỀN NGAY NGUYỄN VĂN CỪ. GIÁ CHỈ TỪ 6 TRIỆU/M2', '6 triệu/m²', '500m²', 'Bất động sản Đại Việt chuẩn bị tung ra Siêu Dự án Đại Việt - Phú Quốc 6, vị trí cực HOT ngay đường <a href=\"/ban-dat-nen-du-an-duong-nguyen-van-cu-1-360\">Nguyễn Văn Cừ</a>, trục đường nối An Thới và Dương Đông.<br/><br/>** Quy mô dự án gồm 25 nền, diện tích mỗi nền 500m2.<br/><br/>** Vị trí không thể đắc địa hơn: Lô góc 3 mặt tiền ngay đường Nguyễn Văn Cừ. Trục đường nối Dương Đông và An Thới.<br/>+ Cách sân bay Phú Quốc chỉ 3km.<br/>+ Cách khu du lịch Bãi Sao chỉ 5km.<br/>+ Gần nối lên Cáp treo của Tập đoàn Sun Group, hệ thống cáp treo dài nhất Đông Nam Á, đi qua Hòn Thơm khoảng 10km. Vị trí sầm uất, nhộn nhịp, rất phù hợp để kinh doanh, buôn bán.<br/><br/>** Hạ tầng hoàn thiện:<br/>+ Khu dân cư nhiều cây xanh, không khí trong lành dễ chịu.<br/>+ Không giới hạn thiết kế xây dựng.<br/>+ Mua đất có thể xây dựng ngay, thích hợp cho xây nghỉ dưỡng hoặc cho thuê.<br/>+ Phù hợp xây khách sạn, khu vui chơi giải trí thương mại.<br/><br/>** Giá dự kiến mở bán ngày 19/04/2018 từ 6 triệu - 10 triệu/m2.<br/>** Liên hệ trực tiếp chủ đầu tư Hotline 0949.58.5678 để được tư vấn thông tin chính xác dự án.', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Xã Dương Tơ, Phú Quốc, Kiên Giang', '2018-04-14', 'SIÊU DỰ ÁN ĐẠI VIỆT - PHÚ QUỐC 6 MỞ BÁN LÔ GÓC 3 MẶT TIỀN NGAY NGUYỄN VĂN CỪ. GIÁ CHỈ TỪ 6 TRIỆU/M2', 'NGUYỄN PHƯƠNG LAN', '0949585678', '', '', 2, 'f5d663605330040b3df04f4078c63f48', 1),
(20, 'https://batdongsan.com.vn/ban-dat-nen-du-an-pho-tran-dai-nghia-phuong-hoa-hai-prj-khu-do-thi-phu-my-an/nhieu-lo-vip-chinh-chu-da-ng-pearl-ngay-cau-vo-chi-cong-dg-xay-dung-pr15603216', 'BÁN NHIỀU LÔ VIP CHÍNH CHỦ, KHU PHÚ MỸ AN - ĐÀ NẴNG PEARL, NGAY CẦU VÕ CHÍ CÔNG ĐANG XÂY DỰNG', '25 triệu/m²', '410m²', 'Cần nhượng lại nhiều vị trí siêu đẹp, hàng hiếm dự án Phú Mỹ An - Đà Nẵng Pearl, ngay cầu Võ Chí Công - nối khu ven biển Đông Nam về thẳng sân bay Đà Nẵng.<br/><br/>+ Lô B3-22-12 DT 300m2, thuộc dãy Villa triệu đô OneRiver chủ đầu tư Đất Xanh đang triển khai. Đất 2 mặt tiền (Song Hào 30m và đường ven sông 17m5), bên cạnh tòa dịch vụ trung tâm. Giá chuyển nhượng: 12 tỷ.<br/><br/>+ 02 lô liền kề mặt tiền Trần Đại Nghĩa: B2-4-5x, đã cập nhật diện tích thực tế tăng thêm vào sổ, 410m2 tổng 2 lô, mặt tiền 15m, đường trước nhà là đường Xuyên Á 48m. Giá chuyển nhượng 25tr/m2.<br/><br/>+ 02 lô liền kề mặt tiền trục xương sống Đào Duy Tùng: B3-1-4 và 5, view trực diện đại học Pegasus Singapore, đường trước nhà 33m, diện tích 375m2 mỗi lô, giá chuyển nhượng 20.5tr/m2.<br/><br/>+ 04 lô liền kề mặt tiền Song Hào, hướng Nam, view khu thương mại FPT, ra đường Võ Chí Công nối dài vài bước chân, diện tích 150m2 mỗi lô, giá chuyển nhượng 3.4 tỷ/lô.<br/><br/>Kèm theo biệt thự R1. B03.09 FPT, 3 mặt tiền, sát sông, diện tích 467m2, mua trực tiếp chủ đầu tư, giá chuyển nhượng chỉ 7tỷ.<br/><br/>Khách hàng có nhu cầu vui lòng liên hệ.<br/>Anh Đức.<br/>0934 755 386 - 0964 755 386 - 0949 755 386.<br/>Làm việc chính chủ và gốc chủ đầu tư.<br/>Hoa hồng 1% cho môi giới.<br/>Cảm ơn.', 'Nhà đất bán', 'Bán đất nền dự án (đất trong dự án quy hoạch)', 'Dự án Phú Mỹ An, Phố Trần Đại Nghĩa, Phường Hòa Hải, Ngũ Hành Sơn, Đà Nẵng', '2018-04-14', 'BÁN NHIỀU LÔ VIP CHÍNH CHỦ, KHU PHÚ MỸ AN - ĐÀ NẴNG PEARL, NGAY CẦU VÕ CHÍ CÔNG ĐANG XÂY DỰNG', 'Nguyen Trung Duc', '0934755386', '', '', 2, '2b07c8e009ac22ac76673e78bee93dd9', 1),
(21, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-cao-lo-phuong-4-15-prj-topaz-city/chuyen-nhuong-lai-10-va-elite-gia-tot-nhat-thi-truong-lh-0909-678-859-pr15482121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f442a2db73f9feb5dd30ad44e72046e2', 1),
(22, 'https://batdongsan.com.vn/ban-nha-rieng-pho-trung-liet-phuong-trung-liet/gia-dinh-di-dinh-cu-gap-dep-tam-dong-da-gia-loc-manh-tay-lh-0983-574-547-ba-phuong-pr15627335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6408041573cab607b74db83018717b45', 1),
(23, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-hoang-liet-prj-khu-do-thi-moi-phap-van-tu-hiep/gap-2-614-no8-va-1004-no18-lh-chinh-chu-0988766479-pr15205148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '48aec08b1e6a84e1c4199efb27ab56bc', 1),
(24, 'https://batdongsan.com.vn/ban-dat-xa-cua-duong/toi-can-o-ong-lang-phu-quoc-nen-toi-vua-bay-ra-phu-quoc-a-c-lh-0903-902-193-pr14388486', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cfa069ebc9b595e2456cde9a3323c007', 1),
(25, 'https://batdongsan.com.vn/ban-dat-duong-an-thuong-30-phuong-my-an/mat-tien-khu-bien-387-sinh-loi-tot-dt-162m2-huong-nam-gia-chi-25-ty-pr15626441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '34e0db500bed2a256aee255564e89e4e', 1),
(26, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-vo-tran-chi-phuong-tan-tao-a/mo-cuc-dep-kdc-tri-lien-he-chu-dau-tu-chon-dep-0908-66-5005-ho-tro-24-7-pr15626141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7d7c7e9d5d286912c41cea8c6a1e1741', 1),
(27, 'https://batdongsan.com.vn/ban-nha-rieng-duong-quoc-lo-13-phuong-hiep-binh-phuoc/17-can-khu-hong-dao-so-520-54m2-tret-lung-2-lau-pr15625389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2bb310af327cb0c0b985c7ca46defc8d', 1),
(28, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dai-tu-phuong-dai-kim/vinaconex-7-so-19-ang-mai-sieu-dep-gia-c-re-pr15624805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e16e3793810d4c8291f4f259960839bf', 1),
(29, 'https://batdongsan.com.vn/ban-dat-nen-du-an-xa-an-dien/chinh-chu-c-gap-2-tai-ben-cat-binh-duong-thich-hop-dau-tu-sinh-loi-pr15624954', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ace40c5bf58645d33a8aa964ec262809', 1),
(30, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-giang-bien-1-prj-ruby-city/ct3-phuc-loi-mo-tu-45m2-den-70m2-tng-thuy-02-03-png-ngu-pr14381056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '65ad5f9d943da45d7685acb6b7a40ae7', 1),
(31, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-vo-nguyen-giap-phuong-phuoc-my/condotel-kim-long-season-khe-da-nang-cam-ket-loi-nhuan-tren-10-lh-0904-934-020-pr15625135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a2f85b96dcf58948eb189ac9ba91a1ba', 1),
(32, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/chuyen-q2-1pn-2-2-ty-2pn-2-73-ty-3pn-3-6-ty-lh-ni-0901381558-pr14748727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b75acc4dba83389c6a85f6da27c6d92f', 1),
(33, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-cay-thong-ngoai-xa-cua-duong-prj-ocean-land-7/chinh-chu-can-thanh-ly-gap-12-vi-tri-dep-gia-tot-lien-he-mr-hoang-0901322775-pr15624590', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a11b37797e76178679cde19e04d40b9', 1),
(34, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-van-cong-phuong-3-20-prj-ha-do-green-view/o-quan-go-vap-gia-5-ty-0902789-pr14501456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9cbcf37a68c8510a69bce072d6291198', 1),
(35, 'https://batdongsan.com.vn/ban-dat-duong-ben-tram-360/o-kinh-doanh-dong-cong-cay-thong-trong-phu-quoc-lh-0917104268-pr15623974', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a6f9649f50603582b432fec16a6534b', 1),
(36, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tuan-phuong-thanh-xuan-trung-prj-goldseason/hot-chi-tu-1-6-ty-co-ngay-nha-sang-xe-xin-tnr-giao-t10-ck-toi-15-lh-0965981098-pr15623567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ff10cc5ca63f466ddf61e8c8fea0e271', 1),
(37, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-van-linh-phuong-tan-phong-9-prj-lavida-plus/va-officetel-dang-cap-view-song-lk-phu-my-hung-goc-2-mat-tien-chi-30-nhan-nha-0-lsuat-pr15202134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd477ae847ed3283dfb57b8a388e23c12', 1),
(38, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-154-phuong-tan-phu-12-prj-topaz-home-2/chu-dau-tu-cong-bo-50-suat-mua-xa-i-gia-chi-14-9-trieu-m2-lh-0911055688-pr15623060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e0e57b40b828783d12c06180e5801e32', 1),
(39, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-vinh-truong-prj-khu-do-thi-bien-an-vien/vingroup-mo-lien-ke-biet-thu-nha-trg-khh-hoa-pr15622481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9304250d874cfa468b25eee410e79c3b', 1),
(40, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/chinh-chu-goi-gap-1pn-2pn-vinmes-gia-cuc-tot-3pn-lo-pr12985148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b6b05c0a40314d1c7e41b56f0dc7ac9b', 1),
(41, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-bach-dang-phuong-hai-chau-i-prj-hilton-bach-dang/du-an-cao-cap-xuong-tien-tai-da-nang-tline-0905-624-705-pr15573952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'be9a7323304fa16cc4c1222852a9f571', 1),
(42, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-thanh-my-loi-prj-khu-dan-cu-thanh-my-loi/bds-dai-viet-gioi-thieu-da-174ha-ngay-tthc-quan-2-pr15573640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dea06df7ea6016d3fb48c32453666888', 1),
(43, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-so-5-phuong-an-phu-prj-an-phu-an-khanh/bds-dai-viet-gioi-thieu-khh-qu-2-gia-goc-chu-dau-tu-pr15573537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '83711ad95fc15cb44133d5f97f5ae2dd', 1),
(44, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-pho-le-trong-tan-phuong-duong-noi-prj-icid-complex/2pn-chi-1-1-ty-full-that-tai-ck-len-toi-150tr-ls-0-pr15573186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '72a4a1bd70dab06e6a86b294406298d1', 1),
(45, 'https://batdongsan.com.vn/ban-dat-nen-du-an-thi-tran-duong-dong/dau-tu-bds-dac-khu-phu-quoc-luot-song-cong-gia-chi-tu-6-8tr-m2-lh-0936-174-788-pr15572650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a754ddf5273ea38c837b175aab60d4b7', 1),
(46, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tan-mai-phuong-tuong-mai-prj-khu-nha-o-quan-doi-k35-tan-mai/hien-toi-dang-co-suat-68m2-gia-20tr-0976001488-pr15308067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9da5d76876dc822b001dc269106f894e', 1),
(47, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-dt-45-xa-cua-can/phu-quoc-450-trieu-nhan-lai-loi-nhuan-30-100-nam-0902-779-008-pr15572600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a98e21a18de1bb0016434af8d5d633f3', 1),
(48, 'https://batdongsan.com.vn/ban-dat-nen-du-an-xa-long-hung-6-prj-dreamland-city/thanh-toan-30-nhan-bidv-70-nhan-ky-gui-cac-lo-so-do-chu-dau-tu-0917-68-85-86-pr15572486', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0b00461ddf9ee918f63d00d334f2acfd', 1),
(49, 'https://batdongsan.com.vn/ban-dat-duong-pham-huu-lau-xa-phuoc-kieng/chinh-chu-can-lo-9m-x-27m-22-met-khu-an-ninh-sach-se-lien-he-0941-78-39-78-pr15572210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7eddd1636fed0b9d26a8d23b1591418b', 1),
(50, 'https://batdongsan.com.vn/ban-dat-duong-tuyen-tranh-360/750m2-2-mat-tien-phu-quoc-pr15572132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'db8e6a07fc3542abeca0960bc8e3eb5a', 1),
(51, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-do-xuan-hop-phuong-phuoc-long-b-prj-kdc-hoang-anh-minh-tuan/chinh-chu-hog-h-tu-xu-qu-9-lien-he-0941-78-39-78-pr15570612', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2e9bd6afe910c2dbd1dfb2c2675da77a', 1),
(52, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-pho-ta-quang-buu-phuong-6-10-prj-the-pega-suite/bang-gia-tot-nhat-nha-p-du-an-giao-nha-12-2018-lh-0938096490-pr15563887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9391129223971f7ad97ae4e9ac722e5c', 1),
(53, 'https://batdongsan.com.vn/ban-dat-duong-cua-can-xa-cua-duong/gap-4-lo-mat-tien-ba-trai-cach-nga-3-dong-chi-300m-pr15569928', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd33de3422ebc81e541c362189a08d96a', 1),
(54, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-huong-lo-2-phuong-binh-tri-dong-a-prj-saigonhomes/chinh-chu-sigonhomes-6-11-bloc-tng-6-2pn-68m2-gi-1-550-tr-bo-vt-0903124589-pr14841925', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6b2a3027d524acf8e4ffa97fcab45c9b', 1),
(55, 'https://batdongsan.com.vn/ban-dat-duong-le-hong-phong-xa-long-tho-prj-khu-do-thi-moi-phuoc-an/mua-ky-gui-nen-du-hud-xdhn-0911-5050-68-vi-tri-dep-so-trao-tay-500tr-nen-pr15569832', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ad338c31caca040d74703011d4b2bd42', 1),
(56, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-3-2-2-phuong-nguyen-an-ninh-prj-dic-phoenix/mo-100-nghi-royal-parasie-4-tai-thanh-p-bien-vung-tau-1-ty-55m2-pr15395065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c04965cbbf394bb2c0ec941f8e7638c8', 1),
(57, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-bat-nan-phuong-thanh-my-loi-prj-khu-dan-cu-thanh-my-loi/hung-thinh-mo-mt-song-sai-gon-sat-dao-kim-cuong-gia-8-7ty-ck-3-24-lh-0901-32-55-95-pr15569731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '44c7347c6197bdc78e521dcb26454ba4', 1),
(58, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ngo-chi-quoc-phuong-binh-chieu/vang-thu-duc-so-hong-rieng-xay-dung-tu-do-gia-24tr-m2-ht-vay-dai-han-lai-suat-tu-0-pr15567909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5f1cb7c1bd79cc496beb97da210e4097', 1),
(59, 'https://batdongsan.com.vn/ban-nha-rieng-duong-chau-van-liem-xa-phu-do-1/co-nhu-cau-chuyen-i-nen-toi-can-so-chinh-chu-dung-ten-toi-tai-pr15216532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1e1e04c1e6efb9e7fabc500c4555f473', 1),
(60, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-mo-lao-prj-seasons-avenue/chinh-chu-du-an-goc-dac-biet-co-vi-tri-vo-cung-dep-pr15211895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b91928357044bb7c56421bf282aa5e16', 1),
(61, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-so-6-phuong-4/nha-nguyen-can-lam-hoac-spa-kinh-doanh-pr15191764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '69c0d31aa96858ddf8783bb497414d34', 1),
(62, 'https://batdongsan.com.vn/cho-thue-nha-rieng-quan-1/dau-hem-xe-hoi-phan-ke-binh-phuong-da-kao-1-pr15621931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '82b78d6237b54f100d96f5f35a9d44b4', 1),
(63, 'https://batdongsan.com.vn/cho-thue-van-phong-phuong-ha-dinh/khu-vuc-nga-tu-so-nha-moi-xay-gia-tu-4tr5-10tr-thang-lien-he-01676344375-pr15617188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '95242e5558106d74c314f967089c94a7', 1),
(64, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-lam-du-phuong-long-bien/biet-thu-lien-ke-ngo-377-dt-75m2-4pn-pr14749094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '873892d757994f4e335a0f05bf7ccf20', 1),
(65, 'https://batdongsan.com.vn/cho-thue-van-phong-pho-luong-dinh-cua-phuong-binh-an/chinh-chu-gap-133-135-gia-18-trieu-pr11870695', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'aa499bf835965e924c92d4531c20f2ff', 1),
(66, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-so-13-60/can-nguyen-can-quan-8-lien-he-0934-182-618-anh-n-pr15625984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c3c10279ceedbdd77f1d203e99a06ea7', 1),
(67, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-khanh-toan-phuong-dich-vong/tai-nga-tu-van-huyen-h-tieu-c-b-pr15624907', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'abd7025a84d7438b12c65451f89c0bcf', 1),
(68, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-pho-quang-phuong-2-22-prj-sky-center/chinh-chu-ngay-sat-san-bay-du-an-cao-cap-noi-that-day-du-pr15626302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '849bf59c241099ad14623bbd37f7689e', 1),
(69, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-song-hanh-phuong-an-phu-prj-estella-heights/nhu-nho-nhan-chuyen-ch-height-hang-cap-nhat-lien-tuc-gia-rat-rat-tot-luon-a-pr14433633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8d1b2c2e01293c34d1cf3723bccee9e6', 1),
(70, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-pho-ton-duc-thang-prj-vinhomes-golden-river-ba-son/toi-o-toa-aqua-3-du-an-vinmes-day-du-noi-that-pr15603705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '14d48107b7a70c0b7f9977105ed4774a', 1),
(71, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-15b-phuong-phu-my-9-prj-the-era-town/tong-p-quan-7-tu-1-3-pn-full-noi-that-gia-re-lh-0903-36-18-28-pr15625600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4d5f11677bd82c984d70ea564de5d675', 1),
(72, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/vinmes-2-png-ngu-pr15624385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '966fc7868cdda57c95bc85a1139e2aab', 1),
(73, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-nghia-phat-phuong-6-15/phong-day-du-tien-nghi-va-1-mat-bang-gia-1tr-thang-pr15624789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b7dd1808d4e1f9b5a529608121df316f', 1),
(74, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-dien-bien-phu-phuong-da-kao/y-du-noi-that-p-quan-1-lhcc-0935623911-pr13204524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ba94194f42b7a0628cab2654faee9d97', 1),
(75, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huy-tuong-phuong-thanh-xuan-trung-prj-imperia-garden/xem-nha-247-0915-35-365-noi-that-co-ban-va-du-do-gia-canh-tranh-pr15521853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a554153f46cd8992510d598fa6ecc5f4', 1),
(76, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ham-nghi-thi-tran-cau-dien-prj-vinhomes-gardenia/mb-viet-nam-0915-351-365-khong-do-full-do-gia-canh-tranh-nhat-truong-pr15520805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3f2d8f4a5a8f948a7b3df03f837a7bbb', 1),
(77, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-tho-phuong-tan-hung-14-prj-sunrise-city/chuyen-ch-1-2-3-4pn-officetel-shop-penthouse-gia-68-trieu-0977771919-pr15624138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ecf8de7a9c4f689c71de97909bc7d554', 1),
(78, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-tran-hung-dao-phuong-cau-kho/dich-vu-cao-cap-tai-quan-1-pr13702529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9c213b342c4180e5eaa7d420167d61d1', 1),
(79, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-to-huu-xa-trung-van-prj-khu-do-thi-moi-phung-khoang/san-thuong-mai-toa-nha-housinco-dt-80m2-168m2-242m2-pr15319223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8d9cb40afa5bf2e76e6362a2321abb49', 1),
(80, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-dang-thai-mai-68/can-gia-re-3-trieu-thang-xinh-dep-o-quan-phu-nhuan-pr15623584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'de28bcc818f5cc9766fa72032d01c148', 1),
(81, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-hoang-van-thu-phuong-10-10/sang-nhuong-hop-dong-kinh-doanh-phong-can-ho-ngay-quan-tan-binh-pr15292138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c63e865bef81e57772b03e2cc62e451b', 1),
(82, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-xo-viet-nghe-tinh-phuong-11-7/sang-nhuong-hd-kinh-doanh-can-ho-cao-cap-ngay-quan-binh-thanh-pr15494561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f99dc22324077aff1483e36a947b2598', 1),
(83, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ham-nghi-thi-tran-cau-dien-prj-vinhomes-gardenia/chuyen-my-dinh-mien-phi-quan-ly-gia-8tr-th-re-nhat-tt-pr14148267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2818cfc3c33137aa1cd93af3d302524c', 1),
(84, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-dien-bien-phu-phuong-25-prj-pearl-plaza/quan-binh-thanh-gia-re-lh-0906-391-898-pr11102717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cce20719ce6d99359743ca9ef9585d66', 1);
INSERT INTO `data` (`data_id`, `data_url`, `data_title`, `data_price`, `data_area`, `data_description`, `data_type_of_news`, `data_type_BDS`, `data_location`, `data_date`, `data_project_name`, `data_contact_name`, `data_contact_phone`, `data_contact_email`, `data_contact_address`, `status`, `data_url_md5`, `site_id`) VALUES
(85, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-cong-hoa-69/quan-tan-binh-gia-re-voi-nhieu-dien-tich-lua-chon-lh-0906-391-898-pr11479627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0fcbfeaba8ab56a18d97abebf624d9a3', 1),
(86, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-hoang-hoa-tham-phuong-7-9/cao-cap-q-binh-thanh-gia-5-000-000d-thang-pr15618235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9fdeb1e8b651ceaa7581394806519dcc', 1),
(87, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-bo-bao-tan-thang-phuong-son-ky-prj-celadon-city/70m2-noi-that-co-ban-gia-9-trieu-phi-quan-ly-lh-0902549997-pr15618138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '26b802ed672a05d1868f7d380c7dd41c', 1),
(88, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-la-xuan-oai-phuong-tang-nhon-phu-a/bng-ngy-11-oi-pr15601380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '00bbe09480cfe940036f521a9cb58fb8', 1),
(89, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-le-thanh-ton-phuong-ben-nghe-prj-vincom-center-tp-hcm/senoffice-business-tai-dong-khoi-quan-1-hcm-pr15598796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4d40e12dc0db81b7efe54eb6d75abafb', 1),
(90, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-nguyen-thi-minh-khai-55/quan-3-gia-re-vi-tri-dac-dia-bao-gia-nhanh-lh-0906-391-898-pr10406647', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7cab5adfb7f34486b2ea47ee83369465', 1),
(91, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-chu-van-an-phuong-12-7/moi-cao-cap-q-binh-thh-gia-5-200-000d-thg-pr15616773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8d4deda50d54a9d0ffa7d141c767e2f6', 1),
(92, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-dinh-tien-hoang-phuong-da-kao/moi-khong-chung-chu-gio-giac-tu-do-136-p-q1-lh-0934898020-pr14351472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd2858ede4f2693e5c869e01ba4627162', 1),
(93, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-bac-son-350/mat-bang-mat-tien-nha-trang-pr15612920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'de132edb67f8d44f0932a6458726bf0a', 1),
(94, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/gap-2pn-16tr-th-vao-cuoi-thang-04-nay-lh-01277627777-pr15616251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9c7593874fa16e1db1a100da0fbf49a5', 1),
(95, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-phu-nhuan/cao-cap-full-noi-that-co-bep-gia-cuc-re-phan-dinh-phung-quan-pn-0945-999-335-pr15616114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '46d65df122c35c9f6a7ec480462aa005', 1),
(96, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-duong-392-303/chao-mat-bang-2018-nam-tai-km2-binh-giang-hai-pr15616047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd6d85f22605fa0d2cc7b05e21c1da4f7', 1),
(97, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-tan-my-phuong-tan-thuan-tay-1/day-du-noi-that-ngay-139-q7-dong-gia-3-5-trieu-th-17m2-pr13667682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'eeba0cf1c9228b45c9a0e65ce7982b8e', 1),
(98, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-d4-phuong-tan-hung-14-prj-hoang-anh-thanh-binh/quan-ly-100-ang-th-2pn-3pn-10-den-16tr-thang-lh-xem-nha-0901351235-pr13236330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df5f666311bf931a4b01c6eafddb5bd8', 1),
(99, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-be-van-cam-phuong-tan-kieng-prj-m-one-nam-sai-gon/quan-ly-100-quan-7-officetel-2-png-ngu-3-png-ngu-7tr-th-lh-0901351235-pr15304938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e8a7962b0da275b904e6021ab650564e', 1),
(100, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-khoai-phuong-1-prj-galaxy-9/novaland-2-3pn-tien-ich-cao-cap-5-phut-den-q-q-7-q-5-lh-006-72-055-pr10366182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'bdf53fae46b15877d9ffd8244e1ae5f1', 1),
(101, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/wowreal-san-vinmes-1-2-3-4-pn-gia-re-lh-0931-405-587-pr15623143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df84cba2d14f247d66792ad8f6b5202b', 1),
(102, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/5-sao-2-3-pn-noi-that-chau-au-gia-tr-th-0937057990-mr-phuc-pr15621584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '91c06ffce86de682e5ace585806d353a', 1),
(103, 'https://batdongsan.com.vn/cho-thue-van-phong-quan-1/gia-re-uy-tin-chat-luong-mien-phi-thang-tien-090639898-pr10383010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'db530d96a5c9e0a280800fcabc7e9bde', 1),
(104, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-tran-hung-dao-53/can-goc-2-tien-trung-tam-quan-1-pr14118260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0852c56932bfdad154834be711ba8387', 1),
(105, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-luong-yen-phuong-bach-dang/quan-hai-ba-trung-gan-pho-co-sdt-099-6789-555-pr15452328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5ec465f7722645e0f6f2ba2bdcd90bbe', 1),
(106, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/update-moi-nhat-2pn-750usd-01244-000-666-mr-sang-pr15620134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ff21b6d0e995078eff1418c8bf25e4e1', 1),
(107, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-nguyen-chi-thanh-phuong-ngoc-khanh/san-100m2-tai-mp-0973497885-view-tuyet-dep-ho-khanh-pr10793859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9d00a58f68cd0e2ac2c1a62274faab1e', 1),
(108, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-vo-chi-cong-phuong-xuan-la-prj-du-an-hoc-vien-quoc-phong/do-tay-ho-pr15616379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8853835ca25cbdf5a3cd99225c9eb864', 1),
(109, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-lien-phuong-phuong-phu-huu-2-prj-the-eastern/han-quoc-day-du-noi-that-gia-chi-tu-9tr-th-xach-vali-vao-o-ngay-lh-0909941091-pr14065935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8903c5be2825192f3ad79720c2fc8e74', 1),
(110, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/cuong-vinmes-san-bang-duoc-tot-nhat-quy-khach-dam-bao-hai-long-lh-093-32-32-678-pr14752572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3a6fd45e45a06462a9a6bcb1e30c3a67', 1),
(111, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/tng-tin-moi-nhat-gia-chuyen-nhuong-gia-soc-va-tot-nhat-kv-quan-4-pr15608269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0d80d8e9a3ce682398046507d49b75e3', 1),
(112, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ho-tung-mau-phuong-phu-dien-prj-goldmark-city/bql-toa-nha-136-full-do-2pn-11-5-trieu-th-pr15607735', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cc61e1814cdd81d6ccbc6ad8b5413368', 1),
(113, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-le-quang-dao-phuong-my-dinh-1/tai-mat-pho-nam-tu-liem-vp-dep-tien-nghi-pr15605801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a9d67e3081e59739e88f7f05f29418de', 1),
(114, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-nguyen-thi-thap-59/tien-nghi-quan-7-gan-lotte-mark-pr15292200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fe8f454a71e699ca2f19f8f4eb8d789b', 1),
(115, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/1pn-2pn-3pn-duplex-pentuse-spuse-gia-tot-lh-0932724535-ngoc-pr15594903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '75ac483117365ae164afe1bb888895b4', 1),
(116, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/2-png-ngu-quan-4-80m2-gia-14-trieu-thang-lh-0938616100-pr15592108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3f5cbf1bdeacacf6f22de361fb0d5a97', 1),
(117, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/ozing-chuyen-vinmes-1pn-2pn-3pn-spuse-pentuse-duplex-pr15588196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '625763f48646c21428c3379546332d8c', 1),
(118, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/tim-la-tim-golden-apartment-99-999-hai-long-dich-vu-lh-0938-371-259-pr14284941', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '092e3efbec51f718bf6c6a9de26eb563', 1),
(119, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/gia-re-tu-van-tan-tam-goi-ngay-linh-0938-102-901-zalo-viber-pr15583144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ad440737cd97aacdee10a9b70f192957', 1),
(120, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-pho-quang-phuong-2-22/full-noi-that-hem-95-tan-binh-lh-0908-094-89-pr15425418', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c0c1ee302ba3993aa95f37fa3c7c8ccd', 1),
(121, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-tan-son-hoa-phuong-2-22/moi-100-gio-tu-do-gan-san-bay-ngay-le-van-si-pham-van-hai-dt-35m2-gia-3-8tr-den-4-4tr-pr15033473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'be02d914d678d5f3d1d06cec30d7228a', 1),
(122, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-quoc-lo-50-xa-binh-hung-1/quan-ca-phe-san-vuon-tai-huyen-chanh-gia-10-trieu-thang-pr15592207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '74287726c8f9000c2838e203313e5629', 1),
(123, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-pho-ton-duc-thang-phuong-ben-nghe-prj-vinhomes-golden-river-ba-son/1-pn-dang-cap-5-sao-voi-full-noi-that-cao-cap-view-land-mark-81-dep-lung-linh-pr15584463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4220d989b699557e6e42aea70bb7507f', 1),
(124, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-do-duc-duc-xa-me-tri/cc-toa-nha-mat-pho-view-khach-san-marriott-cuc-dep-lh-0911490927-pr15593693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '58b04eeb086200b0c4bc623c4998f2af', 1),
(125, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-nguyen-khang-phuong-yen-hoa-2/tai-61-dien-tich-120m2-lien-he-0984-884-111-pr15411913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7bb0d75c49acffa6f828e2909b3f185d', 1),
(126, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-tan-ky-tan-quy-phuong-tan-son-nhi/nguyen-can-1-tret-3-lau-khu-vip-5-x-19-5m-kdc-van-gia-phuc-sau-the-garden-pr15591853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd854b266330cd41a82bba0539c179658', 1),
(127, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-xuan-thuy-phuong-dich-vong/nhuong-shop-do-da-nam-babiday-store-mat-cau-giay-pr15572728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f0c69add729fd2ccd0650d1a001c18be', 1),
(128, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-pho-pho-duc-chinh-phuong-nguyen-thai-binh/tang-nha-full-noi-that-2-pngu-1-pbep-1-phut-ra-ben-thanh-giam-ngay-2tr-chi-con-10tr-pr15588537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3fe0b9fded513c9c5dc5f00d31d686b9', 1),
(129, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-xuan-hong-phuong-12-10/mat-bang-tang-2-tai-121-p12-q-tan-binh-hcm-lam-cong-ty-hoc-pr15592824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '67d67c8df74340a48b55bd713858ea29', 1),
(130, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-khanh-hoi-phuong-3/22m2-co-bep-nau-an-day-du-tien-nghi-6-trieu-thang-pr14908584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '624b2451d97cf90968575ad38f2fae38', 1),
(131, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-van-linh-phuong-tan-phu-19-prj-scenic-valley/hoozing-dich-vu-chuyen-cac-cao-cap-my-hung-mien-phi-dich-vu-pr15592360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8bf7bb20da15ab5497359571785feb6c', 1),
(132, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-3-2-2-phuong-12-5/dep-cao-cap-du-tien-nghi-trung-tam-q10-46-19-thang-va-4-thanh-thai-pr13310352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3c1c4b441e4162a249be7b68843f10ae', 1),
(133, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-ben-van-don-phuong-1-prj-the-gold-view/officetel-goldview-dt-lon-70-130m2-mat-tien-q4-20-tr-th-lh-0933910039-pr15582496', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '49a63617325f1023c7a433aae393a274', 1),
(134, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/chuyen-1-2-3-4pn-cam-ket-nhung-gia-tot-nhat-lh-0906-323-104-pr15397528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '94b8bb3f79e94121ffd826d2aa8f9fcd', 1),
(135, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-minh-khai-phuong-minh-khai/nha-mat-pho-quan-hai-ba-trung-ha-noi-pr15589715', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '434ac2bedbd0c7d2ad1e4b4e2c339620', 1),
(136, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-d1-phuong-tan-hung-14-prj-him-lam-riverside/toi-himlam-69m2-2pn-1-wc-noi-that-dep-gia-13-5tr-th-lh-0935-081685-pr15590685', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a94b48480177e2257cda91b2088a1b62', 1),
(137, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-dien-bien-phu-66/ngay-14-04-2018-q-binh-thanh-200-nghin-m2-th-20-2000m2-lh-18006310-pr6602693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '277491b2ab97bdfee2637678d1a0d268', 1),
(138, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-nam-ky-khoi-nghia-55/ngay-12-04-2018-q-3-dt-20m2-2000m2-gia-200-nghin-m2-th-lh-18006310-pr7847249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '01cfa72c8bbc3f263063de068554ac57', 1),
(139, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-d1-phuong-tan-hung-14-prj-him-lam-riverside/ch-q7-77m2-2pn-du-noi-that-tang-cao-5-tr-th-lh-0917-492-608-pr15489968', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1da70e9d2e902671b7009c82e37d33d9', 1),
(140, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-trai-phuong-thuong-dinh-prj-royal-city/xem-nha-ngay-24-7-chuyen-cc-cam-ket-gia-re-nhat-thi-truong-lh-0917-506-516-pr5735147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c9ea1626d3833d51e3ee4e3e7a330b41', 1),
(141, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-lam-quang-ky-phuong-thanh-my-loi-prj-khu-dan-cu-thanh-my-loi/10x20-1-tret-3-lau-mat-tien-tai-kdt-quan-2-pr15591942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f4a467dacbc5a642f69515431c1458f6', 1),
(142, 'https://batdongsan.com.vn/ban-dat-nen-du-an-cocobay/chinh-thuc-mo-nhan-coc-khu-do-thi-biet-thu-river-view-lh-0905402044-pr15591621', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5eee7a7303c0a1faaecb296a3308de75', 1),
(143, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-trinh-quang-nghi-xa-phong-phu-4-prj-lovera-park/chinh-chu-pho-binh-chanh-chu-dau-tu-khang-dien-5-phut-toi-cho-dm-binh-dien-pr15591528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '74b547ae99b834d7334f25627e2ee7a3', 1),
(144, 'https://batdongsan.com.vn/ban-nha-rieng-phuong-binh-chuan/1-tret-1-lau-gan-ngay-trung-tam-gia-chi-tu-500tr-vi-tri-dep-con-duy-t-1-can-pr15591483', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '282a9877c85ff5aa7bc26764552b8490', 1),
(145, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-le-minh-xuan/thanh-ly-gap-5-va-1-can-nha-1-tret-2-lau-vinh-c-so-hong-rieng-pr15559626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b3f1c81662458820c588d9ae24e22580', 1),
(146, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-co-nhue-1-prj-an-binh-city/view-5ha-96m2-3-png-ngu-gia-n-2-ty-tai-du-lh-0972-252-22-pr15590679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '908feaf0d73602ffaa6c72f0ec994919', 1),
(147, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-nguyet-que-11-prj-vinhomes-the-harmony/chinh-chu-can-lo-nq1-tai-khu-do-thi-hamorny-pr15590385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fe496dbe3438782519114deb0f25dab6', 1),
(148, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-huu-lau-phuong-phu-my-9-prj-hung-phat-green-star/sky-garden-quan-7-lien-28-5tr-m2-lh-0978-28-07-93-pr15589861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '79459871c64452d5f0523be5db9366fc', 1),
(149, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-kien-hung-prj-khu-do-thi-thanh-ha-muong-thanh/pn-phoi-tu-chu-dau-tu-cc-cienco5-so-huu-chi-hon-130-trieu-2-pn-pr15589820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e3b358c8d7266cceb8bc24f511c235ca', 1),
(150, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-trinh-quang-nghi-xa-phong-phu-4-prj-lovera-park/chuyen-nhuong-du-an-gia-tot-nhat-thi-truong-he-0901119339-pr15589748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '10b82b7d96507f96a76d72e581a3b4dc', 1),
(151, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-tan-thoi-nhat-17-phuong-tan-thoi-nhat-1-prj-thien-nam-residence/khu-dan-cu-kieu-mau-n-ngay-trong-gia-chi-6-6ty-can-pr15589579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '01933fc7b32d4576d8fb8e6d1cb5aa43', 1),
(152, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/dung-voi-che-gia-cao-khi-chua-gap-truc-tiep-ms-nhu-hotline-0938257406-pr12074760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6d1124ed5030fbf51dfb47e5e3b6a9ba', 1),
(153, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-lien-phuong-phuong-phu-huu-2/nhh-mat-tien-so-v-hoa-thong-tin-qu-9-hotline-0941-78-39-78-pr15589155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'bd4abd7ecfdc3b76bc297bca85cf3248', 1),
(154, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ngo-chi-quoc-phuong-binh-chieu-prj-binh-chieu-riverside-city/td-tho-cu-100-so-hong-nh-chu-xdtd-ht-vay-ls-uu-dai-lh-0931278884-pr15588966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2bdc2fad617fc140b92adea29236e103', 1),
(155, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-vinhomes-the-harmony/riverside-168m2-12-1-ty-lo-goc-300m2-21-3-ty-450m2-31-3-ty-pr15588729', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '47bfc682efe74db059b9353a7b414dc7', 1),
(156, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tang-nhon-phu-phuong-phuoc-long-b/chinh-chu-da-co-so-rieng-tdh-tacontap-dt-5mx20m-lien-he-0941-78-39-78-pr15588492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd390ea92b8429cca8ea19d15183844cc', 1),
(157, 'https://batdongsan.com.vn/ban-nha-rieng-duong-so-19-phuong-hiep-binh-chanh/pham-van-dong-1-tret-1-lung-3-lau-59m2-6-1-ty-pr15588408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ee2904e91995c1850f1813443a09c640', 1),
(158, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-lai-hung-cuong-xa-vinh-loc-b/tho-cu-mt-4x14-gia-380tr-ho-tro-xay-dung-ngay-0966349966-c-hang-pr15588022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '13e2cfead7476f1a989742a4612acd27', 1),
(159, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-binh-chieu-phuong-binh-chieu-prj-stown-thu-duc/minh-chuyen-nhuong-lai-3-suat-noi-bo-gia-banh-beo-luon-ae-nao-co-nhu-cau-lh-minh-0909483538-pr14081439', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '38db5a143d52cf6aa5f92946c9e00a72', 1),
(160, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ngan-hang-thanh-ly-tho-cu-5x20m2-gia-480-trieu-so-hong-rieng-xdtd-pr15587436', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '580c85f8a3dca2259facdc456538e81c', 1),
(161, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/vinmes-ang-phuc-0916946899-pr15523192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '63f7bcc20835d8c9ca6658d41995da61', 1),
(162, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/vinmes-gia-re-1-2-3-4pn-don-vao-o-ngay-lh-0902681106-pr15521035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f53f42da7242077e85ef2c475c94eda1', 1),
(163, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ho-tung-mau-phuong-phu-dien-prj-goldmark-city/0904-586-516-bql-noi-that-co-ban-va-full-loai-2-3-4pn-gia-tot-nhat-pr12828172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1c698935cece737ff33c62284e6cb2cc', 1),
(164, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/gia-tot-thang-4-2pn-chi-15tr-1pn-chi-13tr-3pn-chi-22tr-lh-01272037777-pr15520764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4be6ba9be26dc31adf8cd7111bba448e', 1),
(165, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/golden-apartment-hot-line-tot-nhat-tu-12-trieu-lh-0909-060-957-pr12860444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9e548f38b70f992226d0b958a16a54aa', 1),
(166, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-le-van-sy-phuong-12-1/cao-cap-danh-ban-cach-quan-3-pr14942322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd1f43aa10d01450f2c2166debc6ce28c', 1),
(167, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-dien-bien-phu-phuong-da-kao/quan-1-sgr-building-40-85-95-110m2-340nghin-m2-th-lh-0901242999-pr15186030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a3ddd8446d029b66c918f80051bdfa89', 1),
(168, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-dien-bien-phu-phuong-da-kao/tron-goi-trung-tam-quan-1-chi-tu-8-trieu-thang-4-nguoi-pr15040289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df676df1639235ef14cc27b8084ebd89', 1),
(169, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-dien-bien-phu-phuong-da-kao/chinh-chu-chi-co-6-tr-thang-ban-se-duoc-o-ngay-trung-tam-q1-gan-cong-vien-le-van-tam-pr14507621', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1bf17cb8c5746be5a76422c46106a4a6', 1),
(170, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/chinh-chu-nhanh-cac-chi-12tr-thang-full-lh-xem-nha-0931438115-pr12485473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b9168ad6df4496d1e5fbd172003cac00', 1),
(171, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-phuong-ngoc-lam-2/tien-nghi-gia-re-lien-he-chinh-chu-pr12049307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3a1bdf1dfc6e2f271e7b528ecba6908a', 1),
(172, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-duong-dai-lo-thang-long-xa-thach-hoa-1/chinh-chu-vi-tri-dep-tai-ha-noi-pr13396364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9151b7053b0144dffff48bcff81afd32', 1),
(173, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-dong-anh/can-ban-o-do-thi-dien-tich-1000m2-tai-duong-lac-long-quan-pr15458123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '817c69dc55f7d75262c5636422dc8e22', 1),
(174, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-nguyen-chanh-phuong-trung-hoa-4-prj-ct4-vimeco-ii/can-mat-bang-san-thuong-mai-tai-toa-o-cau-giay-lh-0985561902-pr15458975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9eb7be014f4a93e7b41b2ba3b52b435f', 1),
(175, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-nguyen-van-linh-46/hai-chau-da-nang-kinh-doanh-vo-cung-tot-pr15447607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6fca3d2b92b2aadb009b77086bbf05bd', 1),
(176, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-pham-phu-thu-phuong-11-10-prj-bay-hien-tower/sap-thuong-mai-bayhientower-108-trieu-nam-pr14890925', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '23916f05edd530cc33d5178b920bec22', 1),
(177, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-tay-ho/chinh-chu-cao-cap-2-png-ngu-gia-14-77-trieu-thang-pr15173947', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '67e3bb3f19f2609d95843fe64a55eb53', 1),
(178, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-le-van-luong-phuong-van-phuc-1/can-shophouse-can-so-8-cum-2-khu-shophouse-phuc-pr15124462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '63138c4672e7b74eeb90bc1206539aea', 1),
(179, 'https://batdongsan.com.vn/cho-thue-nha-rieng-ha-dong/canh-hoc-vien-an-ninh-dien-tich-120-5m5-20-trieu-thang-o-to-vao-tan-pr15124434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7fb7793089caa614ce13ee4d676d1539', 1),
(180, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-pho-quang-phuong-2-22-prj-sky-center/shouse-quang-pr15109768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7f060942142b0cbf65a7e2bb93b00b91', 1),
(181, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-12-prj-icon-56/novaland-doc-quyen-1-2-3pn-sat-trung-tam-q-1-free-gym-boi-lh-0906972055-pr10518839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd0c74cd4a7b79bd02f6e7cc6ae55368c', 1),
(182, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-12-prj-the-tresor/0906-972-055-novaland-png-mat-tien-view-bitexco-pr13678499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2748001a35e2b3dbec8b8628b47a7047', 1),
(183, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-tho-phuong-tan-hung-14-prj-sunrise-city/chuyen-ch-1-2-3-4-phong-ngu-gia-re-nhat-lh-ngay-0902-485-123-ms-vi-pr15112843', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a110c6fabfd136586cdd8020429bac6b', 1),
(184, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-cong-hoa-phuong-12-10/can-ho-mini-bao-moi-va-dep-day-du-noi-that-so-232-45-tb-gan-san-bay-gia-tu-3-5-tr-th-pr14826579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '89cc28b5393bfbd38e6eeee7f1514fd7', 1),
(185, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-huynh-tan-phat-59/tien-dia-chi-402a-khu-vuc-sam-uat-tien-kinh-doanh-moi-nganh-nghe-pr15614429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '73157357bb4f5798d5fbfa9dc1d2cf3c', 1),
(186, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-duong-doc-lap-phuong-an-binh/600m-750m-1000m-va-2500m2-chua-hang-tai-kcn-song-than-0915492212-bv-24-24-pr15318508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c53284ceff2728764d81cfb4ca5bd610', 1),
(187, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-ton-that-tung-phuong-pham-ngu-lao-1/cao-cap-noi-gia-5-5-tr-thang-co-bep-nau-an-chung-gan-ben-thanh-quan-1-pr10798384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e8d88c050142ed978c79f637ba946f5b', 1),
(188, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-duong-2f-xa-vinh-loc-a-1/chua-hang-tai-kcn-50m-100m-150m-200m-500m-co-quan-ly-bao-ve-hang-0915492212-pr15611465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '356bbc3dc6fa216e1fd39f967d13e98e', 1),
(189, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-pham-van-hai-phuong-3-22-prj-central-plaza-91-pham-van-hai/noi-that-cao-cap-gia-12-trieu-0938333846-pr15609395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f72e51392b805b5027878a8547fe18a1', 1),
(190, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-cach-mang-thang-tam-phuong-11-1/moi-cao-cap-8-q3-gia-4-600-000d-pr15608664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '822420d80078ff5e29d3b419e5c285e1', 1),
(191, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-giai-phong-phuong-giap-bat/20m2-35m2-50m2-full-do-mat-pho-hoang-mai-gia-chi-tu-5-trieu-th-pr15508776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9453194c3cecf0393f70f0cb9c1512c3', 1),
(192, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/q2-cam-ket-100-gia-tot-nhat-thi-truong-lh-ngay-0919-181-125-pr13773910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6ac92a46cdc8627ff4a3b0352e8a1443', 1),
(193, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-saigon-pearl/cam-ket-100-gia-re-nhat-thi-truong-kg-dang-gia-ao-lh-0919-181-125-pr13309985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6b2ea871f82f5f0481f1819e8207fa6a', 1),
(194, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-duong-truong-dinh-4/cong-ty-co-phan-banh-keo-hai-ha-tai-25-hai-ba-trung-ha-noi-pr15510388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '69a376065301c5328deabf4b3d9067f6', 1),
(195, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ton-dan-phuong-13-prj-khu-can-ho-contrexim-copac-square/quan-4-gia-trieu-thang-day-du-noi-that-hien-dai-pr10799378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '18430f2b92aa0156e7922a72d716bd2b', 1),
(196, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-tho-xa-phuoc-kieng-prj-the-park-residence/6-5-tr-o-ngay-7tr-61m2-8tr-73m2-10tr-106m2-3pn-0981-226-232-pr15606030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'aefa95fd3cf058ca0690886378e09b1f', 1),
(197, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-xo-viet-nghe-tinh-phuong-17-1/can-ho-mini-day-du-tien-nghi-ngay-gan-cau-thi-quan-binh-thanh-pr15218874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c6bc3ca4bf2f65395ac721ef37a8df2b', 1),
(198, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-hoang-quoc-viet-phuong-nghia-tan-3/dep-2-tien-180-viet-pr15605017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '69681f06fa44a033be87cd6d41d9883f', 1),
(199, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-n1-phuong-son-ky-prj-celadon-city/1-3-pn-da-lam-lai-noi-that-gia-tu-6-15-tr-th-lh-0949-55-11-99-pr15071355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ff3523976a927aeea7abe176c8dce190', 1),
(200, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-6-prj-river-gate/officetel-34m2-day-du-noi-that-gia-13-trieu-thang-pr15604990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8286e8152e933950a2e820b3e0727946', 1),
(201, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-cach-mang-thang-tam-phuong-7-12/can-sang-nhuong-mat-bang-tai-1033-8-quan-tan-binh-pr15283041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dc1644abd989a47e9035d8cc957bf100', 1),
(202, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-d1-phuong-tan-hung-14-prj-him-lam-riverside/chuyen-nhieu-ch-q7-59m2-2pn-1wc-day-du-noi-that-13tr-thang-0938-426-539-pr15604957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '357a3abf69e49ce18c124dab2f9ff94c', 1),
(203, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-pho-quang-phuong-2-22-prj-the-botanica/can-shouse-chinh-chu-tai-mat-tien-quan-tan-binh-50m-0938-13-589-pr15602510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1d346cc7e6667be038b4943a464ecba1', 1),
(204, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-pho-hoang-cau-phuong-o-cho-dua-prj-d-le-pont-dor-hoang-cau/cao-cap-tai-or-tan-ang-minh-ang-130m2-3pn-gia-19treu-thang-pr15603624', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ee6b85768815166f3a8e41510e41253e', 1),
(205, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-pho-trung-liet-phuong-trung-liet/dich-vu-thai-ha-60m2-tang-mat-hien-dai-full-do-dai-ngay-ngan-ngay-qua-dem-pr15599611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd63a02a5216b780b18804e9e23a5d9e9', 1),
(206, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-huynh-van-banh-68/dep-day-du-tien-nghi-giap-le-sy-q-3-gia-5-000-000d-th-sdt-0932838470-pr15603144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ca886cf10aa0ea31704d5cc62fb1d2de', 1),
(207, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-xuan-hong-phuong-12-10/71-p12-tan-binh-c-ha-0902860898-pr3907564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ff96c255d62bdabdd83466ba97722bdd', 1),
(208, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/goldview-gia-re-sap-san-chi-tu-17-trieu-thang-tline-0907-937-983-088-6677-083-pr15601575', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '663530f680cdd08bf8947be9b5ec5aa8', 1),
(209, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-ung-van-khiem-phuong-25/cc-can-nguyen-can-1t-1l-tien-q-binh-thanh-pr15601091', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '363f2d0fbfec6d00cc69e179c861abb0', 1),
(210, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-chu-van-an-phuong-26/thog-mat-moi-100-co-gac-binh-thh-pr15123574', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b2f6cd4afb3a74f969c0a1c45d3e5537', 1),
(211, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/cao-cap-1pn-2pn-3pn-gia-tot-nhat-thi-truong-lh-0909-268-955-pr15074458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6af728c07fa48df9b710da140a2b0647', 1),
(212, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-nguyen-huu-tho-xa-phuoc-kieng/chia-se-coworking-space-gia-chi-tu-40k-75k-1-ngay-pr15599381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5d7ca538e35cd85989c4f8ea400b4900', 1),
(213, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-duy-tan-phuong-dich-vong/chinh-chu-cuc-dep-tai-pho-gia-4-5-trieu-7-trieu-12-trieu-thang-pr15599382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd3c70426f43e737228700c7ab114dd81', 1),
(214, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-minh-khai-phuong-vinh-tuy-prj-vinhomes-times-city-park-hill/tu-8tr-1-thang-mien-phi-dich-vu-the-boi-100-full-service-full-do-pr14546448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2ff3465583cce9ba13f98f849bb141a2', 1),
(215, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-suong-nguyet-anh-phuong-ben-thanh/chinh-chu-220-25-nghin-m2-39h-p-th-quan-1-pr15384890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd7de4e58abe0f401532c1f9f255d237e', 1),
(216, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-suong-nguyet-anh-phuong-ben-thanh/80m-2-png-ngu-day-du-tien-nghi-9a-p-th-quan-1-pr10946100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '763bdd486484186bd4420af319633bdb', 1),
(217, 'https://batdongsan.com.vn/cho-thue-nha-rieng-pho-quoc-tu-giam-phuong-van-chuong/5-tang-ngo-luong-su-c-32m2-x-5-tang-pr15585078', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd78f15684c6b5d41ec0dc9831a8d6fd8', 1),
(218, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-phan-huy-ich-phuong-14-8/chinh-chu-can-ho-mini-cao-cap-ke-ben-dh-nguyen-tat-thanh-quan-go-vap-lien-he-0979727656-pr15586461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c0e998bd1d73bc3fd621851d161d6920', 1),
(219, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-le-thuoc-49/chuyen-biet-thu-nghi-va-du-lich-tai-da-nang-pr15189067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a040adec321e06b6c54653af4472a895', 1),
(220, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-nguyen-chi-thanh-3/nh-chu-chuyen-nhuong-thoi-trang-tai-dong-da-lh-01663-020-992-pr15218591', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9c9d17563f6fc433f64c66bdf7b1f7a2', 1),
(221, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-trai-phuong-thuong-dinh-prj-royal-city/cat-lo-sau-vay-70-lai-suat-0-mien-phi-dv-10-nam-chon-tang-dep-0949294082-pr11364413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a4908c74efc307798df41b502f01f6b1', 1),
(222, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-truong-luu-phuong-long-truong/nhanh-lo-gia-tot-cho-nha-dau-tu-22-5tr-m2-gia-bao-re-nhat-khu-vuc-pr15612628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '88b481a1816afe40f2102a5ffdec9b56', 1),
(223, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-vanh-dai-3-xa-long-tan-3-prj-king-bay/mat-tien-so-hong-tho-cu-100-cdt-cam-ket-mua-lai-sinh-loi-10-nam-pr15616449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f82e2cd045ec988e762d38fed77c322f', 1),
(224, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-thanh-my-loi-prj-khu-dan-cu-thanh-my-loi/huy-hog-phu-nhu-the-ki-21-villa-thu-thiem-5x20m-8x20m-15x20m-gia-tu-50tr-m2-pr15615581', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'adb5208414aa39e906465e758ae6c7fd', 1),
(225, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-kien-hung-prj-khu-do-thi-thanh-ha-muong-thanh/pn-phoi-biet-thu-lien-ke-cienco-5-tu-xay-0984114433-pr10337680', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '71c0be3cd9cb2648260786ce60546f85', 1),
(226, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tan-mai-phuong-tuong-mai-prj-khu-nha-o-quan-doi-k35-tan-mai/topaz-land-don-vi-tu-van-chinh-thuc-du-an-bo-quoc-phong-hotline-0915-405-999-pr15613586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9e6561e4d2e24fb7648bc54a5a157300', 1),
(227, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-d6-phuong-binh-chieu-prj-cao-oc-tdh-binh-chieu/cap-ngay-c-dau-moi-thu-duc-chi-1ty-2pn-2wc-da-vat-an-png-xay-dung-0909456145-pr15613015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '73e52f8a39ab5424c57633d9720fd06c', 1),
(228, 'https://batdongsan.com.vn/ban-nha-rieng-duong-nguyen-nhan-kinh-136/hoac-cho-thue-toa-xay-kien-co-tai-tp-bac-ninh-800m2-1-tang-x-3-tang-22-ty-pr15605439', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8167728d4ec470288de8e62cbc2ba3d3', 1),
(229, 'https://batdongsan.com.vn/ban-dat-duong-cua-can-xa-cua-can/mat-tien-dong-2-mat-tien-mot-mat-song-pr15419969', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3d212d6419a8fa57a315cd8460f9cec6', 1),
(230, 'https://batdongsan.com.vn/ban-dat-duong-le-hong-phong-phuong-phu-tho/mat-tien-vi-tri-cuc-dep-gia-10tr-m2-lh-0911333188-pr15433783', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ed5aae36b3c4d74544d8c915f1ed1aea', 1),
(231, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-tran-khac-chan-phuong-tan-dinh-2/can-goc-mt-9x3m-pr15612372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '682ec5a6d647d53ef6e4149dc6a4fccd', 1),
(232, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-vo-van-kiet-phuong-3-15-prj-viva-riverside/shophouse-q6-mat-tien-trung-tam-cho-lon-ck-21-lh-xem-nha-094-115-22-pr15612350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '051168acbe9b849ffb2eb7fb2019d847', 1),
(233, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tat-thanh-phuong-18-prj-can-ho-riva-park/1pn-3pn-full-noi-that-nhan-nha-don-vao-o-ngay-gia-tot-uu-dai-cao-len-den-500tr-pr15612134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5b82888546ee31c1d059ef683552930f', 1),
(234, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-cua-lap-xa-duong-to-prj-best-western-premier-sonasea-phu-quoc/dieu-gi-o-da-thu-hut-dau-den-vay-chi-999-tr-pr15611826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df035d79c6e3bd8f06ac1a93eb7242a2', 1),
(235, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/vinmes-1pn-2-3-ty-2pn-3-2-ty-3pn-4-4-ty-4pn-7-5-ty-lh-0977771919-pr15611004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3442ac9ebcece851316b278634d00820', 1),
(236, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-minh-khai-phuong-vinh-tuy-prj-vinhomes-times-city-park-hill/gap-chcc-dien-tich-119m2-gia-3-6-ty-dien-tich-94m2-gia-2-850-ty-pr9045629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '32aaf1332a25876d4a234a69d607c654', 1),
(237, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tran-hung-dao-phuong-an-hai-tay-prj-the-monarchy/ben-bo-song-han-bung-no-cung-su-xuat-hien-toa-b3-nghi-monnarchy-da-nang-pr15608872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ab56e9235baa779adca9eb87930f155b', 1),
(238, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/sang-nhuong-gia-tot-1pn-chi-2-3ty-2pn-chi-tu-3-2-ty-3pn-lo-0903163021-pr13660562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3dc98023cabcc16a420d7cb6d461e8cb', 1),
(239, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-le-hong-phong-xa-long-tho-prj-khu-do-thi-moi-phuoc-an/nhon-trach-tp-ve-tinh-nhon-trach-gia-2-8-trieu-m2-so-cu-100-pr9964963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '434992fabb0a2c84342dea67ec69ddc1', 1),
(240, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-an-phu-prj-palm-city/cao-cap-garden-tt-quan-2-gia-33tr-m2-dot-pha-thanh-toan-1-thang-lien-he-0939633833-pr15608287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5b131d5b2871c11274fbd052bfaa3273', 1),
(241, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-bat-nan-phuong-binh-trung-tay-prj-saigon-mystery-villas/cdt-hung-thinh-mo-khu-mat-tien-song-sai-gon-gia-tu-8-7-ty-ck-3-24-lh-0913057579-pr14422670', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a3647eeba80bf45a423d02e611ea9b7b', 1),
(242, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-minh-khai-phuong-vinh-tuy-prj-vinhomes-times-city-park-hill/cat-lo-cac-gia-re-nhat-vao-o-ngay-lh-0945-575-668-pr14953810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f28ace22b6d31559b63f24d40e6f175e', 1),
(243, 'https://batdongsan.com.vn/ban-nha-rieng-duong-thoai-ngoc-hau-phuong-phu-thanh/hem-xe-hoi-quay-dau-quan-tan-phu-pr15581594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '50a4a6f422ab15b49ff7b9fa4fb1a352', 1),
(244, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-bung-ong-thoan-phuong-phu-huu-2-prj-villa-park/nghi-ven-song-300m2-12-ty-qua-tang-250tr-chiet-khau-5-vay-80-0901358432-pr15602237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e880facd9007336cdd897bdf264bc6bd', 1),
(245, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-me-linh-phuong-hoa-hiep-nam-prj-lakeside-palace/cc-nhuong-lai-2-can-lien-ke-shophouse-mt-34m-ngay-cong-chao-du-an-pr15602109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '988a95a9080fd0d760d450a87b03435a', 1),
(246, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phu-quoc-kg/vang-mo-trong-tuan-cam-ket-loi-nhuan-hon-20-lh-thanh-09321-45799-pr15601451', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '33a927fa87154fb863a90639e5f2e6ad', 1),
(247, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-quoc-lo-51-xa-long-hung-6-prj-dreamland-city/gap-nha-pho-khu-gan-song-gia-9-8-trieu-m2-lien-he-ngay-de-xem-0915-224-799-pr9856132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'de98a6e07ea61d5063580b3d1451b2ce', 1),
(248, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-pho-le-trong-tan-phuong-duong-noi-prj-icid-complex/chia-ka-trao-tay-tng-minh-smarme-ha-dong-chi-voi-300-trieu-lh-0984175357-pr15601270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '867e90a085be8ed56c27ef451274e407', 1),
(249, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nhu-nguyet-phuong-thuan-phuoc-prj-risemount-apartment-da-nang/lo-dien-truyen-tng-chuan-nhat-ben-song-han-cao-cap-nang-pr15600906', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7b9ef594d5658447a039a12302051607', 1),
(250, 'https://batdongsan.com.vn/ban-dat-duong-nguyen-duy-trinh-61/nen-cho-long-truong-quan-9-pr11831839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '206659d2c0aa84e737c13ffd1d79b3c9', 1),
(251, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-suoi-cai-xa-bai-thom/lo-2-mat-tien-cua-c-c-hop-tac-dau-tu-kdc-hoac-sg-lai-chu-chi-l-0917619089-pr15600336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd3a513b5c68a977ad3e2e51fe4da05e6', 1),
(252, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-le-hong-phong-xa-long-tho-prj-khu-do-thi-moi-phuoc-an/mua-ky-gui-hud-so-ca-nh-cu-100-lh-0911-504-868-pr15435615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '766236843d7ec2b2c3c7711dc651c3cc', 1),
(253, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tran-hung-dao-phuong-an-hai-tay-prj-the-monarchy/mua-chinh-thuc-tu-chu-dau-tu-ndn-loi-ich-khi-mua-truc-tiep-kng-qua-trung-gian-pr15599672', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4e5e98fdb16c0970a95b39e774567eb7', 1),
(254, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-le-thi-rieng-phuong-ben-thanh/gap-toa-van-phong-mt-7-2x19-1ham-9-lau-79-ty-pr15598528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5d754aa82105b4284cbaf307fa182871', 1),
(255, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-truong-van-bang-phuong-thanh-my-loi-prj-khu-dan-cu-thanh-my-loi/huy-hog-lo-goc-2-mat-tien-ong-40m-va-mat-tien-song-sai-gon-vi-tri-dep-nhat-pr15598482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '50b321715228bfd60b4ff57ee54803ed', 1),
(256, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-nguyen-trai-phuong-ben-thanh/dat-lon-xay-khach-san-van-phong-trung-tam-quan-1-3-gia-50-den-500-ty-pr15598382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2c09e6284c85546356a495eb21c18d6e', 1),
(257, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-ly-tu-trong-phuong-ben-nghe/khach-san-toa-van-phong-trung-tam-quan-1-3-gia-50-den-500-ty-pr15598358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b7882d0bbab0d91ab86791a7b2be9aba', 1);
INSERT INTO `data` (`data_id`, `data_url`, `data_title`, `data_price`, `data_area`, `data_description`, `data_type_of_news`, `data_type_BDS`, `data_location`, `data_date`, `data_project_name`, `data_contact_name`, `data_contact_phone`, `data_contact_email`, `data_contact_address`, `status`, `data_url_md5`, `site_id`) VALUES
(258, 'https://batdongsan.com.vn/ban-nha-rieng-phuong-hiep-binh-phuoc/ket-tien-gap-cap-4-duong-quoc-lo-13-cu-gia-2-5-ty-lh-0978-165-543-pr15395791', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '161c74b8a408d43dfce5a80580d1a935', 1),
(259, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-phan-ngu-phuong-ben-nghe/chinh-chu-19-quan-1-dt-20-x-20m-gia-72-ty-ds-hang-chat-luong-de-mua-pr15597998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f908e29eb06d71227d530dd616d328a0', 1),
(260, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-phuoc-my-prj-condotel-times-square-da-nang/kim-long-season-khe-dang-cap-nghi-5-sao-trien-khai-giai-doan-1-lh-0988066090-pr15597945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '485f6a17eb203b80f92dba77bb423d80', 1),
(261, 'https://batdongsan.com.vn/ban-dat-duong-hiep-thanh-5-phuong-hiep-thanh-3/chinh-chu-tho-cu-mat-quan-12-lien-he-0986839996-mr-giang-pr15593544', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'efbbed9e3ebc74e448b180cae21e2d40', 1),
(262, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-ben-van-don-phuong-6-prj-masteri-millennium/mo-officetel-hang-sang-ngay-trung-tam-quan-4-tt-30-nhan-nha-ck-10-uu-dai-hap-dan-pr15597791', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '81734e843fde7d56c478d1d6e450d964', 1),
(263, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xuan-la-phuong-xuan-tao-prj-kosmo-tay-ho/cao-cap-tinh-a-i-tu-giua-long-thu-do-ha-noi-pr15597570', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ccec6ecadf4daf89639fef9895fb628a', 1),
(264, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-binh-chanh-3/gan-truong-tieu-hoc-nhua-12m-125m2-so-hong-tho-cu-840tr-bao-thu-tuc-sang-ten-pr15123175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9791abb2e92b6d4f5544e4b43c73edee', 1),
(265, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ngo-chi-quoc-phuong-binh-chieu-prj-binh-chieu-riverside-city/kdc-nh-thuc-mo-hom-nay-xdtd-sang-ten-ngay-so-rieng-0937701826-nhht-vay-50-pr15597481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd96fd53a0752461aa5ec86d5abf988c6', 1),
(266, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-vinh-phuoc-prj-muong-thanh-vien-trieu/chinh-chu-nha-trang-pr15597332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b882043767de708b4d2d49fa488bbc31', 1),
(267, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ben-tram-xa-cua-duong/phu-quoc-co-tho-cu-tung-dt-95-135m2-thanh-toan-trong-4-thang-pr15596878', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '668c81a4cef446453a3c0435e92c3c87', 1),
(268, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tran-hung-dao-phuong-an-hai-tay-prj-the-monarchy/ngay-vg-chi-khach-hg-toa-b3-qua-tg-len-den-200-cay-vg-tai-novotel-dg-pr15414992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7472c48703955fc129c0d1eeb33623f5', 1),
(269, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dao-tri-phuong-phu-thuan-3-prj-q7-saigon-riverside/cdt-hung-thinh-nhan-giu-cho-block-dep-mat-view-song-1-6ty-d-an-lh-09004298-pr15595291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1104665d0bdbb0dcc19c582277658352', 1),
(270, 'https://batdongsan.com.vn/ban-nha-rieng-duong-nguyen-oanh-phuong-16-3/mat-tien-nhua-16m-ngay-p6-dt-23x47-gia-38-5-ty-pr15594988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2dcdd05f24c01f03eede79b8e280c1af', 1),
(271, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/chuyen-nhuong-q2-1pn-2-3-ty-2pn-2-8-ty-3pn-3-8-ty-hung-01228796826-pr15594536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1390862a65fb213064bd525e963f120d', 1),
(272, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-quoc-lo-51-xa-tam-phuoc-3-prj-kdc-thuong-mai-phuoc-thai/0-can-pho-mo-gia-uu-dai-tang-ngay-cay-vang-sjc-lh-094115158-pr15594489', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a4677c3cf3ecbc0a9a1e91a3b784d836', 1),
(273, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/mt-14m-nam-gan-tran-giau-binh-chanh-shr-tho-cu-100-gia-650tr-0901481115-pr15594464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a693f0b03ec337508b469738c113c8e', 1),
(274, 'https://batdongsan.com.vn/ban-dat-duong-vo-van-bich-xa-binh-my/mt-cu-chi-shr-xdtd-pr15550440', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e39f5bab8edab3ccd01e906d90703fb6', 1),
(275, 'https://batdongsan.com.vn/ban-nha-rieng-duong-quoc-lo-13-phuong-hiep-binh-phuoc/1-tret-3-lau-2mt-ql13-gan-ubnd-thu-duc-dt-4-5x14-gia-3-5-ty-shr-pr15593932', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e61e2adc472e8aff71cef86c5062c756', 1),
(276, 'https://batdongsan.com.vn/ban-nha-rieng-duong-thanh-xuan-25-phuong-thanh-xuan/790tr-con-2-can-2-phong-ngu-2toilet-ngay-ha-huy-giap-1-sec-300m-quan-12-dt-093-1133-959-pr15592546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e5bff5753cad4d484fcff1d2c72e8677', 1),
(277, 'https://batdongsan.com.vn/ban-kho-nha-xuong-tan-uyen-bd/may-nam-trong-cum-cong-nghiep-tinh-binh-duong-pr14739587', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '42c7db323c487ac1c3740c6d3c824fd0', 1),
(278, 'https://batdongsan.com.vn/ban-dat-duong-quoc-lo-13-phuong-hiep-binh-chanh/chinh-chu-tho-cu-ql13-p-phuoc-thu-duc-655m2-pr15584928', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1e1dd6025c639d2970735d4869f2bed5', 1),
(279, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-vinhomes-central-park/ket-tien-nen-nhuong-gap-3pn-va-2pn-gia-re-lh-0933049999-pr15592704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b3f2d4a9e3502a3dc7670fc60a487163', 1),
(280, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-pho-ton-duc-thang-phuong-ben-nghe-prj-vinhomes-golden-river-ba-son/cat-lo-1ty-2pn-toa-luxury-6-bason-co-cam-ket-thue-2nam-10-nam-pql-pr15591144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0817050f0daa85fadf161056c59795da', 1),
(281, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-pham-hung-xa-phuoc-loc-3-prj-garden-riverside-villas/chinh-chu-c-gap-ong-lh-0984931853-pr15540586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8a8b892c1035a01a5d839741f057a01b', 1),
(282, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-le-hong-phong-phuong-thang-tam-prj-chung-cu-son-thinh/lai-3pn-2-view-bien-gia-cuc-tot-bao-gom-noi-that-3-6-ty-lh-0967-11-15-17-pr15585633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '06727028ef41f0d24b4ee280b8213453', 1),
(283, 'https://batdongsan.com.vn/ban-dat-nen-du-an-binh-chanh/gan-cho-gia-hap-dan-chiet-khau-8-15-tang-5-chi-vang-khi-thanh-toan-30-pr15586325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1b2548dc6bfffafe15232930a034cfa8', 1),
(284, 'https://batdongsan.com.vn/ban-dat-duong-ngo-quyen-xa-an-hoa-10/tho-cu-100-ngay-nga-3-vung-tau-bien-dong-nai-lh-0915870026-pr15584464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9e6a629d2f9aefaac76284642a14d9df', 1),
(285, 'https://batdongsan.com.vn/ban-dat-duong-tinh-lo-10-xa-duc-hoa-ha/gap-250m2-huyen-cach-cau-xang-3km-tho-cu-0-shr-pr15219808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6d61e1515c01db4895309b91b8e26246', 1),
(286, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nam-ky-khoi-nghia-phuong-8-6-prj-cao-oc-intresco-plaza/pkd-0908-874-539-cap-5-sao-mt-ki-ki-ly-chinh-thang-gia-4-3-ty-chiet-khau-pr15584250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '036986afe402ce9b4fc454e739b048b5', 1),
(287, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-phan-ba-vanh-phuong-nai-hien-dong/can-lo-block-dep-nhat-150m2-lien-he-0912-877-060-pr15585050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df649ab7736caecee40fc2c19c5e211d', 1),
(288, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-le-van-luong-phuong-la-khe-prj-khu-do-thi-moi-duong-noi/tap-doan-nam-cuong-chinh-c-mo-dot-2-sieu-du-an-hotline-0914102166-pr13136675', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '05a15eac5a1c954c41ee6e5fb7bbc058', 1),
(289, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-25c-xa-phu-hoi-2-prj-khu-do-thi-mega-city-2/vang-megacity2-ve-tinh-tp-hcm-gia-chi-tu-600tr-0901261212-pr15434201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '65353dd6b33a8380ac07c3a9487f8e47', 1),
(290, 'https://batdongsan.com.vn/ban-dat-nen-du-an-pho-le-trong-tan-phuong-kien-hung-prj-khu-do-thi-thanh-ha-muong-thanh/chinh-chu-biet-thu-duong-30m-cienco-5-0984-11-44-33-pr14737161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6173e7ef4384b9bf3c5a79fe18e70296', 1),
(291, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-duong-thi-giang-phuong-thoi-an-1/hot-du-moi-dh-cho-nha-dau-tu-trong-khu-38ha-lh-ms-uyen-0913602607-zalo-pr15584257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '486d58833e18b7affe3e9072917b32f7', 1),
(292, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-vanh-dai-3-xa-long-tan-3-prj-king-bay/gia-1-55-ty-dong-nai-thh-to-chi-30-lh-0931433555-pr15584166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a98eb66d4d111fc1b77cbaf2c945abd7', 1),
(293, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tran-duy-hung-phuong-trung-hoa-4-prj-vinhomes-dcapitale/chinh-chu-chuyen-nhuong-cao-cap-c72208-du-an-dcapital-tai-ha-noi-pr15583624', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b4748f1b38762b75e4ae82cf3131d40d', 1),
(294, 'https://batdongsan.com.vn/ban-dat-duong-nguyen-tat-thanh-phuong-thanh-khe-dong/da-nang-pr15583322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '44e97459ca772ea01521003e6dccd41e', 1),
(295, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dao-tri-phuong-phu-thuan-3-prj-q7-saigon-riverside/hot-hung-thinh-nhan-giu-cho-2-block-mt-mat-view-song-1-6ty-2pn-lh-098808890-pr15583215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2f664f7cd92058f266e89b92776c8e03', 1),
(296, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-bui-van-ba-phuong-tan-thuan-dong-1-prj-jamona-golden-silk/lai-can-bt-quan-7-dt-7-4x18m-tret-2-lau-va-ham-moi-100-8-85-ty-bao-phi-thue-pr14986751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df6269859f6552d39ad10bb8587fb02d', 1),
(297, 'https://batdongsan.com.vn/ban-nha-biet-thu-lien-ke-duong-to-huu-phuong-la-khe-prj-an-phu-shop-villa/mo-shophouse-noi-mat-27-met-giap-aeon-mall-ha-dong-pr15581491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '87b1d8eface540d7ae49ffb324ed2273', 1),
(298, 'https://batdongsan.com.vn/ban-dat-xa-long-tho/ap-1-chinh-chu-co-thuong-luong-tang-kem-1-lo-mat-tien-pr15582330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7467cdb755fb4418caf7cf09665c10b3', 1),
(299, 'https://batdongsan.com.vn/ban-dat-duong-so-21-phuong-hiep-binh-phuoc/van-minh-land-mo-nen-vi-tri-trung-tam-quan-thu-duc-hong-rieng-bao-gpxd-thanh-khoan-cao-pr15581929', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '670020e6612cb3f348e0311beebb565d', 1),
(300, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-bui-van-hoa-phuong-an-binh-10/co-hoi-dau-tu-ngan-vang-co-1-0-2-02-tien-mang-ng-thuy-tot-voi-8-ty-500-trieu-dong-pr15580021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dbf4979edcdcfefd5d31ea3e84289817', 1),
(301, 'https://batdongsan.com.vn/ban-dat-phuong-chanh-nghia/vo-chong-toi-dang-ket-von-de-lam-an-kinh-doanh-can-gap-600m2-goc-gan-trung-tam-hanh-chanh-pr15581387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1918c18659ab124ef5be51e3cc23baae', 1),
(302, 'https://batdongsan.com.vn/ban-dat-nen-du-an-xa-long-tan-3-prj-king-bay/mo-quy-vang-ven-song-dep-nhat-nhon-trach-don-dau-quy-hoach-vanh-dai-cau-q9-pr15217218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd070e81023992f4448973dc7011a5b15', 1),
(303, 'https://batdongsan.com.vn/ban-dat-thu-dau-mot-bd/94m2-vi-tri-trung-tam-can-gap-di-nuoc-ngoai-lien-he-chi-my-0886-675-742-pr15517523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '89d7cf847543197a4bfdb62a87aad0bb', 1),
(304, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-ham-nghi-thi-tran-cau-dien-prj-vinhomes-gardenia/cat-lo-sau-hoac-bang-gia-mien-phi-tu-van-va-xem-nha-lh-0934239678-pr14498372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1be6698c4549b4ab911ce5b72ddbb95b', 1),
(305, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-minh-khai-phuong-vinh-tuy-prj-vinhomes-times-city-park-hill/gap-chinh-chu-gap-ch-3pn-dt-113m2-view-thoang-3pn-sang-huong-dong-nam-gia-4-1-ty-bp-pr14695035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1f77e3f7ba03841465f879b268c4ecc1', 1),
(306, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-co-nhue-1-prj-an-binh-city/chinh-chu-3pn-gia-2-ty-view-5ha-lh-0972-943-299-pr15579535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '24665fe739c52dc7b229be064da03ee1', 1),
(307, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-xien-xa-tan-trieu-prj-eco-dream-nguyen-xien/du-an-giai-doan-2-cua-green-city-tien-do-cuc-tot-gia-chi-tu-25tr-m2-pr15068484', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4c9e12dd930083c0b8891c96cdc51b34', 1),
(308, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dao-tri-phuong-phu-thuan-3-prj-q7-saigon-riverside/hot-nhan-giu-cho-2-block-mt-mat-view-song-1-8ty-2pn-tra-gop-nam-0-ls-pr15575434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '72fc948735e9f9383a8b7892eee31ea8', 1),
(309, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-pham-van-dong-phuong-co-nhue-1-prj-an-binh-city/chuyen-nhuong-50-gia-re-tu-9-ty-lh-0987-065-557-em-thuy-hh-pr12452711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '968c561e2ac7fe67a04e077dc19a29c9', 1),
(310, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/vinmes-1pn-2-45-ty-2pn-3-3-ty-3pn-4-4-ty-4pn-7-5-ty-lh-0977771919-pr15579075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a76f107241f9cd3d4e194c78dc79475', 1),
(311, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ngo-chi-quoc-phuong-binh-chieu/mt-30m-so-rieng-xay-dung-tuy-thich-gia-tu-1-2ty-ho-tro-vay-dai-han-ls-uu-dai-pr15578104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '808ca87920571dff40b7a99a7e5c8e23', 1),
(312, 'https://batdongsan.com.vn/ban-dat-nen-du-an-an-ha-lotus/nh-mua-chinh-chu-ky-gui-kdc-ten-lua-2-kdc-kdc-t-do-thu-tuc-don-gi-pr15578012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '10d12db7c03da06ed1abd29f1ef4fa69', 1),
(313, 'https://batdongsan.com.vn/ban-dat-nen-du-an-di-an-bd/chi-664tr-8-3tr-m-se-co-ngay-80m2-tai-trung-tam-tx-binh-duong-pr15458550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e74766e5f19502bc761a3d0a84e6792d', 1),
(314, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-bui-cam-ho-phuong-tan-thoi-hoa-prj-tecco-dam-sen-complex/chi-tt-150tr-nhan-ngay-2pn-ngay-tt-30-nhan-nha-tro-tra-gop-0-lai-suat-pr15577167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '50fc5005829adf6ec2858a471fc98b6b', 1),
(315, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/nhung-dang-rao-gia-re-co-so-ng-lh-0936-721-723-mr-ai-pr15576799', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd81b15478b26ca47e2d346706e7d8aab', 1),
(316, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-saigon-pearl/chuyen-cap-nhat-gia-tung-ngay-re-nhat-thi-truong-lh-0902681106-pr14414233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '88c9d2468b992f1eb6e353af462784f6', 1),
(317, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-nguyen-tat-thanh-phuong-tan-thuan-tay-1-prj-duc-long-golden-land/chi-2ty-toan-10-ky-hdmb-gia-goc-chu-dau-tu-goi-ngay-090-182-6879-pr15576586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b0a39718fbeece4cf314eca6327ed3db', 1),
(318, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-phan-van-hon-phuong-tan-thoi-nhat-1-prj-prosper-plaza/mo-69-dep-nhan-nha-quy-iv-2018-gia-goc-cdt-hotline-0909110379-pr15575418', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6e50a75e57f4383c3d4a8bfb80c26abc', 1),
(319, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-le-hong-phong-xa-long-tho-prj-khu-do-thi-moi-phuoc-an/mua-nh-ky-gui-nhon-trach-cu-100-tai-xay-ng-ha-noi-lh-0911-504-868-pr15437327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd4720497cfa1f0e951febfc816767a43', 1),
(320, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/coc-gap-do-khach-gap-lh-trinh-0909-925-194-coc-gap-pr14848280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '98736b3b7cf3d7aa2194291c781bfb89', 1),
(321, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-do-xuan-hop-phuong-phuoc-long-b-prj-flora-anh-dao/mat-tien-p-q9-goc-2mt-2pn-2-wc-pr15600331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fe45ce9245e6f6238b8a332d9cb4abbb', 1),
(322, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-hoa-lan-68/mat-bang-gia-re-o-quan-phu-nhuan-pr15623452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ff09423a94a913a1ace515cbcf7a11dd', 1),
(323, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-hoa-lan-68/gia-re-o-quan-phu-nhuan-pr14454088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6ffab11257c809abe11f936a1c6d2341', 1),
(324, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-ly-van-phuc-1-53/mat-tien-gia-re-3tr-o-q-1-pr14454023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'da75fe104f2cfc4737acf6e5627000b1', 1),
(325, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-le-van-luong-phuong-tan-quy-prj-hoang-anh-gia-lai-1/ch-sat-lotte-mart-ngay-nga-tu-cay-xang-lh-0909399787-chinh-chu-pr13817089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '38233d3570c3af404321be59a3db033c', 1),
(326, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-15b-phuong-phu-my-9-prj-the-era-town/duc-khai-re-nhat-thi-truong-1pn-3pn-gia-chi-tu-6-trieu-thang-lh-0902-952-838-pr14361242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '746465178a14a624574d0e19d6083827', 1),
(327, 'https://batdongsan.com.vn/cho-thue-van-phong-pho-hoang-dao-thuy-phuong-nhan-chinh/duong-hoa-thuy-pr15619422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '94796274fb2eb9059018325aebc20006', 1),
(328, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-pho-hang-bong-phuong-hang-bong/trong-tai-100m2-lh-01232767694-pr15607342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8d6a757176cfa49dfff9132c6da6025c', 1),
(329, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-mai-chi-tho-phuong-an-phu-prj-lexington-residence/chu-dau-tu-q-2-gia-10tr-1pn-lh-0937309292-pr15621788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5c45a6cf085a7cacbd66016968822846', 1),
(330, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-so-34-phuong-tan-quy/nguyen-can-quan-7-pr15333253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b25292ad17d3aa21c0794e70b0f50522', 1),
(331, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-au-duong-lan-phuong-2-17-prj-ngoc-phuong-nam/chinh-chu-quan-8-pr15058004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0636a95cf9bfb08a6d562e65de94203e', 1),
(332, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-phan-xich-long-phuong-2-21/vua-va-nho-tai-khu-lh-0915484882-pr15621469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'efd74b26bcd210302442b60eaedde18f', 1),
(333, 'https://batdongsan.com.vn/cho-thue-kho-nha-xuong-dat-tan-uyen-bd/san-xuat-dien-tich-5000m2-gia-tot-pr14281969', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '35ed1c399fca062a02d27b45f19e68fc', 1),
(334, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/chuyen-quan-4-hang-cap-nhat-lien-tuc-gia-rat-rat-tot-luon-a-pr14761813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e5ab4986ef5d46f7d8a16b22a479770d', 1),
(335, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-tay-son-phuong-nga-tu-so-prj-mipec-towers/chu-huu-can-s-200m2-den-900m2-cuc-dep-tai-toa-nha-229-n-pr14750795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '11a8f325cbbcc088cba82d5e1ca89bac', 1),
(336, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-nguyen-van-quy-phuong-phu-thuan-3/can-ho-mini-cao-cap-quan-7-ng-khu-biet-thu-an-ninh-pr15242810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cc20b2f13312debab17dcf39ebf13ccf', 1),
(337, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-mai-chi-tho-phuong-an-phu-prj-lexington-residence/lien-he-pkd-1pn-2pn-3pn-giu-keys-xem-nha-24-7-lh-0901803151-pr10688327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '82d7de25f33aaf277656b60e369d4c48', 1),
(338, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-nguyen-ai-quoc-phuong-tan-tien-9/bang-kinh-doanh-tp-bien-hoa-lien-he-0934146136-pr14848657', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5a63be858a8d90c87d98164b429fa2eb', 1),
(339, 'https://batdongsan.com.vn/cho-thue-van-phong-pho-le-trong-tan-phuong-quang-trung-17-prj-to-hop-chung-cu-thuy-loi-tower/chinh-chu-mat-bang-toa-nha-28a-ha-dong-lien-he-0973-497-885-pr15479634', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5f54c9f0c9168b0513714925b84c28e9', 1),
(340, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-tho-phuong-tan-hung-14-prj-sunrise-city/chuyen-1-2-3-4pn-gia-tot-nhat-thi-truong-lh-0902626864-hieu-pr15618671', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6a3ac1e2caa5e7373210ffeb1d36d2b6', 1),
(341, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-kien-hung-prj-khu-do-thi-thanh-ha-muong-thanh/phan-phoi-truc-tiep-tu-chu-chu-dau-tu-gia-dac-biet-dau-nam-chi-tu-15-tr-m2-pr14683411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '112d3b4a7d221322ecfe184e6188f2f4', 1),
(342, 'https://batdongsan.com.vn/ban-dat-nen-du-an-phuong-binh-chieu-prj-thu-duc-riverside/mo-dot-1-khu-do-thi-c-gia-chi-tu-24tr-m2-so-rieng-ht-vay-dai-h-xay-ng-ngay-pr15622579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1bdfae8bb6eb9f87ccab5f57248d33bc', 1),
(343, 'https://batdongsan.com.vn/ban-nha-rieng-duong-phan-van-hon-xa-xuan-thoi-thuong/pho-mot-lau-so-hong-gia-1-46-ty-gan-cho-dai-hai-hoc-mon-hinh-duoi-pr15622096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0519ef6e4535175032d86908a280b34f', 1),
(344, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-ha-duy-phien-xa-binh-my-prj-lucky-garden/gio-hang-sang-nhuong-186m2-gia-1-4-ty-216m2-gia-1-66-ty-0902828385-pr15622067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f4683cf14f745b55cf344c5bf12e05fe', 1),
(345, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-an-duong-vuong-phuong-16-1-prj-khu-can-ho-nbb-garden-iii/chay-hg-voi-vo-v-kiet-chi-ty-2pn-chiet-khau-5-gop-moi-thg-pr15621623', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8ff9edc0448a7f7a8cb75d10bfa35e5d', 1),
(346, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-song-hanh-phuong-an-phu-prj-gem-riverside/chay-hg-du-qu-2-chi-co-the-la-gemriverside-pr15621336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '235270c121e351534d43a71a90570fe7', 1),
(347, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-pho-ta-quang-buu-phuong-4-15-prj-topaz-elite/chu-dau-tu-thanh-ly-6-2-3pn-do-khach-hang-het-kha-nang-thanh-toan-lh-0911-745-755-pr15205573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0fa14e9b2f87a2dd4a995a607755ee8f', 1),
(348, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dao-tri-phuong-phu-thuan-3-prj-q7-saigon-riverside/hot-tang-100-dat-cho-block-dep-view-song-lh-0902520285-pr15620282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd52325e8a5b1c5953e17a9f35792ea70', 1),
(349, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-dinh-thon-phuong-my-dinh-1-prj-the-emerald/chiet-khau-khung-toi-13-co-hoi-dau-tu-cho-thue-sinh-loi-27-tr-th-lh-0911-151-262-pr15620097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a3b61b71f667ebdc2045c10b6cf0a0ae', 1),
(350, 'https://batdongsan.com.vn/ban-nha-mat-pho-duong-tran-khanh-du-phuong-tan-dinh-2/hot-ds-nhung-can-tot-t-khu-quan-1-tu-20-40-ty-lh-mr-hai-0909603386-pr15620055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c73af6961a10369102ba3b3e2ef6274f', 1),
(351, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-phuong-an-hai-tay-prj-the-monarchy/kng-mua-du-monachy-ven-song-h-da-ng-khi-chua-doc-tin-nay-lh-chu-dau-tu-0967-832-228-pr15619915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1f0c3a2a823dd4c3cb8892d7428118a8', 1),
(352, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-an-trung-2-phuong-an-hai-tay-prj-the-monarchy/nghi-lam-nong-thi-truong-da-nang-vao-nhung-ngay-dau-nam-2018-pr14827616', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3e77ee498caeb43b62890332915ad2e8', 1),
(353, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-tran-hung-dao-phuong-an-hai-tay-prj-the-monarchy/nghi-san-vuon-dau-tien-ngam-toan-h-phao-a-quoc-te-da-nang-chiet-khau-14-pr15025880', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '616452aca2f1ace8eabd97af025a1ef5', 1),
(354, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-an-trung-2-phuong-an-hai-tay-prj-the-monarchy/nghi-co-thiet-ke-h-quan-toan-h-song-han-dep-nhat-da-nang-pr15225820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dc115338337e3145197702bad02a8c4c', 1),
(355, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-xa-vinh-ngoc-1-prj-intracom-riverside/cau-nhat-tan-doc-quyen-tang-dep-toa-b-nhan-dat-cho-toa-c-lh-01696656886-pr15619665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b597e2002daf503fced486cbb1360557', 1),
(356, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-mai-chi-tho-phuong-an-phu-prj-centana-thu-thiem/nhan-dip-30-4-ch-uu-dai-trong-t-4-len-den-100tr-gia-3-4-ty-0919-140-896-pr15618888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3aee7387119673396ce4e603184b264a', 1),
(357, 'https://batdongsan.com.vn/ban-can-ho-chung-cu-duong-luong-the-vinh-xa-me-tri-prj-vov-me-tri/chinh-chu-chcc-tang-9-phong-dpe-thoang-thiet-ke-sang-trong-gia-h-tranh-pr15618720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5b3dfb7624886385346ea70f886dfb0b', 1),
(358, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-trinh-quang-nghi-xa-phong-phu-4-prj-viet-phu-garden/binh-chanh-kdc-nam-nam-sai-gon-11-trieu-m2-tot-nhat-thi-truong-lh-0904040000-pr15232026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b02d3a6e6da2cefc3d982b09b70c6555', 1),
(359, 'https://batdongsan.com.vn/ban-dat-duong-30-4-1-thi-tran-duong-dong/sang-gap-lo-goc-210m2-va-lo-120m2-o-khu-dan-cu-gan-cong-chao-gia-1ty1-pr15602859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c97cc3b46158158c59730a3b65ad4ba4', 1),
(360, 'https://batdongsan.com.vn/ban-dat-nen-du-an-duong-tinh-lo-10-prj-khu-dan-cu-tan-do/can-mt-tl10-va-nhan-mua-ky-gui-kdc-lh-0901-359-990-pr15196439', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '98941dba390280d3babbea74c63ecd65', 1),
(361, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/chuyen-vinmes-1-2-3-4pn-gia-tot-nhat-lh-gia-kinh-0944339199-pr15582195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0665d44f30b935f3df405f81d60f0a3b', 1),
(362, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-pho-lang-ha-phuong-lang-ha/can-sang-nhuong-thoi-trang-mat-dtsd-60-m2-mt-7-5m-x-5-tang-pr15579686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8fe9fd00f40a9eb0068f6853d52935e1', 1),
(363, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/80m2-2-png-day-du-do-14-tr-th-tline-0909917315-a-hung-pr15198742', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '70db4c2e4f3641f733f1738c3d86d7b1', 1),
(364, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/quan-2-gia-tot-nhat-1pn-11-trieu-2pn-15-trieu-3pn-18-trieu-pr15566642', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '702b4bf4bc5e16d514c83dcee76ff37a', 1),
(365, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-a4-phuong-12-10/tien-nguyen-can-ngay-goc-cong-hoa-so-p-q-tan-binh-pr15540157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cb6d5f3dd94e0ca032707ca1b64e701b', 1),
(366, 'https://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-a4-phuong-12-10/mat-bang-goc-nga-5-dac-dia-2-mt-va-hoang-ke-viem-so-89-91-93-tan-binh-pr15538409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6a3cb3671d256dcbf8c0165ffd6ae31f', 1),
(367, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-pho-quang-phuong-2-22-prj-sky-center/ban-quan-ly-1pn-2pn-3pn-truc-tiep-chinh-chu-tro-thu-tuc-khi-o-0938826595-pr15035083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '01ad7561bd5e3e958d939d89a1892801', 1),
(368, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/trum-q4-2pn-70m2-gia-13-tr-th-lh-di-xem-nha-ngay-0931448466-hoac-0938449528-pr15382976', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b55454217fb59eaafdfaced8935bf67e', 1),
(369, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-pho-hoang-ngoc-phach-phuong-lang-ha/dich-vu-85m2-khu-nguyen-ng-pr15229942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ecf8ef52d3a5f5511ba382c38b2b34c2', 1),
(370, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/1pn-12-tr-th-2pn-15-tr-th-3pn-19-tr-t-4p-26-trieu-call-0977771919-pr15536838', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '61278323d4d72239e5d5d5195880ef9d', 1),
(371, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/1pn-12-tr-2pn-15-tr-3pn-19-tr-lh-ngay-hiep-0933-292-102-pr13389903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fdbf75d7ca15e067a55e807cf0151b5c', 1),
(372, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-duy-tan-phuong-dich-vong-hau/quan-cau-giay-quan-thanh-xuan-ao-vp-tron-goi-ngoi-lam-viec-re-pr13251394', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '76af50672ec5a18546a21c4d03102d35', 1),
(373, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-huu-canh-phuong-22-prj-saigon-pearl/chuyen-2pn-3pn-4pn-gia-re-nhat-thi-truong-lh-0902-681106-pr14425713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c7042e40fa8068ff562ee195bffda291', 1),
(374, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-pho-ton-duc-thang-phuong-cat-linh/chinh-chu-tien-dt-170m2-san-tien-6-5m-va-5-1m-co-ham-de-xe-pr15531050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c939b37460e566f7eed8e5b6bdecd500', 1),
(375, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/dai-ly-gia-tu-13-trieu-lh-0909688766-xem-nha-de-dang-pr15529007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fc9eb6e9ce841522952d3c16215a3a21', 1),
(376, 'https://batdongsan.com.vn/cho-thue-nha-rieng-duong-kim-dong-phuong-giap-bat/250-m2-lam-van-phong-trung-tam-dao-tao-pr15527390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a63af8da4514e66d972ce9a8ebff3eff', 1),
(377, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dien-bien-phu-phuong-22-prj-vinhomes-central-park/chuyen-vinmes-3pn-gia-tot-nhat-lh-gia-kinh-0944339199-pr15528286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'eadf3d44ecbe2188f2c6ad7157ed86e8', 1),
(378, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-tran-thai-tong-phuong-dich-vong/quan-cau-giay-gia-re-chi-tu-8tr-thang-pr15525613', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'bc9d01a4e63a2549238c239a61f24cb1', 1),
(379, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-xa-lo-ha-noi-phuong-thao-dien-prj-masteri-thao-dien/tu-1-3pn-gia-tot-nhat-thi-truong-0902633686-pr11546311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b1b6941650cd6f9ed250ab18443cf856', 1),
(380, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-73-1-phuong-tan-phong-9/day-du-noi-that-cao-cap-tai-png-quan-7-gan-lotte-mart-pr15525681', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '06996e6a0a7405aa4cad519d28fd7df0', 1),
(381, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/ozing-cao-cap-quan-4-1pn-2pn-3pn-4pn-spuse-pr15588655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'bf90770b0f46ad5e4f9215eff9d0db59', 1),
(382, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-nguyen-van-troi-phuong-8-13-prj-kingston-residence/quan-ly-100-gia-tot-nhat-thi-truong-pr15417815', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '675ac9eb50920717f4f97d06b3961442', 1),
(383, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-hoang-quoc-viet-phuong-nghia-do-1/30m2-50m2-building-mp-quan-hoa-cau-giay-gia-tot-vi-tri-dep-lh-0964-05-2828-pr14321744', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '670fd9852826cba200721441f61b8446', 1),
(384, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-hoang-hoa-tham-phuong-vinh-phuc/khep-kin-nha-so-2-ngo-567-ang-a-ba-dinh-hn-dt-40-45m2-gia-6tr-th-pr15336991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a44f575525069720ed50751d4bf63a6', 1),
(385, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-tan-hoa-dong-phuong-14-3-prj-summer-square/quan-6-2-png-ngu-view-boi-full-noi-that-gia-8-trieu-thang-pr15417550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8cd52d468494973c887ba27a8ad4256f', 1),
(386, 'https://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-huynh-tan-phat-59/chinh-chu-ngay-nga-tu-nguyen-thi-thap-dt-137m2-gia-28tr-thang-pr15585960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1d93dc8b94da319325e0e68cdfa3bf65', 1),
(387, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-phuong-phu-my-9-prj-the-era-town/phong-va-nha-nguyen-tai-gia-tot-quan-7-pr15587459', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '289f739ba844348f6e8b33f1f4236a27', 1),
(388, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-bui-huu-nghia-phuong-2-20/moi-100-gio-giac-tu-do-80-p2-quan-binh-thanh-lh-a-tam-0934898020-pr14358123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b43baf7912853b4d59b6af7a6f02c9a1', 1),
(389, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-co-bac-phuong-co-giang/moi-100-khong-chung-chu-gio-giac-tu-do-hem-202-p-q1-pr12777208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '42f98e9273da5dc8e28f5e8057ec937e', 1),
(390, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-pho-ly-thuong-kiet-phuong-15-4/moi-100-dep-nhu-can-ho-mini-gio-giac-tu-do-hem-263-p15-q11-pr13489144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a1528e78fd61cd30e5014d29ee493681', 1),
(391, 'https://batdongsan.com.vn/cho-thue-van-phong-pho-thai-ha-phuong-trung-liet/mat-bang-kinh-doanh-dep-nt-tay-son-dong-da-chinh-chu-pr15586641', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9d46bc38673e413b47caf17cff161ff2', 1),
(392, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-than-nhan-trung-phuong-13-10/co-gac-moi-100-tt-quan-tan-binh-co-cua-so-bep-wc-ng-bao-ve-24-24-pr11838936', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '795f1ffde463e2f89341ab3967535681', 1),
(393, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-d1-phuong-tan-hung-14-prj-can-ho-florita-duc-khai/quan-ly-100-quan-7-1pn-2pn-3pn-nha-trong-va-full-noi-that-lh-0901351235-pr15585930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e0afc1f85ea3a2be53f12ac0a3e1ec38', 1),
(394, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-duy-tan-phuong-dich-vong-hau/tron-goi-cau-giay-15m2-20m2-25m2-30m2-giam-gia-30-khach-0978-371-561-pr14845841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '239d46eccea4365b9e6f5b0e5bef260b', 1),
(395, 'https://batdongsan.com.vn/cho-thue-van-phong-duong-duy-tan-phuong-dich-vong-hau-prj-viet-a-tower/trung-tam-day-du-trang-thiet-bi-full-vu-dien-tich-linh-hoat-giam-20-khach-thue-pr15389561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9df76e0040fd670e343f3b5aab43eb71', 1),
(396, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-dao-tri-phuong-phu-my-9-prj-jamona-city/q-7-2-png-nha-trong-view-dep-pr15578854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '975aa1050db75866625fd887e8907e27', 1),
(397, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-hoang-ngan-phuong-trung-hoa-4/meland-use-ang-a-cau-giay-gia-re-tien-ich-cao-cap-lh-0934599226-pr15583110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a9887f0f6687c7a2ad11cd4b458f2a7', 1),
(398, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-ben-van-don-phuong-1-prj-the-gold-view/trum-quan-4-gia-13-trieu-thang-2pn-dt-70m2-lau-cao-0907937983-pr15582491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a6b2e56844041e2b61d0c8008124bc92', 1),
(399, 'https://batdongsan.com.vn/cho-thue-nha-tro-phong-tro-duong-dong-van-cong-54/trong-can-ho-chung-cu-cbd-premium-home-q2-noi-that-day-du-sang-trong-gia-chi-4-4tr-pr15582933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '32d105046a5fb141be8cbdebfcf6b3d8', 1),
(400, 'https://batdongsan.com.vn/cho-thue-can-ho-chung-cu-duong-bo-bao-tan-thang-phuong-son-ky-prj-celadon-city/2-pn-69m2-full-noi-that-cao-cap-phi-quan-ly-hinh-thuc-te-pr15582876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e781abd5d6fb5948b6795d5f4a795610', 1),
(401, 'http://phonhadat.net/ban-nha-mat-pho-duong-ly-tu-trong-53/ban-nha-mat-tien-duong-ly-tu-trong-quan-1-dt-4x19m-gia-357-ty0931480960-pr9920552.htm', 'Bán Nhà Mặt Tiền  Đường Lý Tự Trọng , Quận 1. DT: 4X19M. Gía: 35.7 tỷ-0931480960', 'Thỏa thuận', 'Không xác định', '\r\n                Bán Nhà Mặt Tiền Đường Lý Tự Trọng.P. Bến Thành.Quận 1. Liên Hệ: -0931480960 \r\n<br/>- DT: 4X19M.\r\n<br/>- Vị trí: Tọa lạc trên vị trí đắc địa nhất Sài Gòn. Gần chợ Bến Thành, KS New World, CV 23/9, khu vực tập trung nhiều tòa nhà cao tầng, trung tâm thương mại, khách sạn 5 sao.\r\n<br/> \r\n<br/>- Gía: 35.7 tỷ\r\n<br/>- Liên hệ : Xem nhà : 0931.480.960 PHONG - (Zalo, Viber 24/7).\r\n<br/>\r\n            ', '', '', 'Bán nhà mặt tiền tại Đường Lý Tự Trọng', '2018-04-18', '', 'Phạm Tuấn Phong', '', '', '', 2, 'caff6b8544e4f9e0f1ed2a86c856da08', 3),
(402, 'http://phonhadat.net/ban-dat-xa-phuoc-hau/ban-gap-500m2-tc-mt-duong-xe-tai-835a-gia-chi-38-trm2-pr9920541.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '393d0cf3f044e644cc9c9d98702a4192', 3),
(403, 'http://phonhadat.net/ban-nha-mat-pho-pho-thi-sach-53/ban-khach-san-4-sao-quan1-12-lau-100-phong-gia-845ty-pr9920548.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '80aeae3ae35ece427a4df4681965ef48', 3),
(404, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/-cc-can-ban-nha-trieu-khuc-46m2x4t-gan-nguyen-xien-gan-duong-25m-gia-285-ty-lh-0917185826-pr9920537.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4480f672d94fda21e72c5a4819b6e5b5', 3),
(405, 'http://phonhadat.net/ban-nha-mat-pho-duong-nguyen-thi-minh-khai-53/ban-nha-mat-tien-thut-duong-nguyen-thi-minh-khai-quan-1-dt-5-6x15m-gia-14-ty0931480960-pr9920547.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2a7d8014e8e0e670ccdc594a8e5b8f6a', 3),
(406, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/toi-cc-ban-nha-trieu-khuc-34m2x5t-ngo-thong-cach-o-to-80m-gia-215-ty-lh-0917185826-pr9920536.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '672573b07f598dcb0e4c22c5f9fb0692', 3),
(407, 'http://phonhadat.net/ban-nha-mat-pho-duong-nguyen-dinh-chieu-55/ban-gap-nha-hxh-duong-nguyen-dinh-chieuq3dt-43x155m3-laugia-125-ty0931480960-pr9920549.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f2d9f36ec468e302ffffb536bcc8e5f7', 3),
(408, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/ban-nha-40m2x5t-trieu-khuc-thanh-xuan-ngo-thong-2-mat-thoang-cach-o-to-10m-gia-325-ty-lh-0917185826-pr9920538.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dceb37e9b5a74c688257927420f41f76', 3),
(409, 'http://phonhadat.net/ban-nha-mat-pho-quan-1/ban-nha-mat-tien-goc-nguyen-van-maihuynh-tinh-cuaquan-1-dt-85x20m-gia-25-ty0931480960-pr9920558.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ae275c2d2dca58f5d2f33f7f541f8f98', 3),
(410, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/ban-gap-nha-33m2x5t-trieu-khuccach-o-to-10m-san-de-xe-20mgia-215-tylh-0917185826-pr9920534.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fcb782443e151ad9635a81a5dc662861', 3),
(411, 'http://phonhadat.net/ban-nha-mat-pho-duong-nguyen-du-53/ban-nha-mat-tien-duong-nguyen-du-quan-1-dtcn-176m2-gia-40-ty0931480960-pr9920546.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5d73c1e815167a68686c838febc15368', 3),
(412, 'http://phonhadat.net/ban-nha-mat-pho-duong-mac-dinh-chi-1-53/ban-nha-mat-tien-mac-dinh-chi-p-dk-quan-1-22m-x-55mgia-390-ty-pr9920554.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '10306b7c678fa8c12cc07192e83bf437', 3),
(413, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/can-tien-ban-gap-dat-gan-cho-trieu-khuc-40m2-gia-chi-1880-ty-gan-ho-o-to-do-cach-5m-0917-185-826-pr9920530.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '90ed254aff5ff57f0f73a891bc193cd9', 3),
(414, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/ban-dat-gian-dan-60m2-ngo-66-trieu-khuc-duong-rong-12m-co-via-he-gia-54-ty-lh-0917185826-pr9920543.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '95868ff811d0411beefc5fb13d1b114c', 3),
(415, 'http://phonhadat.net/ban-nha-mat-pho-duong-pasteur-53/ban-nha-mat-tien-duong-pasteurquan-1-dtcn-98m2-gia-32-ty0931480960-pr9920555.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1efc12cb4d5471fc48cf4584faf9f97c', 3),
(416, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/can-ban-gap-dat-mat-ngo-66a-va-mat-duong-21m-trieu-khuc-o-to-do-cua-kinh-doanh-duoc-sat-cong-phu-cdgtvt-gia-127tr1m-0917185826-pr9920531.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '37d2f721d6f3998864054b27606b2d82', 3),
(417, 'http://phonhadat.net/ban-nha-mat-pho-duong-nguyen-thi-minh-khai-53/ban-nha-2-mat-tien-duong-nguyen-thi-minh-khai-phuong-da-kao-q1-dt9x10mgia225-ty-pr9920544.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c028a859cffdc9dfedf56f97032f105c', 3),
(418, 'http://phonhadat.net/ban-nha-rieng-duong-nguyen-trai-53/ban-nha-mat-tien-nguyen-trai-q1-vi-tri-vang-gan-cho-ben-thanh-gia-32-ty-pr9920553.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '85335e26eb188cfbc0bb9691f8313df4', 3),
(419, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/ban-dat-gian-dan-60m2-ngo-66-trieu-khuc-duong-rong-12m-co-via-he-gia-54-ty-lh-0917185826-pr9920529.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '959903c6d5295db6ad4f3368f6a14897', 3),
(420, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/cc-can-ban-gap-dat-52m-ngo-58-trieu-khuc-o-to-do-cua-gan-nguyen-trai-gia-42-ty-0917185826-pr9920542.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7d8edb0e0e4ef8c930ededa2dae7896c', 3),
(421, 'http://phonhadat.net/ban-dat-phuong-hiep-binh-phuoc/dat-hiep-binh-phuoc-thu-duc-tho-cu-shr-dau-tu-sinh-loi-pr9920556.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0a76452fa0b66cf4b992276c1363d070', 3),
(422, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/ban-dat-phan-lo-40m2-trieu-khuc-thanh-xuan-o-to-vao-sat-uy-ban-tan-trieu-duong-6m-gia-295-ty-lh-0917185826-pr9920532.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9f4bbeb3c1eaeac7f3def769bd74368b', 3),
(423, 'http://phonhadat.net/ban-nha-rieng-duong-cat-linh-phuong-cat-linh/ban-nha-pho-cat-linh-32m24-tang-nha-ngay-gan-mat-pho-cat-linh-gia-3-ty-pr9920545.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '43efe1902f809e504071db5920909dbb', 3),
(424, 'http://phonhadat.net/ban-nha-mat-pho-duong-cao-thang-55/ban-nha-mat-tien-cao-thang-quan-3-25m-x-40mgia-318ty-pr9920557.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd5ca97c39d7917ce31a1795cac9ee724', 3),
(425, 'http://phonhadat.net/ban-nha-rieng-pho-phan-dang-luu-phuong-7-11/nhinh-4-ty-co-ngay-nha-mt-hem-phan-dang-luu-2-lau-32m2-pr9909937.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4b3075a8f020ea6644359480980b9a98', 3),
(426, 'http://phonhadat.net/ban-nha-rieng-thanh-xuan/chinh-chu-nha-le-trong-tan-vi-tri-dep-o-to-do-cua-chi-co-4-ty-pr9920533.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd7eb2dd51206d8664924f610bafc78e8', 3),
(427, 'http://phonhadat.net/ban-nha-rieng-duong-giai-phong-phuong-phuong-liet/22-ty-30m-giai-phong-truong-chinh-5-tang-long-gio-lo-goc-noi-that-sang-sat-pho-pr9920550.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'df3317b66c3f34723e7e864cd04b6fe6', 3),
(428, 'http://phonhadat.net/ban-nha-rieng-phuong-thanh-xuan-nam/can-ban-gap-nha-33m2x5t-trieu-khuc-cach-o-to-10mngay-sat-duong-25m-moi-gia-225-ty-lh-0917185826-pr9920539.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'aa88c4bed316737d29785eded67e8c00', 3);
INSERT INTO `data` (`data_id`, `data_url`, `data_title`, `data_price`, `data_area`, `data_description`, `data_type_of_news`, `data_type_BDS`, `data_location`, `data_date`, `data_project_name`, `data_contact_name`, `data_contact_phone`, `data_contact_email`, `data_contact_address`, `status`, `data_url_md5`, `site_id`) VALUES
(429, 'http://phonhadat.net/ban-nha-rieng-duong-ho-tung-mau-53/ban-gap-mat-tien-nguyen-cong-tru-ho-tung-mau-dtsd-280m2-8-lau-co-hd-thue-13605-trth-chi-31-ty-pr9920551.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b2fa47ca972acab811e1d790a90cf630', 3),
(430, 'http://phonhadat.net/ban-nha-mat-pho-duong-calmette-53/ban-nha-mat-tien-duong-calmette-quan-1-dt-4x19m-ham-8-lau-cho-thue-khoang-7000thanggia-475-ty0931480960-pr9920540.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1083882ea5eaea9ec24e0406fc8e2077', 3),
(431, 'http://phonhadat.net/cho-thue-nha-mat-pho-pho-tran-dai-nghia-phuong-bach-khoa/cho-thue-toa-nha-80m2x10-tang-lam-van-phong-mat-pho-tran-dai-nghia-0984875704-pr7299644.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8bfd2eb0c44dd0714a4fd7cd9aa64fe0', 3),
(432, 'http://phonhadat.net/cho-thue-van-phong-duong-quan-thanh-1-phuong-quan-thanh/cho-thue-van-phong-ao-dang-ki-kinh-doanh-tai-quan-ba-dinh-gia-1trthanglh-0931743628-pr7639719.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '17cdb13c6509bbc088255558da6ec104', 3),
(433, 'http://phonhadat.net/cho-thue-van-phong-pho-le-trong-tan-phuong-khuong-mai/cho-thue-vp-chuyen-nghiep-dt-linh-hoat-24m2-40m2-70m2-100m2-300m2-500m2-pho-le-trong-tan-pr7315002.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8beb26dc247941a7c70bd0ef34f3a104', 3),
(434, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-4/cho-thue-van-phong-80m2-moi-dep-pho-tran-dai-nghia-quan-hai-ba-trung-0984875704-pr7675196.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '592c36a97845e26c2ef545eb0323bf1b', 3),
(435, 'http://phonhadat.net/cho-thue-van-phong-duong-nguyen-cong-tru-phuong-nguyen-thai-binh/cho-thue-van-phong-tai-tnr-tower-nguyen-cong-tru-quan-1-pr9920535.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ab9182e38972f585bc38e6f8333e45e3', 3),
(436, 'http://phonhadat.net/cho-thue-van-phong-duong-ly-nam-de-1/toi-con-trong-1-phong-15m2-toa-nha-van-phong-tai-mat-pho-ly-nam-de-0931743628-pr7632474.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '30ceeb9d8aced06af04e7cd9321720b1', 3),
(437, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-phuong-bach-khoa/cho-thue-van-phong-80m2-moi-day-du-tien-nghi-tai-pho-tran-dai-nghia-hai-ba-trung-pr7789564.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8262d7231953da5ec24336237c0c13e6', 3),
(438, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-phuong-bach-khoa/cho-thue-van-phong-dt-30-80m2-building-mp-tran-dai-nghia-gia-chi-tu-9m2-lh0984875704-pr7337794.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '235744c10fc5006c018bfa41cf32ecc7', 3),
(439, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-van-phong-khu-vuc-chua-lang-canh-vincom-nguyen-chi-thanh-quan-dong-da-35m285m2-100m2-gia-11m2thang-pr7622259.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2185e0a9c4ee6da8dac49daa6945c08d', 3),
(440, 'http://phonhadat.net/cho-thue-nha-tro-phong-tro-duong-vinh-hung-phuong-vinh-hung-2/phong-tro-tranh-nong-tai-pho-vinh-hung-hoang-mai-pr9874012.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8f411fb2a9986ee86819d1611e8372bf', 3),
(441, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-van-phong-80m2-cuc-dep-tai-pho-chua-lang-nguyen-chi-thanh-0984875704-pr7625288.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7e2ec40b3f4780bb402baf1740c3ba2e', 3),
(442, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-phuong-bach-khoa/cho-thue-van-phong-deptran-dai-nghia-quan-hai-ba-trung-50m2-11tr-lh-0984875704-pr7789579.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fde0b3dda357b84271f7d7ea23f9d049', 3),
(443, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-phuong-bach-khoa/toa-nha-van-phong-10-tang-ttai-mat-pho-tran-dai-nghia-cho-thue-tung-tang-hoac-ca-toa-rong-0984875704-pr7332543.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3103779d54fb47ab5512ba221c0eaee6', 3),
(444, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-4/cho-thue-van-phong-pho-le-thanh-nghi-bach-khoa-hai-ba-trung-dien-tich-80m2160m2-co-thang-may-dieu-hoa-am-pr7658763.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5923cb731c37546484205e9feb25ef7d', 3),
(445, 'http://phonhadat.net/cho-thue-nha-tro-phong-tro-duong-bach-dang-phuong-2-22/ktx-may-lanh-400kthang-tai-cong-vien-gia-dinhsan-bay-pr9861623.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a697d50cc1f2a611452d979c5df77932', 3),
(446, 'http://phonhadat.net/cho-thue-van-phong-duong-ly-nam-de-1/van-phong-showroom-cua-hang-tai-tang-2-ly-nam-de-giao-voi-tran-phu-quan-hoan-kiem-55m2-lh-0984875704-pr7633057.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7d8bbf147ecb55d044e16b5334c8646a', 3),
(447, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-van-phong-35m2-85m2-120m2-240m2-mat-pho-chua-lang-canh-dh-ngoai-thuong-ngoai-giao-lh-0984875704-pr7740177.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'aa28aeea15f8f0d13a8dbaf0ab70122c', 3),
(448, 'http://phonhadat.net/cho-thue-kho-nha-xuong-dat-phuong-hoa-phu-2/cho-thue-hoac-ban-3900m2-nha-xuong-trong-kcn-dong-anngay-khu-cong-nhan-dong-pr7293436.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '37da3617959a2eeafa2316fe67e16c24', 3),
(449, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-van-phong-cao-cap-co-view-ho-dep-tai-pho-chua-lang-canh-vincom-nguyen-chi-thanh-lh-0984875704-pr7637687.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e60486948a1f1cccd63e7b8b170a4034', 3),
(450, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-phuong-bach-khoa/cho-thue-san-van-phonglop-hoc-phong-ve-tai-mat-pho-tran-dai-nghia-hai-ba-trung-ha-noi-pr7796785.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '550488230c27fe9682c295baf1a89b07', 3),
(451, 'http://phonhadat.net/cho-thue-kho-nha-xuong-dat-xa-binh-my-1/cho-thue-dat-mau-cao-suhop-dong-lau-dai-tai-tan-uyen-gia-remat-duong-lon-pr6961287.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f8d2ef4cb76167178bb03cee2128ea67', 3),
(452, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-toa-nha-van-phong-9-tang-x115m2-tai-mat-pho-chua-lang-7m2-mat-tien-lh-0984875704-pr7629845.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '48c0307c06b21153a00e71ea456dbee8', 3),
(453, 'http://phonhadat.net/cho-thue-van-phong-phuong-bui-thi-xuan/cho-thue-van-phong-dep-20m2-60m2-pho-huehai-ba-trung-0984875704-pr7911351.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '13a363d32fe07321a7310e8c2a179855', 3),
(454, 'http://phonhadat.net/cho-thue-van-phong-pho-le-trong-tan-phuong-khuong-mai/cho-thue-vp-chuyen-nghiep-dt-linh-hoat-24m2-40m2-70m2-100m2-300m2-500m2-pho-le-trong-tan-pr7299073.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c904c25d74984d08e668d328291d2150', 3),
(455, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-van-phong-showroom-mat-pho-quan-dong-da-dt-tu-35-den-100m2-gia-12m2-pr7658730.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '946a41c13c426ced29aae8ebd0141c46', 3),
(456, 'http://phonhadat.net/cho-thue-van-phong-pho-lang-ha-phuong-lang-ha/can-cho-thue-van-phong-khu-vuc-lang-ha-quan-dong-da-dt-35m2-gia-9tr-lh-chinh-chu-0984875704-pr7802259.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0b11dce81f1ceb15f3ff3376ba446cd0', 3),
(457, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-4/van-phong-cho-thue-80m2-moi-dep-pho-tran-dai-nghia-quan-hai-ba-trung-0984875704-pr7330689.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c98c369a32d461a9be31f83f68222226', 3),
(458, 'http://phonhadat.net/cho-thue-van-phong-phuong-lang-thuong/cho-thue-van-phong-115-m2-pho-chua-lang-dong-da-ha-noi-pr7658694.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '28a13851532322adb463377764133db5', 3),
(459, 'http://phonhadat.net/cho-thue-van-phong-pho-tran-dai-nghia-4/van-phong-cho-thue-80m2-moi-dep-pho-tran-dai-nghia-quan-hai-ba-trung-0984875704-pr7299808.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7a76b40261979038fc846c2d39af5646', 3),
(460, 'http://phonhadat.net/cho-thue-van-phong-pho-chua-lang-phuong-lang-thuong/cho-thue-vpshowroom-trung-tam-dao-tao-toa-nha-mat-pho-chua-lang-dong-da-dt-35m2-80m2-115m2-pr7678955.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0dee1123721572a18b8d45116ddfd735', 3),
(461, 'https://dothi.net/ban-nha-rieng-duong-quang-trung-phuong-12-8/ban-nha-rieng-tai-duong-quang-trung-phuong-12-go-vap-ho-chi-minh-dien-tich-77m2-gia-6700-ty-pr10955256.htm', 'Bán nhà riêng tại Đường Quang Trung, Phường 12, Gò Vấp, Hồ Chí Minh diện tích 77m2 giá 6.700 Tỷ', '6.7 Tỷ', '77m²', '\r\n            Bán nhà hai mặt tiền thiết kế tuyệt đẹp DT:77m đường Quang Trung Phường 12 Gò Vấp. Giá: 6.7 tỷ\r\n\r\n<br/>Diện tích: 5.5 x 14m.\r\n<br/>\r\n<br/>Hướng : Tây Nam. \r\n<br/>\r\n<br/>Kết cấu : Nhà thiết kế hiện đại rất đẹp đảm bảo về phong thủy, thẩm mỹ, độ bền vững và đầy đủ công năng.  \r\n<br/>Nhà gồm một trệt + một lửng + hai lầu + sân thượng trước sau. Nhà có 5 phòng ngủ, 6 toilet, phòng khách, phòng bếp, giếng trời phòng giặt sân phơi rộng thoáng mát.\r\n<br/>\r\n<br/>Nội thất: Sử dụng nội thất cao cấp từ các thương hiệu nổi tiếng như Toshiba, Panasonic, Inax… các thiết bị nhập khẩu trực tiếp từ nước ngoài. Nhà trang bị sẵm tủ tường, tủ bếp, tủ riệu + tủ quần áo âm tường. Bàn ghế salon, bàn ăn, bàn uống trà, bàn trang điểm, toilet rất sạch sẽ thoáng mát thiết bị hiện đại. Hệ thống đèn – điện âm tường, dùng 100% đèn Led tiết kiệm 70% điện năng tiêu thụ. Các phòng đều có máy lạnh nội thất trang trí dẹpđày đủ tiện nghi. \r\n<br/>\r\n<br/>Vị trí – Tiện ích: Vị trí nhà tuyệt đẹp trong khu nhà đồng bộ cao cấp, hẻm trước nhà 6m xe hơi di chuyển được. Cách trục đường chính Quang Trung 100m nên dễ di chuyển qua các quận Tân Bình, Hóc môm, quận 12, Thủ Đức… Di chuyển qua sân bay 5-10 phút. Gần trung tâm y tế phường, trường học các cấp, trường mẫu giáo, bệnh viện quận. Nhà gần chợ, nhà Thờ, Chùa, coopmart, các nhà hàng, cửa hàng, siêu thị thuận tiện cho việc mua sắm và nhiều tiện ích khác. Nhà nằm trong khu dân trí cao, hàng xóm thân thiện dễ gần. \r\n<br/>\r\n<br/>Đây là link video nhà: https://www.youtube.com/channel/UCG6EcEQexM29nWZJgcNRDow\r\n<br/>Quý khách xem thêm nhà trên 5 tỷ tại đây : https://nhadatngochoa.com/khoang-gia/tren-5-ti/\r\n<br/>: Quý khách xem thêm nhà tại :  https://nhadatngochoa.com/\r\n<br/>( Hình thật 100%).\r\n<br/>Sổ hồng mới năm 2017, chính chủ bao sang tên.\r\n<br/> Hỗ trợ vay ngân hàng 80% với lãi suất ưu đãi.\r\n<br/>Liên hệ : Ngọc Hoa 0934.024.479 – 0987.250.909\r\n<br/>\r\n        ', '', 'Bán nhà riêng', '', '2018-04-17', 'Bán nhà riêng tại Đường Quang Trung, Phường 12, Gò Vấp, Hồ Chí Minh diện tích 77m2 giá 6.700 Tỷ', 'Ngọc Hoa', '0987250909', '', '', 2, '4395e6a3b95d52b7b870ba63fea702e9', 4),
(462, 'https://dothi.net/ban-dat-nen-du-an-duong-dinh-duc-thien-72/ban-dat-mat-tien-dinh-duc-thien-binh-chanh-gia-chi-399-trieunen-so-hong-rieng-pr10954977.htm', 'BÁN ĐẤT MẶT TIỀN ĐINH ĐỨC THIỆN, BÌNH CHÁNH GIÁ CHỈ 399 TRIỆU/NỀN, SỔ HỒNG RIÊNG, LH: 0938 452 653', '399 Triệu', '100m²', '\r\n            BÁN ĐẤT MẶT TIỀN ĐINH ĐỨC THIỆN, BÌNH CHÁNH GIÁ CHỈ 399 TRIỆU/NỀN, SỔ HỒNG RIÊNG<br/>-Nằm ngay mặt tiền Đinh Đức Thiện(lộ giới mở rộng 40m)- trung tâm Bình Chánh.<br/>-Với giá siêu rẻ chỉ 399 triệu quý khách có ngay nền với diện tích 4.5x20 5x20 5x25, Sổ Hồng Riêng.<br/>-Bao công chứng sang tên trong ngày<br/>-Ngân hàng sacombank hỗ trợ vay lên tới 70%, trả góp LS 0%<br/>-Chiết khấu từ 3%-10% giá trị<br/>-Nhiều quà tặng giá trị lên đến 100 triệu đồng<br/><br/>-Nằm sau kế bên chợ Bình Chánh mặt tiền Đinh Đức Thiện thuộc trung tâm Bình Chánh.<br/>-Gần các tiện ích lớn: trường học các cấp, bệnh viện, trung tâm mua sắm, KDC, KCN Bình Chánh,KCN Vĩnh Lộc 2, KCN Phúc Long.<br/>-Kết nối nhanh Quận 1, 7, 6, 8, Quận Bình Tân, Tân Phú và cả khu vực Long An<br/><br/>-Vị trí sinh lời nhanh cho các nhà đầu tư.<br/><br/>-Tiện ích nổi bật: Đường 12 - 16m đã trải nhựa, vỉa hè 2m, hệ thống cây xanh trải hết tuyến đường.<br/>-Tiến độ thanh toán: Linh hoạt, hỗ trợ nhiệt tình cho khách hàng thiện chí không tiếp môi giới!<br/>-Pháp lý minh bạch, rõ ràng có Ngân hàng Sacombank đứng ra bảo lãnh.<br/>-Tặng từ 1-5 chỉ vàng cho khách hàng để lại thông tin sớm nhất qua SMS<br/><br/>Liên hệ: 0938.452.653 hoặc 01644.540.377 gặp A.Thoại<br/>\r\n        ', '', 'Bán đất nền dự án (đất trong dự án quy hoạch)', '', '2018-04-17', 'BÁN ĐẤT MẶT TIỀN ĐINH ĐỨC THIỆN, BÌNH CHÁNH GIÁ CHỈ 399 TRIỆU/NỀN, SỔ HỒNG RIÊNG, LH: 0938 452 653', 'Nguyễn Văn Thoai', '0902385455', '', '', 2, '454bd09d8d34855e9ac22786ac710c22', 4),
(463, 'https://dothi.net/ban-nha-rieng-duong-thanh-loc-17-phuong-thanh-loc-3/rat-tiec-vi-phai-ban-can-nha-xay-de-o-duong-thanh-loc-17-quan-12-pr10953522.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f6748c501d6ac77253331268c7dbbadf', 4),
(464, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/gia-dinh-dinh-cu-can-ban-gap-lo-dat-dt-125m2-shr-gan-cho-va-truong-tieu-hoc-thcs-gia-900tr-pr10954744.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '75a7b91f86787e86eae0228a87318c5f', 4),
(465, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-3-lo-dat-gia-dinh-mt-tinh-lo-10-shr-gan-cho-truong-hoc-0938-502-089-pr10954135.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1e3585761878b7731cab593d9ab90c5f', 4),
(466, 'https://dothi.net/ban-dat-duong-vo-duy-tao-phuong-6_1/can-ban-400m2-dat-tho-cu-duong-vo-duy-tao-tp-tan-an-shr-pr10951777.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '03e7ab20fa432ec3dbdabb39a38b7a88', 4),
(467, 'https://dothi.net/ban-dat-duong-tran-hung-dao-xa-duong-to/ban-mot-so-manh-dat-tai-tran-hung-dao-va-cua-lap-suoi-may-gia-re-pr10952560.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '765a91e5b6d5eb427c7fce24669ca209', 4),
(468, 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-10-419/gia-cuc-cao-mua-ban-nhan-ki-gui-dat-nen-tan-do-long-an-lh-0906779195-pr6295671.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '51224e2ddc8f3aaa41192c5caf3154de', 4),
(469, 'https://dothi.net/ban-dat-nen-du-an-duong-tinh-lo-10-thi-tran-duc-hoa-1/can-ban-nhan-ky-gui-dat-nen-khu-cong-nghiep-tan-do-long-an-lh-0901-359-990-pr8901127.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b4a82a6b088f8d28a8827df37a7ad6c0', 4),
(470, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-gap-ban-gap-dat-tho-cu-100-gan-kcn-le-minh-xuan-shr-pr9287948.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '13d253d9c552f890d251d6dad6000725', 4),
(471, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-dat-cat-nha-250m2-125m2-so-hong-chinh-chu-dat-binh-chanh-gia-840tr-0909263537-pr9018821.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a0e21993006271cdf46d378b5b1e4045', 4),
(472, 'https://dothi.net/ban-dat-nen-du-an-duc-hoa-la/ban-2-lo-dat-lk-10x25m-726-tr125-m2-giua-dh-tan-tao-va-benh-vien-da-khoa-tan-tao-lh-0909263537-pr8826319.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '692757a9476c6259beadd750c69b910a', 4),
(473, 'https://dothi.net/ban-can-ho-chung-cu-duong-hoi-xa-phuong-giang-bien-1/mua-chung-cu-cao-cap-no08-giang-bien-tang-goi-noi-that-72-trieu-ck-95-vay-0-lai-suat-pr10501029.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '52671f08b576f399b0296fb41cb5ee4d', 4),
(474, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/gia-dinh-toi-can-ban-300m2-dat-gia-850-trieu-sh-rieng-mt-tinh-lo-10-lh-0938702747-pr9217775.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f8149311c2ba2d193668c70565a1ecdc', 4),
(475, 'https://dothi.net/ban-nha-mat-pho-duong-le-thi-rieng-phuong-ben-thanh/ban-gap-toa-nha-van-phong-mt-le-thi-rieng-72x19-1ham-9-lau-79-ty-pr10947760.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6f42078d4c83db9629673158786af955', 4),
(476, 'https://dothi.net/ban-nha-mat-pho-duong-truong-dinh-phuong-ben-thanh/ban-khach-san-toa-nha-van-phong-trung-tam-quan-1-3-gia-50-500-ty-pr10947727.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2c351b8ac99de325830cbb9691ace9a2', 4),
(477, 'https://dothi.net/ban-nha-mat-pho-duong-vo-van-tan-phuong-6-7/ban-dat-lon-xay-khach-san-van-phong-trung-tam-quan-1-3-gia-50-500-ty-pr10947716.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '27e6a61ebed555d161ac3d624f89b2bf', 4),
(478, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-mieng-dat-ngay-tl-10-gan-cho-gan-benh-viendt-200m2-shr800tr-pr10947672.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1d4f96ebc5467899c46fb91171d93a72', 4),
(479, 'https://dothi.net/ban-dat-duong-tinh-lo-10-xa-pham-van-hai/ban-gap-258m2-dat-shr-doi-dien-kcn-le-minh-xuan-iii-gia-900tr-shr-lh-chinh-chu-0909947176-pr10947301.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b26f2198ff05182eaef515ab69f94da5', 4),
(480, 'https://dothi.net/ban-nha-mat-pho-duong-hoang-sa-phuong-11-1/nha-mat-tien-1007-hoang-sa-phuong-11-quan-3-pr10943016.htm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5ddc545b0451d225818259c1c6182fc8', 4),
(481, 'https://alonhadat.com.vn/cho-thue-nguyen-can-hostel-dang-kinh-doanh-bui-vien-gia-28-trieu-2937228.html', 'cho thuê nguyên căn Hostel đang kinh doanh Bùi Viện giá 28 triệu', '28 triệu /&nbsp;tháng', '', '100 m', 'Cho thuê', 'Nhà trong hẻm', 'Đường Bùi Viện, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', '2018-04-17', 'cho thuê nguyên căn Hostel đang kinh doanh Bùi Viện giá 28 triệu', 'thien thanh', '0906.656.873', '', ' Đường Bùi Viện, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', 2, 'b99e172c3a26c66c74806f300bf74412', 5),
(482, 'https://alonhadat.com.vn/cho-thue-van-phong-35-55m2-building-mat-pho-hoang-quoc-viet-gia-re-2476943.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '99562d08befb101a414c808b753aa1a7', 5),
(483, 'https://alonhadat.com.vn/cho-thue-van-phong-20m2-35m2-50m2-full-do-vi-tri-dac-dia-gia-chi-tu-5-trieu-th-2906341.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '986d2e331db2e6e208b61cb44937e4a5', 5),
(484, 'https://alonhadat.com.vn/mat-bang-cho-thue-gia-re-o-quan-1-2938185.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e1be8c25d2b7164faf3d6a7ee3933b13', 5),
(485, 'https://alonhadat.com.vn/van-phong-cho-thue-gia-re-o-quan-phu-nhuan-2938176.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '70691c1bac222b2fbc8b0387d1c02a4f', 5),
(486, 'https://alonhadat.com.vn/can-cho-thue-phong-gia-re-3-trieu-thang-xinh-dep-o-quan-phu-nhuan-2938163.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '51400a6f147731158fffff3e1c68e325', 5),
(487, 'https://alonhadat.com.vn/mat-bang-cho-thue-gia-re-o-quan-phu-nhuan-2787421.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd8e2db28aa66cb1cdedfd6f043f8d1bc', 5),
(488, 'https://alonhadat.com.vn/van-phong-cho-thue-gia-re-o-quan-binh-thanh-2938140.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8d7ca06aea9dee4cd7dbe8590d290d40', 5),
(489, 'https://alonhadat.com.vn/van-phong-cho-thue-mat-tien-gia-re-3tr-o-q-1-2938133.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7840c202e0cdb3090a2da9f3f421ee5d', 5),
(490, 'https://alonhadat.com.vn/chinh-chu-cho-thue-chung-cu-mini-khep-kin-co-do-co-ban-1-phong-ngu-dt30-m2-pho-ham-nghi-2866417.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6d4806d74241f265d9e17213d2e6cc7b', 5),
(491, 'https://alonhadat.com.vn/cho-nguoi-nuoc-thue-can-ho-dich-vu-day-du-do-chi-viec-vao-o-luon-so-66-ngo-53-yen-lang-2915384.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'eced95ad458c2e31edc3869be3b2165c', 5),
(492, 'https://alonhadat.com.vn/phong-dep-ngay-big-c-nguyen-kiem-noi-that-thang-may-may-giat-cua-van-tay--2936126.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd4c4ea462695fe650d1f234f085d656a', 5),
(493, 'https://alonhadat.com.vn/phong-25m2-co-may-lanh-tu-lanh-giuong-nem-tu-ao-free-thang-may-wifi-may-giat--2936101.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a5cde2adfe28beb96edcf1e6ce8a0c7b', 5),
(494, 'https://alonhadat.com.vn/cho-thue-phong-tro-trong-can-ho-tay-thanh-tan-phu-an-ninh-tien-nghi-he-sinh-thai-xanh-2934806.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8b49b4c3041e1c793fa37023651dfa7c', 5),
(495, 'https://alonhadat.com.vn/phong-moi-100-cho-thue-ngay-dung-de-lam-van-phong-hoac-day-hoc-2730303.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2c94d84afa38d35353b6a90edfee1498', 5),
(496, 'https://alonhadat.com.vn/cho-thue-nhieu-mat-bang-dep-dien-tich-ngang-tren-8m-mat-tien-duong-truong-chinh-cong-hoa-2933556.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4c677bea3b88a0a5909c8e2946f313d6', 5),
(497, 'https://alonhadat.com.vn/cho-thue-phong-tro-moi-xay-co-may-lanh-2850581.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '8e520bd07819513d890f4d1946712da6', 5),
(498, 'https://alonhadat.com.vn/cho-thue-nha-nguyen-can-voi-khuon-vien-gan-1000m2-lien-ke-quan-1-2900265.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '26498c42a797ad0f35168cd7016e2c9c', 5),
(499, 'https://alonhadat.com.vn/cho-thue-nha-moi-dep-nguyen-can-3lau-5pn-q-tan-phu-2940070.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '468a1e9420f9cfc9802f5518a1765a6e', 5),
(500, 'https://alonhadat.com.vn/can-ho-cho-thue-mot-hai-phong-ngu-full-noi-that-p-thao-dien-quan-2-2939978.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6f259289a4647af28a9f91f5bc0bb888', 5),
(501, 'https://alonhadat.com.vn/chuyen-nhan-ky-gui-mua-ban-nhanh-cac-du-an-khu-long-truong-phu-huu-q9-giao-dich-nhanh-2908548.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'be2a626a381fefe5ed32808d825b3b8c', 5),
(502, 'https://alonhadat.com.vn/dau-tu-va-an-cu-voi-nha-pho-trung-tam-thu-duc-chi-tu-3-390-ty-can-1-tret-3-lau-so-hong--2892615.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '227847af6749ee6cbb68882faa49d3b4', 5),
(503, 'https://alonhadat.com.vn/5x25m2-dat-tho-cu-so-hong-rieng-xdtd-bao-sang-ten-gia-850tr-duong-20m-lh-0909-811-693-2915279.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e953a1de826244c929850c99bfa790ab', 5),
(504, 'https://alonhadat.com.vn/chi-duy-nhat-11-can-nha-pho-dep-long-lay-lai-thanh-xuan-22-2933532.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3c8d2bbb205e01c5c6b648fcf22d1a19', 5),
(505, 'https://alonhadat.com.vn/nhung-ngoi-nha-dep-va-dang-dung-dau-quan-12-2933739.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '22386e7be663f4f928f1108eeacda4dc', 5),
(506, 'https://alonhadat.com.vn/nha-nga-tu-1-tret-3-lau-duc-4-tam-4pn-5wc-1-phong-tho-1-phong-giat-gia-re-hon-thi-truong-2939851.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cff0391d43dc3c4ea4d44611c44fe6c3', 5),
(507, 'https://alonhadat.com.vn/ban-nha-1-tret-1-lau-2-lau-3-lau-moi-gan-nga-tu-ga-xay-don-vao-o-ngay-2939870.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '55898fa1c5340f768aca6c6ba983dc2a', 5),
(508, 'https://alonhadat.com.vn/chi-ban-nha-dep-1-tret-3-lau-tuong-rieng-duc-that-gia-chi-tu-3-ty-350-trieu-kem-nhieu-qua-2939878.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2d4207dca0d0c63356feb718530fc7c2', 5),
(509, 'https://alonhadat.com.vn/ban-nha-duong-thanh-xuan-22-cach-cho-minh-phat-moi-150m-2939903.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cfeb302a71f119a44a4fe85a35bfb709', 5),
(510, 'https://alonhadat.com.vn/ban-nha-moi-dep-hem-xe-hoi-thanh-xuan-22-q12-gia-chi-3-xxx-2939907.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e2b020270f08e641ab330c973d770691', 5),
(511, 'https://alonhadat.com.vn/ban-cho-ban-nhung-can-nha-dep-va-gia-re-tan-goc-xem-ngay-2939914.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '594c41e41cb0d26f59e6cb0d318daa6a', 5),
(512, 'https://alonhadat.com.vn/80m2-tho-an-phu-tay-hung-long-185tr-tien-kinh-doanh-da-co-so-rieng-lh-ngoc-0968467517-2936538.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c456899b70887567559c7f2890683d4e', 5),
(513, 'https://alonhadat.com.vn/vo-no-ban-gap-250m2-dat-co-24-phong-tro-kcn-hai-son-shr-gia-2-8ty-lh-0902981075-2892424.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '871ecceafe04b2401d91d13f24f7273b', 5),
(514, 'https://alonhadat.com.vn/toi-can-ban-gap-ngoi-nha-dt-214m2-shr-gia-7-5ty-dung-gia--2922417.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd0b9a354c481ddf18e4f38072359d00f', 5),
(515, 'https://alonhadat.com.vn/ban-gap-3-lo-dat-nen-ly-thuong-kiet-giao-voi-d-thien-phuoc-shr-q-tan-binh-0937-360-061-hue-2939984.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7f5c845bb6409bd702e79c582f570368', 5),
(516, 'https://alonhadat.com.vn/nha-can-ban-gap-dc-hem-224-bach-dang-f24-q-binh-thanh-gia-7-6-ty-9pn-8wc-2934022.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3b10d73390cc6d7d4eeddcceec7c3c79', 5),
(517, 'https://alonhadat.com.vn/ban-gap-nha-mo-hinh-chdv-co-ham-tret-lung-7-lau-thang-may-13-phong-gia-15-ty-tl-2937189.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c37f0ba3f9ee3c17b922c2413fef0b5d', 5),
(518, 'https://alonhadat.com.vn/ban-gap-nha-3-mat-tien-ngo-tat-to-quan-binh-thanh-dt-4-5-x-19m-tret-3-lau-gia-13-ty-2937446.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'e77cd9ce68faabb79541d4880fc56608', 5),
(519, 'https://alonhadat.com.vn/thien-nam-residence-khu-dan-cu-cao-cap-nhat-quan-12-2917788.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd98b83aa112ce84458c041eada8d2ad9', 5),
(520, 'https://alonhadat.com.vn/ban-can-nha-1-tret-3-5-lau-gia-3-05-ty-ngay-cho-tx-21-cach-nga-4ga-300m-shr-lh-0901955567-2936485.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c9cfdede1aa5cacc5bebc286a946cc60', 5),
(561, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4196219/cho-thue-nha-tro-tai-duong-ung-van-khiem/phong-rong-30m2-ban-cong-san-thuong-cuc-ki-thoang-mat-nam-ngay-nga-4-d2-35tr.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6e4bf7e266e1ff8cbb9102f868a00932', 6),
(562, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4190791/cho-thue-nha-tro-tai-duong-cong-hoa/can-ho-dich-vu-cao-cap-ngan-dai-han-tan-binh-gia-35trth.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0808869d2e38119db3a07b13ef0d5e98', 6),
(563, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220124/cho-thue-nha-tro-tai-duong-chu-van-an/phong-40m2-ngu-va-loi-di-rieng-so-243261-4-trth.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '51a1ea6b1172757953acab21124ded8e', 6),
(564, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4195540/cho-thue-nha-tro-tai-duong-chu-van-an/phong-dep-cua-soban-cong-wc-rieng-bao-ve-2424-gia-33-trth.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '09fcc004049ceadffc0f71d087eb9608', 6),
(565, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4219387/cho-thue-van-phong-tai-duong-le-hong-phong/mat-tien-ho-chi-minh.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'aafa36c90bc391a03c6b88c844c867a1', 6),
(566, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4214522/cho-thue-nha-tro-tai-duong-binh-loi/phong-dep-co-cua-so-ban-cong-khu-dan-cu-cao-cap-loibinh-thanh-gia-2-35-trieuth.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'd923b115509dadc7c30997df16ed34b9', 6),
(567, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220485/cho-thue-nha-mat-pho-tai-kdc-him-lam-tan-hung/gap-100m2-duong-lon-khu-q7-1-ham-tret-4-lau-gia-tot.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f6e11d0d8953b90add8b20fb2201753f', 6),
(568, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220359/cho-thue-van-phong-tai-duong-duong-cong-khi/biet-thu-lam-hay-mo-ca-phe-cao-cap.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6693239743bca9316df2b319efba4bdf', 6),
(569, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220199/cho-thue-can-ho-chung-cu-tai-phuong-phuc-loi/do-co-ban-ecohome-long-bien-s-775-m2-gia-6-tr-thang.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '18e22a066991da796c23da5a4ebaffd9', 6),
(570, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4219276/cho-thue-loai-bat-dong-san-khac-tai-duong-le-van-luong/can-600m2-dat-hai-mat-tien-ptan-phong-q7-tphcm.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0bedca712ce07d5e0758fc117d8eadba', 6),
(571, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220640/cho-thue-van-phong-tai-duong-d5/mat-tien-107-binh-thanh-2540m2-gia-tu-57trthang-moi.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fc358519a54d47c6229a93cc7354a479', 6),
(572, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220612/cho-thue-nha-tro-tai-phuong-4/phong-mat-tien.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4290acd661dbfe34b11a307f2b05cca5', 6),
(573, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220596/cho-thue-nha-rieng-tai-phuong-lang-thuong/van-phong-o-gia-3-trieuthangso-52-ngo-121-chua-lang-dien-tich-25m2-co-de-xe.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a5e8db223f7d7ee4fe4f3b40307ab9e8', 6),
(574, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220592/cho-thue-nha-mat-pho-tai-quan-3/nguyen-can-mat-tien-406-duong-thi-minh-khai-ppham-ngu-lao-quan-3-dt-6x20m1t7l.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '082d50da60e5faa12992e6cbf00fb9ee', 6),
(575, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220588/cho-thue-nha-rieng-tai-duong-bui-quang-la/nguyen-can-f12quan-go-vapbui.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5739e765946a91d0058e6d9ed4b7faaa', 6),
(576, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220586/cho-thue-nha-mat-pho-tai-duong-nguyen-thi-tan/mat-bang-can-goc-p2-quan-8-dt-56x8m-giatdt-26trieu.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cfd6ec0892ab2547e8c37238086ab88e', 6),
(577, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220583/cho-thue-nha-rieng-tai-duong-bui-quang-la/can-nguyen-f12quan-go-vapduong.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'c571dfcdf89a68c696b17523b481aa7c', 6),
(578, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220581/cho-thue-nha-rieng-tai-phuong-my-an/1tang-150m2-duong-an-thuong-3-pn-full-noi-that-co-gara-o-to-30-trthang.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6e929a76bdadce46ffa80f05ea46187a', 6),
(579, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220582/cho-thue-nha-rieng-tai-pho-doi-can/johnny-manh-gap-4-tang-moi-xay-ngo-279-o-to-do-tan-cua-0914739966.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'a5f4128d34139b5a6d1eaad97a231e37', 6),
(580, 'http://123nhadat.vnhttp://123nhadat.vn/raovat-t4220580/cho-thue-nha-rieng-tai-duong-phan-huy-ich/can-nguyen-p12-go-vap.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3c672c3466a21a9a92461022c42b4275', 6);

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
(12, 12, 'Mobile\\s*<\\/div>\\s*<div class=\"right\">\\s*(.*?)\\s*<\\/div>|Điện Thoại\\s*<\\/div>\\s*<div class=\"right\">\\s*(.*?)\\s*<\\/div>', 1),
(13, 13, 'Test', 1),
(14, 1, '<div class=\'vip-title\'>[\\w\\W]*? href=\'(.*?)\'', 2),
(15, 2, '<div class=\'title\'><h1>(.*?)<\\/h1>', 2),
(16, 3, 'Giá: <\\/span> <span class=\'value\'>(.*?)<\\/span>', 2),
(17, 5, 'Diện tích: <\\/span> <span class=\'value\'>(.*?)<\\/span>', 2),
(18, 4, '<div class=\'detail text-content\'>[\\s\\S]*?<\\/div>', 2),
(19, 6, 'Loại tin<\\/td><td>(.*?)<\\/td>', 2),
(20, 7, 'Loại BDS<\\/td><td>(.*?)<\\/td>', 2),
(21, 9, '<span class=\'date\'>(.*?)<\\/span>', 2),
(22, 10, '<div class=\'title\'><h1>(.*?)<\\/h1>', 2),
(23, 11, 'Liên hệ:<\\/span><span class=\'value\'>(.*?)<\\/span>', 2),
(24, 12, 'Điện Thoại:<\\/span> <span class=\'value\'>(.*?)<\\/span>', 2),
(37, 1, '<a id=\"hplTitle\" href=\"(.*?)\">', 3),
(38, 2, '<div class=\"detail_top\">\\s*<h1 class=\"h1\">\\s*(.*?)\\s*<\\/h1>\r\n', 3),
(39, 3, 'Giá:<\\/span>\\s*(.*?)\\s*<span', 3),
(40, 4, '<div class=\"text\">([\\w\\W]*?)<\\/div>', 3),
(41, 5, 'Diện tích:<\\/span>\\s*(.*?)\\s*<\\/div>', 3),
(42, 8, 'Vị trí:<\\/b>\\s<span>(.*?)<\\/span>', 3),
(43, 9, 'Ngày đăng tin<\\/td>\\s*<td>\\s*(.*?)<\\/td>', 3),
(44, 10, '<a id=\"hplTitle\" href=\"(.*?)\">', 3),
(45, 11, 'Tên liên lạc<\\/td>\\s*<td>\\s*(.*?)\\s*<\\/td>', 3),
(46, 12, 'Điện thoại<\\/td>\\s*<td>\\s*(.*?)<\\/td>', 3),
(47, 1, '<a class=\"vipdb\"[\\w\\W]*?href=\"(.*?)\">', 4),
(48, 2, '<title>\\s*(.*?)\\s*<\\/title>', 4),
(49, 3, 'Giá: <span class=\"spanprice\">\\s*(.*?)<\\/span>', 4),
(50, 4, '<div class=\"pd-desc-content\">([\\w\\W]*?)<\\/div>', 4),
(51, 5, 'Diện tích:<span>\\s*(.*?)<\\/span>', 4),
(52, 7, 'Loại tin rao<\\/b><\\/td>\\s*<td>\\s*(.*?)<\\/td>', 4),
(53, 8, 'Khu vực:<\\/span> <a.*>(.*?)<\\/a>\\s*(.*?)\\s*<\\/div>', 4),
(54, 9, 'Ngày đăng tin<\\/b><\\/td>\\s*<td>\\s*(.*?)<\\/td>', 4),
(55, 10, '<title>\\s*(.*?)\\s*<\\/title>', 4),
(56, 11, '<b>Tên liên lạc<\\/b><\\/td>\\s*<td>\\s*(.*?)<\\/td>', 4),
(57, 12, '<b>Di động<\\/b><\\/td>\\s*<td>\\s*(.*?)<\\/td>', 4),
(59, 1, 'class=\'ct_title\'><a href=\'(.*?)\' class=\'vip\'>', 5),
(60, 2, '<div class=\'title\'><h1>\\s*(.*?)\\s*<\\/h1>', 5),
(61, 3, '<span class=\'price\'>[\\w\\W]*?<span class=\'value\'>\\s*(.*?)\\s*<\\/span>', 5),
(62, 4, '<span class=\'square\'>[\\w\\W]*?<span class=\'value\'>\\s*(.*?)s*<sup>', 5),
(63, 5, '<div class=\'detail \'>[\\w\\W]*?<span .*?>\\s*(.*?)\\s*<\\/span>', 5),
(64, 6, 'Loại tin<\\/td><td>(.*?)<\\/td>', 5),
(65, 7, 'Loại BDS<\\/td><td>(.*?)<\\/td>', 5),
(66, 8, '<div class=\'address\'>[\\w\\W]*?<span class=\'value\'>\\s*(.*?)\\s*<\\/span>', 5),
(67, 9, '<span class=\'date\'>(.*?)<\\/span>', 5),
(68, 10, '<div class=\'title\'><h1>\\s*(.*?)\\s*<\\/h1>', 5),
(69, 11, '<div class=\'name\'>(.*?)<\\/div>', 5),
(70, 12, '<div class=\'fone\'><a.*>(.*?)<\\/a><\\/div>', 5),
(71, 14, 'Địa chỉ tài sản:<\\/span><span class=\'value\'>(.*?)<\\/span>', 5),
(72, 1, '<div class=\"img[\\w\\W]*?<a href=\"\\s*(.*?)\\s*\">', 6),
(73, 2, '<h1 class=\"tieude_nhadat\">(.*?)<\\/h1>', 6),
(74, 3, 'Giá:<\\/label><span><b class=\"camcam\">(.*?)<\\/b>', 6),
(75, 4, '<div class=\'detail text-content\'>([\\w\\W]*?)<\\/div>', 6),
(76, 5, 'Diện tích:[\\w\\W]*?\'value\'>(.*?)<\\/span', 6),
(77, 8, 'Khu vực:<\\/label><span><a.*>(.*?)<\\/a>(.*?)<\\/span><\\/li>', 6),
(78, 9, 'Ngày đăng tin:\\s*(.*?)\\s*<\\/li>', 6),
(79, 10, '<h1 class=\"tieude_nhadat\">(.*?)<\\/h1>', 6),
(80, 11, '<li><b>(.*?)<\\/b><\\/li>', 6),
(81, 12, 'Điện thoại:<b class=\"camcam\">(.*?)<\\/b>', 6),
(82, 13, 'Email:(.*?)<\\/li>', 6),
(83, 14, 'Địa chỉ:\\s*(.*?)\\s*<\\/li>', 6),
(84, 1, '<h2 class=\"P_Title\">.*<a href=\'(.*?)\' title=\'.*\'>', 7),
(85, 2, '<div class=\"P_Title1\">(.*?)<\\/div>', 7),
(86, 3, '<span class=\"button-price\">(.*?)<\\/span>', 7),
(87, 4, '<span class=\'product-area\'>(.*?)<\\/span>', 7),
(88, 5, '<div class=\"PD_Gioithieu.*>(.*?)<div class=\"product-tag\">', 7),
(89, 7, 'Loại BĐS:[\\w\\W]*?<span>[\\w\\W]*?<span>\\s*(.*?)\\s*<\\/span>', 7),
(90, 8, '<label>Địa chỉ:<\\/label><span>(.*?)<\\/span>', 7),
(91, 9, '<label>Ngày đăng tin:<\\/label><span>(.*?)<\\/span>', 7),
(92, 10, '<div class=\"P_Title1\">(.*?)<\\/div>', 7),
(93, 11, '<div class=\"name\"><a class=\"\" href.* title=\"\">(.*?)<\\/a><\\/div>', 7),
(94, 12, '<i class=\"fa-lg fa-fw.*><\\/i><span>(.*?)<\\/span>', 7),
(95, 1, '<h3><a itemprop=\"url\" href=\"\\s*(.*?)\"\\s*>', 8),
(96, 2, '<h1 class=\"entry-title\">\\s*(.*?)\\s*<\\/h1>', 8),
(97, 3, '<li class=\"price\">s*<span>(.*?)</span>s*<em>(.*?)</em>', 8),
(98, 4, '<li class=\"dien-tich\">s*<span>(.*?)</span>s*<em>(.*?)<sup>(.*?)</sup>', 8),
(99, 5, '<div class=\"content\".*>s*[Ss]*?</div>', 8),
(100, 8, '<span itemprop=\"streetAddress\">(.*?)</span>.*<span itemprop=\"addressLocality\">(.*?)</span>.*<span itemprop=\"addressRegion\">(.*?)</span>', 8),
(101, 9, '<li class=\"date-open\"><b>Ngày đăng tin:s*(.*?)</b>', 8),
(102, 10, '<h1 class=\"entry-title\">s*(.*?)s*</h1>', 8),
(103, 11, 'Liên hệ:</span>(.*?)s*</a>', 8),
(104, 12, '<span class=\"number\">s*<a.*>s*(.*?)s*</a>', 8);

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
(1, 'batdongsan', '{\r\n	\"site_name\" : \"batdongsan\",\r\n	\"site_url\" : \"https://batdongsan.com.vn\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://batdongsan.com.vn/nha-dat-cho-thue\"\r\n		}\r\n	],\r\n	\"type_page_url\": \"/p{number}\"\r\n}'),
(2, 'timmuanhadat', '{\"site_name\":\"timmuanhadat\",\r\n\"site_url\":\"http://timmuanhadat.com.vn\",\r\n\"site_url_categories\":[{\"category_name\":\"Nhà đất bán\",\r\n\"category_url\":\"http://timmuanhadat.com.vn/nha-dat-bat-dong-san/can-ban\"}\r\n,{\"category_name\":\"Nhà đất cho thuê\",\r\n\"category_url\":\"http://timmuanhadat.com.vn/nha-dat-bat-dong-san/cho-thue\"},\r\n{\"category_name\":\"Cần mua\",\r\n\"category_url\":\"http://timmuanhadat.com.vn/nha-dat-bat-dong-san/can-mua\"},\r\n{\"category_name\":\"Cần thuê\",\r\n\"category_url\":\"http://timmuanhadat.com.vn/nha-dat-bat-dong-san/can-thue\"}],\r\n\"type_page_url\":\"/trang--{number}.html\"}'),
(3, 'phonhadat', '{\r\n	\"site_name\":\"phonhadat\",\r\n	\"site_url\":\"http://phonhadat.net\",\r\n	\"site_url_categories\":[\r\n		{\r\n			\"category_name\":\"Nhà đất bán\",\r\n			\"category_url\":\"http://phonhadat.net/nha-dat-ban\"\r\n		}\r\n		,{\r\n			\"category_name\":\"Nhà đất cho thuê\",\r\n			\"category_url\":\"http://phonhadat.net/nha-dat-cho-thue\"\r\n		}\r\n	],\r\n	\"type_page_url\": \"/p{number}.htm\"\r\n}'),
(4, 'dothi', '{\r\n	\"site_name\" : \"dothi\",\r\n	\"site_url\" : \"https://dothi.net\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://dothi.net/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://dothi.net/nha-dat-cho-thue\"\r\n		}\r\n	],\r\n	\"type_page_url\": \"/p{number}.htm\"\r\n}'),
(5, 'alonhadat', '{\r\n	\"site_name\" : \"alonhadat\",\r\n	\"site_url\" : \"http://alonhadat.com.vn\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://alonhadat.com.vn/nha-dat/can-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://alonhadat.com.vn/nha-dat/cho-thue\"\r\n		}\r\n	],\r\n	\"type_page_url\":\"/trang--{number}.html\"\r\n}'),
(6, '123nhadat', '{\r\n	\"site_name\" : \"123nhadat\",\r\n	\"site_url\" : \"https://123nhadat.vn\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://123nhadat.vn/raovat-c1/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"http://123nhadat.vn/raovat-c2/nha-dat-cho-thue\"\r\n		}\r\n	],\r\n	\"type_page_url\":\"/number/-1/0/0\"\r\n}\r\n'),
(7, 'batdongsan', '{\r\n	\"site_name\" : \"batdongsan\",\r\n	\"site_url\" : \"http://batdongsan.vn/\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"http://batdongsan.vn/giao-dich/ban-nha-dat\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"http://batdongsan.vn/giao-dich/cho-thue-nha-dat\"\r\n		}\r\n	],\r\n	\"type_page_url\":\"/pageindex-{number}.html\"\r\n}\r\n'),
(8, 'homedy', '{\r\n	\"site_name\" : \"homedy\",\r\n	\"site_url\" : \"https://homedy.com/\",\r\n	\"site_url_categories\" : [\r\n		{\r\n			\"category_name\" : \"Nhà đất bán\",\r\n			\"category_url\" : \"https://homedy.com/nha-dat-ban\"\r\n		},\r\n		{\r\n			\"category_name\" : \"Nhà đất cho thuê\",\r\n			\"category_url\" : \"https://homedy.com/nha-dat-cho-thue\"\r\n		}\r\n	],\r\n	\"type_page_url\":\"?p={number}\"\r\n}\r\n');

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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'RwOPzbuPAODuF1sIlPYQNduEhARZufl3', 1);

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
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`),
  ADD UNIQUE KEY `data_url_md5` (`data_url_md5`);

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
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `pattern_categories`
--
ALTER TABLE `pattern_categories`
  ADD PRIMARY KEY (`patt_category_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

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
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patterns`
--
ALTER TABLE `patterns`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `pattern_categories`
--
ALTER TABLE `pattern_categories`
  MODIFY `patt_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `real_estate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
