-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2020 at 09:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `last_log_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `last_log_date`) VALUES
(1, 'tarun', 'poopoo', '2014-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pnum` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `email`, `pnum`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Hawit ka', 'lesterk@lesterk.com', '12345678901', 'xseph', '12312321321', '2020-03-07 18:27:25', '2020-03-07 18:27:25'),
(3, 'Joseph Borja', 'xseph01@gmail.com', '09271687606', 'xsephtion', 'testest', '2020-03-08 04:17:55', '2020-03-08 04:17:55'),
(4, 'Wakanda Foreva', 'wakanda@gmail.com', '12345678901', 'Diea', 'dieadiea', '2020-03-08 09:17:17', '2020-03-08 09:17:17'),
(6, 'Hanging Bo', 'bo@gmail.com', '12345678901', 'bozco', 'bozco', '2020-03-08 09:21:12', '2020-03-08 09:21:12'),
(7, 'admin', 'admin@admin.com', '12345678901', 'admin', 'admin', '2020-03-10 13:59:49', '2020-03-10 13:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `email`, `pnum`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hawit ka', 'lesterk@lesterk.com', '12345678901', NULL, 'admin', '$2y$10$js.iOy/P22R8.WP4rE/7PuMgq2cIVg3vFKtD/ftzzfOTzBs9/lBoq', NULL, '2020-03-10 11:33:47', '2020-03-10 11:33:47'),
(2, 'Joseph Joseph', 'Joseph@Joseph.com', '18274619028', NULL, 'Joseph', '$2y$10$885xt0MLp3TKeuXjHbfoI.Kk6Aw11oUsYbUoT/0K8gZqMnPh1k1QO', NULL, '2020-03-10 19:15:31', '2020-03-10 19:15:31'),
(3, 'JosephJosephJoseph Joseph', 'Joseph@awitized.com', '91827551777', NULL, 'Josephz', '$2y$10$JC2v8ghijDCLk9567sAGJeux.iW4y9FlunmMkW6m5yIIsY5k9.FoC', NULL, '2020-03-10 19:18:08', '2020-03-10 19:18:08'),
(4, 'Joseph Borja', 'Joseph@Josephz.com', '201610246059', '2020-03-10 23:06:25', 'admin1', '$2y$10$lbk9o.4l.DrKEU3kh6s3seMW4Gl3to6HBzU23KKqUJMdBveO9Z/VO', NULL, '2020-03-10 19:47:07', '2020-03-10 19:47:07'),
(5, 'Tangina naman talaga', 'tangina@gmail.com', '123456789123', NULL, 'admin3', '$2y$10$3PJKVZ3lYwpGlSovcmB/YOIMDBH.XzDVaZTh8t5E5zdd5UsRwT6li', NULL, '2020-03-10 21:33:50', '2020-03-10 21:33:50'),
(6, 'fuck you', 'fakyou@fak.com', '9090909123', NULL, 'admin2', '$2y$10$Fmlopmdb9PDdpTmr1S/CPOmQf8Y212kEkQASKrRQ75NfR8/a979Lu', NULL, '2020-03-10 21:35:33', '2020-03-10 21:35:33'),
(7, 'tanginamo', 'tanginamo@tangina.co', '0929029119', NULL, 'admint', '$2y$10$ST6PMaWX1GyjQC3zfWO2dOAD1LgUUnkl6NUOnnWZi0Rs4sYEakXam', NULL, '2020-03-10 23:12:07', '2020-03-10 23:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `details` text NOT NULL,
  `category` varchar(16) NOT NULL,
  `subcategory` varchar(16) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `details`, `category`, `subcategory`, `date_added`) VALUES
(12, 'Tom Tom Spark 3', 20000, 'Best watch on the market', '', '', '2018-06-20'),
(15, 'Portable Game Console', 2344, 'nice game console on the go', '', '', '2018-06-21'),
(23, 'Jaybird Freedom F5', 2677, 'Best earphones', '', '', '2018-06-21'),
(44, 'Asus Laptop', 90000, 'Fastest Laptop', '', '', '2018-06-21'),
(67, 'Smart Watch', 500, 'Fastest smartwatch', '', '', '2018-06-20'),
(78, 'Logitec mouse', 5000, 'fastest smothest mouse', '', '', '2018-06-21'),
(764, 'Lenovo Yoga book', 79000, 'Slick design laptop', '', '', '2018-06-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_pnum_unique` (`pnum`),
  ADD UNIQUE KEY `customers_username_unique` (`username`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_cart`
--
ALTER TABLE `customer_cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
