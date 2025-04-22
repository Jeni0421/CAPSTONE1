-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 02:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone1`
--

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `or_number` varchar(50) NOT NULL,
  `received_by` int(11) NOT NULL,
  `payment_method` enum('cash','check','bank_transfer') NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `cb_number` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `beneficiaries` text DEFAULT NULL,
  `emergency_name` varchar(255) NOT NULL,
  `emergency_relationship` varchar(100) NOT NULL,
  `emergency_address` text NOT NULL,
  `emergency_contact` varchar(20) NOT NULL,
  `date_issued` date DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `civil_status` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `spouse_age` int(11) DEFAULT NULL,
  `spouse_occupation` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `parent_address` text DEFAULT NULL,
  `number_of_children` int(11) DEFAULT NULL,
  `children_info` text DEFAULT NULL,
  `educational_attainment` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `other_income` varchar(255) DEFAULT NULL,
  `annual_income` decimal(15,2) DEFAULT NULL,
  `elementary_school` varchar(255) DEFAULT NULL,
  `elementary_address` varchar(255) DEFAULT NULL,
  `elementary_year_graduated` year(4) DEFAULT NULL,
  `secondary_school` varchar(255) DEFAULT NULL,
  `secondary_address` varchar(255) DEFAULT NULL,
  `secondary_year_graduated` year(4) DEFAULT NULL,
  `college_school` varchar(255) DEFAULT NULL,
  `college_address` varchar(255) DEFAULT NULL,
  `college_year_graduated` year(4) DEFAULT NULL,
  `vocational_school` varchar(255) DEFAULT NULL,
  `vocational_address` varchar(255) DEFAULT NULL,
  `vocational_year_graduated` year(4) DEFAULT NULL,
  `membership_date` date DEFAULT NULL,
  `cooperative_position` varchar(255) DEFAULT NULL,
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_contact_address` text DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `agrarian_beneficiary` enum('Yes','No') DEFAULT NULL,
  `farm_area` decimal(10,2) DEFAULT NULL,
  `farm_type` enum('Irrigated','Rainfed') DEFAULT NULL,
  `is_tenant` enum('Yes','No') DEFAULT NULL,
  `recruited_by` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `signed_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `cb_number`, `first_name`, `middle_name`, `last_name`, `profile_picture`, `address`, `dob`, `email`, `gender`, `contact_number`, `beneficiaries`, `emergency_name`, `emergency_relationship`, `emergency_address`, `emergency_contact`, `date_issued`, `nickname`, `civil_status`, `age`, `place_of_birth`, `nationality`, `religion`, `spouse_name`, `spouse_age`, `spouse_occupation`, `father_name`, `mother_name`, `parent_address`, `number_of_children`, `children_info`, `educational_attainment`, `occupation`, `other_income`, `annual_income`, `elementary_school`, `elementary_address`, `elementary_year_graduated`, `secondary_school`, `secondary_address`, `secondary_year_graduated`, `college_school`, `college_address`, `college_year_graduated`, `vocational_school`, `vocational_address`, `vocational_year_graduated`, `membership_date`, `cooperative_position`, `emergency_contact_name`, `emergency_contact_address`, `relation`, `agrarian_beneficiary`, `farm_area`, `farm_type`, `is_tenant`, `recruited_by`, `signature`, `signed_date`) VALUES
(1, 'pot123', 'Pot', 'Pat', 'Pit', NULL, 'Sta. Rita. Calapan City', '2000-12-12', 'Pat@gmail.com', 'Male', '09517412166', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Lai123', 'LAIREEN', 'Alias', 'ABRIGANTE', NULL, 'Sta. Rita. Calapan City', '2003-12-08', 'laireenabrigante02@gmail.com', 'Female', '09517412165', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Eman123', 'Emmanuel', 'Manalo', 'Abrigante', NULL, 'Sta. Rita Calapan ', '1979-06-02', 'laireenabrigante@gmail.com', 'Male', '09287032144', NULL, 'Myrna Abrigante', 'Wife', 'Sta. Rita. Calapan City', '09517412165', '2025-02-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'John123', 'John', 'Alias', 'Abrigante', NULL, 'SXSXX', '2000-12-12', 'laireen@gmail.com', 'Male', '09517412165', NULL, 'dfacsdc', 'wdfwdcdw', 'wdfwdwdc', '09876543212', '2025-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Kai123', 'Kaizah', 'Manalo', 'Luzon', NULL, 'Sta. Rita. Calapan City', '2000-12-12', 'pangit@gmail.com', 'Female', '09517412165', NULL, 'qwdqsdq', 'qshdqsd', 'asdsadED', '09876543212', '2025-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Jen123', 'Jenilyn', 'Wangit', 'Zaulda', NULL, 'Batino Calapan, City', '2004-04-21', 'zauldajenilyn08@gmail.com', '', '09456198050', NULL, 'Cristina', 'Mother', 'Batino Calapan, City', '09365022798', '2024-12-12', 'Jen', 'Single', 20, 'Batino ', 'Filipino', 'Christian', 'sfcdc', 19, 'wfewfwf', 'Rolly', 'Christian', 'Batino Calapan, City', 3, 'fvsfaagagfsdgdb', 'ADFSFDSDF', 'fsfg', '12000', 12445.00, 'Sta. Rita. elementary School', 'Sta. Rita. Calapan City', '2015', 'Canubing Natinal High School', 'labiang 2', '2021', 'Mindoro State University', 'Masipit', '2025', 'N/A', 'labiang 2', '0000', '2024-12-12', 'member', 'reyven manalo', 'Batino Calapan, City', 'DGMGJM', 'Yes', 1.00, 'Rainfed', 'Yes', 'eefDFf', 'wfgasfgasfgfd', '2025-03-01'),
(18, 'Pau123', 'Pau', 'A.', 'Abrigante', NULL, 'Sta. Rita. Calapan City', '2003-12-12', 'zauldajenilyn@gmail.com', '', '09517412165', NULL, 'ABRIGANTE, LAIREEN MAE ALIAS', 'Wife', 'Sta. Rita. Calapan City', '09517412165', '2024-12-12', 'Pau', 'Single', 21, 'Provincial', 'Filipino', 'Christian', 'sfcdc', 12, 'wfewfwf', 'Emman', 'Myrna', 'Sta. Rita. Calapan City', 2, 'oiyru6t6rditf', 'ADFSFDSDF', 'fsfg', '12000', 121344.00, 'Sta. Rita. elementary School', 'Sta. Rita. Calapan City', '2015', 'Canubing Natinal High School', 'Sta. Rita. Calapan City', '2021', 'Mindoro State University', 'Sta. Rita. Calapan', '2025', 'N/A', 'Sta. Rita. Calapan City', '0000', '2025-03-04', 'member', NULL, NULL, 'DGMGJM', 'Yes', 1.00, 'Irrigated', 'Yes', 'dfsgfsgfsg', 'FDFSDCFDS', '2025-03-04'),
(21, 'Myrna123', 'Myrna', 'Alias', 'Abrigante', NULL, 'Sta. Rita. Calapan City', '1979-12-11', 'Myrna@gmail.com', 'Female', '09517412165', NULL, 'ABRIGANTE, LAIREEN MAE ALIAS', 'Wife', 'Sta. Rita. Calapan City', '09517412165', '2024-12-12', 'Myrna', 'Single', 45, 'Provincial', 'Filipino', 'Christian', 'sfcdc', 12, 'wfewfwf', 'Emman', 'Myrna', 'Sta. Rita. Calapan City', 2, 'WgSGDbgSRgGrGsfGWG', 'ADFSFDSDF', 'fsfg', '12000', 121344.00, 'Sta. Rita. elementary School', 'Sta. Rita. Calapan City', '2015', 'Canubing Natinal High School', 'Sta. Rita. Calapan City', '2021', 'Mindoro State University', 'Sta. Rita. Calapan', '2025', 'N/A', 'Sta. Rita. Calapan City', '0000', '2025-03-12', 'member', NULL, NULL, 'DGMGJM', 'Yes', 1.00, 'Irrigated', 'Yes', 'dfsgfsgfsg', 'FDFSDCFDS', '2025-03-12'),
(23, 'Bhie123', 'Bhie', 'Bat', 'Manalo', NULL, 'Sta. Rita. Calapan City', '2003-12-08', 'Bhie@gmail.com', 'Female', '09517412165', NULL, 'ABRIGANTE, LAIREEN MAE ALIAS', 'Wife', 'Sta. Rita. Calapan City', '09517412165', '2025-03-16', 'Bhie', 'Single', 21, 'Provincial', 'Filipino', 'Christian', 'sfcdc', 12, 'wfewfwf', 'Emman', 'Myrna', 'Sta. Rita. Calapan City', 2, 'Laireen 18\r\nMae     18', 'ADFSFDSDF', 'fsfg', '12000', 121344.00, 'Sta. Rita. elementary School', 'Sta. Rita. Calapan City', '2015', 'Canubing Natinal High School', 'Sta. Rita. Calapan City', '2021', 'Mindoro State University', 'Sta. Rita. Calapan', '2025', 'N/A', 'Sta. Rita. Calapan City', '0000', '2025-03-16', 'member', NULL, NULL, 'DGMGJM', 'Yes', 1.00, 'Irrigated', 'Yes', 'dfsgfsgfsg', 'FDFSDCFDS', '2025-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `regular_agricultural_loans`
--

CREATE TABLE `regular_agricultural_loans` (
  `cb_number` varchar(50) NOT NULL,
  `application_no` varchar(50) NOT NULL,
  `application_date` date NOT NULL,
  `spouse_name` varchar(100) DEFAULT NULL,
  `member_address` text NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `coop_id_number` varchar(50) DEFAULT NULL,
  `loan_type` varchar(50) DEFAULT 'Regular/Agricultural',
  `loan_amount` decimal(12,2) NOT NULL,
  `annual_income` decimal(12,2) DEFAULT NULL,
  `income_source` varchar(100) DEFAULT NULL,
  `collateral` varchar(100) DEFAULT NULL,
  `loan_purpose` text DEFAULT NULL,
  `paid_up_capital` decimal(12,2) DEFAULT NULL,
  `previous_loan_amount` decimal(12,2) DEFAULT NULL,
  `outstanding_balance` decimal(12,2) DEFAULT NULL,
  `cbu_status` enum('Updated','Not Updated') NOT NULL,
  `borrower_type` enum('New Member','New Borrower','Old Member','Old Borrower') NOT NULL,
  `loan_status` enum('With O/B Balance','Current','Restructured','Past Due','Others') NOT NULL,
  `application_status` enum('Pending','Approved','Disapproved','Released') DEFAULT 'Pending',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regular_agricultural_loans`
