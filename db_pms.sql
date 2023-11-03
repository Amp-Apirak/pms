-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 02:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(53, 'Module'),
(54, 'Textfield *'),
(55, 'Table List'),
(56, 'Bar/Border');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`) VALUES
(1, 'คุณอาทิตย์ (พี่เหน่ง)'),
(2, 'คุณภัทราอร (ซีน)'),
(3, 'คุณอภิรักษ์ (แอมป์)'),
(4, 'พี่ขวัญ');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `items_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`items_id`, `items_name`) VALUES
(1, 'Application Respone'),
(2, 'Edit/Update\r\n'),
(3, 'New requirement\r\n'),
(4, 'Delected\r\n'),
(5, 'Error Application\r\n'),
(9, 'Add');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`) VALUES
(7, 'Analyzer'),
(8, 'Computer'),
(9, 'Platform');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `log_id` int(11) NOT NULL,
  `v_status` varchar(1000) NOT NULL,
  `add_task` varchar(1000) NOT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_edit` varchar(1000) NOT NULL,
  `work_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`log_id`, `v_status`, `add_task`, `date_edit`, `staff_edit`, `work_id`) VALUES
(1, 'On Process', '1', '2023-11-03 11:17:20', 'พี่ขวัญ', 61),
(2, 'Done', '1', '2023-11-03 11:17:28', 'พี่ขวัญ', 61),
(4, '', '1', '2023-11-03 10:57:19', 'พี่ขวัญ', 59),
(5, '', '1', '2023-11-03 10:58:43', 'พี่ขวัญ', 59),
(6, '', '', '2023-11-03 11:01:32', 'พี่ขวัญ', 59),
(7, '', 'asdasdasdasdasdasdasdas', '2023-11-03 11:02:14', 'คุณอาทิตย์ (พี่เหน่ง)', 59),
(8, 'On Process', 'efdsgsegdsffgdsgdfsggdsfgdsfgsdfgds', '2023-11-03 11:24:35', 'คุณอภิรักษ์ (แอมป์)', 61);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `work_id` int(11) NOT NULL,
  `project_name` varchar(1000) NOT NULL,
  `work_type` varchar(500) NOT NULL,
  `service` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `items` varchar(500) NOT NULL,
  `status` varchar(255) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  `requester` varchar(255) NOT NULL,
  `date_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_crt` varchar(255) NOT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_edit` varchar(255) NOT NULL,
  `file_upfile` varchar(255) NOT NULL COMMENT 'เก็บรูปภาพ',
  `file_test` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `project_name`, `work_type`, `service`, `category`, `items`, `status`, `subject`, `detail`, `requester`, `date_crt`, `staff_crt`, `date_edit`, `staff_edit`, `file_upfile`, `file_test`) VALUES
