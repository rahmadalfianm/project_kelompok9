-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2020 pada 11.32
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_prakerin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan`
--

CREATE TABLE `bulan` (
  `id_bln` int(10) NOT NULL,
  `nama_bln` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bulan`
--

INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan`
--

CREATE TABLE `catatan` (
  `id_cat` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_bln` int(10) NOT NULL,
  `id_hri` int(10) NOT NULL,
  `id_tgl` int(10) NOT NULL,
  `isi_cat` longtext NOT NULL,
  `status_cat` enum('Menunggu','Dikonfirmasi','Ditolak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `catatan`
--

INSERT INTO `catatan` (`id_cat`, `id_user`, `id_bln`, `id_hri`, `id_tgl`, `isi_cat`, `status_cat`) VALUES
(31, 2, 1, 4, 14, 'Fixed : Navbar link, bug absen pulang, empty input data', 'Dikonfirmasi'),
(32, 4, 1, 4, 14, 'Tes fixes bug empty note', 'Dikonfirmasi'),
(33, 4, 1, 4, 14, 'Tidak ada kegiatan, rencannya mau beresin kabel tapi wktunya ngga memungkinkan jadi di tunda.dikasih minum es kelapa muda. :D', 'Dikonfirmasi'),
(34, 4, 1, 5, 15, 'Identifikasi pc yg tidak bisa masuk bios, ternyata masalah di power supplynya. Setelah di ganti power supplynya baru bisa masuk bios kemudian di install ulang paki windows 7', 'Dikonfirmasi'),
(35, 4, 1, 5, 15, 'Identifikasi pc yg tidak bisa masuk bios, ternyata masalah di power supplynya. Setelah di ganti power supplynya baru bisa masuk bios kemudian di install ulang paki windows 7', 'Dikonfirmasi'),
(44, 3, 1, 7, 17, 'Semoga lebih baik :D', 'Menunggu'),
(43, 2, 1, 7, 17, 'Tes ya', 'Dikonfirmasi'),
(39, 4, 1, 7, 17, 'Mysqli fix bug real escape string', 'Dikonfirmasi'),
(40, 4, 1, 7, 17, 'Testing 2nd Migration to MySQLi', 'Menunggu'),
(41, 2, 1, 7, 17, 'Testing 2nd Migrations To MySQLi', 'Dikonfirmasi'),
(45, 4, 1, 2, 19, 'Senin bersihin Ram trus install ulang', ''),
(46, 5, 2, 5, 19, 'Hemmm tes aja deh :D Hahaha :*', 'Dikonfirmasi'),
(47, 3, 2, 5, 19, 'Terimakasih Untuk hari ini :D\\r\\nTerimakasih atas semua kebaikan ini :D', 'Menunggu'),
(48, 3, 2, 5, 19, 'Tes fix Bug :D\r\nSemangaaatt :D \'\'\" <- tesss', 'Menunggu'),
(49, 2, 9, 6, 14, 's', 'Dikonfirmasi'),
(50, 8, 9, 6, 14, 'Administrasi hasil penjualan', 'Dikonfirmasi'),
(51, 10, 9, 6, 14, 'Service Printer', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_absen`
--

CREATE TABLE `data_absen` (
  `id_absen` int(11) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `id_bln` int(10) NOT NULL,
  `id_hri` int(10) NOT NULL,
  `id_tgl` int(10) NOT NULL,
  `jam_msk` varchar(50) NOT NULL,
  `st_jam_msk` enum('Menunggu','Dikonfirmasi','Ditolak') NOT NULL,
  `jam_klr` varchar(50) NOT NULL,
  `st_jam_klr` enum('Belum Absen','Menunggu','Dikonfirmasi','Ditolak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_absen`
--

INSERT INTO `data_absen` (`id_absen`, `id_user`, `id_bln`, `id_hri`, `id_tgl`, `jam_msk`, `st_jam_msk`, `jam_klr`, `st_jam_klr`) VALUES
(48, '4', 1, 5, 15, '12.58 WIB', 'Dikonfirmasi', '16.25 WIB', 'Dikonfirmasi'),
(49, '4', 1, 6, 16, '09.37 WIB', 'Dikonfirmasi', '', 'Belum Absen'),
(50, '2', 1, 6, 16, '15.41 WIB', 'Dikonfirmasi', '', 'Belum Absen'),
(51, '3', 1, 7, 17, '06.43 WIB', 'Ditolak', '', 'Belum Absen'),
(53, '4', 1, 7, 17, '18.00 WIB', 'Ditolak', '18.01 WIB', 'Ditolak'),
(54, '2', 1, 7, 17, '18.09 WIB', 'Ditolak', '18.09 WIB', 'Dikonfirmasi'),
(56, '4', 1, 1, 18, '07.16 WIB', 'Ditolak', '12.46 WIB', 'Dikonfirmasi'),
(58, '4', 1, 3, 20, '07.20 WIB', 'Ditolak', '07.20 WIB', 'Dikonfirmasi'),
(59, '4', 1, 4, 21, '07.14 WIB', 'Dikonfirmasi', '', 'Belum Absen'),
(60, '2', 1, 2, 26, '10.01 WIB', 'Dikonfirmasi', '10.01 WIB', 'Ditolak'),
(61, '2', 2, 3, 10, '16.58 WIB', 'Dikonfirmasi', '16.59 WIB', 'Dikonfirmasi'),
(66, '2', 9, 5, 13, '16.26 WIB', 'Dikonfirmasi', '16.26 WIB', 'Dikonfirmasi'),
(67, '8', 9, 6, 14, '14.27 WIB', 'Dikonfirmasi', '14.27 WIB', 'Dikonfirmasi'),
(68, '10', 9, 6, 14, '14.30 WIB', 'Dikonfirmasi', '14.30 WIB', 'Dikonfirmasi'),
(69, '9', 9, 6, 14, '14.30 WIB', 'Ditolak', '14.30 WIB', 'Ditolak'),
(70, '8', 9, 3, 18, '20.10 WIB', 'Ditolak', '20.10 WIB', 'Ditolak'),
(71, '2', 4, 4, 23, '16.10 WIB', 'Dikonfirmasi', '16.25 WIB', 'Dikonfirmasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pb`
--

CREATE TABLE `detail_pb` (
  `id_user` int(10) NOT NULL,
  `name_user` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pb`
--

INSERT INTO `detail_pb` (`id_user`, `name_user`) VALUES
(3, 'Irfan'),
(8, 'Helmi'),
(1, 'Fauzi'),
(7, 'Haekal Nagib');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_user`
--

CREATE TABLE `detail_user` (
  `id_user` int(10) NOT NULL,
  `nis_user` int(25) NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `sklh_user` varchar(255) NOT NULL,
  `jk_user` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_user`
--

INSERT INTO `detail_user` (`id_user`, `nis_user`, `name_user`, `sklh_user`, `jk_user`) VALUES
(2, 123141, 'Achmad Rheza', 'Malang', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id_hri` int(10) NOT NULL,
  `nama_hri` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum\'at'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggal`
--

CREATE TABLE `tanggal` (
  `id_tgl` int(10) NOT NULL,
  `nama_tgl` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggal`
--

INSERT INTO `tanggal` (`id_tgl`, `nama_tgl`) VALUES
(1, '01'),
(2, '02'),
(3, '03'),
(4, '04'),
(5, '05'),
(6, '06'),
(7, '07'),
(8, '08'),
(9, '09'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  `level_user` enum('sw','pb') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`, `level_user`) VALUES
(1, 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'pb'),
(2, 'achmadreza57@gmail.com', '5e19bd16e61e85ea4a008b6b33148e7e22ff7516', 'sw');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id_bln`);

--
-- Indeks untuk tabel `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indeks untuk tabel `data_absen`
--
ALTER TABLE `data_absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `detail_pb`
--
ALTER TABLE `detail_pb`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`id_user`,`nis_user`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hri`);

--
-- Indeks untuk tabel `tanggal`
--
ALTER TABLE `tanggal`
  ADD PRIMARY KEY (`id_tgl`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`email_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id_bln` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id_cat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `data_absen`
--
ALTER TABLE `data_absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tanggal`
--
ALTER TABLE `tanggal`
  MODIFY `id_tgl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
