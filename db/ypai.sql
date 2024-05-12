-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Bulan Mei 2024 pada 08.22
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ypai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Admin`
--

CREATE TABLE `Admin` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NoTLP` varchar(25) NOT NULL,
  `AdminLevel` int(3) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Admin`
--

INSERT INTO `Admin` (`Id`, `Username`, `Password`, `Nama`, `Email`, `NoTLP`, `AdminLevel`, `Date`) VALUES
(1, 'augie', '123', 'Augie Aristito Sudiarto', 'augie.aristitoazka@gmail.com', '085172229531', 3, '2024-05-11 10:43:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `DataSiswa`
--

CREATE TABLE `DataSiswa` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(50) NOT NULL,
  `Sekolah` varchar(50) NOT NULL,
  `NOInduk` varchar(50) NOT NULL,
  `NISN` varchar(50) NOT NULL,
  `UjianXIITP2324` varchar(50) NOT NULL,
  `SPP2324` varchar(50) NOT NULL,
  `SPP2223` varchar(50) NOT NULL,
  `SPP2122` varchar(50) NOT NULL,
  `PPDB2122` varchar(50) NOT NULL,
  `Tour` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `DataSiswa`
--

INSERT INTO `DataSiswa` (`Id`, `Nama`, `Kelas`, `Sekolah`, `NOInduk`, `NISN`, `UjianXIITP2324`, `SPP2324`, `SPP2223`, `SPP2122`, `PPDB2122`, `Tour`, `Total`) VALUES
(1, 'Adith Pamungkas', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200000', '0067067391', '0', '275,000', '0', '0', '0', '0', '275,000'),
(2, 'Andreas Putra Ramadhan', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200001', '0057229024', '0', '275,000', '0', '0', '0', '0', '275,000'),
(3, 'Bohari', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200002', '0041522278', '0', '275,000', '0', '0', '0', '0', '275,000'),
(4, 'David Kristian Perdede', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200003', '0046853170', '0', '0', '0', '0', '0', '0', '0'),
(5, 'Dewa Satriya', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200005', '0051926010', '0', '275,000', '0', '0', '0', '0', '275,000'),
(6, 'Dimas Hermawan', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200006', '0069760273', '1,350,000', '275,000', '0', '0', '0', '0', '1,625,000'),
(7, 'Dzikri Kusuma Putra', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200008', '0059974921', '0', '275,000', '0', '0', '0', '0', '275,000'),
(8, 'Erik Rizki Fauzan', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200009', '0051067054', '0', '0', '0', '0', '0', '0', '0'),
(9, 'Erlan Cahyo Pamungkas', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200010', '0045134843', '0', '275,000', '0', '0', '0', '0', '275,000'),
(10, 'Gilang Elno Pratama', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200011', '0069865253', '2,100,000', '1,100,000', '0', '0', '0', '0', '3,200,000'),
(11, 'M. Diva Arizona', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200012', '0035838490', '0', '550,000', '0', '0', '0', '0', '550,000'),
(12, 'M. Riyan Ramadlon', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200013', '0054243736', '0', '275,000', '0', '0', '0', '0', '275,000'),
(13, 'Mochamad Rifki Sadewa', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200014', '0067524794', '0', '275,000', '0', '0', '0', '0', '275,000'),
(14, 'Mohamad Ansori', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200015', '0057473441', '0', '275,000', '0', '0', '0', '0', '275,000'),
(15, 'Mohamad Dwi Alfarizi', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200016', '0054168956', '0', '275,000', '0', '0', '0', '0', '275,000'),
(16, 'Muh Yusuf Febriansyah', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200017', '0068806324', '0', '275,000', '0', '0', '0', '0', '275,000'),
(17, 'Muhammad Riski Fadilah', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200020', '0056317020', '1,075,000', '825,000', '0', '0', '0', '250,000', '2,150,000'),
(18, 'Nabila Sinta Vibriana Putri', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200021', '0063740082', '925,000', '275,000', '0', '0', '0', '0', '1,200,000'),
(19, 'Nasrulludin', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200022', '0041301542', '2,875,000', '550,000', '0', '0', '0', '0', '3,425,000'),
(20, 'Nur Ibrahim', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200024', '0017008803', '0', '275,000', '0', '0', '0', '0', '275,000'),
(21, 'Nurma Triyatmoko', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200023', '0067494456', '0', '275,000', '0', '0', '0', '1,750,000', '2,025,000'),
(22, 'Ramadhan Oktavianto', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200025', '0057526978', '1,875,000', '1,650,000', '0', '0', '0', '0', '3,525,000'),
(23, 'Rifaldi', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200026', '0063465765', '0', '0', '0', '0', '0', '0', '0'),
(24, 'Rifkoh Akmal Aprilian Falih', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200027', '0059400263', '0', '275,000', '0', '0', '0', '0', '275,000'),
(25, 'Ripal Padilah', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200028', '0063168266', '0', '275,000', '0', '0', '0', '0', '275,000'),
(26, 'Riski Oktavian Herdyansah', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200029', '0063260419', '0', '275,000', '0', '0', '0', '0', '275,000'),
(27, 'Syahrul Ragil Saputra', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200032', '0058427858', '0', '0', '0', '0', '0', '0', '0'),
(28, 'Thomas Yusuf Alfath', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200034', '0054918992', '0', '275,000', '0', '0', '0', '0', '275,000'),
(29, 'Tora saputra', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200035', '0062861871', '0', '275,000', '0', '0', '0', '0', '275,000'),
(30, 'Wiratama Hudia Firdaus', 'XII TSM 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200036', '0066633834', '0', '550,000', '0', '0', '0', '500,000', '1,050,000'),
(31, 'Achmad Ibnu Rafi Syarif', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200037', '0052827652', '0', '275,000', '0', '0', '0', '125,000', '400,000'),
(32, 'Ahmad Rifaldi', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP2122123', '0046354540', '300,000', '275,000', '0', '0', '0', '0', '575,000'),
(33, 'Ahmeed Rumi Choinusbi', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200040', '0067453276', '0', '0', '0', '0', '0', '0', '0'),
(34, 'Andrian Butar-Butar', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200041', '0068408123', '1,125,000', '275,000', '0', '0', '0', '0', '1,400,000'),
(35, 'Anggi Gita Widiaswari', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200042', '0058200946', '0', '275,000', '0', '0', '0', '0', '275,000'),
(36, 'Aprilia Rahayu', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200044', '0051872165', '875,000', '550,000', '0', '0', '0', '0', '1,425,000'),
(37, 'Ariyu Delanof', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200045', '0051209150', '0', '275,000', '0', '0', '0', '0', '275,000'),
(38, 'Chikal Arvika Nurrizkika', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200046', '0064256661', '375,000', '275,000', '0', '0', '0', '0', '650,000'),
(39, 'Christian Daiva Bhaskara', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200047', '0046790859', '0', '275,000', '0', '0', '0', '0', '275,000'),
(40, 'Duta Dyandra', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200048', '0062978670', '0', '275,000', '0', '0', '0', '0', '275,000'),
(41, 'Elisabeth Agnastasya', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP21220054', '0052311875', '275,000', '550,000', '0', '0', '0', '0', '825,000'),
(42, 'Fahriz Akbar', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200050', '0057817314', '0', '275,000', '0', '0', '0', '0', '275,000'),
(43, 'Fernanda Agustian', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', '212200049', '0059063833', '1,875,000', '1,925,000', '0', '0', '0', '1,750,000', '5,550,000'),
(44, 'Firman Dani', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200052', '0066826632', '0', '550,000', '0', '0', '0', '0', '550,000'),
(45, 'Gilang Ramadhan', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200053', '0057372807', '0', '275,000', '0', '0', '0', '0', '275,000'),
(46, 'Helmi Sunarta', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', '212200056', '0069465438', '1,125,000', '1,375,000', '0', '0', '0', '0', '2,500,000'),
(47, 'Indri Simatupang', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200057', '0057204566', '0', '275,000', '0', '0', '0', '0', '275,000'),
(48, 'Ipanggalu', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200058', '0052997873', '0', '275,000', '0', '0', '0', '0', '275,000'),
(49, 'Irfan Septian', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200059', '0066075444', '1,125,000', '825,000', '0', '0', '0', '1,750,000', '3,700,000'),
(50, 'Josua Christian Sinaga', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200061', '0067626923', '0', '275,000', '0', '0', '0', '0', '275,000'),
(51, 'Leon Topan Nugroho', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200062', '0069535453', '0', '275,000', '0', '0', '0', '0', '275,000'),
(52, 'Marwanaya Al Ayubi', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200063', '0053805850', '0', '275,000', '0', '0', '0', '0', '275,000'),
(53, 'Muhamad Angga Prida Saputra', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200065', '0054102145', '0', '275,000', '0', '0', '0', '0', '275,000'),
(54, 'Muhammad Julham Maruapey', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200067', '0059875140', '1,900,000', '275,000', '0', '0', '0', '875,000', '3,050,000'),
(55, 'Muhammad Rivaldi Tampatty', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200068', '0066060914', '0', '275,000', '0', '0', '0', '0', '275,000'),
(56, 'Muhammad Walfazri', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200069', '0064260771', '0', '275,000', '0', '0', '0', '0', '275,000'),
(57, 'Nabila Keyzaliano Sander', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200071', '0058794841', '0', '275,000', '0', '0', '0', '0', '275,000'),
(58, 'Naufal Ardian Hakim', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200073', '0032097438', '0', '275,000', '0', '0', '0', '0', '275,000'),
(59, 'Niken Ayu Febryana', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200074', '0066789867', '0', '0', '0', '0', '0', '0', '0'),
(60, 'Rafael Situmorang', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200078', '0064964096', '0', '275,000', '0', '0', '0', '0', '275,000'),
(61, 'Reza Suhandi', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200080', '0069800612', '0', '275,000', '0', '0', '0', '0', '275,000'),
(62, 'Riswan Sanjaya', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200081', '0067121965', '0', '275,000', '0', '0', '0', '0', '275,000'),
(63, 'Rizky Azis', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200082', '0063501785', '0', '550,000', '0', '0', '0', '1,750,000', '2,300,000'),
(64, 'Sahlahuddin Al-Ayubi', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200083', '0061319039', '0', '275,000', '0', '0', '0', '0', '275,000'),
(65, 'Vito Ahmad Nauval', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200085', '0067415854', '0', '275,000', '0', '0', '0', '0', '275,000'),
(66, 'Zahra Rahmadanie', 'XII TKJ 3', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200086', '3068461495', '0', '275,000', '0', '0', '0', '0', '275,000'),
(67, 'Aap Apriyani', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200087', '0063956993', '0', '0', '0', '0', '0', '0', '0'),
(68, 'Aida Rosalia Fitri', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200089', '0058378247', '0', '275,000', '0', '0', '0', '0', '275,000'),
(69, 'Aisah Nuraeni', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200090', '0061776260', '0', '0', '0', '0', '0', '950,000', '950,000'),
(70, 'Arina Nurabia Putri', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200091', '0053648449', '0', '550,000', '0', '0', '0', '0', '550,000'),
(71, 'Ayu Setiyani', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200092', '0065725795', '0', '275,000', '0', '0', '0', '0', '275,000'),
(72, 'Carissa Meidi Syahla', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200093', '0069223038', '0', '275,000', '0', '0', '0', '0', '275,000'),
(73, 'Chichilia Octaviani Wijaya', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200094', '0059855808', '0', '275,000', '0', '0', '0', '0', '275,000'),
(74, 'Chika Putri Setiansyah', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200095', '0066199544', '0', '275,000', '0', '0', '0', '0', '275,000'),
(75, 'Dinda Lestari', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200096', '0062936357', '0', '0', '0', '0', '0', '0', '0'),
(76, 'Fiska Aprilia', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200097', '0062766668', '0', '275,000', '0', '0', '0', '0', '275,000'),
(77, 'Hafifah Yahya', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200098', '0066198178', '0', '0', '0', '0', '0', '0', '0'),
(78, 'Intan Agiesnia Saffutri', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200099', '0066252439', '0', '275,000', '0', '0', '0', '0', '275,000'),
(79, 'Juliana', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP21220010', '0064566900', '1,725,000', '550,000', '0', '0', '0', '0', '2,275,000'),
(80, 'Mayang Purnama Sari', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200100', '0065671014', '0', '0', '0', '0', '0', '0', '0'),
(81, 'Merliana Alvika Putri', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200102', '0068465592', '0', '275,000', '0', '0', '0', '0', '275,000'),
(82, 'Mila Arsita', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200103', '0049591501', '0', '275,000', '0', '0', '0', '0', '275,000'),
(83, 'Mirna', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200104', '0042667419', '0', '275,000', '0', '0', '0', '0', '275,000'),
(84, 'Nabila Suciningrum', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200105', '0022641117', '0', '275,000', '0', '0', '0', '0', '275,000'),
(85, 'Nafa Luckyani Sah Pitri', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200106', '0053487521', '0', '275,000', '0', '0', '0', '0', '275,000'),
(86, 'Naila Agustina', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200107', '0063811704', '0', '275,000', '0', '0', '0', '0', '275,000'),
(87, 'Naila Arsanti Aradhea', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200108', '0054874249', '0', '275,000', '0', '0', '0', '1,750,000', '2,025,000'),
(88, 'Naisya Yoesna Nazwa', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200109', '0053442239', '0', '275,000', '0', '0', '0', '0', '275,000'),
(89, 'Nazwa Achmad', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200110', '0053973538', '0', '275,000', '0', '0', '0', '0', '275,000'),
(90, 'Nikita Putri Pelangi', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200111', '0059805866', '0', '0', '0', '0', '0', '0', '0'),
(91, 'Nur Alya', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200112', '0065219026', '0', '275,000', '0', '0', '0', '0', '275,000'),
(92, 'Putri Dwi Lestari', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200113', '0056699727', '0', '275,000', '0', '0', '0', '0', '275,000'),
(93, 'Rahma Anggita', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200114', '0052769839', '0', '0', '0', '0', '0', '0', '0'),
(94, 'Ranti Sundari', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200115', '0054975248', '0', '275,000', '0', '0', '0', '0', '275,000'),
(95, 'Ratna Septiani', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200116', '0056659468', '0', '275,000', '0', '0', '0', '0', '275,000'),
(96, 'Rizky Awalia Sabrina', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200117', '0067465308', '0', '275,000', '0', '0', '0', '0', '275,000'),
(97, 'Sarnah', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200118', '0062582073', '0', '0', '0', '0', '0', '0', '0'),
(98, 'Serly Oktapiya', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200130', '0064679553', '0', '550,000', '0', '0', '0', '0', '550,000'),
(99, 'Siti Aisah', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200119', '0046795998', '0', '275,000', '0', '0', '0', '0', '275,000'),
(100, 'Siti Nurfadilah', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200120', '0066031046', '0', '275,000', '0', '0', '0', '0', '275,000'),
(101, 'Susan Bunga Kartika', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200121', '0064380913', '0', '275,000', '0', '0', '0', '0', '275,000'),
(102, 'Tiyas Maylani', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200123', '0069180217', '0', '275,000', '0', '0', '0', '0', '275,000'),
(103, 'Triana', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200124', '0063733304', '0', '275,000', '0', '0', '0', '0', '275,000'),
(104, 'Vina Yolanda', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200125', '0051706678', '0', '275,000', '0', '0', '0', '0', '275,000'),
(105, 'Visi Maylani Putri', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200126', '0057842520', '0', '275,000', '0', '0', '0', '0', '275,000'),
(106, 'Wafik Azizah', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200128', '0061845475', '1,040,000', '275,000', '0', '0', '0', '0', '1,315,000'),
(107, 'Windi Destiana', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200127', '0056267200', '0', '275,000', '0', '0', '0', '0', '275,000'),
(108, 'Yunita Anggraini Jamhari', 'XII OTKP', 'SMK GLOBAL SURYA PRATAMA', 'GSP212200129', '0049695451', '0', '550,000', '0', '0', '0', '0', '550,000'),
(109, 'Achmad Hamdani', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200071', '0058880844', '0', '275,000', '0', '0', '0', '0', '275,000'),
(110, 'Ahmad Yasir', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200073', '0061305893', '0', '275,000', '0', '0', '0', '0', '275,000'),
(111, 'Alya Jahwa Salsabila', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200074', '0041607685', '0', '275,000', '0', '0', '0', '0', '275,000'),
(112, 'Amanda Trinovianty', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200075', '0064624996', '0', '275,000', '0', '0', '0', '0', '275,000'),
(113, 'Andi Apandi', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200077', '0066248013', '0', '275,000', '0', '0', '0', '0', '275,000'),
(114, 'Anggita Rahma Efendi', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200079', '0052167700', '0', '275,000', '0', '0', '0', '0', '275,000'),
(115, 'Arisa Rahmawati', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200081', '0067124688', '0', '0', '0', '0', '0', '0', '0'),
(116, 'Arya Mahesa', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '2122000078', '0053920732', '0', '275,000', '0', '0', '0', '0', '275,000'),
(117, 'Ayuni Maynisa', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200082', '0069866983', '0', '275,000', '0', '0', '0', '0', '275,000'),
(118, 'Bagus Jundi Anugrah', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200083', '0059509447', '0', '275,000', '0', '0', '0', '0', '275,000'),
(119, 'Deswita Febriyani Suganda', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200087', '0069986370', '0', '275,000', '0', '0', '0', '0', '275,000'),
(120, 'Hamdani', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '21220019', '0068360260', '0', '275,000', '0', '0', '0', '0', '275,000'),
(121, 'Hanifah', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200091', '0051570756', '0', '275,000', '0', '0', '0', '0', '275,000'),
(122, 'Indra Lesmana', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200092', '0057841867', '0', '275,000', '0', '0', '0', '0', '275,000'),
(123, 'Irfan Saputra', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200094', '0069117253', '0', '275,000', '0', '0', '0', '0', '275,000'),
(124, 'Ita Kurniawan', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200095', '0067004414', '0', '275,000', '0', '0', '0', '0', '275,000'),
(125, 'Martias Sahroni', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200097', '0068197717', '0', '275,000', '0', '0', '0', '0', '275,000'),
(126, 'Muhamad Iqbal Fikri', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200098', '0069548925', '0', '275,000', '0', '0', '0', '0', '275,000'),
(127, 'Muhamad Junaedi', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200100', '0051212729', '0', '275,000', '0', '0', '0', '0', '275,000'),
(128, 'Muhammad Akmal Fakhriq', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200102', '0056999659', '0', '275,000', '0', '0', '0', '0', '275,000'),
(129, 'Muhammad Syahril Iqbal Ramadhan', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200106', '0054602737', '0', '550,000', '0', '0', '0', '0', '550,000'),
(130, 'Nur Mega Eris', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200108', '0068001162', '0', '275,000', '0', '0', '0', '0', '275,000'),
(131, 'Rafaliyus A. Azis', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200109', '0062893523', '0', '275,000', '0', '0', '0', '0', '275,000'),
(132, 'Rafi Herdian', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200110', '0061181255', '0', '275,000', '0', '0', '0', '0', '275,000'),
(133, 'Rapli Rahmadani', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '2122000079', '0059540163', '1,775,000', '1,100,000', '0', '0', '0', '0', '2,875,000'),
(134, 'Reva Riyanti', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200111', '0049087872', '0', '275,000', '0', '0', '0', '0', '275,000'),
(135, 'Reza Rahmawan', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200112', '0061849869', '0', '275,000', '0', '0', '0', '0', '275,000'),
(136, 'Riski Saputra', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200114', '0062350129', '0', '275,000', '0', '0', '0', '0', '275,000'),
(137, 'Rizky Firdaus', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200115', '0064812667', '0', '275,000', '0', '0', '0', '0', '275,000'),
(138, 'Tegar Prihandika', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200117', '0079395258', '0', '0', '0', '0', '0', '0', '0'),
(139, 'Vavan Dwi Setyadi', 'XII TKJ 1', 'SMK PIJAR ALAM 2', '212200118', '0066477801', '0', '275,000', '0', '0', '0', '0', '275,000'),
(140, 'Adityo Ramadhan Sulastomo', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200039', '0053740651', '0', '0', '0', '0', '0', '0', '0'),
(141, 'Ahmad Syahputra', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200072', '0067349945', '0', '275,000', '0', '0', '0', '0', '275,000'),
(142, 'Amelia Febrianti', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200076', '0077930496', '0', '550,000', '0', '0', '0', '0', '550,000'),
(143, 'Amelia Rahayu Ningsih', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP21220043', '0064501627', '0', '550,000', '0', '0', '0', '0', '550,000'),
(144, 'Antika Herawati', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200078', '0046853101', '0', '0', '0', '0', '0', '1,250,000', '1,250,000'),
(145, 'Ardiansyah', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200080', '0062298999', '0', '550,000', '0', '0', '0', '0', '550,000'),
(146, 'Damar', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200084', '0052246718', '0', '550,000', '0', '0', '0', '0', '550,000'),
(147, 'Dede Romansyah', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200085', '0068563839', '0', '0', '0', '0', '0', '0', '0'),
(148, 'Diar', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200088', '0062476317', '0', '275,000', '0', '0', '0', '0', '275,000'),
(149, 'Farhan Sajidafatsya', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200089', '0065209740', '0', '0', '0', '0', '0', '0', '0'),
(150, 'Farlin Hasan Ashari', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200051', '0044879261', '0', '275,000', '0', '0', '0', '0', '275,000'),
(151, 'Fina sabilina', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200090', '0056367020', '0', '275,000', '0', '0', '0', '0', '275,000'),
(152, 'Indra Zulfan Yahya', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200093', '0059593619', '0', '275,000', '0', '0', '0', '0', '275,000'),
(153, 'Jepri', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200060', '0047937385', '1,475,000', '1,650,000', '0', '0', '0', '1,750,000', '4,875,000'),
(154, 'Muhamad Fauzan Faturrohman', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200066', '0067502821', '0', '0', '0', '0', '0', '0', '0'),
(155, 'Muhamad Mamun Nawawi', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200101', '0069473511', '0', '275,000', '0', '0', '0', '0', '275,000'),
(156, 'Muhammad Rafi Satriawan', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200103', '006803357', '0', '275,000', '0', '0', '0', '0', '275,000'),
(157, 'Muhammad Rafli Akbariansyah', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200105', '0068440883', '0', '275,000', '0', '0', '0', '0', '275,000'),
(158, 'Muhammad Reyhan', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200064', '0063651890', '0', '1,375,000', '0', '0', '0', '0', '1,375,000'),
(159, 'Mulyana', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200070', '0020923055', '0', '550,000', '0', '0', '0', '0', '550,000'),
(160, 'Nanda Kusuma', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200072', '0064975799', '0', '0', '0', '0', '0', '0', '0'),
(161, 'Nurul Asiyah', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200075', '0068563966', '0', '275,000', '0', '0', '0', '0', '275,000'),
(162, 'Nurul Fitriyani', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200076', '0059668317', '0', '275,000', '0', '0', '0', '0', '275,000'),
(163, 'Paelani', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200077', '0061637024', '0', '275,000', '0', '0', '0', '0', '275,000'),
(164, 'Rini Noviyanti', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200113', '0051612552', '0', '275,000', '0', '0', '0', '0', '275,000'),
(165, 'Umar', 'XII TKJ 2', 'SMK PIJAR ALAM 2', 'GSP212200084', '0069806746', '0', '0', '0', '0', '0', '0', '0'),
(166, 'Zhafira Nayla Syifa', 'XII TKJ 2', 'SMK PIJAR ALAM 2', '212200119', '0065203662', '0', '0', '0', '0', '0', '0', '0'),
(167, 'Achmad Halwani', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200000', '0057746977', '0', '275,000', '0', '0', '0', '0', '275,000'),
(168, 'Aditia Pratama', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200002', '0067172978', '0', '0', '0', '0', '0', '0', '0'),
(169, 'Aditya Arief Saputra', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200001', '0066025329', '0', '275,000', '0', '0', '0', '0', '275,000'),
(170, 'Akmal Arundaya', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200007', '0062150079', '0', '275,000', '0', '0', '0', '0', '275,000'),
(171, 'Aldi Kurniawan', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200003', '0051955539', '0', '0', '0', '0', '0', '0', '0'),
(172, 'Ardiyansah', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200005', '0065540543', '0', '550,000', '0', '0', '0', '0', '550,000'),
(173, 'Aril Agustiansyah', 'XII TSM 1', 'SMK PIJAR ALAM 2', '211100006', '0053328263', '0', '275,000', '0', '0', '0', '0', '275,000'),
(174, 'Caesar Saputra', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200130', '0066172921', '0', '275,000', '0', '0', '0', '0', '275,000'),
(175, 'Dede Maulana Kurniawan', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200134', '0059338541', '0', '0', '0', '0', '0', '0', '0'),
(176, 'Dimas Saputra', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200008', '0058581104', '0', '0', '0', '0', '0', '0', '0'),
(177, 'Eep Saepul Rohman', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200009', '0061671148', '0', '0', '0', '0', '0', '0', '0'),
(178, 'Hilman Fermana', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200011', '0061752662', '0', '275,000', '0', '0', '0', '0', '275,000'),
(179, 'Kosim', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200012', '0046074763', '0', '0', '0', '0', '0', '0', '0'),
(180, 'M. Rizal Ramadan', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200014', '0047915096', '0', '0', '0', '0', '0', '0', '0'),
(181, 'Muhamad Rifa Maulana', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200013', '0063549472', '0', '275,000', '0', '0', '0', '0', '275,000'),
(182, 'Muhammad Ridho', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200123', '0063819497', '0', '0', '0', '0', '0', '0', '0'),
(183, 'Muhammad Rizky Nurlingga', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200015', '0065603962', '0', '0', '0', '0', '0', '0', '0'),
(184, 'Nouval Haddag Arifky', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200126', '3031246034', '700,000', '550,000', '0', '0', '0', '1,750,000', '3,000,000'),
(185, 'Pajar Andika', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200016', '0054270852', '0', '550,000', '0', '0', '0', '0', '550,000'),
(186, 'Rendi Hermawan', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200018', '0053475885', '0', '0', '0', '0', '0', '0', '0'),
(187, 'Rendy', 'XII TSM 1', 'SMK PIJAR ALAM 2', '1510334502', '0069563597', '0', '275,000', '0', '0', '0', '0', '275,000'),
(188, 'Rheno Apriansyah', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200019', '0052406183', '0', '275,000', '0', '0', '0', '0', '275,000'),
(189, 'Rio Febriansyah', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200022', '0062303947', '0', '550,000', '0', '0', '0', '0', '550,000'),
(190, 'Rizki Agustri', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200024', '0059380916', '0', '275,000', '0', '0', '0', '0', '275,000'),
(191, 'Rizki Bahtiar', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200025', '0066658976', '0', '550,000', '0', '0', '0', '0', '550,000'),
(192, 'Rizki Putra Pratama', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200026', '00520706177', '0', '275,000', '0', '0', '0', '0', '275,000'),
(193, 'Rizwan Hidayat', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200027', '0069596993', '0', '275,000', '0', '0', '0', '0', '275,000'),
(194, 'Samsudin', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200028', '0051008339', '0', '550,000', '0', '0', '0', '0', '550,000'),
(195, 'Saripudin', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200029', '0053531508', '0', '550,000', '0', '0', '0', '0', '550,000'),
(196, 'Seftiano Dhaffa Hermala', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200030', '0053785303', '0', '275,000', '0', '0', '0', '0', '275,000'),
(197, 'Tristan', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200031', '0053368160', '0', '275,000', '0', '0', '0', '1,350,000', '1,625,000'),
(198, 'Yandi', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200032', '0058784045', '0', '0', '0', '0', '0', '0', '0'),
(199, 'Yashfa Muhamad Fallah', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200033', '0069277480', '0', '275,000', '0', '0', '0', '0', '275,000'),
(200, 'Yatna', 'XII TSM 1', 'SMK PIJAR ALAM 2', '212200034', '0045094556', '0', '550,000', '0', '0', '0', '0', '550,000'),
(201, 'Adam Rizky Septiansyah', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200035', '0064169097', '450,000', '550,000', '0', '0', '0', '0', '1,000,000'),
(202, 'Aditia Ananda', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200036', '0063751071', '0', '275,000', '0', '0', '0', '0', '275,000'),
(203, 'Aditia Syahrudin', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200037', '0064423105', '0', '275,000', '0', '0', '0', '0', '275,000'),
(204, 'Ahmad Junaedi', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200040', '0057918598', '0', '275,000', '0', '0', '0', '0', '275,000'),
(205, 'Ahmad Maulana', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200041', '0066669397', '0', '275,000', '0', '0', '0', '0', '275,000'),
(206, 'Bagas Romadhon Akta Wilaga', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200044', '0052573881', '0', '0', '0', '0', '0', '0', '0'),
(207, 'Dafa Pradipta', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200045', '0052374055', '725,000', '0', '0', '0', '0', '0', '725,000'),
(208, 'Dicky Erlan Syah', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200046', '0046405507', '1,375,000', '275,000', '0', '0', '0', '0', '1,650,000'),
(209, 'Dicky Pratama Meilansyah', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200047', '0062041612', '0', '275,000', '0', '0', '0', '0', '275,000'),
(210, 'Doni Ramadhan', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200048', '0047772458', '0', '275,000', '0', '0', '0', '0', '275,000'),
(211, 'Hendika Samudra Kusuma', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200049', '0063850342', '0', '275,000', '0', '0', '0', '0', '275,000'),
(212, 'Irpan Maulana Ibrahim', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200051', '0058239218', '0', '275,000', '0', '0', '0', '0', '275,000'),
(213, 'Irvan Suntana', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200052', '0065589924', '0', '275,000', '0', '0', '0', '0', '275,000'),
(214, 'Jumadi', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200053', '0077580724', '0', '275,000', '0', '0', '0', '0', '275,000'),
(215, 'Manin Arfian', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200054', '0046905261', '0', '275,000', '0', '0', '0', '0', '275,000'),
(216, 'Mohamad Irvan Zein', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200055', '0054274089', '0', '275,000', '0', '0', '0', '0', '275,000'),
(217, 'Muhamad Aldi Wijaya', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200056', '0059454720', '0', '0', '0', '0', '0', '0', '0'),
(218, 'Muhamad Iqbal', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200057', '0064675881', '0', '0', '0', '0', '0', '0', '0'),
(219, 'Muhamad Rafli', 'XII TSM 2', 'SMK PIJAR ALAM 2', '2122000131', '0058867729', '0', '550,000', '0', '0', '0', '0', '550,000'),
(220, 'Muhamad Rizky Fauzan', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200059', '0057815859', '0', '0', '0', '0', '0', '0', '0'),
(221, 'Muhamad Syahril Ravael', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200060', '0054981559', '0', '275,000', '0', '0', '0', '0', '275,000'),
(222, 'Muhammad Rivaldi', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200061', '0049942757', '0', '275,000', '0', '0', '0', '0', '275,000'),
(223, 'Muhammad Rizky Rihab', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200133', '0068012557', '0', '275,000', '0', '0', '0', '0', '275,000'),
(224, 'Muhammad Saeful Rizky', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200062', '0062190228', '0', '275,000', '0', '0', '0', '0', '275,000'),
(225, 'Perdi Hasan', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200063', '3059957411', '0', '275,000', '0', '0', '0', '0', '275,000'),
(226, 'Rasta Dede Saputra', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200064', '0061415620', '0', '275,000', '0', '0', '0', '0', '275,000'),
(227, 'Rega Adistia Ramadhan', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200065', '0061524237', '0', '275,000', '0', '0', '0', '0', '275,000'),
(228, 'Reza Amka Amsal Marbun', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200066', '0063535158', '0', '275,000', '0', '0', '0', '650,000', '925,000'),
(229, 'Sapri Halim Saputra', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200067', '0057906492', '0', '275,000', '0', '0', '0', '0', '275,000'),
(230, 'Solahudin', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200068', '0053123338', '0', '275,000', '0', '0', '0', '0', '275,000'),
(231, 'Surya Jaya', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200069', '0059370013', '0', '550,000', '0', '0', '0', '0', '550,000'),
(232, 'Syahrul Hidayat', 'XII TSM 2', 'SMK PIJAR ALAM 2', '212200070', '0062569197', '0', '0', '0', '0', '0', '0', '0'),
(235, 'augie', 'XII TKJ', 'SMK PIJAR ALAM 1', '123123', '123123', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indeks untuk tabel `DataSiswa`
--
ALTER TABLE `DataSiswa`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `NISN` (`NISN`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `Admin`
--
ALTER TABLE `Admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `DataSiswa`
--
ALTER TABLE `DataSiswa`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
