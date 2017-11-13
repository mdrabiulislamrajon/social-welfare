-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table social-welfare.applications
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `type_id` int(11) NOT NULL,
  `reason` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `vacation_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.applications: ~1 rows (approximately)
DELETE FROM `applications`;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` (`id`, `user_id`, `type_id`, `reason`, `no_of_days`, `start_date`, `end_date`, `vacation_address`, `status`, `created_at`, `updated_at`) VALUES
	(4, 19, 1, 'Advance Leave', 3, '2017-11-14 00:00:00', '2017-11-16 00:00:00', 'Faridpur', 1, '2017-11-13 13:39:12', '2017-11-13 13:40:18'),
	(5, 19, 1, 'Advance Leave', 2, '2017-11-23 00:00:00', '2017-11-24 00:00:00', 'Faridpur', 0, '2017-11-13 15:12:39', '2017-11-13 15:13:51');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;

-- Dumping structure for table social-welfare.approvals
CREATE TABLE IF NOT EXISTS `approvals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.approvals: ~8 rows (approximately)
DELETE FROM `approvals`;
/*!40000 ALTER TABLE `approvals` DISABLE KEYS */;
INSERT INTO `approvals` (`id`, `application_id`, `role_id`, `notes`, `approved`, `is_read`, `is_visible`, `created_at`, `updated_at`) VALUES
	(5, 2, 1, NULL, 1, 1, 1, '2017-10-18 14:49:48', '2017-10-18 14:56:47'),
	(6, 2, 11, NULL, 1, 1, 1, '2017-10-18 14:49:48', '2017-10-18 14:51:07'),
	(7, 2, 12, NULL, 1, 1, 1, '2017-10-18 14:49:48', '2017-10-18 14:50:37'),
	(8, 3, 1, NULL, 1, 1, 1, '2017-10-18 14:52:13', '2017-10-18 14:58:46'),
	(9, 3, 11, NULL, 1, 1, 1, '2017-10-18 14:52:13', '2017-10-18 14:55:10'),
	(10, 3, 12, NULL, 1, 1, 1, '2017-10-18 14:52:13', '2017-10-18 14:54:49'),
	(11, 3, 13, NULL, 1, 1, 1, '2017-10-18 14:52:13', '2017-10-18 14:52:31'),
	(12, 4, 1, NULL, 1, 1, 1, '2017-11-13 13:39:12', '2017-11-13 13:40:18'),
	(13, 5, 1, 'You Must stay.', 2, 1, 1, '2017-11-13 15:12:39', '2017-11-13 15:13:51');
/*!40000 ALTER TABLE `approvals` ENABLE KEYS */;

-- Dumping structure for table social-welfare.authorizations
CREATE TABLE IF NOT EXISTS `authorizations` (
  `role_id` int(10) unsigned NOT NULL,
  `authorizer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`authorizer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.authorizations: ~18 rows (approximately)
DELETE FROM `authorizations`;
/*!40000 ALTER TABLE `authorizations` DISABLE KEYS */;
INSERT INTO `authorizations` (`role_id`, `authorizer_id`) VALUES
	(1, 1),
	(11, 1),
	(12, 1),
	(12, 11),
	(13, 1),
	(13, 11),
	(13, 12),
	(14, 1),
	(14, 11),
	(14, 12),
	(14, 13),
	(15, 1),
	(15, 11),
	(15, 12),
	(15, 13),
	(16, 1),
	(18, 1),
	(19, 1);
/*!40000 ALTER TABLE `authorizations` ENABLE KEYS */;

-- Dumping structure for table social-welfare.leaves
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` timestamp NULL DEFAULT NULL,
  `to_date` timestamp NULL DEFAULT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.leaves: ~3 rows (approximately)
