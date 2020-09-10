-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Вер 10 2020 р., 16:02
-- Версія сервера: 10.4.13-MariaDB
-- Версія PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `blazeart`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(55, 'action_scheduler/migration_hook', 'complete', '2020-09-10 07:38:03', '2020-09-10 07:38:03', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1599723483;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1599723483;}', 1, 1, '2020-09-10 07:38:18', '2020-09-10 07:38:18', 0, NULL),
(56, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":1}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2020-09-10 07:46:30', '2020-09-10 07:46:30', 0, NULL),
(57, 'action_scheduler/migration_hook', 'complete', '2020-09-10 08:44:01', '2020-09-10 08:44:01', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1599727441;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1599727441;}', 1, 1, '2020-09-10 08:44:08', '2020-09-10 08:44:08', 0, NULL),
(58, 'wp_mail_smtp_send_usage_data', 'pending', '2020-09-19 15:55:50', '2020-09-19 15:55:50', '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1600530950;s:18:\"\0*\0first_timestamp\";i:1600530950;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1600530950;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 55, 'action created', '2020-09-10 07:37:04', '2020-09-10 07:37:04'),
(2, 55, 'action started via WP Cron', '2020-09-10 07:38:17', '2020-09-10 07:38:17'),
(3, 55, 'action complete via WP Cron', '2020-09-10 07:38:18', '2020-09-10 07:38:18'),
(4, 56, 'action created', '2020-09-10 07:45:47', '2020-09-10 07:45:47'),
(5, 56, 'action started via WP Cron', '2020-09-10 07:46:29', '2020-09-10 07:46:29'),
(6, 56, 'action complete via WP Cron', '2020-09-10 07:46:29', '2020-09-10 07:46:29'),
(7, 57, 'action created', '2020-09-10 08:43:01', '2020-09-10 08:43:01'),
(8, 57, 'action started via WP Cron', '2020-09-10 08:44:08', '2020-09-10 08:44:08'),
(9, 57, 'action complete via WP Cron', '2020-09-10 08:44:08', '2020-09-10 08:44:08'),
(10, 58, 'action created', '2020-09-10 08:44:15', '2020-09-10 08:44:15');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-07 11:40:00', '2020-09-07 11:40:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/BlazeArt', 'yes'),
(2, 'home', 'http://localhost/BlazeArt', 'yes'),
(3, 'blogname', 'blazeart', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andreymazur99@ukr.net', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=20&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"wp-mail-smtp-pro/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blaze', 'yes'),
(41, 'stylesheet', 'blaze', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '20', 'yes'),
(82, 'page_on_front', '20', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615030792', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1599746521;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1599748802;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1599781202;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1599824401;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599824482;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599824484;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600170001;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1599738047;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599479132;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1599738051;s:7:\"checked\";a:4:{s:5:\"blaze\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_0d7547ea912e3ce2a35572c8b9a755b1', '1600083683', 'no'),
(124, '_site_transient_browser_0d7547ea912e3ce2a35572c8b9a755b1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"85.0.4183.83\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, '_site_transient_timeout_php_check_3dbf48b9658abaee82651209c2ca7be3', '1600083684', 'no'),
(126, '_site_transient_php_check_3dbf48b9658abaee82651209c2ca7be3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(144, 'current_theme', 'blaze', 'yes'),
(145, 'theme_mods_blaze', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(162, 'recently_activated', 'a:1:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1599727209;}', 'yes'),
(169, 'acf_version', '5.7.13', 'yes'),
(174, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1599483077;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(215, 'category_children', 'a:0:{}', 'yes'),
(225, 'blaze_kinds_children', 'a:0:{}', 'yes'),
(239, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":8,\"critical\":1}', 'yes'),
(275, '_transient_timeout_acf_plugin_updates', '1599841146', 'no'),
(276, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.13\";}}', 'no'),
(284, 'secret_key', '<vME+|A0R/i<ch#1XJQ!wk~7iUYLK89v5&6xX2gp;.sI%QNz/%9SNGr1 :bJqlm>', 'no'),
(291, 'wp_mail_smtp_initial_version', '2.3.1', 'no'),
(292, 'wp_mail_smtp_version', '2.3.1', 'no'),
(293, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:23:\"andreymazur99@gmail.com\";s:9:\"from_name\";s:8:\"blazeart\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:15:\"smtp.google.com\";s:10:\"encryption\";s:3:\"tls\";s:4:\"port\";i:465;s:4:\"user\";s:24:\"andreymazur99@google.com\";s:4:\"pass\";s:21:\"qweqweqwe382846382846\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"license\";a:6:{s:3:\"key\";s:32:\"bab001122334455aa6677bb8899taz01\";s:4:\"type\";s:3:\"pro\";s:7:\"updates\";i:1599813925;s:10:\"is_expired\";b:0;s:11:\"is_disabled\";b:0;s:10:\"is_invalid\";b:0;}s:4:\"zoho\";a:3:{s:6:\"domain\";s:3:\"com\";s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"control\";a:24:{s:32:\"dis_comments_awaiting_moderation\";b:0;s:22:\"dis_comments_published\";b:0;s:23:\"dis_admin_email_attempt\";b:0;s:23:\"dis_admin_email_changed\";b:0;s:31:\"dis_admin_email_network_attempt\";b:0;s:31:\"dis_admin_email_network_changed\";b:0;s:39:\"dis_user_details_password_reset_request\";b:0;s:31:\"dis_user_details_password_reset\";b:0;s:33:\"dis_user_details_password_changed\";b:0;s:37:\"dis_user_details_email_change_attempt\";b:0;s:30:\"dis_user_details_email_changed\";b:0;s:32:\"dis_personal_data_user_confirmed\";b:0;s:29:\"dis_personal_data_erased_data\";b:0;s:23:\"dis_auto_updates_status\";b:0;s:25:\"dis_auto_updates_full_log\";b:0;s:29:\"dis_new_user_created_to_admin\";b:0;s:28:\"dis_new_user_created_to_user\";b:0;s:36:\"dis_new_user_invited_to_site_network\";b:0;s:28:\"dis_new_user_created_network\";b:0;s:36:\"dis_new_user_added_activated_network\";b:0;s:38:\"dis_new_site_new_site_added_to_network\";b:0;s:41:\"dis_new_site_user_registered_site_network\";b:0;s:58:\"dis_new_site_user_added_activated_site_in_network_to_admin\";b:0;s:57:\"dis_new_site_user_added_activated_site_in_network_to_site\";b:0;}s:4:\"logs\";a:3:{s:7:\"enabled\";b:0;s:17:\"log_email_content\";b:0;s:20:\"log_retention_period\";i:0;}}', 'no'),
(294, 'wp_mail_smtp_activated_time', '1599723416', 'no'),
(295, 'wp_mail_smtp_activated', 'a:2:{s:4:\"lite\";i:1599723416;s:3:\"pro\";i:1599727380;}', 'yes'),
(296, 'action_scheduler_hybrid_store_demarkation', '54', 'yes'),
(297, 'schema-ActionScheduler_StoreSchema', '3.0.1599723421', 'yes'),
(298, 'schema-ActionScheduler_LoggerSchema', '2.0.1599723422', 'yes'),
(300, '_transient_timeout_as-post-store-dependencies-met', '1599809823', 'no'),
(301, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(302, 'wp_mail_smtp_migration_version', '2', 'yes'),
(303, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1599723424;s:9:\"dismissed\";b:0;}', 'yes'),
(304, 'action_scheduler_lock_async-request-runner', '1599746565', 'yes'),
(312, 'wp_mail_smtp_debug', 'a:1:{i:0;s:102:\"Mailer: Other SMTP\r\nSMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting\";}', 'no'),
(314, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1599723989;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(359, 'action_scheduler_migration_status', 'complete', 'yes'),
(500, '_site_transient_timeout_theme_roots', '1599739850', 'no'),
(501, '_site_transient_theme_roots', 'a:4:{s:5:\"blaze\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(502, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1599742923;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(564, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1599753739', 'no'),
(565, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4720;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4340;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2686;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2565;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1972;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1817;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1803;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1489;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1487;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1480;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1457;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1451;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1444;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1217;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1204;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1154;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1135;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1101;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1011;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:901;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:897;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:885;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:880;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:806;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:801;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:793;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:782;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:773;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:753;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:744;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:724;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:702;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:699;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:682;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:662;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:662;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:649;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:635;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:634;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:607;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:596;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:589;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:583;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:580;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:580;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:562;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:558;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:556;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:551;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:551;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:551;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:541;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:531;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:530;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:524;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:519;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:519;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:515;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:505;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:482;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:479;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:475;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:459;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:453;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:439;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:438;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:437;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:432;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:423;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:422;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:419;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:413;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:412;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:412;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:410;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:401;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:397;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:391;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:384;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:384;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:378;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:378;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:375;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:374;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:366;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:360;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:355;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:348;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:343;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:342;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:341;}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1599482076'),
(5, 1, '_wp_desired_post_slug', 'hello-world'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 6, '_edit_lock', '1599481943:1'),
(8, 7, '_edit_lock', '1599652206:1'),
(11, 9, '_edit_lock', '1599652198:1'),
(14, 11, '_edit_lock', '1599735668:1'),
(17, 13, '_edit_lock', '1599735474:1'),
(20, 15, '_edit_lock', '1599735703:1'),
(23, 11, '_edit_last', '1'),
(28, 3, '_wp_trash_meta_status', 'draft'),
(29, 3, '_wp_trash_meta_time', '1599482275'),
(30, 3, '_wp_desired_post_slug', 'privacy-policy'),
(31, 2, '_wp_trash_meta_status', 'publish'),
(32, 2, '_wp_trash_meta_time', '1599482278'),
(33, 2, '_wp_desired_post_slug', 'sample-page'),
(34, 20, '_edit_lock', '1599486701:1'),
(37, 23, '_form', '<div class=\"input-row\"><span>Your name:</span>[text* input-name class:input]</div>\n<div class=\"input-row\"><span>Your E-mail*:</span>[email* email-113 class:input]</div>\n<div class=\"input-row\"><span>Topic:</span>[text* input-topic class:input]</div>\n<div class=\"input-row input-row--message\"><span>Message:</span>[text* maxlength:90 size:50 input-message class:input]</div>\n<div class=\"submit-row\"><div class=\"submit-row__item\"> <div class=\"button-wrapper\"> <input type=\"submit\" class=\"contact-submit\" value=\"Send\">\n</div></div></div>'),
(38, 23, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"blazeart \"[your-subject]\"\";s:6:\"sender\";s:23:\"andreymazur99@gmail.com\";s:9:\"recipient\";s:23:\"andreymazur99@gmail.com\";s:4:\"body\";s:172:\"From: [input-name] <[email-113]>\nSubject: [your-subject]\n\nMessage Body:\n[textarea-466]\n\n-- \nThis e-mail was sent from a contact form on blazeart (http://localhost/BlazeArt)\";s:18:\"additional_headers\";s:20:\"Topic: [input-topic]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(39, 23, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"blazeart \"[your-subject]\"\";s:6:\"sender\";s:32:\"blazeart <andreymazur99@ukr.net>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on blazeart (http://localhost/BlazeArt)\";s:18:\"additional_headers\";s:31:\"Reply-To: andreymazur99@ukr.net\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(40, 23, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(41, 23, '_additional_settings', ''),
(42, 23, '_locale', 'en_US'),
(43, 24, '_edit_last', '1'),
(44, 24, '_edit_lock', '1599739914:1'),
(45, 28, '_edit_lock', '1599486499:1'),
(46, 30, '_edit_lock', '1599729889:1'),
(47, 20, '_edit_last', '1'),
(48, 33, '_edit_lock', '1599739857:1'),
(49, 35, '_menu_item_type', 'post_type'),
(50, 35, '_menu_item_menu_item_parent', '0'),
(51, 35, '_menu_item_object_id', '20'),
(52, 35, '_menu_item_object', 'page'),
(53, 35, '_menu_item_target', ''),
(54, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 35, '_menu_item_xfn', ''),
(56, 35, '_menu_item_url', ''),
(58, 36, '_menu_item_type', 'post_type'),
(59, 36, '_menu_item_menu_item_parent', '0'),
(60, 36, '_menu_item_object_id', '20'),
(61, 36, '_menu_item_object', 'page'),
(62, 36, '_menu_item_target', ''),
(63, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 36, '_menu_item_xfn', ''),
(65, 36, '_menu_item_url', ''),
(66, 36, '_menu_item_orphaned', '1599487730'),
(67, 37, '_menu_item_type', 'post_type'),
(68, 37, '_menu_item_menu_item_parent', '0'),
(69, 37, '_menu_item_object_id', '28'),
(70, 37, '_menu_item_object', 'page'),
(71, 37, '_menu_item_target', ''),
(72, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 37, '_menu_item_xfn', ''),
(74, 37, '_menu_item_url', ''),
(76, 38, '_menu_item_type', 'post_type'),
(77, 38, '_menu_item_menu_item_parent', '0'),
(78, 38, '_menu_item_object_id', '30'),
(79, 38, '_menu_item_object', 'page'),
(80, 38, '_menu_item_target', ''),
(81, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 38, '_menu_item_xfn', ''),
(83, 38, '_menu_item_url', ''),
(85, 39, '_menu_item_type', 'post_type'),
(86, 39, '_menu_item_menu_item_parent', '0'),
(87, 39, '_menu_item_object_id', '33'),
(88, 39, '_menu_item_object', 'page'),
(89, 39, '_menu_item_target', ''),
(90, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 39, '_menu_item_xfn', ''),
(92, 39, '_menu_item_url', ''),
(94, 15, '_edit_last', '1'),
(97, 40, '_wp_attached_file', '2020/09/work1.jpg'),
(98, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:439;s:6:\"height\";i:283;s:4:\"file\";s:17:\"2020/09/work1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work1-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 41, '_wp_attached_file', '2020/09/work2.jpg'),
(100, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:439;s:6:\"height\";i:205;s:4:\"file\";s:17:\"2020/09/work2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work2-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 42, '_wp_attached_file', '2020/09/work3.jpg'),
(102, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:440;s:6:\"height\";i:205;s:4:\"file\";s:17:\"2020/09/work3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work3-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 43, '_wp_attached_file', '2020/09/work4.jpg'),
(104, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:440;s:6:\"height\";i:283;s:4:\"file\";s:17:\"2020/09/work4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work4-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 44, '_wp_attached_file', '2020/09/work5.jpg'),
(106, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:440;s:6:\"height\";i:540;s:4:\"file\";s:17:\"2020/09/work5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"work5-244x300.jpg\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"work5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 15, '_thumbnail_id', '40'),
(114, 13, '_thumbnail_id', '41'),
(117, 11, '_thumbnail_id', '42'),
(120, 9, '_thumbnail_id', '43'),
(123, 7, '_thumbnail_id', '44'),
(124, 45, '_edit_lock', '1599552917:1'),
(125, 46, '_edit_lock', '1599553518:1'),
(130, 13, '_edit_last', '1'),
(145, 9, '_edit_last', '1'),
(148, 7, '_edit_last', '1'),
(167, 48, '_edit_lock', '1599557583:1'),
(168, 49, '_edit_lock', '1599576929:1'),
(177, 50, '_edit_lock', '1599586853:1'),
(178, 51, '_edit_lock', '1599634644:1'),
(197, 52, '_edit_lock', '1599668186:1'),
(200, 52, '_thumbnail_id', '43'),
(204, 55, '_edit_last', '1'),
(205, 55, '_edit_lock', '1599739906:1'),
(206, 30, '_edit_last', '1'),
(207, 30, 'isq', 'test'),
(208, 30, '_isq', 'field_5f59edfa1bb7a'),
(209, 30, 'skype', 'test'),
(210, 30, '_skype', 'field_5f59ee2c1bb7b'),
(211, 30, 'mail', 'test'),
(212, 30, '_mail', 'field_5f59ee3b1bb7c'),
(213, 30, 'telegram', 'test'),
(214, 30, '_telegram', 'field_5f59ee4a1bb7d'),
(215, 30, '_', 'field_5f59ee561bb7e'),
(216, 61, 'isq', 'test'),
(217, 61, '_isq', 'field_5f59edfa1bb7a'),
(218, 61, 'skype', 'test'),
(219, 61, '_skype', 'field_5f59ee2c1bb7b'),
(220, 61, 'mail', 'test'),
(221, 61, '_mail', 'field_5f59ee3b1bb7c'),
(222, 61, 'telegram', 'test'),
(223, 61, '_telegram', 'field_5f59ee4a1bb7d'),
(224, 62, 'isq', ''),
(225, 62, '_isq', 'field_5f59edfa1bb7a'),
(226, 62, 'skype', 'test'),
(227, 62, '_skype', 'field_5f59ee2c1bb7b'),
(228, 62, 'mail', 'test'),
(229, 62, '_mail', 'field_5f59ee3b1bb7c'),
(230, 62, 'telegram', 'test'),
(231, 62, '_telegram', 'field_5f59ee4a1bb7d'),
(232, 63, 'isq', 'test'),
(233, 63, '_isq', 'field_5f59edfa1bb7a'),
(234, 63, 'skype', 'test'),
(235, 63, '_skype', 'field_5f59ee2c1bb7b'),
(236, 63, 'mail', 'test'),
(237, 63, '_mail', 'field_5f59ee3b1bb7c'),
(238, 63, 'telegram', 'test'),
(239, 63, '_telegram', 'field_5f59ee4a1bb7d'),
(240, 65, '_edit_last', '1'),
(241, 65, '_edit_lock', '1599735208:1'),
(244, 70, '_wp_attached_file', '2020/09/project-photo-1.jpg'),
(245, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:833;s:4:\"file\";s:27:\"2020/09/project-photo-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"project-photo-1-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"project-photo-1-1024x449.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:449;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"project-photo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"project-photo-1-768x337.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"project-photo-1-1536x673.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:673;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(246, 71, '_wp_attached_file', '2020/09/project-photo2.png'),
(247, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:964;s:4:\"file\";s:26:\"2020/09/project-photo2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"project-photo2-300x152.png\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"project-photo2-1024x520.png\";s:5:\"width\";i:1024;s:6:\"height\";i:520;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"project-photo2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"project-photo2-768x390.png\";s:5:\"width\";i:768;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"project-photo2-1536x779.png\";s:5:\"width\";i:1536;s:6:\"height\";i:779;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 72, '_wp_attached_file', '2020/09/project-photo-2.png'),
(249, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:979;s:4:\"file\";s:27:\"2020/09/project-photo-2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"project-photo-2-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"project-photo-2-1024x528.png\";s:5:\"width\";i:1024;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"project-photo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"project-photo-2-768x396.png\";s:5:\"width\";i:768;s:6:\"height\";i:396;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"project-photo-2-1536x791.png\";s:5:\"width\";i:1536;s:6:\"height\";i:791;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 13, 'project-image', '72'),
(255, 13, '_project-image', 'field_5f5a04e066e1f'),
(256, 73, 'project-image', '72'),
(257, 73, '_project-image', 'field_5f5a050b66e21'),
(260, 13, 'project-image2', '71'),
(261, 13, '_project-image2', 'field_5f5a04f466e20'),
(262, 13, 'project-image3', '72'),
(263, 13, '_project-image3', 'field_5f5a050b66e21'),
(264, 74, 'project-image', '72'),
(265, 74, '_project-image', 'field_5f5a04e066e1f'),
(266, 74, 'project-image2', '71'),
(267, 74, '_project-image2', 'field_5f5a04f466e20'),
(268, 74, 'project-image3', '72'),
(269, 74, '_project-image3', 'field_5f5a050b66e21'),
(272, 75, 'project-image', '72'),
(273, 75, '_project-image', 'field_5f5a04e066e1f'),
(274, 75, 'project-image2', '71'),
(275, 75, '_project-image2', 'field_5f5a04f466e20'),
(276, 75, 'project-image3', '72'),
(277, 75, '_project-image3', 'field_5f5a050b66e21'),
(282, 11, 'project-image', '71'),
(283, 11, '_project-image', 'field_5f5a04e066e1f'),
(284, 11, 'project-image2', ''),
(285, 11, '_project-image2', 'field_5f5a04f466e20'),
(286, 11, 'project-image3', ''),
(287, 11, '_project-image3', 'field_5f5a050b66e21'),
(288, 77, 'project-image', '71'),
(289, 77, '_project-image', 'field_5f5a04e066e1f'),
(290, 77, 'project-image2', ''),
(291, 77, '_project-image2', 'field_5f5a04f466e20'),
(292, 77, 'project-image3', ''),
(293, 77, '_project-image3', 'field_5f5a050b66e21'),
(298, 15, 'project-image', '72'),
(299, 15, '_project-image', 'field_5f5a04e066e1f'),
(300, 15, 'project-image2', '71'),
(301, 15, '_project-image2', 'field_5f5a04f466e20'),
(302, 15, 'project-image3', ''),
(303, 15, '_project-image3', 'field_5f5a050b66e21'),
(304, 79, 'project-image', '72'),
(305, 79, '_project-image', 'field_5f5a04e066e1f'),
(306, 79, 'project-image2', '71'),
(307, 79, '_project-image2', 'field_5f5a04f466e20'),
(308, 79, 'project-image3', ''),
(309, 79, '_project-image3', 'field_5f5a050b66e21'),
(310, 80, '_edit_lock', '1599735661:1'),
(311, 81, '_edit_lock', '1599735838:1'),
(312, 81, '_edit_last', '1'),
(313, 83, '_edit_lock', '1599736280:1'),
(316, 83, '_thumbnail_id', '41'),
(317, 83, '_edit_last', '1'),
(320, 83, 'project-image', ''),
(321, 83, '_project-image', 'field_5f5a04e066e1f'),
(322, 83, 'project-image2', '42'),
(323, 83, '_project-image2', 'field_5f5a04f466e20'),
(324, 83, 'project-image3', ''),
(325, 83, '_project-image3', 'field_5f5a050b66e21'),
(326, 85, 'project-image', ''),
(327, 85, '_project-image', 'field_5f5a04e066e1f'),
(328, 85, 'project-image2', '42'),
(329, 85, '_project-image2', 'field_5f5a04f466e20'),
(330, 85, 'project-image3', ''),
(331, 85, '_project-image3', 'field_5f5a050b66e21'),
(334, 86, '_edit_lock', '1599736345:1'),
(337, 86, '_thumbnail_id', '43'),
(338, 86, '_edit_last', '1'),
(341, 86, 'project-image', ''),
(342, 86, '_project-image', 'field_5f5a04e066e1f'),
(343, 86, 'project-image2', '70'),
(344, 86, '_project-image2', 'field_5f5a04f466e20'),
(345, 86, 'project-image3', ''),
(346, 86, '_project-image3', 'field_5f5a050b66e21'),
(347, 88, 'project-image', ''),
(348, 88, '_project-image', 'field_5f5a04e066e1f'),
(349, 88, 'project-image2', '70'),
(350, 88, '_project-image2', 'field_5f5a04f466e20'),
(351, 88, 'project-image3', ''),
(352, 88, '_project-image3', 'field_5f5a050b66e21'),
(353, 89, '_edit_lock', '1599736389:1'),
(356, 89, '_thumbnail_id', '40'),
(357, 89, '_edit_last', '1'),
(360, 89, 'project-image', ''),
(361, 89, '_project-image', 'field_5f5a04e066e1f'),
(362, 89, 'project-image2', ''),
(363, 89, '_project-image2', 'field_5f5a04f466e20'),
(364, 89, 'project-image3', ''),
(365, 89, '_project-image3', 'field_5f5a050b66e21'),
(366, 90, 'project-image', ''),
(367, 90, '_project-image', 'field_5f5a04e066e1f'),
(368, 90, 'project-image2', ''),
(369, 90, '_project-image2', 'field_5f5a04f466e20'),
(370, 90, 'project-image3', ''),
(371, 90, '_project-image3', 'field_5f5a050b66e21'),
(372, 91, '_edit_lock', '1599736427:1'),
(375, 91, '_thumbnail_id', '44'),
(376, 91, '_edit_last', '1'),
(379, 91, 'project-image', ''),
(380, 91, '_project-image', 'field_5f5a04e066e1f'),
(381, 91, 'project-image2', ''),
(382, 91, '_project-image2', 'field_5f5a04f466e20'),
(383, 91, 'project-image3', ''),
(384, 91, '_project-image3', 'field_5f5a050b66e21'),
(385, 92, 'project-image', ''),
(386, 92, '_project-image', 'field_5f5a04e066e1f'),
(387, 92, 'project-image2', ''),
(388, 92, '_project-image2', 'field_5f5a04f466e20'),
(389, 92, 'project-image3', ''),
(390, 92, '_project-image3', 'field_5f5a050b66e21'),
(391, 93, '_edit_last', '1'),
(392, 93, '_edit_lock', '1599738782:1'),
(393, 33, '_edit_last', '1'),
(394, 33, 'title_notice', 'We create sites of any complexity - from business card sites to high-load portals. When creating a website, the wishes of the client are taken into account and a unique solution is developed on the basis of our CMS.'),
(395, 33, '_title_notice', 'field_5f5a116716377'),
(396, 96, 'title_notice', 'Мы создаём сайты любой сложности - от сайтов визиток высоконагруженных порталов. При создании сайта учитываются пожелания клиента и на базе нашей CMS разрабатывается уникальное решение.'),
(397, 96, '_title_notice', 'field_5f5a116716377'),
(398, 97, '_edit_last', '1'),
(399, 97, '_edit_lock', '1599739886:1'),
(400, 98, '_wp_attached_file', '2020/09/service-1.png'),
(401, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:151;s:6:\"height\";i:145;s:4:\"file\";s:21:\"2020/09/service-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 99, '_wp_attached_file', '2020/09/service-2.png'),
(403, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:161;s:6:\"height\";i:108;s:4:\"file\";s:21:\"2020/09/service-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-2-150x108.png\";s:5:\"width\";i:150;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 100, '_wp_attached_file', '2020/09/service-3.png'),
(405, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:164;s:6:\"height\";i:171;s:4:\"file\";s:21:\"2020/09/service-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(406, 101, '_wp_attached_file', '2020/09/service-4.png'),
(407, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:208;s:6:\"height\";i:171;s:4:\"file\";s:21:\"2020/09/service-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(408, 102, '_wp_attached_file', '2020/09/service-5.png'),
(409, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:141;s:6:\"height\";i:77;s:4:\"file\";s:21:\"2020/09/service-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(410, 103, '_wp_attached_file', '2020/09/service-bg.jpg'),
(411, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1438;s:6:\"height\";i:251;s:4:\"file\";s:22:\"2020/09/service-bg.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"service-bg-300x52.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:52;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"service-bg-1024x179.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"service-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"service-bg-768x134.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(412, 97, '_thumbnail_id', '98'),
(413, 104, '_edit_last', '1'),
(414, 104, '_edit_lock', '1599739593:1'),
(415, 104, '_thumbnail_id', '99'),
(416, 105, 'title_notice', 'We create sites of any complexity - from business card sites to high-load portals. When creating a website, the wishes of the client are taken into account and a unique solution is developed on the basis of our CMS.'),
(417, 105, '_title_notice', 'field_5f5a116716377');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-07 11:40:00', '2020-09-07 11:40:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-09-07 12:34:36', '2020-09-07 12:34:36', '', 0, 'http://localhost/BlazeArt/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-07 11:40:00', '2020-09-07 11:40:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/BlazeArt/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-09-07 12:37:58', '2020-09-07 12:37:58', '', 0, 'http://localhost/BlazeArt/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-07 11:40:00', '2020-09-07 11:40:00', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/BlazeArt.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-09-07 12:37:55', '2020-09-07 12:37:55', '', 0, 'http://localhost/BlazeArt/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-09-07 11:41:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-07 11:41:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=4', 0, 'post', '', 0),
(5, 1, '2020-09-07 12:34:36', '2020-09-07 12:34:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-09-07 12:34:36', '2020-09-07 12:34:36', '', 1, 'http://localhost/BlazeArt/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-09-07 12:34:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-07 12:34:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=6', 0, 'post', '', 0),
(7, 1, '2020-09-07 12:36:14', '2020-09-07 12:36:14', '', 'Test 1', '', 'publish', 'open', 'open', '', 'test-1', '', '', '2020-09-09 11:50:05', '2020-09-09 11:50:05', '', 0, 'http://localhost/BlazeArt/?p=7', 0, 'post', '', 0),
(8, 1, '2020-09-07 12:36:14', '2020-09-07 12:36:14', '', 'Test 1', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-07 12:36:14', '2020-09-07 12:36:14', '', 7, 'http://localhost/BlazeArt/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-09-07 12:36:38', '2020-09-07 12:36:38', '', 'Test 2', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2020-09-09 11:49:57', '2020-09-09 11:49:57', '', 0, 'http://localhost/BlazeArt/?p=9', 0, 'post', '', 0),
(10, 1, '2020-09-07 12:36:38', '2020-09-07 12:36:38', '', 'Test 2', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-09-07 12:36:38', '2020-09-07 12:36:38', '', 9, 'http://localhost/BlazeArt/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-09-07 12:36:57', '2020-09-07 12:36:57', '', 'Test 3', 'Some text - Some text -Some text -Some text', 'publish', 'open', 'open', '', 'test-2-2', '', '', '2020-09-10 11:01:06', '2020-09-10 11:01:06', '', 0, 'http://localhost/BlazeArt/?p=11', 0, 'post', '', 0),
(12, 1, '2020-09-07 12:36:57', '2020-09-07 12:36:57', '', 'Test 2', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-09-07 12:36:57', '2020-09-07 12:36:57', '', 11, 'http://localhost/BlazeArt/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-09-07 12:37:10', '2020-09-07 12:37:10', '', 'Test 4', 'something about the project', 'publish', 'open', 'open', '', 'test-4', '', '', '2020-09-10 10:59:22', '2020-09-10 10:59:22', '', 0, 'http://localhost/BlazeArt/?p=13', 0, 'post', '', 0),
(14, 1, '2020-09-07 12:37:10', '2020-09-07 12:37:10', '', 'Test 4', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-07 12:37:10', '2020-09-07 12:37:10', '', 13, 'http://localhost/BlazeArt/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-09-07 12:37:26', '2020-09-07 12:37:26', '', 'Test 5', 'text - text -text -text', 'publish', 'open', 'open', '', 'test-5', '', '', '2020-09-10 11:01:41', '2020-09-10 11:01:41', '', 0, 'http://localhost/BlazeArt/?p=15', 0, 'post', '', 0),
(16, 1, '2020-09-07 12:37:27', '2020-09-07 12:37:27', '', 'Test 5', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-07 12:37:27', '2020-09-07 12:37:27', '', 15, 'http://localhost/BlazeArt/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-09-07 12:37:38', '2020-09-07 12:37:38', '', 'Test 3', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-09-07 12:37:38', '2020-09-07 12:37:38', '', 11, 'http://localhost/BlazeArt/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-09-07 12:37:55', '2020-09-07 12:37:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/BlazeArt.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-09-07 12:37:55', '2020-09-07 12:37:55', '', 3, 'http://localhost/BlazeArt/3-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-09-07 12:37:58', '2020-09-07 12:37:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/BlazeArt/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-07 12:37:58', '2020-09-07 12:37:58', '', 2, 'http://localhost/BlazeArt/2-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-09-07 12:38:22', '2020-09-07 12:38:22', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'blazewebart', '', '', '2020-09-07 13:51:41', '2020-09-07 13:51:41', '', 0, 'http://localhost/BlazeArt/?page_id=20', 0, 'page', '', 0),
(21, 1, '2020-09-07 12:38:22', '2020-09-07 12:38:22', '', 'BlazeWebArt', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-09-07 12:38:22', '2020-09-07 12:38:22', '', 20, 'http://localhost/BlazeArt/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-09-07 12:51:14', '2020-09-07 12:51:14', '<div class=\"input-row\"><span>Your name:</span>[text* input-name class:input]</div>\r\n<div class=\"input-row\"><span>Your E-mail*:</span>[email* email-113 class:input]</div>\r\n<div class=\"input-row\"><span>Topic:</span>[text* input-topic class:input]</div>\r\n<div class=\"input-row input-row--message\"><span>Message:</span>[text* maxlength:90 size:50 input-message class:input]</div>\r\n<div class=\"submit-row\"><div class=\"submit-row__item\"> <div class=\"button-wrapper\"> <input type=\"submit\" class=\"contact-submit\" value=\"Send\">\r\n</div></div></div>\n1\nblazeart \"[your-subject]\"\nandreymazur99@gmail.com\nandreymazur99@gmail.com\nFrom: [input-name] <[email-113]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[textarea-466]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on blazeart (http://localhost/BlazeArt)\nTopic: [input-topic]\n\n1\n\n\nblazeart \"[your-subject]\"\nblazeart <andreymazur99@ukr.net>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on blazeart (http://localhost/BlazeArt)\nReply-To: andreymazur99@ukr.net\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-10 08:01:36', '2020-09-10 08:01:36', '', 0, 'http://localhost/BlazeArt/?post_type=wpcf7_contact_form&#038;p=23', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2020-09-07 12:52:11', '2020-09-07 12:52:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"20\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_5f562cdfa87bf', '', '', '2020-09-07 13:15:13', '2020-09-07 13:15:13', '', 0, 'http://localhost/BlazeArt/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2020-09-07 13:15:12', '2020-09-07 13:15:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5f562d021b740', '', '', '2020-09-07 13:15:12', '2020-09-07 13:15:12', '', 24, 'http://localhost/BlazeArt/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2020-09-07 13:15:12', '2020-09-07 13:15:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5f5630401b741', '', '', '2020-09-07 13:15:12', '2020-09-07 13:15:12', '', 24, 'http://localhost/BlazeArt/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2020-09-07 13:15:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-07 13:15:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?post_type=acf-field-group&p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2020-09-07 13:50:40', '2020-09-07 13:50:40', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-09-07 13:50:40', '2020-09-07 13:50:40', '', 0, 'http://localhost/BlazeArt/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-09-07 13:50:40', '2020-09-07 13:50:40', '', 'About', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-09-07 13:50:40', '2020-09-07 13:50:40', '', 28, 'http://localhost/BlazeArt/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-09-07 13:50:54', '2020-09-07 13:50:54', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-10 09:17:55', '2020-09-10 09:17:55', '', 0, 'http://localhost/BlazeArt/?page_id=30', 0, 'page', '', 0),
(31, 1, '2020-09-07 13:50:54', '2020-09-07 13:50:54', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-09-07 13:50:54', '2020-09-07 13:50:54', '', 30, 'http://localhost/BlazeArt/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-09-07 13:51:41', '2020-09-07 13:51:41', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-09-07 13:51:41', '2020-09-07 13:51:41', '', 20, 'http://localhost/BlazeArt/20-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-09-07 13:51:58', '2020-09-07 13:51:58', '', 'Service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2020-09-10 12:09:20', '2020-09-10 12:09:20', '', 0, 'http://localhost/BlazeArt/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-09-07 13:51:58', '2020-09-07 13:51:58', '', 'Service', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-07 13:51:58', '2020-09-07 13:51:58', '', 33, 'http://localhost/BlazeArt/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-09-07 14:09:10', '2020-09-07 14:09:10', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-09-07 14:09:24', '2020-09-07 14:09:24', '', 0, 'http://localhost/BlazeArt/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2020-09-07 14:08:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-07 14:08:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2020-09-07 14:09:10', '2020-09-07 14:09:10', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-09-07 14:09:25', '2020-09-07 14:09:25', '', 0, 'http://localhost/BlazeArt/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2020-09-07 14:09:11', '2020-09-07 14:09:11', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-09-07 14:09:25', '2020-09-07 14:09:25', '', 0, 'http://localhost/BlazeArt/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2020-09-07 14:09:11', '2020-09-07 14:09:11', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-09-07 14:09:25', '2020-09-07 14:09:25', '', 0, 'http://localhost/BlazeArt/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2020-09-08 07:03:20', '2020-09-08 07:03:20', '', 'work1', '', 'inherit', 'open', 'closed', '', 'work1', '', '', '2020-09-08 07:03:20', '2020-09-08 07:03:20', '', 15, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/work1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-09-08 07:03:21', '2020-09-08 07:03:21', '', 'work2', '', 'inherit', 'open', 'closed', '', 'work2', '', '', '2020-09-08 07:03:21', '2020-09-08 07:03:21', '', 15, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/work2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-09-08 07:03:21', '2020-09-08 07:03:21', '', 'work3', '', 'inherit', 'open', 'closed', '', 'work3', '', '', '2020-09-08 07:03:21', '2020-09-08 07:03:21', '', 15, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/work3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-09-08 07:03:22', '2020-09-08 07:03:22', '', 'work4', '', 'inherit', 'open', 'closed', '', 'work4', '', '', '2020-09-08 07:03:22', '2020-09-08 07:03:22', '', 15, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/work4.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-09-08 07:03:23', '2020-09-08 07:03:23', '', 'work5', '', 'inherit', 'open', 'closed', '', 'work5', '', '', '2020-09-08 07:03:23', '2020-09-08 07:03:23', '', 15, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/work5.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-09-08 08:17:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-08 08:17:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=45', 0, 'post', '', 0),
(46, 1, '2020-09-08 08:27:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-08 08:27:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=46', 0, 'post', '', 0),
(48, 1, '2020-09-08 09:33:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-08 09:33:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=48', 0, 'post', '', 0),
(49, 1, '2020-09-08 09:35:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-08 09:35:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=49', 0, 'post', '', 0),
(50, 1, '2020-09-08 16:08:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-08 16:08:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=50', 0, 'post', '', 0),
(51, 1, '2020-09-09 06:57:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-09 06:57:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?p=51', 0, 'post', '', 0),
(52, 1, '2020-09-09 12:56:33', '2020-09-09 12:56:33', '', 'test 6', '', 'publish', 'open', 'open', '', 'test-6', '', '', '2020-09-09 12:56:33', '2020-09-09 12:56:33', '', 0, 'http://localhost/BlazeArt/?p=52', 0, 'post', '', 0),
(53, 1, '2020-09-09 12:56:33', '2020-09-09 12:56:33', '', 'test 6', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-09-09 12:56:33', '2020-09-09 12:56:33', '', 52, 'http://localhost/BlazeArt/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-10 09:14:03', '2020-09-10 09:14:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"30\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact us', 'contact-us', 'publish', 'closed', 'closed', '', 'group_5f59ede56dcfe', '', '', '2020-09-10 09:14:03', '2020-09-10 09:14:03', '', 0, 'http://localhost/BlazeArt/?post_type=acf-field-group&#038;p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2020-09-10 09:14:03', '2020-09-10 09:14:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ISQ', 'isq', 'publish', 'closed', 'closed', '', 'field_5f59edfa1bb7a', '', '', '2020-09-10 09:14:03', '2020-09-10 09:14:03', '', 55, 'http://localhost/BlazeArt/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2020-09-10 09:14:03', '2020-09-10 09:14:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'skype', 'skype', 'publish', 'closed', 'closed', '', 'field_5f59ee2c1bb7b', '', '', '2020-09-10 09:14:03', '2020-09-10 09:14:03', '', 55, 'http://localhost/BlazeArt/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2020-09-10 09:14:03', '2020-09-10 09:14:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'mail', 'mail', 'publish', 'closed', 'closed', '', 'field_5f59ee3b1bb7c', '', '', '2020-09-10 09:14:03', '2020-09-10 09:14:03', '', 55, 'http://localhost/BlazeArt/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2020-09-10 09:14:03', '2020-09-10 09:14:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telegram', 'telegram', 'publish', 'closed', 'closed', '', 'field_5f59ee4a1bb7d', '', '', '2020-09-10 09:14:03', '2020-09-10 09:14:03', '', 55, 'http://localhost/BlazeArt/?post_type=acf-field&p=59', 3, 'acf-field', '', 0),
(60, 1, '2020-09-10 09:14:03', '2020-09-10 09:14:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5f59ee561bb7e', '', '', '2020-09-10 09:14:03', '2020-09-10 09:14:03', '', 55, 'http://localhost/BlazeArt/?post_type=acf-field&p=60', 4, 'acf-field', '', 0),
(61, 1, '2020-09-10 09:14:39', '2020-09-10 09:14:39', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-09-10 09:14:39', '2020-09-10 09:14:39', '', 30, 'http://localhost/BlazeArt/30-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-09-10 09:17:44', '2020-09-10 09:17:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-09-10 09:17:44', '2020-09-10 09:17:44', '', 30, 'http://localhost/BlazeArt/30-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-09-10 09:17:55', '2020-09-10 09:17:55', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-09-10 09:17:55', '2020-09-10 09:17:55', '', 30, 'http://localhost/BlazeArt/30-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-09-10 10:47:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-10 10:47:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?post_type=acf-field-group&p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2020-09-10 10:51:05', '2020-09-10 10:51:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'project images', 'project-images', 'publish', 'closed', 'closed', '', 'group_5f5a04c2d47bb', '', '', '2020-09-10 10:55:44', '2020-09-10 10:55:44', '', 0, 'http://localhost/BlazeArt/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2020-09-10 10:51:05', '2020-09-10 10:51:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'project-image', 'project-image', 'publish', 'closed', 'closed', '', 'field_5f5a04e066e1f', '', '', '2020-09-10 10:51:05', '2020-09-10 10:51:05', '', 65, 'http://localhost/BlazeArt/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2020-09-10 10:51:05', '2020-09-10 10:51:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'project-image2', 'project-image2', 'publish', 'closed', 'closed', '', 'field_5f5a04f466e20', '', '', '2020-09-10 10:55:35', '2020-09-10 10:55:35', '', 65, 'http://localhost/BlazeArt/?post_type=acf-field&#038;p=67', 1, 'acf-field', '', 0),
(68, 1, '2020-09-10 10:51:05', '2020-09-10 10:51:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'project-image3', 'project-image3', 'publish', 'closed', 'closed', '', 'field_5f5a050b66e21', '', '', '2020-09-10 10:55:44', '2020-09-10 10:55:44', '', 65, 'http://localhost/BlazeArt/?post_type=acf-field&#038;p=68', 2, 'acf-field', '', 0),
(70, 1, '2020-09-10 10:52:16', '2020-09-10 10:52:16', '', 'project-photo 1', '', 'inherit', 'open', 'closed', '', 'project-photo-1', '', '', '2020-09-10 10:52:16', '2020-09-10 10:52:16', '', 13, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/project-photo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-09-10 10:52:18', '2020-09-10 10:52:18', '', 'project-photo2', '', 'inherit', 'open', 'closed', '', 'project-photo2', '', '', '2020-09-10 10:52:18', '2020-09-10 10:52:18', '', 13, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/project-photo2.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2020-09-10 10:52:20', '2020-09-10 10:52:20', '', 'project-photo-2', '', 'inherit', 'open', 'closed', '', 'project-photo-2', '', '', '2020-09-10 10:52:20', '2020-09-10 10:52:20', '', 13, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/project-photo-2.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2020-09-10 10:52:45', '2020-09-10 10:52:45', '', 'Test 4', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-10 10:52:45', '2020-09-10 10:52:45', '', 13, 'http://localhost/BlazeArt/13-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-09-10 10:56:16', '2020-09-10 10:56:16', '', 'Test 4', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-10 10:56:16', '2020-09-10 10:56:16', '', 13, 'http://localhost/BlazeArt/13-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-10 10:58:59', '2020-09-10 10:58:59', '', 'Test 4', 'something about the project', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-10 10:58:59', '2020-09-10 10:58:59', '', 13, 'http://localhost/BlazeArt/13-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-09-10 11:01:03', '2020-09-10 11:01:03', '', 'Test 3', 'Some text - Some text -Some text -Some text', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-09-10 11:01:03', '2020-09-10 11:01:03', '', 11, 'http://localhost/BlazeArt/11-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-09-10 11:01:06', '2020-09-10 11:01:06', '', 'Test 3', 'Some text - Some text -Some text -Some text', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-09-10 11:01:06', '2020-09-10 11:01:06', '', 11, 'http://localhost/BlazeArt/11-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-09-10 11:01:39', '2020-09-10 11:01:39', '', 'Test 5', 'text - text -text -text', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-10 11:01:39', '2020-09-10 11:01:39', '', 15, 'http://localhost/BlazeArt/15-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-09-10 11:01:41', '2020-09-10 11:01:41', '', 'Test 5', 'text - text -text -text', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-10 11:01:41', '2020-09-10 11:01:41', '', 15, 'http://localhost/BlazeArt/15-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-09-10 11:02:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-10 11:02:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/BlazeArt/?page_id=80', 0, 'page', '', 0),
(81, 1, '2020-09-10 11:03:41', '2020-09-10 11:03:41', '', 'All projects', '', 'publish', 'closed', 'closed', '', 'all-projects', '', '', '2020-09-10 11:03:58', '2020-09-10 11:03:58', '', 0, 'http://localhost/BlazeArt/?page_id=81', 0, 'page', '', 0),
(82, 1, '2020-09-10 11:03:41', '2020-09-10 11:03:41', '', 'All projects', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2020-09-10 11:03:41', '2020-09-10 11:03:41', '', 81, 'http://localhost/BlazeArt/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-09-10 11:10:11', '2020-09-10 11:10:11', '', 'post 7', 'Post 7 information', 'publish', 'open', 'open', '', 'post-7', '', '', '2020-09-10 11:11:19', '2020-09-10 11:11:19', '', 0, 'http://localhost/BlazeArt/?p=83', 0, 'post', '', 0),
(84, 1, '2020-09-10 11:10:11', '2020-09-10 11:10:11', '', 'post 7', 'Post 7 information', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-09-10 11:10:11', '2020-09-10 11:10:11', '', 83, 'http://localhost/BlazeArt/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-09-10 11:10:14', '2020-09-10 11:10:14', '', 'post 7', 'Post 7 information', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-09-10 11:10:14', '2020-09-10 11:10:14', '', 83, 'http://localhost/BlazeArt/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-09-10 11:12:09', '2020-09-10 11:12:09', '', 'post 8', 'info post 8', 'publish', 'open', 'open', '', 'post-8', '', '', '2020-09-10 11:12:24', '2020-09-10 11:12:24', '', 0, 'http://localhost/BlazeArt/?p=86', 0, 'post', '', 0),
(87, 1, '2020-09-10 11:12:09', '2020-09-10 11:12:09', '', 'post 8', 'info post 8', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2020-09-10 11:12:09', '2020-09-10 11:12:09', '', 86, 'http://localhost/BlazeArt/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-09-10 11:12:12', '2020-09-10 11:12:12', '', 'post 8', 'info post 8', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2020-09-10 11:12:12', '2020-09-10 11:12:12', '', 86, 'http://localhost/BlazeArt/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-09-10 11:13:00', '2020-09-10 11:13:00', '', 'post 9', 'info post 9', 'publish', 'open', 'open', '', 'post-9', '', '', '2020-09-10 11:13:09', '2020-09-10 11:13:09', '', 0, 'http://localhost/BlazeArt/?p=89', 0, 'post', '', 0),
(90, 1, '2020-09-10 11:13:00', '2020-09-10 11:13:00', '', 'post 9', 'info post 9', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2020-09-10 11:13:00', '2020-09-10 11:13:00', '', 89, 'http://localhost/BlazeArt/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-09-10 11:13:37', '2020-09-10 11:13:37', '', 'pots 10', 'info post 10', 'publish', 'open', 'open', '', 'pots-10', '', '', '2020-09-10 11:13:47', '2020-09-10 11:13:47', '', 0, 'http://localhost/BlazeArt/?p=91', 0, 'post', '', 0),
(92, 1, '2020-09-10 11:13:37', '2020-09-10 11:13:37', '', 'pots 10', 'info post 10', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-09-10 11:13:37', '2020-09-10 11:13:37', '', 91, 'http://localhost/BlazeArt/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-09-10 11:44:00', '2020-09-10 11:44:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"33\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'services', 'services', 'publish', 'closed', 'closed', '', 'group_5f5a11556217b', '', '', '2020-09-10 11:44:45', '2020-09-10 11:44:45', '', 0, 'http://localhost/BlazeArt/?post_type=acf-field-group&#038;p=93', 0, 'acf-field-group', '', 0),
(94, 1, '2020-09-10 11:44:00', '2020-09-10 11:44:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title notice', 'title_notice', 'publish', 'closed', 'closed', '', 'field_5f5a116716377', '', '', '2020-09-10 11:44:00', '2020-09-10 11:44:00', '', 93, 'http://localhost/BlazeArt/?post_type=acf-field&p=94', 0, 'acf-field', '', 0),
(96, 1, '2020-09-10 11:45:57', '2020-09-10 11:45:57', '', 'Service', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-10 11:45:57', '2020-09-10 11:45:57', '', 33, 'http://localhost/BlazeArt/33-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2020-09-10 12:00:39', '2020-09-10 12:00:39', '', 'Development of internet stores', 'When developing online stores, we use the product WooComerce. This product is one of the most functional scripts for an online store for small and medium businesses.', 'publish', 'closed', 'closed', '', 'development-of-internet-stores', '', '', '2020-09-10 12:00:39', '2020-09-10 12:00:39', '', 0, 'http://localhost/BlazeArt/?post_type=blaze_services&#038;p=97', 0, 'blaze_services', '', 0),
(98, 1, '2020-09-10 12:00:24', '2020-09-10 12:00:24', '', 'service-1', '', 'inherit', 'open', 'closed', '', 'service-1', '', '', '2020-09-10 12:00:24', '2020-09-10 12:00:24', '', 97, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/service-1.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2020-09-10 12:00:25', '2020-09-10 12:00:25', '', 'service-2', '', 'inherit', 'open', 'closed', '', 'service-2', '', '', '2020-09-10 12:00:25', '2020-09-10 12:00:25', '', 97, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/service-2.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-09-10 12:00:26', '2020-09-10 12:00:26', '', 'service-3', '', 'inherit', 'open', 'closed', '', 'service-3', '', '', '2020-09-10 12:00:26', '2020-09-10 12:00:26', '', 97, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/service-3.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2020-09-10 12:00:27', '2020-09-10 12:00:27', '', 'service-4', '', 'inherit', 'open', 'closed', '', 'service-4', '', '', '2020-09-10 12:00:27', '2020-09-10 12:00:27', '', 97, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/service-4.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2020-09-10 12:00:28', '2020-09-10 12:00:28', '', 'service-5', '', 'inherit', 'open', 'closed', '', 'service-5', '', '', '2020-09-10 12:00:28', '2020-09-10 12:00:28', '', 97, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/service-5.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2020-09-10 12:00:29', '2020-09-10 12:00:29', '', 'service-bg', '', 'inherit', 'open', 'closed', '', 'service-bg', '', '', '2020-09-10 12:00:29', '2020-09-10 12:00:29', '', 97, 'http://localhost/BlazeArt/wp-content/uploads/2020/09/service-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-09-10 12:02:03', '2020-09-10 12:02:03', '', 'РАЗРАБОТКА ВЕБ ПРИЛОЖЕНИЙ', 'Разработка веб-приложений позволяет оптимизировать бизнес-процессы, освобождая время персонала для дополнительной работы. Как правило, для этих целей разрабатываются системы, которые позволяют отслеживать процессы и оперативно формировать отчеты по заданным параметрам.', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%ba%d0%b0-%d0%b2%d0%b5%d0%b1-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d0%b9', '', '', '2020-09-10 12:02:03', '2020-09-10 12:02:03', '', 0, 'http://localhost/BlazeArt/?post_type=blaze_services&#038;p=104', 0, 'blaze_services', '', 0),
(105, 1, '2020-09-10 12:09:20', '2020-09-10 12:09:20', '', 'Service', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-10 12:09:20', '2020-09-10 12:09:20', '', 33, 'http://localhost/BlazeArt/33-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(2, 'Menu', 'menu', 0),
(4, 'Shops', 'shops', 0),
(5, 'Landing page', 'landing', 0),
(6, 'Promo sites', 'promo', 0),
(7, 'CRM systems', 'crm', 0),
(10, 'Shops', 'shop', 0),
(11, 'Landing page', 'landing', 0),
(12, 'Promo site', 'promo', 0),
(13, 'CRM systems', 'crm', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 5, 0),
(7, 13, 0),
(9, 5, 0),
(9, 13, 0),
(11, 6, 0),
(11, 12, 0),
(13, 4, 0),
(13, 10, 0),
(15, 4, 0),
(15, 10, 0),
(35, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(52, 13, 0),
(83, 6, 0),
(83, 12, 0),
(86, 5, 0),
(86, 11, 0),
(89, 4, 0),
(89, 10, 0),
(91, 6, 0),
(91, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'Category', '', 0, 0),
(4, 4, 'blaze_kinds', '', 0, 3),
(5, 5, 'blaze_kinds', '', 0, 3),
(6, 6, 'blaze_kinds', '', 0, 3),
(7, 7, 'blaze_kinds', '', 0, 0),
(10, 10, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 1),
(12, 12, 'category', '', 0, 3),
(13, 13, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'blazeart'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4d74faeefc593c3dda474e7654aacad0f24f91f595b35a4cc0fc3af49253a35a\";a:4:{s:10:\"expiration\";i:1599824816;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\";s:5:\"login\";i:1599652016;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_site_health,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(25, 1, 'wp_user-settings-time', '1599738997'),
(26, 1, 'wp_mail_smtp_notice_educational_for_gmail_dismissed', '1');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'blazeart', '$P$By5xeDDLvRehrGhgTNd9jGz5u2UJ/b/', 'blazeart', 'andreymazur99@ukr.net', 'http://localhost/BlazeArt', '2020-09-07 11:39:59', '', 0, 'blazeart');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-09-10 07:45:47'),
(2, 'wp_mail_smtp_send_usage_data', 'W10=', '2020-09-10 08:44:15');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Індекси таблиці `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Індекси таблиці `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Індекси таблиці `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Індекси таблиці `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
