-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2016 at 06:30 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `policy`
--

-- --------------------------------------------------------

--
-- Table structure for table `branchpolicy`
--

CREATE TABLE IF NOT EXISTS `branchpolicy` (
  `id` int(11) NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchpolicy`
--

INSERT INTO `branchpolicy` (`id`, `location`) VALUES
(1001, 'ANDHERI'),
(1002, 'MALAD'),
(1003, 'BORIVALI'),
(1004, 'BORIVALI'),
(1005, 'ANDHERI'),
(1006, 'GOREGAON');

-- --------------------------------------------------------

--
-- Table structure for table `policyholder`
--

CREATE TABLE IF NOT EXISTS `policyholder` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `surname` text NOT NULL,
  `policy_type` text NOT NULL,
  `premium` text NOT NULL,
  `start` text NOT NULL,
  `end` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policyholder`
--

INSERT INTO `policyholder` (`id`, `firstname`, `surname`, `policy_type`, `premium`, `start`, `end`) VALUES
(1001, 'MANOJ', 'SHUKLA', 'LIFE INSURANCE', '20000', '20/10/2005', '21/10/2020'),
(1002, 'RAKESH', 'PRABHU', 'PENSION SCHEME 02', '250000', '05/09/2000', '05/09/2039'),
(1003, 'PRANAY', 'RAMBADE', 'LIFE INSURANCE', '22000', '20/08/2005', '21/08/2020'),
(1004, 'PAWAN', 'RATHOD', 'PENSION SCHEME 01', '150000', '15/09/2010', '15/09/2049'),
(1005, 'ANKIT', 'KUMAR', 'MOTOR COVER AD5', '15000', '15/09/2010', '15/09/2019'),
(1006, 'RIDDHISH', 'RANE', 'HEALTH COVER HB', '50000', '25/02/2003', '15/09/2019');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'user1', 'u1'),
(2, 'user2', 'u2');
