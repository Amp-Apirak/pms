-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 09:08 AM
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
(64, 'Label'),
(65, 'Create Analyzer');

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
(4, 'คุณสุรพันธ์ (พี่ขวัญ)'),
(5, 'คุณปิติ (พี่เบียร์)'),
(6, 'คุณยุทธนา (พี่ตำรวจ)');

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
(12, 'Notification'),
(13, 'Import/Export');

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
  `date_edit` datetime NOT NULL,
  `staff_edit` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int(11) NOT NULL,
  `file_test` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`log_id`, `v_status`, `add_task`, `date_edit`, `staff_edit`, `work_id`, `file_test`) VALUES
(1, 'On Process', 'แนะนำจ้าง outsource ในการ fix ครับ', '2023-11-03 21:41:45', 'พี่ขวัญ', 61, ''),
(2, 'On Process', 'แนะนำจ้าง outsource ในการ fix ครับ', '2023-11-03 21:42:38', 'พี่ขวัญ', 57, ''),
(3, 'On Process', 'ต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน เพิ่ม endpoint รับ file upload', '2023-11-03 21:43:01', 'พี่ขวัญ', 64, ''),
(4, 'On Process', 'ระบุให้ด้วยครับ field ไหนต้องการ sort **เปิดทุก field ยกแว้น action', '2023-11-03 21:43:34', 'พี่ขวัญ', 63, ''),
(5, 'On Process', 'count นับต่อหน้า หรือ ที่มีทั้งหมดครับต่อหนัา default 10 item per page แสดงตามตัวอย่างในภาพ test นะครับ', '2023-11-03 21:44:06', 'พี่ขวัญ', 62, ''),
(6, 'Done', 'พี่ขวัญดำเนินการเรียบร้อย', '2023-11-03 21:53:22', 'คุณอภิรักษ์ (แอมป์)', 63, ''),
(7, 'Done', 'นับรวมทั้งหมดของข้อมูลที่แล้ว ', '2023-11-06 10:59:08', 'พี่ขวัญ', 62, ''),
(8, 'Done', 'พี่ขวัญดำเนินการแล้ว', '2023-11-06 10:59:56', 'คุณอภิรักษ์ (แอมป์)', 62, ''),
(10, 'Pending', '-', '2023-11-06 11:11:59', 'คุณอภิรักษ์ (แอมป์)', 61, ''),
(11, 'Pending', '-', '2023-11-06 11:14:47', 'คุณอภิรักษ์ (แอมป์)', 57, ''),
(12, 'Approve', 'พี่ขวัญดำเนินการแล้ว', '2023-11-13 14:03:26', 'คุณอภิรักษ์ (แอมป์)', 60, ''),
(13, 'Pending', '-', '2023-11-06 11:18:03', 'คุณอภิรักษ์ (แอมป์)', 58, ''),
(14, 'On Process', '', '2023-11-06 11:57:24', 'คุณอภิรักษ์ (แอมป์)', 70, ''),
(15, 'On Process', '', '2023-11-06 11:57:45', 'คุณอภิรักษ์ (แอมป์)', 67, ''),
(16, 'On Process', '', '2023-11-06 12:13:53', 'คุณอภิรักษ์ (แอมป์)', 72, ''),
(17, 'On Process', 'แก้ไขสถานะจาก Notification เป็น Interface', '2023-11-06 12:17:18', 'คุณอภิรักษ์ (แอมป์)', 72, ''),
(18, 'On Process', '', '2023-11-06 14:42:39', 'คุณอภิรักษ์ (แอมป์)', 80, ''),
(19, 'On Process', '', '2023-11-06 15:37:59', 'คุณอภิรักษ์ (แอมป์)', 83, ''),
(20, 'On Process', '', '2023-11-06 16:16:38', 'คุณอภิรักษ์ (แอมป์)', 64, ''),
(21, 'On Process', 'แก้ไขเรียบร้อยแล้ว', '2023-11-08 10:48:57', 'พี่ขวัญ', 92, ''),
(22, 'Done', 'แก้ไขเรียบร้อย', '2023-11-08 10:56:16', 'พี่ขวัญ', 92, ''),
(23, 'Done', 'แก้ไขเรียบร้อย', '2023-11-08 11:01:45', 'พี่ขวัญ', 90, ''),
(24, 'Done', 'หน้า transfer มันจะ แสดง 2 ค่า balance/total ของแต่ละ ครั้งที่ส่ง\r\nหน้า inventory แสดง balance อย่างเดียว แบบรวมทั้งหมดของแต่ละ supply type', '2023-11-08 11:53:47', 'คุณปิติ (พี่เบียร์)', 91, ''),
(25, 'On Process', 'แก้ไขหัวข้อปัญหา', '2023-11-08 12:07:06', 'คุณอภิรักษ์ (แอมป์)', 91, ''),
(26, 'Done', 'ให้ทำการ  click ที่ ช่องตามภาพ', '2023-11-08 16:48:08', 'คุณปิติ (พี่เบียร์)', 89, ''),
(27, 'Done', 'พร้อม Fix bug', '2023-11-08 16:50:06', 'คุณสุรพันธ์ (พี่ขวัญ)', 89, ''),
(28, 'Done', 'ฝั่งหน้าบ้านใส่เป็น json ครับ เพื่อ load เข้าไปแสดงหน้าจอก่อน และ save เพื่อส่งไปหลังบ้านคัรบ \r\nส่วน CSV File จะเป็น Function import  ที ส่ง file ตรง ไป update ข้อมูลหลังบ้านก่อน แล้วหน้าบ้านค่อย reload มาแสดง ครับ \r\nCSV พี่เบียร์จะต้องมี endpoint รับด้วยตอนนี้ยังไม่มี พี่แค่ทำปุ่มรอไว้ที่ห้นาบ้าน', '2023-11-08 16:58:45', 'คุณสุรพันธ์ (พี่ขวัญ)', 88, ''),
(29, 'Pending', 'ตัว telplate ต้องรอฝั่งหลังบ้านทำก่อนครับ แล้วเดียวเพิ่มให้', '2023-11-08 17:00:55', 'คุณสุรพันธ์ (พี่ขวัญ)', 64, ''),
(30, 'Pending', 'ตรงนี้ใช้เวลาแแก่เยอะครับ อาจต้องจ้าง outsour ช่วย ', '2023-11-08 17:03:03', 'คุณสุรพันธ์ (พี่ขวัญ)', 66, ''),
(31, 'Done', 'แก้ไขเรียบร้อยครับ', '2023-11-08 17:07:37', 'คุณสุรพันธ์ (พี่ขวัญ)', 67, ''),
(34, 'Pending', 'ไม่เข้าใจครับ ขออธิบายเพิ่ม \r\nตอนนี้มี 2 ORG \r\norg 1 มี lab 1 กับ 2 \r\norg 2 มี lab 3\r\nทั้งหมดนี้ถึงจาก พี่เบียร์ครับ', '2023-11-08 17:34:39', 'คุณสุรพันธ์ (พี่ขวัญ)', 69, ''),
(35, 'Pending', 'ต้องให้พี่เบียเป็นคนอธิบายครับ', '2023-11-08 17:36:13', 'คุณสุรพันธ์ (พี่ขวัญ)', 70, ''),
(36, 'Done', 'มีให้แค่ delete ไม่สามารถ update ได้ \r\nการ update คือ ลบใส่ใหม่ ', '2023-11-10 09:14:47', 'คุณสุรพันธ์ (พี่ขวัญ)', 87, ''),
(37, 'Done', 'เพิ่ม scroll bar ให้แสดงได้มากกว่า 10 รายการ', '2023-11-10 09:17:38', 'คุณสุรพันธ์ (พี่ขวัญ)', 84, ''),
(38, 'Done', 'แก้ไขเรียบร้อยแล้ว', '2023-11-10 09:27:12', 'คุณสุรพันธ์ (พี่ขวัญ)', 80, ''),
(39, 'Done', 'แก้ไขเรียบร้อย', '2023-11-10 09:52:50', 'คุณสุรพันธ์ (พี่ขวัญ)', 81, ''),
(40, 'Done', 'แก้ไขเรียบร้อยแล้ว', '2023-11-10 10:29:12', 'คุณสุรพันธ์ (พี่ขวัญ)', 78, ''),
(41, 'Done', 'แก้ไจแล้ว\r\nพร้อมรับข้อมูลตัวเลขเท่านั้น', '2023-11-10 10:33:50', 'คุณสุรพันธ์ (พี่ขวัญ)', 77, ''),
(42, 'Done', 'หน้าบ้านยอมให้ Add ได้ \r\nแต่ลังจาก Save ระบบจะแจ้ง ว่ามีแล้ว ไใ่ update ให้', '2023-11-10 11:33:51', 'คุณสุรพันธ์ (พี่ขวัญ)', 68, ''),
(43, 'Done', 'แก้ไรเรียบร้อย', '2023-11-10 11:37:54', 'คุณสุรพันธ์ (พี่ขวัญ)', 65, ''),
(44, 'Done', 'แก้ไขเรียบร้อยแล้ว', '2023-11-10 11:41:03', 'คุณสุรพันธ์ (พี่ขวัญ)', 74, ''),
(45, 'On Process', 'เพิ่มฝั่งหน้าบ้านแล้ว\r\nรอพี่เบียร์ เพิ่ม หลังบ้าน ', '2023-11-10 12:34:49', 'คุณสุรพันธ์ (พี่ขวัญ)', 75, ''),
(46, 'On Process', 'เพิ่มมราหน้าบ้านแล้ว\r\nรอพี่เบียร์เพิ่มหลังบ้าน', '2023-11-10 12:43:06', 'คุณสุรพันธ์ (พี่ขวัญ)', 76, ''),
(47, 'On Process', 'เพิ่มให้ที่หน้าบ้านแล้ว \r\nรอหลังบ้าน update', '2023-11-10 13:07:17', 'คุณสุรพันธ์ (พี่ขวัญ)', 79, ''),
(48, 'Done', 'แก้ไขเรียบร้อยแล้ว', '2023-11-10 13:09:33', 'คุณสุรพันธ์ (พี่ขวัญ)', 82, ''),
(49, 'Done', 'แก้ไขเรียบร้อย', '2023-11-10 13:22:08', 'คุณสุรพันธ์ (พี่ขวัญ)', 83, ''),
(50, 'Done', 'หน้าบ้านยอมให้ใส่ครับ\r\nแต่หลัวบ้างถ้าซ้ำจะไม่ update หรือ สร้างให้', '2023-11-10 13:27:30', 'คุณสุรพันธ์ (พี่ขวัญ)', 85, ''),
(51, 'Done', 'เพิ่ม function Match module เรียบร้อยแล้ว', '2023-11-10 13:39:20', 'คุณสุรพันธ์ (พี่ขวัญ)', 73, ''),
(52, 'On Process', 'ตรวจสอบตามที่พี่ขวัญแจ้งดำเนินการ ยังมี Serial (หัวข้อฟิวเตอร์) ชื่อไม่ตรงกับตารางคอลัม Computer S/N  ครับ  แนบภาพให้ดูที่  Image Test (แนบไฟล์ภาพผลการดำเนินการ)', '2023-11-13 12:04:09', 'คุณอภิรักษ์ (แอมป์)', 65, ''),
(53, 'On Process', 'ตรวจสอบตามที่พี่ขวัญแจ้งยังไม่ได้เปลี่ยน ตามภาพที่แนบใน Image Test (แนบไฟล์ภาพผลการดำเนินการ ) ครับ ', '2023-11-13 12:28:28', 'คุณอภิรักษ์ (แอมป์)', 74, ''),
(54, 'Approve', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว ', '2023-11-13 13:39:10', 'คุณอภิรักษ์ (แอมป์)', 65, '2023-11-13_13-38-03.jpg'),
(55, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว ', '2023-11-13 13:55:48', 'คุณอภิรักษ์ (แอมป์)', 74, '2023-11-13_13-38-03ก.jpg'),
(56, 'Done', 'พี่ขวัญดำเนินการแก้ไขเรียบร้อย', '2023-11-13 14:00:22', 'คุณอภิรักษ์ (แอมป์)', 60, '2023-11-13_13-59-29.jpg'),
(57, 'Approve', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว', '2023-11-13 14:05:33', 'คุณอภิรักษ์ (แอมป์)', 73, '2023-11-13_14-05-13.jpg'),
(58, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว ', '2023-11-13 14:16:10', 'คุณอภิรักษ์ (แอมป์)', 59, '2023-11-13_14-15-49.jpg'),
(59, 'On Process', 'ตรวจสอบล่าสุดยังไม่ตรงครับ หากมีการลบข้อมูล Analyzer ข้อมูลหน้า Computer ไม่อัพเเดทตาม ', '2023-11-13 14:44:31', 'คุณอภิรักษ์ (แอมป์)', 71, ''),
(60, 'On Process', 'อ้างอิงจากเดิมของพี่ขวัญ บอกว่าระบบแจ้งเตือนหน้าแรกเมื่อมีการกด Update  สามารถแก้ไขปรับเปลี่ยนให้ แจ้งเตือนเมื่อกด Save  หรือ Add เลยได้ไหมครับ เนื่องจากมีกด Update แล้ว User จะต้องหา Record  เดิมหรือค้นหาเพื่อ Add ใหม่ ทำให้เข้าหลายหน้า คิดว่าอยู่หน้าเดิมจะใช้งานสะดวกกว่าครับพี่  ', '2023-11-13 15:14:44', 'คุณอภิรักษ์ (แอมป์)', 68, ''),
(61, 'On Process', 'จ้าง outsource ครับ', '2023-11-13 15:17:00', 'คุณสุรพันธ์ (พี่ขวัญ)', 68, ''),
(62, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยครับ', '2023-11-13 15:18:37', 'คุณอภิรักษ์ (แอมป์)', 67, ''),
(63, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว', '2023-11-13 15:27:51', 'คุณอภิรักษ์ (แอมป์)', 80, ''),
(64, 'On Process', 'ขอเปลี่ยนสี Transfer (สีแดง) เปลี่ยนเป็น สีเหลือง คะ ', '2023-11-14 14:31:05', 'คุณภัทราอร (ซีน)', 82, ''),
(65, 'Approve', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว', '2023-11-17 12:19:31', 'คุณอภิรักษ์ (แอมป์)', 87, '2023-11-17_12-18-32.jpg'),
(66, 'Approve', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว ', '2023-11-17 12:23:24', 'คุณอภิรักษ์ (แอมป์)', 84, ''),
(67, 'On Process', 'ตรวจสอบแล้วปุ่มแก้ไขยังอยู่ครับ ', '2023-11-17 12:27:05', 'คุณอภิรักษ์ (แอมป์)', 83, '2023-11-17_11-18-00.jpg'),
(68, 'Approve', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว', '2023-11-17 13:15:43', 'คุณอภิรักษ์ (แอมป์)', 81, '2023-11-17_13-15-55.jpg'),
(69, 'On Process', 'ประเมินกับพี่เบียร์แล้ว ขอลบปุ่ม Import Data ออก ครับ ', '2023-11-17 13:33:07', 'คุณอภิรักษ์ (แอมป์)', 88, '2023-11-17_13-33-24.jpg'),
(70, 'Done', 'อัพเดทเนื้อหา Subject หัวข้อเรื่องใหม่เพิ่มเติม', '2023-11-17 14:34:32', 'คุณอภิรักษ์ (แอมป์)', 89, ''),
(71, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว', '2023-11-17 14:38:36', 'คุณอภิรักษ์ (แอมป์)', 85, ''),
(72, 'Cancel', 'ขอยกเลิกครับ', '2023-11-17 14:57:23', 'คุณอภิรักษ์ (แอมป์)', 86, ''),
(73, 'On Process', 'ขอลบปุ่ม Improt Data ออกครับ', '2023-11-17 15:18:15', 'คุณอภิรักษ์ (แอมป์)', 88, ''),
(74, 'Approve', 'พี่ขวัญดำเนินการแก้ไขเรียบร้อย', '2023-11-17 15:36:58', 'คุณอภิรักษ์ (แอมป์)', 90, '2023-11-17_15-38-00.jpg'),
(75, 'Done', 'พี่ขวัญดำเนินการเรียบร้อย', '2023-11-17 15:41:43', 'คุณอภิรักษ์ (แอมป์)', 78, '2023-11-17_15-41-59.jpg'),
(76, 'Approve', 'พี่เบียร์ดำเนินการแก้ไขเรียบร้อย วันนี้ ', '2023-11-17 15:47:31', 'คุณอภิรักษ์ (แอมป์)', 91, ''),
(77, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อย', '2023-11-17 15:49:44', 'คุณอภิรักษ์ (แอมป์)', 78, '2023-11-17_15-41-59.jpg'),
(78, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว ', '2023-11-17 15:51:54', 'คุณอภิรักษ์ (แอมป์)', 77, '2023-11-17_15-52-43.jpg'),
(79, 'Approve', 'ปิดงาน', '2023-11-17 16:04:44', 'คุณอภิรักษ์ (แอมป์)', 62, ''),
(80, 'Approve', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว ปิดงาน', '2023-11-17 16:05:23', 'คุณอภิรักษ์ (แอมป์)', 63, ''),
(81, 'Pending', 'พี่ขวัญแก้ไขให้แล้ว รอดำเนินการทดสอบความถูกต้อง/ รอสรุปการเลือกใช้งาน Tp กับทีม และพี่ประพัฒน์ ', '2023-11-17 16:06:21', 'คุณอภิรักษ์ (แอมป์)', 89, ''),
(82, 'Cancel', 'ยกเลิกครับ', '2023-11-17 16:08:37', 'คุณอภิรักษ์ (แอมป์)', 61, ''),
(83, 'Cancel', 'ยกเลิกครับ', '2023-11-17 16:09:04', 'คุณอภิรักษ์ (แอมป์)', 58, ''),
(84, 'Cancel', 'ยกเลิกครับ', '2023-11-17 16:09:45', 'คุณอภิรักษ์ (แอมป์)', 57, ''),
(85, 'Done', 'แก้ไขแล้วครับ', '2023-11-19 10:39:28', 'คุณสุรพันธ์ (พี่ขวัญ)', 100, 'DisableDisplayDate.png'),
(86, 'Done', 'แก้ไขแล้วครับ', '2023-11-20 16:32:25', 'คุณสุรพันธ์ (พี่ขวัญ)', 99, 'ReviceDisableImport.png'),
(87, 'Done', 'แก้ไขเรียบร้อยแล้ว', '2023-11-20 16:33:00', 'คุณสุรพันธ์ (พี่ขวัญ)', 88, 'TransferDisableImport.png'),
(88, 'Done', 'จ้าง outsource ในการปรับ CSS ครับ', '2023-11-20 16:35:57', 'คุณสุรพันธ์ (พี่ขวัญ)', 102, ''),
(89, 'Done', 'แก้ไขเรียบร้อย', '2023-11-20 16:41:03', 'คุณสุรพันธ์ (พี่ขวัญ)', 98, 'StockAddTotalUnitsTable.png'),
(90, 'Done', 'แก้ไขเรียบร้อย ซ้อนแสดงตามข้อมูล API', '2023-11-20 16:46:50', 'คุณสุรพันธ์ (พี่ขวัญ)', 97, 'StockHideIcons.png'),
(91, 'Done', 'แก้ไขเรียบร้อย', '2023-11-20 16:54:27', 'คุณสุรพันธ์ (พี่ขวัญ)', 96, 'FixRevicetoReceive.png'),
(92, 'On Process', 'เบียร์ดูให้ด้วยครับ ข้อมูลที่ให้แสดงดึงมาจาก API ', '2023-11-20 16:57:55', 'คุณสุรพันธ์ (พี่ขวัญ)', 94, 'AnalyzerModuleOnlineOffline.png'),
(93, 'Done', 'จ้าง outsource เพื่อตรวจสอบเงื่อนไข Front end ', '2023-11-20 16:59:33', 'คุณสุรพันธ์ (พี่ขวัญ)', 93, '');

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
  `date_crt` datetime NOT NULL,
  `staff_crt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_edit` datetime NOT NULL,
  `staff_edit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เก็บรูปภาพ',
  `file_test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_task` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `project_name`, `work_type`, `service`, `category`, `items`, `status`, `subject`, `detail`, `requester`, `date_crt`, `staff_crt`, `date_edit`, `staff_edit`, `file_upfile`, `file_test`, `add_task`) VALUES
(57, 'Up Level (Phase 1)', 'Incident', 'Analyzer', 'Module', 'Add', 'Cancel', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information เมือกด Add Analyzer ', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information เมือกด Add Analyzer ไม่ได้ Add Module*\r\nเมือกด Add Analyzer ไม่ได้ Add Module*  ให้เปลี่ยนเป็น  \" Please fill in \"Module information. ! \"\r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 12:59:38', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 16:09:45', 'คุณอภิรักษ์ (แอมป์)', 'Error_Add_module.jpg', '', 'ยกเลิกครับ'),
(58, 'Up Level (Phase 1)', 'Incident', 'Analyzer', 'Textfield *', 'Edit/Update', 'Cancel', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information (Textfield one more)', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information\r\nเมือกด Add Analyzer ไม่ได้กรอกฟิลด์บังคับ ** ดังนี้ \r\n\r\nหากไมไ่ด้กรอกข้อมูลมากกว่า 1 ให้แสดง =  Error : Please fill in complete information\r\n \r\nกรณีลืมกรอกแค่ 1 ฟิวด์ \r\n\r\nแนะนำจ้าง outsource ในการ fix ครับ\r\nGeneXpert S/N* =  Error : Please fill in \"GeneXpert S/N information. !\"\r\nModel * =  Error : Please fill in \"Model information. !\"\r\nModule Code * =  Error : Please fill in \"Module Code information. !\"\r\nColor Code *  =  Error : Please fill in \"Color Code information. !\"\r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 12:59:43', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 16:09:04', 'คุณอภิรักษ์ (แอมป์)', 'Error_Add_Text.jpg', '', 'ยกเลิกครับ'),
(59, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update', 'Approve', 'ขอบริการ แก้ไขสีพื้นหลัง สถานะ ', 'ขอบริการ แก้ไขสีพื้นหลัง สถานะ \"Do not use\" เป็นสีแดง\r\n\r\nแก้ไขเรียบร้อย', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 14:16:10', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 14:16:10', 'คุณอภิรักษ์ (แอมป์)', 'Change_color.jpg', '2023-11-13_14-15-49.jpg', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว '),
(60, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Table List', 'Edit/Update', 'Approve', 'ขอบริการ เพิ่มแท็กสีสถานะ ', 'ขอบริการ เพิ่มแท็กสีสถานะ \"Colum : Status Module\" หากมี Module เสีย ให้แสดงแทบสีติดสถานะ\r\nต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน ต้องมีมา flag มาบอกว่ามันเสีย เพื่อแปลี่ยนสี\r\n\r\nแก้ไขแล้ว', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 14:03:52', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 14:03:52', 'คุณอภิรักษ์ (แอมป์)', 'Status_module.jpg', '2023-11-13_13-59-29.jpg', 'พี่ขวัญดำเนินการแก้ไขเรียบร้อย'),
(61, 'PMS (Phase 1)', 'Incident', 'Computer', 'Textfield *', 'Edit/Update', 'Cancel', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information (Textfield one more)', 'แจ้งขอ เปลี่ยนรูปแบบการแสดง Error : Please fill in complete information\r\nเมือกด Add Computer Menu ไม่ได้กรอกฟิลด์บังคับ ** ดังนี้\r\n\r\nหากไมไ่ด้กรอกข้อมูลมากกว่า 1 ให้แสดง = Error : Please fill in complete information.\r\n\r\nกรณีลืมกรอกแค่ 1 ฟิวด์\r\nComputer Code/ Analyzer Code  = Error : Please fill in \"GeneXpert Serial Number information. \"\r\nComputer S/N * = Error : Please fill in \"Computer Serial Number information. \"\r\nOrganization * = Error : Please select in \"Organization information. \"\r\nLaboratory * = Error : Please select in \"Laboratory information. \"\r\n\r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 13:00:07', 'คุณภัทราอร (ซีน)', '2023-11-17 16:08:37', 'คุณอภิรักษ์ (แอมป์)', 'Com_tectfeild.jpg', '', 'ยกเลิกครับ'),
(62, 'PMS (Phase 1)', 'Service', 'Platform', 'Table List', 'Add', 'Approve', 'ขอบริการ เพิ่มเติมนับจำนวนแสดงรายการทั้งหมด (Count record) ทุกตาราง', 'ขอบริการ เพิ่มเติมตารางแสดงผลทุกหน้า ให้แสดงตัวเลข รายการที่แสดงทั้งหมด \r\n(Total Count Reord Table)\r\n\r\ncount นับต่อหน้า หรือ ที่มีทั้งหมดครับ \r\nต่อหนัา default 10 item per page  \r\n\r\nแสดงตามตัวอย่างในภาพ test นะครับ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 13:00:13', 'คุณภัทราอร (ซีน)', '2023-11-17 16:04:44', 'คุณอภิรักษ์ (แอมป์)', 'com_count.jpg', '', 'ปิดงาน'),
(63, 'PMS (Phase 1)', 'Service', 'Platform', 'Table List', 'Add', 'Approve', 'ขอบริการ เพิ่มเติมสามารถคลิกจัดเรียงหัวตาราง (A-Z, Z-A) ได้', 'ขอบริการ เพิ่มเติมสามารถคลิกจัดเรียงหัวตาราง (A-Z, Z-A) ได้ \r\n\r\nระบุให้ด้วยครับ field ไหนต้องการ sort\r\n\r\nเปิดทุก field ยกแว้น action', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 13:00:19', '', '2023-11-17 16:05:23', 'คุณอภิรักษ์ (แอมป์)', 'Unit.jpg', '', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว ปิดงาน'),
(64, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Export/Import', 'Add', 'Pending', 'ขอบริการ เพิ่ม  ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.', 'ขอบริการ เพิ่ม  ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.\r\nต้องปรับ 2 ที่ ครับ ทั้งหน้าบ้าน หลังบ้าน เพิ่ม endpoint รับ file upload\r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 17:00:55', 'คุณภัทราอร (ซีน)', '2023-11-08 17:00:55', 'คุณสุรพันธ์ (พี่ขวัญ)', 'Upload.jpg', '', 'ตัว telplate ต้องรอฝั่งหลังบ้านทำก่อนครับ แล้วเดียวเพิ่มให้'),
(65, 'PMS (Phase 1)', 'Incident', 'Computer', 'Header filter', 'Edit/Update', 'Approve', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล ', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 13:51:27', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 13:51:27', 'คุณอภิรักษ์ (แอมป์)', 'computer Search.png', '2023-11-13_11-59-45.jpg', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว'),
(66, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update', 'Pending', 'ขอบริการ เพิ่มเติม Add Module ให้ตรวจสอบข้อมูล  Module Name และ Module S/N มิให้ซ้ำกัน', 'ขอบริการ เพิ่มเติม Add Module ให้ตรวจสอบข้อมูล  Module Name และ Module S/N มิให้ซ้ำกัน\r\nมิให้  Module Name  + Module S/N  ซ้ำ หรืออย่างใดอย่างหนึ่ง \r\n\r\nในการ Add Analyzer 1  ครั้ง ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 17:03:03', 'คุณอภิรักษ์ (แอมป์)', '2023-11-08 17:03:03', 'คุณสุรพันธ์ (พี่ขวัญ)', 'Module_Dup.jpg', '', 'ตรงนี้ใช้เวลาแแก่เยอะครับ อาจต้องจ้าง outsour ช่วย '),
(67, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Calibration Due Date', 'Edit/Update', 'Approve', 'ขอบริการ เพิ่มเติม ปรับสีพื้นหลังสถานะ  ', 'ขอบริการ เพิ่มเติม ปรับสีพื้นหลังสถานะ  \"Complated\"  เป็นสีเขียว', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 15:18:37', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 15:18:37', 'คุณอภิรักษ์ (แอมป์)', 'Color_caribate.jpg', '', 'พี่ขวัญดำเนินการเรียบร้อยครับ'),
(68, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Calibration Due Date', 'Edit/Update', 'On Process', 'แจ้งปัญหา เพิ่ม Calibration Due Date วันที่สามารถสร้างซ้ำกันได้', 'การเพิ่ง  Calibration Due Date ระบบจะตรวจสอบและแจ้งเตือนมิให้บันทึก หาก  Date  ซ้ำกัน ในการ Add Calibration Due Date ใน Analyzer นั้นๆ “Please check for duplicate dates in the system.”', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 15:17:00', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 15:17:00', 'คุณสุรพันธ์ (พี่ขวัญ)', 'Date_Dup.jpg', '', 'จ้าง outsource ครับ'),
(69, 'PMS (Phase 1)', 'Service', 'Computer', 'Textfield *', 'Interface', 'Pending', 'ระบบไม่ดึงข้อมูล Organization* จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล ', 'ระบบไม่ดึงข้อมูล Organization* จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล Computer', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 17:34:39', 'คุณอภิรักษ์ (แอมป์)', '2023-11-08 17:34:39', 'คุณสุรพันธ์ (พี่ขวัญ)', 'list_org.jpg', 'Compu-Org2.png', 'ไม่เข้าใจครับ ขออธิบายเพิ่ม \r\nตอนนี้มี 2 ORG \r\norg 1 มี lab 1 กับ 2 \r\norg 2 มี lab 3\r\nทั้งหมดนี้ถึงจาก พี่เบียร์ครับ'),
(70, 'PMS (Phase 1)', 'Service', 'Computer', 'Textfield *', 'Interface', 'Pending', 'ระบบไม่ดึงข้อมูล Laboratory * จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล', 'ระบบไม่ดึงข้อมูล Laboratory * จากระบบ PMS มาให้เลือกเป็น Dropdown List ในการเพิ่มข้อมูล Create Computer\r\n (จำเป็นต้องเลือก Organization ก่อนจึงจะสามารถเลือก Laboratory ได้ และ เลือก Organization และจึงดึงข้อมูล มาให้เลือกเป็น Dropdown ภายใต้ Organization นั้นเท่านั้น )', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 17:36:13', 'คุณอภิรักษ์ (แอมป์)', '2023-11-08 17:36:13', 'คุณสุรพันธ์ (พี่ขวัญ)', 'list1_org.jpg', '', 'ต้องให้พี่เบียเป็นคนอธิบายครับ'),
(71, 'PMS (Phase 1)', 'Incident', 'Computer', 'Table List', 'Error Application', 'On Process', 'แจ้งปัญหา GeneXpert Units แสดงตัวเลขไม่ตรง กับการเพิ่ม Analyzer', 'แจ้งปัญหา GeneXpert Units แสดงตัวเลขไม่ตรง กับการเพิ่ม Analyzer', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 14:44:31', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 14:44:31', 'คุณอภิรักษ์ (แอมป์)', 'GeneXpert_Units.jpg', '', 'ตรวจสอบล่าสุดยังไม่ตรงครับ หากมีการลบข้อมูล Analyzer ข้อมูลหน้า Computer ไม่อัพเเดทตาม '),
(72, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Status', 'Interface ', 'On Process', 'ไม่สามารถเชื่อมต่อจากเครื่องวิเคราะห์มาแสดงสถานะออนไลน์บนระบบ PMS แบบ Real time ได้', 'Status แสดงสถานะออนไลน์ ออฟไลน์ และ สามารถเชื่อมต่อเครื่องวิเคราะห์เพื่อดูสถานะเปิดปิดเครื่องใช้งาน ณ ปัจจุบัน (Real time) ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 13:01:07', 'คุณอภิรักษ์ (แอมป์)', '2023-11-08 13:01:07', 'คุณอภิรักษ์ (แอมป์)', 'status_.jpg', '', 'แก้ไขสถานะจาก Notification เป็น Interface'),
(73, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update', 'Approve', 'เพิ่มเงื่อนไขการตรวจสอบ Module Code = Module ในการ Add Analyzer', 'กำหนดเงื่อนไขหากมีการเพิ่ม Add Module จะต้องเท่ากับ  \r\n(=) Module Code เท่านั้น หากไม่ครบหรือมากกว่า ให้แจ้งเตือน  \r\nกรณีไม่ครบ : “Please record and check complete information \"Only Module Code = 4,6,16,24\" ”', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 14:05:33', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 14:05:33', 'คุณอภิรักษ์ (แอมป์)', 'Code.jpg', '2023-11-13_14-05-13.jpg', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว'),
(74, 'PMS (Phase 1)', 'Incident', 'Analyzer', 'Header filter', 'Edit/Update', 'Approve', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล', 'หัวข้อการค้นหา ประกอบด้วย Organization, Model, GeneXpert S/N, Organization, Laboratory, Status\r\nหัวข้อค้นหา (Serial) และหัวตารางแสดงผลไม่เหมือนกัน  (GeneXpert  S/N)', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 13:55:48', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 13:55:48', 'คุณอภิรักษ์ (แอมป์)', 'Ser_Filter.jpg', '2023-11-13_13-38-03ก.jpg', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว '),
(75, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Header filter', 'Add', 'On Process', 'เพิ่มหัวข้อการค้นหา : Status เพื่อกรอกดูจำนวน Online, Offine ในระบบ', 'เพิ่มหัวข้อการค้นหา : Status เพื่อกรอกดูจำนวน Online, Offine ในระบบ\r\nหัวข้อการค้นหา ประกอบด้วย Organization, Model, GeneXpert S/N, Organization, Laboratory, Status\r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 12:34:49', 'คุณอภิรักษ์ (แอมป์)', '2023-11-10 12:34:49', 'คุณสุรพันธ์ (พี่ขวัญ)', '', 'StatusSearch.png', 'เพิ่มฝั่งหน้าบ้านแล้ว\r\nรอพี่เบียร์ เพิ่ม หลังบ้าน '),
(76, 'PMS (Phase 1)', 'Service', 'Inventory Control', 'Table List', 'Add', 'On Process', 'เพิ่มหัวข้อการค้นหา : Supply Type ในการค้นหาข้อมูลในระบบ', 'เพิ่มหัวข้อการค้นหา : Supply Type ในการค้นหาข้อมูลในระบบ\r\nหัวข้อการค้นหา ประกอบด้วย Organization, Laboratory, Supply Type ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 12:43:06', 'คุณอภิรักษ์ (แอมป์)', '2023-11-10 12:43:06', 'คุณสุรพันธ์ (พี่ขวัญ)', 'Supply.jpg', 'InventorySearchType.png', 'เพิ่มมราหน้าบ้านแล้ว\r\nรอพี่เบียร์เพิ่มหลังบ้าน'),
(77, 'PMS (Phase 1)', 'Incident', 'Inventory Control', 'Safety period', 'Error Application', 'Approve', 'Edit Safety period หาก Textfield * มีค่าว่าง เมื่อกด Save พบ error:', 'Edit Safety period หาก Textfield * มีค่าว่าง เมื่อกด Save พบ error: An error occurred Home page\r\nพบว่าเมื่อกดแก้ไข  Textfield * ช่องใด หรือทั้งหมดมีค่าว่าง กดบันทึกแล้วพบ Error : \r\nเมื่อแก้ไขข้อมูล ไม่กรอกข้อมูลฟิลด์บังคับ* ให้แสดงกรอบสีแดง หรือ ไม่สามารถกดบันทึกได้\r\nNotification : “Please fill in complete information”\r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 10:33:50', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 15:51:54', 'คุณอภิรักษ์ (แอมป์)', 'Error.jpg', '2023-11-17_15-52-43.jpg', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว '),
(78, 'PMS (Phase 1)', 'Incident', 'Inventory Control', 'Table List', 'Notification', 'Approve', 'ไม่แสดงสัญลักษณ์ติด Flag แจ้งเตือน Balance < = Safety Stock ในตารางแสดงข้อมูล', 'แสดงสัญลักษณ์ติด Flag แจ้งเตือน Balance < = Safety Stock ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 10:29:12', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 15:49:44', 'คุณอภิรักษ์ (แอมป์)', 'Balance.jpg', '2023-11-17_15-41-59.jpg', 'พี่ขวัญดำเนินการเรียบร้อย'),
(79, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Header filter', 'Add', 'On Process', 'เพิ่มหัวข้อการค้นหาในหัวตารางแสดงข้อมูล เพื่อกรอกข้อมูลที่ต้องการดูเฉราะส่วน', 'เพิ่มหัวข้อการค้นหา Supply Type, Type of receive, Supplier lead time, Status เพื่อกรอกดูจำนวนข้อมูลที่ต้องการ \r\n 1.1. หัวข้อการค้นหา ประกอบด้วย Supply Type, Serial Batch, Type of receive, Supplier lead time,Batch Code, Status', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 13:07:17', 'คุณอภิรักษ์ (แอมป์)', '2023-11-10 13:07:17', 'คุณสุรพันธ์ (พี่ขวัญ)', 'supply_status.jpg', 'supplySearchAdd.png', 'เพิ่มให้ที่หน้าบ้านแล้ว \r\nรอหลังบ้าน update'),
(80, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Header filter', 'Edit/Update', 'Approve', 'แจ้งปัญหา หัวข้อฟิลด์เตอร์ในการค้นหา ไม่ตรงกับหัวตารางแสดงผล', 'Code = Batch Code \r\nSerial = Serial Batch', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 15:27:51', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 15:27:51', 'คุณอภิรักษ์ (แอมป์)', 'Name_table.jpg', '', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว'),
(81, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Table List', 'Notification', 'Approve', 'ตั้งค่าวันที่ Expire Date ไม่แสดงหน้าตาราง ตัวหนังสือสีแดง สถานะ (Status) แสดง Expire (เสียแดง)', 'ตั้งค่าวันที่ Expire Date ไม่แสดงหน้าตาราง ตัวหนังสือสีแดง สถานะ (Status) แสดง Expire (เสียแดง)', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 09:52:50', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 13:15:43', 'คุณอภิรักษ์ (แอมป์)', 'expire.jpg', '2023-11-17_13-15-55.jpg', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว'),
(82, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Table List', 'Edit/Update', 'On Process', 'แก้ไขสถานะสี แสดงบนตารางในส่วนของหน้า Supply Receive', '2.4. Status แสดงแถวสีหากทรัพสินมีการใช้งานแล้ว หรือยังไม่ได้มีการใช้งาน รวมถึงหมดอายุ ประกอบด้วยสถานะ Available (สีเขียว), Transfer (สีแดง), Expire (แดง)', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-14 14:31:05', 'คุณอภิรักษ์ (แอมป์)', '2023-11-14 14:31:05', 'คุณภัทราอร (ซีน)', 'supply_sta_color.jpg', '', 'ขอเปลี่ยนสี Transfer (สีแดง) เปลี่ยนเป็น สีเหลือง คะ '),
(83, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Table List', 'Edit/Update', 'On Process', 'หาก Supply มีสถานะ Transfer จะไม่สามารถลบ และแก้ไข Record ได้', 'หาก Supply มีสถานะ Transfer จะไม่สามารถลบ และแก้ไข Record ได้ (ปุ่มแก้ไข และถังขยะจะหายไป) ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 12:27:05', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 12:27:05', 'คุณอภิรักษ์ (แอมป์)', 'Del.jpg', '2023-11-17_11-18-00.jpg', 'ตรวจสอบแล้วปุ่มแก้ไขยังอยู่ครับ '),
(84, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Serial Units', 'Edit/Update', 'Approve', 'ไม่สามารถเพิ่ม Serial Units ใน Create Recive ได้  ', 'ไม่สามารถเพิ่ม Serial Units ใน Create Recive   ได้ \r\nตอนนี้ Add ได้มากสุดที่ 10  Units เท่านั้น ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 12:23:24', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 12:23:24', 'คุณอภิรักษ์ (แอมป์)', 'Unit.jpg', '', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว '),
(85, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Serial Units', 'Edit/Update', 'Approve', 'ขอบริการ เพิ่มเติม Create Recive ให้ตรวจสอบข้อมูลตาราง  Serial Units  มิให้  S/N ซ้ำกัน', 'ขอบริการ เพิ่มเติม Create Recive ให้ตรวจสอบข้อมูลตาราง  Serial Units  มิให้  S/N ซ้ำกัน\r\nและแจ้งเตือน “Please check for duplicate S/N in the system.”', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-10 13:27:30', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 14:38:36', 'คุณอภิรักษ์ (แอมป์)', 'Dup_unit.jpg', '', 'พี่ขวัญดำเนินการเรียบร้อยแล้ว'),
(86, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Export/Import', 'Add', 'Cancel', 'ขอบริการ เพิ่ม ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated.', 'ขอบริการ เพิ่ม ลิงค์ “Example pattern file for upload.” สำหรับดาวน์โหลด Templated. \r\nหน้า Supply Receive', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 13:02:46', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 14:57:23', 'คุณอภิรักษ์ (แอมป์)', 'tmp.jpg', '', 'ขอยกเลิกครับ'),
(87, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Serial Units', 'Error Application', 'Approve', 'กดปุ่ม แก้ไขรายการ Serial Units  ไม่ได้กดแล้ว Error :', 'กดปุ่ม แก้ไขรายการ Serial Units  ไม่ได้ กดแล้ว Error : An error occurred Home page\r\n4.3. สามารถกดปุ่ม แก้ไข Serial Units', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 12:19:31', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 12:19:31', 'คุณอภิรักษ์ (แอมป์)', 'edit_error_receive.jpg', '2023-11-17_12-18-32.jpg', 'พี่ขวัญแก้ไขเรียบร้อยแล้ว'),
(88, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Export/Import', 'Delected', 'Done', 'ขอลบปุ่ม Improt Data ออกครับ', 'ขอลบปุ่ม Improt Data ออกครับ\r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 16:58:45', 'คุณอภิรักษ์ (แอมป์)', '2023-11-20 16:33:00', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17_13-33-24.jpg', 'TransferDisableImport.png', 'แก้ไขเรียบร้อยแล้ว'),
(89, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Serial Units', 'Import/Export', 'Pending', 'ไม่สามารถนำข้อมูล Serial Units อัพโหลด Upload เข้าระบบได้ ในหน้า Create Recive', 'ไม่สามารถนำข้อมูล Serial Units อัพโหลด Upload เข้าระบบได้ ในหน้า Create Recive', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 16:50:06', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 16:06:21', 'คุณอภิรักษ์ (แอมป์)', 'Tmpa.jpg', '', 'พี่ขวัญแก้ไขให้แล้ว รอดำเนินการทดสอบความถูกต้อง/ รอสรุปการเลือกใช้งาน Tp กับทีม และพี่ประพัฒน์ '),
(90, 'PMS (Phase 1)', 'Incident', 'Supply (Transfer)', 'Label', 'Edit/Update', 'Approve', 'แก้ไข Label หัวข้อ Transfer : Create Add Transfer เป็น Create Transfer ', 'แก้ไข Label หัวข้อ Transfer : Create Add Transfer เป็น Create Transfer \r\nหน้า Create Transfer  ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 13:02:28', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 15:36:58', 'คุณอภิรักษ์ (แอมป์)', 'crt_tran.jpg', '2023-11-17_15-38-00.jpg', 'พี่ขวัญดำเนินการแก้ไขเรียบร้อย'),
(91, 'PMS (Phase 1)', 'Incident', 'Inventory Control', 'Table List', 'Application Respone', 'Approve', 'Balance แสดงตัวเลขไม่ถูกต้องจากการดึงระบบคำนวณอัติโนมัติ', 'หัวข้อ Balance แสดงตัวเลขถูกต้องจากการดึงระบบคำนวณอัติโนมัติ\r\nหน้า Inventory Control \r\nจากปกติระบบจะคำนวณจากการ Add Unit Transfer และตัดสต๊อกจำนวน Unit ที่ใช้งานแล้ว \r\n', 'คุณปิติ (พี่เบียร์)', '2023-11-08 12:05:48', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 15:47:31', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07_10-51-26.jpg', '', 'พี่เบียร์ดำเนินการแก้ไขเรียบร้อย วันนี้ '),
(92, 'PMS (Phase 1)', 'Incident', 'Supply (Transfer)', 'Table List', 'Application Respone', 'Done', 'ระบบไม่ซ่อนไอคอน กรณี Units Total มีการเรียกใช้แล้ว', 'ระบบไม่ซ่อนไอคอน กรณี Units Total มีการเรียกใช้แล้ว\r\n2.8. กรณี Units Total มีการเรียกใช้แล้ว ให้ซ่อนไอคอน ลบ มิให้สามารถแก้ไขได้\r\n\r\nแก้ไขเรียบร้อย', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-08 17:18:34', 'คุณอภิรักษ์ (แอมป์)', '2023-11-08 17:18:34', 'คุณอภิรักษ์ (แอมป์)', '2023-11-07_10-59-53.jpg', '', '-'),
(93, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Module', 'Edit/Update', 'Done', 'แจ้งขอ ปรับและแก้ไขมิให้  Add Module : Module Name ซ้ำกันได้  ปัจจุบันระบบยอมให้บันทึก', 'แจ้งขอ  Add Module Name ซ้ำกันได้  ระบบยอมให้บันทึก ดังภาพ\r\n 3.6.5. การเพิ่ง  Module ระบบจะตรวจสอบและแจ้งเตือนมิให้บันทึก หาก Module S/N และ Module Name หรืออย่างใดอย่างหนึ่ง ซ้ำกันในการ Add Analyzer นั้นๆ ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 14:37:22', 'คุณอภิรักษ์ (แอมป์)', '2023-11-20 16:59:33', 'คุณสุรพันธ์ (พี่ขวัญ)', 'Module_n_Dup.jpg', '', 'จ้าง outsource เพื่อตรวจสอบเงื่อนไข Front end '),
(94, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Table List', 'Edit/Update', 'On Process', 'Status แสดงสถานะออนไลน์/ออฟไลน์ไม่ถูกต้อง โดยอิงจาก Status Module', 'Status แสดงสถานะออนไลน์/ออฟไลน์ไม่ถูกต้อง โดยอิงจาก Status Module\r\nเงื่อนไข \r\n1. หาก Computer ที่ผูกกับ Analyzer มีสถานะออฟไลน์ ให้ Analyzer ที่ผูกไว้กับ  Computer  ออฟไลน์ทั้งหมด\r\n2. หาก Analyzer 1 จาก 4 เครื่องที่ต่อกับ Computer มีสถานะออฟไลน์ ให้ Analyzer ที่ต่อกับ Computer เดียวกันมีสถานะออนไลน์และใช้งานได้ปกติ\r\n3. หาก Mudule เครื่อง Analyzer 1 จาก 4 เครื่องที่ต่อกับ Computer เสีย น้อยกว่าหรือไม่เท่ากับ 4 Mudule ของ Analyzer 1 เครื่อง ให้ Analyzer เครื่องนั้นมีสถานะออนไลน์\r\n', 'คุณปิติ (พี่เบียร์)', '2023-11-13 15:00:42', 'คุณอภิรักษ์ (แอมป์)', '2023-11-20 16:57:55', 'คุณสุรพันธ์ (พี่ขวัญ)', 'status.jpg', 'AnalyzerModuleOnlineOffline.png', 'เบียร์ดูให้ด้วยครับ ข้อมูลที่ให้แสดงดึงมาจาก API '),
(95, 'PMS (Phase 1)', 'Service', 'Analyzer', 'Create Analyzer', 'Edit/Update\r\n', 'On Process', 'กดปุ่ม Create Analyzer  แล้วหน้า Add ข้อมูลเลื่อนอยู่ด้านล่าง ต้องการให้เลื่อนไปด้านบน ', 'กดปุ่ม Create Analyzer  แล้วหน้า Add ข้อมูลเลื่อนอยู่ด้านล่าง ต้องการให้เลื่อนไปด้านบนสุด \r\n', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-13 15:05:44', 'คุณอภิรักษ์ (แอมป์)', '2023-11-13 15:05:44', '', 'scope.jpg', '', ''),
(96, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Label', 'Edit/Update', 'Done', 'ขอแก้ไข แถบ Labal ตัวอักษรสะกดผิดจาก Recive เป็น Receive ', 'ขอแก้ไข แถบ Labal ตัวอักษรสะกดผิดจาก Recive เป็น Receive  ดังภาพ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-14 10:53:06', 'คุณอภิรักษ์ (แอมป์)', '2023-11-20 16:54:27', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-14_10-33-49.jpg', 'FixRevicetoReceive.png', 'แก้ไขเรียบร้อย'),
(97, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Table List', 'Edit/Update', 'Done', 'หาก Supply แต่ละ Record มีสถานะ Expire  จะไม่สามารถลบ และแก้ไข Record ได้', 'จากการปรึกษากัน ขอเพิ่มในส่วนของ Status : Expire ให้ซ่อนไอคอน แก้ไข และลบ เพื่อมิให้สามารถลบหรือแก้ไขข้อมูลได้ครับ ', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 11:20:33', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-20 16:46:50', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17_11-18-00.jpg', 'StockHideIcons.png', 'แก้ไขเรียบร้อย ซ้อนแสดงตามข้อมูล API'),
(98, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Table List', 'New requirement', 'Done', 'ขอเพิ่ง Colum :  Units Total ในการแสดงผลหน้าตาราง Supply Receive ', 'จากที่ทดสอบการผู้ใช้งาน ต้องการให้ ขอเพิ่ง Colum :  Units Total ในการแสดงผลหน้าตาราง Supply Receive  เพิ่มจะได้กะหรือคำนวณคร่าวๆก่อนจะส่ง (Transfer) ไปยังหน่วยงานต่างๆ เป็นต้น', 'คุณอภิรักษ์ (แอมป์)', '2023-11-17 11:35:43', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-20 16:41:03', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17_11-31-00.jpg', 'StockAddTotalUnitsTable.png', 'แก้ไขเรียบร้อย'),
(99, 'Kudson Moo Platform', 'Incident', 'Supply (Transfer)', 'Export/Import', 'Delected', 'Done', 'ขอให้ลบปุ่ม Import Data ออกครับ ', 'ขอลบปุ่ม Import Data ออกครับ  /พี่เบียร์', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 13:38:41', 'คุณอภิรักษ์ (แอมป์)', '2023-11-20 16:32:25', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17_13-37-34.jpg', 'ReviceDisableImport.png', 'แก้ไขแล้วครับ'),
(100, 'PMS (Phase 1)', 'Incident', 'Supply (Receive)', 'Textfield *', 'Edit/Update', 'Done', 'ขอแก้ไข Field : Expire Date เมื่อเปิดหน้า Create Recive ให้ซ่อนวันที่ปัจจุบัน จนกว่าจะมีการกำหนดวันที่ด้วยตัวผู้บันทึก (อธิบายต่อใน Details)', 'ขอแก้ไข Field : Expire Date ไม่ให้แสดงวันที่ หากยังไมได้กรอกวันที่ได้ไหมครับ สับสนเวลากรอกข้อมูล ลืมมาลงวันที่ นึกว่าลงวันที่แล้ว ทำให้ระบบฟ้องไม่ให้บันทึก และไม่มีสัญลักษณ์หรือกรอบแดงๆ ว่าลืมช่องไหน ทำให้งง หรือหาไม่เจอครับ ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 14:07:14', 'คุณอภิรักษ์ (แอมป์)', '2023-11-19 10:39:28', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17_13-53-42.jpg', 'DisableDisplayDate.png', 'แก้ไขแล้วครับ'),
(101, 'PMS (Phase 1)', 'Service', 'Supply (Receive)', 'Serial Units', 'Import/Export', 'Pending', 'ขอเปลี่ยน Templated จาก Json เป็น CSV file สำหรับผู้ใช้งานนำข้อมูลเข้าระบบจำนวนมาก ในหน้า Create Recive', 'ขอเปลี่ยน Templated จาก Json เป็น CSV file สำหรับผู้ใช้งานนำข้อมูลเข้าระบบจำนวนมาก ในหน้า Create Recive\r\nเนื่องจากผู้ใช้งานไม่เข้าใจการใช้ข้อมูลใน Coding ให้เป็นเรื่องยากสำหรับการนำข้อมูลมาใช้ในรูปแบบ  Json files ครับ ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 15:14:33', 'คุณอภิรักษ์ (แอมป์)', '0000-00-00 00:00:00', '', '2023-11-17_15-08-02.jpg', '', ''),
(102, 'PMS (Phase 1)', 'Service', 'Platform', 'Bar/Border', 'Edit/Update', 'Done', 'ขอแก้ไขส่วนของการแสดงผล เมนูบาร์  ส่วนกลาง ส่วนบน และส่วนล่างของแพลตฟอร์ม (ดังภาพ)', 'ขอแก้ไขส่วนของการแสดงผล เมนูบาร์  ส่วนกลาง ส่วนบน และส่วนล่างของแพลตฟอร์ม (ดังภาพ)\r\n1. เว้นระยะห่าง หรือช่องไฟ ระหว่าง แถวเมนูบาร์ และ ส่วนกลาง (body)\r\n2. Fix ตำแหน่งของแถวพื้นหลัง ของเมนูบาร์  ให้อยู่ในตำแหน่งด้านล่างเสมอ \r\n3. Fix ตำแหน่งของพื้นหลัง ตราง (ฺBody ) ให้อยู่ในตำแหน่งด้านล่างเสมอ ', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17 16:50:50', 'คุณอภิรักษ์ (แอมป์)', '2023-11-20 16:35:57', 'คุณสุรพันธ์ (พี่ขวัญ)', '2023-11-17_16-47-04.jpg', '', 'จ้าง outsource ในการปรับ CSS ครับ');

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
