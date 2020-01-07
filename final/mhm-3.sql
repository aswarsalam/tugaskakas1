-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2020 at 09:30 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhm`
--

-- --------------------------------------------------------

--
-- Table structure for table `dafter`
--

CREATE TABLE `dafter` (
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `hobi` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `pendidikan` varchar(1100) NOT NULL,
  `organisasi` varchar(1100) NOT NULL,
  `prestasi` varchar(1000) NOT NULL,
  `tentang` varchar(1100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dafter`
--

INSERT INTO `dafter` (`nama`, `alamat`, `ttl`, `agama`, `hobi`, `Email`, `foto`, `pendidikan`, `organisasi`, `prestasi`, `tentang`) VALUES
('Aswar Salam', 'Jl. Kandea 3', 'Makassar, 29 November 1999', 'Islam', 'Membaca, Nonton Film Misteri', 'aswar2911@gmail.com', 'aswar.jpg', '<br>1. 2005 – 2011 : SDN Baraya 2 Makassar</br>\r\n<br>2. 2011 – 2014 : SMPN 7 Makassar</br> \r\n<br>3. 2014 – 2017 : SMAN 4 Makassar</br>\r\n<br>4. 2017 – sekarang : Sistem Informasi Universitas Islam Negeri Alauddin Makassar</br>', '<br>1. 2014 : Ketua Paskibra<br>\r\n<br>2. 2015 : Ketua Komisi 1 Majelis Permusyawaratan Kelas</br>\r\n<br>3. 2016 : Sekertaris Futsal</br>', '</br>1. 2014 : Juara 1 Lomba Paskibra Tingkat Kota</br>\r\n<br>2. 2015 : Juara 2 Lomba Paskibra Tingkat Provinsi</br>\r\n<br>3. 2015 : Juara 2 Lomba Jurnalis DBL tingkat Provinsi</br>\r\n<br>4. 2016 : Juara 1 Lomba Futsal Tingkat Kota</br>\r\n<br>5. 2016 : Juara 1 Lomba Futsal Tingkat Provinsi</br>', '<br>Saya adalah individu yang pekerja keras dan ambisius dengan hasrat besar untuk industri kreatif, startup, dan event. Saat ini saya berada di tahun Ketiga saya mempelajari WEB Programming di Universitas Islam Negeri Alauddin Makassar. </br>\r\n<br>Saya memiliki keterampilan komunikasi yang sangat baik, memungkinkan saya untuk berkomunikasi secara efektif dengan berbagai macam orang. Saya melihat posisi paruh waktu di Event Organizer di mana saya dapat mempraktikkan pengetahuan dan pengalaman saya, yang pada akhirnya menguntungkan organisasi tempat saya bekerja.</br>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('60900117044', '60900117044');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dafter`
--
ALTER TABLE `dafter`
  ADD PRIMARY KEY (`nama`),
  ADD UNIQUE KEY `pendidikan` (`pendidikan`) USING HASH;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
