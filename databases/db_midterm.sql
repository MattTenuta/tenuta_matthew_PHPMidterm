-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2023 at 08:27 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_midterm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roles_id` mediumint(8) UNSIGNED NOT NULL,
  `roles_name` varchar(20) NOT NULL,
  `roles_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roles_id`, `roles_name`, `roles_desc`) VALUES
(1, 'Unregistered', 'Unregistered is the base role given  to new users'),
(2, 'Admin', 'Anyone in the admin role will have full power to do whatever they want'),
(3, 'Guest', 'The guest role will have limited access to features');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_lname` varchar(30) NOT NULL,
  `user_fname` varchar(30) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_photo` varchar(20) NOT NULL,
  `user_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_lname`, `user_fname`, `user_username`, `user_password`, `user_photo`, `user_role`) VALUES
(1, 'Griffin', 'Peter', 'PeterGriffin', 'PeterGriffin1', 'peter,jpg', '1'),
(3, 'Griffin', 'Lois', 'LoisGriffin', 'LoisGriffin1', 'lois.jpg', '1'),
(4, 'Griffin', 'Brian', 'BrianGriffin', 'BrianGriffin1', 'brian.jpg', '2'),
(5, 'Griffin', 'Stewie', 'StewieGriffin', 'StewieGriffin1', 'stewie.jpg', '3'),
(6, 'Griffin', 'Chris', 'ChrisGriffin', 'ChrisGriffin1', 'chris.jpg', '3'),
(7, 'Griffin', 'Meg', 'MegGriffin', 'MegGriffin1', 'meg.jpg', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roles_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roles_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
