-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 04:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickyshoppers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `preference` varchar(225) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `userName`, `gender`, `preference`, `location`, `email`, `password`) VALUES
(1, 'abdqadir', 'm', 'all', 'masaka', 'masubaabdq@gmail.com', ''),
(2, 'abdqadir.masuba', 'm', 'all', 'masaka', 'masubaabdq@gmail.com', ''),
(3, 'abdqadir.masuba', 'm', 'all', 'masaka', 'lopo@gmail.com', ''),
(4, 'abdqadir.masuba', 'm', 'matooke', 'nansaana', 'masubaabdq@gmail.com', ''),
(5, 'hawieluv', 'female', 'jeans', 'kampala', 'hawie@gmail.com', '2133'),
(6, 'hawieluv', 'female', 'jeans', 'kampala', 'hawie@gmail.com', '2133'),
(7, 'hawieluv', 'female', 'jeans', 'kampala', 'hawie@gmail.com', '2133'),
(8, 'hawieluv', 'female', 'dresses', 'nakawa', 'hawie@gmail.com', '1456'),
(9, 'akram', 'male', 'jeans', 'kampala', 'hawie@gmail.com', '566777'),
(10, 'akram', 'male', 'jeans', 'kampala', 'hawie@gmail.com', '566777'),
(11, 'akram', 'male', 'jeans', 'kampala', 'hawie@gmail.com', '566777'),
(12, 'arinda33', 'female', 'jeans', 'kampala', 'hawie@gmail.com', '2332343');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `productId`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `image`, `quantity`, `price`) VALUES
(1, 'bag', '', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customerId`, `productId`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-08-06 10:32:42', '2022-08-06 10:32:42'),
(2, 2, 1, '2022-08-06 10:32:42', '2022-08-06 10:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `staffallocations`
--

CREATE TABLE `staffallocations` (
  `id` int(11) NOT NULL,
  `longTerm` int(11) NOT NULL,
  `midTerm` int(11) NOT NULL,
  `shortTerm` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffallocations`
--

INSERT INTO `staffallocations` (`id`, `longTerm`, `midTerm`, `shortTerm`, `created_at`, `updated_at`) VALUES
(1, 98, 86, 54, '2022-08-03 14:02:13', '2022-08-10 14:02:13'),
(2, 9, 0, 4, '2022-08-10 14:02:13', '2022-08-10 14:02:13'),
(3, 9, 0, 4, '2022-08-10 14:02:13', '2022-08-10 14:02:13'),
(4, 39, 3, 19, '2022-08-10 14:02:13', '2022-08-10 14:02:13'),
(5, 3, 0, 1, '2022-08-10 14:02:13', '2022-08-10 14:02:13'),
(6, 60, 6, 30, '2022-08-10 14:02:13', '2022-08-10 14:02:13'),
(7, 89, 8, 44, '2022-08-10 14:02:13', '2022-08-10 14:02:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffallocations`
--
ALTER TABLE `staffallocations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffallocations`
--
ALTER TABLE `staffallocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
