-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2022 at 07:18 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(13, 'Accessories'),
(16, 'Back Cover'),
(14, 'Mobile'),
(15, 'Speaker');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `username_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `picture_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category_fk` varchar(255) DEFAULT NULL,
  `sub_cat_fk` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `s_discription` text,
  `l_discription` text,
  `picture` varchar(255) DEFAULT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `unique_id`, `brand`, `category_fk`, `sub_cat_fk`, `price`, `quantity`, `s_discription`, `l_discription`, `picture`, `creation_time`) VALUES
(55, 'Headphone', 'JBL', 'JBL', 'Accessories', 'Gaming_console', 12000, 5, ' JBL LIVE 650BTNC Wireless Noise Cancelling Over-the-Ear Headphones', ' JBL LIVE 650BTNC Wireless Noise Cancelling Over-the-Ear Headphones', 'uploads/Product_Images/Headphone1637697738_Headphone JBL.jpg', '2021-11-23 20:02:18'),
(56, 'HandFree', 'white', 'Samsung', 'Accessories', 'Android', 1000, 10, 'Noise isolation effect, the audio quality is much more moving', 'In-ear sound reduction design, with noise isolation effect, the audio quality is much more moving!Ergonomic wear layout., Receiving and', 'uploads/Product_Images/HandFree1637697909_Handfree.jpg', '2021-11-23 20:05:09'),
(57, 'Speaker', 'Black', 'JBL', 'Speaker', 'Gaming_console', 15000, 3, 'The Charge 3 strikes a perfect balance between sound', 'The Charge 3 strikes a perfect balance between sound, features and price', 'uploads/Product_Images/Speaker1637698242_speaker.jpg', '2021-11-23 20:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `parent_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category`, `parent_category`) VALUES
(14, 'Android', 'Accessories'),
(13, 'Gaming_console', 'Accessories'),
(15, 'IOS', 'Mobile'),
(16, 'Wire Cable', 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `u_type_fk` int(11) NOT NULL DEFAULT '3',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `u_type_fk`, `creation_time`) VALUES
(7, 'admin', '', 'admin', 'admin@gmail.com', 'admin786', 1, '2021-07-04 21:34:42'),
(8, 'allinone', '', 'allinoneshop305', 'allinoneshop305@gmail.com', 'password', 2, '2021-07-30 23:52:02'),
(10, NULL, NULL, 'Hammad', 'mhaammadkhan@gmail.com', 'admin786', 3, '2021-11-23 18:10:12'),
(11, NULL, NULL, 'Usama', 'mrusama846@gmail.com', 'admin786', 3, '2021-11-24 11:03:42'),
(12, NULL, NULL, 'TAHA', 'taha@gmail.com', '12341234', 3, '2022-01-23 16:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `product_name`, `price`, `quantity`) VALUES
(9, 'Oneplus 7 - 128GB', 40000, 2),
(9, 'Oneplus 9 - 128GB', 150000, 1),
(10, 'Oneplus 7 - 128GB', 40000, 1),
(10, 'Oneplus 9 - 128GB', 150000, 1),
(11, 'Oneplus 7 - 128GB', 40000, 1),
(12, 'Oneplus 7 - 128GB', 40000, 2),
(12, 'Oneplus 9 - 128GB', 150000, 1),
(10, 'Infinix Hot 10i - 64GB', 21999, 1),
(11, 'x box 360-256', 25000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_other_detail`
--

CREATE TABLE `user_other_detail` (
  `id` int(11) NOT NULL,
  `username_fk` varchar(255) DEFAULT NULL,
  `phone_no` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `u_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `u_type`) VALUES
(1, 'admin'),
(2, 'Co_Worker'),
(3, 'Users');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`picture_id`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `category_fk` (`category_fk`),
  ADD KEY `sub_cat_fk` (`sub_cat_fk`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_category` (`sub_category`,`parent_category`),
  ADD KEY `parent_ category` (`parent_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `u_type_fk` (`u_type_fk`);

--
-- Indexes for table `user_other_detail`
--
ALTER TABLE `user_other_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_fk` (`username_fk`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_other_detail`
--
ALTER TABLE `user_other_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_fk`) REFERENCES `categories` (`category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sub_cat_fk`) REFERENCES `sub_categories` (`sub_category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`parent_category`) REFERENCES `categories` (`category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`u_type_fk`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_other_detail`
--
ALTER TABLE `user_other_detail`
  ADD CONSTRAINT `user_other_detail_ibfk_1` FOREIGN KEY (`username_fk`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
