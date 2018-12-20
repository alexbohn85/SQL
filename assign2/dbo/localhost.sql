-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2018 at 04:53 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ESL`
--

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `classID` int(11) NOT NULL AUTO_INCREMENT,
  `courseID` int(11) NOT NULL,
  `classroomID` int(11) NOT NULL,
  `timeslotID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  PRIMARY KEY (`classID`),
  KEY `classroomID` (`classroomID`),
  KEY `timeslotID` (`timeslotID`),
  KEY `employeeID` (`employeeID`),
  KEY `courseID` (`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Classrooms`
--

CREATE TABLE IF NOT EXISTS `Classrooms` (
  `classroomID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roomName` varchar(60) NOT NULL,
  `roomCapacity` int(11) NOT NULL,
  PRIMARY KEY (`classroomID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
  `courseID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `courseName` varchar(60) NOT NULL,
  `courseDuration` int(11) NOT NULL,
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
  `studentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL COMMENT '0 - Male / 1 - Female',
  `street` varchar(120) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phoneNumber` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Timeslots`
--

CREATE TABLE IF NOT EXISTS `Timeslots` (
  `timeslotID` int(11) NOT NULL AUTO_INCREMENT,
  `weekDay` varchar(60) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  PRIMARY KEY (`timeslotID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
