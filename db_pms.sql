-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 03:06 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

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
  `category_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(53, 'Module'),
(54, 'Textfield *'),
(55, 'Table List'),
(56, 'Bar/Border'),
(57, 'Header filter'),
(58, 'Calibration Due Date'),
(59, 'Status'),
(60, 'Search'),
(61, 'Safety period'),
(62, 'Serial Units'),
(63, 'Export/Import'),
(64, 'Label');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `items_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
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
(9, 'Add'),
(10, 'Interface '),
(12, 'Notification');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`) VALUES
(7, 'Analyzer'),
(8, 'Computer'),
(9, 'Platform'),
(10, 'Inventory Control'),
(11, 'Supply (Receive)'),
(12, 'Supply (Transfer)');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `log_id` int(11) NOT NULL,
  `v_status` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_task` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_edit` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`log_id`, `v_status`, `add_task`, `date_edit`, `staff_edit`, `work_id`) VALUES
(1, 'On Process', 'แนะนำจ้าง outsource ในการ fix ครับ', '2023-11-03 14:41:45', 'พี่ขวัญ', 61),
(2, 'On Process', 'แนะนำจ้าง outsource ในการ fix ครับ', '2023-11-03 14:42:38', 'พี่ขวัญ', 57),
(3, 'On Process', 'ต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน เพิ่ม endpoint รับ file upload', '2023-11-03 14:43:01', 'พี่ขวัญ', 64),
(4, 'On Process', 'ระบุให้ด้วยครับ field ไหนต้องการ sort **เปิดทุก field ยกแว้น action', '2023-11-03 14:43:34', 'พี่ขวัญ', 63),
(5, 'On Process', 'count นับต่อหน้า หรือ ที่มีทั้งหมดครับต่อหนัา default 10 item per page แสดงตามตัวอย่างในภาพ test นะครับ', '2023-11-03 14:44:06', 'พี่ขวัญ', 62),
(6, 'Done', 'พี่ขวัญดำเนินการเรียบร้อย', '2023-11-03 14:53:22', 'คุณอภิรักษ์ (แอมป์)', 63),
(7, 'Done', 'นับรวมทั้งหมดของข้อมูลที่แล้ว ', '2023-11-06 03:59:08', 'พี่ขวัญ', 62),
(8, 'Done', 'พี่ขวัญดำเนินการแล้ว', '2023-11-06 03:59:56', 'คุณอภิรักษ์ (แอมป์)', 62),
(10, 'Pending', '-', '2023-11-06 04:11:59', 'คุณอภิรักษ์ (แอมป์)', 61),
(11, 'Pending', '-', '2023-11-06 04:14:47', 'คุณอภิรักษ์ (แอมป์)', 57),
(12, 'Done', 'พี่ขวัญดำเนินการแล้ว', '2023-11-06 04:16:26', 'คุณอภิรักษ์ (แอมป์)', 60),
(13, 'Pending', '-', '2023-11-06 04:18:03', 'คุณอภิรักษ์ (แอมป์)', 58),
(14, 'On Process', '', '2023-11-06 04:57:24', 'คุณอภิรักษ์ (แอมป์)', 70),
(15, 'On Process', '', '2023-11-06 04:57:45', 'คุณอภิรักษ์ (แอมป์)', 67),
(16, 'On Process', '', '2023-11-06 05:13:53', 'คุณอภิรักษ์ (แอมป์)', 72),
(17, 'On Process', 'แก้ไขสถานะจาก Notification เป็น Interface', '2023-11-06 05:17:18', 'คุณอภิรักษ์ (แอมป์)', 72),
(18, 'On Process', '', '2023-11-06 07:42:39', 'คุณอภิรักษ์ (แอมป์)', 80),
(19, 'On Process', '', '2023-11-06 08:37:59', 'คุณอภิรักษ์ (แอมป์)', 83),
(20, 'On Process', '', '2023-11-06 09:16:38', 'คุณอภิรักษ์ (แอมป์)', 64);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `work_id` int(11) NOT NULL,
  `project_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_crt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_edit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เก็บรูปภาพ',
  `file_test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_task` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `project_name`, `work_type`, `service`, `category`, `items`, `status`, `subject`, `detail`, `requester`, `date_crt`, `staff_crt`, `date_edit`, `staff_edit`, `file_upfile`, `file_test`, `add_task`) VALUES
