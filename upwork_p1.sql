-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2017 at 12:00 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upwork_p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `0_areas`
--

CREATE TABLE `0_areas` (
  `area_code` int(11) NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_areas`
--

INSERT INTO `0_areas` (`area_code`, `description`, `inactive`) VALUES
(1, 'Global', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_attachments`
--

CREATE TABLE `0_attachments` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_no` int(11) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `unique_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `filetype` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_audit_trail`
--

CREATE TABLE `0_audit_trail` (
  `id` int(11) NOT NULL,
  `type` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `trans_no` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL DEFAULT '0',
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_audit_trail`
--

INSERT INTO `0_audit_trail` (`id`, `type`, `trans_no`, `user`, `stamp`, `description`, `fiscal_year`, `gl_date`, `gl_seq`) VALUES
(1, 18, 1, 1, '2016-05-05 06:08:02', NULL, 1, '2016-05-05', 0),
(2, 25, 1, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-05', 1),
(3, 30, 1, 1, '2016-05-05 06:09:54', NULL, 1, '2016-05-10', 0),
(4, 13, 1, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-10', 11),
(5, 10, 1, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-10', 12),
(6, 12, 1, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-10', 13),
(7, 26, 1, 1, '2017-07-26 02:45:09', 'Quick production.', 1, '2016-05-05', 2),
(8, 18, 2, 1, '2016-05-05 06:22:32', NULL, 1, '2016-05-05', 0),
(9, 25, 2, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-05', 3),
(10, 20, 1, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-05', 4),
(11, 30, 2, 1, '2016-05-06 23:55:15', NULL, 1, '2016-05-07', 0),
(12, 13, 2, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-07', 5),
(13, 10, 2, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-07', 6),
(14, 12, 2, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-07', 7),
(15, 30, 3, 1, '2016-05-07 00:08:24', NULL, 1, '2016-05-07', 0),
(16, 30, 4, 1, '2016-05-07 01:18:44', NULL, 1, '2016-05-07', 0),
(17, 30, 5, 1, '2016-05-07 03:42:41', NULL, 1, '2016-05-07', 0),
(18, 13, 3, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-07', 8),
(19, 10, 3, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-07', 9),
(20, 30, 6, 1, '2016-05-07 06:02:35', NULL, 1, '2016-05-07', 0),
(21, 30, 7, 1, '2016-05-07 06:05:38', NULL, 1, '2016-05-07', 0),
(22, 13, 4, 1, '2016-05-07 06:05:38', NULL, 1, '2016-05-07', 0),
(23, 10, 4, 1, '2016-05-07 06:05:38', NULL, 1, '2016-05-07', 0),
(24, 12, 3, 1, '2016-05-07 06:05:38', NULL, 1, '2016-05-07', 0),
(25, 26, 2, 1, '2016-05-07 07:59:34', NULL, 1, '2016-05-07', NULL),
(26, 26, 3, 1, '2017-08-14 02:34:48', NULL, 1, '2016-05-07', NULL),
(27, 26, 2, 1, '2016-05-07 07:59:34', 'Released.', 1, '2016-05-07', 0),
(28, 1, 1, 1, '2017-07-26 02:45:09', NULL, 1, '2016-05-07', 10),
(29, 18, 3, 1, '2017-07-26 02:20:36', '', 1, '2016-12-31', 0),
(30, 25, 3, 1, '2017-07-26 02:45:09', '', 1, '2016-12-31', 14),
(31, 18, 4, 1, '2017-07-26 02:21:51', '', 1, '2016-12-31', 0),
(32, 25, 4, 1, '2017-07-26 02:45:09', '', 1, '2016-12-31', 15),
(33, 18, 5, 1, '2017-07-26 02:44:09', '', 0, '2017-07-08', 0),
(34, 0, 1, 1, '2017-07-26 02:45:09', '', 1, '2016-12-31', 16),
(35, 25, 5, 1, '2017-07-26 02:47:09', '', 2, '2017-07-26', 0),
(36, 18, 6, 1, '2017-07-26 08:59:04', '', 2, '2017-07-26', 0),
(37, 25, 6, 1, '2017-07-26 08:59:04', '', 2, '2017-07-26', 0),
(38, 18, 7, 1, '2017-08-01 03:43:39', '', 2, '2017-08-01', 0),
(39, 25, 7, 1, '2017-08-01 03:43:39', '', 2, '2017-08-01', 0),
(42, 18, 10, 1, '2017-08-02 06:34:40', '', 2, '2017-08-02', 0),
(43, 25, 10, 1, '2017-08-02 06:34:40', '', 2, '2017-08-02', 0),
(44, 18, 11, 1, '2017-08-02 06:39:05', '', 2, '2017-08-02', 0),
(45, 25, 12, 1, '2017-08-02 07:08:21', '', 2, '2017-08-02', 0),
(46, 18, 12, 1, '2017-08-02 07:14:09', '', 2, '2017-08-02', 0),
(47, 25, 13, 1, '2017-08-02 07:14:14', '', 2, '2017-08-02', 0),
(48, 18, 13, 1, '2017-08-02 07:16:50', '', 2, '2017-08-02', 0),
(49, 25, 14, 1, '2017-08-02 07:19:26', '', 2, '2017-08-02', 0),
(50, 18, 14, 1, '2017-08-08 06:41:25', '', 2, '2017-08-08', 0),
(51, 25, 15, 1, '2017-08-08 06:53:28', '', 2, '2017-08-08', 0),
(52, 18, 15, 1, '2017-08-08 06:56:32', '', 2, '2017-08-08', 0),
(53, 25, 16, 1, '2017-08-08 06:57:48', '', 2, '2017-08-08', 0),
(54, 18, 16, 1, '2017-08-08 06:58:30', '', 2, '2017-08-08', 0),
(55, 25, 17, 1, '2017-08-08 06:58:36', '', 2, '2017-08-08', 0),
(56, 18, 17, 1, '2017-08-08 07:01:30', '', 2, '2017-08-08', 0),
(57, 25, 18, 1, '2017-08-08 07:03:01', '', 2, '2017-08-08', 0),
(58, 18, 18, 1, '2017-08-08 07:12:32', '', 2, '2017-08-08', 0),
(59, 25, 19, 1, '2017-08-08 07:19:23', '', 2, '2017-08-08', 0),
(60, 18, 19, 1, '2017-08-08 07:19:46', '', 2, '2017-08-08', 0),
(61, 25, 20, 1, '2017-08-08 07:21:14', '', 2, '2017-08-08', 0),
(62, 18, 20, 1, '2017-08-08 07:23:25', '', 2, '2017-08-08', 0),
(63, 25, 21, 1, '2017-08-08 07:35:13', '', 2, '2017-08-08', 0),
(64, 18, 21, 1, '2017-08-08 07:38:15', '', 2, '2017-08-08', 0),
(65, 25, 22, 1, '2017-08-08 07:38:33', '', 2, '2017-08-08', 0),
(66, 18, 22, 1, '2017-08-14 02:15:14', '', 2, '2017-08-14', 0),
(67, 25, 23, 1, '2017-08-14 02:15:14', '', 2, '2017-08-14', 0),
(68, 18, 23, 1, '2017-08-14 02:15:24', '', 2, '2017-08-14', 0),
(69, 25, 24, 1, '2017-08-14 02:15:29', '', 2, '2017-08-14', 0),
(70, 29, 1, 1, '2017-08-14 02:34:35', 'Production.', 2, '2017-08-14', 0),
(71, 26, 3, 1, '2017-08-14 02:34:48', 'Released.', 1, '2016-05-07', 0),
(72, 29, 2, 1, '2017-08-14 02:35:11', 'Production.', 2, '2017-08-14', 0),
(75, 26, 5, 1, '2017-08-14 02:41:48', '', 2, '2017-08-14', NULL),
(76, 26, 5, 1, '2017-08-14 02:41:48', 'Released.', 2, '2017-08-14', 0),
(77, 29, 4, 1, '2017-08-14 02:41:48', 'Production.', 2, '2017-08-14', 0),
(78, 26, 6, 1, '2017-08-14 02:46:40', '', 2, '2017-08-14', NULL),
(81, 26, 8, 1, '2017-08-14 02:45:38', '', 2, '2017-08-14', NULL),
(82, 26, 8, 1, '2017-08-14 02:45:38', 'Released.', 2, '2017-08-14', 0),
(83, 29, 6, 1, '2017-08-14 02:45:38', 'Production.', 2, '2017-08-14', 0),
(84, 26, 9, 1, '2017-08-14 02:46:34', '', 2, '2017-08-14', 0),
(85, 26, 6, 1, '2017-08-14 02:46:40', 'Released.', 2, '2017-08-14', 0),
(86, 29, 7, 1, '2017-08-14 02:46:52', 'Production.', 2, '2017-08-14', 0),
(87, 26, 10, 1, '2017-08-14 02:57:04', '', 2, '2017-08-14', NULL),
(88, 26, 10, 1, '2017-08-14 02:57:04', 'Released.', 2, '2017-08-14', 0),
(89, 29, 8, 1, '2017-08-14 02:57:12', 'Production.', 2, '2017-08-14', 0),
(90, 26, 11, 1, '2017-08-14 03:44:17', '', 2, '2017-08-14', NULL),
(91, 26, 11, 1, '2017-08-14 03:44:17', 'Released.', 2, '2017-08-14', 0),
(92, 29, 9, 1, '2017-08-14 03:44:17', 'Production.', 2, '2017-08-14', 0),
(93, 26, 12, 1, '2017-08-14 03:44:45', '', 2, '2017-08-14', NULL),
(94, 26, 12, 1, '2017-08-14 03:44:45', 'Released.', 2, '2017-08-14', 0),
(95, 29, 10, 1, '2017-08-14 03:44:45', 'Production.', 2, '2017-08-14', 0),
(96, 26, 13, 1, '2017-08-14 03:45:12', '', 2, '2017-08-14', NULL),
(97, 26, 13, 1, '2017-08-14 03:45:12', 'Released.', 2, '2017-08-14', 0),
(98, 29, 11, 1, '2017-08-14 03:45:13', 'Production.', 2, '2017-08-14', 0),
(99, 26, 14, 1, '2017-08-14 03:46:45', '', 2, '2017-08-14', NULL),
(100, 26, 14, 1, '2017-08-14 03:46:45', 'Released.', 2, '2017-08-14', 0),
(101, 29, 12, 1, '2017-08-14 03:46:46', 'Production.', 2, '2017-08-14', 0),
(102, 26, 15, 1, '2017-08-14 04:17:49', '', 2, '2017-08-14', 0),
(103, 26, 16, 1, '2017-08-15 00:57:28', '', 2, '2017-08-15', 0),
(104, 26, 17, 1, '2017-08-15 01:05:06', '', 2, '2017-08-15', NULL),
(105, 26, 17, 1, '2017-08-15 01:05:06', 'Released.', 2, '2017-08-15', 0),
(106, 29, 13, 1, '2017-08-15 01:05:06', 'Production.', 2, '2017-08-15', 0),
(107, 26, 18, 1, '2017-08-15 01:17:27', '', 2, '2017-08-15', NULL),
(108, 26, 18, 1, '2017-08-15 01:17:27', 'Released.', 2, '2017-08-15', 0),
(109, 29, 14, 1, '2017-08-15 01:17:27', 'Production.', 2, '2017-08-15', 0),
(110, 26, 19, 1, '2017-08-15 01:18:39', '', 2, '2017-08-15', NULL),
(111, 26, 19, 1, '2017-08-15 01:18:39', 'Released.', 2, '2017-08-15', 0),
(112, 29, 15, 1, '2017-08-15 01:18:39', 'Production.', 2, '2017-08-15', 0),
(113, 26, 20, 1, '2017-08-15 01:19:33', '', 2, '2017-08-15', NULL),
(114, 26, 20, 1, '2017-08-15 01:19:33', 'Released.', 2, '2017-08-15', 0),
(115, 29, 16, 1, '2017-08-15 01:19:34', 'Production.', 2, '2017-08-15', 0),
(116, 26, 21, 1, '2017-08-15 01:19:57', '', 2, '2017-08-15', NULL),
(117, 26, 21, 1, '2017-08-15 01:19:57', 'Released.', 2, '2017-08-15', 0),
(118, 29, 17, 1, '2017-08-15 01:19:57', 'Production.', 2, '2017-08-15', 0),
(119, 26, 22, 1, '2017-08-25 10:12:49', '', 2, '2017-08-15', NULL),
(120, 26, 23, 1, '2017-08-15 01:25:08', '', 2, '2017-08-15', NULL),
(121, 26, 23, 1, '2017-08-15 01:25:08', 'Released.', 2, '2017-08-15', 0),
(122, 17, 1, 1, '2017-08-25 10:08:50', '', 2, '2017-08-25', 0),
(123, 17, 2, 1, '2017-08-25 10:10:02', '', 2, '2017-08-25', 0),
(124, 16, 1, 1, '2017-08-25 10:11:09', '', 2, '2017-08-25', 0),
(125, 29, 18, 1, '2017-08-25 10:11:54', 'Production.', 2, '2017-08-25', 0),
(126, 26, 22, 1, '2017-08-25 10:12:49', 'Released.', 2, '2017-08-15', 0),
(127, 18, 24, 1, '2017-08-25 10:20:36', '', 2, '2017-08-25', 0),
(128, 18, 25, 1, '2017-08-25 10:26:45', '', 2, '2017-08-25', 0),
(129, 25, 25, 1, '2017-08-25 10:26:46', '', 2, '2017-08-25', 0),
(130, 25, 26, 1, '2017-08-25 10:41:25', '', 2, '2017-08-25', 0),
(131, 29, 19, 1, '2017-08-25 10:41:40', 'Production.', 2, '2017-08-25', 0),
(132, 18, 26, 1, '2017-09-21 22:43:08', '', 2, '2017-09-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_bank_accounts`
--

CREATE TABLE `0_bank_accounts` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` smallint(6) NOT NULL DEFAULT '0',
  `bank_account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_address` tinytext COLLATE utf8_unicode_ci,
  `bank_curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT '0',
  `id` smallint(6) NOT NULL,
  `bank_charge_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_bank_accounts`
--

INSERT INTO `0_bank_accounts` (`account_code`, `account_type`, `bank_account_name`, `bank_account_number`, `bank_name`, `bank_address`, `bank_curr_code`, `dflt_curr_act`, `id`, `bank_charge_act`, `last_reconciled_date`, `ending_reconcile_balance`, `inactive`) VALUES
('1060', 0, 'Current account', 'N/A', 'N/A', '', 'USD', 1, 1, '5690', '0000-00-00 00:00:00', 0, 0),
('1065', 3, 'Petty Cash account', 'N/A', 'N/A', '', 'USD', 0, 2, '5690', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_bank_trans`
--

CREATE TABLE `0_bank_trans` (
  `id` int(11) NOT NULL,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) NOT NULL DEFAULT '0',
  `person_id` tinyblob,
  `reconciled` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_bank_trans`
--

INSERT INTO `0_bank_trans` (`id`, `type`, `trans_no`, `bank_act`, `ref`, `trans_date`, `amount`, `dimension_id`, `dimension2_id`, `person_type_id`, `person_id`, `reconciled`) VALUES
(1, 12, 1, '2', '001/2016', '2016-05-10', 6240, 0, 0, 2, 0x31, NULL),
(2, 12, 2, '2', '002/2016', '2016-05-07', 300, 0, 0, 2, 0x31, NULL),
(3, 12, 3, '2', '003/2016', '2016-05-07', 0, 0, 0, 2, 0x31, NULL),
(4, 1, 1, '1', '001/2016', '2016-05-07', -5, 0, 0, 0, 0x476f6f6473207265636569766564, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `0_bom`
--

CREATE TABLE `0_bom` (
  `id` int(11) NOT NULL,
  `parent` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre_added` int(11) NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_bom`
--

INSERT INTO `0_bom` (`id`, `parent`, `component`, `workcentre_added`, `loc_code`, `quantity`) VALUES
(1, '201', '101', 1, 'DEF', 1),
(2, '201', '102', 1, 'DEF', 1),
(3, '201', '103', 1, 'DEF', 1),
(4, '201', '301', 1, 'DEF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `0_budget_trans`
--

CREATE TABLE `0_budget_trans` (
  `id` int(11) NOT NULL,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_chart_class`
--

CREATE TABLE `0_chart_class` (
  `cid` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_chart_class`
--

INSERT INTO `0_chart_class` (`cid`, `class_name`, `ctype`, `inactive`) VALUES
('1', 'Assets', 1, 0),
('2', 'Liabilities', 2, 0),
('3', 'Income', 4, 0),
('4', 'Costs', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_chart_master`
--

CREATE TABLE `0_chart_master` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_code2` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_chart_master`
--

INSERT INTO `0_chart_master` (`account_code`, `account_code2`, `account_name`, `account_type`, `inactive`) VALUES
('1060', '', 'Checking Account', '1', 0),
('1065', '', 'Petty Cash', '1', 0),
('1200', '', 'Accounts Receivables', '1', 0),
('1205', '', 'Allowance for doubtful accounts', '1', 0),
('1510', '', 'Inventory', '2', 0),
('1520', '', 'Stocks of Raw Materials', '2', 0),
('1530', '', 'Stocks of Work In Progress', '2', 0),
('1540', '', 'Stocks of Finished Goods', '2', 0),
('1550', '', 'Goods Received Clearing account', '2', 0),
('1820', '', 'Office Furniture &amp; Equipment', '3', 0),
('1825', '', 'Accum. Amort. -Furn. &amp; Equip.', '3', 0),
('1840', '', 'Vehicle', '3', 0),
('1845', '', 'Accum. Amort. -Vehicle', '3', 0),
('2100', '', 'Accounts Payable', '4', 0),
('2110', '', 'Accrued Income Tax - Federal', '4', 0),
('2120', '', 'Accrued Income Tax - State', '4', 0),
('2130', '', 'Accrued Franchise Tax', '4', 0),
('2140', '', 'Accrued Real &amp; Personal Prop Tax', '4', 0),
('2150', '', 'Sales Tax', '4', 0),
('2160', '', 'Accrued Use Tax Payable', '4', 0),
('2210', '', 'Accrued Wages', '4', 0),
('2220', '', 'Accrued Comp Time', '4', 0),
('2230', '', 'Accrued Holiday Pay', '4', 0),
('2240', '', 'Accrued Vacation Pay', '4', 0),
('2310', '', 'Accr. Benefits - 401K', '4', 0),
('2320', '', 'Accr. Benefits - Stock Purchase', '4', 0),
('2330', '', 'Accr. Benefits - Med, Den', '4', 0),
('2340', '', 'Accr. Benefits - Payroll Taxes', '4', 0),
('2350', '', 'Accr. Benefits - Credit Union', '4', 0),
('2360', '', 'Accr. Benefits - Savings Bond', '4', 0),
('2370', '', 'Accr. Benefits - Garnish', '4', 0),
('2380', '', 'Accr. Benefits - Charity Cont.', '4', 0),
('2620', '', 'Bank Loans', '5', 0),
('2680', '', 'Loans from Shareholders', '5', 0),
('3350', '', 'Common Shares', '6', 0),
('3590', '', 'Retained Earnings - prior years', '7', 0),
('4010', '', 'Sales', '8', 0),
('4430', '', 'Shipping &amp; Handling', '9', 0),
('4440', '', 'Interest', '9', 0),
('4450', '', 'Foreign Exchange Gain', '9', 0),
('4500', '', 'Prompt Payment Discounts', '9', 0),
('4510', '', 'Discounts Given', '9', 0),
('5010', '', 'Cost of Goods Sold - Retail', '10', 0),
('5020', '', 'Material Usage Varaiance', '10', 0),
('5030', '', 'Consumable Materials', '10', 0),
('5040', '', 'Purchase price Variance', '10', 0),
('5050', '', 'Purchases of materials', '10', 0),
('5060', '', 'Discounts Received', '10', 0),
('5100', '', 'Freight', '10', 0),
('5410', '', 'Wages &amp; Salaries', '11', 0),
('5420', '', 'Wages - Overtime', '11', 0),
('5430', '', 'Benefits - Comp Time', '11', 0),
('5440', '', 'Benefits - Payroll Taxes', '11', 0),
('5450', '', 'Benefits - Workers Comp', '11', 0),
('5460', '', 'Benefits - Pension', '11', 0),
('5470', '', 'Benefits - General Benefits', '11', 0),
('5510', '', 'Inc Tax Exp - Federal', '11', 0),
('5520', '', 'Inc Tax Exp - State', '11', 0),
('5530', '', 'Taxes - Real Estate', '11', 0),
('5540', '', 'Taxes - Personal Property', '11', 0),
('5550', '', 'Taxes - Franchise', '11', 0),
('5560', '', 'Taxes - Foreign Withholding', '11', 0),
('5610', '', 'Accounting &amp; Legal', '12', 0),
('5615', '', 'Advertising &amp; Promotions', '12', 0),
('5620', '', 'Bad Debts', '12', 0),
('5660', '', 'Amortization Expense', '12', 0),
('5685', '', 'Insurance', '12', 0),
('5690', '', 'Interest &amp; Bank Charges', '12', 0),
('5700', '', 'Office Supplies', '12', 0),
('5760', '', 'Rent', '12', 0),
('5765', '', 'Repair &amp; Maintenance', '12', 0),
('5780', '', 'Telephone', '12', 0),
('5785', '', 'Travel &amp; Entertainment', '12', 0),
('5790', '', 'Utilities', '12', 0),
('5795', '', 'Registrations', '12', 0),
('5800', '', 'Licenses', '12', 0),
('5810', '', 'Foreign Exchange Loss', '12', 0),
('9990', '', 'Year Profit/Loss', '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_chart_types`
--

CREATE TABLE `0_chart_types` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_chart_types`
--

INSERT INTO `0_chart_types` (`id`, `name`, `class_id`, `parent`, `inactive`) VALUES
('1', 'Current Assets', '1', '', 0),
('10', 'Cost of Goods Sold', '4', '', 0),
('11', 'Payroll Expenses', '4', '', 0),
('12', 'General &amp; Administrative expenses', '4', '', 0),
('2', 'Inventory Assets', '1', '', 0),
('3', 'Capital Assets', '1', '', 0),
('4', 'Current Liabilities', '2', '', 0),
('5', 'Long Term Liabilities', '2', '', 0),
('6', 'Share Capital', '2', '', 0),
('7', 'Retained Earnings', '2', '', 0),
('8', 'Sales Revenue', '3', '', 0),
('9', 'Other Revenue', '3', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_comments`
--

CREATE TABLE `0_comments` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_comments`
--

INSERT INTO `0_comments` (`type`, `id`, `date_`, `memo_`) VALUES
(12, 1, '2016-05-10', 'Cash invoice 1'),
(12, 2, '2016-05-07', 'Cash invoice 2'),
(13, 4, '2016-05-07', 'Recurrent Invoice covers period 04/01/2016 - 04/07/2016.'),
(10, 4, '2016-05-07', 'Recurrent Invoice covers period 04/01/2016 - 04/07/2016.'),
(12, 3, '2016-05-07', 'Cash invoice 4'),
(0, 1, '2016-12-31', 'Closing Year');

-- --------------------------------------------------------

--
-- Table structure for table `0_credit_status`
--

CREATE TABLE `0_credit_status` (
  `id` int(11) NOT NULL,
  `reason_description` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_credit_status`
--

INSERT INTO `0_credit_status` (`id`, `reason_description`, `dissallow_invoices`, `inactive`) VALUES
(1, 'Good History', 0, 0),
(3, 'No more work until payment received', 1, 0),
(4, 'In liquidation', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_crm_categories`
--

CREATE TABLE `0_crm_categories` (
  `id` int(11) NOT NULL COMMENT 'pure technical key',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'for category selector',
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_crm_categories`
--

INSERT INTO `0_crm_categories` (`id`, `type`, `action`, `name`, `description`, `system`, `inactive`) VALUES
(1, 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', 1, 0),
(2, 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', 1, 0),
(3, 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', 1, 0),
(4, 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', 1, 0),
(5, 'customer', 'general', 'General', 'General contact data for customer', 1, 0),
(6, 'customer', 'order', 'Orders', 'Order confirmation', 1, 0),
(7, 'customer', 'delivery', 'Deliveries', 'Delivery coordination', 1, 0),
(8, 'customer', 'invoice', 'Invoices', 'Invoice posting', 1, 0),
(9, 'supplier', 'general', 'General', 'General contact data for supplier', 1, 0),
(10, 'supplier', 'order', 'Orders', 'Order confirmation', 1, 0),
(11, 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', 1, 0),
(12, 'supplier', 'invoice', 'Invoices', 'Invoice posting', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_crm_contacts`
--

CREATE TABLE `0_crm_contacts` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT 'foreign key to crm_contacts',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'entity id in related class table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_crm_contacts`
--

INSERT INTO `0_crm_contacts` (`id`, `person_id`, `type`, `action`, `entity_id`) VALUES
(4, 2, 'supplier', 'general', '2'),
(5, 3, 'cust_branch', 'general', '1'),
(7, 3, 'customer', 'general', '1'),
(8, 1, 'supplier', 'general', '1'),
(9, 4, 'cust_branch', 'general', '2'),
(10, 4, 'customer', 'general', '2');

-- --------------------------------------------------------

--
-- Table structure for table `0_crm_persons`
--

CREATE TABLE `0_crm_persons` (
  `id` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name2` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` tinytext COLLATE utf8_unicode_ci,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_crm_persons`
--

INSERT INTO `0_crm_persons` (`id`, `ref`, `name`, `name2`, `address`, `phone`, `phone2`, `fax`, `email`, `lang`, `notes`, `inactive`) VALUES
(1, 'Dino Saurius', 'John Doe', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', 0),
(2, 'Beefeater', 'Joe Oversea', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', 0),
(3, 'Donald Easter', 'Donald Easter LLC', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', 0),
(4, 'MoneyMaker', 'MoneyMaker Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_currencies`
--

CREATE TABLE `0_currencies` (
  `currency` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_currencies`
--

INSERT INTO `0_currencies` (`currency`, `curr_abrev`, `curr_symbol`, `country`, `hundreds_name`, `auto_update`, `inactive`) VALUES
('CA Dollars', 'CAD', '$', 'Canada', 'Cents', 1, 0),
('Euro', 'EUR', 'â‚¬', 'Europe', 'Cents', 1, 0),
('Pounds', 'GBP', 'Â£', 'England', 'Pence', 1, 0),
('US Dollars', 'USD', '$', 'United States', 'Cents', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_cust_allocations`
--

CREATE TABLE `0_cust_allocations` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `amt` double UNSIGNED DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_cust_allocations`
--

INSERT INTO `0_cust_allocations` (`id`, `person_id`, `amt`, `date_alloc`, `trans_no_from`, `trans_type_from`, `trans_no_to`, `trans_type_to`) VALUES
(1, 1, 6240, '2016-05-10', 1, 12, 1, 10),
(2, 1, 300, '2016-05-07', 2, 12, 2, 10),
(3, 1, 0, '2016-05-07', 3, 12, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `0_cust_branch`
--

CREATE TABLE `0_cust_branch` (
  `branch_code` int(11) NOT NULL,
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `br_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `area` int(11) DEFAULT NULL,
  `salesman` int(11) NOT NULL DEFAULT '0',
  `default_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_group_id` int(11) DEFAULT NULL,
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `receivables_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default_ship_via` int(11) NOT NULL DEFAULT '1',
  `br_post_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT '0',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `bank_account` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_cust_branch`
--

INSERT INTO `0_cust_branch` (`branch_code`, `debtor_no`, `br_name`, `branch_ref`, `br_address`, `area`, `salesman`, `default_location`, `tax_group_id`, `sales_account`, `sales_discount_account`, `receivables_account`, `payment_discount_account`, `default_ship_via`, `br_post_address`, `group_no`, `notes`, `bank_account`, `inactive`) VALUES
(1, 1, 'Donald Easter LLC', 'Donald Easter', 'N/A', 1, 1, 'DEF', 1, '', '4510', '1200', '4500', 1, 'N/A', 0, '', NULL, 0),
(2, 2, 'MoneyMaker Ltd.', 'MoneyMaker', '', 1, 1, 'DEF', 2, '', '4510', '1200', '4500', 1, '', 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_debtors_master`
--

CREATE TABLE `0_debtors_master` (
  `debtor_no` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci,
  `tax_id` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type` int(11) NOT NULL DEFAULT '1',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `credit_status` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `pymt_discount` double NOT NULL DEFAULT '0',
  `credit_limit` float NOT NULL DEFAULT '1000',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_debtors_master`
--

INSERT INTO `0_debtors_master` (`debtor_no`, `name`, `debtor_ref`, `address`, `tax_id`, `curr_code`, `sales_type`, `dimension_id`, `dimension2_id`, `credit_status`, `payment_terms`, `discount`, `pymt_discount`, `credit_limit`, `notes`, `inactive`) VALUES
(1, 'Donald Easter LLC', 'Donald Easter', 'N/A', '123456789', 'USD', 1, 0, 0, 1, 4, 0, 0, 1000, '', 0),
(2, 'MoneyMaker Ltd.', 'MoneyMaker', 'N/A', '54354333', 'EUR', 1, 1, 0, 1, 1, 0, 0, 1000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_debtor_trans`
--

CREATE TABLE `0_debtor_trans` (
  `trans_no` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `version` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `debtor_no` int(11) UNSIGNED DEFAULT NULL,
  `branch_code` int(11) NOT NULL DEFAULT '-1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tpe` int(11) NOT NULL DEFAULT '0',
  `order_` int(11) NOT NULL DEFAULT '0',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `ov_freight` double NOT NULL DEFAULT '0',
  `ov_freight_tax` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `ship_via` int(11) DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_debtor_trans`
--

INSERT INTO `0_debtor_trans` (`trans_no`, `type`, `version`, `debtor_no`, `branch_code`, `tran_date`, `due_date`, `reference`, `tpe`, `order_`, `ov_amount`, `ov_gst`, `ov_freight`, `ov_freight_tax`, `ov_discount`, `alloc`, `prep_amount`, `rate`, `ship_via`, `dimension_id`, `dimension2_id`, `payment_terms`, `tax_included`) VALUES
(1, 10, 0, 1, 1, '2016-05-10', '2016-05-05', '001/2016', 1, 1, 6240, 0, 0, 0, 0, 6240, 0, 1, 1, 0, 0, 4, 1),
(2, 10, 0, 1, 1, '2016-05-07', '2016-05-07', '002/2016', 1, 2, 300, 0, 0, 0, 0, 300, 0, 1, 1, 0, 0, 4, 1),
(3, 10, 0, 2, 2, '2016-05-07', '2016-06-17', '003/2016', 1, 5, 267.14, 0, 0, 0, 0, 0, 0, 1.123, 1, 1, 0, 1, 1),
(4, 10, 0, 1, 1, '2016-05-07', '2016-05-07', '004/2016', 1, 7, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1),
(1, 12, 0, 1, 1, '2016-05-10', '0000-00-00', '001/2016', 0, 0, 6240, 0, 0, 0, 0, 6240, 0, 1, 0, 0, 0, NULL, 0),
(2, 12, 0, 1, 1, '2016-05-07', '0000-00-00', '002/2016', 0, 0, 300, 0, 0, 0, 0, 300, 0, 1, 0, 0, 0, NULL, 0),
(3, 12, 0, 1, 1, '2016-05-07', '0000-00-00', '003/2016', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0),
(1, 13, 1, 1, 1, '2016-05-10', '2016-05-05', 'auto', 1, 1, 6240, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1),
(2, 13, 1, 1, 1, '2016-05-07', '2016-05-07', 'auto', 1, 2, 300, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1),
(3, 13, 1, 2, 2, '2016-05-07', '2016-06-17', 'auto', 1, 5, 267.14, 0, 0, 0, 0, 0, 0, 1.123, 1, 1, 0, 1, 1),
(4, 13, 1, 1, 1, '2016-05-07', '2016-05-07', 'auto', 1, 7, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0_debtor_trans_details`
--

CREATE TABLE `0_debtor_trans_details` (
  `id` int(11) NOT NULL,
  `debtor_trans_no` int(11) DEFAULT NULL,
  `debtor_trans_type` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `qty_done` double NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_debtor_trans_details`
--

INSERT INTO `0_debtor_trans_details` (`id`, `debtor_trans_no`, `debtor_trans_type`, `stock_id`, `description`, `unit_price`, `unit_tax`, `quantity`, `discount_percent`, `standard_cost`, `qty_done`, `src_id`) VALUES
(1, 1, 13, '101', 'iPad Air 2 16GB', 300, 14.29, 20, 0, 200, 20, 1),
(2, 1, 13, '301', 'Support', 80, 3.81, 3, 0, 0, 3, 2),
(3, 1, 10, '101', 'iPad Air 2 16GB', 300, 14.2855, 20, 0, 200, 0, 1),
(4, 1, 10, '301', 'Support', 80, 3.81, 3, 0, 0, 0, 2),
(5, 2, 13, '101', 'iPad Air 2 16GB', 300, 14.29, 1, 0, 200, 1, 3),
(6, 2, 10, '101', 'iPad Air 2 16GB', 300, 14.29, 1, 0, 200, 0, 5),
(7, 3, 13, '102', 'iPhone 6 64GB', 222.62, 0, 1, 0, 150, 1, 7),
(8, 3, 13, '103', 'iPhone Cover Case', 44.52, 0, 1, 0, 10, 1, 8),
(9, 3, 10, '102', 'iPhone 6 64GB', 222.62, 0, 1, 0, 150, 0, 7),
(10, 3, 10, '103', 'iPhone Cover Case', 44.52, 0, 1, 0, 10, 0, 8),
(11, 4, 13, '202', 'Maintenance', 0, 0, 5, 0, 0, 5, 10),
(12, 4, 10, '202', 'Maintenance', 0, 0, 5, 0, 0, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `0_dimensions`
--

CREATE TABLE `0_dimensions` (
  `id` int(11) NOT NULL,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_dimensions`
--

INSERT INTO `0_dimensions` (`id`, `reference`, `name`, `type_`, `closed`, `date_`, `due_date`) VALUES
(1, '001/2016', 'Cost Centre', 1, 0, '2016-05-05', '2016-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `0_exchange_rates`
--

CREATE TABLE `0_exchange_rates` (
  `id` int(11) NOT NULL,
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT '0',
  `rate_sell` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_exchange_rates`
--

INSERT INTO `0_exchange_rates` (`id`, `curr_code`, `rate_buy`, `rate_sell`, `date_`) VALUES
(1, 'EUR', 1.123, 1.123, '2016-05-07'),
(2, 'GBP', 1.3081268527323, 1.3081268527323, '2017-07-26'),
(3, 'EUR', 1.1694, 1.1694, '2017-07-26'),
(6, 'GBP', 1.3207, 1.3207, '2017-08-02'),
(7, 'GBP', 1.3045, 1.3045, '2017-08-08'),
(8, 'GBP', 1.2979, 1.2979, '2017-08-14'),
(9, 'GBP', 1.2833, 1.2833, '2017-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `0_fiscal_year`
--

CREATE TABLE `0_fiscal_year` (
  `id` int(11) NOT NULL,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_fiscal_year`
--

INSERT INTO `0_fiscal_year` (`id`, `begin`, `end`, `closed`) VALUES
(1, '2016-01-01', '2016-12-31', 1),
(2, '2017-01-01', '2017-12-31', 0),
(3, '2018-01-01', '2018-12-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_gl_trans`
--

CREATE TABLE `0_gl_trans` (
  `counter` int(11) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `type_no` int(11) NOT NULL DEFAULT '0',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_gl_trans`
--

INSERT INTO `0_gl_trans` (`counter`, `type`, `type_no`, `tran_date`, `account`, `memo_`, `amount`, `dimension_id`, `dimension2_id`, `person_type_id`, `person_id`) VALUES
(1, 25, 1, '2016-05-05', '1510', '101', 20000, 0, 0, NULL, NULL),
(2, 25, 1, '2016-05-05', '1510', '102', 15000, 0, 0, NULL, NULL),
(3, 25, 1, '2016-05-05', '1510', '103', 1000, 0, 0, NULL, NULL),
(4, 25, 1, '2016-05-05', '1550', '', -36000, 0, 0, NULL, NULL),
(5, 13, 1, '2016-05-10', '5010', '', 4000, 0, 0, NULL, NULL),
(6, 13, 1, '2016-05-10', '1510', '', -4000, 0, 0, NULL, NULL),
(7, 10, 1, '2016-05-10', '4010', '', -5714.29, 0, 0, NULL, NULL),
(8, 10, 1, '2016-05-10', '4010', '', -228.57, 0, 0, NULL, NULL),
(9, 10, 1, '2016-05-10', '1200', '', 6240, 0, 0, 2, 0x31),
(10, 10, 1, '2016-05-10', '2150', '', -297.14, 0, 0, NULL, NULL),
(11, 12, 1, '2016-05-10', '1065', '', 6240, 0, 0, NULL, NULL),
(12, 12, 1, '2016-05-10', '1200', '', -6240, 0, 0, 2, 0x31),
(13, 26, 1, '2016-05-05', '1510', '1 * iPad Air 2 16GB', -400, 0, 0, NULL, NULL),
(14, 26, 1, '2016-05-05', '1510', '1 * iPhone 6 64GB', -300, 0, 0, NULL, NULL),
(15, 26, 1, '2016-05-05', '1510', '1 * iPhone Cover Case', -20, 0, 0, NULL, NULL),
(16, 26, 1, '2016-05-05', '1510', 'Produced 2 * AP Surf Set', 720, 0, 0, NULL, NULL),
(17, 25, 2, '2016-05-05', '1510', '101', 3000, 0, 0, NULL, NULL),
(18, 25, 2, '2016-05-05', '1550', '', -3000, 0, 0, NULL, NULL),
(19, 20, 1, '2016-05-05', '2150', '', 150, 0, 0, NULL, NULL),
(20, 20, 1, '2016-05-05', '2100', '', -3150, 0, 0, 3, 0x31),
(21, 20, 1, '2016-05-05', '1550', '', 3000, 0, 0, NULL, NULL),
(22, 13, 2, '2016-05-07', '5010', '', 200, 0, 0, NULL, NULL),
(23, 13, 2, '2016-05-07', '1510', '', -200, 0, 0, NULL, NULL),
(24, 10, 2, '2016-05-07', '4010', '', -285.71, 0, 0, NULL, NULL),
(25, 10, 2, '2016-05-07', '1200', '', 300, 0, 0, 2, 0x31),
(26, 10, 2, '2016-05-07', '2150', '', -14.29, 0, 0, NULL, NULL),
(27, 12, 2, '2016-05-07', '1065', '', 300, 0, 0, NULL, NULL),
(28, 12, 2, '2016-05-07', '1200', '', -300, 0, 0, 2, 0x31),
(29, 13, 3, '2016-05-07', '5010', '', 150, 1, 0, NULL, NULL),
(30, 13, 3, '2016-05-07', '1510', '', -150, 0, 0, NULL, NULL),
(31, 13, 3, '2016-05-07', '5010', '', 10, 1, 0, NULL, NULL),
(32, 13, 3, '2016-05-07', '1510', '', -10, 0, 0, NULL, NULL),
(33, 10, 3, '2016-05-07', '4010', '', -250, 1, 0, NULL, NULL),
(34, 10, 3, '2016-05-07', '4010', '', -50, 1, 0, NULL, NULL),
(35, 10, 3, '2016-05-07', '1200', '', 300, 0, 0, 2, 0x32),
(36, 12, 3, '2016-05-07', '1065', '', 0, 0, 0, NULL, NULL),
(37, 1, 1, '2016-05-07', '5010', '', 5, 1, 0, NULL, NULL),
(38, 1, 1, '2016-05-07', '1060', '', -5, 0, 0, NULL, NULL),
(39, 25, 3, '2016-12-31', '1510', '101', 1000, 0, 0, NULL, NULL),
(40, 25, 3, '2016-12-31', '1550', '', -1000, 0, 0, NULL, NULL),
(41, 25, 4, '2016-12-31', '1510', '102', 15000, 0, 0, NULL, NULL),
(42, 25, 4, '2016-12-31', '1550', '', -15000, 0, 0, NULL, NULL),
(43, 0, 1, '2016-12-31', '3590', 'Closing Year', -2163.57, 0, 0, NULL, NULL),
(44, 0, 1, '2016-12-31', '9990', 'Closing Year', 2163.57, 0, 0, NULL, NULL),
(45, 25, 5, '2017-07-26', '1510', '101', 40000, 0, 0, NULL, NULL),
(46, 25, 5, '2017-07-26', '1510', '102', 37500, 0, 0, NULL, NULL),
(47, 25, 5, '2017-07-26', '1550', '', -77500, 0, 0, NULL, NULL),
(48, 25, 6, '2017-07-26', '1510', '101', 0, 0, 0, NULL, NULL),
(49, 25, 7, '2017-08-01', '1510', '101', 2000, 0, 0, NULL, NULL),
(50, 25, 7, '2017-08-01', '1550', '', -2000, 0, 0, NULL, NULL),
(53, 25, 10, '2017-08-02', '1510', '101', 0, 0, 0, NULL, NULL),
(54, 25, 10, '2017-08-02', '1510', '102', 0, 0, 0, NULL, NULL),
(56, 25, 12, '2017-08-02', '1510', '101', 145.28, 0, 0, NULL, NULL),
(57, 25, 12, '2017-08-02', '1510', '102', 198.11, 0, 0, NULL, NULL),
(58, 25, 12, '2017-08-02', '1550', '', -343.39, 0, 0, NULL, NULL),
(59, 25, 13, '2017-08-02', '1510', '101', 198.11, 0, 0, NULL, NULL),
(60, 25, 13, '2017-08-02', '1510', '103', 0, 0, 0, NULL, NULL),
(61, 25, 13, '2017-08-02', '1550', '', -198.11, 0, 0, NULL, NULL),
(62, 25, 14, '2017-08-02', '1510', '101', 132.07, 0, 0, NULL, NULL),
(63, 25, 14, '2017-08-02', '1510', '102', 145.28, 0, 0, NULL, NULL),
(64, 25, 14, '2017-08-02', '1550', '', -277.35, 0, 0, NULL, NULL),
(65, 25, 15, '2017-08-08', '1510', '101', 260.9, 0, 0, NULL, NULL),
(66, 25, 15, '2017-08-08', '1510', '102', 195.68, 0, 0, NULL, NULL),
(67, 25, 15, '2017-08-08', '1550', '', -456.58, 0, 0, NULL, NULL),
(68, 25, 16, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(69, 25, 16, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(70, 25, 16, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(71, 25, 16, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(72, 25, 17, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(73, 25, 17, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(74, 25, 17, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(75, 25, 17, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(76, 25, 18, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(77, 25, 18, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(78, 25, 18, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(79, 25, 18, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(80, 25, 19, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(81, 25, 19, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(82, 25, 19, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(83, 25, 19, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(84, 25, 20, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(85, 25, 20, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(86, 25, 20, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(87, 25, 20, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(88, 25, 21, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(89, 25, 21, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(90, 25, 21, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(91, 25, 21, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(92, 25, 22, '2017-08-08', '1510', '101', 13.05, 0, 0, NULL, NULL),
(93, 25, 22, '2017-08-08', '1510', '102', 13.05, 0, 0, NULL, NULL),
(94, 25, 22, '2017-08-08', '1510', '103', 0, 0, 0, NULL, NULL),
(95, 25, 22, '2017-08-08', '1550', '', -26.1, 0, 0, NULL, NULL),
(96, 25, 23, '2017-08-14', '1510', '101', 12.98, 0, 0, NULL, NULL),
(97, 25, 23, '2017-08-14', '1510', '102', 12.98, 0, 0, NULL, NULL),
(98, 25, 23, '2017-08-14', '1550', '', -25.96, 0, 0, NULL, NULL),
(99, 25, 24, '2017-08-14', '1510', '101', 12.98, 0, 0, NULL, NULL),
(100, 25, 24, '2017-08-14', '1510', '102', 12.98, 0, 0, NULL, NULL),
(101, 25, 24, '2017-08-14', '1550', '', -25.96, 0, 0, NULL, NULL),
(102, 29, 1, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -543.23, 0, 0, NULL, NULL),
(103, 29, 1, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -679.78, 0, 0, NULL, NULL),
(104, 29, 1, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -42.54, 0, 0, NULL, NULL),
(105, 29, 1, '2017-08-14', '1530', '08/14/2017: 1 * Support', 1265.55, 0, 0, NULL, NULL),
(106, 26, 2, '2017-08-14', '1530', '', -1265.55, 0, 0, NULL, NULL),
(107, 26, 2, '2017-08-14', '1510', '', 1265.55, 0, 0, NULL, NULL),
(108, 29, 2, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -543.23, 0, 0, NULL, NULL),
(109, 29, 2, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -679.78, 0, 0, NULL, NULL),
(110, 29, 2, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -42.54, 0, 0, NULL, NULL),
(111, 29, 2, '2017-08-14', '1530', '08/14/2017: 1 * Support', 1265.55, 0, 0, NULL, NULL),
(112, 26, 3, '2017-08-14', '1530', '', -1265.55, 0, 0, NULL, NULL),
(113, 26, 3, '2017-08-14', '1510', '', 1265.55, 0, 0, NULL, NULL),
(120, 29, 4, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(121, 29, 4, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(122, 29, 4, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(123, 29, 4, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(124, 26, 5, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(125, 26, 5, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(132, 29, 6, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(133, 29, 6, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(134, 29, 6, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(135, 29, 6, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(136, 26, 8, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(137, 26, 8, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(138, 29, 7, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(139, 29, 7, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(140, 29, 7, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(141, 29, 7, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(142, 26, 6, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(143, 26, 6, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(144, 29, 8, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(145, 29, 8, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(146, 29, 8, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(147, 29, 8, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(148, 26, 10, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(149, 26, 10, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(150, 29, 9, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(151, 29, 9, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(152, 29, 9, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(153, 29, 9, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(154, 26, 11, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(155, 26, 11, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(156, 29, 10, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(157, 29, 10, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(158, 29, 10, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(159, 29, 10, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(160, 26, 12, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(161, 26, 12, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(162, 29, 11, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(163, 29, 11, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(164, 29, 11, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(165, 29, 11, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(166, 26, 13, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(167, 26, 13, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(168, 29, 12, '2017-08-14', '1510', '08/14/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(169, 29, 12, '2017-08-14', '1510', '08/14/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(170, 29, 12, '2017-08-14', '1510', '08/14/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(171, 29, 12, '2017-08-14', '1530', '08/14/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(172, 26, 14, '2017-08-14', '1530', '', -253.11, 0, 0, NULL, NULL),
(173, 26, 14, '2017-08-14', '1510', '', 253.11, 0, 0, NULL, NULL),
(174, 29, 13, '2017-08-15', '1510', '08/15/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(175, 29, 13, '2017-08-15', '1510', '08/15/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(176, 29, 13, '2017-08-15', '1510', '08/15/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(177, 29, 13, '2017-08-15', '1530', '08/15/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(178, 26, 17, '2017-08-15', '1530', '', -253.11, 0, 0, NULL, NULL),
(179, 26, 17, '2017-08-15', '1510', '', 253.11, 0, 0, NULL, NULL),
(180, 29, 14, '2017-08-15', '1510', '08/15/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(181, 29, 14, '2017-08-15', '1510', '08/15/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(182, 29, 14, '2017-08-15', '1510', '08/15/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(183, 29, 14, '2017-08-15', '1530', '08/15/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(184, 26, 18, '2017-08-15', '1530', '', -253.11, 0, 0, NULL, NULL),
(185, 26, 18, '2017-08-15', '1510', '', 253.11, 0, 0, NULL, NULL),
(186, 29, 15, '2017-08-15', '1510', '08/15/2017: 1 * iPad Air 2 16GB', 108.65, 0, 0, NULL, NULL),
(187, 29, 15, '2017-08-15', '1510', '08/15/2017: 1 * iPhone 6 64GB', 135.96, 0, 0, NULL, NULL),
(188, 29, 15, '2017-08-15', '1510', '08/15/2017: 1 * iPhone Cover Case', 8.51, 0, 0, NULL, NULL),
(189, 29, 15, '2017-08-15', '1530', '08/15/2017: 1 * Support', -253.12, 0, 0, NULL, NULL),
(190, 26, 19, '2017-08-15', '1530', '', 253.11, 0, 0, NULL, NULL),
(191, 26, 19, '2017-08-15', '1510', '', -253.11, 0, 0, NULL, NULL),
(192, 29, 16, '2017-08-15', '1510', '08/15/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(193, 29, 16, '2017-08-15', '1510', '08/15/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(194, 29, 16, '2017-08-15', '1510', '08/15/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(195, 29, 16, '2017-08-15', '1530', '08/15/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(196, 26, 20, '2017-08-15', '1530', '', -253.11, 0, 0, NULL, NULL),
(197, 26, 20, '2017-08-15', '1510', '', 253.11, 0, 0, NULL, NULL),
(198, 29, 17, '2017-08-15', '1510', '08/15/2017: 1 * iPad Air 2 16GB', 108.65, 0, 0, NULL, NULL),
(199, 29, 17, '2017-08-15', '1510', '08/15/2017: 1 * iPhone 6 64GB', 135.96, 0, 0, NULL, NULL),
(200, 29, 17, '2017-08-15', '1510', '08/15/2017: 1 * iPhone Cover Case', 8.51, 0, 0, NULL, NULL),
(201, 29, 17, '2017-08-15', '1530', '08/15/2017: 1 * Support', -253.12, 0, 0, NULL, NULL),
(202, 26, 21, '2017-08-15', '1530', '', 253.11, 0, 0, NULL, NULL),
(203, 26, 21, '2017-08-15', '1510', '', -253.11, 0, 0, NULL, NULL),
(204, 17, 1, '2017-08-25', '5040', '', -1086.45, 0, 0, NULL, NULL),
(205, 17, 1, '2017-08-25', '1510', '', 1086.45, 0, 0, NULL, NULL),
(206, 17, 2, '2017-08-25', '5040', '', 1195.1, 0, 0, NULL, NULL),
(207, 17, 2, '2017-08-25', '1510', '', -1195.1, 0, 0, NULL, NULL),
(208, 29, 18, '2017-08-25', '1510', '08/25/2017: 1 * iPad Air 2 16GB', -108.65, 0, 0, NULL, NULL),
(209, 29, 18, '2017-08-25', '1510', '08/25/2017: 1 * iPhone 6 64GB', -135.96, 0, 0, NULL, NULL),
(210, 29, 18, '2017-08-25', '1510', '08/25/2017: 1 * iPhone Cover Case', -8.51, 0, 0, NULL, NULL),
(211, 29, 18, '2017-08-25', '1530', '08/25/2017: 1 * Support', 253.12, 0, 0, NULL, NULL),
(212, 26, 23, '2017-08-25', '1530', '', -253.11, 0, 0, NULL, NULL),
(213, 26, 23, '2017-08-25', '1510', '', 253.11, 0, 0, NULL, NULL),
(214, 25, 25, '2017-08-25', '1510', '101', 12.83, 0, 0, NULL, NULL),
(215, 25, 25, '2017-08-25', '1510', '102', 12.83, 0, 0, NULL, NULL),
(216, 25, 25, '2017-08-25', '1510', '103', 0, 0, 0, NULL, NULL),
(217, 25, 25, '2017-08-25', '1550', '', -25.66, 0, 0, NULL, NULL),
(218, 25, 26, '2017-08-25', '1510', '101', 64.17, 0, 0, NULL, NULL),
(219, 25, 26, '2017-08-25', '1550', '', -64.17, 0, 0, NULL, NULL),
(220, 29, 19, '2017-08-25', '1510', '08/25/2017: 1 * iPad Air 2 16GB', -107.61, 0, 0, NULL, NULL),
(221, 29, 19, '2017-08-25', '1510', '08/25/2017: 1 * iPhone 6 64GB', -135.7, 0, 0, NULL, NULL),
(222, 29, 19, '2017-08-25', '1510', '08/25/2017: 1 * iPhone Cover Case', -8.42, 0, 0, NULL, NULL),
(223, 29, 19, '2017-08-25', '1530', '08/25/2017: 1 * Support', 251.73, 0, 0, NULL, NULL),
(224, 26, 22, '2017-08-25', '1530', '', -251.73, 0, 0, NULL, NULL),
(225, 26, 22, '2017-08-25', '1510', '', 251.73, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `0_grn_batch`
--

CREATE TABLE `0_grn_batch` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_grn_batch`
--

INSERT INTO `0_grn_batch` (`id`, `supplier_id`, `purch_order_no`, `reference`, `delivery_date`, `loc_code`, `rate`) VALUES
(1, 1, 1, '001/2016', '2016-05-05', 'DEF', 1),
(2, 1, 2, 'auto', '2016-05-05', 'DEF', 1),
(3, 1, 3, '002/2016', '2016-12-31', 'DEF', 1),
(4, 1, 4, '003/2016', '2016-12-31', 'DEF', 1),
(5, 1, 5, '001/2017', '2017-07-26', 'DEF', 1),
(6, 2, 6, '002/2017', '2017-07-26', 'DEF', 1.3081268527323),
(7, 1, 7, '003/2017', '2017-08-01', 'DEF', 1),
(10, 2, 10, '004/2017', '2017-08-02', 'DEF', 1.3207),
(12, 2, 11, '005/2017', '2017-08-02', 'DEF', 1.3207),
(13, 2, 12, '006/2017', '2017-08-02', 'DEF', 1.3207),
(14, 2, 13, '007/2017', '2017-08-02', 'DEF', 1.3207),
(15, 2, 14, '008/2017', '2017-08-08', 'DEF', 1.3045),
(16, 2, 15, '009/2017', '2017-08-08', 'DEF', 1.3045),
(17, 2, 16, '010/2017', '2017-08-08', 'DEF', 1.3045),
(18, 2, 17, '011/2017', '2017-08-08', 'DEF', 1.3045),
(19, 2, 18, '012/2017', '2017-08-08', 'DEF', 1.3045),
(20, 2, 19, '013/2017', '2017-08-08', 'DEF', 1.3045),
(21, 2, 20, '014/2017', '2017-08-08', 'DEF', 1.3045),
(22, 2, 21, '015/2017', '2017-08-08', 'DEF', 1.3045),
(23, 2, 22, '016/2017', '2017-08-14', 'DEF', 1.2979),
(24, 2, 23, '017/2017', '2017-08-14', 'DEF', 1.2979),
(25, 2, 25, '018/2017', '2017-08-25', 'DEF', 1.2833),
(26, 2, 24, '019/2017', '2017-08-25', 'DEF', 1.2833);

-- --------------------------------------------------------

--
-- Table structure for table `0_grn_items`
--

CREATE TABLE `0_grn_items` (
  `id` int(11) NOT NULL,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `qty_recd` double NOT NULL DEFAULT '0',
  `quantity_inv` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_grn_items`
--

INSERT INTO `0_grn_items` (`id`, `grn_batch_id`, `po_detail_item`, `item_code`, `description`, `qty_recd`, `quantity_inv`) VALUES
(1, 1, 1, '101', 'iPad Air 2 16GB', 100, 0),
(2, 1, 2, '102', 'iPhone 6 64GB', 100, 0),
(3, 1, 3, '103', 'iPhone Cover Case', 100, 0),
(4, 2, 4, '101', 'iPad Air 2 16GB', 15, 15),
(5, 3, 5, '101', 'iPad Air 2 16GB', 5, 0),
(6, 4, 6, '102', 'iPhone 6 64GB', 100, 0),
(7, 5, 7, '101', 'iPad Air 2 16GB', 200, 0),
(8, 5, 8, '102', 'iPhone 6 64GB', 250, 0),
(9, 6, 9, '101', 'iPad Air 2 16GB', 200, 0),
(10, 7, 10, '101', 'iPad Air 2 16GB', 10, 0),
(13, 10, 13, '101', 'iPad Air 2 16GB', 1, 0),
(14, 10, 14, '102', 'iPhone 6 64GB', 1, 0),
(16, 12, 15, '101', 'iPad Air 2 16GB', 11, 0),
(17, 12, 16, '102', 'iPhone 6 64GB', 15, 0),
(18, 13, 17, '101', 'iPad Air 2 16GB', 15, 0),
(19, 13, 18, '103', 'iPhone Cover Case', 10, 0),
(20, 14, 19, '101', 'iPad Air 2 16GB', 10, 0),
(21, 14, 20, '102', 'iPhone 6 64GB', 11, 0),
(22, 15, 21, '101', 'iPad Air 2 16GB', 20, 0),
(23, 15, 22, '102', 'iPhone 6 64GB', 15, 0),
(24, 16, 23, '101', 'iPad Air 2 16GB', 1, 0),
(25, 16, 24, '102', 'iPhone 6 64GB', 1, 0),
(26, 16, 25, '103', 'iPhone Cover Case', 1, 0),
(27, 17, 26, '101', 'iPad Air 2 16GB', 1, 0),
(28, 17, 27, '102', 'iPhone 6 64GB', 1, 0),
(29, 17, 28, '103', 'iPhone Cover Case', 1, 0),
(30, 18, 29, '101', 'iPad Air 2 16GB', 1, 0),
(31, 18, 30, '102', 'iPhone 6 64GB', 1, 0),
(32, 18, 31, '103', 'iPhone Cover Case', 1, 0),
(33, 19, 32, '101', 'iPad Air 2 16GB', 1, 0),
(34, 19, 33, '102', 'iPhone 6 64GB', 1, 0),
(35, 19, 34, '103', 'iPhone Cover Case', 1, 0),
(36, 20, 35, '101', 'iPad Air 2 16GB', 1, 0),
(37, 20, 36, '102', 'iPhone 6 64GB', 1, 0),
(38, 20, 37, '103', 'iPhone Cover Case', 1, 0),
(39, 21, 38, '101', 'iPad Air 2 16GB', 1, 0),
(40, 21, 39, '102', 'iPhone 6 64GB', 1, 0),
(41, 21, 40, '103', 'iPhone Cover Case', 1, 0),
(42, 22, 41, '101', 'iPad Air 2 16GB', 1, 0),
(43, 22, 42, '102', 'iPhone 6 64GB', 1, 0),
(44, 22, 43, '103', 'iPhone Cover Case', 1, 0),
(45, 23, 44, '101', 'iPad Air 2 16GB', 1, 0),
(46, 23, 45, '102', 'iPhone 6 64GB', 1, 0),
(47, 24, 46, '101', 'iPad Air 2 16GB', 1, 0),
(48, 24, 47, '102', 'iPhone 6 64GB', 1, 0),
(49, 25, 49, '101', 'iPad Air 2 16GB', 1, 0),
(50, 25, 50, '102', 'iPhone 6 64GB', 1, 0),
(51, 25, 51, '103', 'iPhone Cover Case', 1, 0),
(52, 26, 48, '101', 'iPad Air 2 16GB', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_groups`
--

CREATE TABLE `0_groups` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_groups`
--

INSERT INTO `0_groups` (`id`, `description`, `inactive`) VALUES
(1, 'Small', 0),
(2, 'Medium', 0),
(3, 'Large', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_item_codes`
--

CREATE TABLE `0_item_codes` (
  `id` int(11) UNSIGNED NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` smallint(6) UNSIGNED NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_item_codes`
--

INSERT INTO `0_item_codes` (`id`, `item_code`, `stock_id`, `description`, `category_id`, `quantity`, `is_foreign`, `inactive`) VALUES
(1, '101', '101', 'iPad Air 2 16GB', 1, 1, 0, 0),
(2, '102', '102', 'iPhone 6 64GB', 1, 1, 0, 0),
(3, '103', '103', 'iPhone Cover Case', 1, 1, 0, 0),
(4, '201', '201', 'AP Surf Set', 1, 1, 0, 0),
(5, '301', '301', 'Support', 4, 1, 0, 0),
(6, '501', '102', 'iPhone Pack', 1, 1, 0, 0),
(7, '501', '103', 'iPhone Pack', 1, 1, 0, 0),
(8, '202', '202', 'Maintenance', 4, 1, 0, 0),
(9, '601', '601', 'Test manuf', 1, 1, 0, 0),
(10, 'vsdvsdv', '101', 'cvsvsd', 1, 10, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_item_tax_types`
--

CREATE TABLE `0_item_tax_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_item_tax_types`
--

INSERT INTO `0_item_tax_types` (`id`, `name`, `exempt`, `inactive`) VALUES
(1, 'Regular', 0, 0),
(3, 'sfsdfsd', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_item_tax_type_exemptions`
--

CREATE TABLE `0_item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_item_units`
--

CREATE TABLE `0_item_units` (
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_item_units`
--

INSERT INTO `0_item_units` (`abbr`, `name`, `decimals`, `inactive`) VALUES
('each', 'Each', 0, 0),
('hr', 'Hours', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_journal`
--

CREATE TABLE `0_journal` (
  `type` smallint(6) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `tran_date` date DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_date` date DEFAULT '0000-00-00',
  `doc_date` date NOT NULL DEFAULT '0000-00-00',
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_journal`
--

INSERT INTO `0_journal` (`type`, `trans_no`, `tran_date`, `reference`, `source_ref`, `event_date`, `doc_date`, `currency`, `amount`, `rate`) VALUES
(0, 1, '2016-12-31', '001/2012', '', '2016-12-31', '2016-12-31', 'USD', 2163.57, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0_locations`
--

CREATE TABLE `0_locations` (
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fixed_asset` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_locations`
--

INSERT INTO `0_locations` (`loc_code`, `location_name`, `delivery_address`, `phone`, `phone2`, `fax`, `email`, `contact`, `fixed_asset`, `inactive`) VALUES
('DEF', 'Default', 'N/A', '', '', '', '', '', 0, 0),
('LOC1', 'Loc1', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_loc_stock`
--

CREATE TABLE `0_loc_stock` (
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reorder_level` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_loc_stock`
--

INSERT INTO `0_loc_stock` (`loc_code`, `stock_id`, `reorder_level`) VALUES
('DEF', '101', 0),
('DEF', '102', 0),
('DEF', '103', 0),
('DEF', '201', 0),
('DEF', '202', 0),
('DEF', '301', 0),
('DEF', '601', 0),
('LOC1', '101', 0),
('LOC1', '102', 0),
('LOC1', '103', 0),
('LOC1', '201', 0),
('LOC1', '202', 0),
('LOC1', '301', 0),
('LOC1', '601', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_payment_terms`
--

CREATE TABLE `0_payment_terms` (
  `terms_indicator` int(11) NOT NULL,
  `terms` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT '0',
  `day_in_following_month` smallint(6) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_payment_terms`
--

INSERT INTO `0_payment_terms` (`terms_indicator`, `terms`, `days_before_due`, `day_in_following_month`, `inactive`) VALUES
(1, 'Due 15th Of the Following Month', 0, 17, 0),
(2, 'Due By End Of The Following Month', 0, 30, 0),
(3, 'Payment due within 10 days', 10, 0, 0),
(4, 'Cash Only', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_prices`
--

CREATE TABLE `0_prices` (
  `id` int(11) NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT '0',
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_prices`
--

INSERT INTO `0_prices` (`id`, `stock_id`, `sales_type_id`, `curr_abrev`, `price`) VALUES
(1, '101', 1, 'USD', 300),
(2, '102', 1, 'USD', 250),
(3, '103', 1, 'USD', 50);

-- --------------------------------------------------------

--
-- Table structure for table `0_printers`
--

CREATE TABLE `0_printers` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `queue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `port` smallint(11) UNSIGNED NOT NULL,
  `timeout` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_printers`
--

INSERT INTO `0_printers` (`id`, `name`, `description`, `queue`, `host`, `port`, `timeout`) VALUES
(1, 'QL500', 'Label printer', 'QL500', 'server', 127, 20),
(2, 'Samsung', 'Main network printer', 'scx4521F', 'server', 515, 5),
(3, 'Local', 'Local print server at user IP', 'lp', '', 515, 10);

-- --------------------------------------------------------

--
-- Table structure for table `0_print_profiles`
--

CREATE TABLE `0_print_profiles` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `report` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_print_profiles`
--

INSERT INTO `0_print_profiles` (`id`, `profile`, `report`, `printer`) VALUES
(1, 'Out of office', '', 0),
(2, 'Sales Department', '', 0),
(3, 'Central', '', 2),
(4, 'Sales Department', '104', 2),
(5, 'Sales Department', '105', 2),
(6, 'Sales Department', '107', 2),
(7, 'Sales Department', '109', 2),
(8, 'Sales Department', '110', 2),
(9, 'Sales Department', '201', 2);

-- --------------------------------------------------------

--
-- Table structure for table `0_purch_data`
--

CREATE TABLE `0_purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT '1',
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_purch_data`
--

INSERT INTO `0_purch_data` (`supplier_id`, `stock_id`, `price`, `suppliers_uom`, `conversion_factor`, `supplier_description`) VALUES
(1, '101', 200, '', 1, 'iPad Air 2 16GB'),
(1, '102', 150, '', 1, 'iPhone 6 64GB'),
(1, '103', 10, '', 1, 'iPhone Cover Case'),
(2, '101', 10, '', 1, 'iPad Air 2 16GB'),
(2, '102', 10, '', 1, 'iPhone 6 64GB'),
(2, '103', 0, '', 1, 'iPhone Cover Case');

-- --------------------------------------------------------

--
-- Table structure for table `0_purch_orders`
--

CREATE TABLE `0_purch_orders` (
  `order_no` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `comments` tinytext COLLATE utf8_unicode_ci,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` tinytext COLLATE utf8_unicode_ci,
  `into_stock_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_purch_orders`
--

INSERT INTO `0_purch_orders` (`order_no`, `supplier_id`, `comments`, `ord_date`, `reference`, `requisition_no`, `into_stock_location`, `delivery_address`, `total`, `prep_amount`, `alloc`, `tax_included`) VALUES
(1, 1, NULL, '2016-05-05', '001/2016', NULL, 'DEF', 'N/A', 37800, 0, 0, 0),
(2, 1, NULL, '2016-05-05', 'auto', 'rr4', 'DEF', 'N/A', 3150, 0, 0, 0),
(3, 1, '', '2016-12-31', 'auto', '', 'DEF', 'N/A', 1050, 0, 0, 0),
(4, 1, '', '2016-12-31', 'auto', '', 'DEF', 'N/A', 15750, 0, 0, 0),
(5, 1, '', '2017-07-08', '001/2017', '', 'DEF', 'N/A', 81375, 0, 0, 0),
(6, 2, '', '2017-07-26', 'auto', '', 'DEF', 'N/A', 0, 0, 0, 0),
(7, 1, '', '2017-08-01', 'auto', '', 'DEF', 'N/A', 2100, 0, 0, 0),
(10, 2, '', '2017-08-02', 'auto', '', 'DEF', 'N/A', 0, 0, 0, 0),
(11, 2, '', '2017-08-02', '002/2017', '', 'DEF', 'N/A', 273, 0, 0, 0),
(12, 2, '', '2017-08-02', '003/2017', '', 'DEF', 'N/A', 157.5, 0, 0, 0),
(13, 2, '', '2017-08-02', '004/2017', '', 'DEF', 'N/A', 220.5, 0, 0, 0),
(14, 2, '', '2017-08-08', '005/2017', '', 'DEF', 'N/A', 367.5, 0, 0, 0),
(15, 2, '', '2017-08-08', '006/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(16, 2, '', '2017-08-08', '007/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(17, 2, '', '2017-08-08', '008/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(18, 2, '', '2017-08-08', '009/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(19, 2, '', '2017-08-08', '010/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(20, 2, '', '2017-08-08', '011/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(21, 2, '', '2017-08-08', '012/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(22, 2, '', '2017-08-14', 'auto', '', 'DEF', 'N/A', 21, 0, 0, 0),
(23, 2, '', '2017-08-14', '013/2017', '', 'DEF', 'N/A', 21, 0, 0, 0),
(24, 2, '', '2017-08-25', '014/2017', '', 'DEF', 'N/A', 52.5, 0, 0, 0),
(25, 2, '', '2017-08-25', 'auto', '', 'DEF', 'N/A', 21, 0, 0, 0),
(26, 2, '', '2017-09-22', '015/2017', '', 'DEF', 'N/A', 21, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_purch_order_details`
--

CREATE TABLE `0_purch_order_details` (
  `po_detail_item` int(11) NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_purch_order_details`
--

INSERT INTO `0_purch_order_details` (`po_detail_item`, `order_no`, `item_code`, `description`, `delivery_date`, `qty_invoiced`, `unit_price`, `act_price`, `std_cost_unit`, `quantity_ordered`, `quantity_received`) VALUES
(1, 1, '101', 'iPad Air 2 16GB', '2016-05-15', 0, 200, 200, 200, 100, 100),
(2, 1, '102', 'iPhone 6 64GB', '2016-05-15', 0, 150, 150, 150, 100, 100),
(3, 1, '103', 'iPhone Cover Case', '2016-05-15', 0, 10, 10, 10, 100, 100),
(4, 2, '101', 'iPad Air 2 16GB', '2016-05-05', 15, 200, 200, 200, 15, 15),
(5, 3, '101', 'iPad Air 2 16GB', '2016-12-31', 0, 200, 200, 200, 5, 5),
(6, 4, '102', 'iPhone 6 64GB', '2016-12-31', 0, 150, 150, 150, 100, 100),
(7, 5, '101', 'iPad Air 2 16GB', '2017-07-10', 0, 200, 200, 200, 200, 200),
(8, 5, '102', 'iPhone 6 64GB', '2017-07-10', 0, 150, 150, 150, 250, 250),
(9, 6, '101', 'iPad Air 2 16GB', '2017-07-26', 0, 0, 0, 119.51710261569, 200, 200),
(10, 7, '101', 'iPad Air 2 16GB', '2017-08-01', 0, 200, 200, 121.10453648915, 10, 10),
(13, 10, '101', 'iPad Air 2 16GB', '2017-08-02', 0, 0, 0, 120.86614173228, 1, 1),
(14, 10, '102', 'iPhone 6 64GB', '2017-08-02', 0, 0, 0, 149.66517857143, 1, 1),
(15, 11, '101', 'iPad Air 2 16GB', '2017-08-12', 0, 10, 10, 118.58434874759, 11, 11),
(16, 11, '102', 'iPhone 6 64GB', '2017-08-12', 0, 10, 10, 145.24428725702, 15, 15),
(17, 12, '101', 'iPad Air 2 16GB', '2017-08-12', 0, 10, 10, 115.62431086142, 15, 15),
(18, 12, '103', 'iPhone Cover Case', '2017-08-12', 0, 0, 0, 9.0654205607477, 10, 10),
(19, 13, '101', 'iPad Air 2 16GB', '2017-08-12', 0, 10, 10, 113.74163970588, 10, 10),
(20, 13, '102', 'iPhone 6 64GB', '2017-08-12', 0, 10, 10, 142.18013080169, 11, 11),
(21, 14, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 110.17083687943, 20, 20),
(22, 14, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 138.21893047035, 15, 15),
(23, 15, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 109.99893274336, 1, 1),
(24, 15, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 137.96347346939, 1, 1),
(25, 15, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.9814814814815, 1, 1),
(26, 16, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 109.8276360424, 1, 1),
(27, 16, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 137.70905702648, 1, 1),
(28, 16, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.8990825688074, 1, 1),
(29, 17, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 109.65694356261, 1, 1),
(30, 17, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 137.45567479675, 1, 1),
(31, 17, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.8181818181819, 1, 1),
(32, 18, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 109.48685211268, 1, 1),
(33, 18, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 137.20332048682, 1, 1),
(34, 18, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.7387387387388, 1, 1),
(35, 19, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 109.31735852373, 1, 1),
(36, 19, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 136.95198785426, 1, 1),
(37, 19, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.6607142857143, 1, 1),
(38, 20, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 109.14845964913, 1, 1),
(39, 20, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 136.70167070708, 1, 1),
(40, 20, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.5840707964602, 1, 1),
(41, 21, '101', 'iPad Air 2 16GB', '2017-08-18', 0, 10, 10, 108.98015236428, 1, 1),
(42, 21, '102', 'iPhone 6 64GB', '2017-08-18', 0, 10, 10, 136.45236290324, 1, 1),
(43, 21, '103', 'iPhone Cover Case', '2017-08-18', 0, 0, 0, 8.5087719298246, 1, 1),
(44, 22, '101', 'iPad Air 2 16GB', '2017-08-14', 0, 10, 10, 108.81231818182, 1, 1),
(45, 22, '102', 'iPhone 6 64GB', '2017-08-14', 0, 10, 10, 136.20392555333, 1, 1),
(46, 23, '101', 'iPad Air 2 16GB', '2017-08-24', 0, 10, 10, 108.64506980803, 1, 1),
(47, 23, '102', 'iPhone 6 64GB', '2017-08-24', 0, 10, 10, 135.95648594379, 1, 1),
(48, 24, '101', 'iPad Air 2 16GB', '2017-09-04', 0, 10, 10, 107.61483249826, 5, 5),
(49, 25, '101', 'iPad Air 2 16GB', '2017-08-25', 0, 10, 10, 108.47181109228, 1, 1),
(50, 25, '102', 'iPhone 6 64GB', '2017-08-25', 0, 10, 10, 135.69944317564, 1, 1),
(51, 25, '103', 'iPhone Cover Case', '2017-08-25', 0, 0, 0, 8.4192059095107, 1, 1),
(52, 26, '101', 'iPad Air 2 16GB', '2017-10-02', 0, 10, 0, 0, 1, 0),
(53, 26, '102', 'iPhone 6 64GB', '2017-10-02', 0, 10, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_quick_entries`
--

CREATE TABLE `0_quick_entries` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `usage` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_amount` double NOT NULL DEFAULT '0',
  `base_desc` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_quick_entries`
--

INSERT INTO `0_quick_entries` (`id`, `type`, `description`, `usage`, `base_amount`, `base_desc`, `bal_type`) VALUES
(1, 1, 'Maintenance', NULL, 0, 'Amount', 0),
(2, 4, 'Phone', NULL, 0, 'Amount', 0),
(3, 2, 'Cash Sales', 'Retail sales without invoice', 0, 'Amount', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_quick_entry_lines`
--

CREATE TABLE `0_quick_entry_lines` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `qid` smallint(6) UNSIGNED NOT NULL,
  `amount` double DEFAULT '0',
  `memo` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dest_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` smallint(6) UNSIGNED DEFAULT NULL,
  `dimension2_id` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_quick_entry_lines`
--

INSERT INTO `0_quick_entry_lines` (`id`, `qid`, `amount`, `memo`, `action`, `dest_id`, `dimension_id`, `dimension2_id`) VALUES
(1, 1, 0, '', 't-', '1', 0, 0),
(2, 2, 0, '', 't-', '1', 0, 0),
(3, 3, 0, '', 't-', '1', 0, 0),
(4, 3, 0, '', '=', '4010', 0, 0),
(5, 1, 0, '', '=', '5765', 0, 0),
(6, 2, 0, '', '=', '5780', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_recurrent_invoices`
--

CREATE TABLE `0_recurrent_invoices` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) UNSIGNED NOT NULL,
  `debtor_no` int(11) UNSIGNED DEFAULT NULL,
  `group_no` smallint(6) UNSIGNED DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT '0',
  `monthly` int(11) NOT NULL DEFAULT '0',
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_recurrent_invoices`
--

INSERT INTO `0_recurrent_invoices` (`id`, `description`, `order_no`, `debtor_no`, `group_no`, `days`, `monthly`, `begin`, `end`, `last_sent`) VALUES
(1, 'Weekly Maintenance', 6, 1, 1, 7, 0, '2016-04-01', '2020-05-07', '2016-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `0_reflines`
--

CREATE TABLE `0_reflines` (
  `id` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `prefix` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pattern` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_reflines`
--

INSERT INTO `0_reflines` (`id`, `trans_type`, `prefix`, `pattern`, `description`, `default`, `inactive`) VALUES
(1, 0, '', '{001}/{YYYY}', '', 1, 0),
(2, 1, '', '{001}/{YYYY}', '', 1, 0),
(3, 2, '', '{001}/{YYYY}', '', 1, 0),
(4, 4, '', '{001}/{YYYY}', '', 1, 0),
(5, 10, '', '{001}/{YYYY}', '', 1, 0),
(6, 11, '', '{001}/{YYYY}', '', 1, 0),
(7, 12, '', '{001}/{YYYY}', '', 1, 0),
(8, 13, '', '{001}/{YYYY}', '', 1, 0),
(9, 16, '', '{001}/{YYYY}', '', 1, 0),
(10, 17, '', '{001}/{YYYY}', '', 1, 0),
(11, 18, '', '{001}/{YYYY}', '', 1, 0),
(12, 20, '', '{001}/{YYYY}', '', 1, 0),
(13, 21, '', '{001}/{YYYY}', '', 1, 0),
(14, 22, '', '{001}/{YYYY}', '', 1, 0),
(15, 25, '', '{001}/{YYYY}', '', 1, 0),
(16, 26, '', '{001}/{YYYY}', '', 1, 0),
(17, 28, '', '{001}/{YYYY}', '', 1, 0),
(18, 29, '', '{001}/{YYYY}', '', 1, 0),
(19, 30, '', '{001}/{YYYY}', '', 1, 0),
(20, 32, '', '{001}/{YYYY}', '', 1, 0),
(21, 35, '', '{001}/{YYYY}', '', 1, 0),
(22, 40, '', '{001}/{YYYY}', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_refs`
--

CREATE TABLE `0_refs` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_refs`
--

INSERT INTO `0_refs` (`id`, `type`, `reference`) VALUES
(1, 0, '001/2012'),
(1, 1, '001/2016'),
(1, 10, '001/2016'),
(2, 10, '002/2016'),
(3, 10, '003/2016'),
(4, 10, '004/2016'),
(1, 12, '001/2016'),
(2, 12, '002/2016'),
(3, 12, '003/2016'),
(1, 16, '001/2017'),
(1, 17, '001/2017'),
(2, 17, '002/2017'),
(1, 18, '001/2016'),
(5, 18, '001/2017'),
(11, 18, '002/2017'),
(12, 18, '003/2017'),
(13, 18, '004/2017'),
(14, 18, '005/2017'),
(15, 18, '006/2017'),
(16, 18, '007/2017'),
(17, 18, '008/2017'),
(18, 18, '009/2017'),
(19, 18, '010/2017'),
(20, 18, '011/2017'),
(21, 18, '012/2017'),
(23, 18, '013/2017'),
(24, 18, '014/2017'),
(26, 18, '015/2017'),
(1, 20, '001/2016'),
(1, 25, '001/2016'),
(5, 25, '001/2017'),
(3, 25, '002/2016'),
(6, 25, '002/2017'),
(4, 25, '003/2016'),
(7, 25, '003/2017'),
(10, 25, '004/2017'),
(12, 25, '005/2017'),
(13, 25, '006/2017'),
(14, 25, '007/2017'),
(15, 25, '008/2017'),
(16, 25, '009/2017'),
(17, 25, '010/2017'),
(18, 25, '011/2017'),
(19, 25, '012/2017'),
(20, 25, '013/2017'),
(21, 25, '014/2017'),
(22, 25, '015/2017'),
(23, 25, '016/2017'),
(24, 25, '017/2017'),
(25, 25, '018/2017'),
(26, 25, '019/2017'),
(1, 26, '001/2016'),
(5, 26, '001/2017'),
(2, 26, '002/2016'),
(6, 26, '002/2017'),
(3, 26, '003/2016'),
(8, 26, '003/2017'),
(9, 26, '004/2017'),
(10, 26, '005/2017'),
(11, 26, '006/2017'),
(12, 26, '007/2017'),
(13, 26, '008/2017'),
(14, 26, '009/2017'),
(15, 26, '010/2017'),
(16, 26, '011/2017'),
(17, 26, '012/2017'),
(18, 26, '013/2017'),
(19, 26, '014/2017'),
(20, 26, '015/2017'),
(21, 26, '016/2017'),
(22, 26, '017/2017'),
(23, 26, '018/2017'),
(1, 29, '001/0000'),
(4, 29, '001/2017'),
(2, 29, '002/0000'),
(6, 29, '002/2017'),
(7, 29, '003/0000'),
(9, 29, '003/2017'),
(8, 29, '004/0000'),
(10, 29, '004/2017'),
(18, 29, '005/0000'),
(11, 29, '005/2017'),
(19, 29, '006/0000'),
(12, 29, '006/2017'),
(13, 29, '007/2017'),
(14, 29, '008/2017'),
(15, 29, '009/2017'),
(16, 29, '010/2017'),
(17, 29, '011/2017'),
(3, 30, '001/2016'),
(4, 30, '002/2016'),
(6, 30, '003/2016'),
(1, 40, '001/2016');

-- --------------------------------------------------------

--
-- Table structure for table `0_salesman`
--

CREATE TABLE `0_salesman` (
  `salesman_code` int(11) NOT NULL,
  `salesman_name` char(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_phone` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_fax` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT '0',
  `break_pt` double NOT NULL DEFAULT '0',
  `provision2` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_salesman`
--

INSERT INTO `0_salesman` (`salesman_code`, `salesman_name`, `salesman_phone`, `salesman_fax`, `salesman_email`, `provision`, `break_pt`, `provision2`, `inactive`) VALUES
(1, 'Sales Person', '', '', '', 5, 1000, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_sales_orders`
--

CREATE TABLE `0_sales_orders` (
  `order_no` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `version` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `branch_code` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_ref` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int(11) NOT NULL DEFAULT '0',
  `ship_via` int(11) NOT NULL DEFAULT '0',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `freight_cost` double NOT NULL DEFAULT '0',
  `from_stk_loc` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int(11) DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_sales_orders`
--

INSERT INTO `0_sales_orders` (`order_no`, `trans_type`, `version`, `type`, `debtor_no`, `branch_code`, `reference`, `customer_ref`, `comments`, `ord_date`, `order_type`, `ship_via`, `delivery_address`, `contact_phone`, `contact_email`, `deliver_to`, `freight_cost`, `from_stk_loc`, `delivery_date`, `payment_terms`, `total`, `prep_amount`, `alloc`) VALUES
(1, 30, 1, 0, 1, 1, 'auto', '', NULL, '2016-05-10', 1, 1, 'N/A', NULL, NULL, 'Donald Easter LLC', 0, 'DEF', '2016-05-05', 4, 6240, 0, 0),
(2, 30, 1, 0, 1, 1, 'auto', '', NULL, '2016-05-07', 1, 1, 'N/A', NULL, NULL, 'Donald Easter LLC', 0, 'DEF', '2016-05-07', 4, 300, 0, 0),
(3, 30, 0, 0, 1, 1, '001/2016', '', NULL, '2016-05-07', 1, 1, 'N/A', NULL, NULL, 'Donald Easter LLC', 0, 'DEF', '2016-05-08', 4, 300, 0, 0),
(4, 30, 0, 0, 2, 2, '002/2016', '', NULL, '2016-05-07', 1, 1, 'N/A', NULL, NULL, 'MoneyMaker Ltd.', 0, 'DEF', '2016-05-08', 1, 267.14, 0, 0),
(5, 30, 1, 0, 2, 2, 'auto', '', NULL, '2016-05-07', 1, 1, 'N/A', NULL, NULL, 'MoneyMaker Ltd.', 0, 'DEF', '2016-06-17', 1, 267.14, 0, 0),
(6, 30, 0, 1, 1, 1, '003/2016', '', NULL, '2016-05-07', 1, 1, 'N/A', NULL, NULL, 'Donald Easter LLC', 0, 'DEF', '2016-05-08', 4, 450, 0, 0),
(7, 30, 1, 0, 1, 1, 'auto', '', 'Recurrent Invoice covers period 04/01/2016 - 04/07/2016.', '2016-05-07', 1, 1, 'N/A', NULL, NULL, 'Donald Easter LLC', 0, 'DEF', '2016-05-07', 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_sales_order_details`
--

CREATE TABLE `0_sales_order_details` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `stk_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `qty_sent` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `invoiced` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_sales_order_details`
--

INSERT INTO `0_sales_order_details` (`id`, `order_no`, `trans_type`, `stk_code`, `description`, `qty_sent`, `unit_price`, `quantity`, `invoiced`, `discount_percent`) VALUES
(1, 1, 30, '101', 'iPad Air 2 16GB', 20, 300, 20, 0, 0),
(2, 1, 30, '301', 'Support', 3, 80, 3, 0, 0),
(3, 2, 30, '101', 'iPad Air 2 16GB', 1, 300, 1, 0, 0),
(4, 3, 30, '102', 'iPhone 6 64GB', 0, 250, 1, 0, 0),
(5, 3, 30, '103', 'iPhone Cover Case', 0, 50, 1, 0, 0),
(6, 4, 30, '101', 'iPad Air 2 16GB', 0, 267.14, 1, 0, 0),
(7, 5, 30, '102', 'iPhone 6 64GB', 1, 222.62, 1, 0, 0),
(8, 5, 30, '103', 'iPhone Cover Case', 1, 44.52, 1, 0, 0),
(9, 6, 30, '202', 'Maintenance', 0, 90, 5, 0, 0),
(10, 7, 30, '202', 'Maintenance', 5, 0, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_sales_pos`
--

CREATE TABLE `0_sales_pos` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `pos_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pos_account` smallint(6) UNSIGNED NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_sales_pos`
--

INSERT INTO `0_sales_pos` (`id`, `pos_name`, `cash_sale`, `credit_sale`, `pos_location`, `pos_account`, `inactive`) VALUES
(1, 'Default', 1, 1, 'DEF', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_sales_types`
--

CREATE TABLE `0_sales_types` (
  `id` int(11) NOT NULL,
  `sales_type` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_sales_types`
--

INSERT INTO `0_sales_types` (`id`, `sales_type`, `tax_included`, `factor`, `inactive`) VALUES
(1, 'Retail', 1, 1, 0),
(2, 'Wholesale', 0, 0.7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_security_roles`
--

CREATE TABLE `0_security_roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sections` text COLLATE utf8_unicode_ci,
  `areas` text COLLATE utf8_unicode_ci,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_security_roles`
--

INSERT INTO `0_security_roles` (`id`, `role`, `description`, `sections`, `areas`, `inactive`) VALUES
(1, 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132;775', 0),
(2, 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;9472;9728;10496;10752;11008;13056;13312;15616;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;9217;9218;9220;9473;9474;9475;9476;9729;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;16129;16130;16131;16132;775', 0),
(3, 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873;775', 0),
(4, 'Stock Manager', 'Stock Manager', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132;775', 0),
(5, 'Production Manager', 'Production Manager', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', 0),
(6, 'Purchase Officer', 'Purchase Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', 0),
(7, 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', 0),
(8, 'AP Officer', 'AP Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', 0),
(9, 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', 0),
(10, 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132;775', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_shippers`
--

CREATE TABLE `0_shippers` (
  `shipper_id` int(11) NOT NULL,
  `shipper_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_shippers`
--

INSERT INTO `0_shippers` (`shipper_id`, `shipper_name`, `phone`, `phone2`, `contact`, `address`, `inactive`) VALUES
(1, 'Default', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_sql_trail`
--

CREATE TABLE `0_sql_trail` (
  `id` int(11) UNSIGNED NOT NULL,
  `sql` text COLLATE utf8_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_stock_category`
--

CREATE TABLE `0_stock_category` (
  `category_id` int(11) NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT '1',
  `dflt_units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_wip_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `Z_batch_number_id` int(11) NOT NULL,
  `Z_inspection_plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_stock_category`
--

INSERT INTO `0_stock_category` (`category_id`, `description`, `dflt_tax_type`, `dflt_units`, `dflt_mb_flag`, `dflt_sales_act`, `dflt_cogs_act`, `dflt_inventory_act`, `dflt_adjustment_act`, `dflt_wip_act`, `dflt_dim1`, `dflt_dim2`, `inactive`, `dflt_no_sale`, `dflt_no_purchase`, `Z_batch_number_id`, `Z_inspection_plan_id`) VALUES
(1, 'Components', 1, 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 2, 0),
(2, 'Charges', 1, 'each', 'D', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0),
(3, 'Systems', 1, 'each', 'M', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0),
(4, 'Services', 1, 'hr', 'D', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_stock_fa_class`
--

CREATE TABLE `0_stock_fa_class` (
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `depreciation_rate` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_stock_master`
--

CREATE TABLE `0_stock_master` (
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cogs_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inventory_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wip_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `purchase_cost` double NOT NULL DEFAULT '0',
  `material_cost` double NOT NULL DEFAULT '0',
  `labour_cost` double NOT NULL DEFAULT '0',
  `overhead_cost` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `no_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `depreciation_method` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `depreciation_rate` double NOT NULL DEFAULT '0',
  `depreciation_factor` double NOT NULL DEFAULT '1',
  `depreciation_start` date DEFAULT NULL,
  `depreciation_date` date DEFAULT NULL,
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Z_is_batch_controlled` tinyint(1) NOT NULL,
  `Z_inspection_plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_stock_master`
--

INSERT INTO `0_stock_master` (`stock_id`, `category_id`, `tax_type_id`, `description`, `long_description`, `units`, `mb_flag`, `sales_account`, `cogs_account`, `inventory_account`, `adjustment_account`, `wip_account`, `dimension_id`, `dimension2_id`, `purchase_cost`, `material_cost`, `labour_cost`, `overhead_cost`, `inactive`, `no_sale`, `no_purchase`, `editable`, `depreciation_method`, `depreciation_rate`, `depreciation_factor`, `depreciation_start`, `depreciation_date`, `fa_class_id`, `Z_is_batch_controlled`, `Z_inspection_plan_id`) VALUES
('101', 1, 1, 'iPad Air 2 16GB', '', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 107.61483249826, 0, 0, 0, 0, 0, 0, '', 0, 0, '0000-00-00', '0000-00-00', '', 1, 12),
('102', 1, 1, 'iPhone 6 64GB', '', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 135.69944317564, 0, 0, 0, 0, 0, 0, '', 0, 0, '0000-00-00', '0000-00-00', '', 1, -1),
('103', 1, 1, 'iPhone Cover Case', '', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 8.4192059095107, 0, 0, 0, 0, 0, 0, 'S', 0, 1, '0000-00-00', '0000-00-00', '', 0, 0),
('201', 1, 1, 'AP Surf Set', '', 'each', 'M', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 274.86552038072, 0, 0, 0, 0, 0, 0, '', 0, 0, '0000-00-00', '0000-00-00', '', 1, 0),
('202', 4, 1, 'Maintenance', '', 'hr', 'D', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'S', 0, 1, '0000-00-00', '0000-00-00', '', 0, 0),
('301', 4, 1, 'Support', '', 'hr', 'D', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'S', 0, 1, '0000-00-00', '0000-00-00', '', 0, 0),
('601', 1, 1, 'Test manuf', 'sdasfh', 'each', 'M', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0000-00-00', '0000-00-00', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_stock_moves`
--

CREATE TABLE `0_stock_moves` (
  `trans_id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `reference` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '1',
  `standard_cost` double NOT NULL DEFAULT '0',
  `Z_batch_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_stock_moves`
--

INSERT INTO `0_stock_moves` (`trans_id`, `trans_no`, `stock_id`, `type`, `loc_code`, `tran_date`, `price`, `reference`, `qty`, `standard_cost`, `Z_batch_number`) VALUES
(1, 1, '101', 25, 'DEF', '2016-05-05', 200, '', 100, 200, ''),
(2, 1, '102', 25, 'DEF', '2016-05-05', 150, '', 100, 150, ''),
(3, 1, '103', 25, 'DEF', '2016-05-05', 10, '', 100, 10, ''),
(4, 1, '101', 13, 'DEF', '2016-05-10', 300, 'auto', -20, 200, ''),
(5, 1, '301', 13, 'DEF', '2016-05-10', 80, 'auto', -3, 0, ''),
(6, 1, '101', 26, 'DEF', '2016-05-05', 200, '001/2016', -2, 200, ''),
(7, 1, '102', 26, 'DEF', '2016-05-05', 150, '001/2016', -2, 150, ''),
(8, 1, '103', 26, 'DEF', '2016-05-05', 10, '001/2016', -2, 10, ''),
(9, 1, '301', 26, 'DEF', '2016-05-05', 0, '001/2016', -2, 0, ''),
(10, 1, '201', 26, 'DEF', '2016-05-05', 0, '001/2016', 2, 0, ''),
(11, 2, '101', 25, 'DEF', '2016-05-05', 200, '', 15, 200, ''),
(12, 2, '101', 13, 'DEF', '2016-05-07', 300, 'auto', -1, 200, ''),
(13, 3, '102', 13, 'DEF', '2016-05-07', 222.62, 'auto', -1, 150, ''),
(14, 3, '103', 13, 'DEF', '2016-05-07', 44.52, 'auto', -1, 10, ''),
(15, 4, '202', 13, 'DEF', '2016-05-07', 0, 'auto', -5, 0, ''),
(16, 3, '101', 25, 'DEF', '2016-12-31', 1, '', 5, 200, ''),
(17, 4, '102', 25, 'DEF', '2016-12-31', 1, '', 100, 150, ''),
(18, 5, '101', 25, 'DEF', '2017-07-26', 1, '', 200, 200, ''),
(19, 5, '102', 25, 'DEF', '2017-07-26', 1, '', 250, 150, ''),
(20, 6, '101', 25, 'DEF', '2017-07-26', 2, '', 200, 119.51710261569, ''),
(21, 7, '101', 25, 'DEF', '2017-08-01', 1, '', 10, 121.10453648915, ''),
(24, 10, '101', 25, 'DEF', '2017-08-02', 2, '', 1, 120.86614173228, 'dvcsdsdvsdvsd'),
(25, 10, '102', 25, 'DEF', '2017-08-02', 2, '', 1, 149.66517857143, 'rtertertr'),
(27, 12, '101', 25, 'DEF', '2017-08-02', 2, '', 11, 118.58434874759, 'sdsdfsdf'),
(28, 12, '102', 25, 'DEF', '2017-08-02', 2, '', 15, 145.24428725702, 'dsfsdfsdfsdfsdfsdf'),
(29, 13, '101', 25, 'DEF', '2017-08-02', 2, '', 15, 115.62431086142, ''),
(30, 13, '103', 25, 'DEF', '2017-08-02', 2, '', 10, 9.0654205607477, ''),
(31, 14, '101', 25, 'DEF', '2017-08-02', 2, '', 10, 113.74163970588, 'fghnfghfgh'),
(32, 14, '102', 25, 'DEF', '2017-08-02', 2, '', 11, 142.18013080169, 'dtgh53ert'),
(33, 15, '101', 25, 'DEF', '2017-08-08', 2, '', 20, 110.17083687943, 'PACK-20170808-1'),
(34, 15, '102', 25, 'DEF', '2017-08-08', 2, '', 15, 138.21893047035, 'PACK-20170808-2'),
(35, 16, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 109.99893274336, 'PACK-20170808-1'),
(36, 16, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 137.96347346939, 'PACK-20170808-2'),
(37, 16, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.9814814814815, 'None'),
(38, 17, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 109.8276360424, 'PACK-20170808-1'),
(39, 17, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 137.70905702648, 'PACK-20170808-2'),
(40, 17, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.8990825688074, 'None'),
(41, 18, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 109.65694356261, 'PACK-20170808-1'),
(42, 18, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 137.45567479675, 'PACK-20170808-2'),
(43, 18, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.8181818181819, 'None'),
(44, 19, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 109.48685211268, 'PACK-20170808-1'),
(45, 19, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 137.20332048682, 'PACK-20170808-2'),
(46, 19, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.7387387387388, 'None'),
(47, 20, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 109.31735852373, 'PACK-20170808-1'),
(48, 20, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 136.95198785426, 'PACK-20170808-2'),
(49, 20, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.6607142857143, 'None'),
(50, 21, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 109.14845964913, 'PACK-20170808-1'),
(51, 21, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 136.70167070708, 'PACK-20170808-2'),
(52, 21, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.5840707964602, 'None'),
(53, 22, '101', 25, 'DEF', '2017-08-08', 2, '', 1, 108.98015236428, 'PACK-20170808-1'),
(54, 22, '102', 25, 'DEF', '2017-08-08', 2, '', 1, 136.45236290324, 'PACK-20170808-2'),
(55, 22, '103', 25, 'DEF', '2017-08-08', 2, '', 1, 8.5087719298246, 'None'),
(56, 23, '101', 25, 'DEF', '2017-08-14', 2, '', 1, 108.81231818182, 'PACK-20170814-3'),
(57, 23, '102', 25, 'DEF', '2017-08-14', 2, '', 1, 136.20392555333, 'PACK-20170814-4'),
(58, 24, '101', 25, 'DEF', '2017-08-14', 2, '', 1, 108.64506980803, 'PACK-20170814-5'),
(59, 24, '102', 25, 'DEF', '2017-08-14', 2, '', 1, 135.95648594379, 'PACK-20170814-6'),
(60, 1, '101', 29, 'DEF', '2017-08-14', 0, '', -5, 108.64506980803, ''),
(61, 1, '102', 29, 'DEF', '2017-08-14', 0, '', -5, 135.95648594379, ''),
(62, 1, '103', 29, 'DEF', '2017-08-14', 0, '', -5, 8.5087719298246, ''),
(63, 1, '301', 29, 'DEF', '2017-08-14', 0, '', -5, 0, ''),
(64, 2, '201', 26, 'DEF', '2017-08-14', 0, '001/0000', 5, 253.11032768164, 'None'),
(65, 2, '101', 29, 'DEF', '2017-08-14', 0, '', -5, 108.64506980803, ''),
(66, 2, '102', 29, 'DEF', '2017-08-14', 0, '', -5, 135.95648594379, ''),
(67, 2, '103', 29, 'DEF', '2017-08-14', 0, '', -5, 8.5087719298246, ''),
(68, 2, '301', 29, 'DEF', '2017-08-14', 0, '', -5, 0, ''),
(69, 3, '201', 26, 'DEF', '2017-08-14', 0, '002/0000', 5, 253.11032768164, 'None'),
(75, 4, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(76, 4, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(77, 4, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(78, 4, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(79, 5, '201', 26, 'DEF', '2017-08-14', 0, '001/2017', 1, 253.11032768164, ''),
(85, 6, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(86, 6, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(87, 6, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(88, 6, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(89, 8, '201', 26, 'DEF', '2017-08-14', 0, '002/2017', 1, 253.11032768164, ''),
(90, 7, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(91, 7, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(92, 7, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(93, 7, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(94, 6, '201', 26, 'DEF', '2017-08-14', 0, '003/0000', 1, 253.11032768164, 'None'),
(95, 8, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(96, 8, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(97, 8, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(98, 8, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(99, 10, '201', 26, 'DEF', '2017-08-14', 0, '004/0000', 1, 253.11032768164, 'PACK-20170814-7'),
(100, 9, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(101, 9, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(102, 9, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(103, 9, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(104, 11, '201', 26, 'DEF', '2017-08-14', 0, '003/2017', 1, 253.11032768164, 'PACK-20170814-7'),
(105, 10, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(106, 10, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(107, 10, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(108, 10, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(109, 12, '201', 26, 'DEF', '2017-08-14', 0, '004/2017', 1, 253.11032768164, 'PACK-20170814-7'),
(110, 11, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(111, 11, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(112, 11, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(113, 11, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(114, 13, '201', 26, 'DEF', '2017-08-14', 0, '005/2017', 1, 253.11032768164, 'PACK-20170814-7'),
(115, 12, '101', 29, 'DEF', '2017-08-14', 0, '', -1, 108.64506980803, ''),
(116, 12, '102', 29, 'DEF', '2017-08-14', 0, '', -1, 135.95648594379, ''),
(117, 12, '103', 29, 'DEF', '2017-08-14', 0, '', -1, 8.5087719298246, ''),
(118, 12, '301', 29, 'DEF', '2017-08-14', 0, '', -1, 0, ''),
(119, 14, '201', 26, 'DEF', '2017-08-14', 0, '006/2017', 1, 253.11032768164, 'PACK-20170814-7'),
(120, 13, '101', 29, 'DEF', '2017-08-15', 0, '', -1, 108.64506980803, ''),
(121, 13, '102', 29, 'DEF', '2017-08-15', 0, '', -1, 135.95648594379, ''),
(122, 13, '103', 29, 'DEF', '2017-08-15', 0, '', -1, 8.5087719298246, ''),
(123, 13, '301', 29, 'DEF', '2017-08-15', 0, '', -1, 0, ''),
(124, 17, '201', 26, 'DEF', '2017-08-15', 0, '007/2017', 1, 253.11032768164, 'PACK-20170815-7'),
(125, 14, '101', 29, 'DEF', '2017-08-15', 0, '', -1, 108.64506980803, ''),
(126, 14, '102', 29, 'DEF', '2017-08-15', 0, '', -1, 135.95648594379, ''),
(127, 14, '103', 29, 'DEF', '2017-08-15', 0, '', -1, 8.5087719298246, ''),
(128, 14, '301', 29, 'DEF', '2017-08-15', 0, '', -1, 0, ''),
(129, 18, '201', 26, 'DEF', '2017-08-15', 0, '008/2017', 1, 253.11032768164, 'PACK-20170815-7'),
(130, 15, '101', 29, 'DEF', '2017-08-15', 0, '', 1, 108.64506980803, ''),
(131, 15, '102', 29, 'DEF', '2017-08-15', 0, '', 1, 135.95648594379, ''),
(132, 15, '103', 29, 'DEF', '2017-08-15', 0, '', 1, 8.5087719298246, ''),
(133, 15, '301', 29, 'DEF', '2017-08-15', 0, '', 1, 0, ''),
(134, 19, '201', 26, 'DEF', '2017-08-15', 0, '009/2017', -1, 253.11032768164, 'PACK-20170815-7'),
(135, 16, '101', 29, 'DEF', '2017-08-15', 0, '', -1, 108.64506980803, ''),
(136, 16, '102', 29, 'DEF', '2017-08-15', 0, '', -1, 135.95648594379, ''),
(137, 16, '103', 29, 'DEF', '2017-08-15', 0, '', -1, 8.5087719298246, ''),
(138, 16, '301', 29, 'DEF', '2017-08-15', 0, '', -1, 0, ''),
(139, 20, '201', 26, 'DEF', '2017-08-15', 0, '010/2017', 1, 253.11032768164, 'PACK-20170815-7'),
(140, 17, '101', 29, 'DEF', '2017-08-15', 0, '', 1, 108.64506980803, ''),
(141, 17, '102', 29, 'DEF', '2017-08-15', 0, '', 1, 135.95648594379, ''),
(142, 17, '103', 29, 'DEF', '2017-08-15', 0, '', 1, 8.5087719298246, ''),
(143, 17, '301', 29, 'DEF', '2017-08-15', 0, '', 1, 0, ''),
(144, 21, '201', 26, 'DEF', '2017-08-15', 0, '011/2017', -1, 253.11032768164, 'PACK-20170815-8'),
(145, 1, '101', 17, 'DEF', '2017-08-25', 0, '001/2017', 10, 108.64506980823, 'PACK-20170814-3'),
(146, 2, '101', 17, 'DEF', '2017-08-25', 0, '002/2017', -11, 108.64506980813, 'PACK-20170814-3'),
(147, 1, '101', 16, 'DEF', '2017-08-25', 0, '001/2017', -9, 0, 'PACK-20170808-1'),
(148, 1, '101', 16, 'LOC1', '2017-08-25', 0, '001/2017', 9, 0, 'PACK-20170808-1'),
(149, 1, '101', 16, 'DEF', '2017-08-25', 0, '001/2017', -1, 0, 'PACK-20170814-5'),
(150, 1, '101', 16, 'LOC1', '2017-08-25', 0, '001/2017', 1, 0, 'PACK-20170814-5'),
(151, 18, '101', 29, 'DEF', '2017-08-25', 0, '', -1, 108.64506980803, ''),
(152, 18, '102', 29, 'DEF', '2017-08-25', 0, '', -1, 135.95648594379, ''),
(153, 18, '103', 29, 'DEF', '2017-08-25', 0, '', -1, 8.5087719298246, ''),
(154, 18, '301', 29, 'DEF', '2017-08-25', 0, '', -1, 0, ''),
(155, 23, '201', 26, 'DEF', '2017-08-25', 0, '005/0000', 1, 253.11032768164, 'PACK-20170825-9'),
(156, 25, '101', 25, 'DEF', '2017-08-25', 2, '', 1, 108.47181109228, 'PACK-20170825-9'),
(157, 25, '102', 25, 'DEF', '2017-08-25', 2, '', 1, 135.69944317564, 'None'),
(158, 25, '103', 25, 'DEF', '2017-08-25', 2, '', 1, 8.4192059095107, 'None'),
(159, 26, '101', 25, 'DEF', '2017-08-25', 2, '', 5, 107.61483249826, 'PACK-20170825-10'),
(160, 19, '101', 29, 'DEF', '2017-08-25', 0, '', -1, 107.61483249826, ''),
(161, 19, '102', 29, 'DEF', '2017-08-25', 0, '', -1, 135.69944317564, ''),
(162, 19, '103', 29, 'DEF', '2017-08-25', 0, '', -1, 8.4192059095107, ''),
(163, 19, '301', 29, 'DEF', '2017-08-25', 0, '', -1, 0, ''),
(164, 22, '201', 26, 'DEF', '2017-08-25', 0, '006/0000', 1, 251.73348158341, 'PACK-20170825-11');

-- --------------------------------------------------------

--
-- Table structure for table `0_suppliers`
--

CREATE TABLE `0_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supp_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `gst_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  `tax_group_id` int(11) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT '0',
  `purchase_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payable_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_suppliers`
--

INSERT INTO `0_suppliers` (`supplier_id`, `supp_name`, `supp_ref`, `address`, `supp_address`, `gst_no`, `contact`, `supp_account_no`, `website`, `bank_account`, `curr_code`, `payment_terms`, `tax_included`, `dimension_id`, `dimension2_id`, `tax_group_id`, `credit_limit`, `purchase_account`, `payable_account`, `payment_discount_account`, `notes`, `inactive`) VALUES
(1, 'Dino Saurius Inc.', 'Dino Saurius', 'N/A', '', '987654321', '', '', '', '', 'USD', 3, 0, 0, 0, 1, 0, '', '2100', '5060', '', 0),
(2, 'Beefeater Ltd.', 'Beefeater', 'N/A', '', '67565590', '', '', '', '', 'GBP', 4, 0, 0, 0, 1, 0, '', '2100', '5060', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_supp_allocations`
--

CREATE TABLE `0_supp_allocations` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `amt` double UNSIGNED DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_supp_invoice_items`
--

CREATE TABLE `0_supp_invoice_items` (
  `id` int(11) NOT NULL,
  `supp_trans_no` int(11) DEFAULT NULL,
  `supp_trans_type` int(11) DEFAULT NULL,
  `gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grn_item_id` int(11) DEFAULT NULL,
  `po_detail_item_id` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `memo_` tinytext COLLATE utf8_unicode_ci,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_supp_invoice_items`
--

INSERT INTO `0_supp_invoice_items` (`id`, `supp_trans_no`, `supp_trans_type`, `gl_code`, `grn_item_id`, `po_detail_item_id`, `stock_id`, `description`, `quantity`, `unit_price`, `unit_tax`, `memo_`, `dimension_id`, `dimension2_id`) VALUES
(1, 1, 20, '0', 4, 4, '101', 'iPad Air 2 16GB', 15, 200, 10, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_supp_trans`
--

CREATE TABLE `0_supp_trans` (
  `trans_no` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `supplier_id` int(11) UNSIGNED DEFAULT NULL,
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_supp_trans`
--

INSERT INTO `0_supp_trans` (`trans_no`, `type`, `supplier_id`, `reference`, `supp_reference`, `tran_date`, `due_date`, `ov_amount`, `ov_discount`, `ov_gst`, `rate`, `alloc`, `tax_included`) VALUES
(1, 20, 1, '001/2016', 'rr4', '2016-05-05', '2016-05-15', 3000, 0, 150, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_sys_prefs`
--

CREATE TABLE `0_sys_prefs` (
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_sys_prefs`
--

INSERT INTO `0_sys_prefs` (`name`, `category`, `type`, `length`, `value`) VALUES
('accounts_alpha', 'glsetup.general', 'tinyint', 1, '0'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', 1, '0'),
('add_pct', 'setup.company', 'int', 5, '-1'),
('allow_negative_prices', 'glsetup.inventory', 'tinyint', 1, '1'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', 1, '0'),
('alternative_tax_include_on_docs', 'setup.company', 'tinyint', 1, ''),
('auto_curr_reval', 'setup.company', 'smallint', 6, '1'),
('bank_charge_act', 'glsetup.general', 'varchar', 15, '5690'),
('base_sales', 'setup.company', 'int', 11, '1'),
('bcc_email', 'setup.company', 'varchar', 100, ''),
('coy_logo', 'setup.company', 'varchar', 100, 'logo_frontaccounting.jpg'),
('coy_name', 'setup.company', 'varchar', 60, 'Upwork_project'),
('coy_no', 'setup.company', 'varchar', 25, ''),
('creditors_act', 'glsetup.purchase', 'varchar', 15, '2100'),
('curr_default', 'setup.company', 'char', 3, 'USD'),
('debtors_act', 'glsetup.sales', 'varchar', 15, '1200'),
('default_adj_act', 'glsetup.items', 'varchar', 15, '5040'),
('default_cogs_act', 'glsetup.items', 'varchar', 15, '5010'),
('default_credit_limit', 'glsetup.customer', 'int', 11, '1000'),
('default_delivery_required', 'glsetup.sales', 'smallint', 6, '1'),
('default_dim_required', 'glsetup.dims', 'int', 11, '20'),
('default_inv_sales_act', 'glsetup.items', 'varchar', 15, '4010'),
('default_inventory_act', 'glsetup.items', 'varchar', 15, '1510'),
('default_loss_on_asset_disposal_act', 'glsetup.items', 'varchar', 15, '5660'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', 15, '4500'),
('default_quote_valid_days', 'glsetup.sales', 'smallint', 6, '30'),
('default_receival_required', 'glsetup.purchase', 'smallint', 6, '10'),
('default_sales_act', 'glsetup.sales', 'varchar', 15, '4010'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', 15, '4510'),
('default_wip_act', 'glsetup.items', 'varchar', 15, '1530'),
('default_workorder_required', 'glsetup.manuf', 'int', 11, '20'),
('deferred_income_act', 'glsetup.sales', 'varchar', 15, ''),
('depreciation_period', 'glsetup.company', 'tinyint', 1, '1'),
('domicile', 'setup.company', 'varchar', 55, ''),
('email', 'setup.company', 'varchar', 100, 'delta@delta.com'),
('exchange_diff_act', 'glsetup.general', 'varchar', 15, '4450'),
('f_year', 'setup.company', 'int', 11, '2'),
('fax', 'setup.company', 'varchar', 30, ''),
('freight_act', 'glsetup.customer', 'varchar', 15, '4430'),
('gl_closing_date', 'setup.closing_date', 'date', 8, '2016-12-31'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', 15, '1550'),
('gst_no', 'setup.company', 'varchar', 25, '33445566'),
('legal_text', 'glsetup.customer', 'tinytext', 0, ''),
('loc_notification', 'glsetup.inventory', 'tinyint', 1, '0'),
('login_tout', 'setup.company', 'smallint', 6, '600'),
('no_customer_list', 'setup.company', 'tinyint', 1, ''),
('no_item_list', 'setup.company', 'tinyint', 1, ''),
('no_supplier_list', 'setup.company', 'tinyint', 1, ''),
('no_zero_lines_amount', 'glsetup.sales', 'tinyint', 1, '1'),
('past_due_days', 'glsetup.general', 'int', 11, '30'),
('phone', 'setup.company', 'varchar', 30, ''),
('po_over_charge', 'glsetup.purchase', 'int', 11, '10'),
('po_over_receive', 'glsetup.purchase', 'int', 11, '10'),
('postal_address', 'setup.company', 'tinytext', 0, 'N/A'),
('print_invoice_no', 'glsetup.sales', 'tinyint', 1, '0'),
('print_item_images_on_quote', 'glsetup.inventory', 'tinyint', 1, '0'),
('profit_loss_year_act', 'glsetup.general', 'varchar', 15, '9990'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', 15, '5060'),
('retained_earnings_act', 'glsetup.general', 'varchar', 15, '3590'),
('round_to', 'setup.company', 'int', 5, '1'),
('show_po_item_codes', 'glsetup.purchase', 'tinyint', 1, '0'),
('suppress_tax_rates', 'setup.company', 'tinyint', 1, ''),
('tax_algorithm', 'glsetup.customer', 'tinyint', 1, '1'),
('tax_last', 'setup.company', 'int', 11, '1'),
('tax_prd', 'setup.company', 'int', 11, '1'),
('time_zone', 'setup.company', 'tinyint', 1, ''),
('use_dimension', 'setup.company', 'tinyint', 1, '1'),
('use_fixed_assets', 'setup.company', 'tinyint', 1, '1'),
('use_manufacturing', 'setup.company', 'tinyint', 1, '1'),
('version_id', 'system', 'varchar', 11, '2.4.1');

-- --------------------------------------------------------

--
-- Table structure for table `0_tags`
--

CREATE TABLE `0_tags` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_tag_associations`
--

CREATE TABLE `0_tag_associations` (
  `record_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_tax_groups`
--

CREATE TABLE `0_tax_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_tax_groups`
--

INSERT INTO `0_tax_groups` (`id`, `name`, `inactive`) VALUES
(1, 'Tax', 0),
(2, 'Tax Exempt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_tax_group_items`
--

CREATE TABLE `0_tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_tax_group_items`
--

INSERT INTO `0_tax_group_items` (`tax_group_id`, `tax_type_id`, `tax_shipping`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0_tax_types`
--

CREATE TABLE `0_tax_types` (
  `id` int(11) NOT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `sales_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_tax_types`
--

INSERT INTO `0_tax_types` (`id`, `rate`, `sales_gl_code`, `purchasing_gl_code`, `name`, `inactive`) VALUES
(1, 5, '2150', '2150', 'Tax', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_trans_tax_details`
--

CREATE TABLE `0_trans_tax_details` (
  `id` int(11) NOT NULL,
  `trans_type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `ex_rate` double NOT NULL DEFAULT '1',
  `included_in_price` tinyint(1) NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `memo` tinytext COLLATE utf8_unicode_ci,
  `reg_type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_trans_tax_details`
--

INSERT INTO `0_trans_tax_details` (`id`, `trans_type`, `trans_no`, `tran_date`, `tax_type_id`, `rate`, `ex_rate`, `included_in_price`, `net_amount`, `amount`, `memo`, `reg_type`) VALUES
(1, 13, 1, '2016-05-10', 1, 5, 1, 1, 5942.86, 297.14, 'auto', NULL),
(2, 10, 1, '2016-05-10', 1, 5, 1, 1, 5942.86, 297.14, '001/2016', 0),
(3, 20, 1, '2016-05-05', 1, 5, 1, 0, 3000, 150, 'rr4', 1),
(4, 13, 2, '2016-05-07', 1, 5, 1, 1, 285.71, 14.29, 'auto', NULL),
(5, 10, 2, '2016-05-07', 1, 5, 1, 1, 285.71, 14.29, '002/2016', 0),
(6, 13, 3, '2016-05-07', 0, 0, 1.123, 1, 267.14, 0, 'auto', NULL),
(7, 10, 3, '2016-05-07', 0, 0, 1.123, 1, 267.14, 0, '003/2016', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_useronline`
--

CREATE TABLE `0_useronline` (
  `id` int(11) NOT NULL,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_users`
--

CREATE TABLE `0_users` (
  `id` smallint(6) NOT NULL,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_sep` tinyint(1) NOT NULL DEFAULT '0',
  `tho_sep` tinyint(1) NOT NULL DEFAULT '0',
  `dec_sep` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `page_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A4',
  `prices_dec` smallint(6) NOT NULL DEFAULT '2',
  `qty_dec` smallint(6) NOT NULL DEFAULT '2',
  `rates_dec` smallint(6) NOT NULL DEFAULT '4',
  `percent_dec` smallint(6) NOT NULL DEFAULT '1',
  `show_gl` tinyint(1) NOT NULL DEFAULT '1',
  `show_codes` tinyint(1) NOT NULL DEFAULT '0',
  `show_hints` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint(1) UNSIGNED NOT NULL DEFAULT '10',
  `graphic_links` tinyint(1) DEFAULT '1',
  `pos` smallint(6) DEFAULT '1',
  `print_profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rep_popup` tinyint(1) DEFAULT '1',
  `sticky_doc_date` tinyint(1) DEFAULT '0',
  `startup_tab` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transaction_days` smallint(6) NOT NULL DEFAULT '30',
  `save_report_selections` smallint(6) NOT NULL DEFAULT '0',
  `use_date_picker` tinyint(1) NOT NULL DEFAULT '1',
  `def_print_destination` tinyint(1) NOT NULL DEFAULT '0',
  `def_print_orientation` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_users`
--

INSERT INTO `0_users` (`id`, `user_id`, `password`, `real_name`, `role_id`, `phone`, `email`, `language`, `date_format`, `date_sep`, `tho_sep`, `dec_sep`, `theme`, `page_size`, `prices_dec`, `qty_dec`, `rates_dec`, `percent_dec`, `show_gl`, `show_codes`, `show_hints`, `last_visit_date`, `query_size`, `graphic_links`, `pos`, `print_profile`, `rep_popup`, `sticky_doc_date`, `startup_tab`, `transaction_days`, `save_report_selections`, `use_date_picker`, `def_print_destination`, `def_print_orientation`, `inactive`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 2, '', 'adm@example.com', 'C', 0, 0, 0, 0, 'bootstrap', 'Letter', 2, 2, 4, 1, 1, 0, 0, '2017-09-22 04:03:26', 10, 1, 1, '', 1, 0, 'orders', 30, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_voided`
--

CREATE TABLE `0_voided` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_workcentres`
--

CREATE TABLE `0_workcentres` (
  `id` int(11) NOT NULL,
  `name` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_workcentres`
--

INSERT INTO `0_workcentres` (`id`, `name`, `description`, `inactive`) VALUES
(1, 'Work Centre', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_workorders`
--

CREATE TABLE `0_workorders` (
  `id` int(11) NOT NULL,
  `wo_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT '1',
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `additional_costs` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_workorders`
--

INSERT INTO `0_workorders` (`id`, `wo_ref`, `loc_code`, `units_reqd`, `stock_id`, `date_`, `type`, `required_by`, `released_date`, `units_issued`, `closed`, `released`, `additional_costs`) VALUES
(1, '001/2016', 'DEF', 2, '201', '2016-05-05', 0, '2016-05-05', '2016-05-05', 2, 1, 1, 0),
(2, '002/2016', 'DEF', 5, '201', '2016-05-07', 2, '2016-05-27', '2016-05-07', 5, 1, 1, 0),
(3, '003/2016', 'DEF', 5, '201', '2016-05-07', 2, '2016-05-27', '2017-08-14', 5, 1, 1, 0),
(5, '001/2017', 'DEF', 1, '201', '2017-08-14', 0, '2017-08-14', '2017-08-14', 1, 1, 1, 0),
(6, '002/2017', 'DEF', 1, '201', '2017-08-14', 2, '2017-09-03', '2017-08-14', 1, 1, 1, 0),
(8, '003/2017', 'DEF', 1, '201', '2017-08-14', 0, '2017-08-14', '2017-08-14', 1, 1, 1, 0),
(9, '004/2017', 'DEF', 1, '201', '2017-08-14', 2, '2017-09-03', '0000-00-00', 0, 0, 0, 0),
(10, '005/2017', 'DEF', 1, '201', '2017-08-14', 2, '2017-09-03', '2017-08-14', 1, 1, 1, 0),
(11, '006/2017', 'DEF', 1, '201', '2017-08-14', 0, '2017-08-14', '2017-08-14', 1, 1, 1, 0),
(12, '007/2017', 'DEF', 1, '201', '2017-08-14', 0, '2017-08-14', '2017-08-14', 1, 1, 1, 0),
(13, '008/2017', 'DEF', 1, '201', '2017-08-14', 0, '2017-08-14', '2017-08-14', 1, 1, 1, 0),
(14, '009/2017', 'DEF', 1, '201', '2017-08-14', 0, '2017-08-14', '2017-08-14', 1, 1, 1, 0),
(15, '010/2017', 'DEF', 1, '201', '2017-08-14', 2, '2017-09-03', '0000-00-00', 0, 0, 0, 0),
(16, '011/2017', 'DEF', 1, '201', '2017-08-15', 2, '2017-09-04', '0000-00-00', 0, 0, 0, 0),
(17, '012/2017', 'DEF', 1, '201', '2017-08-15', 0, '2017-08-15', '2017-08-15', 1, 1, 1, 0),
(18, '013/2017', 'DEF', 1, '201', '2017-08-15', 0, '2017-08-15', '2017-08-15', 1, 1, 1, 0),
(19, '014/2017', 'DEF', 1, '201', '2017-08-15', 1, '2017-08-15', '2017-08-15', -1, 1, 1, 0),
(20, '015/2017', 'DEF', 1, '201', '2017-08-15', 0, '2017-08-15', '2017-08-15', 1, 1, 1, 0),
(21, '016/2017', 'DEF', 1, '201', '2017-08-15', 1, '2017-08-15', '2017-08-15', -1, 1, 1, 0),
(22, '017/2017', 'DEF', 1, '201', '2017-08-15', 2, '2017-09-04', '2017-08-25', 1, 1, 1, 0),
(23, '018/2017', 'DEF', 1, '201', '2017-08-15', 2, '2017-09-04', '2017-08-15', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_wo_costing`
--

CREATE TABLE `0_wo_costing` (
  `id` int(11) NOT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `cost_type` tinyint(1) NOT NULL DEFAULT '0',
  `trans_type` int(11) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_wo_issues`
--

CREATE TABLE `0_wo_issues` (
  `issue_no` int(11) NOT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_wo_issue_items`
--

CREATE TABLE `0_wo_issue_items` (
  `id` int(11) NOT NULL,
  `stock_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  `unit_cost` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0_wo_manufacture`
--

CREATE TABLE `0_wo_manufacture` (
  `id` int(11) NOT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_wo_manufacture`
--

INSERT INTO `0_wo_manufacture` (`id`, `reference`, `workorder_id`, `quantity`, `date_`) VALUES
(1, '001/0000', 2, 5, '2017-08-14'),
(2, '002/0000', 3, 5, '2017-08-14'),
(4, '001/2017', 5, 1, '2017-08-14'),
(6, '002/2017', 8, 1, '2017-08-14'),
(7, '003/0000', 6, 1, '2017-08-14'),
(8, '004/0000', 10, 1, '2017-08-14'),
(9, '003/2017', 11, 1, '2017-08-14'),
(10, '004/2017', 12, 1, '2017-08-14'),
(11, '005/2017', 13, 1, '2017-08-14'),
(12, '006/2017', 14, 1, '2017-08-14'),
(13, '007/2017', 17, 1, '2017-08-15'),
(14, '008/2017', 18, 1, '2017-08-15'),
(15, '009/2017', 19, -1, '2017-08-15'),
(16, '010/2017', 20, 1, '2017-08-15'),
(17, '011/2017', 21, -1, '2017-08-15'),
(18, '005/0000', 23, 1, '2017-08-25'),
(19, '006/0000', 22, 1, '2017-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `0_wo_requirements`
--

CREATE TABLE `0_wo_requirements` (
  `id` int(11) NOT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre` int(11) NOT NULL DEFAULT '0',
  `units_req` double NOT NULL DEFAULT '1',
  `unit_cost` double NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0_wo_requirements`
--

INSERT INTO `0_wo_requirements` (`id`, `workorder_id`, `stock_id`, `workcentre`, `units_req`, `unit_cost`, `loc_code`, `units_issued`) VALUES
(1, 1, '101', 1, 1, 0, 'DEF', 2),
(2, 1, '102', 1, 1, 0, 'DEF', 2),
(3, 1, '103', 1, 1, 0, 'DEF', 2),
(4, 1, '301', 1, 1, 0, 'DEF', 2),
(5, 2, '101', 1, 1, 108.64506980803, 'DEF', 5),
(6, 2, '102', 1, 1, 135.95648594379, 'DEF', 5),
(7, 2, '103', 1, 1, 8.5087719298246, 'DEF', 5),
(8, 2, '301', 1, 1, 0, 'DEF', 5),
(9, 3, '101', 1, 1, 108.64506980803, 'DEF', 5),
(10, 3, '102', 1, 1, 135.95648594379, 'DEF', 5),
(11, 3, '103', 1, 1, 8.5087719298246, 'DEF', 5),
(12, 3, '301', 1, 1, 0, 'DEF', 5),
(23, 5, '101', 1, 1, 108.64506980803, 'DEF', 1),
(24, 5, '102', 1, 1, 135.95648594379, 'DEF', 1),
(25, 5, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(26, 5, '301', 1, 1, 0, 'DEF', 1),
(37, 8, '101', 1, 1, 108.64506980803, 'DEF', 1),
(38, 8, '102', 1, 1, 135.95648594379, 'DEF', 1),
(39, 8, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(40, 8, '301', 1, 1, 0, 'DEF', 1),
(44, 6, '101', 1, 1, 108.64506980803, 'DEF', 1),
(45, 6, '102', 1, 1, 135.95648594379, 'DEF', 1),
(46, 6, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(47, 6, '301', 1, 1, 0, 'DEF', 1),
(51, 10, '101', 1, 1, 108.64506980803, 'DEF', 1),
(52, 10, '102', 1, 1, 135.95648594379, 'DEF', 1),
(53, 10, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(54, 10, '301', 1, 1, 0, 'DEF', 1),
(58, 11, '101', 1, 1, 108.64506980803, 'DEF', 1),
(59, 11, '102', 1, 1, 135.95648594379, 'DEF', 1),
(60, 11, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(61, 11, '301', 1, 1, 0, 'DEF', 1),
(65, 12, '101', 1, 1, 108.64506980803, 'DEF', 1),
(66, 12, '102', 1, 1, 135.95648594379, 'DEF', 1),
(67, 12, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(68, 12, '301', 1, 1, 0, 'DEF', 1),
(72, 13, '101', 1, 1, 108.64506980803, 'DEF', 1),
(73, 13, '102', 1, 1, 135.95648594379, 'DEF', 1),
(74, 13, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(75, 13, '301', 1, 1, 0, 'DEF', 1),
(79, 14, '101', 1, 1, 108.64506980803, 'DEF', 1),
(80, 14, '102', 1, 1, 135.95648594379, 'DEF', 1),
(81, 14, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(82, 14, '301', 1, 1, 0, 'DEF', 1),
(86, 17, '101', 1, 1, 108.64506980803, 'DEF', 1),
(87, 17, '102', 1, 1, 135.95648594379, 'DEF', 1),
(88, 17, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(89, 17, '301', 1, 1, 0, 'DEF', 1),
(93, 18, '101', 1, 1, 108.64506980803, 'DEF', 1),
(94, 18, '102', 1, 1, 135.95648594379, 'DEF', 1),
(95, 18, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(96, 18, '301', 1, 1, 0, 'DEF', 1),
(100, 19, '101', 1, 1, 108.64506980803, 'DEF', -1),
(101, 19, '102', 1, 1, 135.95648594379, 'DEF', -1),
(102, 19, '103', 1, 1, 8.5087719298246, 'DEF', -1),
(103, 19, '301', 1, 1, 0, 'DEF', -1),
(107, 20, '101', 1, 1, 108.64506980803, 'DEF', 1),
(108, 20, '102', 1, 1, 135.95648594379, 'DEF', 1),
(109, 20, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(110, 20, '301', 1, 1, 0, 'DEF', 1),
(114, 21, '101', 1, 1, 108.64506980803, 'DEF', -1),
(115, 21, '102', 1, 1, 135.95648594379, 'DEF', -1),
(116, 21, '103', 1, 1, 8.5087719298246, 'DEF', -1),
(117, 21, '301', 1, 1, 0, 'DEF', -1),
(121, 23, '101', 1, 1, 108.64506980803, 'DEF', 1),
(122, 23, '102', 1, 1, 135.95648594379, 'DEF', 1),
(123, 23, '103', 1, 1, 8.5087719298246, 'DEF', 1),
(124, 23, '301', 1, 1, 0, 'DEF', 1),
(125, 22, '101', 1, 1, 107.61483249826, 'DEF', 1),
(126, 22, '102', 1, 1, 135.69944317564, 'DEF', 1),
(127, 22, '103', 1, 1, 8.4192059095107, 'DEF', 1),
(128, 22, '301', 1, 1, 0, 'DEF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `z_batch_number_assign`
--

CREATE TABLE `z_batch_number_assign` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_batch_number_assign`
--

INSERT INTO `z_batch_number_assign` (`id`, `type`, `batch_id`) VALUES
(1, 'from_po', 2),
(2, 'from_inventory_adjustment', 2),
(3, 'from_production', 2);

-- --------------------------------------------------------

--
-- Table structure for table `z_batch_number_master`
--

CREATE TABLE `z_batch_number_master` (
  `id` int(11) NOT NULL,
  `string_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_batch_number_master`
--

INSERT INTO `z_batch_number_master` (`id`, `string_format`, `serial_no`) VALUES
(1, 'None', 1),
(2, 'PACK-%Y%m%d-%no', 11),
(4, 'gfdgdfgfgf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `z_inspection_plan_content`
--

CREATE TABLE `z_inspection_plan_content` (
  `id` int(11) NOT NULL,
  `inspection_plan_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `is_mandatory` tinyint(1) NOT NULL,
  `answer_type` int(11) NOT NULL,
  `option_list` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_inspection_plan_content`
--

INSERT INTO `z_inspection_plan_content` (`id`, `inspection_plan_id`, `question`, `is_mandatory`, `answer_type`, `option_list`) VALUES
(9, 1, '0', 1, 1, ''),
(10, 1, '0', 0, 1, ''),
(11, 1, 'dvsdvfds', 1, 1, ''),
(12, 1, 'cxvcxvcvf', 1, 4, ''),
(24, 12, 'Q1', 1, 1, ''),
(25, 12, 'Q2', 1, 3, 'Options 1, Options 2, Options 3, Options 4\n'),
(26, 12, 'Q3', 1, 2, ''),
(27, 12, 'Q4', 1, 5, 'Options 1, Options 2, Options 3, Options 4');

-- --------------------------------------------------------

--
-- Table structure for table `z_inspection_plan_header`
--

CREATE TABLE `z_inspection_plan_header` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task_list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_inspection_plan_header`
--

INSERT INTO `z_inspection_plan_header` (`id`, `description`, `task_list_type`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(12, 'List 1', 'grn', 1, '2017-08-25', 1, 1992);

-- --------------------------------------------------------

--
-- Table structure for table `z_inspect_item_content`
--

CREATE TABLE `z_inspect_item_content` (
  `id` int(11) NOT NULL,
  `inspection_plan_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_mandatory` tinyint(1) NOT NULL,
  `answer_type` int(11) NOT NULL,
  `option_list` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reject_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z_inspect_item_header`
--

CREATE TABLE `z_inspect_item_header` (
  `id` int(11) NOT NULL,
  `inspection_plan_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `batch_no` int(11) NOT NULL,
  `inspection_type` int(11) NOT NULL,
  `document_no` int(11) NOT NULL,
  `document_item` int(11) NOT NULL,
  `grn_batch_id` int(11) NOT NULL,
  `grn_item_id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `qty_received` double NOT NULL,
  `qty_accepted` double NOT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0_areas`
--
ALTER TABLE `0_areas`
  ADD PRIMARY KEY (`area_code`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `0_attachments`
--
ALTER TABLE `0_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_no` (`type_no`,`trans_no`);

--
-- Indexes for table `0_audit_trail`
--
ALTER TABLE `0_audit_trail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  ADD KEY `Type_and_Number` (`type`,`trans_no`);

--
-- Indexes for table `0_bank_accounts`
--
ALTER TABLE `0_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_account_name` (`bank_account_name`),
  ADD KEY `bank_account_number` (`bank_account_number`),
  ADD KEY `account_code` (`account_code`);

--
-- Indexes for table `0_bank_trans`
--
ALTER TABLE `0_bank_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_act` (`bank_act`,`ref`),
  ADD KEY `type` (`type`,`trans_no`),
  ADD KEY `bank_act_2` (`bank_act`,`reconciled`),
  ADD KEY `bank_act_3` (`bank_act`,`trans_date`);

--
-- Indexes for table `0_bom`
--
ALTER TABLE `0_bom`
  ADD PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  ADD KEY `component` (`component`),
  ADD KEY `id` (`id`),
  ADD KEY `loc_code` (`loc_code`),
  ADD KEY `parent` (`parent`,`loc_code`),
  ADD KEY `workcentre_added` (`workcentre_added`);

--
-- Indexes for table `0_budget_trans`
--
ALTER TABLE `0_budget_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`);

--
-- Indexes for table `0_chart_class`
--
ALTER TABLE `0_chart_class`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `0_chart_master`
--
ALTER TABLE `0_chart_master`
  ADD PRIMARY KEY (`account_code`),
  ADD KEY `account_name` (`account_name`),
  ADD KEY `accounts_by_type` (`account_type`,`account_code`);

--
-- Indexes for table `0_chart_types`
--
ALTER TABLE `0_chart_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `0_comments`
--
ALTER TABLE `0_comments`
  ADD KEY `type_and_id` (`type`,`id`);

--
-- Indexes for table `0_credit_status`
--
ALTER TABLE `0_credit_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reason_description` (`reason_description`);

--
-- Indexes for table `0_crm_categories`
--
ALTER TABLE `0_crm_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`action`),
  ADD UNIQUE KEY `type_2` (`type`,`name`);

--
-- Indexes for table `0_crm_contacts`
--
ALTER TABLE `0_crm_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`action`);

--
-- Indexes for table `0_crm_persons`
--
ALTER TABLE `0_crm_persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref` (`ref`);

--
-- Indexes for table `0_currencies`
--
ALTER TABLE `0_currencies`
  ADD PRIMARY KEY (`curr_abrev`);

--
-- Indexes for table `0_cust_allocations`
--
ALTER TABLE `0_cust_allocations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  ADD KEY `From` (`trans_type_from`,`trans_no_from`),
  ADD KEY `To` (`trans_type_to`,`trans_no_to`);

--
-- Indexes for table `0_cust_branch`
--
ALTER TABLE `0_cust_branch`
  ADD PRIMARY KEY (`branch_code`,`debtor_no`),
  ADD KEY `branch_ref` (`branch_ref`),
  ADD KEY `group_no` (`group_no`);

--
-- Indexes for table `0_debtors_master`
--
ALTER TABLE `0_debtors_master`
  ADD PRIMARY KEY (`debtor_no`),
  ADD UNIQUE KEY `debtor_ref` (`debtor_ref`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `0_debtor_trans`
--
ALTER TABLE `0_debtor_trans`
  ADD PRIMARY KEY (`type`,`trans_no`),
  ADD KEY `debtor_no` (`debtor_no`,`branch_code`),
  ADD KEY `tran_date` (`tran_date`),
  ADD KEY `order_` (`order_`);

--
-- Indexes for table `0_debtor_trans_details`
--
ALTER TABLE `0_debtor_trans_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  ADD KEY `src_id` (`src_id`);

--
-- Indexes for table `0_dimensions`
--
ALTER TABLE `0_dimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD KEY `date_` (`date_`),
  ADD KEY `due_date` (`due_date`),
  ADD KEY `type_` (`type_`);

--
-- Indexes for table `0_exchange_rates`
--
ALTER TABLE `0_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `curr_code` (`curr_code`,`date_`);

--
-- Indexes for table `0_fiscal_year`
--
ALTER TABLE `0_fiscal_year`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `begin` (`begin`),
  ADD UNIQUE KEY `end` (`end`);

--
-- Indexes for table `0_gl_trans`
--
ALTER TABLE `0_gl_trans`
  ADD PRIMARY KEY (`counter`),
  ADD KEY `Type_and_Number` (`type`,`type_no`),
  ADD KEY `dimension_id` (`dimension_id`),
  ADD KEY `dimension2_id` (`dimension2_id`),
  ADD KEY `tran_date` (`tran_date`),
  ADD KEY `account_and_tran_date` (`account`,`tran_date`);

--
-- Indexes for table `0_grn_batch`
--
ALTER TABLE `0_grn_batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_date` (`delivery_date`),
  ADD KEY `purch_order_no` (`purch_order_no`);

--
-- Indexes for table `0_grn_items`
--
ALTER TABLE `0_grn_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grn_batch_id` (`grn_batch_id`);

--
-- Indexes for table `0_groups`
--
ALTER TABLE `0_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `0_item_codes`
--
ALTER TABLE `0_item_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  ADD KEY `item_code` (`item_code`);

--
-- Indexes for table `0_item_tax_types`
--
ALTER TABLE `0_item_tax_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `0_item_tax_type_exemptions`
--
ALTER TABLE `0_item_tax_type_exemptions`
  ADD PRIMARY KEY (`item_tax_type_id`,`tax_type_id`);

--
-- Indexes for table `0_item_units`
--
ALTER TABLE `0_item_units`
  ADD PRIMARY KEY (`abbr`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `0_journal`
--
ALTER TABLE `0_journal`
  ADD PRIMARY KEY (`type`,`trans_no`),
  ADD KEY `tran_date` (`tran_date`);

--
-- Indexes for table `0_locations`
--
ALTER TABLE `0_locations`
  ADD PRIMARY KEY (`loc_code`);

--
-- Indexes for table `0_loc_stock`
--
ALTER TABLE `0_loc_stock`
  ADD PRIMARY KEY (`loc_code`,`stock_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `0_payment_terms`
--
ALTER TABLE `0_payment_terms`
  ADD PRIMARY KEY (`terms_indicator`),
  ADD UNIQUE KEY `terms` (`terms`);

--
-- Indexes for table `0_prices`
--
ALTER TABLE `0_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`);

--
-- Indexes for table `0_printers`
--
ALTER TABLE `0_printers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `0_print_profiles`
--
ALTER TABLE `0_print_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile` (`profile`,`report`);

--
-- Indexes for table `0_purch_data`
--
ALTER TABLE `0_purch_data`
  ADD PRIMARY KEY (`supplier_id`,`stock_id`);

--
-- Indexes for table `0_purch_orders`
--
ALTER TABLE `0_purch_orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `ord_date` (`ord_date`);

--
-- Indexes for table `0_purch_order_details`
--
ALTER TABLE `0_purch_order_details`
  ADD PRIMARY KEY (`po_detail_item`),
  ADD KEY `order` (`order_no`,`po_detail_item`),
  ADD KEY `itemcode` (`item_code`);

--
-- Indexes for table `0_quick_entries`
--
ALTER TABLE `0_quick_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `0_quick_entry_lines`
--
ALTER TABLE `0_quick_entry_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qid` (`qid`);

--
-- Indexes for table `0_recurrent_invoices`
--
ALTER TABLE `0_recurrent_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `0_reflines`
--
ALTER TABLE `0_reflines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefix` (`trans_type`,`prefix`);

--
-- Indexes for table `0_refs`
--
ALTER TABLE `0_refs`
  ADD PRIMARY KEY (`id`,`type`),
  ADD KEY `Type_and_Reference` (`type`,`reference`);

--
-- Indexes for table `0_salesman`
--
ALTER TABLE `0_salesman`
  ADD PRIMARY KEY (`salesman_code`),
  ADD UNIQUE KEY `salesman_name` (`salesman_name`);

--
-- Indexes for table `0_sales_orders`
--
ALTER TABLE `0_sales_orders`
  ADD PRIMARY KEY (`trans_type`,`order_no`);

--
-- Indexes for table `0_sales_order_details`
--
ALTER TABLE `0_sales_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sorder` (`trans_type`,`order_no`),
  ADD KEY `stkcode` (`stk_code`);

--
-- Indexes for table `0_sales_pos`
--
ALTER TABLE `0_sales_pos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pos_name` (`pos_name`);

--
-- Indexes for table `0_sales_types`
--
ALTER TABLE `0_sales_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_type` (`sales_type`);

--
-- Indexes for table `0_security_roles`
--
ALTER TABLE `0_security_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `0_shippers`
--
ALTER TABLE `0_shippers`
  ADD PRIMARY KEY (`shipper_id`),
  ADD UNIQUE KEY `name` (`shipper_name`);

--
-- Indexes for table `0_sql_trail`
--
ALTER TABLE `0_sql_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0_stock_category`
--
ALTER TABLE `0_stock_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `0_stock_fa_class`
--
ALTER TABLE `0_stock_fa_class`
  ADD PRIMARY KEY (`fa_class_id`);

--
-- Indexes for table `0_stock_master`
--
ALTER TABLE `0_stock_master`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `0_stock_moves`
--
ALTER TABLE `0_stock_moves`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `type` (`type`,`trans_no`),
  ADD KEY `Move` (`stock_id`,`loc_code`,`tran_date`);

--
-- Indexes for table `0_suppliers`
--
ALTER TABLE `0_suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supp_ref` (`supp_ref`);

--
-- Indexes for table `0_supp_allocations`
--
ALTER TABLE `0_supp_allocations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  ADD KEY `From` (`trans_type_from`,`trans_no_from`),
  ADD KEY `To` (`trans_type_to`,`trans_no_to`);

--
-- Indexes for table `0_supp_invoice_items`
--
ALTER TABLE `0_supp_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`);

--
-- Indexes for table `0_supp_trans`
--
ALTER TABLE `0_supp_trans`
  ADD PRIMARY KEY (`type`,`trans_no`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `tran_date` (`tran_date`);

--
-- Indexes for table `0_sys_prefs`
--
ALTER TABLE `0_sys_prefs`
  ADD PRIMARY KEY (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `0_tags`
--
ALTER TABLE `0_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Indexes for table `0_tag_associations`
--
ALTER TABLE `0_tag_associations`
  ADD UNIQUE KEY `record_id` (`record_id`,`tag_id`);

--
-- Indexes for table `0_tax_groups`
--
ALTER TABLE `0_tax_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `0_tax_group_items`
--
ALTER TABLE `0_tax_group_items`
  ADD PRIMARY KEY (`tax_group_id`,`tax_type_id`);

--
-- Indexes for table `0_tax_types`
--
ALTER TABLE `0_tax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0_trans_tax_details`
--
ALTER TABLE `0_trans_tax_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Type_and_Number` (`trans_type`,`trans_no`),
  ADD KEY `tran_date` (`tran_date`);

--
-- Indexes for table `0_useronline`
--
ALTER TABLE `0_useronline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `0_users`
--
ALTER TABLE `0_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `0_voided`
--
ALTER TABLE `0_voided`
  ADD UNIQUE KEY `id` (`type`,`id`);

--
-- Indexes for table `0_workcentres`
--
ALTER TABLE `0_workcentres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `0_workorders`
--
ALTER TABLE `0_workorders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wo_ref` (`wo_ref`);

--
-- Indexes for table `0_wo_costing`
--
ALTER TABLE `0_wo_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0_wo_issues`
--
ALTER TABLE `0_wo_issues`
  ADD PRIMARY KEY (`issue_no`),
  ADD KEY `workorder_id` (`workorder_id`);

--
-- Indexes for table `0_wo_issue_items`
--
ALTER TABLE `0_wo_issue_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0_wo_manufacture`
--
ALTER TABLE `0_wo_manufacture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_id` (`workorder_id`);

--
-- Indexes for table `0_wo_requirements`
--
ALTER TABLE `0_wo_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_id` (`workorder_id`);

--
-- Indexes for table `z_batch_number_assign`
--
ALTER TABLE `z_batch_number_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_batch_number_master`
--
ALTER TABLE `z_batch_number_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_inspection_plan_content`
--
ALTER TABLE `z_inspection_plan_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_inspection_plan_header`
--
ALTER TABLE `z_inspection_plan_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_inspect_item_header`
--
ALTER TABLE `z_inspect_item_header`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0_areas`
--
ALTER TABLE `0_areas`
  MODIFY `area_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_attachments`
--
ALTER TABLE `0_attachments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_audit_trail`
--
ALTER TABLE `0_audit_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `0_bank_accounts`
--
ALTER TABLE `0_bank_accounts`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_bank_trans`
--
ALTER TABLE `0_bank_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `0_bom`
--
ALTER TABLE `0_bom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `0_budget_trans`
--
ALTER TABLE `0_budget_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_credit_status`
--
ALTER TABLE `0_credit_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `0_crm_categories`
--
ALTER TABLE `0_crm_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pure technical key', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `0_crm_contacts`
--
ALTER TABLE `0_crm_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `0_crm_persons`
--
ALTER TABLE `0_crm_persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `0_cust_allocations`
--
ALTER TABLE `0_cust_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_cust_branch`
--
ALTER TABLE `0_cust_branch`
  MODIFY `branch_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_debtors_master`
--
ALTER TABLE `0_debtors_master`
  MODIFY `debtor_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_debtor_trans_details`
--
ALTER TABLE `0_debtor_trans_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `0_dimensions`
--
ALTER TABLE `0_dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_exchange_rates`
--
ALTER TABLE `0_exchange_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `0_fiscal_year`
--
ALTER TABLE `0_fiscal_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_gl_trans`
--
ALTER TABLE `0_gl_trans`
  MODIFY `counter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `0_grn_batch`
--
ALTER TABLE `0_grn_batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `0_grn_items`
--
ALTER TABLE `0_grn_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `0_groups`
--
ALTER TABLE `0_groups`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_item_codes`
--
ALTER TABLE `0_item_codes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `0_item_tax_types`
--
ALTER TABLE `0_item_tax_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_payment_terms`
--
ALTER TABLE `0_payment_terms`
  MODIFY `terms_indicator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `0_prices`
--
ALTER TABLE `0_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_printers`
--
ALTER TABLE `0_printers`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_print_profiles`
--
ALTER TABLE `0_print_profiles`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `0_purch_orders`
--
ALTER TABLE `0_purch_orders`
  MODIFY `order_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `0_purch_order_details`
--
ALTER TABLE `0_purch_order_details`
  MODIFY `po_detail_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `0_quick_entries`
--
ALTER TABLE `0_quick_entries`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `0_quick_entry_lines`
--
ALTER TABLE `0_quick_entry_lines`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `0_recurrent_invoices`
--
ALTER TABLE `0_recurrent_invoices`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_reflines`
--
ALTER TABLE `0_reflines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `0_salesman`
--
ALTER TABLE `0_salesman`
  MODIFY `salesman_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_sales_order_details`
--
ALTER TABLE `0_sales_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `0_sales_pos`
--
ALTER TABLE `0_sales_pos`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_sales_types`
--
ALTER TABLE `0_sales_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_security_roles`
--
ALTER TABLE `0_security_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `0_shippers`
--
ALTER TABLE `0_shippers`
  MODIFY `shipper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_sql_trail`
--
ALTER TABLE `0_sql_trail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_stock_category`
--
ALTER TABLE `0_stock_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `0_stock_moves`
--
ALTER TABLE `0_stock_moves`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `0_suppliers`
--
ALTER TABLE `0_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_supp_allocations`
--
ALTER TABLE `0_supp_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_supp_invoice_items`
--
ALTER TABLE `0_supp_invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_tags`
--
ALTER TABLE `0_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_tax_groups`
--
ALTER TABLE `0_tax_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_tax_types`
--
ALTER TABLE `0_tax_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_trans_tax_details`
--
ALTER TABLE `0_trans_tax_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `0_useronline`
--
ALTER TABLE `0_useronline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_users`
--
ALTER TABLE `0_users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_workcentres`
--
ALTER TABLE `0_workcentres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_workorders`
--
ALTER TABLE `0_workorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `0_wo_costing`
--
ALTER TABLE `0_wo_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_wo_issues`
--
ALTER TABLE `0_wo_issues`
  MODIFY `issue_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_wo_issue_items`
--
ALTER TABLE `0_wo_issue_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_wo_manufacture`
--
ALTER TABLE `0_wo_manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `0_wo_requirements`
--
ALTER TABLE `0_wo_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `z_batch_number_assign`
--
ALTER TABLE `z_batch_number_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `z_batch_number_master`
--
ALTER TABLE `z_batch_number_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `z_inspection_plan_content`
--
ALTER TABLE `z_inspection_plan_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `z_inspection_plan_header`
--
ALTER TABLE `z_inspection_plan_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `z_inspect_item_header`
--
ALTER TABLE `z_inspect_item_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
