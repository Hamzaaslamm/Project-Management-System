-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 08:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `record`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(20) NOT NULL,
  `CUSTOMER_NAME` varchar(64) NOT NULL,
  `CUSTOMER_CNIC` varchar(20) NOT NULL,
  `CUSTOMER_ADDRESS` varchar(64) NOT NULL,
  `CUSTOMER_PHONE_NO` varchar(20) NOT NULL,
  `CUSTOMER_EMAIL` varchar(50) DEFAULT NULL,
  `CUSTOMER_PASSWORD` varchar(20) NOT NULL,
  `PM_CNIC` varchar(20) DEFAULT NULL,
  `PF_PROJECT_ID` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `CUSTOMER_NAME`, `CUSTOMER_CNIC`, `CUSTOMER_ADDRESS`, `CUSTOMER_PHONE_NO`, `CUSTOMER_EMAIL`, `CUSTOMER_PASSWORD`, `PM_CNIC`, `PF_PROJECT_ID`) VALUES
(1, 'Ali', '341000-0000000-3', 'ABC City', '0321-1234537', '191400001@gift.edu.pk', '191400001', '34000-0000000-0', 1),
(2, 'Raza', '341000-0000000-4', 'BCD City', '0321-1234527', '191400002@gift.edu.pk', '191400002', '34000-0000000-0', 2),
(3, 'Riaz', '341000-0000000-5', 'BCE City', '0321-1234517', '191400003@gift.edu.pk', '191400003', '34000-0000000-0', 3),
(4, 'Faraz', '341000-0000000-6', 'DEF City', '0321-1234561', '191400004@gift.edu.pk', '191400004', '34000-0000000-0', 4),
(5, 'Zeeshan', '341000-0000000-7', 'GEC City', '0321-1234562', '191400005@gift.edu.pk', '191400005', '34000-0000000-0', 5),
(6, 'Alyas', '341000-0000000-8', 'FBC City', '0321-1234563', '191400006@gift.edu.pk', '191400006', '34000-0000000-0', 6),
(7, 'Sikandar', '341000-0000000-9', 'IBC City', '0321-1234564', '191400007@gift.edu.pk', '191400007', '34000-0000000-0', 7),
(8, 'Imran', '341000-0000001-2', 'ABJ City', '0321-1234565', '191400008@gift.edu.pk', '191400008', '34000-0000000-0', 8),
(9, 'Orangzaib', '341000-0000002-2', 'AKC City', '0321-1234566', '191400009@gift.edu.pk', '191400009', '34000-0000000-0', 9),
(10, 'Fayaz', '341000-0000003-2', 'AMC City', '0321-1234567', '191400010@gift.edu.pk', '191400010', '34000-0000000-0', 10),
(11, 'Mazil', '341000-0000004-2', 'ABN City', '0321-1234568', '191400011@gift.edu.pk', '191400011', '34000-0000000-0', 11);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OWNER_CNIC` varchar(20) NOT NULL,
  `OWNER_NAME` varchar(32) NOT NULL,
  `OWNER_EMAIL` varchar(50) NOT NULL,
  `OWNER_PHONE_NO` varchar(20) NOT NULL,
  `OWNER_ADDRESS` varchar(64) NOT NULL,
  `OWNER_STATE` varchar(20) NOT NULL,
  `OWNER_PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`OWNER_CNIC`, `OWNER_NAME`, `OWNER_EMAIL`, `OWNER_PHONE_NO`, `OWNER_ADDRESS`, `OWNER_STATE`, `OWNER_PASSWORD`) VALUES
