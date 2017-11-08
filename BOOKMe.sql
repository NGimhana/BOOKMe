-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2017 at 11:28 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BOOKMe`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`) VALUES
(1, 'wow'),
(2, 'gg'),
(3, 'kollo'),
(4, 'sape');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_no` int(2) NOT NULL,
  `bus_id` int(4) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_no`, `bus_id`, `state`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 1),
(6, 1, 0),
(7, 1, 0),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 1),
(18, 1, 1),
(19, 1, 0),
(20, 1, 0),
(21, 1, 0),
(22, 1, 0),
(23, 1, 0),
(24, 1, 0),
(25, 1, 0),
(26, 1, 0),
(27, 1, 0),
(28, 1, 0),
(29, 1, 0),
(30, 1, 1),
(31, 1, 1),
(32, 1, 1),
(33, 1, 0),
(34, 1, 0),
(35, 1, 0),
(36, 1, 0),
(37, 1, 0),
(38, 1, 0),
(39, 1, 0),
(40, 1, 0),
(41, 1, 0),
(42, 1, 0),
(43, 1, 0),
(44, 1, 0),
(45, 1, 0),
(46, 1, 0),
(47, 1, 0),
(48, 1, 0),
(49, 1, 0),
(50, 1, 0),
(51, 1, 0),
(52, 1, 0),
(53, 1, 0),
(54, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_no`,`bus_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
