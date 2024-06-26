-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 03:28 PM
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
-- Database: `dosso`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_contests`
--

CREATE TABLE `add_contests` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `enddate` varchar(255) NOT NULL,
  `registrationfees` varchar(255) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `totalspin` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `joinmembers` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_contests`
--

INSERT INTO `add_contests` (`id`, `title`, `startdate`, `enddate`, `registrationfees`, `totalprice`, `totalspin`, `thumbnail`, `joinmembers`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SHAGUN51-2425001', '2024-05-03', '2024-05-05', '51', '7650000', '7', '1714725337.png', '151000', '2', '2024-05-03 03:05:37', '2024-05-07 04:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `add_shows`
--

CREATE TABLE `add_shows` (
  `id` int(11) NOT NULL,
  `adstitle` varchar(255) NOT NULL,
  `displayshow` varchar(255) NOT NULL,
  `url` text NOT NULL DEFAULT '0',
  `redirectlink` text NOT NULL,
  `mediatype` varchar(255) NOT NULL,
  `addimage` text DEFAULT NULL,
  `videourl` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_shows`
--

INSERT INTO `add_shows` (`id`, `adstitle`, `displayshow`, `url`, `redirectlink`, `mediatype`, `addimage`, `videourl`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Win Price', 'home', '0', 'google.com', 'image', '1714807678.png', '0', '0', '2024-05-04 01:57:58', '2024-05-04 01:57:58'),
(3, 'Mega Contest', 'home', '0', 'google.com', 'image', '1714807762.png', '0', '0', '2024-05-04 01:59:22', '2024-05-04 01:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_vendors`
--

CREATE TABLE `admin_vendors` (
  `id` int(11) NOT NULL,
  `vendorname` varchar(255) NOT NULL,
  `vendorprofile` text NOT NULL,
  `schoolname` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `referidvendor` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_vendors`
--

INSERT INTO `admin_vendors` (`id`, `vendorname`, `vendorprofile`, `schoolname`, `contactno`, `emailaddress`, `password`, `referidvendor`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kishan', '1714808062.png', 'digitals', '5895645896', 'ans@gmail.com', '$2y$12$68HlP8PCTPQx1V5UsFBmI.Tm/AadmnPDlW2TlGm.xjXpslCax5Qf6', '0', '0', '2024-05-04 02:04:23', '2024-05-04 02:04:23'),
(2, 'Anshul', '1714808148.png', 'digitals', '5895645856', 'admin@gmail.com', '$2y$12$mhpv4qeKOYvFZxtLAQ3DZ.Ix9c1SCzyMYBU5vEGqS4HFXxxAiTtXW', '0', '0', '2024-05-04 02:05:48', '2024-05-04 02:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `balance_sheets`
--

CREATE TABLE `balance_sheets` (
  `id` int(11) NOT NULL,
  `contestid` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `paymode` varchar(255) NOT NULL,
  `paymentid` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `balance_sheets`
--

INSERT INTO `balance_sheets` (`id`, `contestid`, `userid`, `username`, `date`, `amount`, `paymode`, `paymentid`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '101', 'dummy', '15th-May-2024', '20000', 'online', 'ABC12', '0', '2024-05-15 10:26:38', '2024-05-15 10:26:38'),
(2, '1', '101', 'dummy', '15th-May-2024', '50000', 'online', 'ABC12', '0', '2024-05-15 10:26:38', '2024-05-15 10:26:38'),
(3, '4', '101', 'dummy', '15th-May-2024', '50000', 'online', 'ABC12', '0', '2024-05-15 10:26:38', '2024-05-15 10:26:38'),
(6, '1', '0', 'megatrons', '2nd July', '4000', 'Cash', '0001AD', '0', '2024-05-15 06:56:53', '2024-05-15 06:56:53'),
(7, '2', '10', 'autobots', '7nd July', '40800', 'Online', '0001AD', '0', '2024-05-15 07:03:36', '2024-05-15 07:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `contest_spins`
--

CREATE TABLE `contest_spins` (
  `id` int(11) NOT NULL,
  `contestid` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `spin` varchar(255) NOT NULL,
  `spindur` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contest_spins`
--

INSERT INTO `contest_spins` (`id`, `contestid`, `userid`, `spin`, `spindur`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '10', '5', '10s', '0', '2024-05-15 07:51:57', '2024-05-15 07:51:57'),
(2, '2', '105', '10', '110s', '0', '2024-05-15 07:57:12', '2024-05-15 07:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `create_rounds`
--

CREATE TABLE `create_rounds` (
  `id` int(11) NOT NULL,
  `contestid` varchar(255) NOT NULL,
  `roundstage` varchar(255) NOT NULL,
  `totalspins` varchar(255) NOT NULL,
  `winners` varchar(255) NOT NULL,
  `wonby` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `create_rounds`
--

INSERT INTO `create_rounds` (`id`, `contestid`, `roundstage`, `totalspins`, `winners`, `wonby`, `created_at`, `updated_at`) VALUES
(20, '1', '2', '5', '300', NULL, '2024-04-08 07:38:03', '2024-04-08 07:38:03'),
(21, '3', '2', '7', '4000', NULL, '2024-04-08 23:16:17', '2024-04-08 23:16:17'),
(22, '4', '1', '7', '200', NULL, '2024-04-10 07:03:08', '2024-04-10 07:03:08'),
(23, '1', '3', '3', '500', NULL, '2024-04-10 07:13:56', '2024-04-10 07:13:56');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_05_03_060326_create_sessions_table', 1);

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
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'MyApp', '301e756dd8dfe71846551878ac3cc3182034e42f0850ac8971509b3273f87986', '[\"*\"]', NULL, NULL, '2024-04-10 02:21:07', '2024-04-10 02:21:07'),
(2, 'App\\Models\\User', 2, 'MyApp', 'fa26c5a558cfaf6ebbd8934b8930d87998d77e8ad80cd7cf6608300d7df9a088', '[\"*\"]', NULL, NULL, '2024-04-10 02:22:38', '2024-04-10 02:22:38'),
(3, 'App\\Models\\User', 4, 'MyApp', '76b2caa094032baf86049ab0efb3ab91b85b43c9e9fc66f312965348b36d9c94', '[\"*\"]', NULL, NULL, '2024-04-10 02:28:11', '2024-04-10 02:28:11'),
(4, 'App\\Models\\User', 6, 'MyApp', 'ee6c69b7daeffc1594b5569a3e347192efa13a01e511a0e667c61d40fd2e2b11', '[\"*\"]', NULL, NULL, '2024-04-10 02:44:01', '2024-04-10 02:44:01'),
(5, 'App\\Models\\User', 9, 'MyApp', '8321f742ccf6e55038ea95b05d84ae99d53c57489bc7a385c31bad2abd3661c0', '[\"*\"]', NULL, NULL, '2024-04-10 03:47:15', '2024-04-10 03:47:15'),
(6, 'App\\Models\\Students', 10006, 'MyApp', '562ee5ed98d465a08ebd6f2d34f145551f3c697233d1f9b21b98de512537e95e', '[\"*\"]', NULL, NULL, '2024-04-10 04:19:26', '2024-04-10 04:19:26'),
(7, 'App\\Models\\Students', 10007, 'MyApp', '300e9f721f416cc7eef9b70a3c31ac157c038a75241dfde94ce84b141938191a', '[\"*\"]', NULL, NULL, '2024-04-10 04:21:55', '2024-04-10 04:21:55'),
(8, 'App\\Models\\Students', 10007, 'MyApp', '79b3147632d7bda8b51fb45829395e43c9c0a7af86aa42323ce7040b5fa6e054', '[\"*\"]', NULL, NULL, '2024-04-10 05:27:22', '2024-04-10 05:27:22'),
(9, 'App\\Models\\Students', 10008, 'MyApp', '8da87bba1e2687fcaeb2eb8db45898d5e26ce8abfc766f07e074d2230ec4d896', '[\"*\"]', NULL, NULL, '2024-04-10 06:37:19', '2024-04-10 06:37:19'),
(10, 'App\\Models\\Students', 10007, 'MyApp', '7998c71fac38f466cfcac96c0cd6236e267e6c9f07a0ae8d62d92b52c2b72a7a', '[\"*\"]', NULL, NULL, '2024-04-10 06:52:23', '2024-04-10 06:52:23'),
(11, 'App\\Models\\Students', 10007, 'MyApp', 'd6d9e573e17b8e4b93ce9b81f83ce017ef4f0639f29330a777e5a277c98febb4', '[\"*\"]', NULL, NULL, '2024-04-10 06:53:06', '2024-04-10 06:53:06'),
(12, 'App\\Models\\Students', 10007, 'MyApp', '954b57dde2b7783447686cfa76c812ef41cb651ada2f3514b20ea6b769c7e861', '[\"*\"]', NULL, NULL, '2024-04-10 06:53:44', '2024-04-10 06:53:44'),
(13, 'App\\Models\\Students', 10010, 'MyApp', '31bdddcd56cdb0e4cac373a64699087b406d11150c49445f30387826801513b3', '[\"*\"]', NULL, NULL, '2024-04-11 00:09:46', '2024-04-11 00:09:46'),
(14, 'App\\Models\\Students', 10007, 'MyApp', '0dee144eff7f0a5d5637cca91d67fd8aa067b4da72edce77902082fdd7f62710', '[\"*\"]', NULL, NULL, '2024-04-11 00:11:18', '2024-04-11 00:11:18'),
(15, 'App\\Models\\Students', 10010, 'MyApp', 'ea8d172ec65900066519a6c85368f7dcc262f53347328bd82054c383a3e6966c', '[\"*\"]', NULL, NULL, '2024-04-11 00:12:03', '2024-04-11 00:12:03'),
(16, 'App\\Models\\Students', 10011, 'MyApp', 'c763fcdb891fa2dca739ec89a19ce66cce074ee578e6cda7d74223d16cf9cead', '[\"*\"]', NULL, NULL, '2024-04-14 23:54:26', '2024-04-14 23:54:26'),
(17, 'App\\Models\\Students', 10012, 'MyApp', '38053979312bc7830a37ed1c2577e5b46ea30e2c5ffe34f55f1e623d2a1cf5b2', '[\"*\"]', NULL, NULL, '2024-05-07 05:14:24', '2024-05-07 05:14:24'),
(18, 'App\\Models\\Students', 10013, 'MyApp', 'c4baf3c8b52984026c2dd5692056cb8fee9800a42fbda2ec512a747c1e8e7884', '[\"*\"]', NULL, NULL, '2024-05-07 05:18:57', '2024-05-07 05:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `player_spins`
--

CREATE TABLE `player_spins` (
  `id` int(11) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `contestid` varchar(255) NOT NULL,
  `spinnumber` varchar(255) NOT NULL,
  `spinvalue` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `play_contests`
--

CREATE TABLE `play_contests` (
  `id` int(11) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `contestid` varchar(255) NOT NULL,
  `conteststatus` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `winningprice` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `play_contests`
--

INSERT INTO `play_contests` (`id`, `studentid`, `contestid`, `conteststatus`, `rank`, `winningprice`, `status`, `created_at`, `updated_at`) VALUES
(1, '10012', '1', '2', '5', '2000', '1', '2024-05-08 06:00:35', '2024-05-08 06:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `studentId` varchar(255) NOT NULL,
  `contestId` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `point`, `studentId`, `contestId`, `created_at`, `updated_at`) VALUES
(1, 500, '21', '12', '2024-05-03 07:17:06', '2024-05-03 07:17:06'),
(2, 600, '12', '129', '2024-05-03 07:19:40', '2024-05-03 07:19:40'),
(4, 9000, '88', '8', '2024-05-03 07:31:57', '2024-05-03 07:31:57');

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
('Ko6qQI2FrIMR9IG6Va81wP8IJrsk7MIUhGeLVrql', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQWJ2Q0Q3OHZFU3EwalZwYkZ0a01rblgwak1WWG5FM0JSTWtCMjFZNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9iYWxhbmNoZXNoZWV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiR3bDlsRi5vcWdMQmV4LnZRWmk4SWJ1MnRwYUQvNEZDdGtwTGFVUWFLRTFNNWY0emVKdjEwNiI7fQ==', 1715779026);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `studentname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `school_universityname` varchar(255) DEFAULT NULL,
  `studentidimage` varchar(255) DEFAULT NULL,
  `aadharcardnumber` varchar(255) DEFAULT NULL,
  `aadharimage` text DEFAULT NULL,
  `contactnumber` varchar(255) DEFAULT NULL,
  `emailaddress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `referbyId` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `studentprofile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studentname`, `username`, `education`, `school_universityname`, `studentidimage`, `aadharcardnumber`, `aadharimage`, `contactnumber`, `emailaddress`, `city`, `state`, `pin`, `password`, `referbyId`, `status`, `studentprofile`, `created_at`, `updated_at`) VALUES
(10007, 'XYZ', 'xyz_456789', 'null', 'null', 'null', 'null', 'null', '0000000000', 'xyz@gmail.com', 'null', 'null', 'null', '$2y$12$/98IBEn9LB0dhGshbjPEaOvNqHGKBdAgCR.MHQJJfgfdeGJQwv7tG', 'null', '0', 'null', '2024-04-10 04:21:55', '2024-04-11 00:11:18'),
(10008, 'null', 'noizy_123', 'null', 'null', 'null', 'null', 'null', '0000000000', 'noizy@gmail.com', 'null', 'null', 'null', '$2y$12$OLrtDaOZPZiGaMhJkmlY7uGRGySE6EJ9pDRQlJvfKmp5gL.Ywm5fa', 'null', '0', 'null', '2024-04-10 06:37:19', '2024-04-10 06:37:19'),
(10010, 'XYZ', 'xyz_11', 'null', 'null', 'null', 'null', 'null', '0000000000', 'xyz@gmail.com', 'null', 'null', 'null', '$2y$12$PKjat7ob02.gpYCo7KYQ8OtL3cdA6Pa/FPecpG2HLBlewqHFrTCQG', 'null', '0', 'null', '2024-04-11 00:09:46', '2024-04-11 00:12:03'),
(10011, 'null', 'noizy_12378895645', 'null', 'null', 'null', '555555555555', 'null', '6522525948', 'uuu@gmail.com', 'null', 'null', 'null', '$2y$12$Wopg7YlJhRa2/S1Ob6peVOXL7hn0JetjIDOZoiJQdsZP6Rh8dSdG6', 'null', '0', 'null', '2024-04-14 23:54:26', '2024-04-14 23:54:26'),
(10012, 'Anshhhhh', 'ansh_88', NULL, NULL, NULL, NULL, NULL, '548554548', 'dosso@gmail.com', NULL, NULL, NULL, '$2y$12$EKZ0MgfjS6FGVEoWmOiy0.x9mz7RFyANFY1IlJydGm5IrreYySIWG', '0001ADMIN', '0', NULL, '2024-05-07 05:14:24', '2024-05-07 05:14:24'),
(10013, 'Anshhhhh', 'ansh_88666', NULL, NULL, NULL, NULL, NULL, '5485548', 'dosso22@gmail.com', NULL, NULL, NULL, '$2y$12$UvbP6Pyazk9NZCGSUp/8BuWw5giwRt4pGiKOJkZUeUI/BL/8Vg.hm', '0001ADMIN', '0', NULL, '2024-05-07 05:18:57', '2024-05-07 05:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'ans@gmail.com', NULL, '$2y$12$wl9lF.oqgLBex.vQZi8Ibu2tpaD/4FCtkpLaUQaKE1M5f4zeJv106', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-04 05:31:05', '2024-04-04 05:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `transactionid` varchar(255) NOT NULL,
  `credit` float NOT NULL,
  `debit` float NOT NULL,
  `transactiontype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `winzone`
--

CREATE TABLE `winzone` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `winzone`
--

INSERT INTO `winzone` (`id`, `start`, `end`, `title`, `price`, `status`, `created_at`, `update_at`) VALUES
(1, 1, 1, 'RANK WINNER', 500000, 1, '2024-05-03 08:40:56', '2024-05-03 08:40:56'),
(2, 2, 2, 'RANK WINNER', 300000, 1, '2024-05-03 08:41:30', '2024-05-03 08:41:30'),
(3, 3, 3, 'RANK WINNER', 100000, 1, '2024-05-03 08:41:56', '2024-05-03 08:41:56'),
(4, 4, 10, 'RANK WINNER', 21000, 1, '2024-05-03 08:42:31', '2024-05-03 08:42:31'),
(5, 11, 221, 'RANK WINNER', 2100, 1, '2024-05-03 08:54:31', '2024-05-03 08:54:31'),
(6, 222, 40000, 'RANK WINNER', 51, 1, '2024-05-03 09:01:23', '2024-05-03 09:01:23'),
(7, 151000, 151000, 'RANK WINNER', 100000, 1, '2024-05-03 09:03:36', '2024-05-03 09:03:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_contests`
--
ALTER TABLE `add_contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_shows`
--
ALTER TABLE `add_shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_vendors`
--
ALTER TABLE `admin_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_sheets`
--
ALTER TABLE `balance_sheets`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contest_spins`
--
ALTER TABLE `contest_spins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_rounds`
--
ALTER TABLE `create_rounds`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `player_spins`
--
ALTER TABLE `player_spins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_contests`
--
ALTER TABLE `play_contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winzone`
--
ALTER TABLE `winzone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_contests`
--
ALTER TABLE `add_contests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_shows`
--
ALTER TABLE `add_shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_vendors`
--
ALTER TABLE `admin_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `balance_sheets`
--
ALTER TABLE `balance_sheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contest_spins`
--
ALTER TABLE `contest_spins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10014;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `winzone`
--
ALTER TABLE `winzone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
