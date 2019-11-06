-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 09:13 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`user`, `pass`) VALUES
('wuud', 'sembarang'),
('marwuud', 'sembarang');

-- --------------------------------------------------------

--
-- Table structure for table `datamahasiswa`
--

CREATE TABLE `datamahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `handphone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `konsentrasi` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datamahasiswa`
--

INSERT INTO `datamahasiswa` (`nim`, `nama`, `kota`, `handphone`, `status`, `kelas`, `konsentrasi`) VALUES
(1, 'MUGIARSO', 'BEKASI', '081384909179', 'AKTIF', 'A', 'TEKNIK INFORMATIKA'),
(2, 'MUTMAINAH', 'BEKASI', '12345678', 'AKTIF', 'B', 'SISTEM INFORMASI'),
(3, 'CHASNA', 'BEKASI', '0211111111111', 'AKTIF', 'A', 'TEKNIK KOMPUTER'),
(4, 'HUSNA', 'BEKASI', '12345678910', 'AKTIF', 'B', 'SISTEM INFORMASI'),
(5, 'Makin', 'Malang', '085', 'Non aktif', 'B', 'SI'),
(6, 'Makin', 'Madura', '087', 'Aktif', 'A', 'TI'),
(20, 'yukijem', 'bekasi', '08555555555', 'pelajar', '60', 'PGSMP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
