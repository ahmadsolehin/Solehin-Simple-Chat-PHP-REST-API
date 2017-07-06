-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:4001
-- Generation Time: Jul 08, 2015 at 04:31 AM
-- Server version: 5.5.42
-- PHP Version: 5.4.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nge-chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(10) NOT NULL,
  `nick` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `waktu` time NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(10) NOT NULL,
  `nick` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `waktu` time NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nick`, `pesan`, `waktu`) VALUES
(206, 'dnewbie', 'sudah fix  [kedip]', '04:07:48'),
(207, 'daroel', 'daroel masuk  [ketawa]', '04:07:36'),
(208, 'dnewbie', 'hai darul  [kedip]', '04:07:13'),
(209, 'daroel', 'ada apa dnewbie ? ', '04:07:31'),
(210, 'dnewbie', 'ini lagi ngetes chatting sederhana  [melet]', '04:07:51'),
(211, 'daroel', 'owh g2 ya ? emang udah fix? [sakit]', '04:07:10'),
(212, 'dnewbie', 'sudah donk . . . .  [melet]', '04:07:27'),
(213, 'daroel', 'oalah sips....  [bonus]', '04:07:57'),
(214, 'dnewbie', 'xixixixi  [bonus] [bonus] [bonus] [bonus]', '04:07:09'),
(215, 'daroel', ' [csenyum] [csenyum] [csenyum] [csenyum]', '04:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nick`, `email`, `pass`) VALUES
(14, 'dnewbie', 'dnewbie@jagocoding.com', 'd5aedf560b928e289dc4a76d8765bc4e'),
(23, 'daroel', 'email@email.com', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
