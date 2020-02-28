-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 01:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system_design`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `student_id` int(10) NOT NULL,
  `faculty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_desc` varchar(255) NOT NULL,
  `credits` int(1) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `dept_desc` varchar(3000) NOT NULL,
  `faculty_chair_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Faculty_Id` int(10) NOT NULL,
  `Dept_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `hold_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `major_id` int(10) NOT NULL,
  `dept_id` int(10) NOT NULL,
  `major_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `major_requirements`
--

CREATE TABLE `major_requirements` (
  `major_id` int(11) NOT NULL,
  `req_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `minor`
--

CREATE TABLE `minor` (
  `minor_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `minor_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `minor_requirements`
--

CREATE TABLE `minor_requirements` (
  `minor_id` int(11) NOT NULL,
  `req_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `Researcher_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `GPA` decimal(3,0) NOT NULL,
  `student_type` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_holds`
--

CREATE TABLE `student_holds` (
  `student_id` int(10) NOT NULL,
  `hold_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Street_Address` varchar(200) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zipcode` int(5) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_Id`);

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD KEY `advisor_ibfk_1` (`faculty_id`),
  ADD KEY `advisor_ibfk_2` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `department_ibfk_1` (`faculty_chair_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty_Id`),
  ADD KEY `faculty_ibfk_2` (`Dept_Id`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`hold_type`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `major_requirements`
--
ALTER TABLE `major_requirements`
  ADD PRIMARY KEY (`major_id`,`req_course_id`);

--
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD PRIMARY KEY (`minor_id`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `minor_requirements`
--
ALTER TABLE `minor_requirements`
  ADD PRIMARY KEY (`minor_id`,`req_course_id`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`Researcher_Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_holds`
--
ALTER TABLE `student_holds`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_holds_ibfk_2` (`hold_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `minor`
--
ALTER TABLE `minor`
  MODIFY `minor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Admin_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `advisor`
--
ALTER TABLE `advisor`
  ADD CONSTRAINT `advisor_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`Faculty_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Faculty_Chair_Id`) REFERENCES `faculty` (`Faculty_Id`) ON DELETE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`Faculty_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`Dept_Id`) REFERENCES `department` (`Dept_Id`) ON DELETE CASCADE;

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `major_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`) ON DELETE CASCADE;

--
-- Constraints for table `major_requirements`
--
ALTER TABLE `major_requirements`
  ADD CONSTRAINT `major_courses_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE;

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `minor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`);

--
-- Constraints for table `minor_requirements`
--
ALTER TABLE `minor_requirements`
  ADD CONSTRAINT `minor_requirements_ibfk_1` FOREIGN KEY (`minor_id`) REFERENCES `minor` (`minor_id`);

--
-- Constraints for table `researcher`
--
ALTER TABLE `researcher`
  ADD CONSTRAINT `researcher_ibfk_1` FOREIGN KEY (`Researcher_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `student_holds`
--
ALTER TABLE `student_holds`
  ADD CONSTRAINT `student_holds_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_holds_ibfk_2` FOREIGN KEY (`hold_type`) REFERENCES `holds` (`hold_type`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
