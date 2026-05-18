-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2026 at 07:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `category`, `image_url`, `file_url`) VALUES
(1, 'ConnectED', 'Education', 'https://static.vecteezy.com/system/resources/previews/019/614/406/non_2x/android-logo-android-icon-free-free-vector.jpg', '/static/files/app1.zip'),
(2, 'SSPP', 'Finance', 'https://static.vecteezy.com/system/resources/previews/019/614/406/non_2x/android-logo-android-icon-free-free-vector.jpg', '/static/files/app2.zip'),
(3, 'Clinique', 'Health', 'https://static.vecteezy.com/system/resources/previews/019/614/406/non_2x/android-logo-android-icon-free-free-vector.jpg', '/static/files/app3.zip'),
(4, 'GFinds', 'Government', 'https://static.vecteezy.com/system/resources/previews/019/614/406/non_2x/android-logo-android-icon-free-free-vector.jpg', '/static/files/app4.zip'),
(5, 'LinkedApp', 'Telecomunication', 'https://static.vecteezy.com/system/resources/previews/019/614/406/non_2x/android-logo-android-icon-free-free-vector.jpg', '/static/files/app5.zip');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `app1` int(11) NOT NULL,
  `app2` int(11) NOT NULL,
  `app3` int(11) NOT NULL,
  `app4` int(11) NOT NULL,
  `app5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
