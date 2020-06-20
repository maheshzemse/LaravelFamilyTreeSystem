-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 05:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `family`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `password`, `email`, `age`, `created_at`, `updated_at`) VALUES
(1, 'mahesh zemse', 'eyJpdiI6InV0a0RHMFJOcTlXU1NBSWhoN2dSZ0E9PSIsInZhbHVlIjoiTUU4czB1SkFaaTZSRzZ2eGo4eTgxdz09IiwibWFjIjoiMmEzNGFiYTBjZWY0ZjZiZTliZWMzNWY5ZTIyZWQ0NmYwMDZlYzViNWIwNTk1MGYzNTc0M2VjMWY4MzY4YWMxZiJ9', 'mahesh.zemse@gmail.com', 33, '2020-06-10 10:45:24', '2020-06-10 10:45:24'),
(2, 'Ram Patil', 'eyJpdiI6IlplU2ZyM0hDSFd5RE5UZTlGbGU2WGc9PSIsInZhbHVlIjoiM1I2ZGV2Y1N2Uml5TDRIUlFTbDVMUT09IiwibWFjIjoiOWM4YjkwZmMwMmNjNTYwMTM3YWQwNDk0MDA3ZGFlNWUyMGI5ZDFjYWViZGFiZDMwMjAxN2UzZWJmYzY4Mzg1ZSJ9', 'ram@gmail.com', 35, '2020-06-10 11:55:19', '2020-06-10 11:55:19'),
(3, 'ganesh T', 'eyJpdiI6ImhwdXI5TktOa3hNbnROQ0lpbW5nMEE9PSIsInZhbHVlIjoiWlZVdkNTNXRXWEI2QlZSdGp0cm1jQT09IiwibWFjIjoiYWRlOWRhZTRkMWRmOGM2MjcyMDkxMWRhNzIzNWFmODE3NTlmZTk4YzRhZjkxZTlkNTVlNTM2NzQ5ZWEwY2I4NSJ9', 'ganesh@gmail.com', 33, '2020-06-10 12:37:45', '2020-06-10 12:37:45'),
(4, 'Yogesh Salave', 'eyJpdiI6Iis4SmZXY3hRMXhnOHVaWXpQYkJQQUE9PSIsInZhbHVlIjoiQkMxVmhEdmNxWVlIdm1QTVMvQTU5QT09IiwibWFjIjoiMGZjNmZkNTI0OTJjMzgzOTgxMTlhYWY1ZDNkMGVlYWQyZmNhYTI5ODIxMDhmZjRmMTVkZTg1ZjM3NzNlOTg2OSJ9', 'yogesh@gmail.com', 35, '2020-06-10 13:59:46', '2020-06-10 13:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `familys`
--

CREATE TABLE `familys` (
  `id` int(10) UNSIGNED NOT NULL,
  `uemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `familys`
--

INSERT INTO `familys` (`id`, `uemail`, `relation`, `name`, `email`, `age`, `created_at`, `updated_at`) VALUES
(23, 'mahesh.zemse@gmail.com', 'Partner', 'Harshada Mahesh Zemse', 'harshada@gmail.com', 30, '2020-06-10 14:36:35', '2020-06-10 14:36:35'),
(24, 'mahesh.zemse@gmail.com', 'Childern', 'Manjiri Mahesh Zemse', 'manjiri@gmail.com', 10, '2020-06-10 14:37:25', '2020-06-10 14:37:25'),
(25, 'mahesh.zemse@gmail.com', 'Childern', 'Vallabh Mahesh Zemse', 'vallabh@gmail.com', 11, '2020-06-10 14:38:11', '2020-06-10 14:38:11'),
(26, 'mahesh.zemse@gmail.com', 'Parent', 'Bhaskar Shankar Zemse', 'bhaskar@gmail.com', 70, '2020-06-10 14:38:59', '2020-06-10 14:38:59'),
(27, 'yogesh@gmail.com', 'Partner', 'Neetha Yogesh Salave', 'neeta@gmail.com', 29, '2020-06-10 14:40:21', '2020-06-10 14:40:21'),
(28, 'yogesh@gmail.com', 'Childern', 'ram yogesh salave', 'ram@gmail.com', 8, '2020-06-10 14:41:04', '2020-06-10 14:41:04'),
(29, 'ram@gmail.com', 'Partner', 'Seeta Ram P', 'seeta@gmail.com', 30, '2020-06-10 22:15:36', '2020-06-10 22:15:36'),
(30, 'ram@gmail.com', 'Childern', 'gita ram patil', 'gita@gmail.com', 12, '2020-06-10 22:16:28', '2020-06-10 22:16:28'),
(31, 'ram@gmail.com', 'Parent', 'Baban P', 'baban@gmail.com', 60, '2020-06-10 22:17:08', '2020-06-10 22:17:08'),
(32, 'ganesh@gmail.com', 'Partner', 'Meeta Ganesh T', 'meeta@gmail.com', 30, '2020-06-10 22:23:07', '2020-06-10 22:23:07'),
(34, 'ganesh@gmail.com', 'Parent', 'Ram T', 'ramt@gmail.com', 70, '2020-06-10 22:24:31', '2020-06-10 22:24:31'),
(35, 'ganesh@gmail.com', 'Childern', 'meena T', 'menna@gmail.com', 10, '2020-06-10 22:25:10', '2020-06-10 22:25:10');

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
(2, '2020_06_10_154342_create_familys_table', 1),
(3, '2020_06_10_154937_create_clients_table', 2),
(4, '2020_06_10_155502_create_clients_table', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `familys`
--
ALTER TABLE `familys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `familys_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `familys`
--
ALTER TABLE `familys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
