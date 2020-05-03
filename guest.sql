-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 10:32 AM
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
-- Database: `travelling`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `G_Id` int(11) NOT NULL,
  `GoingFrom` varchar(30) NOT NULL,
  `GoingTo` varchar(30) NOT NULL,
  `Departure` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`G_Id`, `GoingFrom`, `GoingTo`, `Departure`) VALUES
(1, '564', 'Mumbai', '0000-00-00'),
(2, 'hayya', 'Lucknow', '0000-00-00'),
(3, 'Dehradun', 'Delhi', '0000-00-00'),
(4, 'asd', 'Munnar', '0000-00-00'),
(5, 'Hola', 'Delhi', '0000-00-00'),
(6, 'gzb', 'Kolkata', '0000-00-00'),
(7, '', 'Goa', '0000-00-00'),
(20, 'Krishnagar', 'Bhopal', '0000-00-00'),
(21, 'Jamaica', 'Lucknow', '0000-00-00'),
(22, 'Titu', 'Chennai', '0000-00-00'),
(23, 'Krishnagar', 'Mumbai', '0000-00-00'),
(24, 'Ayush', 'Gwalior', '0000-00-00'),
(25, 'fdg', 'Lucknow', '0000-00-00'),
(26, 'fdg', 'Lucknow', '0000-00-00'),
(27, 'fdg', 'Lucknow', '0000-00-00'),
(28, 'Delhi', 'Kolkata', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`G_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `G_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