(57, 'Up Level (Phase 1)', 'Incident', 'Analyzer', 'Module', 'Add', 'On Process', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information เมือกด Add Analyzer ', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information เมือกด Add Analyzer ไม่ได้ Add Module*\r\nเมือกด Add Analyzer ไม่ได้ Add Module*  ให้เปลี่ยนเป็น  \" Please fill in \"Module information. ! \"\r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-01 16:32:40', 'คุณอภิรักษ์ (แอมป์)', '2023-11-01 16:32:40', 'พี่ขวัญ', 'Error_Add_module.jpg', ''),
(58, 'Up Level (Phase 1)', 'Incident', 'Analyzer', 'Textfield *', 'Edit/Update', 'On Process', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information (Textfield one more)', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information\r\nเมือกด Add Analyzer ไม่ได้กรอกฟิลด์บังคับ ** ดังนี้ \r\n\r\nหากไมไ่ด้กรอกข้อมูลมากกว่า 1 ให้แสดง =  Error : Please fill in complete information\r\n \r\nกรณีลืมกรอกแค่ 1 ฟิวด์ \r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ\r\nGeneXpert S/N* =  Error : Please fill in \"GeneXpert S/N information. !\"\r\nModel * =  Error : Please fill in \"Model information. !\"\r\nModule Code * =  Error : Please fill in \"Module Code information. !\"\r\nColor Code *  =  Error : Please fill in \"Color Code information. !\"\r\n', 'คุณอภิรักษ์ (แอมป์)', '2023-11-01 16:32:24', 'คุณอภิรักษ์ (แอมป์)', '2023-11-01 16:32:24', 'พี่ขวัญ', 'Error_Add_Text.jpg', ''),
(59, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update', 'Done', 'ขอบริการ แก้ไขสีพื้นหลัง สถานะ ', 'ขอบริการ แก้ไขสีพื้นหลัง สถานะ \"Do not use\" เป็นสีแดง\r\n\r\nแก้ไขเรียบร้อย', 'คุณภัทราอร (ซีน)', '2023-11-03 11:02:14', 'คุณอภิรักษ์ (แอมป์)', '2023-11-03 11:02:14', 'คุณอาทิตย์ (พี่เหน่ง)', 'Change_color.jpg', ''),
(60, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Table List', 'Edit/Update', 'Done', 'ขอบริการ เพิ่มแท็กสีสถานะ ', 'ขอบริการ เพิ่มแท็กสีสถานะ \"Colum : Status Module\" หากมี Module เสีย ให้แสดงแทบสีติดสถานะ\r\nต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน ต้องมีมา flag มาบอกว่ามันเสีย เพื่อแปลี่ยนสี\r\n\r\nแก้ไขแล้ว', 'คุณภัทราอร (ซีน)', '2023-11-03 10:35:15', 'คุณอภิรักษ์ (แอมป์)', '2023-11-03 10:35:15', 'พี่ขวัญ', 'Status_module.jpg', 'color.png'),
(61, 'PMS (Phase 1)', 'Incident', 'Computer', 'Textfield *', 'Edit/Update', 'On Process', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information (Textfield one more)', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information\r\nเมือกด Add Computer Menu ไม่ได้กรอกฟิลด์บังคับ ** ดังนี้\r\n\r\nหากไมไ่ด้กรอกข้อมูลมากกว่า 1 ให้แสดง = Error : Please fill in complete information.\r\n\r\nกรณีลืมกรอกแค่ 1 ฟิวด์\r\nComputer Code/ Analyzer Code  = Error : Please fill in \"GeneXpert Serial Number information. \"\r\nComputer S/N * = Error : Please fill in \"Computer Serial Number information. \"\r\nOrganization * = Error : Please select in \"Organization information. \"\r\nLaboratory * = Error : Please select in \"Laboratory information. \"\r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ', 'คุณภัทราอร (ซีน)', '2023-11-03 11:19:30', 'คุณภัทราอร (ซีน)', '2023-11-03 11:19:30', 'คุณอภิรักษ์ (แอมป์)', 'Com_tectfeild.jpg', ''),
(62, 'PMS (Phase 1)', 'Service', 'Platform', 'Table List', 'Add', 'On Process', 'ขอบริการ นับจำนวนแสดงรายการทั้งหมด (Count record)', 'ขอบริการ เพิ่มเติมตารางแสดงผลทุกหน้า ให้แสดงตัวเลข รายการที่แสดงทั้งหมด \r\n(Total Count Reord Table)\r\n\r\ncount นับต่อหน้า หรือ ที่มีทั้งหมดครับ \r\nต่อหนัา default 10 item per page  \r\n\r\nแสดงตามตัวอย่างในภาพ test นะครับ', 'คุณภัทราอร (ซีน)', '2023-11-03 10:12:11', 'คุณภัทราอร (ซีน)', '2023-11-03 10:12:11', 'พี่ขวัญ', 'com_count.jpg', 'table Count.png'),
(63, 'PMS (Phase 1)', 'Service', 'Platform', 'Table List', 'Add', 'On Process', 'ขอบริการ เพิ่มเติมสามารถคลิกจัดเรียงหัวตาราง (A-Z, Z-A) ได้', 'ขอบริการ เพิ่มเติมสามารถคลิกจัดเรียงหัวตาราง (A-Z, Z-A) ได้ \r\n\r\nระบุให้ด้วยครับ field ไหนต้องการ sort\r\n\r\nเปิดทุก field ยกแว้น action', 'คุณภัทราอร (ซีน)', '2023-11-03 10:24:51', '', '2023-11-03 10:24:51', 'พี่ขวัญ', 'Unit.jpg', 'sort.png'),
(64, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Textfield *', 'Add', 'On Process', 'ขอบริการ เพิ่ม  ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.', 'ขอบริการ เพิ่ม  ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.\r\n\r\nต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน เพิ่ม endpoint รับ file upload\r\n', 'คุณภัทราอร (ซีน)', '2023-11-01 16:35:17', 'คุณภัทราอร (ซีน)', '2023-11-01 16:35:17', 'พี่ขวัญ', 'Upload.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
