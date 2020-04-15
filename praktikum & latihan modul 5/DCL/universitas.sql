-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 08:15 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_ekonomi`
--

CREATE TABLE `mahasiswa_ekonomi` (
  `nim` char(9) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `tempat_lahir` char(50) DEFAULT NULL,
  `IPK` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa_ekonomi`
--

INSERT INTO `mahasiswa_ekonomi` (`nim`, `nama`, `umur`, `tempat_lahir`, `IPK`) VALUES
('089023013', 'Alex Supriyanto', 23, 'Surabaya', '2.90');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_rmik`
--

CREATE TABLE `mahasiswa_rmik` (
  `nim` char(9) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `tempat_lahir` char(50) DEFAULT NULL,
  `IPK` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa_rmik`
--

INSERT INTO `mahasiswa_rmik` (`nim`, `nama`, `umur`, `tempat_lahir`, `IPK`) VALUES
('089045001', 'Andi Suryo', 23, 'Jakarta', '2.70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
