-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 10:46 AM
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
-- Database: `akademik06978`
--
CREATE DATABASE IF NOT EXISTS `akademik06978` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `akademik06978`;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `npp` char(16) NOT NULL,
  `namadosen` varchar(50) DEFAULT NULL,
  `homebase` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`npp`, `namadosen`, `homebase`) VALUES
(' 0686.11.1993.03', 'Sasono Wibowo, SE, M.Kom', 'A12'),
('0686.11.1990.000', 'lalang erawan', 'A12'),
('0686.11.1991.011', 'Aris Nurhindarto, M.Kom', 'A12'),
('0686.11.1992.026', 'Florentina Esti Nilawati, SH, MM', 'A12'),
('0686.11.1996.080', 'Asih Rohmani, M.Kom', 'A12'),
('0686.11.1997.108', 'Budi Widjajanto, M.Kom', 'A12'),
('0686.11.1997.128', 'Lalang Erawan, M.Kom', 'A12'),
('0686.11.1997.136', 'Acun Kardianawati, M.Kom', 'A12'),
('0686.11.1997.138', 'Dr. Pujiono, S.Si., M.Kom', 'A12'),
('0686.11.1998.152', 'MY. Teguh Sulistyono, M.Kom', 'A12'),
('0686.11.1998.200', 'Affandy, Ph.D', 'A12'),
('0686.11.2000.241', 'Yupie Kusumawati, SE, M.Kom', 'A12');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `lokasi_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar_thumbnail`
--

CREATE TABLE `gambar_thumbnail` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `thumbpath` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idJadwal` int(11) NOT NULL,
  `idMatkul` char(10) DEFAULT NULL,
  `namaMatkul` varchar(100) DEFAULT NULL,
  `npp` char(16) DEFAULT NULL,
  `thAkd` char(4) DEFAULT NULL,
  `hari1` char(10) DEFAULT NULL,
  `mulai1` char(5) DEFAULT NULL,
  `selesai1` char(5) DEFAULT NULL,
  `ruang1` char(10) DEFAULT NULL,
  `hari2` char(10) DEFAULT NULL,
  `mulai2` char(5) DEFAULT NULL,
  `selesai2` char(5) DEFAULT NULL,
  `ruang2` char(10) DEFAULT NULL,
  `klp` char(10) DEFAULT NULL,
  `sks` char(2) DEFAULT NULL,
  `smt` char(2) DEFAULT NULL,
  `kap` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idJadwal`, `idMatkul`, `namaMatkul`, `npp`, `thAkd`, `hari1`, `mulai1`, `selesai1`, `ruang1`, `hari2`, `mulai2`, `selesai2`, `ruang2`, `klp`, `sks`, `smt`, `kap`) VALUES
