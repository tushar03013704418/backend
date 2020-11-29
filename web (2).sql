-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 10:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthDate` date NOT NULL,
  `fatherName` varchar(200) NOT NULL,
  `motherName` varchar(200) NOT NULL,
  `stateId` int(11) NOT NULL,
  `districtId` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`id`, `name`, `sex`, `birthDate`, `fatherName`, `motherName`, `stateId`, `districtId`, `image`) VALUES
(1, 'Shayam', 'Male', '1997-03-05', 'Ram Kapoor', 'Vimla', 9, 7, 'upload/chil01.jpg'),
(2, 'John', 'Male', '1999-01-01', 'Nick', 'Berta', 3, 4, 'upload/child02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `stateid`, `name`) VALUES
(1, 1, 'Chapra'),
(2, 4, 'Mohali'),
(4, 3, 'west delhi'),
(5, 6, 'Haldwani'),
(6, 8, 'dispur'),
(7, 9, 'Jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
(1, 'Bihar'),
(2, 'Jharkhand'),
(3, 'Delhi'),
(4, 'Punjab'),
(5, 'Kerala'),
(6, 'Uttrakhand'),
(7, 'Haryana'),
(8, 'Assam'),
(9, 'Rajasthan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `organisation` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `lastLogin` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `organisation`, `designation`, `lastLogin`) VALUES
(1, 'tushar', '1b435c76ebb69fc6130027f05fa139ff', 'Tushar Singh', 'Bal Vikas', 'Cluster Coordinator', '2020-11-24 12:29:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
