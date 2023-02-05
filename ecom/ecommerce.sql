-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2022 at 12:55 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'Contrasting Miny City Bag', '49.90'),
(2, 'Pearl Detail Basket Bag', '35.99'),
(3, 'Ruffled Fabric Shoulder Bag', '49.90'),
(4, 'Pack Of Travel Bags', '35.99'),
(5, 'Oversized Cotton T-shirt', '19.90'),
(6, 'Cute But Psycho Shirt', '19.74'),
(7, 'Happy Mind T-shirt', '22.67'),
(8, 'Summon Demons T-shirt', '32.47'),
(9, 'Combined Athletic Sneakers', '35.99'),
(10, 'Nike White Shoes', '95.00'),
(11, 'Fabric High Top Sneakers', '29.99'),
(12, 'Athletic Platform Sneakers', '39.99'),
(13, 'Gothic Black Pleated Buckle ', '36.96'),
(14, 'Pink and Black Plaid Gothic', '41.36'),
(15, 'Cute Punk Skirt', '37.22'),
(16, 'Plaid Women Pleated Skirt Bow ', '27.08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `registration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `phone`, `registration_time`, `password`) VALUES
(67, 'lala@gmail.com', 'lala', 'lala', 0, '2022-07-10 12:53:29', 'e10adc3949ba59abbe56e057f20f883e'),
(68, 'jeje@gmail.com', 'Jessy', 'k', 0, '2022-07-05 17:27:24', 'b59c67bf196a4758191e42f76670ceba'),
(69, 'lala@gmail.com', 'Lala', 'lala', 0, '2022-07-05 21:46:59', '934b535800b1cba8f96a5d72f72f1611'),
(70, 'dfdf@gmail.com', 'sdfd', 'dfdf', 0, '2022-07-05 21:51:32', '934b535800b1cba8f96a5d72f72f1611');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `status` enum('Added To Cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 67, 6, 'Confirmed'),
(17, 67, 1, 'Confirmed'),
(18, 67, 5, 'Confirmed'),
(19, 67, 6, 'Confirmed'),
(20, 67, 1, 'Confirmed'),
(23, 67, 1, 'Confirmed'),
(24, 67, 2, 'Confirmed'),
(25, 67, 9, 'Confirmed'),
(26, 68, 8, 'Confirmed'),
(29, 68, 3, 'Confirmed'),
(30, 68, 10, 'Confirmed'),
(31, 68, 13, 'Confirmed'),
(32, 68, 13, 'Confirmed'),
(38, 68, 2, 'Confirmed'),
(42, 68, 1, 'Confirmed'),
(44, 68, 2, 'Confirmed'),
(45, 68, 1, 'Confirmed'),
(46, 68, 5, 'Confirmed'),
(47, 68, 11, 'Added To Cart');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_products`
--
ALTER TABLE `users_products`
  ADD CONSTRAINT `users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_products_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
