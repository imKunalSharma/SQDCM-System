-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 24, 2026 at 07:13 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `havells_andon_dehradun`
--
CREATE DATABASE IF NOT EXISTS `havells_andon_dehradun` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `havells_andon_dehradun`;

-- --------------------------------------------------------

--
-- Table structure for table `andonexcalation`
--

CREATE TABLE IF NOT EXISTS `andonexcalation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Line_No` varchar(15) NOT NULL,
  `Prod_Time` datetime NOT NULL,
  `Q_Time` datetime NOT NULL,
  `M_Time` datetime NOT NULL,
  `Raw_Matl_Time` datetime NOT NULL,
  `S1_Time` datetime NOT NULL,
  `S2_Time` datetime NOT NULL,
  `Prod_Flag` int(11) NOT NULL,
  `Q_Flag` int(11) NOT NULL,
  `M_Flag` int(11) NOT NULL,
  `Raw_Matl_Flag` int(11) NOT NULL,
  `S1_Flag` int(11) NOT NULL,
  `S2_Flag` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `andonexcalation`
--

INSERT INTO `andonexcalation` (`Id`, `Line_No`, `Prod_Time`, `Q_Time`, `M_Time`, `Raw_Matl_Time`, `S1_Time`, `S2_Time`, `Prod_Flag`, `Q_Flag`, `M_Flag`, `Raw_Matl_Flag`, `S1_Flag`, `S2_Flag`) VALUES
(1, '01', '2023-08-08 14:09:03', '0000-00-00 00:00:00', '2023-08-08 17:08:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(2, '02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(3, '03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `andonstatus`
--

CREATE TABLE IF NOT EXISTS `andonstatus` (
  `Line_no` varchar(100) NOT NULL,
  `Prod` int(11) NOT NULL,
  `Quality` int(11) NOT NULL,
  `Maint` int(11) NOT NULL,
  `RM` int(11) NOT NULL,
  `S1` int(11) NOT NULL,
  `S2` int(11) NOT NULL,
  `DateTime1` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `andonstatus_history`
--

CREATE TABLE IF NOT EXISTS `andonstatus_history` (
  `UniqeID` int(11) NOT NULL AUTO_INCREMENT,
  `Lineno` varchar(100) NOT NULL,
  `Probl_type` varchar(100) NOT NULL,
  `Call_datetime` datetime NOT NULL,
  `Reset_datetime` varchar(1000) NOT NULL,
  PRIMARY KEY (`UniqeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `andonstatus_history`
--

INSERT INTO `andonstatus_history` (`UniqeID`, `Lineno`, `Probl_type`, `Call_datetime`, `Reset_datetime`) VALUES
(1, '01', 'PR', '2023-07-25 11:03:50', '2023-07-30 15:14:45'),
(2, '01', 'QTY', '2023-07-25 11:03:50', '2023-07-30 15:14:45'),
(3, '01', 'MA', '2023-07-25 11:03:50', '2023-07-30 15:14:45'),
(4, '01', 'RM', '2023-07-25 11:03:50', '2023-07-30 15:14:46'),
(5, '01', 'Spare1', '2023-07-25 11:03:50', '2023-07-30 15:14:46'),
(6, '01', 'Spare2', '2023-07-25 11:03:50', '2023-07-30 15:14:46'),
(7, '04', 'PR', '2023-07-26 15:48:37', '2023-07-31 09:12:18'),
(8, '04', 'QTY', '2023-07-26 15:51:01', '2023-07-31 09:12:18'),
(9, '04', 'Spare1', '2023-07-30 15:34:48', '2023-08-01 11:09:07'),
(10, '04', 'Spare2', '2023-07-30 15:34:48', '2023-08-01 11:09:08'),
(11, '04', 'QTY', '2023-07-31 09:20:19', '2023-08-01 11:09:07'),
(12, '01', 'PR', '2023-07-31 09:48:53', '2023-08-01 11:00:32'),
(13, '02', 'PR', '2023-07-31 16:48:01', '2023-07-31 16:54:45'),
(14, '01', 'PR', '2023-08-01 12:18:41', '2023-08-01 16:28:23'),
(15, '01', 'QTY', '2023-08-01 12:39:18', '2023-08-01 16:28:35'),
(16, '01', 'PR', '2023-08-02 09:57:40', '2023-08-02 09:58:24'),
(17, '01', 'MA', '2023-08-02 09:58:50', '2023-08-02 09:59:13'),
(18, '01', 'Spare2', '2023-08-02 15:47:03', '2023-08-02 15:49:12'),
(19, '04', 'PR', '2023-08-03 15:04:42', '2023-08-03 15:05:35'),
(20, '01', 'Spare1', '2023-08-05 10:32:47', '2023-08-05 10:33:58'),
(21, '01', 'Spare2', '2023-08-05 10:32:47', '2023-08-05 10:34:12'),
(22, '01', 'MA', '2023-08-05 10:40:59', '2023-08-05 10:41:58'),
(23, '01', 'PR', '2023-08-05 11:06:35', '2023-08-05 11:09:10'),
(24, '01', 'QTY', '2023-08-05 11:10:06', '2023-08-05 11:16:26'),
(25, '01', 'MA', '2023-08-05 11:10:06', '2023-08-05 11:16:26'),
(26, '01', 'RM', '2023-08-05 11:10:06', '2023-08-05 11:16:26'),
(27, '01', 'Spare1', '2023-08-05 11:10:06', '2023-08-05 11:16:26'),
(28, '01', 'Spare2', '2023-08-05 11:10:06', '2023-08-05 11:16:37'),
(29, '01', 'PR', '2023-08-05 11:30:11', '2023-08-05 11:30:53'),
(30, '04', 'MA', '2023-08-05 12:23:27', '2023-08-05 12:24:48'),
(31, '01', 'Spare1', '2023-08-05 13:54:53', '2023-08-05 13:55:09'),
(32, '01', 'PR', '2023-08-08 14:03:25', '2023-08-08 14:11:47'),
(33, '01', 'MA', '2023-08-08 17:08:30', '2023-08-08 17:11:18'),
(34, '01', 'PR', '2023-08-09 13:14:36', '2023-08-09 14:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `helpchain01`
--

CREATE TABLE IF NOT EXISTS `helpchain01` (
  `MCUID` varchar(100) NOT NULL,
  `Prod_Status` int(100) NOT NULL,
  `Qlty_Status` int(100) NOT NULL,
  `Maint_Status` int(11) NOT NULL,
  `RM_Status` int(11) NOT NULL,
  `S1_Status` int(11) NOT NULL,
  `S2_Status` int(11) NOT NULL,
  `Reason` varchar(1000) NOT NULL,
  `P_Reason` varchar(1000) NOT NULL,
  `Q_Reason` varchar(1000) NOT NULL,
  `M_Reason` varchar(1000) NOT NULL,
  `RM_Reason` varchar(1000) NOT NULL,
  `S1_Reason` varchar(1000) NOT NULL,
  `S2_Reason` varchar(1000) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Seq` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `helpchain01`
--

INSERT INTO `helpchain01` (`MCUID`, `Prod_Status`, `Qlty_Status`, `Maint_Status`, `RM_Status`, `S1_Status`, `S2_Status`, `Reason`, `P_Reason`, `Q_Reason`, `M_Reason`, `RM_Reason`, `S1_Reason`, `S2_Reason`, `DateTime1`, `Seq`) VALUES
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:31', 1),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:31', 2),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:31', 3),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:31', 4),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:32', 5),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:33', 6),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:34', 7),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:35', 8),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:36', 9),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:37', 10),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:38', 11),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:39', 12),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:40', 13),
('01', 0, 0, 0, 0, 0, 0, '000000', '', '', '', '', '', 'Any Other Issue', '2023-08-05 11:37:41', 14),
('01', 0, 0, 0, 0, 0, 0, '311111', 'Rotor Short', 'Baring Tight/Loose', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'M/C shop', '2023-08-05 12:11:44', 15),
('01', 0, 0, 0, 0, 0, 0, '311111', 'Rotor Short', 'Baring Tight/Loose', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'M/C shop', '2023-08-05 12:11:44', 16),
('01', 0, 0, 0, 0, 0, 0, '311111', 'Rotor Short', 'Baring Tight/Loose', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'M/C shop', '2023-08-05 12:11:56', 17),
('01', 1, 1, 1, 0, 0, 0, '311111', 'Rotor Short', 'Baring Tight/Loose', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'M/C shop', '2023-08-05 12:12:10', 18);