DELETE FROM `leaves`;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` (`id`, `title`, `from_date`, `to_date`, `year`, `created_at`, `updated_at`) VALUES
	(1, 'দূর্গা পূজা', '2017-09-30 00:00:00', '2017-09-30 00:00:00', 2017, '2017-09-16 11:51:15', '2017-09-16 11:51:15'),
	(2, 'ঈদ-উল-আজহা', '2017-09-02 00:00:00', '2017-09-04 00:00:00', 2017, '2017-09-16 11:52:01', '2017-09-16 11:52:01'),
	(3, 'মুহাররম', '2017-10-01 00:00:00', '2017-10-01 00:00:00', 2017, '2017-09-24 13:49:38', '2017-09-24 13:49:40');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;

-- Dumping structure for table social-welfare.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.migrations: ~8 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2017_08_04_231054_create_leaves_table', 1),
	(9, '2014_10_12_000000_create_users_table', 2),
	(10, '2014_10_12_100000_create_password_resets_table', 2),
	(11, '2017_07_31_152028_create_sessions_table', 2),
	(12, '2017_08_03_124036_create_applications_table', 2),
	(13, '2017_08_13_121744_create_roles_table', 2),
	(14, '2017_08_15_230700_create_authorizations_table', 2),
	(15, '2017_09_12_130736_create_approvals_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table social-welfare.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table social-welfare.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT 0,
  `_rgt` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.roles: ~4 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `text`, `slug`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'সিচব', 'সিচব', 'dg', 1, 40, NULL, '2017-09-15 15:29:18', '2017-11-13 12:17:48'),
	(11, 'অতিরিক্ত সচিব', 'অতিরিক্ত সচিব', 'director', 20, 29, 1, '2017-10-08 16:55:03', '2017-11-13 12:21:05'),
	(16, 'যুগ্ম সচিব', 'যুগ্ম সচিব', 'js', 32, 33, 1, '2017-11-13 12:27:21', '2017-11-13 12:27:21'),
	(18, 'উপসিচব', 'উপসিচব', 'ds', 36, 37, 1, '2017-11-13 12:28:58', '2017-11-13 12:28:58'),
	(19, 'সহকারী সচিব', 'সহকারী সচিব', '', 38, 39, 1, '2017-11-13 12:31:39', '2017-11-13 12:31:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table social-welfare.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.sessions: ~1 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('VOQUJfKrUOxMLGhNqNDyZ6CUAQjQmT9DJxJUEupp', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'YTo1OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoia0tLZ1pmdXBEMW5mMkZvT3F6ckRSNGhUYldTdGVZMGg5Rmo1WUJkQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9zb2NpYWwtd2VsZmFyZS5kZXY6ODAwMC9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTk7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1510568634);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table social-welfare.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fa_hu_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL DEFAULT 1,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male',
  `join_date` timestamp NULL DEFAULT NULL,
  `div_br_off` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table social-welfare.users: ~4 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `fa_hu_name`, `mother_name`, `profile_pic`, `signature`, `mobile`, `role_id`, `type`, `password`, `active`, `gender`, `join_date`, `div_br_off`, `designation`, `remember_token`, `created_at`, `updated_at`) VALUES
	(8, 'মোঃ জিল্লার রহমান', 'No Needs', 'No needs', NULL, NULL, '01734180035', 1, 'admin', '$2y$10$8SZRmK72v2XdxZcJNmKahuq3M/KneEjY6R.N9A7apoojzjQuE761u', 1, 'male', '2010-10-08 00:00:00', 'Motijheel', 'Charman', 'SghFNTXc5C33drQLFm4Tp0hgOPqUC8h0dpim9SdgwNM0BNyiLTbkthWHI3LN', '2017-10-08 16:33:13', '2017-11-13 12:39:55'),
	(16, 'খন্দকার আতিয়ার রহমান', 'প্রয়োজন নেই', 'প্রয়োজন নেই', NULL, NULL, '01734180036', 11, 'regular', '$2y$10$zZ8v/CutnTw4y1sY2bkDbOswCVcEydx2rhPmpkBvuJzyO2iA7bzYm', 1, 'male', '2017-11-01 00:00:00', 'Motijheel', '', NULL, '2017-11-13 12:39:15', '2017-11-13 12:39:15'),
	(17, 'সাইদা নাইম জাহান', 'প্রয়োজন নেই', 'প্রয়োজন নেই', NULL, NULL, '01734180037', 16, 'regular', '$2y$10$ZTtuH/22LcOgHWiCF9rlbuwrFLvzfxf/6TNMfaS1uQhlzyBijfenO', 1, 'female', '2017-11-01 00:00:00', 'Motijheel', '', NULL, '2017-11-13 12:41:38', '2017-11-13 12:41:38'),
	(18, 'মোঃ  আবু মাসুদ', 'প্রয়োজন নেই', 'প্রয়োজন নেই', NULL, NULL, '01734180038', 18, 'regular', '$2y$10$SR4vN3bxv7/83zGup4ekZ.8mJ/mKsF4Fz3qqXtk5J59IDKeX9vGbm', 1, 'male', '2017-11-01 00:00:00', 'Motijheel', '', NULL, '2017-11-13 12:45:13', '2017-11-13 12:45:13'),
	(19, 'মোহাম্মদ নূরুল ইসলাম', 'প্রয়োজন নেই', 'প্রয়োজন নেই', NULL, NULL, '01734180039', 19, 'regular', '$2y$10$3KWhVqIvIMsvugV8nHhkJ.ra0hBXPnySuUwIv99GyNZs5bvbde.3.', 1, 'male', '2017-11-01 00:00:00', 'Motijheel', '', 'xUoandfQjNy5bMmhqLFPyzwZGd86lKHWGBUDECxMbQ2lxk4w8xioLyk55yNs', '2017-11-13 12:48:50', '2017-11-13 12:48:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