(1, 'A12.56201', 'Algoritma dan Pemrograman I', '0686.11.1997.136', '2019', 'Senin', '07.00', '08.40', 'H.2.1', 'Rabu', '08.40', '10.20', 'H.2.4', 'A12.2302', NULL, NULL, NULL),
(2, 'A12.56401', 'Basis Data', '0686.11.1997.128', '2019', 'Senin', '07.00', '08.40', 'H.2.2', 'Selasa', '10.20', '12.00', 'H.3.1', 'A12.4301', NULL, '0', 40),
(3, 'A12.56201', 'Algoritma dan Pemrograman I', '0686.11.1997.136', '2019', 'Selasa', '10.20', '12.00', 'H.3.1', 'Kamis', '14.10', '16.20', 'H.2.5', 'A12.2201', NULL, '0', 40),
(4, 'A12.56302', 'Algoritma dan Pemrograman II', '0686.11.1991.011', '2019', 'Kamis', '14.10', '16.20', 'H.4.2', 'Jumat', '07.00', '08.40', 'H.4.1', 'A12.3302', NULL, '1', 40),
(5, 'A12.56302', 'Algoritma dan Pemrograman II', '0686.11.1991.011', '2019', 'Jumat', '12.30', '14.10', 'H.3.5', 'Senin', '10.20', '12.00', 'H.4.6', 'A12.3301', NULL, '1', 40),
(6, 'A12.56707', 'Aplikasi e-Bisnis', '0686.11.1997.128', '2019', 'Rabu', '08.40', '10.20', 'H.2.5', 'Selasa', '12.30', '14.10', 'H.2.3', 'A12.7201', NULL, '1', 40),
(7, 'A12.56707', 'Aplikasi e-Bisnis', '0686.11.1997.128', '2019', 'Jumat', '10.20', '12.00', 'H.2.6', 'Rabu', '12.30', '14.10', 'H.2.2', 'A12.7202', NULL, '1', 40),
(8, 'A12.56305', 'Jaringan Komputer', '0686.11.1998.152', '2019', 'Kamis', '08.40', '10.20', 'H.2.4', 'Kamis', '14.10', '16.20', 'H.3.1', 'A12.3501', NULL, '1', 40),
(9, 'A12.56305', 'Jaringan Komputer', '0686.11.1998.152', '2019', 'Senin', '07.00', '08.40', 'H.3.3', 'Selasa', '10.20', '12.00', 'H.2.6', 'A12.3502', NULL, '1', 40);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `idKrs` int(10) NOT NULL,
  `thAkd` int(10) DEFAULT NULL,
  `nim` char(15) DEFAULT NULL,
  `idMatkul` char(10) DEFAULT NULL,
  `nilai` char(1) DEFAULT NULL,
  `nppDos` char(16) DEFAULT NULL,
  `hari` char(10) DEFAULT NULL,
  `waktu` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kultawar`
--

CREATE TABLE `kultawar` (
  `idkultawar` int(11) NOT NULL,
  `idmatkul` char(10) DEFAULT NULL,
  `npp` char(16) DEFAULT NULL,
  `klp` char(10) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jamkul` char(13) DEFAULT NULL,
  `ruang` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kultawar`
--

INSERT INTO `kultawar` (`idkultawar`, `idmatkul`, `npp`, `klp`, `hari`, `jamkul`, `ruang`) VALUES
(1, 'A12.56201', '0686.11.1997.136', 'A12.6201', 'Senin', '07.00-08.40', 'H.5.5'),
(2, 'A12.56107', '0686.11.1997.128', 'A12.6101', 'Senin', '08.40-10.20', NULL),
(3, 'A12.56201', '0686.11.1997.136', 'A12.6201', 'Selasa', '10.20-12.00', NULL),
(4, 'A12.56302', '0686.11.1991.011', 'A12.6302', 'Kamis', '14.10-16.20', NULL),
(5, 'A12.56302', '0686.11.1991.011', 'A12.6301', 'Jumat', '12.30-14.10', NULL),
(6, 'A12.56707', '0686.11.1997.128', 'A12.6701', 'Rabu', '08.40-10.20', NULL),
(7, 'A12.56707', '0686.11.1997.128', 'A12.6702', 'Jumat', '10.20-12.00', NULL),
(8, 'A12.56305', '0686.11.1998.152', 'A12.6303', 'Kamis', '08.40-10.20', NULL),
(9, 'A12.56305', '0686.11.1998.152', 'A12.6305', 'Senin', '07.00-08.40', NULL),
(10, 'A12.56202', '0686.11.2000.241', 'A12.6204', 'Senin', '07.00-08.40', NULL),
(12, 'A12.56601', '0686.11.1997.138', 'A12.6603', 'Jumat', '14.10-16.20', 'H.5.2'),
(13, 'A12.56801', '0686.11.1992.026', 'A12.6803', 'Rabu', '07.00-08.40', 'H.5.2');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `idmatkul` char(10) NOT NULL,
  `namamatkul` varchar(50) DEFAULT NULL,
  `sks` int(2) DEFAULT NULL,
  `jns` char(3) DEFAULT NULL,
  `smt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`idmatkul`, `namamatkul`, `sks`, `jns`, `smt`) VALUES
