-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 07, 2020 at 04:30 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `ssp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodyweights`
--

CREATE TABLE `bodyweights` (
  `bodyweight_id` int(11) UNSIGNED NOT NULL,
  `lifter_id` int(11) UNSIGNED NOT NULL,
  `weight` double NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lifters`
--

CREATE TABLE `lifters` (
  `lifter_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bodyweights`
--
ALTER TABLE `bodyweights`
  ADD PRIMARY KEY (`bodyweight_id`),
  ADD KEY `lifter_idx` (`lifter_id`);

--
-- Indexes for table `lifters`
--
ALTER TABLE `lifters`
  ADD PRIMARY KEY (`lifter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bodyweights`
--
ALTER TABLE `bodyweights`
  MODIFY `bodyweight_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lifters`
--
ALTER TABLE `lifters`
  MODIFY `lifter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bodyweights`
--
ALTER TABLE `bodyweights`
  ADD CONSTRAINT `fk_lifters_lifterid` FOREIGN KEY (`lifter_id`) REFERENCES `lifters` (`lifter_id`);
COMMIT;
 
