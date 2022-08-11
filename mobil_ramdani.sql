-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 06:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobil_ramdani`
--

-- --------------------------------------------------------

--
-- Table structure for table `datamobil`
--

CREATE TABLE `datamobil` (
  `kode_mobil` varchar(20) NOT NULL,
  `nama_mobil` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datamobil`
--

INSERT INTO `datamobil` (`kode_mobil`, `nama_mobil`, `harga`, `warna`, `stok`) VALUES
('MB_006', 'Nissan', 45000000, 'White', 18);

-- --------------------------------------------------------

--
-- Table structure for table `sparepart`
--

CREATE TABLE `sparepart` (
  `kode_sparepart` varchar(50) NOT NULL,
  `nama_sparepart` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sparepart`
--

INSERT INTO `sparepart` (`kode_sparepart`, `nama_sparepart`, `harga`, `warna`, `stok`) VALUES
('KS_001', 'Oli Mesin', 200000, '-', 33),
('KS_002', 'Busi', 100000, '-', 56),
('KS_003', 'Aki', 350000, '-', 14),
('KS_004', 'Kampas Rem', 170000, '-', 42),
('KS_005', 'Filter AC', 125000, '-', 21);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datamobil`
--
ALTER TABLE `datamobil`
  ADD PRIMARY KEY (`kode_mobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