-- --------------------------------------------------------

--
-- Table structure for table `helpchain02`
--

CREATE TABLE IF NOT EXISTS `helpchain02` (
  `MCUID` varchar(100) NOT NULL,
  `Prod_Status` int(100) NOT NULL,
  `Qlty_Status` int(100) NOT NULL,
  `Maint_Status` int(11) NOT NULL,
  `RM_Status` int(11) NOT NULL,
  `S1_Status` int(11) NOT NULL,
  `S2_Status` int(11) NOT NULL,
  `Reason` varchar(1000) NOT NULL,
  `P_Reason` varchar(1000) NOT NULL,
  `Q_Reason` varchar(1000) NOT NULL,
  `M_Reason` varchar(1000) NOT NULL,
  `RM_Reason` varchar(1000) NOT NULL,
  `S1_Reason` varchar(1000) NOT NULL,
  `S2_Reason` varchar(1000) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Seq` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `helpchain02`
--

INSERT INTO `helpchain02` (`MCUID`, `Prod_Status`, `Qlty_Status`, `Maint_Status`, `RM_Status`, `S1_Status`, `S2_Status`, `Reason`, `P_Reason`, `Q_Reason`, `M_Reason`, `RM_Reason`, `S1_Reason`, `S2_Reason`, `DateTime1`, `Seq`) VALUES
('02', 0, 0, 0, 0, 0, 0, '111111', 'Painted Short', 'RTS', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'Stator shop', '2023-08-05 12:11:44', 1),
('02', 0, 0, 0, 0, 0, 0, '111111', 'Painted Short', 'RTS', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'Stator shop', '2023-08-05 12:11:58', 2);

-- --------------------------------------------------------

--
-- Table structure for table `helpchain03`
--

CREATE TABLE IF NOT EXISTS `helpchain03` (
  `MCUID` varchar(100) NOT NULL,
  `Prod_Status` int(100) NOT NULL,
  `Qlty_Status` int(100) NOT NULL,
  `Maint_Status` int(11) NOT NULL,
  `RM_Status` int(11) NOT NULL,
  `S1_Status` int(11) NOT NULL,
  `S2_Status` int(11) NOT NULL,
  `Reason` varchar(1000) NOT NULL,
  `P_Reason` varchar(1000) NOT NULL,
  `Q_Reason` varchar(1000) NOT NULL,
  `M_Reason` varchar(1000) NOT NULL,
  `RM_Reason` varchar(1000) NOT NULL,
  `S1_Reason` varchar(1000) NOT NULL,
  `S2_Reason` varchar(1000) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Seq` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `helpchain03`
--

INSERT INTO `helpchain03` (`MCUID`, `Prod_Status`, `Qlty_Status`, `Maint_Status`, `RM_Status`, `S1_Status`, `S2_Status`, `Reason`, `P_Reason`, `Q_Reason`, `M_Reason`, `RM_Reason`, `S1_Reason`, `S2_Reason`, `DateTime1`, `Seq`) VALUES
('03', 0, 0, 0, 0, 0, 0, '111111', 'Painted Short', 'Inn. packing problem', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'Packing', '2023-08-05 12:12:01', 1),
('03', 0, 0, 0, 0, 0, 0, '111111', 'Painted Short', 'Inn. packing problem', 'Compresed air issue', 'Bearing/Screw Short', 'IQC', 'Packing', '2023-08-05 12:12:16', 2);

-- --------------------------------------------------------

--
-- Table structure for table `helpchain04`
--

CREATE TABLE IF NOT EXISTS `helpchain04` (
  `MCUID` varchar(100) NOT NULL,
  `Prod_Status` int(100) NOT NULL,
  `Qlty_Status` int(100) NOT NULL,
  `Maint_Status` int(11) NOT NULL,
  `RM_Status` int(11) NOT NULL,
  `S1_Status` int(11) NOT NULL,
  `S2_Status` int(11) NOT NULL,
  `Reason` varchar(1000) NOT NULL,
  `P_Reason` varchar(1000) NOT NULL,
  `Q_Reason` varchar(1000) NOT NULL,
  `M_Reason` varchar(1000) NOT NULL,
  `RM_Reason` varchar(1000) NOT NULL,
  `S1_Reason` varchar(1000) NOT NULL,
  `S2_Reason` varchar(1000) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Seq` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `helpchain05`
--

CREATE TABLE IF NOT EXISTS `helpchain05` (
  `MCUID` varchar(100) NOT NULL,
  `Prod_Status` int(100) NOT NULL,
  `Qlty_Status` int(100) NOT NULL,
  `Maint_Status` int(11) NOT NULL,
  `RM_Status` int(11) NOT NULL,
  `S1_Status` int(11) NOT NULL,
  `S2_Status` int(11) NOT NULL,
  `Reason` varchar(1000) NOT NULL,
  `P_Reason` varchar(1000) NOT NULL,
  `Q_Reason` varchar(1000) NOT NULL,
  `M_Reason` varchar(1000) NOT NULL,
  `RM_Reason` varchar(1000) NOT NULL,
  `S1_Reason` varchar(1000) NOT NULL,
  `S2_Reason` varchar(1000) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Seq` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `history01`
--

CREATE TABLE IF NOT EXISTS `history01` (
  `Seq` bigint(20) NOT NULL AUTO_INCREMENT,
  `MCUID` varchar(100) NOT NULL,
  `ModelNo` varchar(1000) NOT NULL,
  `Target` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Pass` int(11) NOT NULL,
  `Fail` int(11) NOT NULL,
  `Shift` int(11) NOT NULL,
  `Shift_Hour` int(11) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `history01`
--

INSERT INTO `history01` (`Seq`, `MCUID`, `ModelNo`, `Target`, `Total`, `Pass`, `Fail`, `Shift`, `Shift_Hour`, `DateTime1`) VALUES
(1, '', 'TEST456', 600, 400, 400, 0, 0, 1, '2023-08-03 10:16:13'),
(2, '', 'TEST456', 600, 700, 700, 0, 0, 2, '2023-08-03 10:16:29'),
(3, '', 'TEST456', 600, 900, 900, 0, 0, 3, '2023-08-03 10:16:49'),
(4, '', 'TEST456', 600, 200, 200, 0, 0, 1, '2023-08-04 11:53:28'),
(5, '', 'TEST456', 600, 550, 500, 0, 0, 0, '2024-04-09 08:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `holidaytb`
--

CREATE TABLE IF NOT EXISTS `holidaytb` (
  `Holiday` varchar(1000) NOT NULL,
  `Selectdate` varchar(1000) NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `holidaytb`
--

INSERT INTO `holidaytb` (`Holiday`, `Selectdate`, `DateTime1`, `seq`) VALUES
('Today', '2024-05-15', '2024-05-14 12:31:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `machinename`
--

CREATE TABLE IF NOT EXISTS `machinename` (
  `MCUID` varchar(100) NOT NULL,
  `Line_No` varchar(100) NOT NULL,
  `Reg_No` varchar(100) NOT NULL,
  `Seq` int(11) NOT NULL AUTO_INCREMENT,
  `Device_Type` varchar(100) NOT NULL,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `machinename`
--

INSERT INTO `machinename` (`MCUID`, `Line_No`, `Reg_No`, `Seq`, `Device_Type`) VALUES
('01', '1', '', 1, 'Station 1'),
('02', '3', '', 2, 'Station 2'),
('03', '5', '', 3, 'Station 3'),
('04', '7', '', 4, 'Station 4'),
('06', '9', '', 5, 'Display Model'),
('07', '11', '', 6, 'Barcode & Count'),
('08', '14', '', 7, 'Rejection');

-- --------------------------------------------------------

--
-- Table structure for table `mobilemaster`
--

CREATE TABLE IF NOT EXISTS `mobilemaster` (
  `MobileNo` varchar(15) NOT NULL,
  `Department` varchar(15) NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `mobilemaster`
--

INSERT INTO `mobilemaster` (`MobileNo`, `Department`, `Id`, `Name`, `Category`) VALUES
('8006344685', 'Production', 1, 'Vipin Tyagi', '1'),
('9917489855', 'Production', 2, 'Amit Pal', '2'),
('9582233800', 'Production', 3, 'Deepak', '2'),
('9816561869', 'Production', 4, 'Satwant Signh Jain', '3'),
('8006344685', 'Raw Material', 5, 'Vipin Tyagi', '1'),
('9628573353', 'Raw Material', 6, 'Angad Giri', '1'),
('9917489855', 'Raw Material', 7, 'Amit Pal', '2'),
('9582233800', 'Raw Material', 8, 'Deepak', '2'),
('9816561869', 'Raw Material', 9, 'Satwant Signh Jain', '3'),
('8924866493', 'Quality', 10, 'Vinay', '1'),
('8881901111', 'Quality', 11, 'Naveent', '1'),
('7060202862', 'Maintenance', 12, 'Mukesh Kumar', '1'),
('9758165330', 'Maintenance', 13, 'Rohit Kumar', '1'),
('7060107863', 'Maintenance', 14, 'Imran Ali', '1'),
('9760090912', 'Maintenance', 15, 'Vijay Dwivedi', '2'),
('9760934615', 'Quality', 16, 'Nitin', '2'),
('9457653561', 'Quality', 17, 'Avadhesh', '2'),
('9810445597', 'Quality', 18, 'Harish Chandra', '3'),
('9568637806', 'Spare 1', 19, 'Vikas Kumar', '1'),
('9823286722', 'Spare 1', 20, 'Rohit Avasthi', '2'),
('9810445597', 'Spare 1', 21, 'Harish Chandra', '3'),
('8439850389', 'Spare 2', 22, 'Rohit Pant', '1'),
('7906457432', 'Spare 2', 23, 'Krishna', '1'),
('9636017999', 'Spare 2', 24, 'Vijay Kumar', '1'),
('9810445597', 'Spare 2', 25, 'Harish Chandra', '2');

-- --------------------------------------------------------

--
-- Table structure for table `modelmaster`
--

CREATE TABLE IF NOT EXISTS `modelmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Model` varchar(1000) NOT NULL,
  `Target` varchar(1000) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modelmaster`
--

INSERT INTO `modelmaster` (`id`, `Model`, `Target`, `Status`) VALUES
(1, '48 THRILL AIR BROWN', '650', 0),
(2, 'ONE', 'tWO', 0),
(3, 'one', 'dsf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `port`
--

CREATE TABLE IF NOT EXISTS `port` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Port1` varchar(100) NOT NULL,
  `Port2` varchar(100) NOT NULL,
  `Port3` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `port`
--

INSERT INTO `port` (`Id`, `Port1`, `Port2`, `Port3`) VALUES
(1, 'COM1', 'COM2', '');

-- --------------------------------------------------------

--
-- Table structure for table `sendsms`
--

CREATE TABLE IF NOT EXISTS `sendsms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Message` varchar(1000) NOT NULL,
  `MobileNo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `sendsms`
--

INSERT INTO `sendsms` (`id`, `Message`, `MobileNo`) VALUES
(1, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '8006344685'),
(2, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '9917489855'),
(3, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '9582233800'),
(4, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '9816561869'),
(5, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '8006344685'),
(6, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '9917489855'),
(7, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '9582233800'),
(8, 'Dear Sir, There is a Production related call from Line No. 1 Andon 1 On 2023-08-08 14:09:03 Please attend SOFTECH', '9816561869'),
(9, 'Dear Sir, Production related call has been attended from Line No. 1 1 On 2023-08-08 14:11:23', '8006344685'),
(10, 'Dear Sir, Production related call has been attended from Line No. 1 1 On 2023-08-08 14:11:23', '9917489855'),
(11, 'Dear Sir, Production related call has been attended from Line No. 1 1 On 2023-08-08 14:11:23', '9582233800'),
(12, 'Dear Sir, Production related call has been attended from Line No. 1 1 On 2023-08-08 14:11:23', '9816561869'),
(13, 'Dear Sir, Production related call from Line No. 1 Andon 1 On 2023-08-08 14:12:05 has been resolved', '8006344685'),
(14, 'Dear Sir, Production related call from Line No. 1 Andon 1 On 2023-08-08 14:12:05 has been resolved', '9917489855'),
(15, 'Dear Sir, Production related call from Line No. 1 Andon 1 On 2023-08-08 14:12:05 has been resolved', '9582233800'),
(16, 'Dear Sir, Production related call from Line No. 1 Andon 1 On 2023-08-08 14:12:05 has been resolved', '9816561869'),
(17, 'Dear Sir, There is a Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:08:58 Please attend SOFTECH', '7060202862'),
(18, 'Dear Sir, There is a Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:08:58 Please attend SOFTECH', '9758165330'),
(19, 'Dear Sir, There is a Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:08:58 Please attend SOFTECH', '7060107863'),
(20, 'Dear Sir, There is a Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:08:58 Please attend SOFTECH', '9760090912'),
(21, 'Dear Sir, Maintenance related call has been attended from Line 1 On 2023-08-08 17:09:26', '7060202862'),
(22, 'Dear Sir, Maintenance related call has been attended from Line 1 On 2023-08-08 17:09:26', '9758165330'),
(23, 'Dear Sir, Maintenance related call has been attended from Line 1 On 2023-08-08 17:09:26', '7060107863'),
(24, 'Dear Sir, Maintenance related call has been attended from Line 1 On 2023-08-08 17:09:26', '9760090912'),
(25, 'Dear Sir, Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:11:18 has been resolved', '7060202862'),
(26, 'Dear Sir, Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:11:18 has been resolved', '9758165330'),
(27, 'Dear Sir, Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:11:18 has been resolved', '7060107863'),
(28, 'Dear Sir, Maintenance related call from Line No. 1 Andon 1 On 2023-08-08 17:11:18 has been resolved', '9760090912');

-- --------------------------------------------------------

--
-- Table structure for table `shiftmaster`
--

CREATE TABLE IF NOT EXISTS `shiftmaster` (
  `shift1StartTime` time NOT NULL,
  `shift1EndTime` time NOT NULL,
  `shift2StartTime` time NOT NULL,
  `shift2EndTime` time NOT NULL,
  `Seq` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shiftmaster`
--

INSERT INTO `shiftmaster` (`shift1StartTime`, `shift1EndTime`, `shift2StartTime`, `shift2EndTime`, `Seq`) VALUES
('08:00:00', '20:00:00', '20:00:00', '08:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sqdcm_led_tar`
--

CREATE TABLE IF NOT EXISTS `sqdcm_led_tar` (
  `Day1` varchar(100) NOT NULL,
  `ST` float NOT NULL,
  `SA` float NOT NULL,
  `QT` float NOT NULL,
  `QA` float NOT NULL,
  `DT` float NOT NULL,
  `DA` float NOT NULL,
  `CT` float NOT NULL,
  `CA` float NOT NULL,
  `MT` float NOT NULL,
  `MA` float NOT NULL,
  `DateTime1` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Seq` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sqdcm_led_tar`
--

INSERT INTO `sqdcm_led_tar` (`Day1`, `ST`, `SA`, `QT`, `QA`, `DT`, `DA`, `CT`, `CA`, `MT`, `MA`, `DateTime1`, `Seq`) VALUES
('08', 0, 1, 0.2, 0.3, 0.7, 0.6, 0.1, 0.1, 15, 0, '2023-08-08 10:48:44', 1),
('09 ', 0, 1, 5, 5, 54, 4, 44, 3, 33, 3, '2023-08-09 13:04:02', 2),
('01 ', 0, 1, 4, 4, 4, 3, 2, 1, 4, 2, '2023-08-09 13:04:18', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sqdcm_result`
--

CREATE TABLE IF NOT EXISTS `sqdcm_result` (
  `Day1` int(11) NOT NULL,
  `S` varchar(100) NOT NULL,
  `Q` varchar(10000) NOT NULL,
  `D` varchar(10000) NOT NULL,
  `C` varchar(10000) NOT NULL,
  `M` varchar(10000) NOT NULL,
  `OldMonth` int(11) NOT NULL,
  `NewMonth` int(11) NOT NULL,
  `DateTime1` datetime DEFAULT NULL,
  `Seq` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `sqdcm_result`
--

INSERT INTO `sqdcm_result` (`Day1`, `S`, `Q`, `D`, `C`, `M`, `OldMonth`, `NewMonth`, `DateTime1`, `Seq`) VALUES
(1, '1', '2', '2', '1', '1', 7, 8, '2023-08-08 09:37:59', 1),
(2, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 2),
(3, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 3),
(4, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 4),
(5, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 5),
(6, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 6),
(7, '1', '1', '1', '1', '1', 7, 8, '2023-08-08 09:37:59', 7),
(8, '1', '2', '2', '2', '1', 7, 8, '2023-08-08 15:56:03', 8),
(9, '1', '2', '2', '1', '1', 7, 8, '2023-08-08 09:37:59', 9),
(10, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 10),
(11, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 11),
(12, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 12),
(13, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 13),
(14, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 14),
(15, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 15),
(16, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 16),
(17, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 17),
(18, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 18),
(19, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 19),
(20, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 20),
(21, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 21),
(22, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 22),
(23, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 23),
(24, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 24),
(25, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 25),
(26, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 26),
(27, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 27),
(28, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 28),
(29, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 29),
(30, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 30),
(31, '0', '0', '0', '0', '0', 7, 8, '2023-08-08 09:37:59', 31);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
