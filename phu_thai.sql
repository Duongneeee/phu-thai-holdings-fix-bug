-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 08, 2022 lúc 10:19 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phu_thai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE IF NOT EXISTS `activations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'q3OkJgvG2rtG5fgX5kzLAVA26pdw1R2x', 1, '2022-04-02 10:42:41', '2022-04-02 10:42:41', '2022-04-02 10:42:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-04-02 10:48:52', '2022-04-02 10:48:52'),
(2, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-04-02 10:49:05', '2022-04-02 10:49:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE IF NOT EXISTS `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
CREATE TABLE IF NOT EXISTS `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(2, 'widget_total_users', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(3, 'widget_total_pages', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(4, 'widget_total_plugins', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(5, 'widget_posts_recent', '2022-04-02 10:50:35', '2022-04-02 10:50:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
CREATE TABLE IF NOT EXISTS `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
-- Cấu trúc bảng cho bảng `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
CREATE TABLE IF NOT EXISTS `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `field_items`
--

DROP TABLE IF EXISTS `field_items`;
CREATE TABLE IF NOT EXISTS `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0),
(2, 'English', 'en', 'en_US', 'us', 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
CREATE TABLE IF NOT EXISTS `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'vi', '2d2414b9da17407e8aa7ec97e3b9251a', 1, 'Botble\\Blog\\Models\\Category'),
(2, 'en_US', '2d2414b9da17407e8aa7ec97e3b9251a', 2, 'Botble\\Blog\\Models\\Category'),
(3, 'vi', '5af3be852deae1d02e05b2028997323a', 1, 'Botble\\Blog\\Models\\Post'),
(4, 'vi', '4e786c5c2d79a562e8ac2d7d21b07157', 2, 'Botble\\Blog\\Models\\Post'),
(5, 'vi', 'c42b512661cbadfdf26ecc9c287e8ec7', 3, 'Botble\\Blog\\Models\\Post');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_files`
--

DROP TABLE IF EXISTS `media_files`;
CREATE TABLE IF NOT EXISTS `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'news-dt-1', 0, 'image/jpeg', 388334, 'news-dt-1.jpg', '[]', '2022-06-08 00:02:59', '2022-06-08 00:02:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE IF NOT EXISTS `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
CREATE TABLE IF NOT EXISTS `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
CREATE TABLE IF NOT EXISTS `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE IF NOT EXISTS `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
CREATE TABLE IF NOT EXISTS `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2021_12_26_024330_update_theme_options_social_links', 1),
(22, '2016_06_17_091537_create_contacts_table', 2),
(23, '2015_06_18_033822_create_blog_table', 3),
(24, '2021_02_16_092633_remove_default_value_for_author_type', 3),
(25, '2021_12_03_030600_create_blog_translations', 3),
(26, '2017_03_27_150646_re_create_custom_field_tables', 4),
(27, '2016_10_03_032336_create_languages_table', 5),
(28, '2016_10_07_193005_create_translations_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Phu Thai Group officially became the exclusive distributor for Truong Tho seaweed products', 'On January 10, 2022, Phu Thai Group officially cooperated with Seagrapes Vietnam Co., Ltd - the only Vietnamese grape seaweed brand registered for trademark protection in the US (USPTO) - becoming the exclusive distributor of Vietnam. rights at supermarkets and retail outlets nationwide.', '<p><img src=\"http://tpl.nvtrongmedia.com/phu-thai/images/news-dt-1.jpg\" alt=\"\"></p><p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology for more than 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron… suitable for all users. In addition, this is the product line with the natural scent of the ocean and the highest blooming ratio of up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p><p><img src=\"http://tpl.nvtrongmedia.com/phu-thai/images/news-dt-1.jpg\" alt=\"\"></p><p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology for more than 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron… suitable for all users. In addition, this is the product line with the natural scent of the ocean and the highest blooming ratio of up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news-dt-1.jpg', 1, NULL, '2022-06-08 00:03:36', '2022-06-08 00:03:39'),
(2, 'Phu Thai Group officially became the exclusive distributor for Truong Tho seaweed products', 'On January 10, 2022, Phu Thai Group officially cooperated with Seagrapes Vietnam Co., Ltd - the only Vietnamese grape seaweed brand registered for trademark protection in the US (USPTO) - becoming the exclusive distributor of Vietnam. rights at supermarkets and retail outlets nationwide.', '<p><img src=\"http://tpl.nvtrongmedia.com/phu-thai/images/news-dt-1.jpg\" alt=\"\"></p><p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology for more than 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron… suitable for all users. In addition, this is the product line with the natural scent of the ocean and the highest blooming ratio of up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p><p><img src=\"http://tpl.nvtrongmedia.com/phu-thai/images/news-dt-1.jpg\" alt=\"\"></p><p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology for more than 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron… suitable for all users. In addition, this is the product line with the natural scent of the ocean and the highest blooming ratio of up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news-dt-1.jpg', 1, NULL, '2022-06-08 03:06:20', '2022-06-08 03:06:54'),
(3, 'Phu Thai Group officially became the exclusive distributor for Truong Tho seaweed products', 'On January 10, 2022, Phu Thai Group officially cooperated with Seagrapes Vietnam Co., Ltd - the only Vietnamese grape seaweed brand registered for trademark protection in the US (USPTO) - becoming the exclusive distributor of Vietnam. rights at supermarkets and retail outlets nationwide.', '<p><img src=\"http://tpl.nvtrongmedia.com/phu-thai/images/news-dt-1.jpg\" alt=\"\"></p><p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology for more than 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron… suitable for all users. In addition, this is the product line with the natural scent of the ocean and the highest blooming ratio of up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p><p><img src=\"http://tpl.nvtrongmedia.com/phu-thai/images/news-dt-1.jpg\" alt=\"\"></p><p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology for more than 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron… suitable for all users. In addition, this is the product line with the natural scent of the ocean and the highest blooming ratio of up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news-dt-1.jpg', 0, NULL, '2022-06-08 03:06:44', '2022-06-08 03:06:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE IF NOT EXISTS `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revisions`
--

DROP TABLE IF EXISTS `revisions`;
CREATE TABLE IF NOT EXISTS `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE IF NOT EXISTS `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"blog\",\"custom-field\",\"contact\",\"translation\"]', NULL, NULL),
(2, 'admin_email', '[]', NULL, NULL),
(3, 'time_zone', 'UTC', NULL, NULL),
(4, 'locale_direction', 'ltr', NULL, NULL),
(5, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(6, 'admin_logo', '', NULL, NULL),
(7, 'admin_favicon', '', NULL, NULL),
(8, 'login_screen_backgrounds', '[]', NULL, NULL),
(9, 'admin_title', 'Areus', NULL, NULL),
(10, 'rich_editor', 'ckeditor', NULL, NULL),
(11, 'enable_change_admin_theme', '0', NULL, NULL),
(12, 'enable_cache', '0', NULL, NULL),
(13, 'cache_time', '10', NULL, NULL),
(14, 'cache_admin_menu_enable', '0', NULL, NULL),
(15, 'optimize_page_speed_enable', '0', NULL, NULL),
(16, 'google_site_verification', '', NULL, NULL),
(17, 'cache_time_site_map', '3600', NULL, NULL),
(18, 'show_admin_bar', '0', NULL, NULL),
(19, 'locale', 'vi', NULL, NULL),
(20, 'default_admin_theme', 'default', NULL, NULL),
(21, 'admin_locale_direction', 'ltr', NULL, NULL),
(22, 'language_hide_default', '1', NULL, NULL),
(23, 'language_display', 'flag', NULL, NULL),
(24, 'language_switcher_display', 'list', NULL, NULL),
(25, 'language_hide_languages', '[]', NULL, NULL),
(26, 'language_auto_detect_user_language', '0', NULL, NULL),
(27, 'language_show_default_item_if_current_version_not_existed', '0', NULL, NULL),
(28, 'theme', 'phuthai', NULL, NULL),
(29, 'permalink-botble-page-models-page', '', NULL, NULL),
(30, 'permalink-botble-blog-models-post', 'post', NULL, NULL),
(31, 'permalink-botble-blog-models-category', 'category', NULL, NULL),
(32, 'permalink-botble-blog-models-tag', 'tag', NULL, NULL),
(33, 'slug_turn_off_automatic_url_translation_into_latin', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slugs`
--

DROP TABLE IF EXISTS `slugs`;
CREATE TABLE IF NOT EXISTS `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'tin-tuc', 1, 'Botble\\Blog\\Models\\Category', 'category', '2022-04-02 10:48:52', '2022-06-08 00:03:55'),
(2, 'news', 2, 'Botble\\Blog\\Models\\Category', 'category', '2022-04-02 10:49:05', '2022-06-08 00:03:55'),
(3, 'phu-thai-group-officially-became-the-exclusive-distributor-for-truong-tho-seaweed-products', 1, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 00:03:36', '2022-06-08 00:03:55'),
(4, 'phu-thai-group-officially-became-the-exclusive-distributor-for-truong-tho-seaweed-products-1', 2, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 03:06:20', '2022-06-08 03:06:20'),
(5, 'phu-thai-group-officially-became-the-exclusive-distributor-for-truong-tho-seaweed-products-2', 3, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 03:06:44', '2022-06-08 03:06:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@admi.com', NULL, '$2y$10$H.b3VAsBpxrf5xlwFOJ4Pu1J/W7KxlqRuC4uvbdSKzCyR77XCzSNS', 's5qOWM5JBCcwXtHFkYfDRN5iiPxZRErzl0vFcqkRdgNP3qxMcENd3kY0cAjr', '2022-04-02 10:42:41', '2022-06-07 22:27:44', 'Admin', 'Admin', 'admin', NULL, 1, 1, NULL, '2022-06-07 22:27:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `widgets`
--

DROP TABLE IF EXISTS `widgets`;
CREATE TABLE IF NOT EXISTS `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
