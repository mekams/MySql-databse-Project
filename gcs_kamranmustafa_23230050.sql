-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 05:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gcs_kamranmustafa_23230050`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_ID` int(11) NOT NULL,
  `Billing_Period` varchar(50) DEFAULT NULL,
  `Total_Hours_Worked` decimal(6,2) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_ID`, `Billing_Period`, `Total_Hours_Worked`, `Customer_ID`) VALUES
(90001, 'January 2024', '40.00', 30001),
(90002, 'February 2024', '40.00', 30002),
(90003, 'March 2024', '40.00', 30003),
(90004, 'April 2024', '40.00', 30004),
(90005, 'May 2024', '40.00', 30005),
(90006, 'June 2024', '40.00', 30006),
(90007, 'July 2024', '40.00', 30007),
(90008, 'August 2024', '40.00', 30008),
(90009, 'September 2024', '40.00', 30009),
(90010, 'October 2024', '40.00', 30010),
(90011, 'November 2024', '40.00', 30011),
(90012, 'December 2024', '40.00', 30012),
(90013, 'January 2025', '40.00', 30013),
(90014, 'February 2025', '40.00', 30014),
(90015, 'April 2025', '40.00', 30015);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Middle_Initial` char(1) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Stakeholder_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Middle_Initial`, `Last_Name`, `Region`, `Phone_Number`, `Stakeholder_ID`) VALUES
(30001, 'Maria', 'A', 'Gonzalez', 'North America', '555-1234', 10016),
(30002, 'David', 'B', 'Perez', 'Europe', '555-5678', 10017),
(30003, 'Mary', 'C', 'Sanchez', 'Asia', '555-9012', 10018),
(30004, 'Carlos', 'D', 'Rivera', 'Australia', '555-3456', 10019),
(30005, 'Laura', 'E', 'Gomez', 'Africa', '555-7890', 10020),
(30006, 'Pedro', 'F', 'Diaz', 'South America', '555-2345', 10021),
(30007, 'Ana', 'G', 'Torres', 'Europe', '555-6789', 10022),
(30008, 'Juan', 'H', 'Vargas', 'North America', '555-0123', 10023),
(30009, 'Luis', 'I', 'Lopez', 'Asia', '555-4567', 10024),
(30010, 'Miguel', 'J', 'Martinez', 'Australia', '555-8901', 10025),
(30011, 'Elena', 'K', 'Garcia', 'Africa', '555-2345', 10026),
(30012, 'Rosa', 'L', 'Hernandez', 'South America', '555-6789', 10027),
(30013, 'Javier', 'M', 'Fernandez', 'Europe', '555-1234', 10028),
(30014, 'Gloria', 'N', 'Moreno', 'North America', '555-5678', 10029),
(30015, 'Sofia', 'O', 'Alvarez', 'Asia', '555-9012', 10030);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Middle_Initial` char(1) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Date_of_Hire` date DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Stakeholder_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `First_Name`, `Middle_Initial`, `Last_Name`, `Region`, `Date_of_Hire`, `Phone_Number`, `Stakeholder_ID`) VALUES
(20001, 'Robert', 'A', 'Wilson', 'North America', '2023-03-15', '555-1234', 10001),
(20002, 'Jennifer', 'B', 'Anderson', 'Europe', '2023-04-20', '555-5678', 10002),
(20003, 'Christopher', 'C', 'Thompson', 'Asia', '2023-05-10', '555-9012', 10003),
(20004, 'Jessica', 'D', 'Harris', 'Australia', '2023-06-05', '555-3456', 10004),
(20005, 'Matthew', 'E', 'Taylor', 'Africa', '2023-07-12', '555-7890', 10005),
(20006, 'Amanda', 'F', 'Moore', 'South America', '2023-08-25', '555-2345', 10006),
(20007, 'David', 'G', 'Jackson', 'Europe', '2023-09-30', '555-6789', 10007),
(20008, 'Sarah', 'H', 'White', 'North America', '2023-10-17', '555-0123', 10008),
(20009, 'Daniel', 'I', 'Adams', 'Asia', '2023-11-22', '555-4567', 10009),
(20010, 'Ashley', 'J', 'Nelson', 'Australia', '2023-12-01', '555-8901', 10010),
(20011, 'Michael', 'K', 'Roberts', 'Africa', '2024-01-05', '555-2345', 10011),
(20012, 'Emily', 'L', 'Thomas', 'South America', '2024-02-10', '555-6789', 10012),
(20013, 'Christopher', 'M', 'Hill', 'Europe', '2024-03-20', '555-1234', 10013),
(20014, 'Michelle', 'N', 'Young', 'North America', '2024-04-15', '555-5678', 10014),
(20015, 'Joseph', 'O', 'King', 'Asia', '2024-05-05', '555-9012', 10015);

-- --------------------------------------------------------

--
-- Table structure for table `employee_project`
--

CREATE TABLE `employee_project` (
  `Employee_ID` int(11) NOT NULL,
  `Project_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_project`
--

INSERT INTO `employee_project` (`Employee_ID`, `Project_ID`) VALUES
(20001, 40001),
(20002, 40002),
(20003, 40003),
(20004, 40004),
(20005, 40005),
(20006, 40006),
(20007, 40007),
(20008, 40008),
(20009, 40009),
(20010, 40010),
(20011, 40011),
(20012, 40012),
(20013, 40013),
(20014, 40014),
(20015, 40015);

-- --------------------------------------------------------

--
-- Table structure for table `employee_skill`
--

CREATE TABLE `employee_skill` (
  `Employee_ID` int(11) NOT NULL,
  `Skill_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_skill`
--

INSERT INTO `employee_skill` (`Employee_ID`, `Skill_ID`) VALUES
(20001, 70001),
(20002, 70002),
(20003, 70003),
(20004, 70004),
(20005, 70005),
(20006, 70006),
(20007, 70007),
(20008, 70008),
(20009, 70009),
(20010, 70010),
(20011, 70011),
(20012, 70012),
(20013, 70013),
(20014, 70014),
(20015, 70015);

-- --------------------------------------------------------

--
-- Table structure for table `employee_task`
--

CREATE TABLE `employee_task` (
  `Employee_ID` int(11) NOT NULL,
  `Task_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_task`
--

INSERT INTO `employee_task` (`Employee_ID`, `Task_ID`) VALUES
(20001, 50001),
(20002, 50002),
(20003, 50003),
(20004, 50004),
(20005, 50005),
(20006, 50006),
(20007, 50007),
(20008, 50008),
(20009, 50009),
(20010, 50010),
(20011, 50011),
(20012, 50012),
(20013, 50013),
(20014, 50014),
(20015, 50015);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `Plan_ID` int(11) NOT NULL,
  `Time_Period` varchar(50) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`Plan_ID`, `Time_Period`, `Employee_ID`) VALUES
(60001, 'Weekly', 20001),
(60002, 'Bi-weekly', 20002),
(60003, 'Monthly', 20003),
(60004, 'Weekly', 20004),
(60005, 'Bi-weekly', 20005),
(60006, 'Monthly', 20006),
(60007, 'Weekly', 20007),
(60008, 'Bi-weekly', 20008),
(60009, 'Monthly', 20009),
(60010, 'Weekly', 20010),
(60011, 'Bi-weekly', 20011),
(60012, 'Monthly', 20012),
(60013, 'Weekly', 20013),
(60014, 'Bi-weekly', 20014),
(60015, 'Monthly', 20015);

-- --------------------------------------------------------

--
-- Table structure for table `plan_type`
--

CREATE TABLE `plan_type` (
  `Plan_ID` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_type`
