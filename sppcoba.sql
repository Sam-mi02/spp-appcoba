-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 01:44 AM
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
-- Database: `sppcoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@spp.com|127.0.0.1', 'i:1;', 1730160648),
('admin@spp.com|127.0.0.1:timer', 'i:1730160648;', 1730160648),
('samjanuary0201@gmail.com|127.0.0.1', 'i:1;', 1730160679),
('samjanuary0201@gmail.com|127.0.0.1:timer', 'i:1730160679;', 1730160679),
('samuel@gmail.com|127.0.0.1', 'i:1;', 1730343132),
('samuel@gmail.com|127.0.0.1:timer', 'i:1730343132;', 1730343132),
('samuel0201@gmail.com|127.0.0.1', 'i:1;', 1730343122),
('samuel0201@gmail.com|127.0.0.1:timer', 'i:1730343122;', 1730343122);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`, `created_at`, `updated_at`) VALUES
(2, 'XIII TOI', 'Teknik Elektro', '2024-10-30 15:39:20', '2024-11-10 23:07:52'),
(4, 'XI PPLG', 'Pemrograman', '2024-10-30 16:36:15', '2024-11-10 23:08:09'),
(5, 'XII PPLG', 'Pemrograman', '2024-10-30 17:18:38', '2024-11-10 23:08:21'),
(7, 'XII TPTU', 'Pendingin', '2024-11-12 17:28:12', '2024-11-12 17:28:12'),
(8, 'X TP', 'Teknik mesin', '2024-11-12 17:28:28', '2024-11-12 17:28:28'),
(9, 'XI TP', 'Teknik mesin', '2024-11-12 17:28:47', '2024-11-12 17:28:47'),
(10, 'XI  KI A', 'Kimia Industri', '2024-11-12 17:29:15', '2024-11-12 17:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_19_001301_create_role', 1),
(5, '2024_09_19_001535_update_user', 1),
(6, '2024_09_19_005103_update_roles', 1),
(7, '2024_10_17_021321_create_siswa_table', 1),
(8, '2024_10_17_023647_create_pembayaran_table', 1),
(9, '2024_10_17_030618_create_kelas_table', 2),
(10, '2024_10_17_031218_create_petugas_table', 3),
(13, '2024_10_17_031243_create_spp_table', 4),
(14, '2024_10_17_032453_create_kelas_tablee', 5),
(15, '2024_10_17_032506_create_spp_tablee', 5),
(16, '2024_10_17_032522_create_siswa_tablee', 5),
(17, '2024_11_11_071647_create_pembayaran', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` bigint(20) UNSIGNED NOT NULL,
  `id_petugas` bigint(20) UNSIGNED DEFAULT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(10) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `jumlah_bayar`, `created_at`, `updated_at`) VALUES
(5, 7, '923748', '2024-11-12', 'September', '2010', 2000000, '2024-11-12 18:08:55', '2024-11-12 18:08:55'),
(8, 7, '213221', '2024-11-26', 'November', '2017', 200000, '2024-11-25 16:04:54', '2024-11-25 16:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('Admin','Petugas','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `created_at`, `updated_at`, `role`) VALUES
(2, 2, '2024-10-28 16:23:45', '2024-10-28 16:23:45', 'User'),
(4, 4, '2024-10-28 16:24:39', '2024-10-28 16:24:39', 'User'),
(5, 5, '2024-10-28 16:25:09', '2024-11-25 16:32:35', 'Admin'),
(6, 6, '2024-10-28 16:25:44', '2024-10-28 16:25:44', 'Petugas'),
(7, 7, '2024-10-30 19:25:35', '2024-10-30 19:25:35', 'Admin'),
(8, 8, '2024-11-12 18:18:12', '2024-11-12 18:18:12', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HArfoTsrG4NP0VqPvABduvLU1Xz3eWSpBWrp0Quy', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMjM3UGR2eTVYZmtqejduNTNPbUxDQU9nbGFpbG5ZNVA5ZlkxMnNYRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1732581155),
('YhMOhQCbxjuqJuj0GTnK5dtnVVN3KvDE261pZBq2', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWERBUVVhbVdWRGZjbzlhRjNwUUhwOTdoaTNlNTk3NERDaHcwS2ZEZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW1iYXlhcmFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1731468582);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`, `created_at`, `updated_at`) VALUES
('213221', '1224', 'ikhsan', 10, 'Kilo 20', '08232877823', 4, '2024-11-12 18:19:57', '2024-11-12 18:19:57'),
('214621', '1334', 'Anshor', 5, 'Loktuan', '08382364431', 5, '2024-11-12 18:21:16', '2024-11-12 18:21:16'),
('923748', '5757', 'Nabil', 5, 'saleba', '08382364331', 6, '2024-11-12 18:08:20', '2024-11-12 18:08:20'),
('929748', '7745', 'Intan', 9, 'pisangan', '08876763276', 6, '2024-11-12 18:20:41', '2024-11-12 18:20:41'),
('943748', '7436', 'tegar', 5, 'pisangan', '0875435353', 5, '2024-11-12 18:11:21', '2024-11-12 18:11:21'),
('9872365', '7545', 'samuel', 4, 'jl.damai', '084354654546', 7, '2024-11-12 18:07:30', '2024-11-12 18:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(3, 2326, 500000, '2024-10-30 21:17:07', '2024-10-30 21:17:07'),
(4, 1992, 205000, '2024-11-10 23:29:49', '2024-11-10 23:29:49'),
(5, 1992, 1000000, '2024-11-12 17:24:37', '2024-11-12 17:24:37'),
(6, 2012, 1900000, '2024-11-12 17:31:42', '2024-11-12 17:31:42'),
(7, 2300, 1260000, '2024-11-12 17:31:59', '2024-11-12 17:31:59'),
(9, 2015, 550000, '2024-11-12 18:25:27', '2024-11-12 18:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nama_lengkap`, `hp`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user1', 'userpertama', '0812332898', 'user1@spp.com', NULL, '$2y$12$FPKYZdxEI/XFe62Bj5IMse0T6Loyb4xbXXu5ncpiBt90O.dtRE1K6', NULL, '2024-10-28 16:23:45', '2024-10-28 16:23:45'),
(4, 'user3', 'userketiga', '08237878781', 'user3@spp.com', NULL, '$2y$12$9RAt0QIunaIRWwHOH2S/Xevv/XMM/X8C/zL1OFNz5JPJ4nq1SyRrW', NULL, '2024-10-28 16:24:39', '2024-10-28 16:24:39'),
(5, 'petugas1', 'petugaspertama', '08237273711', 'petugas1@spp.com', NULL, '$2y$12$sK8mCplTJofX84IyfTaJhe9sAu3HSFbyPujpkR/A1TJ01sF0wcB72', NULL, '2024-10-28 16:25:09', '2024-10-28 16:25:09'),
(6, 'petugas2', 'petugaskedua', '088723882783', 'petugas2@spp.com', NULL, '$2y$12$d2r5iVdcM6VOPtgjK6Q1wuhBJRnRtA8mBwom2kyxtEotAm9DPYE.C', NULL, '2024-10-28 16:25:44', '2024-10-28 16:25:44'),
(7, 'samuel', 'samueljs', '028397283772', 'samuel@spp.com', NULL, '$2y$12$cqdSh.VpRNSolliESYzwru4M4jNxnV8IWMiEwxIrPIk7Mw5vLHvkm', NULL, '2024-10-30 19:25:35', '2024-10-30 19:25:35'),
(8, 'vicos', 'vico tumetel', '08216365656', 'vitume@spp.com', NULL, '$2y$12$xNlAvYfSVxcWXBvqh1QcsOc2QAkpv4WHFEBnXVqXXl9IvPpmAtKy2', NULL, '2024-11-12 18:18:12', '2024-11-12 18:18:12'),
(9, 'aziz', 'Aziz Saputra', '0815256223', 'aziz@spp.com', NULL, '$2y$12$cXiiGB0DJwUDJimbqVgwCOh/j0Tkdrd.pDY0ABJverMdaIalTXRDO', NULL, '2024-11-25 16:24:21', '2024-11-25 16:24:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `pembayaran_id_petugas_foreign` (`id_petugas`),
  ADD KEY `pembayaran_nisn_foreign` (`nisn`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`),
  ADD KEY `siswa_id_kelas_foreign` (`id_kelas`),
  ADD KEY `siswa_id_spp_foreign` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_nisn_foreign` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswa_id_spp_foreign` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
