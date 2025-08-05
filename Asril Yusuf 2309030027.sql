-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 05:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `air`
--

CREATE TABLE `air` (
  `aroma` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `rasa` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hewan`
--

CREATE TABLE `hewan` (
  `organ` varchar(100) NOT NULL,
  `tangan` varchar(100) NOT NULL,
  `kaki` varchar(100) NOT NULL,
  `mata` varchar(100) NOT NULL,
  `bulu` varchar(100) NOT NULL,
  `rambut` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manusia`
--

CREATE TABLE `manusia` (
  `organ` varchar(100) NOT NULL,
  `tangan` varchar(100) NOT NULL,
  `kaki` varchar(100) NOT NULL,
  `mata` varchar(100) NOT NULL,
  `hidung` enum('pesek','mancung') NOT NULL,
  `bb` int(100) NOT NULL,
  `tinggi` int(100) NOT NULL,
  `warna` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tumbuhan`
--

CREATE TABLE `tumbuhan` (
  `bentuk` varchar(100) NOT NULL,
  `habitat` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
