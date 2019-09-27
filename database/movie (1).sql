-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2019 at 03:56 AM
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
-- Database: `assign_queries`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MOVIE_NUM` int(50) NOT NULL,
  `MOVIE_TITLE` varchar(50) NOT NULL,
  `MOVIE_YEAR` int(50) NOT NULL,
  `MOVIE_COST` double(2,2) NOT NULL,
  `MOVIE_GENRE` varchar(50) NOT NULL,
  `PRICE_CODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MOVIE_NUM`, `MOVIE_TITLE`, `MOVIE_YEAR`, `MOVIE_COST`, `MOVIE_GENRE`, `PRICE_CODE`) VALUES
 (1234, 'The Cesar Family Christmas', 2014,39.95, 'FAMILY', 2);
(1235, 'Smokey Mountain Wildlife', 2011,
59.95, 'ACTION', 1),
(1236, 'Richard Goodhope', 2015, 59.95,'DRAMA', 2),
 (1237, 'Beatnik Fever', 2014, 29.95,'COMEDY', 2),
 (1238, 'Constant Companion', 2015, 89.95,
'DRAMA', NULL),
(1239, 'Where Hope Dies', 2005, 25.49,
'DRAMA', 3),
 (1245, 'Time to Burn', 2012, 45.49, 'ACTION',
1),
 (1246, 'What He Doesn''t Know', 2013, 58.29,
'COMEDY', 1);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD KEY `PRICE_CODE` (`PRICE_CODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`PRICE_CODE`) REFERENCES `price` (`PRICE_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
