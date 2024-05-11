-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 05 Bulan Mei 2024 pada 21.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pijar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` char(255) NOT NULL,
  `notlp` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `nama`, `notlp`, `email`, `created_at`) VALUES
(1, 'augie', '123', 'augie aristito sudiarto', '085172229531', 'augie.aristitoazka@gmail.com', '2024-05-05 21:01:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID` int(3) NOT NULL,
  `SEKOLAH` varchar(24) DEFAULT NULL,
  `KELAS` varchar(9) DEFAULT NULL,
  `INDUK` varchar(12) DEFAULT NULL,
  `NISN` varchar(11) DEFAULT NULL,
  `NAMA` varchar(31) DEFAULT NULL,
  `KEGIATAN_UJIAN_KELAS_XII_TP_2023/2024` varchar(9) DEFAULT NULL,
  `SPP_2023/2024` varchar(9) DEFAULT NULL,
  `SPP_TP_2022/2023` varchar(1) DEFAULT NULL,
  `SPP_TAHUN_PELAJARAN 2021/2022` varchar(1) DEFAULT NULL,
  `TUNGGAKAN_PPDB_TAHUN_2021/2022` varchar(1) DEFAULT NULL,
  `TOUR` varchar(9) DEFAULT NULL,
  `JUMLAH` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`ID`, `SEKOLAH`, `KELAS`, `INDUK`, `NISN`, `NAMA`, `KEGIATAN_UJIAN_KELAS_XII_TP_2023/2024`, `SPP_2023/2024`, `SPP_TP_2022/2023`, `SPP_TAHUN_PELAJARAN 2021/2022`, `TUNGGAKAN_PPDB_TAHUN_2021/2022`, `TOUR`, `JUMLAH`) VALUES
