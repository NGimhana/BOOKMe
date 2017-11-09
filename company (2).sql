-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 01:00 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
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
-- Table structure for table `bus_ro`
--

CREATE TABLE `bus_ro` (
  `BusID` varchar(6) NOT NULL,
  `RouteID` varchar(6) NOT NULL,
  `DepartureTime` date NOT NULL,
  `WEEKDAY` varchar(6) NOT NULL,
  `StartStation` int(11) NOT NULL,
  `DESTINATION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustID` varchar(6) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `OperatorID` varchar(6) NOT NULL,
  `BusID` varchar(6) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RouteID` varchar(6) NOT NULL,
  `StartTown` int(11) NOT NULL,
  `DestinationTown` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`RouteID`, `StartTown`, `DestinationTown`) VALUES
('R1', 1, 4),
('R2', 4, 8),
('R3', 9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `route_bus`
--

CREATE TABLE `route_bus` (
  `bus_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_bus`
--

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES
(1, 1, '03:18:00', '06:23:00'),
(2, 1, '03:18:00', '06:23:00'),
(3, 1, '03:18:00', '06:23:00'),
(4, 2, '03:18:00', '06:23:00'),
(5, 2, '03:18:00', '06:23:00'),
(6, 3, '03:18:00', '06:23:00'),
(7, 4, '03:18:00', '06:23:00'),
(8, 4, '03:18:00', '06:23:00'),
(9, 5, '03:18:00', '06:23:00'),
(10, 5, '03:18:00', '06:23:00'),
(11, 6, '03:18:00', '06:23:00'),
(12, 6, '03:18:00', '06:23:00'),
(13, 7, '03:18:00', '06:23:00'),
(14, 8, '00:00:00', '00:00:00'),
(15, 8, '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `route_no`
--

CREATE TABLE `route_no` (
  `route_id` int(11) NOT NULL,
  `route_no` varchar(30) NOT NULL,
  `start_st` int(11) NOT NULL,
  `end_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, 1),
(2, 1, 1),
(3, 1, 0),
(4, 1, 0),
(5, 1, 1),
(6, 1, 0),
(7, 1, 0),
(8, 1, 0),
(9, 1, 0),
(10, 1, 1),
(11, 1, 1),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 1),
(18, 1, 1),
(19, 1, 0),
(20, 1, 1),
(21, 1, 0),
(22, 1, 1),
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

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `s_id` int(6) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `route_list` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`s_id`, `s_name`, `route_list`) VALUES
(1, 'kadawatha', '1K3K5K9K4K6K8'),
(2, 'mahara', '2K5K4K6K8'),
(3, 'pettah', '1K4'),
(4, 'dehiwala', '9K20K7');

-- --------------------------------------------------------

--
-- Table structure for table `st_route`
--

CREATE TABLE `st_route` (
  `r_id` int(11) NOT NULL,
  `des` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_ro`
--
ALTER TABLE `bus_ro`
  ADD PRIMARY KEY (`BusID`),
  ADD KEY `RouteID` (`RouteID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustID`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`OperatorID`),
  ADD KEY `BusID` (`BusID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RouteID`);

--
-- Indexes for table `route_bus`
--
ALTER TABLE `route_bus`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `route_no`
--
ALTER TABLE `route_no`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_no`,`bus_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `st_route`
--
ALTER TABLE `st_route`
  ADD PRIMARY KEY (`r_id`);

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
-- Constraints for table `bus_ro`
--
ALTER TABLE `bus_ro`
  ADD CONSTRAINT `bus_ro_ibfk_1` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operator`
--
ALTER TABLE `operator`
  ADD CONSTRAINT `operator_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `bus_ro` (`BusID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
