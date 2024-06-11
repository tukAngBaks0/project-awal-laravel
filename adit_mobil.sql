-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2024 pada 03.08
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
-- Database: `adit_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detiltransaksis`
--

CREATE TABLE `detiltransaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detiltransaksis`
--

INSERT INTO `detiltransaksis` (`id`, `id_transaksi`, `id_produk`, `qty`, `harga`, `created_at`, `updated_at`) VALUES
(1, 29, 1, 2, 500000000, '2024-05-27 23:25:44', '2024-05-27 23:25:44'),
(2, 30, 1, 1, 500000000, '2024-05-27 23:32:37', '2024-05-27 23:32:37'),
(3, 31, 3, 1, 300000000, '2024-05-27 23:33:58', '2024-05-27 23:33:58'),
(4, 33, 1, 2, 500000000, '2024-06-04 18:21:43', '2024-06-04 18:21:43'),
(5, 36, 4, 1, 750000000, '2024-06-07 21:49:44', '2024-06-07 21:49:44'),
(6, 37, 3, 1, 300000000, '2024-06-07 21:51:02', '2024-06-07 21:51:02'),
(7, 38, 4, 1, 750000000, '2024-06-07 22:04:25', '2024-06-07 22:04:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_05_06_040232_create_produks_table', 1),
(3, '2024_05_06_040247_create_users_table', 1),
(4, '2024_05_06_040256_create_pelanggans_table', 1),
(5, '2024_05_06_040318_create_transaksis_table', 1),
(6, '2024_05_06_040331_create_detiltransaksis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'Jihan', 'Kp. Durian', '2222', '2024-05-07 21:57:43', '2024-05-12 20:53:57'),
(2, 'Aditiya', 'opak', '7766', '2024-05-12 20:53:38', '2024-05-12 20:53:38'),
(3, 'Fahri', 'Bundar', '999', '2024-05-15 20:46:19', '2024-05-15 20:46:19'),
(4, 'rerv', 'rfr', 'rr', '2024-06-07 21:43:17', '2024-06-07 21:43:17'),
(5, 'wrfufu', 'uiu', '244gh', '2024-06-07 22:03:32', '2024-06-07 22:03:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `nama`, `stok`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Toyota Fortuner', 22, 500000000, '2024-05-07 21:35:21', '2024-05-27 23:33:25'),
(3, 'Toyota Veloz', 13, 300000000, '2024-05-12 20:54:51', '2024-06-07 21:51:06'),
(4, 'Toyota Hilux', 18, 750000000, '2024-05-16 19:19:24', '2024-06-07 22:04:30'),
(5, 'Toyota Rush', 15, 350000000, '2024-05-16 19:21:25', '2024-05-16 19:21:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `id_pelanggan` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `invoice`, `id_pelanggan`, `id_user`, `total`, `created_at`, `updated_at`) VALUES
(1, 'INV-1', 1, 1, 0, '2024-05-12 23:24:21', '2024-05-12 23:24:21'),
(2, 'INV-2', 2, 1, 0, '2024-05-12 23:25:25', '2024-05-12 23:25:25'),
(3, 'INV-3', 2, 1, 0, '2024-05-13 05:58:40', '2024-05-13 05:58:40'),
(4, 'INV-4', 1, 1, 0, '2024-05-13 05:59:53', '2024-05-13 05:59:53'),
(5, 'INV-5', 2, 1, 0, '2024-05-13 06:01:41', '2024-05-13 06:01:41'),
(6, 'INV-6', 2, 1, 0, '2024-05-13 18:17:51', '2024-05-13 18:17:51'),
(7, 'INV-7', 1, 1, 0, '2024-05-13 18:42:56', '2024-05-13 18:42:56'),
(8, 'INV-8', 2, 1, 0, '2024-05-13 18:43:18', '2024-05-13 18:43:18'),
(9, 'INV-9', 2, 1, 0, '2024-05-13 18:46:39', '2024-05-13 18:46:39'),
(10, 'INV-10', 1, 1, 0, '2024-05-15 19:05:35', '2024-05-15 19:05:35'),
(11, 'INV-11', 1, 1, 0, '2024-05-15 19:28:16', '2024-05-15 19:28:16'),
(12, 'INV-12', 2, 1, 0, '2024-05-15 20:23:01', '2024-05-15 20:23:01'),
(13, 'INV-13', 1, 1, 0, '2024-05-15 20:24:30', '2024-05-15 20:24:30'),
(14, 'INV-14', 2, 1, 0, '2024-05-15 20:32:27', '2024-05-15 20:32:27'),
(15, 'INV-15', 1, 1, 0, '2024-05-15 20:36:07', '2024-05-15 20:36:07'),
(16, 'INV-16', 1, 1, 0, '2024-05-15 20:47:57', '2024-05-15 20:47:57'),
(17, 'INV-17', 2, 1, 0, '2024-05-15 20:53:53', '2024-05-15 20:53:53'),
(18, 'INV-18', 2, 1, 0, '2024-05-16 18:46:50', '2024-05-16 18:46:50'),
(19, 'INV-19', 3, 1, 0, '2024-05-16 19:00:40', '2024-05-16 19:00:40'),
(20, 'INV-20', 2, 1, 0, '2024-05-16 19:07:00', '2024-05-16 19:07:00'),
(21, 'INV-21', 2, 1, 0, '2024-05-16 20:29:47', '2024-05-16 20:29:47'),
(22, 'INV-22', 2, 1, 0, '2024-05-16 20:49:36', '2024-05-16 20:49:36'),
(23, 'INV-23', 2, 1, 0, '2024-05-16 20:52:49', '2024-05-16 20:52:49'),
(24, 'INV-24', 2, 1, 0, '2024-05-16 21:03:52', '2024-05-16 21:03:52'),
(25, 'INV-25', 2, 1, 0, '2024-05-16 21:10:36', '2024-05-16 21:10:36'),
(26, 'INV-26', 2, 1, 0, '2024-05-16 21:12:11', '2024-05-16 21:12:11'),
(27, 'INV-27', 2, 1, 0, '2024-05-26 21:33:29', '2024-05-26 21:33:29'),
(28, 'INV-28', 2, 1, 0, '2024-05-26 21:36:50', '2024-05-26 21:36:50'),
(29, 'INV-29', 1, 1, 1000000000, '2024-05-27 23:24:16', '2024-05-27 23:25:44'),
(30, 'INV-30', 1, 1, 500000000, '2024-05-27 23:32:28', '2024-05-27 23:32:37'),
(31, 'INV-31', 1, 1, 300000000, '2024-05-27 23:33:50', '2024-05-27 23:33:58'),
(32, 'INV-32', 2, 1, 0, '2024-06-04 17:46:41', '2024-06-04 17:46:41'),
(33, 'INV-33', 3, 1, 1000000000, '2024-06-04 18:21:32', '2024-06-04 18:21:44'),
(34, 'INV-34', 2, 1, 0, '2024-06-04 18:35:11', '2024-06-04 18:35:11'),
(35, 'INV-35', 2, 1, 0, '2024-06-04 21:15:44', '2024-06-04 21:15:44'),
(36, 'INV-36', 3, 1, 750000000, '2024-06-07 21:49:15', '2024-06-07 21:49:44'),
(37, 'INV-37', 2, 1, 300000000, '2024-06-07 21:50:56', '2024-06-07 21:51:02'),
(38, 'INV-38', 3, 1, 750000000, '2024-06-07 22:04:13', '2024-06-07 22:04:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'adit', 'adit@gmail.com', '$2y$10$LcBUJ8IjM8HopTEHTTgS0OnLAxSSu/V7L.Lku3XO0xWsvZ/f.RzWm', NULL, NULL),
(2, 'Jihan', 'jihan@gmail.com', '$2y$12$vo5dTWJeixt9Zp4xv9dOxev4QuqLBpHBLqcbJe6MjlFLKlTHbOaG2', '2024-05-07 22:06:52', '2024-05-07 22:06:52'),
(3, 'berok', 'berok@gmail.com', '$2y$12$8BH0.CBp2pvN6M43wcVBseMWj.pjwtdbJn7tg9AM0UdXgPNcSyYnW', '2024-05-16 19:10:53', '2024-05-16 19:10:53'),
(4, 'HR-V', 'adit@gmail.com', '$2y$12$juGbbxZghmwRO4iatTfNBOgUFbJR6yaoalcEw.P129ZRBaaHZYXPe', '2024-06-07 22:03:59', '2024-06-07 22:03:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detiltransaksis_id_transaksi_foreign` (`id_transaksi`),
  ADD KEY `detiltransaksis_id_produk_foreign` (`id_produk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_invoice_unique` (`invoice`),
  ADD KEY `transaksis_id_pelanggan_foreign` (`id_pelanggan`),
  ADD KEY `transaksis_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD CONSTRAINT `detiltransaksis_id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detiltransaksis_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_id_pelanggan_foreign` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