--

INSERT INTO `regular_agricultural_loans` (`cb_number`, `application_no`, `application_date`, `spouse_name`, `member_address`, `contact_number`, `account_number`, `coop_id_number`, `loan_type`, `loan_amount`, `annual_income`, `income_source`, `collateral`, `loan_purpose`, `paid_up_capital`, `previous_loan_amount`, `outstanding_balance`, `cbu_status`, `borrower_type`, `loan_status`, `application_status`, `date_created`, `last_updated`) VALUES
('Jen123', '111', '2025-03-30', 'sfcdc', 'dvafdv', '09517412165', '098', '551', 'Regular/Agricultural', 10000.00, 121344.00, 'work', '24424', 'Emergency', 12000.00, 10000.00, 1000.00, 'Updated', 'New Member', 'With O/B Balance', 'Pending', '2025-03-30 14:00:11', '2025-03-30 14:00:11'),
('Jen123', '174', '2025-03-30', 'sfcdc', 'Sta ', '09517412165', '098', '551', 'Regular/Agricultural', 10000.00, 121344.00, 'work', '24424', 'Farm Equipment', 12000.00, 10000.00, 1000.00, 'Updated', 'New Member', 'With O/B Balance', 'Pending', '2025-03-30 14:46:49', '2025-03-30 14:46:49'),
('Myrna123', '177', '2025-03-30', 'sfcdc', 'sTA', '09517412165', '098', '551', 'Regular/Agricultural', 10000.00, 121344.00, 'work', '24424', 'Others', 12000.00, 10000.00, 1000.00, 'Updated', 'New Member', 'With O/B Balance', 'Pending', '2025-03-30 15:38:01', '2025-03-30 15:38:01'),
('Jen123', '237', '2025-03-30', 'sfcdc', 'Sta rita ', '09517412165', '098', '551', 'Regular/Agricultural', 10000.00, 121344.00, 'work', '24424', 'Others', 12000.00, 10000.00, 1000.00, 'Updated', 'New Member', 'With O/B Balance', 'Pending', '2025-03-30 14:35:50', '2025-03-30 14:35:50'),
('Jen123', '300', '2025-04-20', 'kghkgkj', 'Calapan', '09456198050', '98', '551', 'Regular/Agricultural', 100000.00, 200000.00, 'work', 'adcsdsdvdsvc', 'Emergency', 300.00, 50000.00, 100000.00, 'Updated', 'New Member', 'With O/B Balance', 'Pending', '2025-04-20 00:53:50', '2025-04-20 00:53:50'),
('Jen123', '301', '2025-04-20', 'kghkgkj', 'Calapan', '09456198050', '098', '551', 'Regular/Agricultural', 100000.00, 100000.00, 'work', 'adcsdsdvdsvc', 'Others', 12000.00, 50000.00, 20000.00, 'Updated', 'New Member', 'With O/B Balance', 'Pending', '2025-04-20 01:18:52', '2025-04-20 01:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `salary_bonuses_loans`
--

CREATE TABLE `salary_bonuses_loans` (
  `cb_number` varchar(50) NOT NULL,
  `application_no` varchar(50) NOT NULL,
  `application_date` date NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_initial` varchar(10) DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `length_of_service` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `office_agency` varchar(150) DEFAULT NULL,
  `basic_monthly_salary` decimal(12,2) DEFAULT NULL,
  `net_take_home_pay` decimal(12,2) DEFAULT NULL,
  `spouse_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) NOT NULL,
  `loan_type` enum('New','Salary Loan','Renewal','Bonus') NOT NULL,
  `loan_amount` decimal(12,2) NOT NULL,
  `application_status` enum('Pending','Approved','Disapproved','Released') DEFAULT 'Pending',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_bonuses_loans`
--

INSERT INTO `salary_bonuses_loans` (`cb_number`, `application_no`, `application_date`, `last_name`, `first_name`, `middle_initial`, `municipality`, `position`, `length_of_service`, `age`, `address`, `office_agency`, `basic_monthly_salary`, `net_take_home_pay`, `spouse_name`, `contact_no`, `loan_type`, `loan_amount`, `application_status`, `date_created`, `last_updated`) VALUES
('Myrna123', '131', '2025-03-30', 'Abrigante', 'Myrna', 'ALIAS', 'Calapan', 'member', 3, 45, 'Sta. Rita. Calapan City', 'ABRIGANTE, LAIREEN MAE ALIAS', 12000.00, 10000.00, 'sfcdc', '09517412165', 'Bonus', 10000.00, 'Pending', '2025-03-30 15:37:07', '2025-03-30 15:37:07'),
('Jen123', '302', '2025-04-20', 'Zaulda', 'Jenilyn', 'Wangit', 'Calapan', 'member', 1, 62, 'Balanga Batino Calapan City Oriental Mindoro', 'HGJFDY', 15000.00, 15000.00, 'kghkgkj', '09456198050', 'Salary Loan', 75000.00, 'Pending', '2025-04-20 01:42:01', '2025-04-20 01:42:01'),
('Jen123', '4562', '2025-03-30', 'Abrigante', 'Myrna', 'ALIAS', 'Calapan', 'member', 3, 45, 'Sta. Rita. Calapan City', 'ABRIGANTE, LAIREEN MAE ALIAS', 12000.00, 10000.00, 'sfcdc', '09517412165', 'Salary Loan', 10000.00, 'Pending', '2025-03-30 14:46:17', '2025-03-30 14:46:17'),
('Jen123', '500', '2025-04-20', 'Zaulda', 'Jenilyn', 'Wangit', 'Calapan', 'member', 3, 20, 'Balanga Batino Calapan City Oriental Mindoro', 'HGJFDY', 50000.00, 45000.00, 'kghkgkj', '09456198050', 'Salary Loan', 100000.00, 'Pending', '2025-04-20 00:34:55', '2025-04-20 00:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `salary_loan_transactions`
--

CREATE TABLE `salary_loan_transactions` (
  `id` int(11) NOT NULL,
  `cb_number` varchar(20) NOT NULL,
  `loan_type` enum('salary','bonuses') NOT NULL,
  `loan_amount` decimal(12,2) NOT NULL,
  `previous_balance` decimal(12,2) NOT NULL,
  `new_balance` decimal(12,2) NOT NULL,
  `service_fee` decimal(12,2) NOT NULL,
  `processing_fee` decimal(12,2) NOT NULL,
  `total_deductions` decimal(12,2) NOT NULL,
  `total_loan_received` decimal(12,2) NOT NULL,
  `application_type` enum('new','renew') NOT NULL,
  `member_fee` decimal(12,2) NOT NULL,
  `share_capital` decimal(12,2) NOT NULL,
  `bayanihan_savings` decimal(12,2) NOT NULL,
  `total_or_amount` decimal(12,2) NOT NULL,
  `take_home_amount` decimal(12,2) NOT NULL,
  `transaction_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_loan_transactions`
--

INSERT INTO `salary_loan_transactions` (`id`, `cb_number`, `loan_type`, `loan_amount`, `previous_balance`, `new_balance`, `service_fee`, `processing_fee`, `total_deductions`, `total_loan_received`, `application_type`, `member_fee`, `share_capital`, `bayanihan_savings`, `total_or_amount`, `take_home_amount`, `transaction_date`) VALUES
(2, 'Myrna123', 'salary', 10000.00, 0.00, 10000.00, 200.00, 100.00, 300.00, 9700.00, 'renew', 0.00, 300.00, 500.00, 800.00, 8900.00, '2025-04-20 12:18:39'),
(3, 'Jen123', 'salary', 50000.00, 0.00, 50000.00, 1000.00, 500.00, 1500.00, 48500.00, 'renew', 0.00, 1500.00, 500.00, 2000.00, 46500.00, '2025-04-20 12:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cb_number` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL DEFAULT 'member',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cb_number`, `password`, `role`, `created_at`, `reset_token`) VALUES
(3, 'ADMIN_NEW', '$2b$10$x0c0qGvm./6rJ4d4wY0fiunI7zgztEvutPN6TGEWJ.dNOGqhJc8ka', 'admin', '2025-02-16 01:57:41', NULL),
(17, 'pot123', '$2b$10$6yvuHkeX5UvTfrEPAxYnTO7lQ8P5wyvWFmZKLiSxuVnknF0JwrOhm', 'member', '2025-02-17 23:58:00', NULL),
(21, 'Lai123', '$2b$10$Wcig0cBjf0yKi.7kK5mLo.FPGcPm9MuKQ4FrMo/3WfpYXUBV2tTai', 'member', '2025-02-18 00:44:00', '5xcrtl02yjf'),
(25, 'Eman123', '$2b$10$wYocSzloCpvfEWjczIjhke2uN1DW3pd7g3VZ62K3DEibYLX/.ecVK', 'member', '2025-02-19 11:24:19', 'ktjhpp6mswf'),
(42, 'John123', '$2b$10$zy9S4dGf7.SOuzIE358Jd.p35u8hAvlYaqig1ZxW3I8PgL4eitbpK', 'member', '2025-02-22 02:51:26', NULL),
(45, 'Kai123', '$2b$10$4rDekbKrByqx5Jb8Unz87eRE2fh3VaAjQuElNnTa1ejTkv42WRxpy', 'member', '2025-02-23 05:13:09', NULL),
(50, 'Jen123', '$2b$10$1GNUQ.peJPACeqAinDTd/.cr5e6o/cjZSRKoA.IPkbojlRJiHkzi.', 'member', '2025-03-01 15:50:47', 'k6t9pf6mqgr'),
(58, 'Pau123', '$2b$10$c4/CDUxJA5roBEwHac8uy.WjBLWY.Y.vJVrrROOy7Gz5164TvUbmG', 'member', '2025-03-04 12:38:26', NULL),
(62, 'Myrna123', '$2b$10$Kv0dy8NyioUSrkrjAjqt4efpxTzwNampK43GQFcU6SFcQ3feuk8sK', 'member', '2025-03-12 12:48:17', NULL),
(64, 'Bhie123', '$2b$10$G360WyGbf.6WkoZr/zMocOL4TtXRy3/ZKr8JzjsZmY7oTS8TfMJli', 'member', '2025-03-16 15:44:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `received_by` (`received_by`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cb_number` (`cb_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `regular_agricultural_loans`
--
ALTER TABLE `regular_agricultural_loans`
  ADD UNIQUE KEY `application_no` (`application_no`),
  ADD KEY `application_no_2` (`application_no`),
  ADD KEY `cb_number` (`cb_number`),
  ADD KEY `application_status` (`application_status`);

--
-- Indexes for table `salary_bonuses_loans`
--
ALTER TABLE `salary_bonuses_loans`
  ADD PRIMARY KEY (`application_no`),
  ADD KEY `cb_number` (`cb_number`);

--
-- Indexes for table `salary_loan_transactions`
--
ALTER TABLE `salary_loan_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cb_number` (`cb_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`cb_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `salary_loan_transactions`
--
ALTER TABLE `salary_loan_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD CONSTRAINT `loan_payments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `salary_loan_transactions` (`id`),
  ADD CONSTRAINT `loan_payments_ibfk_2` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`cb_number`) REFERENCES `users` (`cb_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regular_agricultural_loans`
--
ALTER TABLE `regular_agricultural_loans`
  ADD CONSTRAINT `regular_agricultural_loans_ibfk_1` FOREIGN KEY (`cb_number`) REFERENCES `members` (`cb_number`);

--
-- Constraints for table `salary_bonuses_loans`
--
ALTER TABLE `salary_bonuses_loans`
  ADD CONSTRAINT `salary_bonuses_loans_ibfk_1` FOREIGN KEY (`cb_number`) REFERENCES `members` (`cb_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary_loan_transactions`
--
ALTER TABLE `salary_loan_transactions`
  ADD CONSTRAINT `salary_loan_transactions_ibfk_1` FOREIGN KEY (`cb_number`) REFERENCES `members` (`cb_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
