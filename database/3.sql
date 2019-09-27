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
-- Database: `movieco`
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

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `MEM_NUM` int(50) NOT NULL,
  `MEM_FNAME` varchar(50) NOT NULL,
  `MEM_LNAME` varchar(50) NOT NULL,
  `MEM_STREET` varchar(50) NOT NULL,
  `MEM_CITY` varchar(50) NOT NULL,
  `MEM_STATE` varchar(50) NOT NULL,
  `MEM_ZIP` int(50) NOT NULL,
  `MEM_BALANCE` decimal(50,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`MEM_NUM`, `MEM_FNAME`, `MEM_LNAME`, `MEM_STREET`, `MEM_CITY`, `MEM_STATE`, `MEM_ZIP`, `MEM_BALANCE`) VALUES
(102, 'TAMI', 'DAWSON', '2632 TAKLI\r\nCIRCLE', 'NORENE', 'TN', 37136, '11.00'),
(103, 'CURT', 'KNIGHT', '4025 CORNELL\r\nCOURT', 'FLATGAP', 'KY', 41219, '6.00'),
(104, 'JAMAL', 'MELENDEZ', '788 EAST\r\n145TH AVENUE', 'QUEBECK', 'TN', 38579, '0.00'),
(105, 'IVA', 'MCCLAIN', '6045 MUSKET\r\nBALL CIRCLE', 'SUMMIT', 'KY', 42783, '15.00'),
(106, 'MIRANDA', 'PARKS', '4469 MAXWELL\r\nPLACE', 'GERMANTOWN', 'TN', 38183, '0.00'),
(107, 'ROSARIO', 'ELLIOTT', '7578 DANNER\r\nAVENUE', 'COLUMBIA', 'TN', 38402, '5.00'),
(108, 'MATTIE', 'GUY', '4390 EVERGREEN\r\nSTREET', 'LILY', 'KY', 40740, '0.00'),
(109, 'CLINT', 'OCHOA', '1711 ELM\r\nSTREET', 'GREENEVILLE', 'TN', 37745, '10.00'),
(110, 'LEWIS', 'ROSALES', '4524\r\nSOUTHWIND CIRCLE', 'COUNCE', 'TN', 38326, '0.00'),
(111, 'STACY', 'MANN', '2789 EAST COOK\r\nAVENUE', 'MURFREESBORO', 'TN', 37132, '8.00'),
(112, 'LUIS', 'TRUJILLO', '7267 MELVIN\r\nAVENUE', 'HEISKELL', 'TN', 37754, '3.00'),
(113, 'MINNIE', 'GONZALES', '6430 VASILI\r\nDRIVE', 'WILLISTON', 'TN', 38076, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MOVIE_NUM` int(50) NOT NULL,
  `MOVIE_TITLE` varchar(50) NOT NULL,
  `MOVIE_YEAR` int(50) NOT NULL,
  `MOVIE_COST` decimal(50,2) NOT NULL,
  `MOVIE_GENRE` varchar(50) NOT NULL,
  `PRICE_CODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MOVIE_NUM`, `MOVIE_TITLE`, `MOVIE_YEAR`, `MOVIE_COST`, `MOVIE_GENRE`, `PRICE_CODE`) VALUES
(1234, 'The Cesar Family Christmas', 2014, '39.95', 'FAMILY', 2),
(1235, 'Smokey Mountain Wildlife', 2011, '59.95', 'ACTION', 1),
(1236, 'Richard Goodhope', 2015, '59.95', 'DRAMA', 2),
(1237, 'Beatnik Fever', 2014, '29.95', 'COMEDY', 2),
(1238, 'Constant Companion', 2015, '89.95', 'DRAMA', NULL),
(1239, 'Where Hope Dies', 2005, '25.49', 'DRAMA', 3),
(1245, 'Time to Burn', 2012, '45.49', 'ACTION', 1),
(1246, 'What He Doesn\'t Know', 2013, '58.29', 'COMEDY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `PRICE_CODE` int(50) NOT NULL,
  `PRICE_DESCRIPTION` varchar(50) NOT NULL,
  `PRICE_RENTFEE` decimal(3,2) NOT NULL,
  `PRICE_DAILYLATEFEE` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`PRICE_CODE`, `PRICE_DESCRIPTION`, `PRICE_RENTFEE`, `PRICE_DAILYLATEFEE`) VALUES
(1, 'Standard', '2.00', '1.00'),
(2, 'New Release', '3.50', '3.00'),
(3, 'Discount', '1.50', '1.00'),
(4, 'Weekly Special', '1.00', '0.50');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `RENT_NUM` int(50) NOT NULL,
  `RENT_DATE` date NOT NULL,
  `MEM_NUM` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`RENT_NUM`, `RENT_DATE`, `MEM_NUM`) VALUES
(1001, '2016-03-01', 103),
(1002, '2016-03-01', 105),
(1003, '2016-03-02', 102),
(1004, '2016-03-02', 110),
(1005, '2016-03-02', 111),
(1006, '2016-03-02', 107),
(1007, '2016-03-02', 104),
(1008, '2016-03-03', 105),
(1009, '2016-03-03', 111);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VID_NUM` int(50) NOT NULL,
  `VID_INDATE` date NOT NULL,
  `MOVIE_NUM` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`VID_NUM`, `VID_INDATE`, `MOVIE_NUM`) VALUES
(34341, '2014-01-22', 1235),
(34342, '2014-01-22', 1235),
(34366, '2016-03-02', 1236),
(34367, '2016-03-02', 1236),
(34368, '2016-03-02', 1236),
(34369, '2016-03-02', 1236),
(44392, '2015-10-21', 1237),
(44397, '2015-10-21', 1237),
(54321, '2015-06-18', 1234),
(54324, '2015-06-18', 1234),
(54325, '2015-06-18', 1234),
(59237, '2016-02-14', 1237),
(61353, '2013-01-28', 1245),
(61354, '2013-01-28', 1245),
(61367, '2015-07-30', 1246),
(61369, '2015-07-30', 1246),
(61388, '2014-01-25', 1239);

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
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`MEM_NUM`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MOVIE_NUM`),
  ADD KEY `PRICE_CODE` (`PRICE_CODE`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`PRICE_CODE`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`RENT_NUM`),
  ADD KEY `MEM_NUM` (`MEM_NUM`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`VID_NUM`),
  ADD KEY `MOVIE_NUM` (`MOVIE_NUM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `MEM_NUM` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `MOVIE_NUM` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1247;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `PRICE_CODE` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `RENT_NUM` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `VID_NUM` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61389;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailrental`
--
ALTER TABLE `detailrental`
  ADD CONSTRAINT `detailrental_ibfk_1` FOREIGN KEY (`VID_NUM`) REFERENCES `video` (`VID_NUM`),
  ADD CONSTRAINT `detailrental_ibfk_2` FOREIGN KEY (`RENT_NUM`) REFERENCES `rental` (`RENT_NUM`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`PRICE_CODE`) REFERENCES `price` (`PRICE_CODE`);

--
-- Constraints for table `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`MEM_NUM`) REFERENCES `membership` (`MEM_NUM`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`MOVIE_NUM`) REFERENCES `movie` (`MOVIE_NUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
