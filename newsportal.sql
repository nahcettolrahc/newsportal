-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 04:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'c1604c8e156e6108844df20004b9e4be', 'abc@gmail.com', 1, '2022-11-04 13:30:00', '2022-11-05 15:03:48'),
(3, 'ctv', 'f925916e2754e5e03f75dd58a5733251', 'ctv@gmail.com', 0, '2022-11-04 13:30:50', '2022-11-05 14:56:44'),
(4, 'ctv2', 'f925916e2754e5e03f75dd58a5733251', 'ctv2@gmail.com', 0, '2022-11-04 13:31:30', '2022-11-05 14:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Thể Thao', 'Liên Quan Tới Thể Thao', '2022-11-04 05:30:27', '2022-11-05 07:54:03', 1),
(5, 'Giải Trí', 'Giải Trí', '2022-11-04 08:34:00', '2022-11-05 07:54:29', 1),
(6, 'Chính Trị', 'Nhà Nước', '2022-11-04 11:40:06', '2022-11-05 07:54:19', 1),
(7, 'Kinh Tế', 'Tiền', '2022-11-04 08:33:00', '2022-11-05 07:54:46', 1),
(8, 'COVID-19', 'Bệnh COVID-19', '2022-11-04 08:33:28', '2022-11-05 07:54:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, 14, 'toan', 'toan@gmail.com', 'yê làm đại ca', '2022-11-05 15:51:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'Về Chúng Tôi', 'Báo Lá Cải Của Nhóm 5 ok la chưa dlaw<br>', '2022-11-04 08:30:31', '2022-11-05 15:52:49'),
(2, 'contactus', 'Liên Hệ', '<p>Để Đăng Tin Liên Hệ Mr. Nam - 012345678</p><p>Để Làm Cộng Tác Viên Liên Hệ Miss Hiền - 012345678</p><p>Để Quảng Cáo Liên Hệ Mr.Thịnh -0123345678<br><br></p><p><br></p>', '2022-11-04 08:59:41', '2022-11-05 15:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Triệt phá nhiều đường dây “tín dụng đen”, hưởng lời tiền tỷ', 7, 9, '<p>Ngày 2/11, Phòng Cảnh sát hình sự, Công an tỉnh Thái Nguyên cho biết \r\nđã triệt phá nhóm đối tượng hoạt động “tín dụng đen” trên địa bàn tỉnh \r\nThái Nguyên với tổng số tiền các đối tượng đã cho vay trên 36 tỷ đồng.</p><p>Nhóm\r\n đối tượng này gồm: Nguyễn Ngọc Tân (SN 1991, ở phường Trưng Vương, TP \r\nThái Nguyên); Kiều Tuấn Anh (SN 1995, ở xã Hóa Thượng, huyện Đồng Hỷ); \r\nNguyễn Tiến Quyền (SN 1990, ở xã Huống Thượng, TP Thái Nguyên) và Nguyễn\r\n Đức Tâm (SN 1996, ở phường Gia Sàng, TP Thái Nguyên).</p><p>Tại Cơ quan\r\n điều tra, các đối tượng khai nhận, từ năm 2018, Nguyễn Ngọc Tân mở cửa \r\nhàng mua bán điện thoại nhưng mục đích chính là hoạt động cầm đồ, cho \r\nvay theo hình thức vay tín chấp trả lãi ngày và vay “bốc bát họ”. Lãi \r\nsuất cho vay dao động từ 1.000 đồng đến 6.000 đồng/01 triệu/01 ngày. Đến\r\n năm 2019, Tân thuê Kiều Tuấn Anh, Nguyễn Tiến Quyền, Nguyễn Đức Tâm để \r\nhoạt động cho vay, cầm đồ và phân công nhiệm vụ cụ thể cho từng cá nhân \r\nnhư quản lý tài khoản cầm đồ, giục nợ, đòi nợ…</p><p>Tính từ thời điểm \r\nTân cùng các đối tượng hoạt động cho vay đến nay, Tân đã thực hiện 4.677\r\n hợp đồng với hơn 2.700 khách hàng, tổng số tiền đã cho vay khoảng 36,3 \r\ntỷ đồng, số tiền lãi dự kiến thu về là trên 9,4 tỷ đồng.</p><p><br></p><p>Tiến hành khám xét khẩn cấp 05 địa điểm, Cơ quan Công an phát hiện, \r\ntạm giữ nhiều đồ vật, tài liệu, dữ liệu điện tử liên quan đến hoạt động \r\ncầm đồ, cho vay của các đối tượng gồm: 01 bộ máy tính để bàn, 01 máy \r\ntính bảng, 04 điện thoại di động, 2.183 giấy vay tiền và nhiều loại giấy\r\n tờ của những người vay như Giấy chứng nhận quyền sử dụng đất, Căn&nbsp;cước \r\ncông dân, Giấy phép lái xe, Hợp đồng bảo hiểm xã hội, Hóa đơn thành toán\r\n điện, nước…</p><p><br></p><p>Cơ quan Cảnh sát điều tra Công an tỉnh Thái Nguyên đã\r\n tiến hành khởi tố vụ án, khởi tố bị can và bắt tạm giam 3 đối tượng về \r\ntội cho vay lãi nặng trong giao dịch dân sự theo Khoản 2, Điều 201 Bộ \r\nLuật hình sự; hiện đang tiếp tục điều tra, mở rộng vụ án.</p><p><br></p><p>Trước \r\nđó, ngày 21/10/2022, Phòng Cảnh sát hình sự Công an TP Hà Nội đã ra lệnh\r\n bắt người bị giữ trong trường hợp khẩn cấp đối với Đỗ Thị Mai Phương \r\n(tức “Phương nở”), Đỗ Sỹ Hiệp, Tạ Đình Mạnh, Lê Văn Phú, Nguyễn Minh \r\nHằng về hành vi Đánh bạc; Nguyễn Ngọc Lan về hành vi tổ chức đánh bạc.</p><p><br></p><div></div><p><br></p><p>Theo\r\n đó, từ tháng 6/2022, qua công tác nắm tình hình địa bàn và quản lý đối \r\ntượng, Phòng Cảnh sát hình sự phát hiện trên địa bàn quận Hà Đông, TP Hà\r\n Nội, xuất hiện ổ nhóm tội phạm do đối tượng “Phương nở” cầm đầu, có \r\nhành vi cho vay lãi nặng trong giao dịch dân sự, tổ chức đánh bạc và \r\nđánh bạc dưới hình thức chơi số lô, đề với số lượng tiền rất lớn. <br></p><p><br></p>', '2022-11-04 08:01:31', '2022-11-05 15:53:50', 1, 'Triệt-phá-nhiều-đường-dây-“tín-dụng-đen”,-hưởng-lời-tiền-tỷ', '3ea5e7a89fe766781f992b7af31218d8.jpg', 24, 'admin', 'admin'),
(10, 'Nghiêm túc rút kinh nghiệm trong điều hành giá và đảm bảo nguồn cung xăng dầu', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\"></span>Báo cáo một số vấn đề trước khi nhận \r\nchất vấn trực tiếp, về công tác điều hành giá và bảo đảm nguồn cung xăng\r\n dầu, Thủ tướng cho biết trước tình hình giá xăng dầu thế giới tăng \r\nmạnh, Chính phủ đã chủ động kịp thời giảm thuế nhập khẩu xăng dầu theo \r\nthẩm quyền và đề xuất Ủy ban thường vụ Quốc hội xem xét, điều chỉnh giảm\r\n thuế bảo vệ môi trường 2 lần đối với xăng dầu để giảm giá, hỗ trợ cho \r\nngười dân và&nbsp;doanh nghiệp.</h1><div class=\"detail__content\"><p>Đồng thời, Chính phủ cũng đã chủ động \r\nchỉ đạo quyết liệt sản xuất của 2 nhà máy lọc hóa dầu trong nước đang \r\nvận hành ở công suất tối đa (đáp ứng khoảng 70 - 80% nhu cầu).</p><p>Tuy\r\n nhiên, thời gian gần đây, do giá và nguồn cung xăng dầu tiếp tục biến \r\nđộng nhanh, chu kỳ ngắn, khó dự báo, chi phí đầu vào tăng; trong khi đó \r\ncác cơ quan chức năng chậm điều chỉnh định mức chi phí, sử dụng Quỹ Bình\r\n ổn giá chưa thật sự hiệu quả, dẫn đến hoạt động kinh doanh khó khăn, \r\ngây thiếu nguồn cung tại một số địa phương.</p><p>Mặt khác, sự phối hợp \r\ngiữa các cơ quan quản lý còn thiếu chặt chẽ, chưa kịp thời ứng phó hiệu \r\nquả với diễn biến nhanh, phức tạp của thị trường quốc tế, trong nước.</p><p>\"Các\r\n quy định thiết lập trong tình hình bình thường, nhưng đến khi tình hình\r\n không bình thường thì chúng ta phản ứng chính sách chưa kịp thời. Tình \r\nhình không bình thường đáng lẽ phải có biện pháp khác thường, nhưng tình\r\n hình không bình thường ta vẫn dùng biện pháp bình thường. Cái này Chính\r\n phủ sẽ nghiêm túc rút kinh nghiệm\", Thủ tướng nhấn mạnh.</p><div></div><p>Thủ\r\n tướng cho biết, Chính phủ đang chỉ đạo các cơ quan liên quan phản ứng \r\nchính sách kịp thời, phối hợp hiệu quả để khắc phục bằng được hạn chế, \r\nyếu kém nêu trên, bảo đảm cung ứng đủ xăng dầu cho sản xuất, kinh \r\ndoanh,&nbsp;tiêu dùng&nbsp;trong mọi tình huống.</p><p>Thời gian tới, Chính phủ sẽ\r\n khẩn trương rà soát, sửa đổi các văn bản quy phạm pháp luật liên quan \r\nnhư&nbsp;Nghị định số 95/2021/NĐ-CP và 83/2014/NĐ-CP... Trường hợp cần thiết \r\nsẽ trình Quốc hội, Ủy ban Thường vụ Quốc hội cho phép điều chỉnh các \r\nloại thuế liên quan.</p><p>Ngoài ra, Chính phủ cũng sẽ bảo đảm tính chủ \r\nđộng, linh hoạt, hiệu quả trong quản lý hoạt động kinh doanh xăng dầu. \r\nNâng cao hiệu quả quản lý nhà nước; tăng cường phòng chống buôn lậu, đầu\r\n cơ xăng dầu và công tác giám sát, kiểm tra, xác định trách nhiệm của \r\ncác tổ chức, cá nhân liên quan để xử lý nghiêm vi phạm theo quy định của\r\n pháp luật. Nghiên cứu, thực hiện nâng tổng mức dự trữ quốc gia và tăng \r\ncường năng lực sản xuất trong nước.</p> </div><h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\"><br></span></h1>', '2022-11-04 08:30:31', '2022-11-05 15:55:38', 1, 'Nghiêm-túc-rút-kinh-nghiệm-trong-điều-hành-giá-và-đảm-bảo-nguồn-cung-xăng-dầu', '049d9465714e4b69cc23871ef0af0647jpeg', 2, 'admin', 'admin'),
(11, 'Năng Lượng Sạch Đang Phát Triển Tốt', 6, 8, 'Bỏ Bùm r<br>', '2022-11-04 08:30:31', '2022-11-05 15:56:15', 1, 'Năng-Lượng-Sạch-Đang-Phát-Triển-Tốt', '27095ab35ac9b89abb8f32ad3adef56a.jpg', 34, 'admin', 'admin'),
(12, 'Mèo Đang LÀm Bá Chủ', 5, 3, 'Mèo e<br>', '2022-11-04 08:30:31', '2022-11-05 15:56:03', 1, 'Mèo-Đang-LÀm-Bá-Chủ', 'f3ccdd27d2000e3f9255a7e3e2c48800.jpg', 24, 'admin', 'admin'),
(13, 'Tiêm 3 Mũi Đạt 99%', 8, 10, '3', '2022-11-04 08:30:31', '2022-11-05 15:55:53', 1, 'Tiêm-3-Mũi-Đạt-99%', '60aaece114d182e2f1fa2ef8bda7198a.jpg', 15, 'admin', 'admin'),
(14, 'VN VÔ ĐỊCH WC 2022', 3, 5, '<p>VN vô địch thắng r yeeeee<br></p>', '2022-11-05 15:34:21', '2022-11-27 15:50:36', 1, 'VN-VÔ-ĐỊCH-WC-2022', '46eb8dfba3675d512e22b65cfb0d8a0c.jpg', 22, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Hollywood ', 'Hollywood', '2022-11-04 18:30:00', '2022-11-05 15:29:05', 1),
(4, 3, 'Bóng Rổ', 'Bóng Rổ\r\n', '2022-11-04 08:30:31', '2022-11-05 15:52:20', 1),
(5, 3, 'Bóng Đá', 'Football', '2022-11-04 05:30:31', '2022-11-05 15:54:43', 1),
(6, 5, 'Phim Truyền Hình', 'Tv', '2022-11-04 08:30:31', '2022-11-05 15:54:51', 1),
(7, 6, 'Nhà Nước', 'Việt Nam Vô Địch', '2022-11-04 08:30:31', '2022-11-05 15:54:59', 1),
(8, 6, 'Quốc Tế', 'Quố c Tế', '2022-11-04 08:30:31', '2022-11-05 15:55:19', 1),
(9, 7, 'Việt Nam', 'VN ', '2022-11-04 08:30:31', '2022-11-05 15:55:12', 1),
(10, 8, 'Vaccination', 'Vaccination', '2022-11-04 08:30:31', '2022-11-04 08:30:31', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