(57, 'Up Level (Phase 1)', 'Incident', 'Analyzer', 'Module', 'Add', 'Pending', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information เมือกด Add Analyzer ', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information เมือกด Add Analyzer ไม่ได้ Add Module*\r\nเมือกด Add Analyzer ไม่ได้ Add Module*  ให้เปลี่ยนเป็น  \" Please fill in \"Module information. ! \"\r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:14:47', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:14:47', 'คุณอภิรักษ์ (แอมป์)', 'Error_Add_module.jpg', '', '-'),
(58, 'Up Level (Phase 1)', 'Incident', 'Analyzer', 'Textfield *', 'Edit/Update', 'Pending', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information (Textfield one more)', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information\r\nเมือกด Add Analyzer ไม่ได้กรอกฟิลด์บังคับ ** ดังนี้ \r\n\r\nหากไมไ่ด้กรอกข้อมูลมากกว่า 1 ให้แสดง =  Error : Please fill in complete information\r\n \r\nกรณีลืมกรอกแค่ 1 ฟิวด์ \r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ\r\nGeneXpert S/N* =  Error : Please fill in \"GeneXpert S/N information. !\"\r\nModel * =  Error : Please fill in \"Model information. !\"\r\nModule Code * =  Error : Please fill in \"Module Code information. !\"\r\nColor Code *  =  Error : Please fill in \"Color Code information. !\"\r\n', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:18:03', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:18:03', 'คุณอภิรักษ์ (แอมป์)', 'Error_Add_Text.jpg', '', '-'),
(59, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update', 'Done', 'ขอบริการ แก้ไขสีพื้นหลัง สถานะ ', 'ขอบริการ แก้ไขสีพื้นหลัง สถานะ \"Do not use\" เป็นสีแดง\r\n\r\nแก้ไขเรียบร้อย', 'คุณภัทราอร (ซีน)', '2023-11-01 16:46:56', 'คุณอภิรักษ์ (แอมป์)', '2023-11-01 16:46:56', 'พี่ขวัญ', 'Change_color.jpg', '', ''),
(60, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Table List', 'Edit/Update', 'Done', 'ขอบริการ เพิ่มแท็กสีสถานะ ', 'ขอบริการ เพิ่มแท็กสีสถานะ \"Colum : Status Module\" หากมี Module เสีย ให้แสดงแทบสีติดสถานะ\r\nต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน ต้องมีมา flag มาบอกว่ามันเสีย เพื่อแปลี่ยนสี\r\n\r\nแก้ไขแล้ว', 'คุณภัทราอร (ซีน)', '2023-11-06 04:16:26', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:16:26', 'คุณอภิรักษ์ (แอมป์)', 'Status_module.jpg', 'color.png', 'พี่ขวัญดำเนินการแล้ว'),
(61, 'PMS (Phase 1)', 'Incident', 'Computer', 'Textfield *', 'Edit/Update', 'Pending', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information (Textfield one more)', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information\r\nเมือกด Add Computer Menu ไม่ได้กรอกฟิลด์บังคับ ** ดังนี้\r\n\r\nหากไมไ่ด้กรอกข้อมูลมากกว่า 1 ให้แสดง = Error : Please fill in complete information.\r\n\r\nกรณีลืมกรอกแค่ 1 ฟิวด์\r\nComputer Code/ Analyzer Code  = Error : Please fill in \"GeneXpert Serial Number information. \"\r\nComputer S/N * = Error : Please fill in \"Computer Serial Number information. \"\r\nOrganization * = Error : Please select in \"Organization information. \"\r\nLaboratory * = Error : Please select in \"Laboratory information. \"\r\n\r\n', 'คุณภัทราอร (ซีน)', '2023-11-06 04:11:58', 'คุณภัทราอร (ซีน)', '2023-11-06 04:11:58', 'คุณอภิรักษ์ (แอมป์)', 'Com_tectfeild.jpg', '', '-'),
(62, 'PMS (Phase 1)', 'Service', 'Platform', 'Table List', 'Add', 'Done', 'ขอบริการ เพิ่มเติมนับจำนวนแสดงรายการทั้งหมด (Count record) ทุกตาราง', 'ขอบริการ เพิ่มเติมตารางแสดงผลทุกหน้า ให้แสดงตัวเลข รายการที่แสดงทั้งหมด \r\n(Total Count Reord Table)\r\n\r\ncount นับต่อหน้า หรือ ที่มีทั้งหมดครับ \r\nต่อหนัา default 10 item per page  \r\n\r\nแสดงตามตัวอย่างในภาพ test นะครับ', 'คุณภัทราอร (ซีน)', '2023-11-06 03:59:56', 'คุณภัทราอร (ซีน)', '2023-11-06 03:59:56', 'คุณอภิรักษ์ (แอมป์)', 'com_count.jpg', 'table Count.png', 'พี่ขวัญดำเนินการแล้ว'),
(63, 'PMS (Phase 1)', 'Service', 'Platform', 'Table List', 'Add', 'Done', 'ขอบริการ เพิ่มเติมสามารถคลิกจัดเรียงหัวตาราง (A-Z, Z-A) ได้', 'ขอบริการ เพิ่มเติมสามารถคลิกจัดเรียงหัวตาราง (A-Z, Z-A) ได้ \r\n\r\nระบุให้ด้วยครับ field ไหนต้องการ sort\r\n\r\nเปิดทุก field ยกแว้น action', 'คุณภัทราอร (ซีน)', '2023-11-03 14:53:22', '', '2023-11-03 14:53:22', 'คุณอภิรักษ์ (แอมป์)', 'Unit.jpg', 'sort.png', 'พี่ขวัญดำเนินการเรียบร้อย'),
(64, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Export/Import', 'Add', 'On Process', 'ขอบริการ เพิ่ม  ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.', 'ขอบริการ เพิ่ม  ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.\r\nต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน เพิ่ม endpoint รับ file upload\r\n', 'คุณภัทราอร (ซีน)', '2023-11-06 09:16:38', 'คุณภัทราอร (ซีน)', '2023-11-06 09:16:38', 'คุณอภิรักษ์ (แอมป์)', 'Upload.jpg', '', ''),
(65, 'PMS (Phase 1)', 'Incident', 'Computer', 'Header filter', 'Edit/Update\r\n', 'On Process', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล ', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 03:18:56', 'พี่ขวัญ', '2023-11-06 03:18:56', '', 'filter_header.jpg', '', ''),
(66, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update\r\n', 'On Process', 'ขอบริการ เพิ่มเติม Add Module ให้ตรวจสอบข้อมูล  Module Name และ Module S/N มิให้ซ้ำกัน', 'ขอบริการ เพิ่มเติม Add Module ให้ตรวจสอบข้อมูล  Module Name และ Module S/N มิให้ซ้ำกัน\r\nมิให้  Module Name  + Module S/N  ซ้ำ หรืออย่างใดอย่างหนึ่ง \r\n\r\nในการ Add Analyzer 1  ครั้ง ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:24:00', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:24:00', '', 'Module_Dup.jpg', '', ''),
(67, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Calibration Due Date', 'Edit/Update', 'On Process', 'ขอบริการ เพิ่มเติม ปรับสีพื้นหลังสถานะ  ', 'ขอบริการ เพิ่มเติม ปรับสีพื้นหลังสถานะ  \"Complated\"  เป็นสีเขียว', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:57:45', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:57:45', 'คุณอภิรักษ์ (แอมป์)', 'Color_caribate.jpg', '', ''),
(68, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Calibration Due Date', 'Edit/Update\r\n', 'On Process', 'แจ้งปัญหา เพิ่ม Calibration Due Date วันที่สามารถสร้างซ้ำกันได้', 'การเพิ่ง  Calibration Due Date ระบบจะตรวจสอบและแจ้งเตือนมิให้บันทึก หาก  Date  ซ้ำกัน ในการ Add Calibration Due Date ใน Analyzer นั้นๆ “Please check for duplicate dates in the system.”', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:40:22', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:40:22', '', 'Date_Dup.jpg', '', ''),
(69, 'PMS (Phase 1)', 'Service', 'Computer', 'Textfield *', 'Interface ', 'On Process', 'ระบบไม่ดึงข้อมูล Organization* จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล ', 'ระบบไม่ดึงข้อมูล Organization* จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล Computer', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:53:43', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:53:43', '', 'list_org.jpg', '', ''),
(70, 'PMS (Phase 1)', 'Service', 'Computer', 'Textfield *', 'Interface', 'On Process', 'ระบบไม่ดึงข้อมูล Laboratory * จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล', 'ระบบไม่ดึงข้อมูล Laboratory * จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล Create Computer\r\n (จำเป็นต้องเลือก Organization ก่อนจึงจะสามารถเลือก Laboratory ได้ และ เลือก Organization และจึงดึงข้อมูล มาให้เลือกเป็น Dropdown ภายใต้ Organization นั้นเท่านั้น )', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:57:24', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 04:57:24', 'คุณอภิรักษ์ (แอมป์)', 'list1_org.jpg', '', ''),
(71, 'PMS (Phase 1)', 'Incident', 'Computer', 'Table List', 'Error Application\r\n', 'On Process', 'แจ้งปัญหา GeneXpert Units แสดงตัวเลขไม่ตรง กับการเพิ่ม Analyzer', 'แจ้งปัญหา GeneXpert Units แสดงตัวเลขไม่ตรง กับการเพิ่ม Analyzer', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 05:03:04', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 05:03:04', '', 'GeneXpert_Units.jpg', '', ''),
(72, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Status', 'Interface ', 'On Process', 'ไม่สามารถเชื่อมต่อจากเครื่องวิเคราะห์มาแสดงสถานะออนไลน์บนระบบ PMS แบบ Real time ได้', 'Status แสดงสถานะออนไลน์ ออฟไลน์ และ สามารถเชื่อมต่อเครื่องวิเคราะห์เพื่อดูสถานะเปิดปิดเครื่องใช้งาน ณ ปัจจุบัน (Real time) ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 05:17:18', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 05:17:18', 'คุณอภิรักษ์ (แอมป์)', 'status_.jpg', '', 'แก้ไขสถานะจาก Notification เป็น Interface'),
(73, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update\r\n', 'On Process', 'เพิ่มเงื่อนไขการตรวจสอบ Module Code = Module ในการ Add Analyzer', 'กำหนดเงื่อนไขหากมีการเพิ่ม Add Module จะต้องเท่ากับ  \r\n(=) Module Code เท่านั้น หากไม่ครบหรือมากกว่า ให้แจ้งเตือน  \r\nกรณีไม่ครบ : “Please record and check complete information \"Only Module Code = 4,6,16,24\" ”', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 05:30:29', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 05:30:29', '', 'Code.jpg', '', ''),
(74, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Header filter', 'Edit/Update\r\n', 'On Process', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล', 'หัวข้อการค้นหา ประกอบด้วย Organization, Model, GeneXpert S/N, Organization, Laboratory, Status\r\nหัวข้อค้นหา (Serial) และหัวตารางแสดงผลไม่เหมือนกัน  (GeneXpert  S/N)', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:21:16', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:21:16', '', 'Ser_Filter.jpg', '', ''),
(75, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Header filter', 'Add', 'On Process', 'เพิ่มหัวข้อการค้นหา : Status เพื่อกรอกดูจำนวน Online, Offine ในระบบ', 'เพิ่มหัวข้อการค้นหา : Status เพื่อกรอกดูจำนวน Online, Offine ในระบบ\r\nหัวข้อการค้นหา ประกอบด้วย Organization, Model, GeneXpert S/N, Organization, Laboratory, Status\r\n', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:22:16', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:22:16', '', '', '', ''),
(76, 'PMS (Phase 1)', 'Service', 'Inventory Control', 'Table List', 'Add', 'On Process', 'เพิ่มหัวข้อการค้นหา : Supply Type ในการค้นหาข้อมูลในระบบ', 'เพิ่มหัวข้อการค้นหา : Supply Type ในการค้นหาข้อมูลในระบบ\r\nหัวข้อการค้นหา ประกอบด้วย Organization, Laboratory, Supply Type ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:28:02', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:28:02', '', 'Supply.jpg', '', ''),
(77, 'PMS (Phase 1)', 'Incident', 'Inventory Control', 'Safety period', 'Error Application\r\n', 'On Process', 'Edit Safety period หาก Textfield * มีค่าว่าง เมื่อกด Save พบ error:', 'Edit Safety period หาก Textfield * มีค่าว่าง เมื่อกด Save พบ error: An error occurred Home page\r\nพบว่าเมื่อกดแก้ไข  Textfield * ช่องใด หรือทั้งหมดมีค่าว่าง กดบันทึกแล้วพบ Error : \r\nเมื่อแก้ไขข้อมูล ไม่กรอกข้อมูลฟิลด์บังคับ* ให้แสดงกรอบสีแดง หรือ ไม่สามารถกดบันทึกได้\r\nNotification : “Please fill in complete information”\r\n', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:45:08', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:45:08', '', 'Error.jpg', '', ''),
(78, 'PMS (Phase 1)', 'Incident', 'Inventory Control', 'Table List', 'Notification', 'On Process', 'ไม่แสดงสัญลักษณ์ติด Flag แจ้งเตือน Balance < = Safety Stock ในตารางแสดงข้อมูล', 'แสดงสัญลักษณ์ติด Flag แจ้งเตือน Balance < = Safety Stock ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:54:12', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 06:54:12', '', 'Balance.jpg', '', ''),
(79, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Header filter', 'Add', 'On Process', 'เพิ่มหัวข้อการค้นหาในหัวตารางแสดงข้อมูล เพื่อกรอกข้อมูลที่ต้องการดูเฉราะส่วน', 'เพิ่มหัวข้อการค้นหา Supply Type, Type of receive, Supplier lead time, Status เพื่อกรอกดูจำนวนข้อมูลที่ต้องการ \r\n 1.1. หัวข้อการค้นหา ประกอบด้วย Supply Type, Serial Batch, Type of receive, Supplier lead time,Batch Code, Status', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 07:38:29', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 07:38:29', '', 'supply_status.jpg', '', ''),
(80, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Header filter', 'Edit/Update', 'On Process', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล', 'Code = Batch Code \r\nSerial = Serial Batch', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 07:42:39', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 07:42:39', 'คุณอภิรักษ์ (แอมป์)', 'Name_table.jpg', '', ''),
(81, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Table List', 'Notification', 'On Process', 'ตั้งค่าวันที่ Expire Date ไม่แสดงหน้าตาราง ตัวหนังสือสีแดง สถานะ (Status) แสดง Expire (เสียแดง)', 'ตั้งค่าวันที่ Expire Date ไม่แสดงหน้าตาราง ตัวหนังสือสีแดง สถานะ (Status) แสดง Expire (เสียแดง)', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 08:23:46', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 08:23:46', '', 'expire.jpg', '', ''),
(82, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Table List', 'Edit/Update\r\n', 'On Process', 'แก้ไขสถานะสี แสดงบนตารางในส่วนของหน้า Supply Receive', '2.4. Status แสดงแถวสีหากทรัพสินมีการใช้งานแล้ว หรือยังไม่ได้มีการใช้งาน รวมถึงหมดอายุ ประกอบด้วยสถานะ Available (สีเขียว), Transfer (สีแดง), Expire (แดง)', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 08:26:03', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 08:26:03', '', 'supply_sta_color.jpg', '', ''),
(83, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Table List', 'Edit/Update', 'On Process', 'หาก Supply มีสถานะ Transfer จะไม่สามารถลบ และแก้ไข Record ได้', 'หาก Supply มีสถานะ Transfer จะไม่สามารถลบ และแก้ไข Record ได้ (ปุ่มแก้ไข และถังขยะจะหายไป) ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 08:37:59', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 08:37:59', 'คุณอภิรักษ์ (แอมป์)', 'Del.jpg', '', ''),
(84, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Serial Units', 'Edit/Update\r\n', 'On Process', 'ไม่สามารถเพิ่ม Serial Units ใน Create Recive ได้  ', 'ไม่สามารถเพิ่ม Serial Units ใน Create Recive   ได้ \r\nตอนนี้ Add ได้มากสุดที่ 10  Units เท่านั้น ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 09:07:25', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 09:07:25', '', 'Unit.jpg', '', ''),
(85, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Serial Units', 'Edit/Update\r\n', 'On Process', 'ขอบริการ เพิ่มเติม Create Recive ให้ตรวจสอบข้อมูลตาราง  Serial Units  มิให้  S/N ซ้ำกัน', 'ขอบริการ เพิ่มเติม Create Recive ให้ตรวจสอบข้อมูลตาราง  Serial Units  มิให้  S/N ซ้ำกัน\r\nและแจ้งเตือน “Please check for duplicate S/N in the system.”', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 09:13:15', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 09:13:15', '', 'Dup_unit.jpg', '', ''),
(86, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Export/Import', 'Add', 'On Process', 'ขอบริการ เพิ่ม ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.', 'ขอบริการ เพิ่ม ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated. \r\nหน้า Supply Receive', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 09:19:20', 'คุณอภิรักษ์ (แอมป์)', '2023-11-06 09:19:20', '', 'tmp.jpg', '', ''),
(87, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Serial Units', 'Error Application\r\n', 'On Process', 'กดปุ่ม แก้ไขรายการ Serial Units  ไม่ได้กดแล้ว Error :', 'กดปุ่ม แก้ไขรายการ Serial Units  ไม่ได้ กดแล้ว Error : An error occurred Home page\r\n4.3. สามารถกดปุ่ม แก้ไข Serial Units', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 02:08:51', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 02:08:51', '', 'edit_error_receive.jpg', '', ''),
(88, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Export/Import', 'Edit/Update\r\n', 'On Process', 'กด ดาวน์โหลด Templated เพื่อเพิ่ม Serial Units ออกมาเป็น JSon', 'กด ดาวน์โหลด Templated เพื่อเพิ่ม Serial Units ออกมาเป็น JSon\r\n4.4.  สามารถดาวน์โหลด Templated เพื่อนำ Serial Units เข้าระบบได้ ในรูปแบบ CSV\r\n', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 02:38:17', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 02:38:17', '', '', '', ''),
(89, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Export/Import', 'Add', 'On Process', 'ไม่สามารถนำข้อมูล Serial Units อัพโหลด Upload เข้าระบบได้ ', 'ไม่สามารถนำข้อมูล Serial Units อัพโหลด Upload เข้าระบบได้ ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 02:43:11', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 02:43:11', '', 'Tmpa.jpg', '', ''),
(90, 'PMS (Phase 1)', 'Incident', 'Supply (Transfer)', 'Label', 'Edit/Update\r\n', 'On Process', 'แก้ไข Label หัวข้อ Transfer : Create Add Transfer เป็น Create Transfer ', 'แก้ไข Label หัวข้อ Transfer : Create Add Transfer เป็น Create Transfer \r\nหน้า Create Transfer  ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 03:28:55', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 03:28:55', '', 'crt_tran.jpg', '', ''),
(91, 'PMS (Phase 1)', 'Incident', 'Inventory Control', 'Table List', 'Application Respone', 'On Process', 'Balance แสดงตัวเลขถูกต้องจากการดึงระบบคำนวณอัติโนมัติ', 'หัวข้อ Balance แสดงตัวเลขถูกต้องจากการดึงระบบคำนวณอัติโนมัติ\r\nหน้า Inventory Control \r\nจากปกติระบบจะคำนวณจากการ Add Unit Transfer และตัดสต๊อกจำนวน Unit ที่ใช้งานแล้ว \r\n', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 03:55:30', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 03:55:30', '', '2023-11-07_10-51-26.jpg', '', ''),
(92, 'PMS (Phase 1)', 'Incident', 'Supply (Transfer)', 'Table List', 'Application Respone', 'On Process', 'ระบบไม่ซ่อนไอคอน กรณี Units Total มีการเรียกใช้แล้ว', 'ระบบไม่ซ่อนไอคอน กรณี Units Total มีการเรียกใช้แล้ว\r\n2.8. กรณี Units Total มีการเรียกใช้แล้ว ให้ซ่อนไอคอน ลบ มิให้สามารถแก้ไขได้', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 04:03:01', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07 04:03:01', '', '2023-11-07_10-59-53.jpg', '', '');

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
