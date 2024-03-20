-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 11:54 AM
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
-- Database: `activity1and2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bmiactivity`
--

CREATE TABLE `bmiactivity` (
  `name` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactnumber` bigint(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `bloodtype` varchar(50) NOT NULL,
  `heightmetric` int(50) NOT NULL,
  `weightmetric` int(50) NOT NULL,
  `bmiresultmetric` int(50) NOT NULL,
  `heightimperial` int(50) NOT NULL,
  `weightimperial` int(255) NOT NULL,
  `bmiresultimperial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bmiactivity`
--

INSERT INTO `bmiactivity` (`name`, `age`, `address`, `contactnumber`, `birthdate`, `gender`, `bloodtype`, `heightmetric`, `weightmetric`, `bmiresultmetric`, `heightimperial`, `weightimperial`, `bmiresultimperial`) VALUES
('reeva', 21, 'MANILA', 129129, 'SEPTEMER12', 'F', 'a', 112, 12, 0, 12, 12, 59),
('asS', 12, '12', 12, 'ADAS', 'ASD', 'Q', 124, 12, 0, 1221, 121, 0),
('asS', 12, '12', 12, 'ADAS', 'ASD', 'Q', 124, 12, 0, 1221, 121, 0),
('dsa', 121, '212', 0, '', '', '', 12, 12, 0, 12, 12, 59),
('dsa', 121, '212', 0, '', '', '', 12, 12, 0, 12, 12, 59),
('wqe', 121, 'asd', 1212, 'ad', 'f', 'a', 122, 122, 0, 122, 122, 6),
('wqe', 121, 'asd', 1212, 'ad', 'f', 'a', 122, 122, 0, 122, 122, 6),
('wqe', 121, 'asd', 1212, 'ad', 'f', 'a', 122, 122, 0, 122, 122, 6),
('reeva', 23, 'manila', 912129, 'september12', 'f', 'A', 122, 121, 0, 121, 1212, 58),
('reeva', 23, 'manila', 912129, 'september12', 'f', 'A', 122, 121, 0, 121, 1212, 58),
('reeva', 23, 'manila', 912129, 'september12', 'f', 'A', 122, 121, 0, 121, 1212, 58),
('reeva', 98, 'manila', 12, 'september', 'female', 'A', 122, 12, 0, 12, 12, 59),
('AS', 0, '', 0, '', '', '', 21, 21, 0, 12, 12, 59),
('', 0, '', 0, '', '', '', 21, 12, 0, 12, 12, 59);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
