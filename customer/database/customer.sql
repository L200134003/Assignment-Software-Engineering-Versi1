-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2015 at 04:01 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd_dvdfilm`
--

CREATE TABLE IF NOT EXISTS `cd_dvdfilm` (
  `kode_film` int(11) NOT NULL,
  `no_pegawaiFK` int(11) NOT NULL,
  `jenis_film` varchar(45) NOT NULL,
  `judul_film` varchar(45) NOT NULL,
  PRIMARY KEY (`kode_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cd_dvdfilm`
--

INSERT INTO `cd_dvdfilm` (`kode_film`, `no_pegawaiFK`, `jenis_film`, `judul_film`) VALUES
(1, 1, 'action', 'teken 2'),
(2, 3, 'Drama', 'disaat dia mencintaimu'),
(4, 1, 'Action', 'james bond');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `no_customer` int(11) NOT NULL,
  `nama_customer` varchar(45) NOT NULL,
  `alamat_customer` varchar(45) NOT NULL,
  PRIMARY KEY (`no_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`no_customer`, `nama_customer`, `alamat_customer`) VALUES
(1, 'wilda liniarsa', 'sragen'),
(2, 'arga yudha adhiprama', 'pati'),
(3, 'mahdalina', 'solo baru'),
(4, 'tifanny avika rahma', 'bandung'),
(5, 'fauzan gustafi', 'boyolali'),
(6, 'alun pratama', 'kalimantan'),
(7, 'fadlan  wijayanto', 'semarang'),
(8, 'duanditya wiradiyaksa pradana', 'purwodadi'),
(9, 'desi puspita sari', 'sragen'),
(10, 'zahid mujadid', 'makam haji, solo'),
(11, 'aulia hanif', 'palembang'),
(12, 'ade guntoro', 'kalimantan'),
(13, 'ahmad basyiruddin', 'blora'),
(14, 'fajar fahrurozi', 'banjarnegara'),
(15, 'fatiyatur rohma', 'salatiga'),
(16, 'nani nurul fatihah', 'pati'),
(17, 'belqis fitriani', 'solo'),
(18, 'joni', 'sragen'),
(19, 'dykson alim rizky pradana', 'pemalang'),
(20, 'abdul latif', 'wonogiri');

-- --------------------------------------------------------

--
-- Table structure for table `customerhas_transaksi`
--

CREATE TABLE IF NOT EXISTS `customerhas_transaksi` (
  `no_customerFK` int(11) NOT NULL,
  `no_transaksiFK` int(11) NOT NULL,
  PRIMARY KEY (`no_customerFK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerhas_transaksi`
--

INSERT INTO `customerhas_transaksi` (`no_customerFK`, `no_transaksiFK`) VALUES
(1, 200),
(2, 200),
(4, 465),
(5, 600);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `no_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(45) NOT NULL,
  PRIMARY KEY (`no_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`no_pegawai`, `nama_pegawai`) VALUES
(1, 'arga yudha'),
(2, 'aisty aist'),
(3, 'arga adhiprama');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no_transaksi` int(11) NOT NULL,
  `no_pegawaiFK` int(11) NOT NULL,
  `pembayaran` varchar(45) NOT NULL,
  `tanggal_pinjam` varchar(45) NOT NULL,
  `tanggal_kembali` varchar(45) NOT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no_pegawaiFK`, `pembayaran`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 1, '5.000', '12/06/2015', '15/06/2015');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
