-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2018 at 11:42 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbo_ELS`
--
CREATE DATABASE IF NOT EXISTS `dbo_ELS` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbo_ELS`;

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `classID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `classroomID` int(11) NOT NULL,
  `timeslotID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Classrooms`
--

CREATE TABLE IF NOT EXISTS `Classrooms` (
  `classroomID` int(10) unsigned NOT NULL,
  `roomName` varchar(60) NOT NULL,
  `roomCapacity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classrooms`
--

INSERT INTO `Classrooms` (`classroomID`, `roomName`, `roomCapacity`) VALUES
(1, 'Classroom 1', 10),
(2, 'Classroom 2', 10),
(3, 'Classroom 3', 10),
(4, 'Classroom 4', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE IF NOT EXISTS `Courses` (
  `courseID` int(11) unsigned NOT NULL,
  `courseName` varchar(60) NOT NULL,
  `courseDuration` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`courseID`, `courseName`, `courseDuration`) VALUES
(1, 'Beginner 1', 60),
(2, 'Beginner 2', 60),
(3, 'Academic 3', 60),
(4, 'Academic 4', 60);

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE IF NOT EXISTS `Students` (
  `studentID` int(10) unsigned NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `gender` enum('male','female','','') DEFAULT NULL,
  `street` varchar(120) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phoneNumber` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Timeslots`
--

CREATE TABLE IF NOT EXISTS `Timeslots` (
  `timeslotID` int(11) NOT NULL,
  `weekDay` varchar(60) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Classes`
--
ALTER TABLE `Classes`
  ADD PRIMARY KEY (`classID`),
  ADD KEY `classroomID` (`classroomID`),
  ADD KEY `timeslotID` (`timeslotID`),
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `Classrooms`
--
ALTER TABLE `Classrooms`
  ADD PRIMARY KEY (`classroomID`);

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `Timeslots`
--
ALTER TABLE `Timeslots`
  ADD PRIMARY KEY (`timeslotID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Classes`
--
ALTER TABLE `Classes`
  MODIFY `classID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Classrooms`
--
ALTER TABLE `Classrooms`
  MODIFY `classroomID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
  MODIFY `courseID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Students`
--
ALTER TABLE `Students`
  MODIFY `studentID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Timeslots`
--
ALTER TABLE `Timeslots`
  MODIFY `timeslotID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
