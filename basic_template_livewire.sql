-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2024 at 03:46 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basic_template_livewire`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:5:\"order\";s:1:\"c\";s:4:\"name\";s:1:\"d\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";s:1:\"j\";s:6:\"status\";}s:11:\"permissions\";a:12:{i:0;a:5:{s:1:\"a\";s:36:\"63adb5c8-a1f6-466a-978a-e6316be83e50\";s:1:\"b\";i:4;s:1:\"c\";s:16:\"edit permissions\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:1;a:5:{s:1:\"a\";s:36:\"37f65209-62f0-470f-b77e-e85e20d709d0\";s:1:\"b\";i:3;s:1:\"c\";s:18:\"create permissions\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:2;a:5:{s:1:\"a\";s:36:\"8723dee7-3c27-418b-b3c7-14a588de585c\";s:1:\"b\";i:5;s:1:\"c\";s:16:\"show permissions\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:3;a:5:{s:1:\"a\";s:36:\"8e947b9f-36c4-4a2d-be18-c3ced1195679\";s:1:\"b\";i:6;s:1:\"c\";s:12:\"create roles\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:4;a:5:{s:1:\"a\";s:36:\"09bf3409-c73f-4e22-acc8-4237fc18bb96\";s:1:\"b\";i:7;s:1:\"c\";s:10:\"edit roles\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:5;a:5:{s:1:\"a\";s:36:\"e5fe628f-ca1d-47d7-8b34-e306b1b04306\";s:1:\"b\";i:8;s:1:\"c\";s:12:\"delete roles\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:6;a:5:{s:1:\"a\";s:36:\"df5137db-5f54-4048-a177-612d51a71590\";s:1:\"b\";i:9;s:1:\"c\";s:10:\"show roles\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:7;a:4:{s:1:\"a\";s:36:\"8dfa46c7-9049-421d-af47-be6577bd338a\";s:1:\"b\";i:10;s:1:\"c\";s:18:\"delete permissions\";s:1:\"d\";s:3:\"web\";}i:8;a:5:{s:1:\"a\";s:36:\"c9c14260-302a-4224-b896-bb32da7e85be\";s:1:\"b\";i:11;s:1:\"c\";s:12:\"create users\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:9;a:5:{s:1:\"a\";s:36:\"b6722628-41e6-43e4-830f-7c48654ba18e\";s:1:\"b\";i:12;s:1:\"c\";s:10:\"edit users\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:10;a:5:{s:1:\"a\";s:36:\"d0d6f8ba-012e-4402-a235-061b3715080c\";s:1:\"b\";i:13;s:1:\"c\";s:12:\"delete users\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}i:11;a:5:{s:1:\"a\";s:36:\"d955cadb-be94-4d2d-be9f-0849d21ee855\";s:1:\"b\";i:14;s:1:\"c\";s:10:\"show users\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";}}}s:5:\"roles\";a:1:{i:0;a:5:{s:1:\"a\";s:36:\"81493cd7-f89f-405d-86f4-8fd5b74a14af\";s:1:\"b\";i:1;s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:3:\"web\";s:1:\"j\";s:1:\"1\";}}}', 1724945904);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '0001_01_01_000000_create_users_table', 1),
(56, '0001_01_01_000001_create_cache_table', 1),
(57, '0001_01_01_000002_create_jobs_table', 1),
(58, '2024_08_27_141015_add_two_factor_columns_to_users_table', 1),
(59, '2024_08_27_141048_create_personal_access_tokens_table', 1),
(60, '2024_08_27_163828_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
('81493cd7-f89f-405d-86f4-8fd5b74a14af', 'App\\Models\\User', '0e27bd38-e8b2-487e-9fad-b52962c858d1');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `order`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
('63adb5c8-a1f6-466a-978a-e6316be83e50', 4, 'edit permissions', 'web', '2024-08-28 10:32:16', '2024-08-28 10:33:38'),
('37f65209-62f0-470f-b77e-e85e20d709d0', 3, 'create permissions', 'web', '2024-08-28 10:31:50', '2024-08-28 10:33:28'),
('8723dee7-3c27-418b-b3c7-14a588de585c', 5, 'show permissions', 'web', '2024-08-28 10:33:01', '2024-08-28 10:33:50'),
('8e947b9f-36c4-4a2d-be18-c3ced1195679', 6, 'create roles', 'web', '2024-08-28 10:34:13', '2024-08-28 10:34:13'),
('09bf3409-c73f-4e22-acc8-4237fc18bb96', 7, 'edit roles', 'web', '2024-08-28 10:34:25', '2024-08-28 10:34:25'),
('e5fe628f-ca1d-47d7-8b34-e306b1b04306', 8, 'delete roles', 'web', '2024-08-28 10:34:45', '2024-08-28 10:34:45'),
('df5137db-5f54-4048-a177-612d51a71590', 9, 'show roles', 'web', '2024-08-28 10:35:27', '2024-08-28 10:35:27'),
('8dfa46c7-9049-421d-af47-be6577bd338a', 10, 'delete permissions', 'web', '2024-08-28 10:35:36', '2024-08-28 10:35:36'),
('c9c14260-302a-4224-b896-bb32da7e85be', 11, 'create users', 'web', '2024-08-28 10:37:51', '2024-08-28 10:37:51'),
('b6722628-41e6-43e4-830f-7c48654ba18e', 12, 'edit users', 'web', '2024-08-28 10:37:58', '2024-08-28 10:37:58'),
('d0d6f8ba-012e-4402-a235-061b3715080c', 13, 'delete users', 'web', '2024-08-28 10:38:14', '2024-08-28 10:38:14'),
('d955cadb-be94-4d2d-be9f-0849d21ee855', 14, 'show users', 'web', '2024-08-28 10:38:23', '2024-08-28 10:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `order`, `name`, `guard_name`, `status`, `created_at`, `updated_at`) VALUES
('81493cd7-f89f-405d-86f4-8fd5b74a14af', 1, 'admin', 'web', '1', '2024-08-28 06:39:19', '2024-08-28 06:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
('09bf3409-c73f-4e22-acc8-4237fc18bb96', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('37f65209-62f0-470f-b77e-e85e20d709d0', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('63adb5c8-a1f6-466a-978a-e6316be83e50', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('8723dee7-3c27-418b-b3c7-14a588de585c', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('8e947b9f-36c4-4a2d-be18-c3ced1195679', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('b6722628-41e6-43e4-830f-7c48654ba18e', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('c9c14260-302a-4224-b896-bb32da7e85be', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('d0d6f8ba-012e-4402-a235-061b3715080c', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('d955cadb-be94-4d2d-be9f-0849d21ee855', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('df5137db-5f54-4048-a177-612d51a71590', '81493cd7-f89f-405d-86f4-8fd5b74a14af'),
('e5fe628f-ca1d-47d7-8b34-e306b1b04306', '81493cd7-f89f-405d-86f4-8fd5b74a14af');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('yPi3K4tpfjeYqeYWk0Yg8ShezCp3z14Tv5vxNWwc', '20cec801-8f07-4469-ac51-b53684de21c8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoibWVMU0FEYU15NFNzNEJvZ0hhZTBZMU9reWNueGVIV2N1enpENlBrZSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7czozNjoiMjBjZWM4MDEtOGYwNy00NDY5LWFjNTEtYjUzNjg0ZGUyMWM4IjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGtOUmZrbmF0WDltSGdsWW0uN1VoV2VjanA5WXM1LzF1SnYuS3piVEQ3bDNCSTZpM3QuUGNTIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRrTlJma25hdFg5bUhnbFltLjdVaFdlY2pwOVlzNS8xdUp2Lkt6YlREN2wzQkk2aTN0LlBjUyI7czo4OiJmaWxhbWVudCI7YTowOnt9czo2OiJ0YWJsZXMiO2E6MTp7czoyNDoiTGlzdFBlcm1pc3Npb25zX3Blcl9wYWdlIjtzOjE6IjUiO319', 1724859972);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `order` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`order`, `id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `status`, `created_at`, `updated_at`) VALUES
(1, '20cec801-8f07-4469-ac51-b53684de21c8', 'Jawad Maqbool', 'jawadmaqbool3@gmail.com', NULL, '$2y$12$kNRfknatX9mHglYm.7UhWecjp9Ys5/1uJv.KzbTD7l3BI6i3t.PcS', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-28 06:37:55', '2024-08-28 06:37:55'),
(2, '0e27bd38-e8b2-487e-9fad-b52962c858d1', 'Reece Jarvis', 'pata@mailinator.com', NULL, '$2y$12$fy4krXsJsmT66acF4g2CH.jHWGMuVyojOdu6ZD123wX7ixKcXNlr6', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-08-28 08:02:52', '2024-08-28 08:02:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