('34000-0000000-1', 'Ahsan Ali', '191400070@gift.edu.pk', '0340-0000000', 'Gujranwala', 'Punjab', '191400070');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `TRANSCATION_ID` int(20) NOT NULL,
  `AMOUNT` int(30) NOT NULL,
  `C_CUSTOMER_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`TRANSCATION_ID`, `AMOUNT`, `C_CUSTOMER_ID`) VALUES
(1, 25000, 1),
(2, 28000, 2),
(3, 29000, 3),
(4, 52000, 4),
(5, 38000, 5),
(6, 15000, 6),
(7, 10000, 7),
(8, 18000, 8),
(9, 13000, 9),
(10, 89000, 10),
(11, 90000, 11);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `P_ID` int(60) NOT NULL,
  `P_NAME` varchar(64) NOT NULL,
  `P_DESCRIPTION` varchar(300) NOT NULL,
  `P_PHASE` varchar(20) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `DELIVERABLES` int(10) NOT NULL,
  `REQUIREMENTS` varchar(400) NOT NULL,
  `PROGRESS` varchar(64) NOT NULL,
  `TOTAL_AMOUNT` int(20) NOT NULL,
  `PAID_AMOUNT` int(20) NOT NULL,
  `PM_CNIC` varchar(20) DEFAULT NULL,
  `O_CNIC` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`P_ID`, `P_NAME`, `P_DESCRIPTION`, `P_PHASE`, `START_DATE`, `END_DATE`, `DELIVERABLES`, `REQUIREMENTS`, `PROGRESS`, `TOTAL_AMOUNT`, `PAID_AMOUNT`, `PM_CNIC`, `O_CNIC`) VALUES
(1, 'Project1', 'This is the description of Project1', 'Completed', '2020-12-08', '2021-05-28', 1, 'This is the requirement of Project1', '100%', 25000, 25000, '34000-0000000-0', '34000-0000000-1'),
(2, 'Project2', 'This is the description of Project2', 'Running', '2021-12-08', '2022-05-28', 2, 'This is the requirement of Project1', '50%', 28000, 20000, '34000-0000000-0', '34000-0000000-1'),
(3, 'Project3', 'This is the description of Project3', 'Completed', '2018-12-08', '2021-05-28', 3, 'This is the requirement of Project1', '100%', 29000, 29000, '34000-0000000-0', '34000-0000000-1'),
(4, 'Project4', 'This is the description of Project4', 'Pending', '2021-12-08', '2022-07-28', 1, 'This is the requirement of Project1', '0%', 52000, 5000, '34000-0000000-0', '34000-0000000-1'),
(5, 'Project5', 'This is the description of Project5', 'Completed', '2019-12-08', '2021-05-28', 2, 'This is the requirement of Project1', '100%', 38000, 38000, '34000-0000000-0', '34000-0000000-1'),
(6, 'Project6', 'This is the description of Project6', 'Pending', '2021-12-08', '2022-10-28', 3, 'This is the requirement of Project1', '0%', 15000, 5000, '34000-0000000-0', '34000-0000000-1'),
(7, 'Project7', 'This is the description of Project7', 'Running', '2021-12-08', '2022-01-28', 2, 'This is the requirement of Project1', '23%', 10000, 7000, '34000-0000000-0', '34000-0000000-1'),
(8, 'Project8', 'This is the description of Project8', 'Pending', '2021-12-08', '2022-02-28', 1, 'This is the requirement of Project1', '0%', 18000, 5000, '34000-0000000-0', '34000-0000000-1'),
(9, 'Project9', 'This is the description of Project9', 'Completed', '2015-12-08', '2021-05-28', 1, 'This is the requirement of Project1', '100%', 13000, 13000, '34000-0000000-0', '34000-0000000-1'),
(10, 'Project10', 'This is the description of Project10', 'Completed', '2017-12-08', '2021-05-28', 1, 'This is the requirement of Project1', '100%', 89000, 89000, '34000-0000000-0', '34000-0000000-1'),
(11, 'Project11', 'This is the description of Project11', 'Pending', '2021-12-08', '2022-09-28', 1, 'This is the requirement of Project1', '0%', 90000, 5000, '34000-0000000-0', '34000-0000000-1');

-- --------------------------------------------------------

--
-- Table structure for table `project_form`
--

CREATE TABLE `project_form` (
  `P_ID` int(32) NOT NULL,
  `P_NAME` varchar(64) NOT NULL,
  `P_DESCRIPTION` varchar(400) NOT NULL,
  `PACKAGE` varchar(64) NOT NULL,
  `REQUIREMENTS` varchar(400) NOT NULL,
  `DELIVERABLES` int(10) NOT NULL,
  `PM_CNIC` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_form`
--

INSERT INTO `project_form` (`P_ID`, `P_NAME`, `P_DESCRIPTION`, `PACKAGE`, `REQUIREMENTS`, `DELIVERABLES`, `PM_CNIC`) VALUES
(1, 'Project1', 'This is the description of Project1', 'Basic', 'This is the requirement of Project1', 1, '34000-0000000-0'),
(2, 'Project2', 'This is the description of Project2', 'Standard', 'This is the requirement of Project2', 2, '34000-0000000-0'),
(3, 'Project3', 'This is the description of Project3', 'Basic', 'This is the requirement of Project3', 3, '34000-0000000-0'),
(4, 'Project4', 'This is the description of Project4', 'Premium', 'This is the requirement of Project4', 1, '34000-0000000-0'),
(5, 'Project5', 'This is the description of Project5', 'Standard', 'This is the requirement of Project5', 2, '34000-0000000-0'),
(6, 'Project6', 'This is the description of Project6', 'Premium', 'This is the requirement of Project6', 3, '34000-0000000-0'),
(7, 'Project7', 'This is the description of Project7', 'Basic', 'This is the requirement of Project7', 2, '34000-0000000-0'),
(8, 'Project8', 'This is the description of Project8', 'Standard', 'This is the requirement of Project8', 1, '34000-0000000-0'),
(9, 'Project9', 'This is the description of Project9', 'Premium', 'This is the requirement of Project9', 1, '34000-0000000-0'),
(10, 'Project10', 'This is the description of Project10', 'Basic', 'This is the requirement of Project10', 1, '34000-0000000-0'),
(11, 'Project11', 'This is the description of Project11', 'Standard', 'This is the requirement of Project11', 1, '34000-0000000-0');

