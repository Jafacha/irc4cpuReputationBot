-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 15, 2011 at 09:59 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `irc4cpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChannelBot`
--

CREATE TABLE IF NOT EXISTS `ChannelBot` (
  `network` int(11) NOT NULL COMMENT 'Network channel is in',
  `channel` int(11) NOT NULL COMMENT 'Channel name',
  `AIbuild` int(11) NOT NULL COMMENT 'Build AI in the channel?',
  `ChannelOwn` int(11) NOT NULL COMMENT 'Who is the channel owner?',
  `IsOp` int(11) NOT NULL COMMENT 'Is the bot operator?',
  `HasRepGainEnabled` int(11) NOT NULL COMMENT 'Lets users gain/drop reputation',
  `ReccomendBans` int(11) NOT NULL COMMENT 'Lets the bot reccomend bans',
  `ReccomendKicks` int(11) NOT NULL COMMENT 'Lets the bot reccomend kicks',
  `CustomScriptLocate` int(11) NOT NULL COMMENT 'Custom script for the channel. Supports XML, JS, HTML.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `UnRegRep`
--

CREATE TABLE IF NOT EXISTS `ReputationForBot` (
  `network` int(11) NOT NULL COMMENT 'Network behaviour was found on',
  `nickname` int(11) NOT NULL COMMENT 'Nick associated with change in reputation',
  `hostname` int(11) NOT NULL COMMENT 'Hostname associated with the change in reputation',
  `ipAddress` int(11) NOT NULL COMMENT 'IP address associated with the change in reputation',
  `markForDelRow` tinyint(1) NOT NULL COMMENT 'Mark the row for deletion'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
