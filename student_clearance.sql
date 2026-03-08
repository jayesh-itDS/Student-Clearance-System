-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 06:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_clearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(3) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL,
  `photo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `designation`, `fullname`, `email`, `status`, `photo`) VALUES
(4, 'admin', 'admin', 'Super Admin', 'vijay ghule', 'vijayghule@gmail.com', 'Active', 'uploads/default.jpg'),
(5, 'akshay', '12345678', 'Librarian', 'akshay shinde', 'akshay123@gmail.com', 'Active', 'uploads/avatar_nick.png');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `ID` int(3) NOT NULL,
  `session` varchar(9) NOT NULL,
  `faculty` varchar(40) NOT NULL,
  `dept` varchar(40) NOT NULL,
  `amount` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`ID`, `session`, `faculty`, `dept`, `amount`) VALUES
(16, '2020/2021', 'Select faculty', 'Electrical Engineering', '30000'),
(17, '2022/2023', 'Science', 'Computer Science', '30000'),
(18, '2022/2023', 'Science', 'Business Management', '65000');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` int(4) NOT NULL,
  `feeID` varchar(25) NOT NULL,
  `studentID` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `datepaid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `feeID`, `studentID`, `amount`, `datepaid`) VALUES
(24, '8FAC46R2579D', '8', '20000', '2022-08-17 13:24:57'),
(25, 'DEAR92C6734B', '8', '80000', '2022-08-17 13:25:09'),
(26, 'R35BE41260A8', '0', '45000', '2023-04-25 05:21:21'),
(27, 'CA0R49FBE3D6', '0', '100000', '2023-04-25 05:22:05'),
(28, '4E8F3A9RC62D', '3', '30000', '2023-05-10 12:19:06'),
(29, 'ABC0498E217D', '3', '115000', '2023-05-10 12:21:08'),
(32, '5RCE08DFA196', '4', '15000', '2023-05-12 07:17:08'),
(33, 'BFD2459108EA', '7', '15000', '2023-05-12 09:05:22'),
(34, '736A8DE25RC0', '7', '15000', '2023-05-12 09:06:14'),
(35, '2RC8A35EDF01', '5', '30000', '2023-05-13 10:05:01'),
(36, '39F67RCD5214', '9', '15000', '2023-05-15 08:58:50'),
(37, '768ER25A93F1', '4', '5000', '2023-05-15 09:06:15'),
(38, 'F9DAR741B305', '1', '30000', '2023-06-30 17:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(3) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `matric_no` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `session` varchar(10) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `dept` varchar(44) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `is_hostel_approved` int(3) NOT NULL,
  `is_sport_approved` int(3) NOT NULL,
  `is_stud_affairs_approved` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `fullname`, `matric_no`, `password`, `session`, `faculty`, `dept`, `phone`, `photo`, `is_hostel_approved`, `is_sport_approved`, `is_stud_affairs_approved`) VALUES
(1, 'Ghule vijay ', '181589145', 'av25z0', '2021/2022', 'Science', 'Computer Science', '8975488512', 'uploads/avatar_nick.png', 1, 1, 1),
(4, 'Prathmesh Narale', '9876543210', '7741955355', '2022/2023', 'Science', 'Computer Science', '852369741', 'uploads/avatar_nick.png', 1, 1, 1),
(8, 'Akshay Shinde', '8766768832', '12345678', '2022/2023', 'Science', 'Computer Science', '7249422379', 'uploads/avatar_nick.png', 1, 1, 1),
(9, 'Shubham Kadam', '987654321', '6izuvg', '2022/2023', 'Science', 'Computer Science', '1111122222', 'uploads/avatar_nick.png', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

CREATE TABLE `tblsession` (
  `ID` int(3) NOT NULL,
  `session` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`ID`, `session`) VALUES
(1, '2020/2021'),
(2, '2021/2022'),
(3, '2022/2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsession`
--
ALTER TABLE `tblsession`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsession`
--
ALTER TABLE `tblsession`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