-- --------------------------------------------------------

--
-- Table structure for table `project_manager`
--

CREATE TABLE `project_manager` (
  `PM_CNIC` varchar(20) NOT NULL,
  `PM_NAME` varchar(64) NOT NULL,
  `PM_EMAIL` varchar(50) DEFAULT NULL,
  `PM_ADDRESS` varchar(64) NOT NULL,
  `PM_PHONE_NO` varchar(20) NOT NULL,
  `PM_PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_manager`
--

INSERT INTO `project_manager` (`PM_CNIC`, `PM_NAME`, `PM_EMAIL`, `PM_ADDRESS`, `PM_PHONE_NO`, `PM_PASSWORD`) VALUES
('34000-0000000-0', 'Hamza Aslam', '191400088@gift.edu.pk', 'Gujranwala', '0300-0000000', '191400088');

-- --------------------------------------------------------

--
-- Table structure for table `pro_pay`
--

CREATE TABLE `pro_pay` (
  `F_PROJECT_ID` int(60) DEFAULT NULL,
  `P_TRANSACTION_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pro_pay`
--

INSERT INTO `pro_pay` (`F_PROJECT_ID`, `P_TRANSACTION_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `CUSTOMER_EMAIL` (`CUSTOMER_EMAIL`),
  ADD KEY `FK_PRM_CNIC` (`PM_CNIC`),
  ADD KEY `FK_PF_PROJECT_ID` (`PF_PROJECT_ID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OWNER_CNIC`),
  ADD UNIQUE KEY `OWNER_EMAIL` (`OWNER_EMAIL`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`TRANSCATION_ID`),
  ADD KEY `FK_CUSTOMER_ID` (`C_CUSTOMER_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `FK_P_CNIC` (`PM_CNIC`),
  ADD KEY `FK_O_CNIC` (`O_CNIC`);

--
-- Indexes for table `project_form`
--
ALTER TABLE `project_form`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `FK_PM_CNIC` (`PM_CNIC`);

--
-- Indexes for table `project_manager`
--
ALTER TABLE `project_manager`
  ADD PRIMARY KEY (`PM_CNIC`),
  ADD UNIQUE KEY `PM_EMAIL` (`PM_EMAIL`);

--
-- Indexes for table `pro_pay`
--
ALTER TABLE `pro_pay`
  ADD KEY `Fk_F_PROJECT_ID` (`F_PROJECT_ID`),
  ADD KEY `Fk_P_TRANSACTION_ID` (`P_TRANSACTION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `TRANSCATION_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `P_ID` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project_form`
--
ALTER TABLE `project_form`
  MODIFY `P_ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_PF_PROJECT_ID` FOREIGN KEY (`PF_PROJECT_ID`) REFERENCES `project_form` (`P_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRM_CNIC` FOREIGN KEY (`PM_CNIC`) REFERENCES `project_manager` (`PM_CNIC`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_CUSTOMER_ID` FOREIGN KEY (`C_CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_O_CNIC` FOREIGN KEY (`O_CNIC`) REFERENCES `owner` (`OWNER_CNIC`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_P_CNIC` FOREIGN KEY (`PM_CNIC`) REFERENCES `project_manager` (`PM_CNIC`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `project_form`
--
ALTER TABLE `project_form`
  ADD CONSTRAINT `FK_PM_CNIC` FOREIGN KEY (`PM_CNIC`) REFERENCES `project_manager` (`PM_CNIC`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pro_pay`
--
ALTER TABLE `pro_pay`
  ADD CONSTRAINT `Fk_F_PROJECT_ID` FOREIGN KEY (`F_PROJECT_ID`) REFERENCES `project` (`P_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_P_TRANSACTION_ID` FOREIGN KEY (`P_TRANSACTION_ID`) REFERENCES `payment` (`TRANSCATION_ID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
