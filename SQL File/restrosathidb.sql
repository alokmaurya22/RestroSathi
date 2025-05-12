-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2025 at 10:48 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restrosathidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserType` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 1234596321, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2023-05-21 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `id` int NOT NULL,
  `bookingNo` bigint DEFAULT NULL,
  `fullName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emailId` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phoneNumber` bigint DEFAULT NULL,
  `bookingDate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bookingTime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noAdults` bigint DEFAULT NULL,
  `noChildrens` bigint DEFAULT NULL,
  `tableId` int DEFAULT NULL,
  `adminremark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `boookingStatus` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`id`, `bookingNo`, `fullName`, `emailId`, `phoneNumber`, `bookingDate`, `bookingTime`, `noAdults`, `noChildrens`, `tableId`, `adminremark`, `boookingStatus`, `postingDate`, `updationDate`) VALUES
(1, 7081250186, 'Anuj Kumar', 'ak@gmail.com', 1425362514, '2023-06-10', '14:00:00', 2, 1, 1, 'Booking accepted', 'Accepted', '2023-05-27 04:34:18', '2023-06-04 03:20:29'),
(2, 323168839, 'Shivani', 'shivani@gmail.com', 4563214520, '2023-06-10', '14:10:00', 4, 1, 3, 'Table booked.', 'Accepted', '2023-05-27 04:35:04', '2023-06-04 17:08:10'),
(3, 4813244763, 'Rahul', 'rahul@test.com', 7896123122, '2023-06-15', '20:00:00', 3, 1, 0, 'Table not available ', 'Rejected', '2023-05-27 04:35:33', '2025-05-12 22:46:49'),
(4, 2163886205, 'Garima Singh', 'gariam@test.com', 45632145632, '2023-06-24', '15:00:00', 2, 1, 5, 'Table Reserved', 'Accepted', '2023-06-05 00:44:57', '2023-06-05 13:54:10'),
(5, 6706998996, 'Alok', 'alok@gmail.com', 979121212, '12/14/2023', '1 : 03 PM', 2, 2, 4, 'Thanks For Visiting.', 'Accepted', '2023-12-13 19:37:58', '2025-05-12 22:46:56'),
(6, 9793821162, 'Alok Kumar Maurya', 'alok@gmail.com', 12121312311, '12/13/2023', '1 : 08 PM', 2, 2, NULL, NULL, NULL, '2023-12-13 19:38:22', NULL),
(7, 1440350921, '2132323', '21123@sdffd', 213123123, '12/12/2023', '1 : 08 PM', 2, 2, 4, 'Thankyou', 'Accepted', '2023-12-13 19:38:56', '2023-12-13 19:44:13'),
(8, 9057161532, 'Aman', 'aman@gmail.com', 97121213128, '12/21/2023', '1 : 20 PM', 3, 1, NULL, '2121', 'Rejected', '2023-12-13 19:50:41', '2025-05-12 22:47:06'),
(9, 2972309495, 'qwert', 'wert@sfg', 1234567, '12/14/2023', '10 : 06 AM', 3, 2, NULL, 'thank you', 'Accepted', '2023-12-15 04:37:45', '2023-12-15 04:41:20'),
(10, 3164639778, 'qwerty', 'werty@sdfgh', 1234567, '12/26/2023', '10 : 17 AM', 4, 6, NULL, 'sorry', 'Rejected', '2023-12-15 04:48:13', '2023-12-15 04:51:40'),
(11, 1380741430, 'asdfg', 'qwertrt@wdf', 1234567, '12/20/2023', '10 : 21 AM', 3, 7, NULL, 'sorry', 'Rejected', '2023-12-15 04:52:44', '2023-12-15 04:53:22'),
(12, 663521129, 'abc', 'abc@abc', 1234567890, '12/13/2023', '3 : 40 PM', 3, 3, NULL, NULL, NULL, '2023-12-15 08:11:24', NULL),
(13, 3140385164, 'abcd', 'abcd@abcd', 1234567890, '12/11/2023', '2 : 41 PM', 3, 4, NULL, NULL, NULL, '2023-12-15 08:16:00', NULL),
(14, 7617299099, 'asdf', 'asdf@asdgf', 1234567890, '12/12/2023', '2 : 57 PM', 2, 6, NULL, 'Thank You', 'Accepted', '2023-12-15 08:27:54', '2023-12-15 08:28:49'),
(15, 6875893013, 'qwertty', 'qwerty@wer', 6588687, '12/21/2023', '2 : 05 PM', 2, 1, NULL, 'thank you', 'Accepted', '2023-12-15 08:37:16', '2023-12-15 08:38:56'),
(16, 650298021, 'Aman Singh', 'asrajput12@gmail.com', 7312458977, '05/14/2025', '1 : 59 PM', 3, 2, NULL, 'Happy to see you here 😊.', 'Accepted', '2025-05-12 20:30:15', '2025-05-12 20:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblrestables`
--

CREATE TABLE `tblrestables` (
  `id` int NOT NULL,
  `tableNumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AddedBy` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrestables`
--

INSERT INTO `tblrestables` (`id`, `tableNumber`, `creationDate`, `AddedBy`) VALUES
(1, '1', '2023-05-27 03:50:35', 2),
(2, '2', '2023-05-27 03:50:55', 2),
(3, '1A', '2023-05-27 03:51:01', 2),
(4, '3', '2023-05-27 03:51:07', 2),
(5, '3A', '2023-05-27 03:51:11', 2),
(6, '3B', '2023-05-27 03:51:15', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrestables`
--
ALTER TABLE `tblrestables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblrestables`
--
ALTER TABLE `tblrestables`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
