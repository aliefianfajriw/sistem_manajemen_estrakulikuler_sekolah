-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2025 pada 05.03
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_ekskul`
--

CREATE TABLE `daftar_ekskul` (
  `id` int(11) NOT NULL,
  `nama_ekskul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_ekskul`
--

INSERT INTO `daftar_ekskul` (`id`, `nama_ekskul`) VALUES
(1, 'Pramuka'),
(2, 'Paskibra'),
(3, 'Marching Band'),
(4, 'Futsal'),
(5, 'Silat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekskul`
--

CREATE TABLE `ekskul` (
  `id` int(11) NOT NULL,
  `nama_ekskul` varchar(100) DEFAULT NULL,
  `pembina_id` int(11) DEFAULT NULL,
  `jadwal` varchar(100) DEFAULT NULL,
  `nama_pembina` varchar(255) DEFAULT NULL,
  `daftar_ekskul_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ekskul`
--

INSERT INTO `ekskul` (`id`, `nama_ekskul`, `pembina_id`, `jadwal`, `nama_pembina`, `daftar_ekskul_id`) VALUES
(15, 'pramuka', 2, '2025-06-26T16:17', 'ari', NULL),
(16, 'marching band', 2, '2025-06-18T20:41', 'fatar', NULL),
(17, 'basket', 2, '2025-06-18T21:41', 'lukas', NULL),
(18, 'silat', 2, '2025-06-18T21:41', 'kirana', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran_ekskul`
--

CREATE TABLE `pendaftaran_ekskul` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `ekskul_id` int(11) DEFAULT NULL,
  `alasan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendaftaran_ekskul`
--

INSERT INTO `pendaftaran_ekskul` (`id`, `siswa_id`, `ekskul_id`, `alasan`, `created_at`) VALUES
(1, 7, 15, 'ingin pramuka', '2025-06-18 11:35:30'),
(2, 7, 0, NULL, '2025-06-18 12:14:05'),
(3, 7, 1, NULL, '2025-06-18 12:19:13'),
(4, 7, 4, NULL, '2025-06-18 12:20:00'),
(5, 17, 1, NULL, '2025-06-20 02:58:33'),
(6, 18, 1, NULL, '2025-06-20 02:58:33'),
(7, 19, 2, NULL, '2025-06-20 02:58:33'),
(8, 20, 3, NULL, '2025-06-20 02:58:33'),
(9, 21, 1, NULL, '2025-06-20 02:58:33'),
(10, 22, 1, NULL, '2025-06-20 02:58:33'),
(11, 23, 5, NULL, '2025-06-20 02:58:33'),
(12, 24, 2, NULL, '2025-06-20 02:58:33'),
(13, 25, 1, NULL, '2025-06-20 02:58:33'),
(14, 26, 4, NULL, '2025-06-20 02:58:33'),
(15, 27, 2, NULL, '2025-06-20 02:58:33'),
(16, 28, 5, NULL, '2025-06-20 02:58:33'),
(17, 29, 3, NULL, '2025-06-20 02:58:33'),
(18, 30, 4, NULL, '2025-06-20 02:58:33'),
(19, 31, 1, NULL, '2025-06-20 02:58:33'),
(20, 32, 1, NULL, '2025-06-20 02:58:33'),
(21, 33, 4, NULL, '2025-06-20 02:58:33'),
(22, 34, 4, NULL, '2025-06-20 02:58:33'),
(23, 35, 3, NULL, '2025-06-20 02:58:33'),
(24, 36, 2, NULL, '2025-06-20 02:58:33'),
(25, 37, 3, NULL, '2025-06-20 02:58:33'),
(26, 38, 1, NULL, '2025-06-20 02:58:33'),
(27, 39, 1, NULL, '2025-06-20 02:58:33'),
(28, 40, 2, NULL, '2025-06-20 02:58:33'),
(29, 41, 4, NULL, '2025-06-20 02:58:33'),
(30, 42, 1, NULL, '2025-06-20 02:58:33'),
(31, 43, 1, NULL, '2025-06-20 02:58:33'),
(32, 44, 4, NULL, '2025-06-20 02:58:33'),
(33, 45, 1, NULL, '2025-06-20 02:58:33'),
(34, 46, 1, NULL, '2025-06-20 02:58:33'),
(35, 47, 2, NULL, '2025-06-20 02:58:33'),
(36, 48, 5, NULL, '2025-06-20 02:58:33'),
(37, 49, 5, NULL, '2025-06-20 02:58:33'),
(38, 50, 5, NULL, '2025-06-20 02:58:33'),
(39, 51, 2, NULL, '2025-06-20 02:58:33'),
(40, 52, 2, NULL, '2025-06-20 02:58:33'),
(41, 53, 4, NULL, '2025-06-20 02:58:33'),
(42, 54, 2, NULL, '2025-06-20 02:58:33'),
(43, 55, 2, NULL, '2025-06-20 02:58:33'),
(44, 56, 5, NULL, '2025-06-20 02:58:33'),
(45, 57, 2, NULL, '2025-06-20 02:58:33'),
(46, 58, 3, NULL, '2025-06-20 02:58:33'),
(47, 59, 1, NULL, '2025-06-20 02:58:33'),
(48, 60, 2, NULL, '2025-06-20 02:58:33'),
(49, 61, 5, NULL, '2025-06-20 02:58:33'),
(50, 62, 1, NULL, '2025-06-20 02:58:33'),
(51, 63, 3, NULL, '2025-06-20 02:58:33'),
(52, 64, 4, NULL, '2025-06-20 02:58:33'),
(53, 65, 5, NULL, '2025-06-20 02:58:33'),
(54, 66, 2, NULL, '2025-06-20 02:58:33'),
(55, 67, 5, NULL, '2025-06-20 02:58:33'),
(56, 68, 5, NULL, '2025-06-20 02:58:33'),
(57, 69, 3, NULL, '2025-06-20 02:58:33'),
(58, 70, 4, NULL, '2025-06-20 02:58:33'),
(59, 71, 4, NULL, '2025-06-20 02:58:33'),
(60, 72, 4, NULL, '2025-06-20 02:58:33'),
(61, 73, 4, NULL, '2025-06-20 02:58:33'),
(62, 74, 5, NULL, '2025-06-20 02:58:33'),
(63, 75, 3, NULL, '2025-06-20 02:58:33'),
(64, 76, 1, NULL, '2025-06-20 02:58:33'),
(65, 77, 5, NULL, '2025-06-20 02:58:33'),
(66, 78, 4, NULL, '2025-06-20 02:58:33'),
(67, 79, 3, NULL, '2025-06-20 02:58:33'),
(68, 80, 2, NULL, '2025-06-20 02:58:33'),
(69, 81, 3, NULL, '2025-06-20 02:58:33'),
(70, 82, 2, NULL, '2025-06-20 02:58:33'),
(71, 83, 4, NULL, '2025-06-20 02:58:33'),
(72, 84, 3, NULL, '2025-06-20 02:58:33'),
(73, 85, 3, NULL, '2025-06-20 02:58:33'),
(74, 86, 2, NULL, '2025-06-20 02:58:33'),
(75, 87, 5, NULL, '2025-06-20 02:58:33'),
(76, 88, 5, NULL, '2025-06-20 02:58:33'),
(77, 89, 1, NULL, '2025-06-20 02:58:33'),
(78, 90, 1, NULL, '2025-06-20 02:58:33'),
(79, 91, 3, NULL, '2025-06-20 02:58:33'),
(80, 92, 1, NULL, '2025-06-20 02:58:33'),
(81, 93, 5, NULL, '2025-06-20 02:58:33'),
(82, 94, 5, NULL, '2025-06-20 02:58:33'),
(83, 95, 1, NULL, '2025-06-20 02:58:33'),
(84, 96, 1, NULL, '2025-06-20 02:58:33'),
(85, 97, 1, NULL, '2025-06-20 02:58:33'),
(86, 98, 1, NULL, '2025-06-20 02:58:33'),
(87, 99, 5, NULL, '2025-06-20 02:58:33'),
(88, 100, 4, NULL, '2025-06-20 02:58:33'),
(89, 101, 3, NULL, '2025-06-20 02:58:33'),
(90, 102, 1, NULL, '2025-06-20 02:58:33'),
(91, 103, 3, NULL, '2025-06-20 02:58:33'),
(92, 104, 4, NULL, '2025-06-20 02:58:33'),
(93, 105, 1, NULL, '2025-06-20 02:58:33'),
(94, 106, 4, NULL, '2025-06-20 02:58:33'),
(95, 107, 4, NULL, '2025-06-20 02:58:33'),
(96, 108, 4, NULL, '2025-06-20 02:58:33'),
(97, 109, 2, NULL, '2025-06-20 02:58:33'),
(98, 110, 4, NULL, '2025-06-20 02:58:33'),
(99, 111, 1, NULL, '2025-06-20 02:58:33'),
(100, 112, 3, NULL, '2025-06-20 02:58:33'),
(101, 113, 3, NULL, '2025-06-20 02:58:33'),
(102, 114, 2, NULL, '2025-06-20 02:58:33'),
(103, 115, 2, NULL, '2025-06-20 02:58:33'),
(104, 116, 1, NULL, '2025-06-20 02:58:33'),
(132, 17, 3, NULL, '2025-06-20 03:01:17'),
(133, 18, 2, NULL, '2025-06-20 03:01:17'),
(134, 19, 3, NULL, '2025-06-20 03:01:17'),
(135, 20, 3, NULL, '2025-06-20 03:01:17'),
(136, 21, 3, NULL, '2025-06-20 03:01:17'),
(137, 22, 3, NULL, '2025-06-20 03:01:17'),
(138, 23, 1, NULL, '2025-06-20 03:01:17'),
(139, 24, 3, NULL, '2025-06-20 03:01:17'),
(140, 25, 1, NULL, '2025-06-20 03:01:17'),
(141, 26, 5, NULL, '2025-06-20 03:01:17'),
(142, 27, 2, NULL, '2025-06-20 03:01:17'),
(143, 28, 5, NULL, '2025-06-20 03:01:17'),
(144, 29, 4, NULL, '2025-06-20 03:01:17'),
(145, 30, 2, NULL, '2025-06-20 03:01:17'),
(146, 31, 1, NULL, '2025-06-20 03:01:17'),
(147, 32, 5, NULL, '2025-06-20 03:01:17'),
(148, 33, 3, NULL, '2025-06-20 03:01:17'),
(149, 34, 4, NULL, '2025-06-20 03:01:17'),
(150, 35, 3, NULL, '2025-06-20 03:01:17'),
(151, 36, 4, NULL, '2025-06-20 03:01:17'),
(152, 37, 2, NULL, '2025-06-20 03:01:17'),
(153, 38, 3, NULL, '2025-06-20 03:01:17'),
(154, 39, 5, NULL, '2025-06-20 03:01:17'),
(155, 40, 2, NULL, '2025-06-20 03:01:17'),
(156, 41, 2, NULL, '2025-06-20 03:01:17'),
(157, 42, 3, NULL, '2025-06-20 03:01:17'),
(158, 43, 3, NULL, '2025-06-20 03:01:17'),
(159, 44, 3, NULL, '2025-06-20 03:01:17'),
(160, 45, 3, NULL, '2025-06-20 03:01:17'),
(161, 46, 2, NULL, '2025-06-20 03:01:17'),
(162, 47, 1, NULL, '2025-06-20 03:01:17'),
(163, 48, 4, NULL, '2025-06-20 03:01:17'),
(164, 49, 5, NULL, '2025-06-20 03:01:17'),
(165, 50, 3, NULL, '2025-06-20 03:01:17'),
(166, 51, 3, NULL, '2025-06-20 03:01:17'),
(167, 52, 3, NULL, '2025-06-20 03:01:17'),
(168, 53, 1, NULL, '2025-06-20 03:01:17'),
(169, 54, 2, NULL, '2025-06-20 03:01:17'),
(170, 55, 3, NULL, '2025-06-20 03:01:17'),
(171, 56, 4, NULL, '2025-06-20 03:01:17'),
(172, 57, 1, NULL, '2025-06-20 03:01:17'),
(173, 58, 4, NULL, '2025-06-20 03:01:17'),
(174, 59, 5, NULL, '2025-06-20 03:01:17'),
(175, 60, 2, NULL, '2025-06-20 03:01:17'),
(176, 61, 3, NULL, '2025-06-20 03:01:17'),
(177, 62, 1, NULL, '2025-06-20 03:01:17'),
(178, 63, 5, NULL, '2025-06-20 03:01:17'),
(179, 64, 2, NULL, '2025-06-20 03:01:17'),
(180, 65, 3, NULL, '2025-06-20 03:01:17'),
(181, 66, 3, NULL, '2025-06-20 03:01:17'),
(182, 67, 5, NULL, '2025-06-20 03:01:17'),
(183, 68, 1, NULL, '2025-06-20 03:01:17'),
(184, 69, 4, NULL, '2025-06-20 03:01:17'),
(185, 70, 3, NULL, '2025-06-20 03:01:17'),
(186, 71, 4, NULL, '2025-06-20 03:01:17'),
(187, 72, 3, NULL, '2025-06-20 03:01:17'),
(188, 73, 2, NULL, '2025-06-20 03:01:17'),
(189, 74, 5, NULL, '2025-06-20 03:01:17'),
(190, 75, 4, NULL, '2025-06-20 03:01:17'),
(191, 76, 5, NULL, '2025-06-20 03:01:17'),
(192, 77, 1, NULL, '2025-06-20 03:01:17'),
(193, 78, 4, NULL, '2025-06-20 03:01:17'),
(194, 79, 1, NULL, '2025-06-20 03:01:17'),
(195, 80, 4, NULL, '2025-06-20 03:01:17'),
(196, 81, 3, NULL, '2025-06-20 03:01:17'),
(197, 82, 2, NULL, '2025-06-20 03:01:17'),
(198, 83, 5, NULL, '2025-06-20 03:01:17'),
(199, 84, 5, NULL, '2025-06-20 03:01:17'),
(200, 85, 2, NULL, '2025-06-20 03:01:17'),
(201, 86, 5, NULL, '2025-06-20 03:01:17'),
(202, 87, 4, NULL, '2025-06-20 03:01:17'),
(203, 88, 5, NULL, '2025-06-20 03:01:17'),
(204, 89, 1, NULL, '2025-06-20 03:01:17'),
(205, 90, 5, NULL, '2025-06-20 03:01:17'),
(206, 91, 5, NULL, '2025-06-20 03:01:17'),
(207, 92, 1, NULL, '2025-06-20 03:01:17'),
(208, 93, 3, NULL, '2025-06-20 03:01:17'),
(209, 94, 1, NULL, '2025-06-20 03:01:17'),
(210, 95, 1, NULL, '2025-06-20 03:01:17'),
(211, 96, 1, NULL, '2025-06-20 03:01:17'),
(212, 97, 2, NULL, '2025-06-20 03:01:17'),
(213, 98, 3, NULL, '2025-06-20 03:01:17'),
(214, 99, 2, NULL, '2025-06-20 03:01:17'),
(215, 100, 3, NULL, '2025-06-20 03:01:17'),
(216, 101, 1, NULL, '2025-06-20 03:01:17'),
(217, 102, 5, NULL, '2025-06-20 03:01:17'),
(218, 103, 3, NULL, '2025-06-20 03:01:17'),
(219, 104, 4, NULL, '2025-06-20 03:01:17'),
(220, 105, 1, NULL, '2025-06-20 03:01:17'),
(221, 106, 1, NULL, '2025-06-20 03:01:17'),
(222, 107, 4, NULL, '2025-06-20 03:01:17'),
(223, 108, 4, NULL, '2025-06-20 03:01:17'),
(224, 109, 2, NULL, '2025-06-20 03:01:17'),
(225, 110, 4, NULL, '2025-06-20 03:01:17'),
(226, 111, 3, NULL, '2025-06-20 03:01:17'),
(227, 112, 3, NULL, '2025-06-20 03:01:17'),
(228, 113, 1, NULL, '2025-06-20 03:01:17'),
(229, 114, 5, NULL, '2025-06-20 03:01:17'),
(230, 115, 1, NULL, '2025-06-20 03:01:17'),
(231, 116, 1, NULL, '2025-06-20 03:01:17'),
(232, 144, 4, NULL, '2025-06-20 03:01:17'),
(233, 145, 2, NULL, '2025-06-20 03:01:17'),
(234, 146, 4, NULL, '2025-06-20 03:01:17'),
(235, 147, 5, NULL, '2025-06-20 03:01:17'),
(236, 148, 4, NULL, '2025-06-20 03:01:17'),
(237, 149, 3, NULL, '2025-06-20 03:01:17'),
(238, 150, 5, NULL, '2025-06-20 03:01:17'),
(239, 151, 1, NULL, '2025-06-20 03:01:17'),
(240, 152, 4, NULL, '2025-06-20 03:01:17'),
(241, 153, 1, NULL, '2025-06-20 03:01:17'),
(242, 154, 1, NULL, '2025-06-20 03:01:17'),
(243, 155, 3, NULL, '2025-06-20 03:01:17'),
(244, 156, 4, NULL, '2025-06-20 03:01:17'),
(245, 157, 2, NULL, '2025-06-20 03:01:17'),
(246, 158, 5, NULL, '2025-06-20 03:01:17'),
(247, 159, 2, NULL, '2025-06-20 03:01:17'),
(248, 160, 3, NULL, '2025-06-20 03:01:17'),
(249, 161, 5, NULL, '2025-06-20 03:01:17'),
(250, 162, 5, NULL, '2025-06-20 03:01:17'),
(251, 163, 4, NULL, '2025-06-20 03:01:17'),
(252, 164, 5, NULL, '2025-06-20 03:01:17'),
(253, 165, 1, NULL, '2025-06-20 03:01:17'),
(254, 166, 3, NULL, '2025-06-20 03:01:17'),
(255, 167, 3, NULL, '2025-06-20 03:01:17'),
(256, 168, 3, NULL, '2025-06-20 03:01:17'),
(257, 169, 3, NULL, '2025-06-20 03:01:17'),
(258, 170, 4, NULL, '2025-06-20 03:01:17'),
(259, 171, 2, NULL, '2025-06-20 03:01:17'),
(260, 172, 5, NULL, '2025-06-20 03:01:17'),
(261, 173, 2, NULL, '2025-06-20 03:01:17'),
(262, 174, 3, NULL, '2025-06-20 03:01:17'),
(263, 175, 1, NULL, '2025-06-20 03:01:17'),
(264, 176, 5, NULL, '2025-06-20 03:01:17'),
(265, 177, 3, NULL, '2025-06-20 03:01:17'),
(266, 178, 4, NULL, '2025-06-20 03:01:17'),
(267, 179, 5, NULL, '2025-06-20 03:01:17'),
(268, 180, 4, NULL, '2025-06-20 03:01:17'),
(269, 181, 3, NULL, '2025-06-20 03:01:17'),
(270, 182, 5, NULL, '2025-06-20 03:01:17'),
(271, 183, 3, NULL, '2025-06-20 03:01:17'),
(272, 184, 1, NULL, '2025-06-20 03:01:17'),
(273, 185, 4, NULL, '2025-06-20 03:01:17'),
(274, 186, 3, NULL, '2025-06-20 03:01:17'),
(275, 187, 1, NULL, '2025-06-20 03:01:17'),
(276, 188, 3, NULL, '2025-06-20 03:01:17'),
(277, 189, 5, NULL, '2025-06-20 03:01:17'),
(278, 190, 1, NULL, '2025-06-20 03:01:17'),
(279, 191, 4, NULL, '2025-06-20 03:01:17'),
(280, 192, 2, NULL, '2025-06-20 03:01:17'),
(281, 193, 1, NULL, '2025-06-20 03:01:17'),
(282, 194, 1, NULL, '2025-06-20 03:01:17'),
(283, 195, 5, NULL, '2025-06-20 03:01:17'),
(284, 196, 3, NULL, '2025-06-20 03:01:17'),
(285, 197, 2, NULL, '2025-06-20 03:01:17'),
(286, 198, 1, NULL, '2025-06-20 03:01:17'),
(287, 199, 4, NULL, '2025-06-20 03:01:17'),
(288, 200, 3, NULL, '2025-06-20 03:01:17'),
(289, 201, 3, NULL, '2025-06-20 03:01:17'),
(290, 202, 1, NULL, '2025-06-20 03:01:17'),
(291, 203, 4, NULL, '2025-06-20 03:01:17'),
(292, 204, 1, NULL, '2025-06-20 03:01:17'),
(293, 205, 5, NULL, '2025-06-20 03:01:17'),
(294, 206, 4, NULL, '2025-06-20 03:01:17'),
(295, 207, 5, NULL, '2025-06-20 03:01:17'),
(296, 208, 1, NULL, '2025-06-20 03:01:17'),
(297, 209, 5, NULL, '2025-06-20 03:01:17'),
(298, 210, 2, NULL, '2025-06-20 03:01:17'),
(299, 211, 4, NULL, '2025-06-20 03:01:17'),
(300, 212, 4, NULL, '2025-06-20 03:01:17'),
(301, 213, 3, NULL, '2025-06-20 03:01:17'),
(302, 214, 3, NULL, '2025-06-20 03:01:17'),
(303, 215, 4, NULL, '2025-06-20 03:01:17'),
(304, 216, 2, NULL, '2025-06-20 03:01:17'),
(305, 217, 3, NULL, '2025-06-20 03:01:17'),
(306, 218, 2, NULL, '2025-06-20 03:01:17'),
(307, 219, 1, NULL, '2025-06-20 03:01:17'),
(308, 220, 5, NULL, '2025-06-20 03:01:17'),
(309, 221, 5, NULL, '2025-06-20 03:01:17'),
(310, 222, 1, NULL, '2025-06-20 03:01:17'),
(311, 223, 3, NULL, '2025-06-20 03:01:17'),
(312, 224, 5, NULL, '2025-06-20 03:01:17'),
(313, 225, 3, NULL, '2025-06-20 03:01:17'),
(314, 226, 4, NULL, '2025-06-20 03:01:17'),
(315, 227, 5, NULL, '2025-06-20 03:01:17'),
(316, 228, 1, NULL, '2025-06-20 03:01:17'),
(317, 229, 1, NULL, '2025-06-20 03:01:17'),
(318, 230, 5, NULL, '2025-06-20 03:01:17'),
(319, 231, 2, NULL, '2025-06-20 03:01:17'),
(320, 232, 5, NULL, '2025-06-20 03:01:17'),
(321, 233, 4, NULL, '2025-06-20 03:01:17'),
(322, 234, 4, NULL, '2025-06-20 03:01:17'),
(323, 235, 4, NULL, '2025-06-20 03:01:17'),
(324, 236, 5, NULL, '2025-06-20 03:01:17'),
(325, 237, 5, NULL, '2025-06-20 03:01:17'),
(326, 238, 2, NULL, '2025-06-20 03:01:17'),
(327, 239, 2, NULL, '2025-06-20 03:01:17'),
(328, 240, 1, NULL, '2025-06-20 03:01:17'),
(329, 241, 1, NULL, '2025-06-20 03:01:17'),
(330, 242, 1, NULL, '2025-06-20 03:01:17'),
(331, 243, 1, NULL, '2025-06-20 03:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_ekskul`
--

CREATE TABLE `peserta_ekskul` (
  `id` int(11) NOT NULL,
  `ekskul_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sandi` varchar(255) NOT NULL,
  `role` enum('siswa/i','pembina','guru/staff') NOT NULL,
  `kelas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `sandi`, `role`, `kelas`) VALUES
(1, 'HAZMI SAJIYUL UMAM', 'a69faeda0d2f9cd075dda59617ca77f7', 'siswa/i', ''),
(2, 'guntur', '4ea35d7cf096fae4baf7c47d3e00aab2', 'pembina', ''),
(5, 'wawa', '892a9944cf14665375630c06a1902152', 'siswa/i', '7A'),
(6, 'jane', '5844a15e76563fedd11840fd6f40ea7b', 'siswa/i', ''),
(7, 'wadsa', '26a40a487568efb4b08196118b2d69fc', 'siswa/i', '7B'),
(8, 'afriazah', 'cd40077493e8317dfdf92a2118720ef0', 'siswa/i', '7A'),
(9, 'jhon', 'bf2bc2545a4a5f5683d9ef3ed0d977e0', 'siswa/i', '7A'),
(10, 'alfi', 'b8aab85cb5b70a866972a694a27b7ed6', 'siswa/i', ''),
(11, 'baku', 'e2c1499ef13ff645d82883ae0996d81e', 'siswa/i', '8A'),
(12, 'dede', 'a562cfa07c2b1213b3a5c99b756fc206', 'siswa/i', '7B'),
(13, 'afni', '7977755c8aa3ece9156726fe9b682d16', 'pembina', NULL),
(14, 'aju', '0f27cec6b9c62e0929d14f7130c51fba', 'pembina', NULL),
(15, 'loki', 'e64cfa3fd59e32df57003c7401f48c99', 'siswa/i', '7C'),
(16, 'asmi', 'a69faeda0d2f9cd075dda59617ca77f7', 'siswa/i', '7A'),
(17, 'siswa_001', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(18, 'siswa_002', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(19, 'siswa_003', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(20, 'siswa_004', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(21, 'siswa_005', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(22, 'siswa_006', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(23, 'siswa_007', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(24, 'siswa_008', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(25, 'siswa_009', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(26, 'siswa_010', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(27, 'siswa_011', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(28, 'siswa_012', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(29, 'siswa_013', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(30, 'siswa_014', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(31, 'siswa_015', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(32, 'siswa_016', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(33, 'siswa_017', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(34, 'siswa_018', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(35, 'siswa_019', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(36, 'siswa_020', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(37, 'siswa_021', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(38, 'siswa_022', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(39, 'siswa_023', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(40, 'siswa_024', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(41, 'siswa_025', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(42, 'siswa_026', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(43, 'siswa_027', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(44, 'siswa_028', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(45, 'siswa_029', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(46, 'siswa_030', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(47, 'siswa_031', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(48, 'siswa_032', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(49, 'siswa_033', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(50, 'siswa_034', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(51, 'siswa_035', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(52, 'siswa_036', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(53, 'siswa_037', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(54, 'siswa_038', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(55, 'siswa_039', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(56, 'siswa_040', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(57, 'siswa_041', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(58, 'siswa_042', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(59, 'siswa_043', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(60, 'siswa_044', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(61, 'siswa_045', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(62, 'siswa_046', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(63, 'siswa_047', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(64, 'siswa_048', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(65, 'siswa_049', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(66, 'siswa_050', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(67, 'siswa_051', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(68, 'siswa_052', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(69, 'siswa_053', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(70, 'siswa_054', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(71, 'siswa_055', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(72, 'siswa_056', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(73, 'siswa_057', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(74, 'siswa_058', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(75, 'siswa_059', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(76, 'siswa_060', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(77, 'siswa_061', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(78, 'siswa_062', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(79, 'siswa_063', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(80, 'siswa_064', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(81, 'siswa_065', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(82, 'siswa_066', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(83, 'siswa_067', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(84, 'siswa_068', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(85, 'siswa_069', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(86, 'siswa_070', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(87, 'siswa_071', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(88, 'siswa_072', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(89, 'siswa_073', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(90, 'siswa_074', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(91, 'siswa_075', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(92, 'siswa_076', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(93, 'siswa_077', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(94, 'siswa_078', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(95, 'siswa_079', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(96, 'siswa_080', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(97, 'siswa_081', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(98, 'siswa_082', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(99, 'siswa_083', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(100, 'siswa_084', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(101, 'siswa_085', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(102, 'siswa_086', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(103, 'siswa_087', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(104, 'siswa_088', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(105, 'siswa_089', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(106, 'siswa_090', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(107, 'siswa_091', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(108, 'siswa_092', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(109, 'siswa_093', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(110, 'siswa_094', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(111, 'siswa_095', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(112, 'siswa_096', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(113, 'siswa_097', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(114, 'siswa_098', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(115, 'siswa_099', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(116, 'siswa_100', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(144, 'siswa_001', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(145, 'siswa_002', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(146, 'siswa_003', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(147, 'siswa_004', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(148, 'siswa_005', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(149, 'siswa_006', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(150, 'siswa_007', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(151, 'siswa_008', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(152, 'siswa_009', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(153, 'siswa_010', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(154, 'siswa_011', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(155, 'siswa_012', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(156, 'siswa_013', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(157, 'siswa_014', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(158, 'siswa_015', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(159, 'siswa_016', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(160, 'siswa_017', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(161, 'siswa_018', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(162, 'siswa_019', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(163, 'siswa_020', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(164, 'siswa_021', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(165, 'siswa_022', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(166, 'siswa_023', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(167, 'siswa_024', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(168, 'siswa_025', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(169, 'siswa_026', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(170, 'siswa_027', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(171, 'siswa_028', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(172, 'siswa_029', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(173, 'siswa_030', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(174, 'siswa_031', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(175, 'siswa_032', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(176, 'siswa_033', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(177, 'siswa_034', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(178, 'siswa_035', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(179, 'siswa_036', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(180, 'siswa_037', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(181, 'siswa_038', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(182, 'siswa_039', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(183, 'siswa_040', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(184, 'siswa_041', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(185, 'siswa_042', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(186, 'siswa_043', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(187, 'siswa_044', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(188, 'siswa_045', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(189, 'siswa_046', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(190, 'siswa_047', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(191, 'siswa_048', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(192, 'siswa_049', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(193, 'siswa_050', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(194, 'siswa_051', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(195, 'siswa_052', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(196, 'siswa_053', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(197, 'siswa_054', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(198, 'siswa_055', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(199, 'siswa_056', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(200, 'siswa_057', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(201, 'siswa_058', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(202, 'siswa_059', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(203, 'siswa_060', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(204, 'siswa_061', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(205, 'siswa_062', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(206, 'siswa_063', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(207, 'siswa_064', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(208, 'siswa_065', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(209, 'siswa_066', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(210, 'siswa_067', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(211, 'siswa_068', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(212, 'siswa_069', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(213, 'siswa_070', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(214, 'siswa_071', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(215, 'siswa_072', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(216, 'siswa_073', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(217, 'siswa_074', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(218, 'siswa_075', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(219, 'siswa_076', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(220, 'siswa_077', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(221, 'siswa_078', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(222, 'siswa_079', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(223, 'siswa_080', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(224, 'siswa_081', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(225, 'siswa_082', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(226, 'siswa_083', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(227, 'siswa_084', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(228, 'siswa_085', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(229, 'siswa_086', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(230, 'siswa_087', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(231, 'siswa_088', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(232, 'siswa_089', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(233, 'siswa_090', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(234, 'siswa_091', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(235, 'siswa_092', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(236, 'siswa_093', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-2'),
(237, 'siswa_094', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(238, 'siswa_095', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(239, 'siswa_096', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(240, 'siswa_097', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(241, 'siswa_098', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-1'),
(242, 'siswa_099', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3'),
(243, 'siswa_100', '482c811da5d5b4bc6d497ffa98491e38', 'siswa/i', 'X-3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_ekskul`
--
ALTER TABLE `daftar_ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembina_id` (`pembina_id`),
  ADD KEY `daftar_ekskul_id` (`daftar_ekskul_id`);

--
-- Indeks untuk tabel `pendaftaran_ekskul`
--
ALTER TABLE `pendaftaran_ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peserta_ekskul`
--
ALTER TABLE `peserta_ekskul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ekskul_id` (`ekskul_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_ekskul`
--
ALTER TABLE `daftar_ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran_ekskul`
--
ALTER TABLE `pendaftaran_ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT untuk tabel `peserta_ekskul`
--
ALTER TABLE `peserta_ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  ADD CONSTRAINT `ekskul_ibfk_1` FOREIGN KEY (`pembina_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ekskul_ibfk_2` FOREIGN KEY (`daftar_ekskul_id`) REFERENCES `daftar_ekskul` (`id`);

--
-- Ketidakleluasaan untuk tabel `peserta_ekskul`
--
ALTER TABLE `peserta_ekskul`
  ADD CONSTRAINT `peserta_ekskul_ibfk_1` FOREIGN KEY (`ekskul_id`) REFERENCES `ekskul` (`id`),
  ADD CONSTRAINT `peserta_ekskul_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