('A12.56101', 'Matematika Diskrit', 3, 'T', '1'),
('A12.56102', 'Pengantar Teknologi Informasi', 4, 'T/P', '1'),
('A12.56103', 'Sistem Informasi', 3, 'T', '1'),
('A12.56104', 'Pengantar Manajemen', 2, 'T', '1'),
('A12.56105', 'Ketrampilan Interpersonal', 2, 'T', '1'),
('A12.56106', 'Bahasa Inggris I', 2, 'T', '1'),
('A12.56107', 'Dasar Akuntansi', 3, 'T', '1'),
('A12.56201', 'Algoritma dan Pemrograman I', 4, 'T/P', '2'),
('A12.56202', 'Sistem Informasi Akuntansi', 3, 'T', '2'),
('A12.56203', 'Pendidikan Agama', 2, 'T', '2'),
('A12.56204', 'Bahasa Inggris II', 2, 'T', '2'),
('A12.56205', 'Pengantar Bisnis', 2, 'T', '2'),
('A12.56206', 'Matematika Bisnis', 3, 'T', '2'),
('A12.56207', 'Sistem Informasi Manajemen', 3, 'T', '2'),
('A12.56301', 'Analisa Proses Bisnis', 3, 'T', '3'),
('A12.56302', 'Algoritma dan Pemrograman II', 4, 'T/P', '3'),
('A12.56303', 'Pemrograman Web', 4, 'T/P', '3'),
('A12.56304', 'Sistem Operasi', 3, 'T', '3'),
('A12.56305', 'Jaringan Komputer', 4, 'T', '3'),
('A12.56401', 'Basis Data', 3, 'T', '4'),
('A12.56402', 'Pemrograman Berorientasi Obyek', 4, 'T/P', '4'),
('A12.56403', 'Pemrograman Web Lanjut', 2, 'P', '4'),
('A12.56404', 'Analisa dan Perancangan Sistem Informasi I', 3, 'T', '4'),
('A12.56406', 'Konsep e-Bisnis', 4, 'T', '4'),
('A12.56501', 'Analisa dan Perancangan Sistem Informasi II', 3, 'T', '5'),
('A12.56502', 'Kewirausahaan', 2, 'T', '5'),
('A12.56503', 'Analisa dan Perancangan Sistem Informasi II', 3, 'T', '5'),
('A12.56504', 'Manajemen Sains', 3, 'T', '5'),
('A12.56505', 'Sistem Basis Data', 3, 'T', '5'),
('A12.56506', 'Interaksi Manusia dan Komputer', 2, 'T', '5'),
('A12.56507', 'Pengelolaan Hubungan Pelanggan', 3, 'T', '5'),
('A12.56601', 'Data Mining dan Data Warehouse', 3, 'T', '6'),
('A12.56602', 'Analisa Kinerja Sistem', 3, 'T', '6'),
('A12.56603', 'Sistem Pendukung Keputusan', 3, 'T', '6'),
('A12.56604', 'Perencanaan Strategis Sistem Informasi', 2, 'T', '6'),
('A12.56606', 'Perencanaan Sumber Daya Perusahaan', 3, 'T', '6'),
('A12.56607', 'Bisnis Cerdas', 4, 'T', '5'),
('A12.56608', 'Perancangan dan Pengembangan Sistem Informasi', 4, 'T', '5'),
('A12.56701', 'Pendidikan Kewarganegaraan', 2, 'T', '7'),
('A12.56702', 'Metodologi Penelitian', 2, 'T', '7'),
('A12.56703', 'Manajemen Rantai Pasok', 3, 'T', '7'),
('A12.56704', 'Manajemen Proyek', 3, 'T', '7'),
('A12.56705', 'Proteksi Aset Informasi', 3, 'T', '7'),
('A12.56706', 'Kerja Praktek', 2, 'T', '7'),
('A12.56707', 'Aplikasi e-Bisnis', 4, 'T', '7'),
('A12.56708', 'Tata Kelola dan Audit Sistem Informasi', 4, 'T', '7'),
('A12.56801', 'Bahasa Indonesia', 2, 'T', '8'),
('A12.56802', 'Etika Profesi', 2, 'T', '8'),
('A12.56803', 'Bimbingan Karir', 2, 'T', '8'),
('A12.56804', 'Tugas Akhir', 6, 'T', '8'),
('A12.A12.56', 'Implementasi dan Pengujian Sistem', 2, 'T', '6');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `id` int(11) NOT NULL,
  `nim` char(14) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`id`, `nim`, `nama`, `email`, `foto`) VALUES
(28, 'A12.2016.02898', 'Iriana Erlina Permana', 'iriana@gmail.com', 'A12.2016.02898.jpg'),
(29, 'A12.2016.02900', 'Susana Listiyani', 'susana@gmail.com', 'A12.2016.02900.jpg'),
(31, 'A12.2016.02902', 'Indah Lestari', 'indah@gmail.com', 'A12.2016.02902.jpg'),
(32, 'A12.2017.03000', 'Maulana Ibrahim', 'maulana@yahoo.com', 'A12.2017.03000.jpg'),
(33, 'A12.2017.03045', 'Cantika Putri Brahmanto', 'cancan@yahoo.com', 'A12.2017.03045.jpg'),
(34, 'A12.2017.03170', 'Eko Prasetyanto', 'eek@yahoo.com', 'A12.2017.03170.jpg'),
(35, 'A12.2017.05041', 'Liliana Anggita Wardani', 'lili@yahoo.com', 'A12.2017.05041.jpg'),
(36, 'a12.2018.08900', 'Erna Purnamawati', 'erna@gmail.com', 'a12.2018.08900.jpg'),
(37, 'a12.2018.08905', 'Bambang Lukman Hakim', 'bambang@gmail.com', 'a12.2018.08905.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'mhs', '0357a7592c4734a8b1e12bc48e29e9e9', 'mhs'),
(3, 'dsn', 'da532bf806defa26fdbeee5dd2e0d68f', 'dsn'),
(4, 'tu', 'b6b4ce6df035dcfaa26f3bc32fb89e6a', 'tu'),
(5, 'llg', 'b8ae57911c26ed8313cd09a33f7f43f5', 'admin'),
(7, 'A12.2016.02898', 'f8057ac11cd7a20c6bf238c4bf239c1c', 'mhs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`npp`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambar_thumbnail`
--
ALTER TABLE `gambar_thumbnail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idJadwal`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`idKrs`);

--
-- Indexes for table `kultawar`
--
ALTER TABLE `kultawar`
  ADD PRIMARY KEY (`idkultawar`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`idmatkul`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gambar_thumbnail`
--
ALTER TABLE `gambar_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idJadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `idKrs` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kultawar`
--
ALTER TABLE `kultawar`
  MODIFY `idkultawar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
