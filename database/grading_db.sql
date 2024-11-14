-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 11:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisers`
--

CREATE TABLE `advisers` (
  `adviser_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade_id` varchar(5) NOT NULL,
  `section` varchar(20) NOT NULL,
  `program` varchar(5) NOT NULL,
  `school_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ATT_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `MONTH` varchar(15) NOT NULL,
  `DAYS_OF_CLASSES` int(5) NOT NULL,
  `DAYS_PRESENT` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ATT_ID`, `STUDENT_ID`, `SYI_ID`, `MONTH`, `DAYS_OF_CLASSES`, `DAYS_PRESENT`) VALUES
(25, 2, 3, 'June', 0, 0),
(26, 2, 3, 'July', 0, 0),
(27, 2, 3, 'August', 0, 0),
(28, 2, 3, 'September', 0, 0),
(29, 2, 3, 'October', 0, 0),
(30, 2, 3, 'November', 0, 0),
(31, 2, 3, 'December', 0, 0),
(32, 2, 3, 'January', 0, 0),
(33, 2, 3, 'February', 0, 0),
(34, 2, 3, 'March', 0, 0),
(35, 2, 3, 'April', 0, 0),
(36, 2, 3, 'May', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `awss`
--

CREATE TABLE `awss` (
  `id` int(200) NOT NULL,
  `ff` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_b`
--

