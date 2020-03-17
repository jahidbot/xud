-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 08:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruit`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductId` int(11) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Unit` int(10) NOT NULL,
  `Price/Kg` int(10) NOT NULL,
  `ImportDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `Supplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ID`, `Name`, `Unit`, `Price/Kg`, `ImportDate`, `ExpiryDate`, `Supplier`) VALUES
(12, '2', 'Mango', 15, 60, '2019-04-06', '2019-06-06', 'Banani Fruit Farm'),
(13, '2', 'Orange', 20, 110, '2019-04-06', '2019-05-06', 'Sylhet Fruit Farm'),
(14, '2', 'Litchi', 15, 180, '2019-04-06', '2019-05-06', 'East Fruit Farm'),
(15, '2', 'Jackfruit', 25, 100, '2019-04-06', '2019-06-06', 'Comilla Fruit Farm'),
(16, '2', 'Strawberry', 10, 250, '2019-04-06', '2019-05-06', 'Sylhet Fruit Farm'),
(17, '3', 'Pomegranate', 10, 200, '2019-04-07', '2019-05-15', 'Sylhet Fruit Farm'),
(18, '3', 'Grapes', 20, 180, '2019-04-07', '2019-07-07', 'East Fruit Farm'),
(20, '3', 'Banana', 20, 60, '2019-04-09', '2019-04-30', 'Sylhet Fruit Farm'),
(21, '2', 'Mango', 10, 60, '2019-04-14', '2019-04-14', 'Banani Fruit Farm');

-- --------------------------------------------------------

--
-- Table structure for table `salesreport`
--

CREATE TABLE `salesreport` (
  `BranchID` int(20) NOT NULL,
  `Date` date NOT NULL,
  `TotalAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesreport`
--

INSERT INTO `salesreport` (`BranchID`, `Date`, `TotalAmount`) VALUES
(2, '2019-04-17', 490),
(2, '2019-04-21', 360),
(3, '2019-04-21', 60);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Suppliers ID` int(10) NOT NULL,
  `Suppliers Name` varchar(30) NOT NULL,
  `Contact NO` varchar(20) NOT NULL,
  `Supplying Fruit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Suppliers ID`, `Suppliers Name`, `Contact NO`, `Supplying Fruit`) VALUES
(21, 'Sylhet Fruit Farm', '+88017111222333', 'Strawberry'),
(21, 'Sylhet Fruit Farm', '+88017111222333', 'Orange'),
(22, 'Comilla Fruit Farm', '+8801776489088', 'JackFruit'),
(24, 'ca fruit farm', '012333', 'Guava');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` varchar(20) NOT NULL,
  `BranchName` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `BranchName`, `Password`, `Type`) VALUES
('1', 'Head Office', '1', 0),
('2', 'Bashundhora', '1', 1),
('3', 'Banani', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
