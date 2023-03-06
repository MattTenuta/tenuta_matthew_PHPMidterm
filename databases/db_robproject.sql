-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 04, 2023 at 06:30 PM
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
-- Database: `db_robproject`
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
(1, 'Father', 'A father is the male parent of a child. Besides the paternal bonds of a father to his children, the father may have a parental, legal, and social relationship with the child that carries with it certain rights and obligations.'),
(2, 'Mother', 'A mother is a female parent: mothers nurture and mother children. It\'s also a term for an elderly woman or mother superior. Your mother is the woman who gave birth to you: mothers are parents, the female equivalent of a father.'),
(3, 'Dog', 'A dog is a domestic mammal of the family Canidae and the order Carnivora. Its scientific name is Canis lupus familiaris. Dogs are a subspecies of the gray wolf, and they are also related to foxes and jackals. Dogs are one of the two most ubiquitous and most popular domestic animals in the world.'),
(4, 'Baby', 'A very young child, especially one newly or recently born. Babies are always cute and very adorable. We love them because they are full of positive vibes and have a different perspective to view the world'),
(5, 'Son', 'a boy or man in relation to either or both of his parents. A son should make a father proud to the cusp of envy. A father should wish he had the life his son leads. Lastly, a son should assist and protect the family in the absence of his father. Father and son should exist independently and function interdependently at the same time.'),
(6, 'Daughter', 'a girl or woman in relation to either or both of her parents. A daughter starts taking care of her parents and adds so much love and joy to their lives. More than a child, she becomes their friend and provides the emotional support that parents often need as they start to grow older. She ensures they have everything that makes their life better and happier.');

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
(3, 'Griffin', 'Lois', 'LoisGriffin', 'LoisGriffin1', 'lois.jpg', '2'),
(4, 'Griffin', 'Brian', 'BrianGriffin', 'BrianGriffin1', 'brian.jpg', '3'),
(5, 'Griffin', 'Stewie', 'StewieGriffin', 'StewieGriffin1', 'stewie.jpg', '4'),
(6, 'Griffin', 'Chris', 'ChrisGriffin', 'ChrisGriffin1', 'chris.jpg', '5'),
(7, 'Griffin', 'Meg', 'MegGriffin', 'MegGriffin1', 'meg.jpg', '6');

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
