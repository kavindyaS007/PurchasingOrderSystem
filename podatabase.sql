-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 05:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_12_143817_create_zones_table', 1),
(6, '2022_03_12_173408_create_regions_table', 2),
(7, '2022_03_13_183433_create_territories_table', 3),
(8, '2022_03_15_052348_create_new_users_table', 4),
(9, '2022_03_16_073527_create_products_table', 5),
(10, '2022_03_17_094635_add_quantity_to_products_table', 6),
(11, '2022_03_17_124308_create_podetails_table', 7),
(12, '2022_03_17_124337_create_pomoredetails_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `new_users`
--

CREATE TABLE `new_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `territory` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_users`
--

INSERT INTO `new_users` (`id`, `name`, `nic`, `address`, `mobile`, `email`, `email_verified_at`, `gender`, `territory`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Manager', ' ', ' ', ' ', ' ', NULL, 'male', 0, 'Admin001', '$2y$10$WUGP3.vh0wOAmq9FFIowe.4aJ6RHKYf7Gw/Yu0eR60h/mQmO9WWbu', NULL, '2022-03-15 00:44:51', '2022-03-15 00:44:51'),
(2, 'Kavindya', '967872199V', 'Negombo', '0712323233', 'kavi@gmail.com', NULL, 'female', 1, 'kavi007', 'kavi7@', NULL, '2022-03-15 20:59:13', '2022-03-15 20:59:13'),
(3, 'geetha', '121212345V', 'daluwakotuwa', '1212131412', 'qwe@gmail.com', NULL, 'female', 2, 'geetha12', 'geetha12@', NULL, '2022-03-15 21:18:48', '2022-03-15 21:18:48'),
(4, 'kavindya', '967872199v', 'negombo', '1212121212', 'aqw@test.lkk', NULL, 'female', 3, 'kavi123', 'kavi123@', NULL, '2022-03-16 01:47:48', '2022-03-16 01:47:48'),
(5, 'ruwan', '1212121212', 'rathmalana', '2334455612', 'ru@test.lk', NULL, 'male', 5, 'ru123@#', 'ru123@#$', NULL, '2022-03-17 05:16:26', '2022-03-17 05:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `podetails`
--

CREATE TABLE `podetails` (
  `poNo` bigint(20) UNSIGNED NOT NULL,
  `zone` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `territory` int(11) NOT NULL,
  `distributor` int(11) NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podetails`
--

INSERT INTO `podetails` (`poNo`, `zone`, `region`, `territory`, `distributor`, `date`, `remark`, `totalPrice`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, '2022-03-17', '25 packets', 0, '2022-03-17 13:27:01', '2022-03-17 13:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `pomoredetails`
--

CREATE TABLE `pomoredetails` (
  `poid` bigint(20) UNSIGNED NOT NULL,
  `poNO` int(11) NOT NULL,
  `skuid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `skuid` bigint(20) UNSIGNED NOT NULL,
  `skucode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` int(11) NOT NULL,
  `distPrice` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`skuid`, `skucode`, `mpname`, `mrp`, `distPrice`, `weight`, `unit`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 'ABC 001', 'Anchor', 450, 500, 400, 'gram', '2022-03-17 00:32:06', '2022-03-17 00:32:06', 0),
(3, 'ABC 002', 'Raththi', 350, 400, 400, 'gram', '2022-03-17 01:09:58', '2022-03-17 01:09:58', 0),
(4, 'XYZ 001', 'maliban', 200, 150, 250, 'gram', '2022-03-17 05:37:06', '2022-03-17 05:37:06', 50);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `zone` int(11) NOT NULL,
  `rcode` int(10) UNSIGNED NOT NULL,
  `rname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`zone`, `rcode`, `rname`, `created_at`, `updated_at`) VALUES
(1, 1, 'region/001/1', '2022-03-12 13:04:11', '2022-03-12 13:04:11'),
(1, 2, 'region/001/2', '2022-03-12 13:04:55', '2022-03-12 13:04:55'),
(2, 3, 'region/2/4', '2022-03-13 07:48:36', '2022-03-13 07:48:36'),
(6, 4, 'region 2 neg', '2022-03-13 11:44:47', '2022-03-13 11:44:47'),
(6, 5, 'region 2 neg', '2022-03-13 11:49:56', '2022-03-13 11:49:56'),
(6, 6, 'region 2 neg', '2022-03-13 11:50:28', '2022-03-13 11:50:28'),
(6, 7, 'region 2 neg', '2022-03-13 11:51:04', '2022-03-13 11:51:04'),
(6, 8, 'region 2 neg', '2022-03-13 11:51:31', '2022-03-13 11:51:31'),
(9, 9, 'Ceylon Linux', '2022-03-15 04:12:44', '2022-03-15 04:12:44'),
(10, 10, 'region123', '2022-03-16 01:43:02', '2022-03-16 01:43:02'),
(3, 11, 'region pitipana', '2022-03-17 05:13:24', '2022-03-17 05:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `territories`
--

CREATE TABLE `territories` (
  `zone` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `tcode` int(10) UNSIGNED NOT NULL,
  `tname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `territories`
--

INSERT INTO `territories` (`zone`, `region`, `tcode`, `tname`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'srm12', '2022-03-13 13:26:01', '2022-03-13 13:26:01'),
(9, 9, 2, 'HR', '2022-03-15 04:14:04', '2022-03-15 04:14:04'),
(1, 1, 3, 'terr12', '2022-03-16 01:45:18', '2022-03-16 01:45:18'),
(1, 1, 4, 'test terri', '2022-03-17 05:14:20', '2022-03-17 05:14:20'),
(3, 11, 5, 'broadcast', '2022-03-17 05:14:51', '2022-03-17 05:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zcode` int(10) UNSIGNED NOT NULL,
  `zlongdes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zshortdes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zcode`, `zlongdes`, `zshortdes`, `created_at`, `updated_at`) VALUES
(1, 'zone 001', 'z1', '2022-03-12 11:34:09', '2022-03-12 11:34:09'),
(2, 'zone002', 'z2', '2022-03-12 11:35:19', '2022-03-12 11:35:19'),
(3, 'zone003', 'z3', '2022-03-12 11:40:03', '2022-03-12 11:40:03'),
(4, 'zone004', 'z4', '2022-03-12 11:40:41', '2022-03-12 11:40:41'),
(5, 'zone005', 'z5', '2022-03-12 11:44:21', '2022-03-12 11:44:21'),
(6, 'zone negombo', 'zone-neg', '2022-03-13 07:46:47', '2022-03-13 07:46:47'),
(7, 'zone - rathnapura', 'zrath', '2022-03-13 09:18:24', '2022-03-13 09:18:24'),
(8, 'zone 010 colombo', 'z010', '2022-03-13 09:19:31', '2022-03-13 09:19:31'),
(9, 'Zone - Baththaramulla', 'zBat', '2022-03-15 04:11:54', '2022-03-15 04:11:54'),
(10, 'test00123', 'te1', '2022-03-16 01:42:14', '2022-03-16 01:42:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_users`
--
ALTER TABLE `new_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `new_users_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `podetails`
--
ALTER TABLE `podetails`
  ADD PRIMARY KEY (`poNo`);

--
-- Indexes for table `pomoredetails`
--
ALTER TABLE `pomoredetails`
  ADD PRIMARY KEY (`poid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`skuid`),
  ADD UNIQUE KEY `products_skucode_unique` (`skucode`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`rcode`);

--
-- Indexes for table `territories`
--
ALTER TABLE `territories`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `podetails`
--
ALTER TABLE `podetails`
  MODIFY `poNo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pomoredetails`
--
ALTER TABLE `pomoredetails`
  MODIFY `poid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `skuid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `rcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `territories`
--
ALTER TABLE `territories`
  MODIFY `tcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
