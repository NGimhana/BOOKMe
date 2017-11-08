-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 10:55 PM
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
  `BusID` varchar(6) NOT NULL,
  `RouteID` varchar(6) NOT NULL,
  `DepartureTime` date NOT NULL,
  `WEEKDAY` varchar(6) NOT NULL,
  `StartStation` int(11) NOT NULL,
  `DESTINATION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BusID`, `RouteID`, `DepartureTime`, `WEEKDAY`, `StartStation`, `DESTINATION`) VALUES
('B1', 'R1', '2017-11-06', 'Sun', 1, 3),
('B2', 'R1', '2017-11-06', 'Sun', 1, 4),
('B3', 'R1', '2017-11-06', 'Sun', 3, 4);

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
  `SeatID` varchar(6) NOT NULL,
  `BusID` varchar(50) NOT NULL,
  `Status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `town`
--

CREATE TABLE `town` (
  `TownID` int(11) NOT NULL,
  `Town_description` varchar(20) NOT NULL,
  `distance` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `town`
--

INSERT INTO `town` (`TownID`, `Town_description`, `distance`) VALUES
(1, 'Colombo Fort', '2.72'),
(2, 'Kompanna Vidiya', '3.78'),
(3, 'Kollupitiya', '5.22'),
(4, 'Bambalaptiya', '7.22'),
(5, 'Wellawatte', '9.32'),
(6, 'Dehiwela', '12.02'),
(7, 'Mount Levinia', '14.22'),
(8, 'Ratmalana', '16.02'),
(9, 'Angulana', '17.96'),
(10, 'Lunawa', '19.38'),
(11, 'Moratuwa', '20.92');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
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
  ADD PRIMARY KEY (`SeatID`,`BusID`);

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
-- Indexes for table `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`TownID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operator`
--
ALTER TABLE `operator`
  ADD CONSTRAINT `operator_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `bus` (`BusID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