(1, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200000', '0067067391', 'Adith Pamungkas', '0', '275,000', '0', '0', '0', '0', '275,000'),
(2, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200001', '0057229024', 'Andreas Putra Ramadhan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(3, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200002', '0041522278', 'Bohari', '0', '275,000', '0', '0', '0', '0', '275,000'),
(4, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200003', '0046853170', 'David Kristian Perdede', '0', '0', '0', '0', '0', '0', '0'),
(5, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200005', '0051926010', 'Dewa Satriya', '0', '275,000', '0', '0', '0', '0', '275,000'),
(6, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200006', '0069760273', 'Dimas Hermawan', '1,350,000', '275,000', '0', '0', '0', '0', '1,625,000'),
(7, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200008', '0059974921', 'Dzikri Kusuma Putra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(8, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200009', '0051067054', 'Erik Rizki Fauzan', '0', '0', '0', '0', '0', '0', '0'),
(9, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200010', '0045134843', 'Erlan Cahyo Pamungkas', '0', '275,000', '0', '0', '0', '0', '275,000'),
(10, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200011', '0069865253', 'Gilang Elno Pratama', '2,100,000', '1,100,000', '0', '0', '0', '0', '3,200,000'),
(11, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200012', '0035838490', 'M. Diva Arizona', '0', '550,000', '0', '0', '0', '0', '550,000'),
(12, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200013', '0054243736', 'M. Riyan Ramadlon', '0', '275,000', '0', '0', '0', '0', '275,000'),
(13, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200014', '0067524794', 'Mochamad Rifki Sadewa', '0', '275,000', '0', '0', '0', '0', '275,000'),
(14, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200015', '0057473441', 'Mohamad Ansori', '0', '275,000', '0', '0', '0', '0', '275,000'),
(15, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200016', '0054168956', 'Mohamad Dwi Alfarizi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(16, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200017', '0068806324', 'Muh Yusuf Febriansyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(17, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200020', '0056317020', 'Muhammad Riski Fadilah', '1,075,000', '825,000', '0', '0', '0', '250,000', '2,150,000'),
(18, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200021', '0063740082', 'Nabila Sinta Vibriana Putri', '925,000', '275,000', '0', '0', '0', '0', '1,200,000'),
(19, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200022', '0041301542', 'Nasrulludin', '2,875,000', '550,000', '0', '0', '0', '0', '3,425,000'),
(20, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200024', '0017008803', 'Nur Ibrahim', '0', '275,000', '0', '0', '0', '0', '275,000'),
(21, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200023', '0067494456', 'Nurma Triyatmoko', '0', '275,000', '0', '0', '0', '1,750,000', '2,025,000'),
(22, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200025', '0057526978', 'Ramadhan Oktavianto', '1,875,000', '1,650,000', '0', '0', '0', '0', '3,525,000'),
(23, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200026', '0063465765', 'Rifaldi', '0', '0', '0', '0', '0', '0', '0'),
(24, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200027', '0059400263', 'Rifkoh Akmal Aprilian Falih', '0', '275,000', '0', '0', '0', '0', '275,000'),
(25, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200028', '0063168266', 'Ripal Padilah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(26, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200029', '0063260419', 'Riski Oktavian Herdyansah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(27, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200032', '0058427858', 'Syahrul Ragil Saputra', '0', '0', '0', '0', '0', '0', '0'),
(28, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200034', '0054918992', 'Thomas Yusuf Alfath', '0', '275,000', '0', '0', '0', '0', '275,000'),
(29, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200035', '0062861871', 'Tora saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(30, 'SMK GLOBAL SURYA PRATAMA', 'XII TSM 3', 'GSP212200036', '0066633834', 'Wiratama Hudia Firdaus', '0', '550,000', '0', '0', '0', '500,000', '1,050,000'),
(31, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200037', '0052827652', 'Achmad Ibnu Rafi Syarif', '0', '275,000', '0', '0', '0', '125,000', '400,000'),
(32, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP2122123', '0046354540', 'Ahmad Rifaldi', '300,000', '275,000', '0', '0', '0', '0', '575,000'),
(33, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200040', '0067453276', 'Ahmeed Rumi Choinusbi', '0', '0', '0', '0', '0', '0', '0'),
(34, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200041', '0068408123', 'Andrian Butar-Butar', '1,125,000', '275,000', '0', '0', '0', '0', '1,400,000'),
(35, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200042', '0058200946', 'Anggi Gita Widiaswari', '0', '275,000', '0', '0', '0', '0', '275,000'),
(36, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200044', '0051872165', 'Aprilia Rahayu', '875,000', '550,000', '0', '0', '0', '0', '1,425,000'),
(37, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200045', '0051209150', 'Ariyu Delanof', '0', '275,000', '0', '0', '0', '0', '275,000'),
(38, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200046', '0064256661', 'Chikal Arvika Nurrizkika', '375,000', '275,000', '0', '0', '0', '0', '650,000'),
(39, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200047', '0046790859', 'Christian Daiva Bhaskara', '0', '275,000', '0', '0', '0', '0', '275,000'),
(40, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200048', '0062978670', 'Duta Dyandra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(41, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP21220054', '0052311875', 'Elisabeth Agnastasya', '275,000', '550,000', '0', '0', '0', '0', '825,000'),
(42, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200050', '0057817314', 'Fahriz Akbar', '0', '275,000', '0', '0', '0', '0', '275,000'),
(43, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', '212200049', '0059063833', 'Fernanda Agustian', '1,875,000', '1,925,000', '0', '0', '0', '1,750,000', '5,550,000'),
(44, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200052', '0066826632', 'Firman Dani', '0', '550,000', '0', '0', '0', '0', '550,000'),
(45, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200053', '0057372807', 'Gilang Ramadhan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(46, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', '212200056', '0069465438', 'Helmi Sunarta', '1,125,000', '1,375,000', '0', '0', '0', '0', '2,500,000'),
(47, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200057', '0057204566', 'Indri Simatupang', '0', '275,000', '0', '0', '0', '0', '275,000'),
(48, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200058', '0052997873', 'Ipanggalu', '0', '275,000', '0', '0', '0', '0', '275,000'),
(49, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200059', '0066075444', 'Irfan Septian', '1,125,000', '825,000', '0', '0', '0', '1,750,000', '3,700,000'),
(50, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200061', '0067626923', 'Josua Christian Sinaga', '0', '275,000', '0', '0', '0', '0', '275,000'),
(51, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200062', '0069535453', 'Leon Topan Nugroho', '0', '275,000', '0', '0', '0', '0', '275,000'),
(52, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200063', '0053805850', 'Marwanaya Al Ayubi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(53, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200065', '0054102145', 'Muhamad Angga Prida Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(54, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200067', '0059875140', 'Muhammad Julham Maruapey', '1,900,000', '275,000', '0', '0', '0', '875,000', '3,050,000'),
(55, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200068', '0066060914', 'Muhammad Rivaldi Tampatty', '0', '275,000', '0', '0', '0', '0', '275,000'),
(56, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200069', '0064260771', 'Muhammad Walfazri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(57, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200071', '0058794841', 'Nabila Keyzaliano Sander', '0', '275,000', '0', '0', '0', '0', '275,000'),
(58, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200073', '0032097438', 'Naufal Ardian Hakim', '0', '275,000', '0', '0', '0', '0', '275,000'),
(59, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200074', '0066789867', 'Niken Ayu Febryana', '0', '0', '0', '0', '0', '0', '0'),
(60, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200078', '0064964096', 'Rafael Situmorang', '0', '275,000', '0', '0', '0', '0', '275,000'),
(61, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200080', '0069800612', 'Reza Suhandi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(62, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200081', '0067121965', 'Riswan Sanjaya', '0', '275,000', '0', '0', '0', '0', '275,000'),
(63, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200082', '0063501785', 'Rizky Azis', '0', '550,000', '0', '0', '0', '1,750,000', '2,300,000'),
(64, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200083', '0061319039', 'Sahlahuddin Al-Ayubi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(65, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200085', '0067415854', 'Vito Ahmad Nauval', '0', '275,000', '0', '0', '0', '0', '275,000'),
(66, 'SMK GLOBAL SURYA PRATAMA', 'XII TKJ 3', 'GSP212200086', '3068461495', 'Zahra Rahmadanie', '0', '275,000', '0', '0', '0', '0', '275,000'),
(67, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200087', '0063956993', 'Aap Apriyani', '0', '0', '0', '0', '0', '0', '0'),
(68, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200089', '0058378247', 'Aida Rosalia Fitri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(69, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200090', '0061776260', 'Aisah Nuraeni', '0', '0', '0', '0', '0', '950,000', '950,000'),
(70, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200091', '0053648449', 'Arina Nurabia Putri', '0', '550,000', '0', '0', '0', '0', '550,000'),
(71, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200092', '0065725795', 'Ayu Setiyani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(72, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200093', '0069223038', 'Carissa Meidi Syahla', '0', '275,000', '0', '0', '0', '0', '275,000'),
(73, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200094', '0059855808', 'Chichilia Octaviani Wijaya', '0', '275,000', '0', '0', '0', '0', '275,000'),
(74, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200095', '0066199544', 'Chika Putri Setiansyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(75, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200096', '0062936357', 'Dinda Lestari', '0', '0', '0', '0', '0', '0', '0'),
(76, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200097', '0062766668', 'Fiska Aprilia', '0', '275,000', '0', '0', '0', '0', '275,000'),
(77, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200098', '0066198178', 'Hafifah Yahya', '0', '0', '0', '0', '0', '0', '0'),
(78, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200099', '0066252439', 'Intan Agiesnia Saffutri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(79, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP21220010', '0064566900', 'Juliana', '1,725,000', '550,000', '0', '0', '0', '0', '2,275,000'),
(80, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200100', '0065671014', 'Mayang Purnama Sari', '0', '0', '0', '0', '0', '0', '0'),
(81, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200102', '0068465592', 'Merliana Alvika Putri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(82, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200103', '0049591501', 'Mila Arsita', '0', '275,000', '0', '0', '0', '0', '275,000'),
(83, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200104', '0042667419', 'Mirna', '0', '275,000', '0', '0', '0', '0', '275,000'),
(84, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200105', '0022641117', 'Nabila Suciningrum', '0', '275,000', '0', '0', '0', '0', '275,000'),
(85, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200106', '0053487521', 'Nafa Luckyani Sah Pitri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(86, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200107', '0063811704', 'Naila Agustina', '0', '275,000', '0', '0', '0', '0', '275,000'),
(87, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200108', '0054874249', 'Naila Arsanti Aradhea', '0', '275,000', '0', '0', '0', '1,750,000', '2,025,000'),
(88, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200109', '0053442239', 'Naisya Yoesna Nazwa', '0', '275,000', '0', '0', '0', '0', '275,000'),
(89, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200110', '0053973538', 'Nazwa Achmad', '0', '275,000', '0', '0', '0', '0', '275,000'),
(90, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200111', '0059805866', 'Nikita Putri Pelangi', '0', '0', '0', '0', '0', '0', '0'),
(91, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200112', '0065219026', 'Nur Alya', '0', '275,000', '0', '0', '0', '0', '275,000'),
(92, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200113', '0056699727', 'Putri Dwi Lestari', '0', '275,000', '0', '0', '0', '0', '275,000'),
(93, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200114', '0052769839', 'Rahma Anggita', '0', '0', '0', '0', '0', '0', '0'),
(94, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200115', '0054975248', 'Ranti Sundari', '0', '275,000', '0', '0', '0', '0', '275,000'),
(95, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200116', '0056659468', 'Ratna Septiani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(96, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200117', '0067465308', 'Rizky Awalia Sabrina', '0', '275,000', '0', '0', '0', '0', '275,000'),
(97, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200118', '0062582073', 'Sarnah', '0', '0', '0', '0', '0', '0', '0'),
(98, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200130', '0064679553', 'Serly Oktapiya', '0', '550,000', '0', '0', '0', '0', '550,000'),
(99, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200119', '0046795998', 'Siti Aisah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(100, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200120', '0066031046', 'Siti Nurfadilah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(101, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200121', '0064380913', 'Susan Bunga Kartika', '0', '275,000', '0', '0', '0', '0', '275,000'),
(102, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200123', '0069180217', 'Tiyas Maylani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(103, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200124', '0063733304', 'Triana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(104, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200125', '0051706678', 'Vina Yolanda', '0', '275,000', '0', '0', '0', '0', '275,000'),
(105, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200126', '0057842520', 'Visi Maylani Putri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(106, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200128', '0061845475', 'Wafik Azizah', '1,040,000', '275,000', '0', '0', '0', '0', '1,315,000'),
(107, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200127', '0056267200', 'Windi Destiana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(108, 'SMK GLOBAL SURYA PRATAMA', 'XII OTKP', 'GSP212200129', '0049695451', 'Yunita Anggraini Jamhari', '0', '550,000', '0', '0', '0', '0', '550,000'),
(109, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200071', '0058880844', 'Achmad Hamdani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(110, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200073', '0061305893', 'Ahmad Yasir', '0', '275,000', '0', '0', '0', '0', '275,000'),
(111, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200074', '0041607685', 'Alya Jahwa Salsabila', '0', '275,000', '0', '0', '0', '0', '275,000'),
(112, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200075', '0064624996', 'Amanda Trinovianty', '0', '275,000', '0', '0', '0', '0', '275,000'),
(113, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200077', '0066248013', 'Andi Apandi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(114, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200079', '0052167700', 'Anggita Rahma Efendi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(115, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200081', '0067124688', 'Arisa Rahmawati', '0', '0', '0', '0', '0', '0', '0'),
(116, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '2122000078', '0053920732', 'Arya Mahesa', '0', '275,000', '0', '0', '0', '0', '275,000'),
(117, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200082', '0069866983', 'Ayuni Maynisa', '0', '275,000', '0', '0', '0', '0', '275,000'),
(118, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200083', '0059509447', 'Bagus Jundi Anugrah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(119, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200087', '0069986370', 'Deswita Febriyani Suganda', '0', '275,000', '0', '0', '0', '0', '275,000'),
(120, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '21220019', '0068360260', 'Hamdani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(121, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200091', '0051570756', 'Hanifah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(122, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200092', '0057841867', 'Indra Lesmana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(123, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200094', '0069117253', 'Irfan Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(124, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200095', '0067004414', 'Ita Kurniawan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(125, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200097', '0068197717', 'Martias Sahroni', '0', '275,000', '0', '0', '0', '0', '275,000'),
(126, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200098', '0069548925', 'Muhamad Iqbal Fikri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(127, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200100', '0051212729', 'Muhamad Junaedi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(128, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200102', '0056999659', 'Muhammad Akmal Fakhriq', '0', '275,000', '0', '0', '0', '0', '275,000'),
(129, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200106', '0054602737', 'Muhammad Syahril Iqbal Ramadhan', '0', '550,000', '0', '0', '0', '0', '550,000'),
(130, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200108', '0068001162', 'Nur Mega Eris', '0', '275,000', '0', '0', '0', '0', '275,000'),
(131, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200109', '0062893523', 'Rafaliyus A. Azis', '0', '275,000', '0', '0', '0', '0', '275,000'),
(132, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200110', '0061181255', 'Rafi Herdian', '0', '275,000', '0', '0', '0', '0', '275,000'),
(133, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '2122000079', '0059540163', 'Rapli Rahmadani', '1,775,000', '1,100,000', '0', '0', '0', '0', '2,875,000'),
(134, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200111', '0049087872', 'Reva Riyanti', '0', '275,000', '0', '0', '0', '0', '275,000'),
(135, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200112', '0061849869', 'Reza Rahmawan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(136, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200114', '0062350129', 'Riski Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(137, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200115', '0064812667', 'Rizky Firdaus', '0', '275,000', '0', '0', '0', '0', '275,000'),
(138, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200117', '0079395258', 'Tegar Prihandika', '0', '0', '0', '0', '0', '0', '0'),
(139, 'SMK PIJAR ALAM 2', 'XII TKJ 1', '212200118', '0066477801', 'Vavan Dwi Setyadi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(140, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200039', '0053740651', 'Adityo Ramadhan Sulastomo', '0', '0', '0', '0', '0', '0', '0'),
(141, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200072', '0067349945', 'Ahmad Syahputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(142, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200076', '0077930496', 'Amelia Febrianti', '0', '550,000', '0', '0', '0', '0', '550,000'),
(143, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP21220043', '0064501627', 'Amelia Rahayu Ningsih', '0', '550,000', '0', '0', '0', '0', '550,000'),
(144, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200078', '0046853101', 'Antika Herawati', '0', '0', '0', '0', '0', '1,250,000', '1,250,000'),
(145, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200080', '0062298999', 'Ardiansyah', '0', '550,000', '0', '0', '0', '0', '550,000'),
(146, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200084', '0052246718', 'Damar', '0', '550,000', '0', '0', '0', '0', '550,000'),
(147, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200085', '0068563839', 'Dede Romansyah', '0', '0', '0', '0', '0', '0', '0'),
(148, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200088', '0062476317', 'Diar', '0', '275,000', '0', '0', '0', '0', '275,000'),
(149, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200089', '0065209740', 'Farhan Sajidafatsya', '0', '0', '0', '0', '0', '0', '0'),
(150, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200051', '0044879261', 'Farlin Hasan Ashari', '0', '275,000', '0', '0', '0', '0', '275,000'),
(151, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200090', '0056367020', 'Fina sabilina', '0', '275,000', '0', '0', '0', '0', '275,000'),
(152, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200093', '0059593619', 'Indra Zulfan Yahya', '0', '275,000', '0', '0', '0', '0', '275,000'),
(153, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200060', '0047937385', 'Jepri', '1,475,000', '1,650,000', '0', '0', '0', '1,750,000', '4,875,000'),
(154, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200066', '0067502821', 'Muhamad Fauzan Faturrohman', '0', '0', '0', '0', '0', '0', '0'),
(155, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200101', '0069473511', 'Muhamad Mamun Nawawi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(156, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200103', '006803357', 'Muhammad Rafi Satriawan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(157, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200105', '0068440883', 'Muhammad Rafli Akbariansyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(158, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200064', '0063651890', 'Muhammad Reyhan', '0', '1,375,000', '0', '0', '0', '0', '1,375,000'),
(159, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200070', '0020923055', 'Mulyana', '0', '550,000', '0', '0', '0', '0', '550,000'),
(160, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200072', '0064975799', 'Nanda Kusuma', '0', '0', '0', '0', '0', '0', '0'),
(161, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200075', '0068563966', 'Nurul Asiyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(162, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200076', '0059668317', 'Nurul Fitriyani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(163, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200077', '0061637024', 'Paelani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(164, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200113', '0051612552', 'Rini Noviyanti', '0', '275,000', '0', '0', '0', '0', '275,000'),
(165, 'SMK PIJAR ALAM 2', 'XII TKJ 2', 'GSP212200084', '0069806746', 'Umar', '0', '0', '0', '0', '0', '0', '0'),
(166, 'SMK PIJAR ALAM 2', 'XII TKJ 2', '212200119', '0065203662', 'Zhafira Nayla Syifa', '0', '0', '0', '0', '0', '0', '0'),
(167, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200000', '0057746977', 'Achmad Halwani', '0', '275,000', '0', '0', '0', '0', '275,000'),
(168, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200002', '0067172978', 'Aditia Pratama', '0', '0', '0', '0', '0', '0', '0'),
(169, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200001', '0066025329', 'Aditya Arief Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(170, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200007', '0062150079', 'Akmal Arundaya', '0', '275,000', '0', '0', '0', '0', '275,000'),
(171, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200003', '0051955539', 'Aldi Kurniawan', '0', '0', '0', '0', '0', '0', '0'),
(172, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200005', '0065540543', 'Ardiyansah', '0', '550,000', '0', '0', '0', '0', '550,000'),
(173, 'SMK PIJAR ALAM 2', 'XII TSM 1', '211100006', '0053328263', 'Aril Agustiansyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(174, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200130', '0066172921', 'Caesar Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(175, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200134', '0059338541', 'Dede Maulana Kurniawan', '0', '0', '0', '0', '0', '0', '0'),
(176, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200008', '0058581104', 'Dimas Saputra', '0', '0', '0', '0', '0', '0', '0'),
(177, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200009', '0061671148', 'Eep Saepul Rohman', '0', '0', '0', '0', '0', '0', '0'),
(178, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200011', '0061752662', 'Hilman Fermana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(179, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200012', '0046074763', 'Kosim', '0', '0', '0', '0', '0', '0', '0'),
(180, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200014', '0047915096', 'M. Rizal Ramadan', '0', '0', '0', '0', '0', '0', '0'),
(181, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200013', '0063549472', 'Muhamad Rifa Maulana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(182, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200123', '0063819497', 'Muhammad Ridho', '0', '0', '0', '0', '0', '0', '0'),
(183, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200015', '0065603962', 'Muhammad Rizky Nurlingga', '0', '0', '0', '0', '0', '0', '0'),
(184, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200126', '3031246034', 'Nouval Haddag Arifky', '700,000', '550,000', '0', '0', '0', '1,750,000', '3,000,000'),
(185, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200016', '0054270852', 'Pajar Andika', '0', '550,000', '0', '0', '0', '0', '550,000'),
(186, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200018', '0053475885', 'Rendi Hermawan', '0', '0', '0', '0', '0', '0', '0'),
(187, 'SMK PIJAR ALAM 2', 'XII TSM 1', '1510334502', '0069563597', 'Rendy', '0', '275,000', '0', '0', '0', '0', '275,000'),
(188, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200019', '0052406183', 'Rheno Apriansyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(189, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200022', '0062303947', 'Rio Febriansyah', '0', '550,000', '0', '0', '0', '0', '550,000'),
(190, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200024', '0059380916', 'Rizki Agustri', '0', '275,000', '0', '0', '0', '0', '275,000'),
(191, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200025', '0066658976', 'Rizki Bahtiar', '0', '550,000', '0', '0', '0', '0', '550,000'),
(192, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200026', '00520706177', 'Rizki Putra Pratama', '0', '275,000', '0', '0', '0', '0', '275,000'),
(193, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200027', '0069596993', 'Rizwan Hidayat', '0', '275,000', '0', '0', '0', '0', '275,000'),
(194, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200028', '0051008339', 'Samsudin', '0', '550,000', '0', '0', '0', '0', '550,000'),
(195, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200029', '0053531508', 'Saripudin', '0', '550,000', '0', '0', '0', '0', '550,000'),
(196, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200030', '0053785303', 'Seftiano Dhaffa Hermala', '0', '275,000', '0', '0', '0', '0', '275,000'),
(197, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200031', '0053368160', 'Tristan', '0', '275,000', '0', '0', '0', '1,350,000', '1,625,000'),
(198, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200032', '0058784045', 'Yandi', '0', '0', '0', '0', '0', '0', '0'),
(199, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200033', '0069277480', 'Yashfa Muhamad Fallah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(200, 'SMK PIJAR ALAM 2', 'XII TSM 1', '212200034', '0045094556', 'Yatna', '0', '550,000', '0', '0', '0', '0', '550,000'),
(201, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200035', '0064169097', 'Adam Rizky Septiansyah', '450,000', '550,000', '0', '0', '0', '0', '1,000,000'),
(202, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200036', '0063751071', 'Aditia Ananda', '0', '275,000', '0', '0', '0', '0', '275,000'),
(203, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200037', '0064423105', 'Aditia Syahrudin', '0', '275,000', '0', '0', '0', '0', '275,000'),
(204, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200040', '0057918598', 'Ahmad Junaedi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(205, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200041', '0066669397', 'Ahmad Maulana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(206, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200044', '0052573881', 'Bagas Romadhon Akta Wilaga', '0', '0', '0', '0', '0', '0', '0'),
(207, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200045', '0052374055', 'Dafa Pradipta', '725,000', '0', '0', '0', '0', '0', '725,000'),
(208, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200046', '0046405507', 'Dicky Erlan Syah', '1,375,000', '275,000', '0', '0', '0', '0', '1,650,000'),
(209, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200047', '0062041612', 'Dicky Pratama Meilansyah', '0', '275,000', '0', '0', '0', '0', '275,000'),
(210, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200048', '0047772458', 'Doni Ramadhan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(211, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200049', '0063850342', 'Hendika Samudra Kusuma', '0', '275,000', '0', '0', '0', '0', '275,000'),
(212, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200051', '0058239218', 'Irpan Maulana Ibrahim', '0', '275,000', '0', '0', '0', '0', '275,000'),
(213, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200052', '0065589924', 'Irvan Suntana', '0', '275,000', '0', '0', '0', '0', '275,000'),
(214, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200053', '0077580724', 'Jumadi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(215, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200054', '0046905261', 'Manin Arfian', '0', '275,000', '0', '0', '0', '0', '275,000'),
(216, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200055', '0054274089', 'Mohamad Irvan Zein', '0', '275,000', '0', '0', '0', '0', '275,000'),
(217, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200056', '0059454720', 'Muhamad Aldi Wijaya', '0', '0', '0', '0', '0', '0', '0'),
(218, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200057', '0064675881', 'Muhamad Iqbal', '0', '0', '0', '0', '0', '0', '0'),
(219, 'SMK PIJAR ALAM 2', 'XII TSM 2', '2122000131', '0058867729', 'Muhamad Rafli', '0', '550,000', '0', '0', '0', '0', '550,000'),
(220, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200059', '0057815859', 'Muhamad Rizky Fauzan', '0', '0', '0', '0', '0', '0', '0'),
(221, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200060', '0054981559', 'Muhamad Syahril Ravael', '0', '275,000', '0', '0', '0', '0', '275,000'),
(222, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200061', '0049942757', 'Muhammad Rivaldi', '0', '275,000', '0', '0', '0', '0', '275,000'),
(223, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200133', '0068012557', 'Muhammad Rizky Rihab', '0', '275,000', '0', '0', '0', '0', '275,000'),
(224, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200062', '0062190228', 'Muhammad Saeful Rizky', '0', '275,000', '0', '0', '0', '0', '275,000'),
(225, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200063', '3059957411', 'Perdi Hasan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(226, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200064', '0061415620', 'Rasta Dede Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(227, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200065', '0061524237', 'Rega Adistia Ramadhan', '0', '275,000', '0', '0', '0', '0', '275,000'),
(228, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200066', '0063535158', 'Reza Amka Amsal Marbun', '0', '275,000', '0', '0', '0', '650,000', '925,000'),
(229, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200067', '0057906492', 'Sapri Halim Saputra', '0', '275,000', '0', '0', '0', '0', '275,000'),
(230, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200068', '0053123338', 'Solahudin', '0', '275,000', '0', '0', '0', '0', '275,000'),
(231, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200069', '0059370013', 'Surya Jaya', '0', '550,000', '0', '0', '0', '0', '550,000'),
(232, 'SMK PIJAR ALAM 2', 'XII TSM 2', '212200070', '0062569197', 'Syahrul Hidayat', '0', '0', '0', '0', '0', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);



--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- Indeks untuk tabel 'pembayaran'
--
ALTER TABLE 'pembayaran'
  ADD PRIMARY KEY ('ID');


--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
COMMIT;