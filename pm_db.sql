-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 12:13 PM
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
-- Database: `pm_db`
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
(24, 'Add Idea\r\n'),
(25, 'Register\r\n'),
(26, 'Notification\r\n'),
(27, 'Dashboard\r\n'),
(29, 'Total Idea'),
(30, 'Benefit'),
(31, 'Your Idea_On Hold'),
(32, 'Your Idea_Ongoing'),
(33, 'Your Idea_Verifying'),
(34, 'Your Idea_Complete'),
(35, 'Your Idea_Cancel'),
(36, 'Setting'),
(37, 'Add Friend'),
(38, 'My Profile setting'),
(39, 'Team Setting'),
(40, 'Add Team member(s)'),
(41, 'Log off Team '),
(42, 'Share Uplevel to others'),
(43, 'Back to home'),
(44, 'Search'),
(46, 'Home Team'),
(47, 'Your Idea'),
(51, 'Add Friend'),
(52, 'Link (URL)');

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
(3, 'คุณอภิรักษ์ (แอมป์)');

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
(5, 'Error Application\r\n');

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
(1, 'Production'),
(2, 'Dev Test');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `work_id` int(11) NOT NULL,
  `work_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_crt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_edit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เก็บรูปภาพ',
  `file_test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `work_type`, `service`, `category`, `items`, `status`, `subject`, `detail`, `result`, `requester`, `date_crt`, `staff_crt`, `date_edit`, `staff_edit`, `file_upfile`, `file_test`) VALUES
