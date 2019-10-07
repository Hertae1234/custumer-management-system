-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2019 at 01:44 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms-kbn`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_tiket`
--

CREATE TABLE `tbl_detail_tiket` (
  `id_detail_tiket` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `email_ajuan` varchar(100) NOT NULL DEFAULT '#',
  `alasan` text NOT NULL,
  `nama_institusi` varchar(100) NOT NULL DEFAULT '#',
  `subdomain_usul` varchar(100) NOT NULL DEFAULT '#',
  `disk_space_usul` varchar(50) NOT NULL DEFAULT '#',
  `penyerahan_akun` enum('EMAIL','SURAT') NOT NULL,
  `kepada` varchar(100) NOT NULL DEFAULT '#',
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_tiket`
--

INSERT INTO `tbl_detail_tiket` (`id_detail_tiket`, `id_tiket`, `email_ajuan`, `alasan`, `nama_institusi`, `subdomain_usul`, `disk_space_usul`, `penyerahan_akun`, `kepada`, `foto`) VALUES
(2, 2, '#', '#', '#', '#', '#', '', '#', '#'),
(3, 3, '#', '#', '#', '#', '#', '', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisi`
--

CREATE TABLE `tbl_divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_divisi`
--

INSERT INTO `tbl_divisi` (`id_divisi`, `divisi`, `date_created`, `date_updated`) VALUES
(8, 'Kawasan', '2019-10-03 02:10:27', '0000-00-00 00:00:00'),
(9, 'Manajemen Operasional', '2019-10-03 02:10:53', '0000-00-00 00:00:00'),
(10, 'Divisi keamanan', '2019-10-03 02:11:07', '0000-00-00 00:00:00'),
(11, 'SBU Air', '2019-10-03 02:11:13', '0000-00-00 00:00:00'),
(12, 'Investor', '2019-10-03 02:34:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fakultas`
--

CREATE TABLE `tbl_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`id_fakultas`, `fakultas`, `date_created`, `date_updated`) VALUES
(1, 'SAINS DAN TEKNOLOGI', '2019-04-15 08:54:35', '0000-00-00 00:00:00'),
(2, 'USHULUDDIN', '2019-04-15 08:56:37', '0000-00-00 00:00:00'),
(3, 'TARBIYAH DAN KEGURUAN', '2019-04-15 08:56:42', '0000-00-00 00:00:00'),
(4, 'SYARIAH DAN HUKUM', '2019-04-15 08:56:47', '0000-00-00 00:00:00'),
(5, 'DAKWAH DAN KOMUNIKASI', '2019-04-15 08:56:53', '0000-00-00 00:00:00'),
(6, 'ADAB DAN HUMANIORA', '2019-04-15 08:56:57', '0000-00-00 00:00:00'),
(7, 'PASCASARJANA', '2019-04-15 08:57:10', '0000-00-00 00:00:00'),
(8, 'PSIKOLOGI', '2019-04-15 08:57:16', '0000-00-00 00:00:00'),
(9, 'ILMU SOSIAL DAN ILMU POLITIK', '2019-04-15 08:57:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `jabatan`, `date_created`, `date_updated`) VALUES
(1, 'Kepala Divisi', '2019-04-06 01:17:33', '2019-09-23 22:52:35'),
(2, 'PIC', '2019-04-06 01:17:35', '2019-09-23 22:52:43'),
(3, 'Staff', '2019-09-23 22:52:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `id_fakultas`, `jurusan`, `date_created`, `date_updated`) VALUES
(1, 1, 'Teknik Informatika', '2019-04-15 08:54:48', '2019-04-16 07:05:29'),
(2, 1, 'Teknik Elektro', '2019-04-16 07:05:09', '0000-00-00 00:00:00'),
(3, 1, 'Agroteknologi', '2019-04-16 07:05:19', '0000-00-00 00:00:00'),
(4, 1, 'Matematika', '2019-04-16 07:05:39', '0000-00-00 00:00:00'),
(5, 1, 'Kimia', '2019-04-16 07:07:56', '0000-00-00 00:00:00'),
(6, 1, 'Fisika', '2019-04-16 07:09:08', '0000-00-00 00:00:00'),
(7, 1, 'Biologi', '2019-04-16 07:09:48', '0000-00-00 00:00:00'),
(9, 3, 'Manajemen Pendidikan Islam', '2019-04-16 07:13:13', '0000-00-00 00:00:00'),
(10, 3, 'Pendidikan Agama Islam', '2019-04-16 07:13:37', '0000-00-00 00:00:00'),
(11, 2, 'Aqidah dan Filsafat Islam', '2019-04-16 07:13:38', '0000-00-00 00:00:00'),
(12, 3, 'Pendidikan Bahasa Arab', '2019-04-16 07:13:58', '0000-00-00 00:00:00'),
(13, 2, 'Studi Agama-Agama', '2019-04-16 07:14:14', '0000-00-00 00:00:00'),
(14, 3, 'Pendidikan Bahasa Inggris', '2019-04-16 07:14:24', '0000-00-00 00:00:00'),
(15, 3, 'Pendidikan Matematika', '2019-04-16 07:14:41', '0000-00-00 00:00:00'),
(16, 2, 'Ilmu Al-Quran dan Tafsir', '2019-04-16 07:14:53', '0000-00-00 00:00:00'),
(17, 3, 'Pendidikan Biologi', '2019-04-16 07:15:13', '0000-00-00 00:00:00'),
(18, 3, 'Pendidikan Fisika', '2019-04-16 07:15:27', '0000-00-00 00:00:00'),
(19, 3, 'Pendidikan Kimia', '2019-04-16 07:15:43', '0000-00-00 00:00:00'),
(20, 2, 'Tasawuf dan Psikoterapi', '2019-04-16 07:15:45', '0000-00-00 00:00:00'),
(21, 2, 'Ilmu Hadits', '2019-04-16 07:16:09', '0000-00-00 00:00:00'),
(22, 3, 'Pendidikan Guru MI [PGMI]', '2019-04-16 07:16:18', '0000-00-00 00:00:00'),
(23, 3, 'Pendidikan Islam Anak Usia Dini', '2019-04-16 07:16:41', '0000-00-00 00:00:00'),
(24, 6, 'Sejarah Peradaban Islam', '2019-04-16 07:17:01', '0000-00-00 00:00:00'),
(25, 6, 'Bahasa Sastra Arab', '2019-04-16 07:17:20', '0000-00-00 00:00:00'),
(26, 6, 'Sastra Inggris', '2019-04-16 07:17:38', '0000-00-00 00:00:00'),
(27, 4, 'Hukum Keluarga (Ahwal Al-syakhsiyah)', '2019-04-16 07:17:54', '0000-00-00 00:00:00'),
(28, 8, 'Psikologi', '2019-04-16 07:17:57', '0000-00-00 00:00:00'),
(29, 9, 'Administrasi Publik', '2019-04-16 07:18:17', '0000-00-00 00:00:00'),
(30, 9, 'Manajemen', '2019-04-16 07:18:31', '0000-00-00 00:00:00'),
(31, 4, 'Hukum Ekonomi syari\'ah (Muamalah)', '2019-04-16 07:18:42', '0000-00-00 00:00:00'),
(32, 9, 'Sosiologi', '2019-04-16 07:18:46', '0000-00-00 00:00:00'),
(33, 9, 'Ilmu Politik', '2019-04-16 07:18:59', '0000-00-00 00:00:00'),
(34, 4, 'Hukum Tata Negara (Siyasah)', '2019-04-16 07:19:12', '0000-00-00 00:00:00'),
(35, 5, 'Bimbingan Konseling Islam', '2019-04-16 07:20:08', '0000-00-00 00:00:00'),
(36, 4, 'Perbandingan Madzhab dan Hukum', '2019-04-16 07:20:10', '0000-00-00 00:00:00'),
(37, 5, 'Komunikasi Penyiaran Islam', '2019-04-16 07:20:28', '0000-00-00 00:00:00'),
(38, 5, 'Manajemen Dakwah', '2019-04-16 07:20:45', '0000-00-00 00:00:00'),
(39, 4, 'Manajemen Keuangan Syari\'ah', '2019-04-16 07:20:45', '0000-00-00 00:00:00'),
(40, 4, 'Hukum Pidana Islam', '2019-04-16 07:21:09', '0000-00-00 00:00:00'),
(41, 5, 'Pengembangan Masyarakat Islam', '2019-04-16 07:21:09', '0000-00-00 00:00:00'),
(42, 5, 'Ilmu Komunikasi Humas', '2019-04-16 07:21:33', '0000-00-00 00:00:00'),
(43, 4, 'Akuntansi Syari\'ah ', '2019-04-16 07:21:36', '0000-00-00 00:00:00'),
(44, 5, 'Ilmu Komunikasi Jurnalistik', '2019-04-16 07:21:56', '0000-00-00 00:00:00'),
(45, 4, 'Ekonomi Syari\'ah', '2019-04-16 07:22:01', '0000-00-00 00:00:00'),
(46, 7, 'Studi Hukum Islam', '2019-04-16 07:22:42', '0000-00-00 00:00:00'),
(47, 7, 'Studi Pendidikan Islam', '2019-04-16 07:23:05', '0000-00-00 00:00:00'),
(48, 7, 'Studi Agama Agama', '2019-04-16 07:23:40', '0000-00-00 00:00:00'),
(49, 7, 'Studi Ilmu Al-Qur\'an dan Tafsir', '2019-04-16 07:24:13', '0000-00-00 00:00:00'),
(50, 7, 'Studi Ilmu Hadits', '2019-04-16 07:24:38', '0000-00-00 00:00:00'),
(51, 7, 'Studi Manajemen Pendidikan Islam', '2019-04-16 07:25:10', '0000-00-00 00:00:00'),
(52, 7, 'Studi Pendidikan Bahasa Arab', '2019-04-16 07:25:29', '0000-00-00 00:00:00'),
(53, 7, 'Studi Pendidikan Agama Islam', '2019-04-16 07:25:51', '0000-00-00 00:00:00'),
(54, 7, 'Studi Ilmu Hukum', '2019-04-16 07:26:09', '0000-00-00 00:00:00'),
(55, 7, 'Studi Ekonomi Syari\'ah', '2019-04-16 07:26:43', '0000-00-00 00:00:00'),
(56, 7, 'Studi Hukum Keluarga', '2019-04-16 07:27:07', '0000-00-00 00:00:00'),
(57, 7, 'Studi Hukum Ekonomi Syari\'ah', '2019-04-16 07:27:34', '0000-00-00 00:00:00'),
(58, 7, 'Studi Komunikasi Penyiaran Islam', '2019-04-16 07:28:06', '0000-00-00 00:00:00'),
(59, 7, 'Studi Sejarah Peradaban Islam', '2019-04-16 07:28:28', '0000-00-00 00:00:00'),
(60, 7, 'Studi Agama Agama', '2019-04-16 07:28:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`, `date_created`, `date_updated`) VALUES
(3, 'Kawasan', '2019-10-03 01:55:50', '2019-10-03 03:04:36'),
(4, 'Manajemen Operasional', '2019-10-03 01:55:58', '2019-10-03 03:31:40'),
(5, 'Divisi Keamanan', '2019-10-03 02:12:03', '2019-10-03 02:12:22'),
(6, 'SBU Air', '2019-10-03 02:12:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN') DEFAULT NULL,
  `alamat` text,
  `kontak` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id_mahasiswa`, `id_users`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `kontak`, `email`, `id_fakultas`, `id_jurusan`, `date_created`, `date_updated`) VALUES
(1, 14, '1147050046', 'Diana Nurmalasari', 'PEREMPUAN', 'bandung', '085798412326', 'diananurmalasari13@gmail.com', 1, 1, '2019-04-18 04:32:08', '0000-00-00 00:00:00'),
(2, 15, '1167050120', 'Piscal Pratama Putra', 'LAKI-LAKI', 'cicalengka', '08970394590', 'piscalpratama@gmail.com', 1, 1, '2019-04-22 05:18:20', '0000-00-00 00:00:00'),
(3, 16, '1167050164', 'wine widiawaty', 'PEREMPUAN', 'CIMAHI', '087823654799', 'widiawatywine@gmail.com', 1, 1, '2019-04-30 03:55:32', '0000-00-00 00:00:00'),
(4, 17, '1177030006', 'Arifin Wiguna', 'LAKI-LAKI', 'kp.pos wetan RT.03 RW.14 Desa.Kertamulya Kec.Padalarang Kab.Bandung Barat', '082115456147', 'arifin.wiguna10@gmail.com', 1, 6, '2019-05-04 09:59:04', '0000-00-00 00:00:00'),
(5, 18, '1172020082', 'Firgiawan Rangga Saputra', 'LAKI-LAKI', 'Gg saad 2, rt 04/rw 04, kelurahan binong jati, Kec Batununggal, Kota Bandung', '083817317238', 'Firgiawanrangga123@gmail.com', 3, 10, '2019-05-06 10:05:44', '0000-00-00 00:00:00'),
(6, 19, '1147050132', 'Raka Fajar', 'LAKI-LAKI', 'Pasir Jati', '088222236128', 'rakafajar18@gmail.com', 1, 1, '2019-07-24 10:18:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_respon_tiket`
--

CREATE TABLE `tbl_respon_tiket` (
  `id_respon_tiket` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `email_akhir` varchar(100) NOT NULL DEFAULT '#',
  `tindakan` text NOT NULL,
  `subdomain_akhir` varchar(100) NOT NULL DEFAULT '#',
  `disk_space_akhir` varchar(50) NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_respon_tiket`
--

INSERT INTO `tbl_respon_tiket` (`id_respon_tiket`, `id_tiket`, `email_akhir`, `tindakan`, `subdomain_akhir`, `disk_space_akhir`) VALUES
(2, 2, '#', '#', '#', '#'),
(3, 3, '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id_staff` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `nip` int(35) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN') NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id_staff`, `id_users`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `email`, `kontak`, `id_jabatan`, `id_divisi`, `date_created`, `date_updated`) VALUES
(3, 4, 0, 'PIC Divisi Perangkat Lunak', 'LAKI-LAKI', 'Jakarta', 'perangkatlunak@kbn.co.id', '082129916997', 2, 2, '2019-09-19 07:33:39', '2019-09-23 22:53:19'),
(4, 5, 0, 'PIC Divisi Perangkat Keras', 'PEREMPUAN', 'Jakarta', 'perangkatkeras@kbn.co.id', '082129916997', 2, 1, '2019-09-19 08:14:02', '2019-09-23 22:53:10'),
(5, 6, 0, 'Manajemen Operasional', 'LAKI-LAKI', 'Unit Kerja', 'manajemenoperasional@gmail.com', '1234567890', 2, 9, '2019-10-03 02:25:24', '2019-10-03 02:35:44'),
(6, 7, 0, 'PT. VISIONLAND INDONESIA', 'LAKI-LAKI', 'Kawasan Berikat Nusantara Jl.Ternate No.05A RT 2/RW 1 Cilincing kec. Cakung Kota Jakarta Utara Daerah Ibukota Jakarta 14140', 'sale@visionland.com', '0214404940', 3, 12, '2019-10-03 02:34:08', '2019-10-03 02:34:52'),
(7, 8, 0, 'Kawasan', 'LAKI-LAKI', 'GM Cakung', 'kawasan@gmail.com', '1234567890', 2, 8, '2019-10-03 04:13:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subkategori`
--

CREATE TABLE `tbl_subkategori` (
  `id_subkategori` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `subkategori` varchar(200) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subkategori`
--

INSERT INTO `tbl_subkategori` (`id_subkategori`, `id_kategori`, `subkategori`, `id_divisi`, `date_created`, `date_updated`) VALUES
(10, 3, 'Saluran', 8, '2019-10-03 02:13:13', '0000-00-00 00:00:00'),
(11, 3, 'Gedung', 8, '2019-10-03 02:13:32', '0000-00-00 00:00:00'),
(12, 3, 'Penerangan', 8, '2019-10-03 02:13:44', '0000-00-00 00:00:00'),
(13, 3, 'Listrik', 8, '2019-10-03 02:14:06', '0000-00-00 00:00:00'),
(14, 3, 'Jaringan', 8, '2019-10-03 02:14:16', '0000-00-00 00:00:00'),
(15, 3, 'Telepon', 8, '2019-10-03 02:14:36', '0000-00-00 00:00:00'),
(16, 5, 'Mobil AJP', 10, '2019-10-03 02:15:00', '2019-10-03 02:15:27'),
(17, 5, 'Asongan', 10, '2019-10-03 02:15:10', '2019-10-03 02:15:36'),
(18, 5, 'Keamanan', 10, '2019-10-03 02:15:49', '0000-00-00 00:00:00'),
(19, 4, 'Kebersihan', 9, '2019-10-03 02:16:00', '0000-00-00 00:00:00'),
(20, 6, 'Air', 11, '2019-10-03 02:16:16', '2019-10-04 05:48:41'),
(21, 3, 'Jalan', 8, '2019-10-04 05:49:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `id_tiket` int(11) NOT NULL,
  `kode_tiket` varchar(20) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_subkategori` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pengaju` int(11) NOT NULL,
  `id_staff` int(11) DEFAULT NULL,
  `subjek_masalah` varchar(255) NOT NULL,
  `detail_masalah` text NOT NULL,
  `prioritas` int(2) NOT NULL,
  `status` enum('0','1','2','3','4','5','6','7') NOT NULL,
  `progres` int(11) NOT NULL DEFAULT '0',
  `verifikasi` enum('Sudah','Belum') NOT NULL DEFAULT 'Belum',
  `date_solved` datetime NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`id_tiket`, `kode_tiket`, `id_kategori`, `id_subkategori`, `tanggal`, `id_pengaju`, `id_staff`, `subjek_masalah`, `detail_masalah`, `prioritas`, `status`, `progres`, `verifikasi`, `date_solved`, `date_created`, `date_updated`) VALUES
(2, '0002/KWS/10/2019', 3, 12, '2019-10-06', 7, 8, 'Listrik Mati', 'Listrik Mati', 3, '3', 0, 'Belum', '0000-00-00 00:00:00', '2019-10-06 15:50:46', '2019-10-06 23:07:42'),
(3, '0003/NONKWS/10/2019', 4, 19, '2019-10-07', 7, 6, 'Kotor', 'Gedung A', 2, '3', 0, 'Belum', '0000-00-00 00:00:00', '2019-10-06 23:41:38', '2019-10-06 23:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracking_tiket`
--

CREATE TABLE `tbl_tracking_tiket` (
  `id_tracking_tiket` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tracking_tiket`
--

INSERT INTO `tbl_tracking_tiket` (`id_tracking_tiket`, `id_tiket`, `status`, `deskripsi`, `date_created`, `date_updated`) VALUES
(2, 2, 'Tiket dibuat dan diajukan', '-', '2019-10-06 15:50:46', '2019-10-06 15:50:46'),
(3, 2, 'Tiket diberikan kepada staff bersangkutan', '-', '2019-10-06 23:05:30', '2019-10-06 23:05:30'),
(4, 2, 'Tiket diterima', 'Oleh Staff Divisi Kawasan', '2019-10-06 23:07:42', '2019-10-06 23:07:42'),
(5, 3, 'Tiket dibuat dan diajukan', '-', '2019-10-06 23:41:38', '2019-10-06 23:41:38'),
(6, 3, 'Tiket diberikan kepada staff bersangkutan', '-', '2019-10-06 23:42:08', '2019-10-06 23:42:08'),
(7, 3, 'Tiket diterima', 'Oleh Staff Divisi Manajemen Operasional', '2019-10-06 23:42:56', '2019-10-06 23:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` enum('SUPERADMIN','ADMIN','STAFF','USER') NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `username`, `password`, `level`, `date_created`, `date_updated`) VALUES
(1, 'superadmin', '1e0d5d98e358f0fb84716b91dea68b24', 'SUPERADMIN', '2019-04-06 01:15:34', '2019-09-11 02:28:57'),
(4, 'perangkatlunak', '4ac28ffbab9badadd0c2243409e4a639', 'STAFF', '2019-09-19 07:33:39', '2019-09-23 22:53:19'),
(5, 'perangkatkeras', '47f2022302b3ba6bde0e92e6c4b95145', 'STAFF', '2019-09-19 08:14:02', '2019-09-23 22:53:10'),
(6, 'manajemenoperasional@gmail.com', 'd3bc930d6b4956d67d35899786b36290', 'STAFF', '2019-10-03 02:25:23', '2019-10-03 04:21:45'),
(7, 'sale@visionland.com', 'e3d2075f094342c33dfa36a1837159b4', 'USER', '2019-10-03 02:34:08', '2019-10-03 02:34:52'),
(8, 'kawasan@gmail.com', '41c1db3bf9ad99f0a941b89162997147', 'STAFF', '2019-10-03 04:13:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_fakultas_jurusan`
-- (See below for the actual view)
--
CREATE TABLE `view_fakultas_jurusan` (
`id_fakultas` int(11)
,`fakultas` varchar(200)
,`date_created` timestamp
,`date_updated` timestamp
,`id_jurusan` int(11)
,`jurusan` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_subkategori`
-- (See below for the actual view)
--
CREATE TABLE `view_subkategori` (
`id_subkategori` int(11)
,`id_kategori` int(11)
,`subkategori` varchar(200)
,`id_divisi` int(11)
,`date_created` timestamp
,`date_updated` timestamp
,`kategori` varchar(200)
,`divisi` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tiket`
-- (See below for the actual view)
--
CREATE TABLE `view_tiket` (
`verifikasi` enum('Sudah','Belum')
,`id_tiket` int(11)
,`kode_tiket` varchar(20)
,`id_subkategori` int(11)
,`id_staff` int(11)
,`subkategori` varchar(200)
,`id_divisi` int(11)
,`divisi` varchar(200)
,`id_kategori` int(11)
,`kategori` varchar(200)
,`id_pengaju` int(11)
,`subjek_masalah` varchar(255)
,`detail_masalah` text
,`status` enum('0','1','2','3','4','5','6','7')
,`prioritas` int(2)
,`progres` int(11)
,`email_ajuan` varchar(100)
,`alasan` text
,`nama_institusi` varchar(100)
,`subdomain_usul` varchar(100)
,`disk_space_usul` varchar(50)
,`penyerahan_akun` enum('EMAIL','SURAT')
,`kepada` varchar(100)
,`foto` varchar(200)
,`date_solved` datetime
,`date_created` timestamp
,`date_updated` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users_mahasiswa`
-- (See below for the actual view)
--
CREATE TABLE `view_users_mahasiswa` (
`id_users` int(11)
,`username` varchar(200)
,`password` varchar(200)
,`level` enum('SUPERADMIN','ADMIN','STAFF','USER')
,`date_created` timestamp
,`date_updated` timestamp
,`nim` varchar(15)
,`nama` varchar(200)
,`jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN')
,`alamat` text
,`kontak` varchar(20)
,`email` varchar(100)
,`jurusan` varchar(200)
,`fakultas` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users_staff`
-- (See below for the actual view)
--
CREATE TABLE `view_users_staff` (
`id_users` int(11)
,`username` varchar(200)
,`password` varchar(200)
,`level` enum('SUPERADMIN','ADMIN','STAFF','USER')
,`date_created` timestamp
,`date_updated` timestamp
,`nama` varchar(200)
,`jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN')
,`alamat` text
,`kontak` varchar(20)
,`email` varchar(100)
,`jabatan` varchar(200)
,`divisi` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure for view `view_fakultas_jurusan`
--
DROP TABLE IF EXISTS `view_fakultas_jurusan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fakultas_jurusan`  AS  select `a`.`id_fakultas` AS `id_fakultas`,`a`.`fakultas` AS `fakultas`,`a`.`date_created` AS `date_created`,`a`.`date_updated` AS `date_updated`,`b`.`id_jurusan` AS `id_jurusan`,`b`.`jurusan` AS `jurusan` from (`tbl_fakultas` `a` join `tbl_jurusan` `b`) where (`a`.`id_fakultas` = `b`.`id_fakultas`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_subkategori`
--
DROP TABLE IF EXISTS `view_subkategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_subkategori`  AS  select `a`.`id_subkategori` AS `id_subkategori`,`a`.`id_kategori` AS `id_kategori`,`a`.`subkategori` AS `subkategori`,`a`.`id_divisi` AS `id_divisi`,`a`.`date_created` AS `date_created`,`a`.`date_updated` AS `date_updated`,`b`.`kategori` AS `kategori`,`c`.`divisi` AS `divisi` from ((`tbl_subkategori` `a` join `tbl_kategori` `b`) join `tbl_divisi` `c`) where ((`a`.`id_kategori` = `b`.`id_kategori`) and (`a`.`id_divisi` = `c`.`id_divisi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_tiket`
--
DROP TABLE IF EXISTS `view_tiket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tiket`  AS  select `a`.`verifikasi` AS `verifikasi`,`a`.`id_tiket` AS `id_tiket`,`a`.`kode_tiket` AS `kode_tiket`,`a`.`id_subkategori` AS `id_subkategori`,`a`.`id_staff` AS `id_staff`,`b`.`subkategori` AS `subkategori`,`b`.`id_divisi` AS `id_divisi`,`e`.`divisi` AS `divisi`,`b`.`id_kategori` AS `id_kategori`,`c`.`kategori` AS `kategori`,`a`.`id_pengaju` AS `id_pengaju`,`a`.`subjek_masalah` AS `subjek_masalah`,`a`.`detail_masalah` AS `detail_masalah`,`a`.`status` AS `status`,`a`.`prioritas` AS `prioritas`,`a`.`progres` AS `progres`,`d`.`email_ajuan` AS `email_ajuan`,`d`.`alasan` AS `alasan`,`d`.`nama_institusi` AS `nama_institusi`,`d`.`subdomain_usul` AS `subdomain_usul`,`d`.`disk_space_usul` AS `disk_space_usul`,`d`.`penyerahan_akun` AS `penyerahan_akun`,`d`.`kepada` AS `kepada`,`d`.`foto` AS `foto`,`a`.`date_solved` AS `date_solved`,`a`.`date_created` AS `date_created`,`a`.`date_updated` AS `date_updated` from ((((`tbl_tiket` `a` join `tbl_subkategori` `b`) join `tbl_kategori` `c`) join `tbl_detail_tiket` `d`) join `tbl_divisi` `e`) where ((`a`.`id_subkategori` = `b`.`id_subkategori`) and (`b`.`id_kategori` = `c`.`id_kategori`) and (`a`.`id_tiket` = `d`.`id_tiket`) and (`b`.`id_divisi` = `e`.`id_divisi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_users_mahasiswa`
--
DROP TABLE IF EXISTS `view_users_mahasiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users_mahasiswa`  AS  select `a`.`id_users` AS `id_users`,`a`.`username` AS `username`,`a`.`password` AS `password`,`a`.`level` AS `level`,`a`.`date_created` AS `date_created`,`a`.`date_updated` AS `date_updated`,`b`.`nim` AS `nim`,`b`.`nama` AS `nama`,`b`.`jenis_kelamin` AS `jenis_kelamin`,`b`.`alamat` AS `alamat`,`b`.`kontak` AS `kontak`,`b`.`email` AS `email`,`c`.`jurusan` AS `jurusan`,`c`.`fakultas` AS `fakultas` from ((`tbl_users` `a` join `tbl_mahasiswa` `b`) join `view_fakultas_jurusan` `c`) where ((`a`.`id_users` = `b`.`id_users`) and (`b`.`id_jurusan` = `c`.`id_jurusan`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_users_staff`
--
DROP TABLE IF EXISTS `view_users_staff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users_staff`  AS  select `a`.`id_users` AS `id_users`,`a`.`username` AS `username`,`a`.`password` AS `password`,`a`.`level` AS `level`,`a`.`date_created` AS `date_created`,`a`.`date_updated` AS `date_updated`,`b`.`nama` AS `nama`,`b`.`jenis_kelamin` AS `jenis_kelamin`,`b`.`alamat` AS `alamat`,`b`.`kontak` AS `kontak`,`b`.`email` AS `email`,`c`.`jabatan` AS `jabatan`,`d`.`divisi` AS `divisi` from (((`tbl_users` `a` join `tbl_staff` `b`) join `tbl_jabatan` `c`) join `tbl_divisi` `d`) where ((`a`.`id_users` = `b`.`id_users`) and (`b`.`id_jabatan` = `c`.`id_jabatan`) and (`b`.`id_divisi` = `d`.`id_divisi`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_detail_tiket`
--
ALTER TABLE `tbl_detail_tiket`
  ADD PRIMARY KEY (`id_detail_tiket`),
  ADD KEY `id_tiket` (`id_tiket`);

--
-- Indexes for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tbl_respon_tiket`
--
ALTER TABLE `tbl_respon_tiket`
  ADD PRIMARY KEY (`id_respon_tiket`),
  ADD UNIQUE KEY `fk_respon_tiket` (`id_tiket`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `tbl_subkategori`
--
ALTER TABLE `tbl_subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `tbl_tracking_tiket`
--
ALTER TABLE `tbl_tracking_tiket`
  ADD PRIMARY KEY (`id_tracking_tiket`),
  ADD KEY `fk_tracking_tiket` (`id_tiket`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_tiket`
--
ALTER TABLE `tbl_detail_tiket`
  MODIFY `id_detail_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_respon_tiket`
--
ALTER TABLE `tbl_respon_tiket`
  MODIFY `id_respon_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_subkategori`
--
ALTER TABLE `tbl_subkategori`
  MODIFY `id_subkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tracking_tiket`
--
ALTER TABLE `tbl_tracking_tiket`
  MODIFY `id_tracking_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
