-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2013 at 12:10 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `msms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(50) NOT NULL,
  `apassword` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `apassword`) VALUES
(1, 'krupal', 'pkd'),
(2, 'jdk', 'jdk');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `ct_id` int(30) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`ct_id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ct_id`, `ct_name`, `sid`) VALUES
(1, 'rajkot', 1),
(2, 'kagdadi', 1),
(3, 'atkot', 2),
(4, 'jamnagar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `cid` int(30) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=11 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `cname`) VALUES
(1, 'Abbott India Ltd.'),
(2, 'Alembic Ltd.'),
(3, 'Cipla Ltd.'),
(4, 'Ind-Swift Ltd.'),
(5, 'Wyeth Ltd.'),
(6, 'Lupin Ltd.'),
(7, 'Zyden Gentec Ltc.'),
(8, 'Saamya Biotech Ltd.'),
(9, 'Panjon Ltd.'),
(10, 'Biocon Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `cid` int(30) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`cid`, `cname`) VALUES
(1, 'india'),
(2, 'caneda'),
(3, 'brazil'),
(4, 'shrilanka');

-- --------------------------------------------------------

--
-- Table structure for table `d_reg`
--

CREATE TABLE IF NOT EXISTS `d_reg` (
  `did` int(30) NOT NULL AUTO_INCREMENT,
  `dname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `web` varchar(50) NOT NULL,
  `phn` varchar(20) NOT NULL,
  `kop` varchar(50) NOT NULL,
  `sec_que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `d_reg`
--

INSERT INTO `d_reg` (`did`, `dname`, `password`, `address`, `email`, `web`, `phn`, `kop`, `sec_que`, `ans`, `country`, `state`, `city`, `status`) VALUES
(1, 'abc', '123', 'rajkot', 'abc@gmail.com', 'www.abc.com', '0987654321', 'syrup', '4', 'pqr', '1', '1', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `m_id` int(30) NOT NULL AUTO_INCREMENT,
  `mname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `price` varchar(50) NOT NULL,
  `company` int(11) NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `company` (`company`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`m_id`, `mname`, `photo`, `price`, `company`) VALUES
(1, 'diclofenac', 'imgs/3.jpeg', '100', 1),
(2, 'phenazopyridene', 'imgs/4.jpeg', '125', 2),
(3, 'asuque', 'imgs/5.jpeg', '150', 3),
(4, 'prowad', 'imgs/6.jpeg', '145', 4),
(5, 'ofncef', 'imgs/7.jpeg', '165', 4),
(6, 'flyxpen', 'imgs/8.jpeg', '185', 5),
(7, 'f-pace', 'imgs/9.jpeg', '205', 1),
(8, 'ofncef', 'imgs/10.jpeg', '178', 2),
(9, 'tenvir', 'imgs/11.jpeg', '225', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ord`
--

CREATE TABLE IF NOT EXISTS `ord` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `quanty` varchar(50) NOT NULL,
  `total` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ord`
--

INSERT INTO `ord` (`oid`, `uid`, `uname`, `email`, `phone`, `pname`, `price`, `company`, `quanty`, `total`) VALUES
(1, 1, 'krupal', 'pkrupald024@gmail.com', '9978210087', 'diclofenac ', '100 ', 'krupa', '25', '2500'),
(2, 1, 'krupal', 'pkrupald024@gmail.com', '9978210087', 'f-pace ', '205 ', 'krupa', '50', '10250'),
(3, 1, 'krupal', 'pkrupald024@gmail.com', '9978210087', 'ofncef ', '178 ', 'jelly', '50', '8900'),
(4, 1, 'krupal', 'pkrupald024@gmail.com', '9978210087', 'asuque ', '150 ', 'vj', '75', '11250');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE IF NOT EXISTS `query` (
  `qid` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`qid`, `name`, `email`, `website`, `message`) VALUES
(1, 'krupal', 'pkrupald024@gmail.com', 'www.pkd024.com', 'best site very nice ,so good');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `hobby` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phn` varchar(10) NOT NULL,
  `sec_que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `country` int(30) NOT NULL,
  `state` int(30) NOT NULL,
  `city` int(30) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`uid`),
  KEY `country` (`country`,`state`,`city`),
  KEY `state` (`state`),
  KEY `city` (`city`),
  KEY `sec_que` (`sec_que`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`uid`, `photo`, `uname`, `password`, `address`, `dob`, `gender`, `hobby`, `email`, `phn`, `sec_que`, `ans`, `country`, `state`, `city`, `status`) VALUES
(1, 'img/2.jpeg', 'aaa', '123', 'rajkot', '24/05/1989', 'Male', 'Read,Write,Play', ' a@gmail.com', '1234567890', '1', '24/05/1989', 1, 1, 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sec_que`
--

CREATE TABLE IF NOT EXISTS `sec_que` (
  `sec_id` int(30) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(50) NOT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sec_que`
--

INSERT INTO `sec_que` (`sec_id`, `sec_name`) VALUES
(1, 'your birth date'),
(2, 'your first teacher'),
(3, 'your first school`'),
(4, 'your nick name');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `sid` int(30) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`, `cid`) VALUES
(1, 'gujarat', 1),
(2, 'u.p', 1),
(3, 'm.p', 2),
(4, 'taivan', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `state` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`company`) REFERENCES `company` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `country` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;
