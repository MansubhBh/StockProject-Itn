-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2017 at 03:54 AM
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
-- Database: `stockdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Bags and Leathers', 'This is a category that may include bags, purses, belts and other leather products'),
(2, 'Gents Wear', 'This is clothes for gents'),
(3, 'Ladies Wear', 'This is ladies wearable items'),
(4, 'Gents Shoes', 'Khutta ma launey generally.'),
(5, 'Ladies Shoes', 'keti le layuney jutta'),
(6, 'Prashad', 'This is prashad that get\'s you high asf.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_key` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_cost` double NOT NULL,
  `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_key`, `category_id`, `product_description`, `product_quantity`, `product_cost`, `added_date`) VALUES
(1, 'Laptop Bags', 'lapbag01', 1, 'This is just a bag', 20, 2500, '2017-12-19 11:48:19'),
(2, 'GoldStar concord', 'gold01', 4, 'Gold star concord is a kahtra jutta which i personally prefer', 50, 1000, '2017-12-19 11:49:29'),
(3, 'Crocodile Belt', 'belt02', 1, 'Expensive belt made of Crocodile Leather. Banned for PETA', 20, 25000, '2017-12-19 11:57:15'),
(4, 'Maverick T shirt', '10', 2, 'softest merch in the GAME', 100, 4000, '2017-12-19 11:58:34'),
(5, 'Skinny Jeans', 'jeans01', 2, 'Skinny jeans. Best to show off', 10, 1500, '2017-12-19 11:59:31'),
(6, 'Hatti Chap Chappal', 'chappal123', 2, 'Manche Marcha tara chappal fatdaina', 100, 20000, '2017-12-19 11:59:44'),
(7, 'Gods\' Prashad', 'Gods P', 6, ' Tripantamm! Tripantamm! Tripantamm! ', 69, 6969, '2017-12-19 12:00:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
