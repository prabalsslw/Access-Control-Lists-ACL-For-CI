-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 11:49 AM
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
-- Database: `acltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `id` int(15) NOT NULL,
  `menu_name` varchar(250) DEFAULT NULL,
  `menu_slug` varchar(250) DEFAULT NULL,
  `menu_link` varchar(250) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id`, `menu_name`, `menu_slug`, `menu_link`, `is_active`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, 1, '2019-11-05 09:22:04'),
(2, 'Teacher', 'teacher', NULL, 1, '2019-11-05 09:22:16'),
(3, 'Student', 'student', NULL, 1, '2019-11-05 09:22:25'),
(4, 'Staff', 'staff', NULL, 1, '2019-11-05 09:22:48'),
(5, 'User', 'user', NULL, 1, '2019-11-05 09:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_roles`
--

CREATE TABLE `menu_roles` (
  `id` int(15) NOT NULL,
  `role_id` int(15) DEFAULT NULL,
  `menu_id` int(15) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_roles`
--

INSERT INTO `menu_roles` (`id`, `role_id`, `menu_id`, `is_active`, `updated_at`) VALUES
(1, 1, 1, 1, '2019-11-05 10:01:01'),
(2, 1, 2, 1, '2019-11-05 10:01:36'),
(3, 1, 3, 1, '2019-11-05 10:01:46'),
(4, 1, 4, 1, '2019-11-05 10:01:47'),
(5, 1, 5, 1, '2019-11-06 10:32:22'),
(6, 2, 1, 1, '2019-11-05 10:04:22'),
(7, 2, 2, 1, '2019-11-05 10:04:24'),
(8, 2, 3, 1, '2019-11-05 10:04:27'),
(9, 2, 4, 1, '2019-11-05 10:04:32'),
(10, 2, 5, 1, '2019-11-05 10:04:38'),
(11, 3, 3, 1, '2019-11-05 10:05:08'),
(12, 3, 4, 1, '2019-11-05 10:05:16'),
(13, 3, 5, 1, '2019-11-05 10:05:20'),
(14, 4, 3, 1, '2019-11-05 10:05:43'),
(15, 4, 5, 1, '2019-11-05 10:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(15) NOT NULL,
  `role` varchar(250) DEFAULT NULL,
  `role_slug` varchar(250) DEFAULT NULL,
  `is_spadmin` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `role_slug`, `is_spadmin`) VALUES
(1, 'Super Admin', 'super_admin', 1),
(2, 'Admin', 'admin', NULL),
(3, 'User', 'user', NULL),
(4, 'Client', 'client', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submenu_roles`
--

CREATE TABLE `submenu_roles` (
  `id` int(15) NOT NULL,
  `role_id` int(15) DEFAULT NULL,
  `sub_menu_id` int(15) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu_roles`
--

INSERT INTO `submenu_roles` (`id`, `role_id`, `sub_menu_id`, `is_active`, `updated_at`) VALUES
(1, 1, 1, 1, '2019-11-05 09:53:28'),
(2, 1, 2, 1, '2019-11-05 09:53:29'),
(3, 1, 3, 1, '2019-11-05 09:53:31'),
(4, 1, 4, 1, '2019-11-05 09:53:33'),
(5, 1, 5, 1, '2019-11-05 09:55:09'),
(6, 1, 6, 1, '2019-11-05 09:55:11'),
(7, 1, 7, 1, '2019-11-05 09:55:13'),
(8, 1, 8, 1, '2019-11-05 09:55:34'),
(9, 1, 9, 1, '2019-11-05 09:55:36'),
(10, 1, 10, 1, '2019-11-05 09:55:38'),
(11, 1, 11, 1, '2019-11-05 09:55:44'),
(12, 1, 12, 1, '2019-11-05 09:55:46'),
(13, 1, 13, 1, '2019-11-05 09:55:52'),
(14, 2, 1, 1, '2019-11-05 09:36:09'),
(15, 2, 2, 1, '2019-11-05 09:36:09'),
(16, 2, 3, 1, '2019-11-05 09:36:10'),
(17, 2, 4, 1, '2019-11-05 09:36:11'),
(18, 2, 5, 1, '2019-11-05 09:36:12'),
(19, 2, 6, 1, '2019-11-05 09:36:12'),
(20, 2, 7, 1, '2019-11-05 09:36:13'),
(21, 2, 8, 1, '2019-11-05 09:36:13'),
(22, 2, 9, 1, '2019-11-05 09:36:14'),
(23, 2, 10, 1, '2019-11-05 09:36:17'),
(24, 2, 11, 1, '2019-11-05 09:36:18'),
(25, 2, 12, 1, '2019-11-05 09:36:20'),
(26, 2, 13, 1, '2019-11-05 09:36:25'),
(27, 3, 2, 1, '2019-11-05 09:38:43'),
(28, 3, 5, 1, '2019-11-05 09:38:50'),
(29, 3, 6, 1, '2019-11-05 09:38:54'),
(30, 3, 7, 1, '2019-11-05 09:38:56'),
(31, 3, 8, 1, '2019-11-05 09:38:59'),
(32, 3, 9, 1, '2019-11-05 09:39:03'),
(33, 3, 10, 1, '2019-11-05 09:39:09'),
(34, 3, 11, 1, '2019-11-05 09:39:12'),
(35, 3, 12, 1, '2019-11-05 09:39:16'),
(36, 3, 13, 1, '2019-11-05 09:39:19'),
(37, 4, 8, 1, '2019-11-05 09:39:39'),
(38, 4, 9, 1, '2019-11-05 09:39:43'),
(39, 4, 10, 1, '2019-11-05 09:39:50'),
(40, 4, 11, 1, '2019-11-05 09:39:55'),
(41, 4, 12, 1, '2019-11-05 09:39:56'),
(42, 4, 13, 1, '2019-11-05 09:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(15) NOT NULL,
  `menu_id` int(15) DEFAULT NULL,
  `sub_menu_name` varchar(250) DEFAULT NULL,
  `sub_menu_slug` varchar(250) DEFAULT NULL,
  `sub_menu_link` varchar(250) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `menu_id`, `sub_menu_name`, `sub_menu_slug`, `sub_menu_link`, `is_active`, `updated_at`) VALUES
(1, 1, 'Create User', 'create_user', NULL, 1, '2019-11-05 09:25:07'),
(2, 1, 'Admission', 'admission', NULL, 1, '2019-11-05 09:25:14'),
(3, 1, 'Create Class', 'create_class', NULL, 1, '2019-11-05 09:25:20'),
(4, 1, 'Create Section', 'create_section', NULL, 1, '2019-11-05 09:25:29'),
(5, 1, 'Attendance', 'attendance', NULL, 1, '2019-11-05 09:26:37'),
(6, 2, 'Create Marksheet', 'create_marksheet', NULL, 1, '2019-11-05 09:29:25'),
(7, 2, 'Edit Marksheet', 'edit_marksheet', NULL, 1, '2019-11-05 09:29:53'),
(8, 3, 'My Details', 'my_details', NULL, 1, '2019-11-05 09:30:25'),
(9, 3, 'Report Card', 'report_card', NULL, 1, '2019-11-05 09:30:48'),
(10, 4, 'My Profile', 'my_profile', NULL, 1, '2019-11-05 09:31:08'),
(11, 4, 'Edit Profile', 'edit_profile', NULL, 1, '2019-11-05 09:31:27'),
(12, 5, 'Student Information', 'student_information', NULL, 1, '2019-11-05 09:32:33'),
(13, 5, 'Datewise Report', 'datewise_report', NULL, 1, '2019-11-05 09:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `role_id` int(15) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role_id`, `updated_at`) VALUES
(1, 'Prabal', 'prabal', '123456', 1, '2019-11-05 04:46:20'),
(2, 'Mallick', 'mallick', '123456', 2, '2019-11-05 04:46:36'),
(3, 'SSL', 'ssl', '123456', 3, '2019-11-05 04:46:56'),
(4, 'SSLCOM', 'sslcom', '123456', 4, '2019-11-05 04:47:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_roles`
--
ALTER TABLE `menu_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu_roles`
--
ALTER TABLE `submenu_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
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
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_roles`
--
ALTER TABLE `menu_roles`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submenu_roles`
--
ALTER TABLE `submenu_roles`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
