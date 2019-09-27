-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2019 at 02:51 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailrental`
--

CREATE TABLE `detailrental` (
  `RENT_NUM` int(50) NOT NULL,
  `VID_NUM` int(50) NOT NULL,
  `DETAIL_FEE` decimal(50,2) NOT NULL,
  `DETAIL_DUEDATE` date NOT NULL,
  `DETAIL_RETURNDATE` date DEFAULT NULL,
  `DETAIL_DAILYLATEFEE` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `detailrental`
--

INSERT INTO `detailrental` (`RENT_NUM`, `VID_NUM`, `DETAIL_FEE`, `DETAIL_DUEDATE`, `DETAIL_RETURNDATE`, `DETAIL_DAILYLATEFEE`) VALUES
(1001, 34342, '2.00', '2016-03-04', '2016-03-02', NULL),
(1001, 34366, '3.50', '2016-03-04', '2016-03-02', 3),
(1001, 61353, '2.00', '2016-03-04', '2016-03-03', 1),
(1002, 59237, '3.50', '2016-03-04', '2016-03-04', 3),
(1003, 54325, '3.50', '2016-03-04', '2016-03-09', 3),
(1003, 61369, '2.00', '2016-03-06', '2016-03-09', 1),
(1003, 61388, '0.00', '2016-03-06', '2016-03-09', 1),
(1004, 34341, '2.00', '2016-03-07', '2016-03-07', 1),
(1004, 34367, '3.50', '2016-03-05', '2016-03-07', 3),
(1004, 44392, '3.50', '2016-03-05', '2016-03-07', 3),
(1005, 34342, '2.00', '2016-03-07', '2016-03-05', 1),
(1005, 44397, '3.50', '2016-03-05', '2016-03-05', 3),
(1006, 34366, '3.50', '2016-03-05', '2016-03-04', 3),
(1006, 61367, '2.00', '2016-03-07', NULL, 1),
(1007, 34368, '3.50', '2016-03-05', NULL, 3),
(1008, 34369, '3.50', '2016-03-05', '2016-03-05', 3),
(1009, 54324, '3.50', '2016-03-05', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailrental`
--
ALTER TABLE `detailrental`
  ADD KEY `VID_NUM` (`VID_NUM`),
  ADD KEY `RENT_NUM` (`RENT_NUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailrental`
--
ALTER TABLE `detailrental`
  ADD CONSTRAINT `detailrental_ibfk_1` FOREIGN KEY (`VID_NUM`) REFERENCES `video` (`VID_NUM`),
  ADD CONSTRAINT `detailrental_ibfk_2` FOREIGN KEY (`RENT_NUM`) REFERENCES `rental` (`RENT_NUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