CREATE TABLE `data_b` (
  `db_id` int(10) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_base`
--

CREATE TABLE `data_base` (
  `db_id` int(10) NOT NULL,
  `dn_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade`, `status`) VALUES
(1, '7', ''),
(2, '8', ''),
(3, '9', ''),
(4, '10', '');

-- --------------------------------------------------------

--
-- Table structure for table `grades_per_subject`
--

CREATE TABLE `grades_per_subject` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `YEAR` int(5) NOT NULL,
  `SUBJECT` varchar(20) NOT NULL,
  `PERIODIC_GRADING` int(5) NOT NULL,
  `GRADES` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(10) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `transaction`, `user_id`, `date_added`) VALUES
(36, 'logged out', 1, '2021-02-26 09:34:59'),
(37, 'logged in', 1, '2021-02-26 09:38:19'),
(38, 'logged in', 1, '2021-02-26 11:57:05'),
(39, 'added Science in the subject list', 1, '2021-02-26 11:57:42'),
(40, 'printed Angel Jude Suarez permanent record', 1, '2021-02-26 11:58:23'),
(41, 'added record of m m', 0, '2021-02-26 12:00:26'),
(42, 'printed Angel Jude Suarez permanent record', 1, '2021-02-26 12:00:46'),
(43, 'logged out', 1, '2021-02-26 12:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `PROGRAM_ID` int(20) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`PROGRAM_ID`, `PROGRAM`, `DESCRIPTION`) VALUES
(1, 'Regular', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_candidates`
--

CREATE TABLE `promotion_candidates` (
  `id` int(10) NOT NULL,
  `STUDENT_ID` int(10) NOT NULL,
  `SY` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `SY_ID` int(10) NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`SY_ID`, `school_year`, `status`) VALUES
(1, '2016-2017', 'No'),
(2, '2017-2018', 'No'),
(3, '2018-2019', 'No'),
(4, '2019-2020', 'Yes'),
(5, '2017-2018', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` int(12) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `STREET` varchar(30) NOT NULL,
  `PROVINCE` varchar(30) NOT NULL,
  `TOWN` varchar(30) NOT NULL,
  `BRGY` varchar(30) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` int(6) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` varchar(15) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` varchar(6) NOT NULL,
  `TOTAL_NO_OF_YEARS` varchar(5) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `LRN_NO`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `GENDER`, `DATE_OF_BIRTH`, `ADDRESS`, `BIRTH_PLACE`, `PARENT_GUARDIAN`, `P_ADDRESS`, `INT_COURSE_COMP`, `SCHOOL_YEAR`, `GEN_AVE`, `TOTAL_NO_OF_YEARS`, `PROGRAM`) VALUES
(2, '11111', 'Suarez', 'Angel Jude', 'Reyes', 'MALE', '1996-02-11', 'Himamaylan City', 'Brgy. Tooy Himamaylan City', 'Michael Suarez', 'Himamaylan City', 'San Ramon Catholic School', '2004-2010', '85', '6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_int_info`
--

CREATE TABLE `student_int_info` (
  `ID` int(30) NOT NULL,
  `STUDENT_ID` varchar(30) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR_START` year(4) NOT NULL,
  `SCHOOL_YEAR_ENDS` year(4) NOT NULL,
  `GEN_AVE` int(5) NOT NULL,
  `TOTAL_NO_YEARS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_year_info`
--

CREATE TABLE `student_year_info` (
  `SYI_ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SCHOOL` varchar(100) NOT NULL,
  `YEAR` varchar(15) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `ADVANCE_UNIT` varchar(10) NOT NULL,
  `LACK_UNIT` varchar(10) NOT NULL,
  `ADVISER` varchar(40) NOT NULL,
  `GEN_AVE` varchar(10) NOT NULL,
  `RANK` varchar(10) NOT NULL,
  `TO_BE_CLASSIFIED` varchar(10) NOT NULL,
  `TDAYS_OF_CLASSES` int(5) NOT NULL,
  `TDAYS_PRESENT` int(5) NOT NULL,
  `ACTION` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year_info`
--

INSERT INTO `student_year_info` (`SYI_ID`, `STUDENT_ID`, `SCHOOL`, `YEAR`, `SECTION`, `TOTAL_NO_OF_YEAR`, `SCHOOL_YEAR`, `ADVANCE_UNIT`, `LACK_UNIT`, `ADVISER`, `GEN_AVE`, `RANK`, `TO_BE_CLASSIFIED`, `TDAYS_OF_CLASSES`, `TDAYS_PRESENT`, `ACTION`) VALUES
(3, 2, 'School', '1', '1', 7, '2019-2020', '', '', '', '90.1666666', '', '', 0, 0, 'Promoted');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `FOR` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SUBJECT_ID`, `SUBJECT`, `FOR`, `DESCRIPTION`) VALUES
(1, 'English', 'All', 'English'),
(2, 'Math', 'All', 'Math'),
(3, 'Science', 'All', 'dsaf');

-- --------------------------------------------------------

--
-- Table structure for table `total_grades_subjects`
--

CREATE TABLE `total_grades_subjects` (
  `TGS_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `SUBJECT` int(20) NOT NULL,
  `1ST_GRADING` varchar(10) NOT NULL,
  `2ND_GRADING` varchar(10) NOT NULL,
  `3RD_GRADING` varchar(10) NOT NULL,
  `4TH_GRADING` varchar(10) NOT NULL,
  `UNITS` varchar(10) NOT NULL,
  `FINAL_GRADES` varchar(10) NOT NULL,
  `PASSED_FAILED` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_grades_subjects`
--

INSERT INTO `total_grades_subjects` (`TGS_ID`, `STUDENT_ID`, `SYI_ID`, `SUBJECT`, `1ST_GRADING`, `2ND_GRADING`, `3RD_GRADING`, `4TH_GRADING`, `UNITS`, `FINAL_GRADES`, `PASSED_FAILED`) VALUES
(5, 2, 3, 2, '90', '95', '96', '97', '', '94.50', 'PASSED'),
(6, 2, 3, 1, '85', '86', '87', '88', '', '86.50', 'PASSED'),
(7, 2, 3, 3, '88', '88', '90', '92', '', '89.50', 'PASSED');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `USER` varchar(10) NOT NULL,
  `PASSWORD` text NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `LASTNAME`, `FIRSTNAME`, `USER`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'admin', 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 'ADMINISTRATOR'),
(2, 'staff', 'staff', 'staff', 'de9bf5643eabf80f4a56fda3bbb84483', 'STAFF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisers`
--
ALTER TABLE `advisers`
  ADD PRIMARY KEY (`adviser_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ATT_ID`);

--
-- Indexes for table `data_b`
--
ALTER TABLE `data_b`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `data_base`
--
ALTER TABLE `data_base`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`PROGRAM_ID`);

--
-- Indexes for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`SY_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_int_info`
--
ALTER TABLE `student_int_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_year_info`
--
ALTER TABLE `student_year_info`
  ADD PRIMARY KEY (`SYI_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SUBJECT_ID`);

--
-- Indexes for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  ADD PRIMARY KEY (`TGS_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisers`
--
ALTER TABLE `advisers`
  MODIFY `adviser_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ATT_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `data_b`
--
ALTER TABLE `data_b`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_base`
--
ALTER TABLE `data_base`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `PROGRAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `SY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_int_info`
--
ALTER TABLE `student_int_info`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_year_info`
--
ALTER TABLE `student_year_info`
  MODIFY `SYI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  MODIFY `TGS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