--

INSERT INTO `plan_type` (`Plan_ID`, `Type`) VALUES
(60001, 'Design'),
(60002, 'Development'),
(60003, 'Design'),
(60003, 'Development'),
(60004, 'Development'),
(60005, 'Design'),
(60006, 'Development'),
(60007, 'Design'),
(60007, 'Development'),
(60008, 'Design'),
(60009, 'Development'),
(60010, 'Design'),
(60010, 'Development'),
(60011, 'Development'),
(60012, 'Design'),
(60013, 'Development'),
(60013, 'Design'),
(60014, 'Design'),
(60014, 'Development'),
(60015, 'Design');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Project_ID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Budget` decimal(10,2) DEFAULT NULL,
  `Actual_Cost` decimal(10,2) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_ID`, `Description`, `Date`, `Budget`, `Actual_Cost`, `Employee_ID`, `Customer_ID`) VALUES
(40001, 'Website Development', '2024-01-10', '5000.00', '4800.00', 20001, 30001),
(40002, 'Mobile App Development', '2024-02-15', '10000.00', '9500.00', 20002, 30002),
(40003, 'Marketing Campaign', '2024-03-20', '8000.00', '7800.00', 20003, 30003),
(40004, 'Product Launch', '2024-04-25', '12000.00', '11500.00', 20004, 30004),
(40005, 'Consulting Project', '2024-05-30', '6000.00', '5800.00', 20005, 30005),
(40006, 'Research Project', '2024-06-05', '7000.00', '6800.00', 20006, 30006),
(40007, 'Event Planning', '2024-07-10', '9000.00', '8500.00', 20007, 30007),
(40008, 'Training Program', '2024-08-15', '3000.00', '2800.00', 20008, 30008),
(40009, 'Software Implementation', '2024-09-20', '15000.00', '14500.00', 20009, 30009),
(40010, 'E-commerce Integration', '2024-10-25', '11000.00', '10500.00', 20010, 30010),
(40011, 'Customer Support Improvement', '2024-11-30', '4000.00', '3800.00', 20011, 30011),
(40012, 'Financial Analysis', '2025-01-05', '8500.00', '8200.00', 20012, 30012),
(40013, 'Supply Chain Optimization', '2025-02-10', '9500.00', '9200.00', 20013, 30013),
(40014, 'HR Restructuring', '2025-03-15', '7500.00', '7200.00', 20014, 30014),
(40015, 'Quality Assurance', '2025-04-20', '5000.00', '4800.00', 20015, 30015);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `Skill_ID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Rate_of_Pay` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`Skill_ID`, `Description`, `Rate_of_Pay`) VALUES
(70001, 'Web Development', '50.00'),
(70002, 'Mobile App Development', '60.00'),
(70003, 'Marketing', '45.00'),
(70004, 'Product Management', '55.00'),
(70005, 'Consulting', '70.00'),
(70006, 'Research', '65.00'),
(70007, 'Event Planning', '40.00'),
(70008, 'Training', '30.00'),
(70009, 'Software Development', '75.00'),
(70010, 'Integration', '65.00'),
(70011, 'Customer Support', '35.00'),
(70012, 'Financial Analysis', '80.00'),
(70013, 'Supply Chain Management', '85.00'),
(70014, 'HR Management', '40.00'),
(70015, 'Quality Assurance', '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `stakeholder`
--

CREATE TABLE `stakeholder` (
  `Stakeholder_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Middle_Initial` char(1) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stakeholder`
--

INSERT INTO `stakeholder` (`Stakeholder_ID`, `First_Name`, `Middle_Initial`, `Last_Name`, `Region`, `Phone_Number`) VALUES
(10001, 'Robert', 'A', 'Wilson', 'North America', '555-1234'),
(10002, 'Jennifer', 'B', 'Anderson', 'Europe', '555-5678'),
(10003, 'Christopher', 'C', 'Thompson', 'Asia', '555-9012'),
(10004, 'Jessica', 'D', 'Harris', 'Australia', '555-3456'),
(10005, 'Matthew', 'E', 'Taylor', 'Africa', '555-7890'),
(10006, 'Amanda', 'F', 'Moore', 'South America', '555-2345'),
(10007, 'David', 'G', 'Jackson', 'Europe', '555-6789'),
(10008, 'Sarah', 'H', 'White', 'North America', '555-0123'),
(10009, 'Daniel', 'I', 'Adams', 'Asia', '555-4567'),
(10010, 'Ashley', 'J', 'Nelson', 'Australia', '555-8901'),
(10011, 'Michael', 'K', 'Roberts', 'Africa', '555-2345'),
(10012, 'Emily', 'L', 'Thomas', 'South America', '555-6789'),
(10013, 'Christopher', 'M', 'Hill', 'Europe', '555-1234'),
(10014, 'Michelle', 'N', 'Young', 'North America', '555-5678'),
(10015, 'Joseph', 'O', 'King', 'Asia', '555-9012'),
(10016, 'Maria', 'A', 'Gonzalez', 'North America', '555-1234'),
(10017, 'David', 'B', 'Perez', 'Europe', '555-5678'),
(10018, 'Mary', 'C', 'Sanchez', 'Asia', '555-9012'),
(10019, 'Carlos', 'D', 'Rivera', 'Australia', '555-3456'),
(10020, 'Laura', 'E', 'Gomez', 'Africa', '555-7890'),
(10021, 'Pedro', 'F', 'Diaz', 'South America', '555-2345'),
(10022, 'Ana', 'G', 'Torres', 'Europe', '555-6789'),
(10023, 'Juan', 'H', 'Vargas', 'North America', '555-0123'),
(10024, 'Luis', 'I', 'Lopez', 'Asia', '555-4567'),
(10025, 'Miguel', 'J', 'Martinez', 'Australia', '555-8901'),
(10026, 'Elena', 'K', 'Garcia', 'Africa', '555-2345'),
(10027, 'Rosa', 'L', 'Hernandez', 'South America', '555-6789'),
(10028, 'Javier', 'M', 'Fernandez', 'Europe', '555-1234'),
(10029, 'Gloria', 'N', 'Moreno', 'North America', '555-5678'),
(10030, 'Sofia', 'O', 'Alvarez', 'Asia', '555-9012');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `Task_ID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Starting_Date` date DEFAULT NULL,
  `Ending_Date` date DEFAULT NULL,
  `Plan_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`Task_ID`, `Description`, `Starting_Date`, `Ending_Date`, `Plan_ID`) VALUES
(50001, 'Design UI', '2024-01-10', '2024-01-20', 60001),
(50002, 'Develop Frontend', '2024-01-20', '2024-01-30', 60002),
(50003, 'Develop Backend', '2024-01-30', '2024-02-10', 60003),
(50004, 'Testing', '2024-02-10', '2024-02-15', 60004),
(50005, 'Market Research', '2024-03-20', '2024-03-30', 60005),
(50006, 'Advertising Campaign', '2024-03-30', '2024-04-10', 60006),
(50007, 'Product Launch Event', '2024-04-25', '2024-04-30', 60007),
(50008, 'Customer Training', '2024-05-30', '2024-06-05', 60008),
(50009, 'Software Development', '2024-06-05', '2024-06-15', 60009),
(50010, 'Integration Testing', '2024-07-10', '2024-07-20', 60010),
(50011, 'Event Management', '2024-08-15', '2024-08-25', 60011),
(50012, 'Training Delivery', '2024-09-20', '2024-09-30', 60012),
(50013, 'Implementation Planning', '2024-10-25', '2024-11-05', 60013),
(50014, 'Analysis', '2024-11-30', '2025-01-05', 60014),
(50015, 'Optimization', '2025-02-10', '2025-02-20', 60015);

-- --------------------------------------------------------

--
-- Table structure for table `work_log`
--

CREATE TABLE `work_log` (
  `Log_ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Total_Hours_Worked` decimal(6,2) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Bill_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_log`
--

INSERT INTO `work_log` (`Log_ID`, `Date`, `Total_Hours_Worked`, `Employee_ID`, `Bill_ID`) VALUES
(80001, '2024-01-10', '8.00', 20001, 90001),
(80002, '2024-01-20', '8.00', 20002, 90002),
(80003, '2024-01-30', '8.00', 20003, 90003),
(80004, '2024-02-10', '8.00', 20004, 90004),
(80005, '2024-03-20', '8.00', 20005, 90005),
(80006, '2024-03-30', '8.00', 20006, 90006),
(80007, '2024-04-25', '8.00', 20007, 90007),
(80008, '2024-05-30', '8.00', 20008, 90008),
(80009, '2024-06-05', '8.00', 20009, 90009),
(80010, '2024-07-10', '8.00', 20010, 90010),
(80011, '2024-08-15', '8.00', 20011, 90011),
(80012, '2024-09-20', '8.00', 20012, 90012),
(80013, '2024-10-25', '8.00', 20013, 90013),
(80014, '2024-11-30', '8.00', 20014, 90014),
(80015, '2025-02-10', '8.00', 20015, 90015);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Stakeholder_ID` (`Stakeholder_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD KEY `Stakeholder_ID` (`Stakeholder_ID`);

--
-- Indexes for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD PRIMARY KEY (`Employee_ID`,`Project_ID`),
  ADD KEY `Project_ID` (`Project_ID`);

--
-- Indexes for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD PRIMARY KEY (`Employee_ID`,`Skill_ID`),
  ADD KEY `Skill_ID` (`Skill_ID`);

--
-- Indexes for table `employee_task`
--
ALTER TABLE `employee_task`
  ADD PRIMARY KEY (`Employee_ID`,`Task_ID`),
  ADD KEY `Task_ID` (`Task_ID`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`Plan_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `plan_type`
--
ALTER TABLE `plan_type`
  ADD KEY `Plan_ID` (`Plan_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`Skill_ID`);

--
-- Indexes for table `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD PRIMARY KEY (`Stakeholder_ID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`Task_ID`),
  ADD KEY `Plan_ID` (`Plan_ID`);

--
-- Indexes for table `work_log`
--
ALTER TABLE `work_log`
  ADD PRIMARY KEY (`Log_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `Bill_ID` (`Bill_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Stakeholder_ID`) REFERENCES `stakeholder` (`Stakeholder_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Stakeholder_ID`) REFERENCES `stakeholder` (`Stakeholder_ID`);

--
-- Constraints for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD CONSTRAINT `employee_project_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `employee_project_ibfk_2` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`Project_ID`);

--
-- Constraints for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD CONSTRAINT `employee_skill_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `employee_skill_ibfk_2` FOREIGN KEY (`Skill_ID`) REFERENCES `skill` (`Skill_ID`);

--
-- Constraints for table `employee_task`
--
ALTER TABLE `employee_task`
  ADD CONSTRAINT `employee_task_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `employee_task_ibfk_2` FOREIGN KEY (`Task_ID`) REFERENCES `task` (`Task_ID`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `plan_type`
--
ALTER TABLE `plan_type`
  ADD CONSTRAINT `plan_type_ibfk_1` FOREIGN KEY (`Plan_ID`) REFERENCES `plan` (`Plan_ID`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`Plan_ID`) REFERENCES `plan` (`Plan_ID`);

--
-- Constraints for table `work_log`
--
ALTER TABLE `work_log`
  ADD CONSTRAINT `work_log_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `work_log_ibfk_2` FOREIGN KEY (`Bill_ID`) REFERENCES `bill` (`Bill_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
