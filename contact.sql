-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 03:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `position` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `username`, `password`, `role`, `position`) VALUES
(1, 'คุณอาทิตย์ (พี่เหน่ง)', 'a', '12345678', 'b', 'Customer'),
(2, 'คุณภัทราอร (ซีน)', 'b', '12345678', 'a', 'QC'),
(3, 'คุณอภิรักษ์ (แอมป์)', 'c', '12345678', 'a', 'QC'),
(4, 'คุณสุรพันธ์ (พี่ขวัญ)', 'd', '12345678', 'b', 'Dev'),
(5, 'คุณปิติ (พี่เบียร์)', 'e', '12345678', 'b', 'Dev'),
(6, 'คุณยุทธนา (พี่ตำรวจ)', 'f', '12345678', 'b', 'Dev'),
(7, 'คุณพิสุทธ์(พี่เชษ)', 'g', '12345678', 'c', 'Tester'),
(8, 'คุณธนาคม (พี่จ๋า)', 'h', '12345678', 'c', 'Tester'),
(9, 'คุณผานิต (พี่หญิง)', 'i', '12345678', 'a', 'QC'),
(10, 'คุณกริชเพชร (พี่เด่น)', 'j', '12345678', 'c', 'Tester'),
(11, 'คุณอนุชิต (ทัช)', 'k', '12345678', 'c', 'Tester'),
(13, 'คุณนันทิกา (โม)', 'l', '12345678', 'a', 'QC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
