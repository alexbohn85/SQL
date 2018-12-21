-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 21, 2018 at 07:34 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `classID` int(11) unsigned NOT NULL,
  `courseID` int(11) unsigned NOT NULL,
  `classroomID` int(11) unsigned NOT NULL,
  `timeslotID` int(11) unsigned NOT NULL,
  `employeeID` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`classID`, `courseID`, `classroomID`, `timeslotID`, `employeeID`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 6, 1),
(3, 1, 1, 2, 1),
(4, 1, 1, 7, 1),
(5, 1, 1, 3, 1),
(6, 1, 1, 8, 1),
(7, 1, 1, 4, 1),
(8, 1, 1, 9, 1),
(9, 1, 1, 10, 1),
(10, 1, 1, 5, 1),
(11, 2, 2, 1, 4),
(12, 2, 2, 6, 4),
(13, 2, 2, 2, 4),
(14, 2, 2, 7, 4),
(15, 2, 2, 3, 4),
(16, 2, 2, 8, 4),
(17, 2, 2, 4, 4),
(18, 2, 2, 9, 4),
(19, 2, 2, 10, 4),
(20, 2, 2, 5, 4),
(21, 3, 3, 1, 5),
(22, 3, 3, 6, 5),
(23, 3, 3, 2, 5),
(24, 3, 3, 7, 5),
(25, 3, 3, 3, 5),
(26, 3, 3, 8, 5),
(27, 3, 3, 4, 5),
(28, 3, 3, 9, 5),
(29, 3, 3, 10, 5),
(30, 3, 3, 5, 5),
(31, 4, 4, 1, 6),
(32, 4, 4, 6, 6),
(33, 4, 4, 2, 6),
(34, 4, 4, 7, 6),
(35, 4, 4, 3, 6),
(36, 4, 4, 8, 6),
(37, 4, 4, 4, 6),
(38, 4, 4, 9, 6),
(39, 4, 4, 10, 6),
(40, 4, 4, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Classrooms`
--

CREATE TABLE IF NOT EXISTS `Classrooms` (
  `classroomID` int(11) unsigned NOT NULL,
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
-- Table structure for table `Employees`
--

CREATE TABLE IF NOT EXISTS `Employees` (
  `employeeID` int(11) unsigned NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `occupationID` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`employeeID`, `firstName`, `lastName`, `occupationID`) VALUES
(1, 'Mike', 'Schmitd', 1),
(2, 'Jennifer', 'Oscar', 2),
(3, 'Patricia', 'Brown', 3),
(4, 'Tedd', 'Manfields', 1),
(5, 'Scott', 'Lacoque', 1),
(6, 'Yaka', 'Tamagotchi', 1),
(7, 'Vera', 'Fischer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Occupations`
--

CREATE TABLE IF NOT EXISTS `Occupations` (
  `occupationID` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Occupations`
--

INSERT INTO `Occupations` (`occupationID`, `title`) VALUES
(1, 'Teacher'),
(2, 'Adm Assistant'),
(3, 'Director');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`studentID`, `firstName`, `lastName`, `gender`, `street`, `city`, `country`, `phoneNumber`, `email`) VALUES
(1, 'alex', 'bohn', 'male', '7051 main street', 'vancouver', 'canada', '778-201-2019', 'alexbohn85@gmail.com'),
(2, 'ana', 'bohn', 'female', '320, hercilio luz street', 'brusque', 'brazil', '+554799809039', 'anabohn@gmail.com'),
(3, 'alex', 'orlando', 'male', '456 maria das dores street', 'sao paulo', 'brazil', '+551199987485', 'alexbohn86@gmail.com'),
(4, 'carlos', 'eduardo', 'male', '57 manoel tavares street', 'brusque', 'brazil', '+5547999809039', 'carloseduardo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `StudentsClass`
--

CREATE TABLE IF NOT EXISTS `StudentsClass` (
  `classID` int(11) unsigned NOT NULL,
  `studentID` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Timeslots`
--

CREATE TABLE IF NOT EXISTS `Timeslots` (
  `timeslotID` int(11) unsigned NOT NULL,
  `weekdayID` int(11) unsigned NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Timeslots`
--

INSERT INTO `Timeslots` (`timeslotID`, `weekdayID`, `startTime`, `endTime`) VALUES
(1, 1, '08:00:00', '12:00:00'),
(2, 2, '08:00:00', '12:00:00'),
(3, 3, '08:00:00', '12:00:00'),
(4, 4, '08:00:00', '12:00:00'),
(5, 5, '08:00:00', '12:00:00'),
(6, 1, '13:00:00', '17:00:00'),
(7, 2, '13:00:00', '17:00:00'),
(8, 3, '13:00:00', '17:00:00'),
(9, 4, '13:00:00', '17:00:00'),
(10, 5, '13:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Weekdays`
--

CREATE TABLE IF NOT EXISTS `Weekdays` (
  `weekdayID` int(11) unsigned NOT NULL,
  `weekdayName` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Weekdays`
--

INSERT INTO `Weekdays` (`weekdayID`, `weekdayName`) VALUES
(5, 'Friday'),
(1, 'Monday'),
(6, 'Saturday'),
(7, 'Sunday'),
(4, 'Thursday'),
(2, 'Tuesday'),
(3, 'Wednesday');

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
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `occupationID` (`occupationID`);

--
-- Indexes for table `Occupations`
--
ALTER TABLE `Occupations`
  ADD PRIMARY KEY (`occupationID`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `StudentsClass`
--
ALTER TABLE `StudentsClass`
  ADD KEY `classID` (`classID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `Timeslots`
--
ALTER TABLE `Timeslots`
  ADD PRIMARY KEY (`timeslotID`),
  ADD KEY `weekdayID` (`weekdayID`);

--
-- Indexes for table `Weekdays`
--
ALTER TABLE `Weekdays`
  ADD PRIMARY KEY (`weekdayID`),
  ADD UNIQUE KEY `weekdayName` (`weekdayName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Classes`
--
ALTER TABLE `Classes`
  MODIFY `classID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `Classrooms`
--
ALTER TABLE `Classrooms`
  MODIFY `classroomID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
  MODIFY `courseID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `employeeID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Occupations`
--
ALTER TABLE `Occupations`
  MODIFY `occupationID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Students`
--
ALTER TABLE `Students`
  MODIFY `studentID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Timeslots`
--
ALTER TABLE `Timeslots`
  MODIFY `timeslotID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Weekdays`
--
ALTER TABLE `Weekdays`
  MODIFY `weekdayID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Classes`
--
ALTER TABLE `Classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`timeslotID`) REFERENCES `Timeslots` (`timeslotID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`classroomID`) REFERENCES `Classrooms` (`classroomID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `classes_ibfk_3` FOREIGN KEY (`courseID`) REFERENCES `Courses` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `classes_ibfk_4` FOREIGN KEY (`employeeID`) REFERENCES `Employees` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `teste` FOREIGN KEY (`occupationID`) REFERENCES `Occupations` (`occupationID`);

--
-- Constraints for table `StudentsClass`
--
ALTER TABLE `StudentsClass`
  ADD CONSTRAINT `studentsclass_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `Classes` (`classID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `studentsclass_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `Students` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Timeslots`
--
ALTER TABLE `Timeslots`
  ADD CONSTRAINT `timeslots_ibfk_1` FOREIGN KEY (`weekdayID`) REFERENCES `Weekdays` (`weekdayID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