(1, 'Service', 'Production', 'Add Idea', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข Padding กับ Spacing', 'เรื่อง Padding กับ Spacing ที่ คาดว่ามีผลต่อ ช่องว่างอยากให้ปรับขนาดพอดีทั้ง ด้านหน้า ด้านหลัง ข้างบน ข้างล่าง ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(2, 'Service', 'Production', 'Register', 'New requirement', 'Done', 'แจ้งขอ เพิ่มเติม เงื่อนไขการลงทะเบียนด้วยตัวเอง 2 ทางเลือก', 'ขั้นตอนการลงทะเบียนให้ห้ลงทะเบียนชื่อตัวเอง ว่าจะให้ใช้ชื่อและรูปตามของ Line เลยนะ ถ้า OK ก็จบ ถ้าไม่โอเค ก็เปิดให้ปรับชื่อกับรูปได้ ไม่ต้องถามรายละเอียดอื่น อย่างจังหวัด หรืออุตสาหกรรม เราอยากให้เขาเข้ามาได้ง่ายที่สุดก่อน', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(3, 'Service', 'Production', 'Notification', 'New requirement', 'Done', 'แจ้งขอ เพิ่มเติม แจ้งเตือนในกรณีที่ยังไมได้ลงทะเบียน ในขณะใช้งาน', 'ในกรณีที่เข้ามาใน App แต่ยังไม่ลงทะเบียนชื่อตัวเอง App สามารถที่จะขึ้นเตือนว่า ยังไม่ได้ลงทะเบียนชื่อ ขอให้ลงทะเบียนก่อนด้วยการกดปุ่ม นี้', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(4, 'Service', 'Production', 'Dashboard', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข Spacing หน้า Dashboard', 'มีปรับ spacing ของ กราฟ หน้า dashboard', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(5, 'Service', 'Production', 'Dashboard', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข เลื่อนข้อความหน้าแสดงผลกราฟไปจนสุดทางซ้าย และขวา', 'ให้ตัว หนังสือทั้ง 4 นั่น เลื่อนไปจนสุด ซ้าย ขวา ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-04 14:51:22', 'คุณภัทราอร (ซีน)', '2023-10-04 14:51:22', '', '', ''),
(6, 'Service', 'Production', 'Register', 'Delected', 'Done', 'แจ้งขอ ลบ หน้า Register ออก', 'ตัดหน้าการ Register หน้านี้ออก ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(7, 'Service', 'Production', 'Register', 'Delected', 'Done', 'แจ้งขอ ลบ หน้า Register ให้เอาจังหวัด และ Industry ออก', 'เมื่อกดเข้ามาที่ Application ให้แสดงหน้าการลงทะเบียน แต่เอา จังหวัด และ Industry ออก', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(8, 'Service', 'Production', 'Register', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข คำอธิบาย Display name', 'เปลี่ยนคำเป็น Your Name and Photo ?   (ตัวใหญ่กว่า)\nYou can always change them later. (ตัวเล็กกว่า)\nและปุ่ม Confirm \nตัดคำว่า Register ข้างบนออก', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(9, 'Service', 'Production', 'Register', 'New requirement', 'Done', 'แจ้งขอ เพิ่มเติม กรณีเข้าถึงหน้า Register ได้แต่ยังไม่ได้ลงทะเบียน ในแสดงปุ่น Login และลงทะเบียน', 'แต่ถ้าใครเข้ามาถึงหน้านี้ได้ โดยไม่ได้ Register ก็ให้แสดงหน้านี้  เพียงแต่เอา Let’s Get Started ออก \r\nเหลือแต่ Welcome to/Logo/และมีปุ่ม Register อยู่ข้างล่าง ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-04 15:01:56', 'คุณภัทราอร (ซีน)', '2023-10-04 15:01:56', 'Apirak', '', ''),
(10, 'Service', 'Production', 'Register', 'New requirement', 'Done', 'แจ้งขอ เพิ่มเติม กรณีลงทะเบียนเรียบร้อยแล้วข้อความ และเปลี่ยนชื่อปุ่ม', 'หลังจากที่ทำการลงทะเบียนชื่อเรียบร้อยแล้ว ให้แสดงหน้า เขียนเป็น Hello !\nPlease select organization to work on\nและเปลี่ยนชื่อปุ่ม Create เป็น ปุ่ม Create new organization', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(11, 'Service', 'Production', 'Create New Team', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข คำอธิบาย Display name หน้า Create New Organization ', 'เมื่อกด Create new organization ก็เปิดหน้านี้มา\nเปลี่ยนคำเป็น \nCreate organization profile\nEnter organization name\nSet name and picture.  \nYou will be admin for this organization.\nตามด้วยปุ่ม Confirm', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(12, 'Service', 'Production', 'Create New Team', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข ไม่สามารถเลื่อนลงล่างได้ กรณีมี Chanel มากกว่า 1', 'หน้าของ Chanel\nสร้างไป 4 channel ดู ปรากฏว่าอันที่สี่ถูกปัดตกไปอยู่ข้างล่าง เข้าไม่ถึง ช่วยปรับให้เลื่อนลงไปให้ถึงได้ และขนาดของรูป เล็กใหญ่ไม่เท่ากัน อยากให้ปรับให้เท่ากันหมดด้วย', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(13, 'Service', 'Production', 'Setting', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข คำอธิบาย Display name หน้า OR Code : Shared Chanel  เป็นชื่อที่ตั้งตาม Chanel และระบุวัน/เวลา', 'อยากให้เปลี่ยนคำจาก Share Channel เป็นชื่อ Organization (หรือชื่อ channel นั่นๆ) ตามด้วย scan with Line before 27Jul23, 18:04 คือระบุวันเวลาไปเลย\nเอาปุ่ม save ออก หรือเปลี่ยนชื่อปุ่มเป็น Send to Line ก็ได้ ซึ่งเมื่อกดแล้ว ก็จะส่งรูปไปที่ Line Uplevel ของค', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(14, 'Service', 'Production', 'Add Idea', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข เมื่อกดถ่ายภาพ สัญลักษณ์จะขยับสูงขึ้น ', 'กดเพิ่มรูป มีให้เลือก 2 ตัวเลือก ไม่มีแบบที่ให้ตลอดหรือครับ จะได้ไม่ต้องถามอีก และพอถ่ายรูปเสร็จ จะเห็นว่าปุ่มกล้องข้างล่างมันขยับสูงขึ้นมานิดนึง', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(15, 'Service', 'Production', 'Total Idea', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข คำอธิบาย Display name \"Hi, Zeen\" ', 'อยากให้เอาตัว Hi, Zeen หรือชื่อตรงนั้นออกด้วยครับ แล้วเปลี่ยนเป็นชื่อ Organization (channel) แทน เวลาดู จะได้รู้ว่านี่อยู่ใน Organization ไหน', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(16, 'Service', 'Production', 'Add Idea', 'Delected', 'Done', 'แจ้งขอ ลบ ส่วนที่เป็น Toggle ออก ', 'ตัว ชื่อ ยังมี toggle หดขยายอยู่ น่าจะเอาออกและสังเกตดูว่าตอนหดกลับ จะมีสีเทาอ่อนที่รูปร่างไม่เป็นสี่เหลี่ยมตรงๆ เอา toggle ออกไปแล้ว น่าจะหายไป', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(17, 'Service', 'Production', 'Total Idea', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข การจัดเรียง Chart ', 'ใน chart ตัวอักษรเรียงถูกแล้ว แต่กราฟยังไม่ถูกครับ ตอนนี้ เรียงตามเข็มนาฬิกา คือ Onhold, Complete, Verifying, Ongoing.  ต้อวเปลี่ยนเป็น Onhold, Ongoing, Verifying, Complete ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(18, 'Incident', 'Production', 'Your Idea', 'Error Application', 'Done', 'แจ้งปัญหา เปิดไอเดียเลื่อนลง หรือกดแก้ไขได้บ้างไม่ได้บ้าง ', 'ตอนเปิดไอเดียดู มันเลื่อนลงมาดูไม่ได้ บางทีเราไม่ได้อยาก edit แต่อยากดูเฉยๆ แต่ดูท่อนล่างไม่ได้ อยากให้ช่วนแก้ให้ดูได้แม้จะไม่ได้ edit ด้วยครับ  และตอน edit ไอเดีย พอมีการแก้ไขอะไรนิดนึง แล้วจะกลับไปกดปุ่ม save ปุ่มมันจะถูกบังอยู่ครึ่งนึง ไม่รู้เป็นเพราะอ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-04 14:50:32', 'คุณภัทราอร (ซีน)', '2023-10-04 14:50:32', '', '', ''),
(19, 'Incident', 'Production', 'Your Idea', 'Error Application', 'Done', 'แจ้งปัญหา เวลาหน้า Your Idea ไม่ตรง', 'Format เวลา โอเคแล้ว แต่เวลายังไม่ตรง ดูเหมือนช้าไป 7 ชั่วโมง และเวลาในหน้ารวมก็เหมือนจะเป็นเวลาตอนที่สร้างไอเดีย (ที่ช้าไป 7 ชั่วโมง) ถึงจะมีการแก้ไข เวลาในหน้ารวมก็ไม่เปลี่ยนตาม', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-04 14:50:34', 'คุณภัทราอร (ซีน)', '2023-10-04 14:50:34', '', '', ''),
(20, 'Incident', 'Production', 'Add Idea', 'Error Application', 'Done', 'แจ้งปัญหา สร้างไอเดียวใหม่ กดเข้าดูวันที่ Fomat เป็น 1979-1-1', 'ไอเดียที่เพิ่งสร้างขึ้นมาใหม่ เวลาตอนเปิดมาดูจะเป็น 1979-1-1  น่าจะเป็นเวลาที่สร้างมากกว่า', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-04 14:50:36', 'คุณภัทราอร (ซีน)', '2023-10-04 14:50:36', '', '', ''),
(21, 'Service', 'Production', 'Add Idea', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข ช่องที่ยังไม่ได้ใส่ข้อความแสดงเป็น [] ', 'ช่องที่ยังไม่มีข้อมูล แสดงเป็น [] ซึ่งมันดูแปลกๆ ถ้าเปลี่ยนได้ ขอเป็นว่างๆดีกว่าครับ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(22, 'Service', 'Production', 'Add Idea', 'Edit/Update', 'Done', 'แจ้งขอ เพิ่มเติม สถานะ Cancel ไม่มีให้เลือก', 'ตอนเปิดไอเดียมา edit จะเปลี่ยน status เป็น cancel แต่ไม่มี cancel ให้เลือกครับ น่าจะเติมเข้าไปนะ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(23, 'Service', 'Production', 'Add Idea', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข ตัวอักษร เมื่อกดลบไอเดีย ตัว Cancel กับ OK เล็ก', 'ตอนจะลบ idea  Cancel กับ OK น่าจะใหญ่กว่านี้อีกหน่อยครับ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(24, 'Service', 'Production', 'Add Idea', 'New requirement', 'Done', 'แจ้งขอ เพิ่มเติม Category ', 'Category ตอนนี้มี 1 กับ 2 ผมอยากเปลี่ยนเป็น\nCost Saving\nTime Saving\nError Reduction\nMore Sales\nHappy Customers\nBetter H E S\nBetter moral', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(25, 'Service', 'Production', 'Total Idea', 'New requirement', 'Done', 'แจ้งขอ เพิ่มเติม You Idea หากตั้ง Private ให้แสดงสัญลักษณ์ด้วย ', 'ผมลองเปลี่ยน idea อันนึงเป็น private หน้ารวม ไอเดียนั้นหายไป ซึ่งถูกต้องแล้ว เปิดรายละเอียดมาดู ยังเห็นไอเดียนั้นอยู่ ซึ่งก็ถูกแล้ว แต่น่าจะมี mark สีแดงนิดนึงให้รู้ว่า ไอเดียนี้ private นะ และตอนเปิดขึ้นมาดู ก็เปิดได้ ซึ่งก็ถูกแล้ว แต่ก็ควรจะมี display เ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(26, 'Service', 'Production', 'Dashboard', 'Delected', 'Done', 'แจ้งขอ ลบ Link เมื่อกดที่กราฟ แล้ว Link ไปยัง List Idea', 'ตอนนี้ กดไปกราฟ  จะวิ่งไปที่ list ของ idea อันนี้ ไม่จำเป็นครับ เอาออกไปได้เลย ให้กดแล้วก็ไม่ได้วิ่งไปไหน', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(27, 'Service', 'Production', 'Setting Profile', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข รายละเอียด Profiles ', 'หน้านี้ อยากให้เอาชื่อ user (อาทิตย์) ตัวนั้นออกครับ แล้วเปลี่ยนเป็นชื่อ Organization แทน  เปลี่ยนคำว่า Profile Setting เป็น My profile setting แทน อันถัดไป เป็น Share App (เดิม Share Application Uplevel) ถัดไป ให้เป็น Organization Setting (แทน Channel Se', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(28, 'Service', 'Production', 'Setting Profile', 'Edit/Update', 'Done', 'แจ้งขอ แก้ไข รายละเอียด QR Code ของ Share application uplevel ', 'QR code ของ share application uplevel ก็ควรจะเป็นอีกแบบ คือ เป็น QR ที่ใช้ลง App เฉยๆ ไม่ได้เข้า channel ไหน และควร เขียนว่า Uplevel App (บรรทัดใหญ่) และบรรทัดถัดไปเขียนว่า Code generate 27Jul23, 20:48:56.35  เวลาใครลง App ด้วย QR นี้ ก็จะมี Time stamps อ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '0000-00-00 00:00:00', 'คุณภัทราอร (ซีน)', '0000-00-00 00:00:00', '', '', ''),
(29, 'Incident', 'Production', 'Dashboard', 'Error Application', 'Done', 'แจ้งปัญหา ใส่ตัวเลขเยอะๆ ทำให้ กราฟ benefit', 'ลองใส่ ตัวเลข onhold เยอะๆ กราฟ benefit เลยเพี้ยนไป ฝากแก้ด้วย', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-04 14:50:38', 'คุณภัทราอร (ซีน)', '2023-10-04 14:50:38', '', '', ''),
(43, 'Incident', 'Production', 'Search', 'Error Application', 'On Process', 'แจ้งปัญหา ดู idea ของคนอื่นบ้าง แต่ไม่มีขึ้นมา', 'เข้าไปใน PointIT จะไปดู idea ของคนอื่นบ้าง แต่ไม่มีขึ้นมา ไม่รู้เพราะอะไร ของเดิมก็เคยดูได้อยู่', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-05 08:48:11', 'คุณภัทราอร (ซีน)', '2023-10-05 08:48:11', 'คุณภัทราอร (ซีน)', 'S__42246386.jpg', ''),
(44, 'Incident', 'Production', 'Search', 'Error Application\r\n', 'On Process', 'แจ้งปัญหา เวลาที่แสดงในหน้า search ยังไม่ได้เป็นเวลาที่ last update', 'เวลาที่แสดงในหน้า search ยังไม่ได้เป็นเวลาที่ last update', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-05 08:47:27', 'คุณภัทราอร (ซีน)', '2023-10-05 08:47:27', '', 'Screenshot 2023-10-05 154441.png', ''),
(45, 'Incident', 'Production', 'Your Idea', 'Error Application\r\n', 'On Process', 'แจ้งปัญหา เวลา last update ที่หน้าสรุป ยังไม่ได้แก้ไข', ' เวลา last update ที่หน้าสรุป ยังไม่ได้แก้ไข', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-05 08:51:19', 'คุณภัทราอร (ซีน)', '2023-10-05 08:51:19', '', 'Screenshot 2023-10-05 154912.png', ''),
(46, 'Service', 'Production', 'Add Idea', 'New requirement', 'Done', 'ขอบริการ เพิ่มเติม ใส่ตัวอย่าง 5 (Dummy Idea) ทุกครั้งที่มีการสร้าง Organization', 'อยากให้ใส่ dummy idea สักห้าไอเดีย ทุกครั้งที่มีการสร้าง organization (channel) ใหม่ ทำได้มั้ยครับ ?  เอาแบบ Title เป็น\r\n- (ตัวอย่าง) ไอเดียที่กำลังคิดอยู่ \r\n- (ตัวอย่าง) ไอเดียที่กำลังทำอยู่\r\n- (ตัวอย่าง) ไอเดียที่ทำแล้วและรอการประเมินอยู่\r\n- (ตัวอย่าง) ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-11 02:52:51', 'คุณภัทราอร (ซีน)', '2023-10-11 02:52:51', 'คุณภัทราอร (ซีน)', '', ''),
(47, 'Service', 'Production', 'My Profile setting', 'Error Application\r\n', 'Done', 'แจ้งปัญหา เปลี่ยนรูป Profile แต่หน้าอื่นๆ ของไอเดียไม่เปลี่ยนไปตาม ', 'ผมลองเปลี่ยนรูป profile ผม แต่รูป profile ในแต่ละไอเดีย ดูจะไม่ได้เปลี่ยนตามไปด้วย ไม่น่าจะถูกนะครับ เปลี่ยนทีเดียว น่าจะเปลี่ยนหมด', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-11 03:00:27', 'คุณภัทราอร (ซีน)', '2023-10-11 03:00:27', '', '', ''),
(48, 'Service', 'Production', 'Setting', 'Edit/Update\r\n', 'Done', 'ขอบริการ แก้ไข ข้อความส่วนของ QR Code เป็นชื่อ Organization ', 'ขอบริการ แก้ไข ข้อความส่วนของ QR Code เป็นชื่อ Organization ', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-11 03:13:59', 'คุณภัทราอร (ซีน)', '2023-10-11 03:13:59', '', '', ''),
(49, 'Service', 'Production', 'Link (URL)', 'Edit/Update\r\n', 'Done', 'ขอบริการ แก้ไข Link (URL) ที่แสดงด้านบนออก', 'เอาตัว uplevel-app - uplevel-app ข้างบนสุดนั่นออก และเอา Let’s Get Started ออก \r\n\r\nให้มีแต่ \r\nWelcome to Uplevel ! \r\nตามด้วย \r\nPlease register your details.', '', 'คุณอาทิตย์ (พี่เหน่ง)', '2023-10-11 03:30:57', 'คุณภัทราอร (ซีน)', '2023-10-11 03:30:57', '', '2023-10-11_10-30-30.jpg', '');

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
