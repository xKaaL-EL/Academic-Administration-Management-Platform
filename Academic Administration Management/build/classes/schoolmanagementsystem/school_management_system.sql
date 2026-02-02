-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2022 at 02:21 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

--
-- Database: `school_management_system`
--
CREATE DATABASE IF NOT EXISTS `school_management_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_management_system`;


DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `student_strength` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;




-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `examid` int(22) NOT NULL AUTO_INCREMENT,
  `examname` varchar(255) NOT NULL,
  `examterm` varchar(255) NOT NULL,
  `examdate` varchar(255) NOT NULL,
  `examclass` varchar(255) NOT NULL,
  `examsection` varchar(255) NOT NULL,
  `examsubject` varchar(255) NOT NULL,
  PRIMARY KEY (`examid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;



--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `studentid` int(22) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `studentid` int(22) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(255) NOT NULL,
  `parentname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `studentmobileno` varchar(255) NOT NULL,
  `studentaddress` varchar(255) NOT NULL,
  `studentclass` varchar(255) NOT NULL,
  `studentsection` varchar(255) NOT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectcode` varchar(22) NOT NULL,
  `subjectname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `phone`, `address`, `uname`, `password`, `utype`) VALUES
('Guddi Prasad', '9080456723', 'Nagpur, India', 'Guddi-P1729', '1234@G', 'Admin'),
('The Heroic KaaL-EL', '9846456321', 'Bihar, India', 'Kaal-EL1729', '1234@K', 'Student'),
('Hrithik Dhanraj', '9632145874', 'Maharashtra, India', 'Hrithik-D1729', '1234@H', 'Teacher');


--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classname`, `section`, `student_strength`) VALUES
('10th', 'A', 45),
('10th', 'B', 42),
('9th', 'A', 40),
('9th', 'B', 38),
('8th', 'A', 36),
('8th', 'B', 34),
('7th', 'A', 32),
('7th', 'B', 30),
('6th', 'A', 28),
('6th', 'B', 26);


--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectcode`, `subjectname`) VALUES
('SUB101', 'Mathematics'),
('SUB102', 'Science'),
('SUB103', 'English'),
('SUB104', 'Hindi'),
('SUB105', 'Social Science'),
('SUB106', 'Computer'),
('SUB107', 'Physics'),
('SUB108', 'Chemistry'),
('SUB109', 'Biology'),
('SUB110', 'History');


--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `qualification`, `salary`, `phone`, `email`, `address`) VALUES
('Rajesh Sharma', 'M.Sc Maths', '35000', '9876543210', 'rajesh@gmail.com', 'Delhi'),
('Sunita Verma', 'M.A English', '33000', '9876543211', 'sunita@gmail.com', 'Mumbai'),
('Amit Singh', 'M.Sc Physics', '36000', '9876543212', 'amit@gmail.com', 'Patna'),
('Neha Gupta', 'M.Sc Chemistry', '34000', '9876543213', 'neha@gmail.com', 'Bhopal'),
('Ravi Kumar', 'B.Ed', '30000', '9876543214', 'ravi@gmail.com', 'Ranchi'),
('Pooja Mehta', 'M.Sc Biology', '32000', '9876543215', 'pooja@gmail.com', 'Jaipur'),
('Anil Yadav', 'MCA', '40000', '9876543216', 'anil@gmail.com', 'Lucknow'),
('Kavita Joshi', 'M.A Hindi', '31000', '9876543217', 'kavita@gmail.com', 'Indore'),
('Suresh Patel', 'M.A History', '29000', '9876543218', 'suresh@gmail.com', 'Surat'),
('Deepa Nair', 'M.Ed', '37000', '9876543219', 'deepa@gmail.com', 'Kochi');


--
-- Dumping data for table `student`
--

INSERT INTO `student`
(`studentname`, `parentname`, `dateofbirth`, `gender`, `studentmobileno`, `studentaddress`, `studentclass`, `studentsection`)
VALUES
('Rahul Verma', 'Suresh Verma', '2008-05-12', 'Male', '9000000001', 'Delhi', '10th', 'A'),
('Anjali Singh', 'Rakesh Singh', '2009-03-21', 'Female', '9000000002', 'Patna', '9th', 'A'),
('Aman Kumar', 'Vinod Kumar', '2010-07-15', 'Male', '9000000003', 'Ranchi', '8th', 'B'),
('Pooja Sharma', 'Mahesh Sharma', '2008-11-10', 'Female', '9000000004', 'Jaipur', '10th', 'B'),
('Rohit Yadav', 'Satish Yadav', '2009-01-09', 'Male', '9000000005', 'Lucknow', '9th', 'B'),
('Sneha Patel', 'Kiran Patel', '2011-02-17', 'Female', '9000000006', 'Ahmedabad', '7th', 'A'),
('Vikas Gupta', 'Alok Gupta', '2010-06-20', 'Male', '9000000007', 'Kanpur', '8th', 'A'),
('Nikita Joshi', 'Manoj Joshi', '2011-09-14', 'Female', '9000000008', 'Udaipur', '7th', 'B'),
('Aditya Mishra', 'Ramesh Mishra', '2012-04-05', 'Male', '9000000009', 'Prayagraj', '6th', 'A'),
('Riya Nair', 'Suresh Nair', '2012-12-25', 'Female', '9000000010', 'Trivandrum', '6th', 'B');


--
-- Dumping data for table `exam`
--

INSERT INTO `exam`
(`examname`, `examterm`, `examdate`, `examclass`, `examsection`, `examsubject`)
VALUES
('Unit Test 1', 'Term 1', '2024-04-10', '10', 'A', 'Mathematics'),
('Unit Test 1', 'Term 1', '2024-04-11', '10', 'B', 'Science'),
('Mid Term', 'Term 1', '2024-06-15', '9', 'A', 'English'),
('Mid Term', 'Term 1', '2024-06-16', '9', 'B', 'History'),
('Final Exam', 'Term 2', '2024-10-05', '8', 'A', 'Geography'),
('Final Exam', 'Term 2', '2024-10-06', '8', 'B', 'Mathematics'),
('Unit Test 2', 'Term 2', '2024-08-12', '7', 'A', 'Science'),
('Unit Test 2', 'Term 2', '2024-08-13', '7', 'B', 'English'),
('Annual Exam', 'Term 2', '2024-12-01', '6', 'A', 'Computer'),
('Annual Exam', 'Term 2', '2024-12-02', '6', 'B', 'Hindi');



--
-- Dumping data for table `mark`
--

INSERT INTO `mark`
(`studentid`, `studentname`, `subject`, `class`, `marks`, `term`)
VALUES
(1, 'Rahul Verma', 'Maths', '10th', '85', 'Term 1'),
(2, 'Anjali Singh', 'English', '9th', '78', 'Term 1'),
(3, 'Aman Kumar', 'Science', '8th', '82', 'Term 2'),
(4, 'Pooja Sharma', 'Hindi', '10th', '88', 'Term 1'),
(5, 'Rohit Yadav', 'Maths', '9th', '75', 'Term 2'),
(6, 'Sneha Patel', 'Science', '7th', '80', 'Term 2'),
(7, 'Vikas Gupta', 'Computer', '8th', '90', 'Term 1'),
(8, 'Nikita Joshi', 'English', '7th', '84', 'Term 1'),
(9, 'Aditya Mishra', 'Maths', '6th', '76', 'Term 1'),
(10,'Riya Nair', 'Hindi', '6th', '89', 'Term 2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
