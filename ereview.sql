-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2020 at 11:37 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ereview`
--

-- --------------------------------------------------------

--
-- Table structure for table `asdasd`
--

DROP TABLE IF EXISTS `asdasd`;
CREATE TABLE IF NOT EXISTS `asdasd` (
  `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `amount` int(128) NOT NULL,
  `bukti` int(128) NOT NULL,
  `pwd` varchar(128) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `id_assignment` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL,
  `id_reviewer` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `tgl_assignment` date DEFAULT NULL,
  `tgl_deadline` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_assignment` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_assignment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignment2`
--

DROP TABLE IF EXISTS `assignment2`;
CREATE TABLE IF NOT EXISTS `assignment2` (
  `id_assignment` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL,
  `id_reviewer` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `review_location` varchar(500) DEFAULT NULL,
  `tgl_assignment` date DEFAULT NULL,
  `tgl_deadline` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT current_timestamp(),
  `sts_assignment` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_assignment`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment2`
--

INSERT INTO `assignment2` (`id_assignment`, `id_task`, `id_reviewer`, `status`, `review_location`, `tgl_assignment`, `tgl_deadline`, `date_created`, `date_updated`, `sts_assignment`) VALUES
(1, 1, 2, 4, '1589387690_Neils_Bohr_Reading_Strategies_for_TOEFL_Test.pdf', '2020-05-13', '2020-05-23', '2020-05-13 16:33:26', '2020-05-13 16:40:29', 1),
(2, 3, 2, 4, '1589388244_Neils_Bohr_Pointer_dan_Struct.pdf', '2020-05-13', '2020-05-23', '2020-05-13 16:43:47', '2020-05-13 16:44:21', 1),
(3, 7, 1, 3, '1589388839_Sakisre_Lorem_Media:_Pemicu_Prasangka_terhadap_Perempuan_Bercadar.pdf', '2020-05-13', '2020-06-01', '2020-05-13 16:53:26', '2020-05-13 16:56:20', 1),
(4, 12, 1, 0, NULL, NULL, NULL, '2020-05-19 03:55:09', '2020-05-19 03:55:09', 1),
(5, 12, 2, 0, NULL, NULL, NULL, '2020-05-19 03:55:09', '2020-05-19 03:55:09', 1),
(6, 12, 3, 4, '1589860828_Wangi_Lestari_Persepsi_Masyarakat_terhadap_Penyebab_Kebakaran_Hutan.pdf', '2020-05-19', '2020-06-12', '2020-05-19 03:55:09', '2020-05-19 04:05:01', 1),
(7, 9, 3, -1, NULL, NULL, NULL, '2020-05-19 03:56:20', '2020-05-19 03:56:20', 1),
(8, 8, 3, 0, NULL, NULL, NULL, '2020-05-19 03:56:28', '2020-05-19 03:56:28', 1),
(9, 13, 1, 0, NULL, NULL, NULL, '2020-05-19 05:00:29', '2020-05-19 05:00:29', 1),
(10, 13, 2, 0, NULL, NULL, NULL, '2020-05-19 05:00:29', '2020-05-19 05:00:29', 1),
(11, 13, 3, 4, '1589864694_Wangi_Lestary_Tingkat_Kesuburan_Perairan_Teluk_Banten_Berdasarkan_Nilai_Parameter_Kimia.pdf', '2020-05-19', '2020-06-02', '2020-05-19 05:00:29', '2020-05-19 05:09:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dana`
--

DROP TABLE IF EXISTS `dana`;
CREATE TABLE IF NOT EXISTS `dana` (
  `id_dana` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` tinyint(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `amount` float NOT NULL,
  `bukti` varchar(500) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_dana` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_dana`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dana`
--

INSERT INTO `dana` (`id_dana`, `tipe`, `id_user`, `amount`, `bukti`, `date_created`, `date_updated`, `sts_dana`) VALUES
(1, 0, 2, 2000000, 'buktipayment_1589387905_Yanto_Xiaoqing.png', '2020-05-13 16:38:25', NULL, 1),
(2, 0, 2, 2000000, 'buktipayment_1589387982_Yanto_Xiaoqing.png', '2020-05-13 16:39:42', NULL, -1),
(3, 0, 2, 2000000, 'buktipayment_1589387984_Yanto_Xiaoqing.png', '2020-05-13 16:39:44', NULL, -1),
(4, 0, 2, 500000, 'buktipayment_1589388305_Yanto_Xiaoqing.png', '2020-05-13 16:45:05', NULL, 1),
(5, 0, 4, 2500000, 'buktipayment_1589388956_J_J__Thompson.png', '2020-05-13 16:55:56', NULL, 1),
(6, 0, 7, 4000000, 'buktipayment_1589860993_Salim_Minzhe.png', '2020-05-19 04:03:13', NULL, 1),
(7, 0, 7, 2000000, 'buktipayment_1589864893_Salim_Minzhe.png', '2020-05-19 05:08:13', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
CREATE TABLE IF NOT EXISTS `editor` (
  `id_editor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_editor` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_editor`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id_editor`, `id_user`, `balance`, `date_created`, `date_updated`, `sts_editor`) VALUES
(1, 2, 500000, '2020-05-13 15:32:25', '2020-05-13 15:32:25', 1),
(2, 4, 600000, '2020-05-13 16:03:31', '2020-05-13 16:03:31', 1),
(3, 6, 0, '2020-05-16 07:22:05', '2020-05-16 07:22:05', 1),
(4, 7, 600000, '2020-05-19 03:27:52', '2020-05-19 03:27:52', 1),
(5, 8, 0, '2020-05-19 03:52:54', '2020-05-19 03:52:54', 1),
(6, 10, 0, '2020-05-19 04:43:42', '2020-05-19 04:43:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grup`
--

DROP TABLE IF EXISTS `grup`;
CREATE TABLE IF NOT EXISTS `grup` (
  `id_grup` int(11) NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_grup` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_grup`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grup`
--

INSERT INTO `grup` (`id_grup`, `nama_grup`, `date_created`, `date_updated`, `sts_grup`) VALUES
(1, 'editor', '2020-03-12 05:56:17', '2020-03-12 05:58:24', 1),
(2, 'reviewer', '2020-03-12 05:56:17', '2020-03-12 05:58:24', 1),
(3, 'makelaar', '2020-03-12 05:56:43', '2020-03-12 05:58:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `makelaar`
--

DROP TABLE IF EXISTS `makelaar`;
CREATE TABLE IF NOT EXISTS `makelaar` (
  `id_makelaar` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_makelaar` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_makelaar`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makelaar`
--

INSERT INTO `makelaar` (`id_makelaar`, `id_user`, `date_created`, `date_updated`, `sts_makelaar`) VALUES
(1, 1, '2020-05-13 15:30:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_grup` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT current_timestamp(),
  `sts_member` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `id_grup`, `id_user`, `date_created`, `date_updated`, `sts_member`) VALUES
(1, 3, 1, '2020-05-13 15:31:03', '2020-05-13 15:31:03', 1),
(2, 1, 2, '2020-05-13 15:32:25', '2020-05-13 15:32:25', 1),
(3, 2, 3, '2020-05-13 15:38:49', '2020-05-13 15:38:49', 1),
(4, 1, 4, '2020-05-13 16:03:31', '2020-05-13 16:03:31', 1),
(5, 2, 5, '2020-05-13 16:06:04', '2020-05-13 16:06:04', 1),
(6, 1, 6, '2020-05-16 07:22:05', '2020-05-16 07:22:05', 1),
(7, 1, 7, '2020-05-19 03:27:52', '2020-05-19 03:27:52', 1),
(8, 1, 8, '2020-05-19 03:52:54', '2020-05-19 03:52:54', 1),
(9, 2, 9, '2020-05-19 03:53:53', '2020-05-19 03:53:53', 1),
(10, 1, 10, '2020-05-19 04:43:42', '2020-05-19 04:43:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_assignment` int(11) NOT NULL,
  `id_editor` int(11) NOT NULL,
  `id_reviewer` int(11) NOT NULL,
  `amount` float NOT NULL,
  `bukti` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_pembayaran` tinytext NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_assignment`, `id_editor`, `id_reviewer`, `amount`, `bukti`, `date_created`, `date_updated`, `sts_pembayaran`) VALUES
(1, 1, 1, 2, 1000000, NULL, '2020-05-13 16:40:29', NULL, '1'),
(2, 2, 1, 2, 1000000, NULL, '2020-05-13 16:44:21', NULL, '1'),
(3, 3, 2, 1, 1900000, NULL, '2020-05-13 16:56:20', NULL, '1'),
(4, 6, 4, 3, 2400000, NULL, '2020-05-19 04:05:01', NULL, '1'),
(5, 11, 4, 3, 1400000, NULL, '2020-05-19 05:09:25', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
CREATE TABLE IF NOT EXISTS `reviewer` (
  `id_reviewer` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `balance` float NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_reviewer` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_reviewer`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id_reviewer`, `id_user`, `balance`, `date_created`, `date_updated`, `sts_reviewer`) VALUES
(1, 3, 200000, '2020-05-13 15:38:49', '2020-05-13 15:38:49', 1),
(2, 5, 2000000, '2020-05-13 16:06:04', '2020-05-13 16:06:04', 1),
(3, 9, 300000, '2020-05-19 03:53:53', '2020-05-19 03:53:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(250) NOT NULL,
  `authors` varchar(300) DEFAULT NULL,
  `jumlah_hal` tinyint(3) DEFAULT 3,
  `keywords` varchar(300) DEFAULT NULL,
  `filelocation` varchar(300) DEFAULT NULL,
  `id_editor` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_task` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `judul`, `authors`, `jumlah_hal`, `keywords`, `filelocation`, `id_editor`, `date_created`, `date_updated`, `sts_task`) VALUES
(1, 'Reading Strategies for TOEFL Test', 'Longman, Phillips', 10, 'Reading, Strategies, TOEFL', '1589386196_article.pdf', 1, '2020-05-13 16:09:56', NULL, 1),
(2, 'Relasi A dengan B', 'Auth 1, auth 5, auth 6', 15, 'Relasi, a, b', '1589386424_article.pdf', 1, '2020-05-13 16:13:44', NULL, 1),
(3, 'Pointer dan Struct', 'Aiden, Bellatrix', 10, 'Pointer, Struct', '1589386464_article.pdf', 1, '2020-05-13 16:14:24', NULL, 1),
(4, 'Pemanfaatan Informasi Path Coverage terhadap Efektivitas Testing', 'Limputra Qiaohui Antonio, Xiaoqing Jetta, Oost', 15, 'Path Coverage, Testing', '1589386749_article.pdf', 1, '2020-05-13 16:19:09', NULL, 1),
(5, 'Aplikasi Face Recognition dalam Pencarian Muka Secara Spesifik', 'Jetta Oost, Rose Sihombing, Bethany Sitindaon', 12, 'Face Recognition, Muka', '1589386810_article.pdf', 1, '2020-05-13 16:20:10', NULL, 1),
(6, 'Tingkat Kesuburan Perairan Teluk Banten Berdasarkan Nilai Parameter Kimia', 'Elisha, Sidauruk Asa, Tumanggor', 10, 'Kesuburan, Perairan', '1589386879_article.pdf', 2, '2020-05-13 16:21:19', NULL, 1),
(7, 'Media: Pemicu Prasangka terhadap Perempuan Bercadar', 'Iwan Raja Salim', 19, 'Pemicu, Media', '1589386911_article.pdf', 2, '2020-05-13 16:21:51', NULL, 1),
(8, 'Pembuatan kertas tisu dari limbah organik: pengaruh waktu pengeringan Dan Jenis limbah', 'Suratman, Elisha, Sidauruk', 15, 'kertas, tisu, limbah', '1589859711_article.pdf', 4, '2020-05-19 03:41:51', NULL, 1),
(9, 'Aplikasi Face Recognition dalam Pencarian Muka Secara Spesifik', 'Author 1, Author 2, Author 3', 20, 'Face recognition, pencarian, muka, spesifik', '1589859799_article.pdf', 4, '2020-05-19 03:43:19', NULL, 1),
(10, 'Dampak penggunaan energi listrik dan pembaruan, pengadaan Instalasi penerangan desa sumogawe dusun piji untuk meningkatkan Kesejahteraan masyarakat', 'Yohanes, Kusuma, Setiabudi', 17, 'energi, listrik, pembaruan, masyarakat', '1589859868_article.pdf', 4, '2020-05-19 03:44:28', NULL, 1),
(11, 'Struktur anatomi daun tumbuhan mangrove rhizophora apiculata dan sonneratia Alba di pulau handeuleum, taman nasional ujung kulon', 'Ariel, Rumahorbo', 26, 'anatomi, tumbuhan', '1589859927_article.pdf', 4, '2020-05-19 03:45:27', NULL, 1),
(12, 'Persepsi Masyarakat terhadap Penyebab Kebakaran Hutan', 'Minzhe, Ramali, Guowei', 24, 'Persepsi, Masyarakat, Kebakaran, Hutan', '1589860041_article.pdf', 4, '2020-05-19 03:47:21', NULL, 1),
(13, 'Tingkat Kesuburan Perairan Teluk Banten Berdasarkan Nilai Parameter Kimia', 'Sitindaon, Ariel, Rumahorbo', 14, 'Kesuburan, Teluk, Perairan, Kimia', '1589864074_article.pdf', 4, '2020-05-19 04:54:34', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `pwd` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `no_rek` varchar(200) NOT NULL,
  `foto_user` varchar(500) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_user` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `pwd`, `nama`, `email`, `no_rek`, `foto_user`, `date_created`, `date_updated`, `sts_user`) VALUES
(1, 'makelaar', 'e8a97f615cc19994bb9c7a847a4a7848', 'Mr. Makelaar', 'makelaar@makelaar.com', '654789284', NULL, '2020-05-13 15:30:41', NULL, 1),
(2, 'yanto', '7849816e52e7d1596c51f3e36f21c498', 'Yanto Lorem', 'yanto@yanto.com', '6547892555', 'yanto_profilepicture', '2020-05-13 15:32:25', NULL, 1),
(3, 'sakis', '18206cdcf230e9340e625bfaaede8b14', 'Sakisre Lorem', 'sakis@gmail.com', '6548972548', '1589384329_fotosakis.png', '2020-05-13 15:38:49', NULL, 1),
(4, 'thompson', '3a7e1b81ca8fbc0e160315723dc50901', 'J.J. Thompson', 'thompson@r.com', '6547898587', '1589385811_fotosakis.png', '2020-05-13 16:03:31', NULL, 1),
(5, 'bohr', '989678f65909410cac426753fe618e16', 'Neils Bohr', 'bohr@r.com', '6549878789', '1589385964_profpic.png', '2020-05-13 16:06:04', NULL, 1),
(6, 'arielru', '5c72718c5d0b4ea87f6ad61199575d64', 'Ariel Rumahorbo', 'arielru@gmail.com', '12312312312', '1589613725_profpic_-_Copy.png', '2020-05-16 07:22:05', NULL, 1),
(7, 'salim', 'ca6b147b8fbdd688d8ebcaa3b803c22a', 'Salim Minzhe', 'salim@salim.com', '1238786785', '1589858872_profpic-man3.png', '2020-05-19 03:27:52', NULL, 1),
(8, 'asaa', '7849816e52e7d1596c51f3e36f21c498', 'Asa Tumanggor', 'asa@asa.com', '1232123214', '1589860374_profpic-woman.png', '2020-05-19 03:52:54', NULL, 1),
(9, 'wangii', '959c7f1b73c3592f5deb95b718ff3889', 'Wangi Lestary', 'wangi@wangi.com', '12312321232', 'wangi_profilepicture', '2020-05-19 03:53:53', NULL, 1),
(10, 'jetta', 'f7d2497b34f28e01eac471ff7679855b', 'Jetta Oost', 'jetta@gmail.com', '1232234532333', 'jetta_profilepicture.png', '2020-05-19 04:43:42', NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
