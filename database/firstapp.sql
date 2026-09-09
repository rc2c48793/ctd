-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2026 at 09:20 AM
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
-- Database: `firstapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1788939555;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1788943155;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1788943178;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1788943185;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1788946754;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1788948554;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1788950354;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1789014157;a:1:{s:41:\"wp_privacy_personal_data_cleanup_requests\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1789378803;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1789461555;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/custom-wp-theme-dev/myapp', 'on'),
(3, 'home', 'http://localhost/custom-wp-theme-dev/myapp', 'on'),
(4, 'blogname', 'First app', 'on'),
(5, 'blogdescription', 'My first custom theme', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'Rahul@click2commission.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:109:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:0:{}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:3:{i:0;s:83:\"C:\\xampp\\htdocs\\custom-wp-theme-dev\\myapp/wp-content/themes/custom-theme/header.php\";i:1;s:82:\"C:\\xampp\\htdocs\\custom-wp-theme-dev\\myapp/wp-content/themes/custom-theme/style.css\";i:2;s:0:\"\";}', 'off'),
(41, 'template', 'custom-theme-2', 'on'),
(42, 'stylesheet', 'custom-theme-2', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '61833', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '75', 'on'),
(83, 'page_on_front', '10', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '0', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1802507954', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '61833', 'on'),
(103, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:9:{i:2;a:1:{s:7:\"content\";s:51:\"<!-- wp:search {\"label\":\"This is search bar.\"} /-->\";}i:3;a:1:{s:7:\"content\";s:185:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Posts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts /--></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:259:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayContent\":\"none\"} /--></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:177:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Archives</h2>\n<!-- /wp:heading -->\n\n<!-- wp:archives /--></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:181:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Categories</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /--></div>\n<!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:54:\"<!-- wp:paragraph -->\n<p>hi</p>\n<!-- /wp:paragraph -->\";}i:10;a:1:{s:7:\"content\";s:60:\"<!-- wp:search {\"label\":\"Search\",\"buttonText\":\"Search\"} /-->\";}i:11;a:1:{s:7:\"content\";s:23:\"<!-- wp:categories /-->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-7\";}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"block-10\";i:1;s:8:\"block-11\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"7.0.3\";s:5:\"files\";a:596:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:22:\"archives/style-rtl.css\";i:17;s:26:\"archives/style-rtl.min.css\";i:18;s:18:\"archives/style.css\";i:19;s:22:\"archives/style.min.css\";i:20;s:20:\"audio/editor-rtl.css\";i:21;s:24:\"audio/editor-rtl.min.css\";i:22;s:16:\"audio/editor.css\";i:23;s:20:\"audio/editor.min.css\";i:24;s:19:\"audio/style-rtl.css\";i:25;s:23:\"audio/style-rtl.min.css\";i:26;s:15:\"audio/style.css\";i:27;s:19:\"audio/style.min.css\";i:28;s:19:\"audio/theme-rtl.css\";i:29;s:23:\"audio/theme-rtl.min.css\";i:30;s:15:\"audio/theme.css\";i:31;s:19:\"audio/theme.min.css\";i:32;s:21:\"avatar/editor-rtl.css\";i:33;s:25:\"avatar/editor-rtl.min.css\";i:34;s:17:\"avatar/editor.css\";i:35;s:21:\"avatar/editor.min.css\";i:36;s:20:\"avatar/style-rtl.css\";i:37;s:24:\"avatar/style-rtl.min.css\";i:38;s:16:\"avatar/style.css\";i:39;s:20:\"avatar/style.min.css\";i:40;s:25:\"breadcrumbs/style-rtl.css\";i:41;s:29:\"breadcrumbs/style-rtl.min.css\";i:42;s:21:\"breadcrumbs/style.css\";i:43;s:25:\"breadcrumbs/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:19:\"icon/editor-rtl.css\";i:217;s:23:\"icon/editor-rtl.min.css\";i:218;s:15:\"icon/editor.css\";i:219;s:19:\"icon/editor.min.css\";i:220;s:18:\"icon/style-rtl.css\";i:221;s:22:\"icon/style-rtl.min.css\";i:222;s:14:\"icon/style.css\";i:223;s:18:\"icon/style.min.css\";i:224;s:20:\"image/editor-rtl.css\";i:225;s:24:\"image/editor-rtl.min.css\";i:226;s:16:\"image/editor.css\";i:227;s:20:\"image/editor.min.css\";i:228;s:19:\"image/style-rtl.css\";i:229;s:23:\"image/style-rtl.min.css\";i:230;s:15:\"image/style.css\";i:231;s:19:\"image/style.min.css\";i:232;s:19:\"image/theme-rtl.css\";i:233;s:23:\"image/theme-rtl.min.css\";i:234;s:15:\"image/theme.css\";i:235;s:19:\"image/theme.min.css\";i:236;s:29:\"latest-comments/style-rtl.css\";i:237;s:33:\"latest-comments/style-rtl.min.css\";i:238;s:25:\"latest-comments/style.css\";i:239;s:29:\"latest-comments/style.min.css\";i:240;s:27:\"latest-posts/editor-rtl.css\";i:241;s:31:\"latest-posts/editor-rtl.min.css\";i:242;s:23:\"latest-posts/editor.css\";i:243;s:27:\"latest-posts/editor.min.css\";i:244;s:26:\"latest-posts/style-rtl.css\";i:245;s:30:\"latest-posts/style-rtl.min.css\";i:246;s:22:\"latest-posts/style.css\";i:247;s:26:\"latest-posts/style.min.css\";i:248;s:18:\"list/style-rtl.css\";i:249;s:22:\"list/style-rtl.min.css\";i:250;s:14:\"list/style.css\";i:251;s:18:\"list/style.min.css\";i:252;s:22:\"loginout/style-rtl.css\";i:253;s:26:\"loginout/style-rtl.min.css\";i:254;s:18:\"loginout/style.css\";i:255;s:22:\"loginout/style.min.css\";i:256;s:19:\"math/editor-rtl.css\";i:257;s:23:\"math/editor-rtl.min.css\";i:258;s:15:\"math/editor.css\";i:259;s:19:\"math/editor.min.css\";i:260;s:18:\"math/style-rtl.css\";i:261;s:22:\"math/style-rtl.min.css\";i:262;s:14:\"math/style.css\";i:263;s:18:\"math/style.min.css\";i:264;s:25:\"media-text/editor-rtl.css\";i:265;s:29:\"media-text/editor-rtl.min.css\";i:266;s:21:\"media-text/editor.css\";i:267;s:25:\"media-text/editor.min.css\";i:268;s:24:\"media-text/style-rtl.css\";i:269;s:28:\"media-text/style-rtl.min.css\";i:270;s:20:\"media-text/style.css\";i:271;s:24:\"media-text/style.min.css\";i:272;s:19:\"more/editor-rtl.css\";i:273;s:23:\"more/editor-rtl.min.css\";i:274;s:15:\"more/editor.css\";i:275;s:19:\"more/editor.min.css\";i:276;s:30:\"navigation-link/editor-rtl.css\";i:277;s:34:\"navigation-link/editor-rtl.min.css\";i:278;s:26:\"navigation-link/editor.css\";i:279;s:30:\"navigation-link/editor.min.css\";i:280;s:29:\"navigation-link/style-rtl.css\";i:281;s:33:\"navigation-link/style-rtl.min.css\";i:282;s:25:\"navigation-link/style.css\";i:283;s:29:\"navigation-link/style.min.css\";i:284;s:38:\"navigation-overlay-close/style-rtl.css\";i:285;s:42:\"navigation-overlay-close/style-rtl.min.css\";i:286;s:34:\"navigation-overlay-close/style.css\";i:287;s:38:\"navigation-overlay-close/style.min.css\";i:288;s:33:\"navigation-submenu/editor-rtl.css\";i:289;s:37:\"navigation-submenu/editor-rtl.min.css\";i:290;s:29:\"navigation-submenu/editor.css\";i:291;s:33:\"navigation-submenu/editor.min.css\";i:292;s:25:\"navigation/editor-rtl.css\";i:293;s:29:\"navigation/editor-rtl.min.css\";i:294;s:21:\"navigation/editor.css\";i:295;s:25:\"navigation/editor.min.css\";i:296;s:24:\"navigation/style-rtl.css\";i:297;s:28:\"navigation/style-rtl.min.css\";i:298;s:20:\"navigation/style.css\";i:299;s:24:\"navigation/style.min.css\";i:300;s:23:\"nextpage/editor-rtl.css\";i:301;s:27:\"nextpage/editor-rtl.min.css\";i:302;s:19:\"nextpage/editor.css\";i:303;s:23:\"nextpage/editor.min.css\";i:304;s:24:\"page-list/editor-rtl.css\";i:305;s:28:\"page-list/editor-rtl.min.css\";i:306;s:20:\"page-list/editor.css\";i:307;s:24:\"page-list/editor.min.css\";i:308;s:23:\"page-list/style-rtl.css\";i:309;s:27:\"page-list/style-rtl.min.css\";i:310;s:19:\"page-list/style.css\";i:311;s:23:\"page-list/style.min.css\";i:312;s:24:\"paragraph/editor-rtl.css\";i:313;s:28:\"paragraph/editor-rtl.min.css\";i:314;s:20:\"paragraph/editor.css\";i:315;s:24:\"paragraph/editor.min.css\";i:316;s:23:\"paragraph/style-rtl.css\";i:317;s:27:\"paragraph/style-rtl.min.css\";i:318;s:19:\"paragraph/style.css\";i:319;s:23:\"paragraph/style.min.css\";i:320;s:35:\"post-author-biography/style-rtl.css\";i:321;s:39:\"post-author-biography/style-rtl.min.css\";i:322;s:31:\"post-author-biography/style.css\";i:323;s:35:\"post-author-biography/style.min.css\";i:324;s:30:\"post-author-name/style-rtl.css\";i:325;s:34:\"post-author-name/style-rtl.min.css\";i:326;s:26:\"post-author-name/style.css\";i:327;s:30:\"post-author-name/style.min.css\";i:328;s:26:\"post-author/editor-rtl.css\";i:329;s:30:\"post-author/editor-rtl.min.css\";i:330;s:22:\"post-author/editor.css\";i:331;s:26:\"post-author/editor.min.css\";i:332;s:25:\"post-author/style-rtl.css\";i:333;s:29:\"post-author/style-rtl.min.css\";i:334;s:21:\"post-author/style.css\";i:335;s:25:\"post-author/style.min.css\";i:336;s:33:\"post-comments-count/style-rtl.css\";i:337;s:37:\"post-comments-count/style-rtl.min.css\";i:338;s:29:\"post-comments-count/style.css\";i:339;s:33:\"post-comments-count/style.min.css\";i:340;s:33:\"post-comments-form/editor-rtl.css\";i:341;s:37:\"post-comments-form/editor-rtl.min.css\";i:342;s:29:\"post-comments-form/editor.css\";i:343;s:33:\"post-comments-form/editor.min.css\";i:344;s:32:\"post-comments-form/style-rtl.css\";i:345;s:36:\"post-comments-form/style-rtl.min.css\";i:346;s:28:\"post-comments-form/style.css\";i:347;s:32:\"post-comments-form/style.min.css\";i:348;s:32:\"post-comments-link/style-rtl.css\";i:349;s:36:\"post-comments-link/style-rtl.min.css\";i:350;s:28:\"post-comments-link/style.css\";i:351;s:32:\"post-comments-link/style.min.css\";i:352;s:26:\"post-content/style-rtl.css\";i:353;s:30:\"post-content/style-rtl.min.css\";i:354;s:22:\"post-content/style.css\";i:355;s:26:\"post-content/style.min.css\";i:356;s:23:\"post-date/style-rtl.css\";i:357;s:27:\"post-date/style-rtl.min.css\";i:358;s:19:\"post-date/style.css\";i:359;s:23:\"post-date/style.min.css\";i:360;s:27:\"post-excerpt/editor-rtl.css\";i:361;s:31:\"post-excerpt/editor-rtl.min.css\";i:362;s:23:\"post-excerpt/editor.css\";i:363;s:27:\"post-excerpt/editor.min.css\";i:364;s:26:\"post-excerpt/style-rtl.css\";i:365;s:30:\"post-excerpt/style-rtl.min.css\";i:366;s:22:\"post-excerpt/style.css\";i:367;s:26:\"post-excerpt/style.min.css\";i:368;s:34:\"post-featured-image/editor-rtl.css\";i:369;s:38:\"post-featured-image/editor-rtl.min.css\";i:370;s:30:\"post-featured-image/editor.css\";i:371;s:34:\"post-featured-image/editor.min.css\";i:372;s:33:\"post-featured-image/style-rtl.css\";i:373;s:37:\"post-featured-image/style-rtl.min.css\";i:374;s:29:\"post-featured-image/style.css\";i:375;s:33:\"post-featured-image/style.min.css\";i:376;s:34:\"post-navigation-link/style-rtl.css\";i:377;s:38:\"post-navigation-link/style-rtl.min.css\";i:378;s:30:\"post-navigation-link/style.css\";i:379;s:34:\"post-navigation-link/style.min.css\";i:380;s:27:\"post-template/style-rtl.css\";i:381;s:31:\"post-template/style-rtl.min.css\";i:382;s:23:\"post-template/style.css\";i:383;s:27:\"post-template/style.min.css\";i:384;s:24:\"post-terms/style-rtl.css\";i:385;s:28:\"post-terms/style-rtl.min.css\";i:386;s:20:\"post-terms/style.css\";i:387;s:24:\"post-terms/style.min.css\";i:388;s:31:\"post-time-to-read/style-rtl.css\";i:389;s:35:\"post-time-to-read/style-rtl.min.css\";i:390;s:27:\"post-time-to-read/style.css\";i:391;s:31:\"post-time-to-read/style.min.css\";i:392;s:24:\"post-title/style-rtl.css\";i:393;s:28:\"post-title/style-rtl.min.css\";i:394;s:20:\"post-title/style.css\";i:395;s:24:\"post-title/style.min.css\";i:396;s:26:\"preformatted/style-rtl.css\";i:397;s:30:\"preformatted/style-rtl.min.css\";i:398;s:22:\"preformatted/style.css\";i:399;s:26:\"preformatted/style.min.css\";i:400;s:24:\"pullquote/editor-rtl.css\";i:401;s:28:\"pullquote/editor-rtl.min.css\";i:402;s:20:\"pullquote/editor.css\";i:403;s:24:\"pullquote/editor.min.css\";i:404;s:23:\"pullquote/style-rtl.css\";i:405;s:27:\"pullquote/style-rtl.min.css\";i:406;s:19:\"pullquote/style.css\";i:407;s:23:\"pullquote/style.min.css\";i:408;s:23:\"pullquote/theme-rtl.css\";i:409;s:27:\"pullquote/theme-rtl.min.css\";i:410;s:19:\"pullquote/theme.css\";i:411;s:23:\"pullquote/theme.min.css\";i:412;s:39:\"query-pagination-numbers/editor-rtl.css\";i:413;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:414;s:35:\"query-pagination-numbers/editor.css\";i:415;s:39:\"query-pagination-numbers/editor.min.css\";i:416;s:31:\"query-pagination/editor-rtl.css\";i:417;s:35:\"query-pagination/editor-rtl.min.css\";i:418;s:27:\"query-pagination/editor.css\";i:419;s:31:\"query-pagination/editor.min.css\";i:420;s:30:\"query-pagination/style-rtl.css\";i:421;s:34:\"query-pagination/style-rtl.min.css\";i:422;s:26:\"query-pagination/style.css\";i:423;s:30:\"query-pagination/style.min.css\";i:424;s:25:\"query-title/style-rtl.css\";i:425;s:29:\"query-title/style-rtl.min.css\";i:426;s:21:\"query-title/style.css\";i:427;s:25:\"query-title/style.min.css\";i:428;s:25:\"query-total/style-rtl.css\";i:429;s:29:\"query-total/style-rtl.min.css\";i:430;s:21:\"query-total/style.css\";i:431;s:25:\"query-total/style.min.css\";i:432;s:20:\"query/editor-rtl.css\";i:433;s:24:\"query/editor-rtl.min.css\";i:434;s:16:\"query/editor.css\";i:435;s:20:\"query/editor.min.css\";i:436;s:19:\"quote/style-rtl.css\";i:437;s:23:\"quote/style-rtl.min.css\";i:438;s:15:\"quote/style.css\";i:439;s:19:\"quote/style.min.css\";i:440;s:19:\"quote/theme-rtl.css\";i:441;s:23:\"quote/theme-rtl.min.css\";i:442;s:15:\"quote/theme.css\";i:443;s:19:\"quote/theme.min.css\";i:444;s:23:\"read-more/style-rtl.css\";i:445;s:27:\"read-more/style-rtl.min.css\";i:446;s:19:\"read-more/style.css\";i:447;s:23:\"read-more/style.min.css\";i:448;s:18:\"rss/editor-rtl.css\";i:449;s:22:\"rss/editor-rtl.min.css\";i:450;s:14:\"rss/editor.css\";i:451;s:18:\"rss/editor.min.css\";i:452;s:17:\"rss/style-rtl.css\";i:453;s:21:\"rss/style-rtl.min.css\";i:454;s:13:\"rss/style.css\";i:455;s:17:\"rss/style.min.css\";i:456;s:21:\"search/editor-rtl.css\";i:457;s:25:\"search/editor-rtl.min.css\";i:458;s:17:\"search/editor.css\";i:459;s:21:\"search/editor.min.css\";i:460;s:20:\"search/style-rtl.css\";i:461;s:24:\"search/style-rtl.min.css\";i:462;s:16:\"search/style.css\";i:463;s:20:\"search/style.min.css\";i:464;s:20:\"search/theme-rtl.css\";i:465;s:24:\"search/theme-rtl.min.css\";i:466;s:16:\"search/theme.css\";i:467;s:20:\"search/theme.min.css\";i:468;s:24:\"separator/editor-rtl.css\";i:469;s:28:\"separator/editor-rtl.min.css\";i:470;s:20:\"separator/editor.css\";i:471;s:24:\"separator/editor.min.css\";i:472;s:23:\"separator/style-rtl.css\";i:473;s:27:\"separator/style-rtl.min.css\";i:474;s:19:\"separator/style.css\";i:475;s:23:\"separator/style.min.css\";i:476;s:23:\"separator/theme-rtl.css\";i:477;s:27:\"separator/theme-rtl.min.css\";i:478;s:19:\"separator/theme.css\";i:479;s:23:\"separator/theme.min.css\";i:480;s:24:\"shortcode/editor-rtl.css\";i:481;s:28:\"shortcode/editor-rtl.min.css\";i:482;s:20:\"shortcode/editor.css\";i:483;s:24:\"shortcode/editor.min.css\";i:484;s:24:\"site-logo/editor-rtl.css\";i:485;s:28:\"site-logo/editor-rtl.min.css\";i:486;s:20:\"site-logo/editor.css\";i:487;s:24:\"site-logo/editor.min.css\";i:488;s:23:\"site-logo/style-rtl.css\";i:489;s:27:\"site-logo/style-rtl.min.css\";i:490;s:19:\"site-logo/style.css\";i:491;s:23:\"site-logo/style.min.css\";i:492;s:27:\"site-tagline/editor-rtl.css\";i:493;s:31:\"site-tagline/editor-rtl.min.css\";i:494;s:23:\"site-tagline/editor.css\";i:495;s:27:\"site-tagline/editor.min.css\";i:496;s:26:\"site-tagline/style-rtl.css\";i:497;s:30:\"site-tagline/style-rtl.min.css\";i:498;s:22:\"site-tagline/style.css\";i:499;s:26:\"site-tagline/style.min.css\";i:500;s:25:\"site-title/editor-rtl.css\";i:501;s:29:\"site-title/editor-rtl.min.css\";i:502;s:21:\"site-title/editor.css\";i:503;s:25:\"site-title/editor.min.css\";i:504;s:24:\"site-title/style-rtl.css\";i:505;s:28:\"site-title/style-rtl.min.css\";i:506;s:20:\"site-title/style.css\";i:507;s:24:\"site-title/style.min.css\";i:508;s:26:\"social-link/editor-rtl.css\";i:509;s:30:\"social-link/editor-rtl.min.css\";i:510;s:22:\"social-link/editor.css\";i:511;s:26:\"social-link/editor.min.css\";i:512;s:27:\"social-links/editor-rtl.css\";i:513;s:31:\"social-links/editor-rtl.min.css\";i:514;s:23:\"social-links/editor.css\";i:515;s:27:\"social-links/editor.min.css\";i:516;s:26:\"social-links/style-rtl.css\";i:517;s:30:\"social-links/style-rtl.min.css\";i:518;s:22:\"social-links/style.css\";i:519;s:26:\"social-links/style.min.css\";i:520;s:21:\"spacer/editor-rtl.css\";i:521;s:25:\"spacer/editor-rtl.min.css\";i:522;s:17:\"spacer/editor.css\";i:523;s:21:\"spacer/editor.min.css\";i:524;s:20:\"spacer/style-rtl.css\";i:525;s:24:\"spacer/style-rtl.min.css\";i:526;s:16:\"spacer/style.css\";i:527;s:20:\"spacer/style.min.css\";i:528;s:20:\"table/editor-rtl.css\";i:529;s:24:\"table/editor-rtl.min.css\";i:530;s:16:\"table/editor.css\";i:531;s:20:\"table/editor.min.css\";i:532;s:19:\"table/style-rtl.css\";i:533;s:23:\"table/style-rtl.min.css\";i:534;s:15:\"table/style.css\";i:535;s:19:\"table/style.min.css\";i:536;s:19:\"table/theme-rtl.css\";i:537;s:23:\"table/theme-rtl.min.css\";i:538;s:15:\"table/theme.css\";i:539;s:19:\"table/theme.min.css\";i:540;s:23:\"tag-cloud/style-rtl.css\";i:541;s:27:\"tag-cloud/style-rtl.min.css\";i:542;s:19:\"tag-cloud/style.css\";i:543;s:23:\"tag-cloud/style.min.css\";i:544;s:28:\"template-part/editor-rtl.css\";i:545;s:32:\"template-part/editor-rtl.min.css\";i:546;s:24:\"template-part/editor.css\";i:547;s:28:\"template-part/editor.min.css\";i:548;s:27:\"template-part/theme-rtl.css\";i:549;s:31:\"template-part/theme-rtl.min.css\";i:550;s:23:\"template-part/theme.css\";i:551;s:27:\"template-part/theme.min.css\";i:552;s:24:\"term-count/style-rtl.css\";i:553;s:28:\"term-count/style-rtl.min.css\";i:554;s:20:\"term-count/style.css\";i:555;s:24:\"term-count/style.min.css\";i:556;s:30:\"term-description/style-rtl.css\";i:557;s:34:\"term-description/style-rtl.min.css\";i:558;s:26:\"term-description/style.css\";i:559;s:30:\"term-description/style.min.css\";i:560;s:23:\"term-name/style-rtl.css\";i:561;s:27:\"term-name/style-rtl.min.css\";i:562;s:19:\"term-name/style.css\";i:563;s:23:\"term-name/style.min.css\";i:564;s:28:\"term-template/editor-rtl.css\";i:565;s:32:\"term-template/editor-rtl.min.css\";i:566;s:24:\"term-template/editor.css\";i:567;s:28:\"term-template/editor.min.css\";i:568;s:27:\"term-template/style-rtl.css\";i:569;s:31:\"term-template/style-rtl.min.css\";i:570;s:23:\"term-template/style.css\";i:571;s:27:\"term-template/style.min.css\";i:572;s:27:\"text-columns/editor-rtl.css\";i:573;s:31:\"text-columns/editor-rtl.min.css\";i:574;s:23:\"text-columns/editor.css\";i:575;s:27:\"text-columns/editor.min.css\";i:576;s:26:\"text-columns/style-rtl.css\";i:577;s:30:\"text-columns/style-rtl.min.css\";i:578;s:22:\"text-columns/style.css\";i:579;s:26:\"text-columns/style.min.css\";i:580;s:19:\"verse/style-rtl.css\";i:581;s:23:\"verse/style-rtl.min.css\";i:582;s:15:\"verse/style.css\";i:583;s:19:\"verse/style.min.css\";i:584;s:20:\"video/editor-rtl.css\";i:585;s:24:\"video/editor-rtl.min.css\";i:586;s:16:\"video/editor.css\";i:587;s:20:\"video/editor.min.css\";i:588;s:19:\"video/style-rtl.css\";i:589;s:23:\"video/style-rtl.min.css\";i:590;s:15:\"video/style.css\";i:591;s:19:\"video/style.min.css\";i:592;s:19:\"video/theme-rtl.css\";i:593;s:23:\"video/theme-rtl.min.css\";i:594;s:15:\"video/theme.css\";i:595;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1786958187;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(126, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"94289267f68ccac1fefa45915ab93347\";s:6:\"blocks\";a:9:{s:32:\"832dc2d864d79097d8b8b493ad93453b\";s:0:\"\";s:32:\"45d3e0c4afcbd8cf25cb1ba51abfb3d7\";s:46:\":root :where(.wp-block-icon svg){width: 24px;}\";s:32:\"feca6e996f694be2d29599793228e0d7\";s:0:\"\";s:32:\"5eef131663eddaf830554df656fc2968\";s:324:\":where(.wp-block-gallery.is-layout-flex){gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) );}:where(.wp-block-gallery.is-layout-grid){gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) );}\";s:32:\"c99c05932c6685777ec5b856698fcc7d\";s:118:\":where(.wp-block-latest-posts.is-layout-flex){gap: 1.25em;}:where(.wp-block-latest-posts.is-layout-grid){gap: 1.25em;}\";s:32:\"dec8d648f30b13caec8e61374591787d\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:32:\"6c35533f7a92cce94808323603db9fc8\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:32:\"6a0505cd5c78a87ed77570cda43c1132\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:32:\"25a66f156386551185570f72a9f7d44e\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(128, 'recovery_keys', 'a:1:{s:22:\"2DUMTIRAPjItRteqflP22C\";a:2:{s:10:\"hashed_key\";s:49:\"$generic$O0LjR36C-tA8nXdEHjVCiNe75I1VkysrX94_aYwH\";s:10:\"created_at\";i:1788867904;}}', 'off'),
(139, 'can_compress_scripts', '1', 'on'),
(154, 'finished_updating_comment_type', '1', 'auto'),
(159, 'current_theme', 'custom theme 2', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(160, 'theme_mods_custom-theme', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:36;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1787744356;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-7\";}s:12:\"my-sidebar-1\";a:0:{}s:12:\"my-sidebar-2\";a:0:{}}}}', 'off'),
(161, 'theme_switched', '', 'auto'),
(168, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"Rahul@click2commission.com\";s:7:\"version\";s:3:\"7.1\";s:9:\"timestamp\";i:1787286166;}', 'off'),
(194, 'WPLANG', '', 'auto'),
(195, 'new_admin_email', 'Rahul@click2commission.com', 'auto'),
(207, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":10,\"critical\":0}', 'on'),
(224, 'recovery_mode_email_last_sent', '1788867904', 'auto'),
(265, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(318, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-7.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"7.1\";s:7:\"version\";s:3:\"7.1\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1788928344;s:15:\"version_checked\";s:3:\"7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(333, 'site_logo', '36', 'auto'),
(338, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(439, 'theme_mods_custom-theme-2', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:3;s:11:\"footer_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(500, 'category_children', 'a:0:{}', 'auto'),
(559, '_site_transient_timeout_browser_389568c894563e7e475b1f3d47117e62', '1788943444', 'off'),
(560, '_site_transient_browser_389568c894563e7e475b1f3d47117e62', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"152.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(730, 'my_text_box_setting', 'My custom text', 'on'),
(734, 'my_copyright_text_box_setting', '@ copyright', 'on'),
(735, 'my_copyright_box_setting_id', '@ myapp copyright 2026', 'on'),
(739, 'my_copyright_txt_id', 'copyright text', 'on'),
(742, 'my_footer_link_txt', 'About', 'on'),
(743, 'my_footer_pages_dropdown', '10', 'on'),
(753, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1789462011', 'off'),
(754, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:3:\"7.4\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(761, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1788977608', 'off'),
(762, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Rajasthan 2026\";s:3:\"url\";s:36:\"https://rajasthan.wordcamp.org/2026/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2026-10-03 00:00:00\";s:8:\"end_date\";s:19:\"2026-10-04 00:00:00\";s:20:\"start_unix_timestamp\";i:1790965800;s:18:\"end_unix_timestamp\";i:1791052200;s:8:\"location\";a:4:{s:8:\"location\";s:24:\"Jaipur, Rajasthan, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:26.8677911;s:9:\"longitude\";d:75.8082836;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:19:\"WordCamp Delhi 2026\";s:3:\"url\";s:32:\"https://delhi.wordcamp.org/2026/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2026-12-12 08:00:00\";s:8:\"end_date\";s:19:\"2026-12-13 00:00:00\";s:20:\"start_unix_timestamp\";i:1797042600;s:18:\"end_unix_timestamp\";i:1797100200;s:8:\"location\";a:4:{s:8:\"location\";s:16:\"New Delhi, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:28.6175747;s:9:\"longitude\";d:77.2176;}}}}', 'off'),
(770, '_site_transient_timeout_wp_font_collection_url_https://s.w.org/images/fonts/wp-7.1/collections/google-fonts-with-preview.json', '1788954494', 'off'),
(771, 'my_image_uploader', 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg', 'on'),
(778, '_site_transient_timeout_theme_roots', '1788930145', 'off'),
(779, '_site_transient_theme_roots', 'a:5:{s:5:\"astra\";s:7:\"/themes\";s:14:\"custom-theme-2\";s:7:\"/themes\";s:12:\"custom-theme\";s:7:\"/themes\";s:15:\"hello-elementor\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'off'),
(780, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1788928347;s:7:\"checked\";a:5:{s:5:\"astra\";s:6:\"4.13.9\";s:14:\"custom-theme-2\";s:5:\"1.0.0\";s:12:\"custom-theme\";s:5:\"1.0.0\";s:15:\"hello-elementor\";s:5:\"3.4.9\";s:16:\"twentytwentyfive\";s:3:\"1.5\";}s:8:\"response\";a:2:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:7:\"4.13.11\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/astra.4.13.11.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:15:\"hello-elementor\";a:6:{s:5:\"theme\";s:15:\"hello-elementor\";s:11:\"new_version\";s:5:\"3.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/hello-elementor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/hello-elementor.3.5.1.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";}}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.5.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}', 'off'),
(781, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1788928348;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"7.1\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.7\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(784, 'my_colorpicker_id', '#81d742', 'on'),
(791, '_site_transient_timeout_available_translations', '1788945217', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(792, '_site_transient_available_translations', 'a:133:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:6:\"6.0.14\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0.14/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-05 15:48:07\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.29\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.29/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-03-29 23:05:25\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/7.0.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:6:\"6.4.10\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/6.4.10/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.31\";s:7:\"updated\";s:19:\"2026-06-07 19:51:04\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.31/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-03-02 09:00:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/7.0.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-04-22 11:27:25\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/7.0.4/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2.10/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-25 20:24:24\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-28 13:26:54\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-08 15:15:11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-05-28 13:56:30\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-06-16 18:46:25\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-09 02:56:39\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-09 02:57:34\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/7.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-20 11:23:55\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-20 11:21:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/7.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/6.2.10/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 18:41:06\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-13 19:22:45\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-08 16:31:35\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-02 16:24:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-07 09:33:41\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-07 09:51:08\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-18 09:58:20\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-07-27 00:11:17\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-12 23:13:43\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-08 18:28:06\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:6:\"6.4.10\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.4.10/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2.10/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.15\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.15/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.21\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.21/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.26\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.26/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-21 15:41:12\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-26 20:45:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-28 18:12:40\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-22 09:48:08\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-11-05 21:53:17\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9-RC/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 23:23:42\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-02-14 17:29:08\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-08 10:22:39\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-07-20 16:10:31\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:6:\"6.5.10\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.5.10/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-20 16:47:50\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.29\";s:7:\"updated\";s:19:\"2025-12-20 19:08:53\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.29/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-21 09:42:29\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-04 13:56:14\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-08 07:02:53\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.34\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.34/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2.10/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"6.4.10\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.4.10/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-06 18:32:32\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/6.2.10/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-08-08 12:55:19\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/7.0.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-07-07 08:33:25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/7.0.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.31\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.31/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-22 09:38:05\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-21 14:44:55\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.31\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.31/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-06 09:27:08\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/6.2.10/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9-RC/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.26\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.26/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-05-12 09:01:27\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-09 01:59:17\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-23 15:48:53\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/7.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-03-25 22:55:12\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.0.4/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 11:59:39\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-09-27 20:51:17\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.9.7\";s:7:\"updated\";s:19:\"2026-02-20 20:55:46\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:6:\"6.0.14\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.0.14/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-20 20:02:12\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:6:\"6.5.10\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.10/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-31 06:28:52\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.20\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.20/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-06-03 11:12:51\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-26 05:50:28\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-20 03:50:37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-30 15:51:07\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-30 16:24:30\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-03 12:29:36\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/7.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.29\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.29/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:3:\"pcm\";a:8:{s:8:\"language\";s:3:\"pcm\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-27 10:21:48\";s:12:\"english_name\";s:15:\"Nigerian Pidgin\";s:11:\"native_name\";s:15:\"Nigerian Pidgin\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/7.1/pcm.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"pcm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-02 08:19:08\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.35\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.35/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-07-27 14:30:54\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 12:42:57\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:6:\"6.4.10\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.4.10/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 12:58:29\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/7.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-14 07:49:31\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-20 06:28:04\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.21\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.21/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-24 07:43:16\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-04-24 16:58:02\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/6.9-RC/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-07-16 12:28:04\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-05-28 08:38:28\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.9.7\";s:7:\"updated\";s:19:\"2025-12-03 15:37:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-21 10:39:10\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.9.7\";s:7:\"updated\";s:19:\"2026-02-21 11:17:30\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.7/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.15\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.15/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-28 14:51:26\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 19:54:51\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-25 15:48:56\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-07-15 10:36:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/7.0.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.21\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.21/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-09-02 02:33:19\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/7.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:3:\"yor\";a:8:{s:8:\"language\";s:3:\"yor\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-04-18 05:57:08\";s:12:\"english_name\";s:6:\"Yoruba\";s:11:\"native_name\";s:8:\"Yorùbá\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.0.4/yor.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"yo\";i:2;s:3:\"yor\";i:3;s:3:\"yor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"Tẹ̀síwájú si\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"7.1\";s:7:\"updated\";s:19:\"2026-08-19 14:27:41\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/7.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"7.0.4\";s:7:\"updated\";s:19:\"2026-04-27 20:54:39\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/7.0.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:6:\"6.2.10\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2.10/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(796, '_site_transient_timeout_wp_theme_files_patterns-352d2c60012194c01b745e1db51ebd16', '1788940147', 'off'),
(797, '_site_transient_wp_theme_files_patterns-352d2c60012194c01b745e1db51ebd16', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 10, '_edit_lock', '1787217834:1'),
(6, 12, '_edit_lock', '1787217836:1'),
(7, 13, '_edit_lock', '1787217838:1'),
(8, 16, '_menu_item_type', 'post_type'),
(9, 16, '_menu_item_menu_item_parent', '0'),
(10, 16, '_menu_item_object_id', '13'),
(11, 16, '_menu_item_object', 'page'),
(12, 16, '_menu_item_target', ''),
(13, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 16, '_menu_item_xfn', ''),
(15, 16, '_menu_item_url', ''),
(17, 17, '_menu_item_type', 'post_type'),
(18, 17, '_menu_item_menu_item_parent', '0'),
(19, 17, '_menu_item_object_id', '12'),
(20, 17, '_menu_item_object', 'page'),
(21, 17, '_menu_item_target', ''),
(22, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 17, '_menu_item_xfn', ''),
(24, 17, '_menu_item_url', ''),
(26, 18, '_menu_item_type', 'post_type'),
(27, 18, '_menu_item_menu_item_parent', '0'),
(28, 18, '_menu_item_object_id', '10'),
(29, 18, '_menu_item_object', 'page'),
(30, 18, '_menu_item_target', ''),
(31, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 18, '_menu_item_xfn', ''),
(33, 18, '_menu_item_url', ''),
(44, 21, '_edit_lock', '1787221124:1'),
(45, 23, '_menu_item_type', 'post_type'),
(46, 23, '_menu_item_menu_item_parent', '0'),
(47, 23, '_menu_item_object_id', '21'),
(48, 23, '_menu_item_object', 'page'),
(49, 23, '_menu_item_target', ''),
(50, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 23, '_menu_item_xfn', ''),
(52, 23, '_menu_item_url', ''),
(54, 24, '_wp_trash_meta_status', 'publish'),
(55, 24, '_wp_trash_meta_time', '1787221122'),
(58, 26, '_wp_attached_file', '2026/08/logo-e1787226468919.png'),
(59, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:256;s:6:\"height\";i:72;s:4:\"file\";s:31:\"2026/08/logo-e1787226468919.png\";s:8:\"filesize\";i:3927;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"logo-e1787226468919-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2370;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(62, 28, '_wp_attached_file', '2026/08/firstapp.png'),
(63, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:699;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2026/08/firstapp.png\";s:8:\"filesize\";i:29324;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(64, 29, '_edit_lock', '1787225689:1'),
(65, 29, '_wp_trash_meta_status', 'publish'),
(66, 29, '_wp_trash_meta_time', '1787225695'),
(67, 30, '_wp_attached_file', '2026/08/cropped-logo.png'),
(68, 30, '_wp_attachment_context', 'custom-logo'),
(69, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:85;s:4:\"file\";s:24:\"2026/08/cropped-logo.png\";s:8:\"filesize\";i:4027;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cropped-logo-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2415;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(70, 31, '_wp_trash_meta_status', 'publish'),
(71, 31, '_wp_trash_meta_time', '1787225716'),
(72, 26, '_edit_lock', '1787226326:1'),
(73, 26, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:4:{s:5:\"width\";i:300;s:6:\"height\";i:150;s:8:\"filesize\";i:10134;s:4:\"file\";s:8:\"logo.png\";}}'),
(74, 32, '_wp_trash_meta_status', 'publish'),
(75, 32, '_wp_trash_meta_time', '1787226482'),
(76, 33, '_wp_trash_meta_status', 'publish'),
(77, 33, '_wp_trash_meta_time', '1787289295'),
(78, 34, '_wp_trash_meta_status', 'publish'),
(79, 34, '_wp_trash_meta_time', '1787289971'),
(80, 35, '_wp_trash_meta_status', 'publish'),
(81, 35, '_wp_trash_meta_time', '1787289980'),
(82, 36, '_wp_attached_file', '2026/08/cropped-firstapp.png'),
(83, 36, '_wp_attachment_context', 'custom-logo'),
(84, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:698;s:6:\"height\";i:197;s:4:\"file\";s:28:\"2026/08/cropped-firstapp.png\";s:8:\"filesize\";i:27883;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-firstapp-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8867;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"cropped-firstapp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3606;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(85, 37, '_wp_trash_meta_status', 'publish'),
(86, 37, '_wp_trash_meta_time', '1787289997'),
(87, 38, '_edit_lock', '1788265702:1'),
(90, 40, '_edit_lock', '1788257172:1'),
(91, 41, '_edit_lock', '1788257171:1'),
(92, 42, '_edit_lock', '1788257167:1'),
(104, 48, '_wp_trash_meta_status', 'publish'),
(105, 48, '_wp_trash_meta_time', '1787301864'),
(116, 42, '_wp_old_slug', 'firstapp-post-4-title'),
(119, 41, '_wp_old_slug', 'firstapp-post-3-title'),
(122, 40, '_wp_old_slug', 'firstapp-post-2-title'),
(125, 38, '_wp_old_slug', 'firstapp-post-1-title'),
(126, 59, '_edit_last', '1'),
(127, 59, '_edit_lock', '1787314567:1'),
(128, 59, '_wp_old_slug', 'cars-data-title-1'),
(129, 60, '_edit_last', '1'),
(130, 60, '_edit_lock', '1787314422:1'),
(131, 61, '_edit_last', '1'),
(132, 61, '_edit_lock', '1787314559:1'),
(143, 68, '_wp_attached_file', '2026/08/my_zone_rupee.jpg'),
(144, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:291;s:6:\"height\";i:184;s:4:\"file\";s:25:\"2026/08/my_zone_rupee.jpg\";s:8:\"filesize\";i:9486;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"my_zone_rupee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5398;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(148, 42, '_thumbnail_id', '68'),
(149, 70, '_wp_attached_file', '2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg'),
(150, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1206;s:6:\"height\";i:808;s:4:\"file\";s:48:\"2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg\";s:8:\"filesize\";i:177807;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"ff98b202-ad81-4780-b6b2-2ede2afbcb29-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21437;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"ff98b202-ad81-4780-b6b2-2ede2afbcb29-1024x686.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:686;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:154579;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"ff98b202-ad81-4780-b6b2-2ede2afbcb29-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9983;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"ff98b202-ad81-4780-b6b2-2ede2afbcb29-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100851;}s:12:\"banner-image\";a:5:{s:4:\"file\";s:48:\"ff98b202-ad81-4780-b6b2-2ede2afbcb29-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75860;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(151, 71, '_wp_attached_file', '2026/08/cars-24.png'),
(152, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2084;s:6:\"height\";i:1250;s:4:\"file\";s:19:\"2026/08/cars-24.png\";s:8:\"filesize\";i:59937;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"cars-24-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7061;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"cars-24-1024x614.png\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28893;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"cars-24-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5787;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"cars-24-768x461.png\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20431;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"cars-24-1536x921.png\";s:5:\"width\";i:1536;s:6:\"height\";i:921;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48228;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"cars-24-2048x1228.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1228;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68704;}s:12:\"banner-image\";a:5:{s:4:\"file\";s:19:\"cars-24-700x350.png\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17595;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(153, 72, '_wp_attached_file', '2026/08/mrf.png'),
(154, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2084;s:6:\"height\";i:1250;s:4:\"file\";s:15:\"2026/08/mrf.png\";s:8:\"filesize\";i:88225;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"mrf-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7174;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"mrf-1024x614.png\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42347;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"mrf-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5501;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"mrf-768x461.png\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27789;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:16:\"mrf-1536x921.png\";s:5:\"width\";i:1536;s:6:\"height\";i:921;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:76306;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:17:\"mrf-2048x1228.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1228;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:116089;}s:12:\"banner-image\";a:5:{s:4:\"file\";s:15:\"mrf-700x350.png\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23507;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(157, 41, '_thumbnail_id', '70'),
(160, 40, '_thumbnail_id', '71'),
(164, 42, '_edit_last', '1'),
(167, 41, '_edit_last', '1'),
(170, 40, '_edit_last', '1'),
(181, 74, '_edit_last', '1'),
(182, 74, '_edit_lock', '1788340556:1'),
(183, 75, '_edit_lock', '1788343383:1'),
(184, 77, '_edit_lock', '1788345839:1'),
(185, 78, '_edit_lock', '1788348992:1'),
(186, 78, '_wp_page_template', 'templates/my-layout.php'),
(187, 18, '_wp_old_date', '2026-08-20'),
(188, 17, '_wp_old_date', '2026-08-20'),
(189, 23, '_wp_old_date', '2026-08-20'),
(190, 16, '_wp_old_date', '2026-08-20'),
(191, 81, '_wp_trash_meta_status', 'publish'),
(192, 81, '_wp_trash_meta_time', '1788845355'),
(193, 82, '_wp_trash_meta_status', 'publish'),
(194, 82, '_wp_trash_meta_time', '1788845371'),
(195, 83, '_wp_trash_meta_status', 'publish'),
(196, 83, '_wp_trash_meta_time', '1788846359'),
(197, 84, '_wp_trash_meta_status', 'publish'),
(198, 84, '_wp_trash_meta_time', '1788846678'),
(199, 85, '_wp_trash_meta_status', 'publish'),
(200, 85, '_wp_trash_meta_time', '1788846818'),
(201, 86, '_edit_lock', '1788849783:1'),
(202, 86, '_customize_restore_dismissed', '1'),
(203, 87, '_wp_trash_meta_status', 'publish'),
(204, 87, '_wp_trash_meta_time', '1788849812'),
(205, 88, '_edit_lock', '1788850057:1'),
(206, 88, '_customize_restore_dismissed', '1'),
(207, 89, '_edit_lock', '1788850361:1'),
(208, 89, '_customize_restore_dismissed', '1'),
(209, 90, '_wp_trash_meta_status', 'publish'),
(210, 90, '_wp_trash_meta_time', '1788850431'),
(211, 91, '_wp_trash_meta_status', 'publish'),
(212, 91, '_wp_trash_meta_time', '1788850441'),
(213, 92, '_wp_trash_meta_status', 'publish'),
(214, 92, '_wp_trash_meta_time', '1788850723'),
(215, 93, '_wp_trash_meta_status', 'publish'),
(216, 93, '_wp_trash_meta_time', '1788850730'),
(217, 94, '_wp_trash_meta_status', 'publish'),
(218, 94, '_wp_trash_meta_time', '1788851083'),
(219, 95, '_wp_trash_meta_status', 'publish'),
(220, 95, '_wp_trash_meta_time', '1788851100'),
(221, 96, '_wp_trash_meta_status', 'publish'),
(222, 96, '_wp_trash_meta_time', '1788852546'),
(223, 97, '_wp_trash_meta_status', 'publish'),
(224, 97, '_wp_trash_meta_time', '1788857211'),
(225, 98, '_edit_lock', '1788868349:1'),
(226, 98, '_customize_restore_dismissed', '1'),
(227, 99, '_edit_lock', '1788868401:1'),
(228, 99, '_customize_restore_dismissed', '1'),
(229, 100, '_edit_lock', '1788869023:1'),
(230, 100, '_customize_restore_dismissed', '1'),
(231, 101, '_edit_lock', '1788869096:1'),
(232, 101, '_customize_restore_dismissed', '1'),
(233, 102, '_wp_trash_meta_status', 'publish'),
(234, 102, '_wp_trash_meta_time', '1788869143'),
(235, 103, '_wp_trash_meta_status', 'publish'),
(236, 103, '_wp_trash_meta_time', '1788870167'),
(237, 104, '_wp_trash_meta_status', 'publish'),
(238, 104, '_wp_trash_meta_time', '1788870176'),
(239, 105, '_wp_trash_meta_status', 'publish'),
(240, 105, '_wp_trash_meta_time', '1788870183'),
(241, 106, '_edit_lock', '1788928628:1'),
(242, 106, '_customize_restore_dismissed', '1'),
(243, 107, '_wp_trash_meta_status', 'publish'),
(244, 107, '_wp_trash_meta_time', '1788928682'),
(245, 108, '_wp_trash_meta_status', 'publish'),
(246, 108, '_wp_trash_meta_time', '1788928696');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2026-08-17 08:39:19', '2026-08-17 08:39:19', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-08-17 08:39:19', '2026-08-17 08:39:19', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/2026/08/17/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2026-08-20 08:51:06', '2026-08-20 08:51:06', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-custom-theme', '', '', '2026-08-20 08:51:06', '2026-08-20 08:51:06', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/index.php/2026/08/20/wp-global-styles-custom-theme/', 0, 'wp_global_styles', '', 0),
(10, 1, '2026-08-20 09:23:41', '2026-08-20 09:23:41', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2026-08-20 09:23:41', '2026-08-20 09:23:41', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2026-08-20 09:23:41', '2026-08-20 09:23:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-08-20 09:23:41', '2026-08-20 09:23:41', '', 10, 'http://localhost/custom-wp-theme-dev/myapp/?p=11', 0, 'revision', '', 0),
(12, 1, '2026-08-20 09:23:52', '2026-08-20 09:23:52', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2026-08-20 09:23:52', '2026-08-20 09:23:52', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2026-08-20 09:23:57', '2026-08-20 09:23:57', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2026-08-20 09:23:57', '2026-08-20 09:23:57', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2026-08-20 09:23:52', '2026-08-20 09:23:52', '', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 09:23:52', '2026-08-20 09:23:52', '', 12, 'http://localhost/custom-wp-theme-dev/myapp/?p=14', 0, 'revision', '', 0),
(15, 1, '2026-08-20 09:23:57', '2026-08-20 09:23:57', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-08-20 09:23:57', '2026-08-20 09:23:57', '', 13, 'http://localhost/custom-wp-theme-dev/myapp/?p=15', 0, 'revision', '', 0),
(16, 1, '2026-09-03 09:18:20', '2026-08-20 09:24:21', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2026-09-03 09:18:20', '2026-09-03 09:18:20', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2026-09-03 09:18:20', '2026-08-20 09:24:21', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2026-09-03 09:18:20', '2026-09-03 09:18:20', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2026-09-03 09:18:20', '2026-08-20 09:24:21', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2026-09-03 09:18:20', '2026-09-03 09:18:20', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=18', 1, 'nav_menu_item', '', 0),
(21, 1, '2026-08-20 10:16:08', '2026-08-20 10:16:08', '', 'Custom Page', '', 'publish', 'closed', 'closed', '', 'custom-page', '', '', '2026-08-20 10:16:08', '2026-08-20 10:16:08', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=21', 0, 'page', '', 0),
(22, 1, '2026-08-20 10:16:08', '2026-08-20 10:16:08', '', 'Custom Page', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2026-08-20 10:16:08', '2026-08-20 10:16:08', '', 21, 'http://localhost/custom-wp-theme-dev/myapp/?p=22', 0, 'revision', '', 0),
(23, 1, '2026-09-03 09:18:20', '2026-08-20 10:16:17', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2026-09-03 09:18:20', '2026-09-03 09:18:20', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2026-08-20 10:18:42', '2026-08-20 10:18:42', '{\n    \"blogname\": {\n        \"value\": \"First app \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-20 10:18:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e3beba6-d8a1-4fac-b2c7-bf652fea332b', '', '', '2026-08-20 10:18:42', '2026-08-20 10:18:42', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/6e3beba6-d8a1-4fac-b2c7-bf652fea332b/', 0, 'customize_changeset', '', 0),
(26, 1, '2026-08-20 10:41:41', '2026-08-20 10:41:41', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2026-08-20 10:41:41', '2026-08-20 10:41:41', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/logo.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2026-08-20 10:43:15', '2026-08-20 10:43:15', '', 'firstapp', '', 'inherit', 'open', 'closed', '', 'firstapp', '', '', '2026-08-20 10:43:15', '2026-08-20 10:43:15', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/firstapp.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2026-08-20 11:34:55', '2026-08-20 11:34:55', '{\n    \"custom-theme::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-20 11:26:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ef4851f6-d155-41a4-b21c-c5539121d576', '', '', '2026-08-20 11:34:55', '2026-08-20 11:34:55', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2026-08-20 11:35:11', '2026-08-20 11:35:11', 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2026-08-20 11:35:11', '2026-08-20 11:35:11', '', 26, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2026-08-20 11:35:16', '2026-08-20 11:35:16', '{\n    \"custom-theme::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-20 11:35:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7051568-309f-40cc-94e1-f1fa2637e928', '', '', '2026-08-20 11:35:16', '2026-08-20 11:35:16', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/b7051568-309f-40cc-94e1-f1fa2637e928/', 0, 'customize_changeset', '', 0),
(32, 1, '2026-08-20 11:48:02', '2026-08-20 11:48:02', '{\n    \"custom-theme::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-20 11:48:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd1b628e6-cc41-4cef-b593-f2af6a9bc102', '', '', '2026-08-20 11:48:02', '2026-08-20 11:48:02', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/d1b628e6-cc41-4cef-b593-f2af6a9bc102/', 0, 'customize_changeset', '', 0),
(33, 1, '2026-08-21 05:14:55', '2026-08-21 05:14:55', '{\n    \"custom-theme::custom_logo\": {\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-21 05:14:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40a1e13d-bf47-433a-8a6a-c5e059d634e6', '', '', '2026-08-21 05:14:55', '2026-08-21 05:14:55', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/40a1e13d-bf47-433a-8a6a-c5e059d634e6/', 0, 'customize_changeset', '', 0),
(34, 1, '2026-08-21 05:26:11', '2026-08-21 05:26:11', '{\n    \"custom-theme::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-21 05:26:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7942bcb-e9fe-4a6e-9480-12dbb42eca03', '', '', '2026-08-21 05:26:11', '2026-08-21 05:26:11', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/e7942bcb-e9fe-4a6e-9480-12dbb42eca03/', 0, 'customize_changeset', '', 0),
(35, 1, '2026-08-21 05:26:20', '2026-08-21 05:26:20', '{\n    \"blogname\": {\n        \"value\": \"First app v\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-21 05:26:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8985b1f9-a0e8-4778-85ce-88a05fe194ed', '', '', '2026-08-21 05:26:20', '2026-08-21 05:26:20', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/8985b1f9-a0e8-4778-85ce-88a05fe194ed/', 0, 'customize_changeset', '', 0),
(36, 1, '2026-08-21 05:26:35', '2026-08-21 05:26:35', 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cropped-firstapp.png', 'cropped-firstapp.png', '', 'inherit', 'open', 'closed', '', 'cropped-firstapp-png', '', '', '2026-08-21 05:26:35', '2026-08-21 05:26:35', '', 28, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cropped-firstapp.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2026-08-21 05:26:37', '2026-08-21 05:26:37', '{\n    \"custom-theme::custom_logo\": {\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-21 05:26:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eb696c78-2e1b-45ec-91c5-b33ede7bfb4b', '', '', '2026-08-21 05:26:37', '2026-08-21 05:26:37', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/eb696c78-2e1b-45ec-91c5-b33ede7bfb4b/', 0, 'customize_changeset', '', 0),
(38, 1, '2026-08-21 05:29:38', '2026-08-21 05:29:38', '<!-- wp:paragraph -->\n<p>Who doesn\'t like getting a gift card without spending their own money? Whether you want to buy something online, grab a coffee, download an app or simply save a little on your next purchase, free gift cards can be a useful reward. The good news is that you don\'t always need to spend hours doing complicated work to earn them. There are several legitimate ways to collect gift cards online by completing simple activities in your spare time. These can…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'How to Earn Free Gift Cards Online? 7 Legit Ways ', '', 'publish', 'open', 'open', '', 'how-to-earn-free-gift-cards-online-7-legit-ways', '', '', '2026-09-01 10:30:56', '2026-09-01 10:30:56', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=38', 0, 'post', '', 0),
(39, 1, '2026-08-21 05:29:38', '2026-08-21 05:29:38', '<!-- wp:paragraph -->\n<p>firstapp post 1 description</p>\n<!-- /wp:paragraph -->', 'firstapp post 1 title', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2026-08-21 05:29:38', '2026-08-21 05:29:38', '', 38, 'http://localhost/custom-wp-theme-dev/myapp/?p=39', 0, 'revision', '', 0),
(40, 1, '2026-08-21 05:43:42', '2026-08-21 05:43:42', '<!-- wp:paragraph -->\n<p>Do you believe that iPhones are virus-proof? Rethink your thought. Even while iPhones are thought</p>\n<!-- /wp:paragraph -->', 'Can Norton Protect My iPhone from Viruses and Malware?', '', 'publish', 'open', 'open', '', 'can-norton-protect-my-iphone-from-viruses-and-malware', '', '', '2026-09-01 09:54:07', '2026-09-01 09:54:07', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=40', 0, 'post', '', 0),
(41, 1, '2026-08-21 05:43:44', '2026-08-21 05:43:44', '<!-- wp:paragraph -->\n<p>Data science is among the most promising occupations in this technological world, having great scope…</p>\n<!-- /wp:paragraph -->', 'The Future of Data Science Education: Trends in Online Learning', '', 'publish', 'open', 'open', '', 'the-future-of-data-science-education-trends-in-online-learning', '', '', '2026-09-01 09:38:52', '2026-09-01 09:38:52', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=41', 0, 'post', '', 0),
(42, 1, '2026-08-21 05:43:46', '2026-08-21 05:43:46', '<!-- wp:paragraph -->\n<p>Home security continues to evolve, redefining peace of mind as it protects homes for moree</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'DIY Home Security: Home Safety Made Simple', '', 'publish', 'open', 'open', '', 'diy-home-security-home-safety-made-simple', '', '', '2026-09-01 05:24:19', '2026-09-01 05:24:19', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=42', 0, 'post', '', 0),
(43, 1, '2026-08-21 05:43:42', '2026-08-21 05:43:42', '<!-- wp:paragraph -->\n<p>firstapp post 2 title</p>\n<!-- /wp:paragraph -->', 'firstapp post 2 title', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2026-08-21 05:43:42', '2026-08-21 05:43:42', '', 40, 'http://localhost/custom-wp-theme-dev/myapp/?p=43', 0, 'revision', '', 0),
(44, 1, '2026-08-21 05:43:44', '2026-08-21 05:43:44', '<!-- wp:paragraph -->\n<p>firstapp post 3 title</p>\n<!-- /wp:paragraph -->', 'firstapp post 3 title', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2026-08-21 05:43:44', '2026-08-21 05:43:44', '', 41, 'http://localhost/custom-wp-theme-dev/myapp/?p=44', 0, 'revision', '', 0),
(45, 1, '2026-08-21 05:43:46', '2026-08-21 05:43:46', '<!-- wp:paragraph -->\n<p>firstapp post 4 title</p>\n<!-- /wp:paragraph -->', 'firstapp post 4 title', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2026-08-21 05:43:46', '2026-08-21 05:43:46', '', 42, 'http://localhost/custom-wp-theme-dev/myapp/?p=45', 0, 'revision', '', 0),
(48, 1, '2026-08-21 08:44:23', '2026-08-21 08:44:23', '{\n    \"blogname\": {\n        \"value\": \"First app\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-08-21 08:44:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd328c99-4d1d-412f-9846-5c203d041be6', '', '', '2026-08-21 08:44:23', '2026-08-21 08:44:23', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/bd328c99-4d1d-412f-9846-5c203d041be6/', 0, 'customize_changeset', '', 0),
(49, 1, '2026-08-21 09:08:26', '2026-08-21 09:08:26', '<!-- wp:paragraph -->\n<p>firstapp post 1 description</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'firstapp post 1 title', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2026-08-21 09:08:26', '2026-08-21 09:08:26', '', 38, 'http://localhost/custom-wp-theme-dev/myapp/?p=49', 0, 'revision', '', 0),
(51, 1, '2026-08-21 09:09:57', '2026-08-21 09:09:57', '<!-- wp:paragraph -->\n<p>Who doesn\'t like getting a gift card without spending their own money? Whether you want to buy something online, grab a coffee, download an app or simply save a little on your next purchase, free gift cards can be a useful reward. The good news is that you don\'t always need to spend hours doing complicated work to earn them. There are several legitimate ways to collect gift cards online by completing simple activities in your spare time. These can…</p>\n<!-- /wp:paragraph -->', 'How to Earn Free Gift Cards Online? 7 Legit Ways ', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2026-08-21 09:09:57', '2026-08-21 09:09:57', '', 38, 'http://localhost/custom-wp-theme-dev/myapp/?p=51', 0, 'revision', '', 0),
(55, 1, '2026-08-21 09:22:07', '2026-08-21 09:22:07', '<!-- wp:paragraph -->\n<p>Home security continues to evolve, redefining peace of mind as it protects homes for moree</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'DIY Home Security: Home Safety Made Simple', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2026-08-21 09:22:07', '2026-08-21 09:22:07', '', 42, 'http://localhost/custom-wp-theme-dev/myapp/?p=55', 0, 'revision', '', 0),
(56, 1, '2026-08-21 09:22:14', '2026-08-21 09:22:14', '<!-- wp:paragraph -->\n<p>Data science is among the most promising occupations in this technological world, having great scope…</p>\n<!-- /wp:paragraph -->', 'The Future of Data Science Education: Trends in Online Learning', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2026-08-21 09:22:14', '2026-08-21 09:22:14', '', 41, 'http://localhost/custom-wp-theme-dev/myapp/?p=56', 0, 'revision', '', 0),
(57, 1, '2026-08-21 09:22:21', '2026-08-21 09:22:21', '<!-- wp:paragraph -->\n<p>Do you believe that iPhones are virus-proof? Rethink your thought. Even while iPhones are thought</p>\n<!-- /wp:paragraph -->', 'Can Norton Protect My iPhone from Viruses and Malware?', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2026-08-21 09:22:21', '2026-08-21 09:22:21', '', 40, 'http://localhost/custom-wp-theme-dev/myapp/?p=57', 0, 'revision', '', 0),
(58, 1, '2026-08-21 09:22:30', '2026-08-21 09:22:30', '<!-- wp:paragraph -->\n<p>Who doesn\'t like getting a gift card without spending their own money? Whether you want to buy something online, grab a coffee, download an app or simply save a little on your next purchase, free gift cards can be a useful reward. The good news is that you don\'t always need to spend hours doing complicated work to earn them. There are several legitimate ways to collect gift cards online by completing simple activities in your spare time. These can…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'How to Earn Free Gift Cards Online? 7 Legit Ways ', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2026-08-21 09:22:30', '2026-08-21 09:22:30', '', 38, 'http://localhost/custom-wp-theme-dev/myapp/?p=58', 0, 'revision', '', 0),
(59, 1, '2026-08-21 11:43:06', '2026-08-21 11:43:06', 'bmw desc', 'bmw', '', 'publish', 'closed', 'closed', '', 'bmw', '', '', '2026-08-21 11:43:36', '2026-08-21 11:43:36', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?post_type=cars_data&#038;p=59', 0, 'cars_data', '', 0),
(60, 1, '2026-08-21 11:43:51', '2026-08-21 11:43:51', 'Mercedes post desc', 'Mercedes post title', '', 'publish', 'closed', 'closed', '', 'mercedes-post-title', '', '', '2026-08-21 11:43:51', '2026-08-21 11:43:51', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?post_type=cars_data&#038;p=60', 0, 'cars_data', '', 0),
(61, 1, '2026-08-21 11:44:04', '2026-08-21 11:44:04', 'Audi post desc', 'Audi post title', '', 'publish', 'closed', 'closed', '', 'audi-post-title', '', '', '2026-08-21 11:44:04', '2026-08-21 11:44:04', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?post_type=cars_data&#038;p=61', 0, 'cars_data', '', 0),
(64, 1, '2026-08-26 11:44:16', '2026-08-26 11:44:16', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-custom-theme-2', '', '', '2026-08-26 11:44:16', '2026-08-26 11:44:16', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/wp-global-styles-custom-theme-2/', 0, 'wp_global_styles', '', 0),
(68, 1, '2026-08-31 12:15:53', '2026-08-31 12:15:53', '', 'my_zone_rupee', '', 'inherit', 'open', 'closed', '', 'my_zone_rupee', '', '', '2026-08-31 12:15:53', '2026-08-31 12:15:53', '', 42, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/my_zone_rupee.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2026-09-01 04:49:45', '2026-09-01 04:49:45', '', 'ff98b202-ad81-4780-b6b2-2ede2afbcb29', '', 'inherit', 'open', 'closed', '', 'ff98b202-ad81-4780-b6b2-2ede2afbcb29', '', '', '2026-09-01 04:49:45', '2026-09-01 04:49:45', '', 41, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2026-09-01 04:50:07', '2026-09-01 04:50:07', '', 'cars 24', '', 'inherit', 'open', 'closed', '', 'cars-24', '', '', '2026-09-01 04:50:07', '2026-09-01 04:50:07', '', 41, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cars-24.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2026-09-01 04:50:09', '2026-09-01 04:50:09', '', 'mrf', '', 'inherit', 'open', 'closed', '', 'mrf', '', '', '2026-09-01 04:50:09', '2026-09-01 04:50:09', '', 41, 'http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/mrf.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2026-09-02 09:18:19', '2026-09-02 09:18:19', 'new post desc', 'new post', '', 'publish', 'closed', 'closed', '', 'new-post', '', '', '2026-09-02 09:18:19', '2026-09-02 09:18:19', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?post_type=project&#038;p=74', 0, 'project', '', 0),
(75, 1, '2026-09-02 10:02:54', '2026-09-02 10:02:54', '<!-- wp:paragraph -->\n<p>hello page desc</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'hello', '', 'publish', 'closed', 'closed', '', 'hello', '', '', '2026-09-02 10:02:54', '2026-09-02 10:02:54', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=75', 0, 'page', '', 0),
(76, 1, '2026-09-02 10:02:54', '2026-09-02 10:02:54', '<!-- wp:paragraph -->\n<p>hello page desc</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'hello', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2026-09-02 10:02:54', '2026-09-02 10:02:54', '', 75, 'http://localhost/custom-wp-theme-dev/myapp/?p=76', 0, 'revision', '', 0),
(77, 1, '2026-09-02 10:43:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-09-02 10:43:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=77', 0, 'page', '', 0),
(78, 1, '2026-09-02 10:44:19', '2026-09-02 10:44:19', '', 'my template page', '', 'publish', 'closed', 'closed', '', 'my-template-page', '', '', '2026-09-02 10:45:06', '2026-09-02 10:45:06', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?page_id=78', 0, 'page', '', 0),
(79, 1, '2026-09-02 10:44:19', '2026-09-02 10:44:19', '', 'my template page', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2026-09-02 10:44:19', '2026-09-02 10:44:19', '', 78, 'http://localhost/custom-wp-theme-dev/myapp/?p=79', 0, 'revision', '', 0),
(80, 1, '2026-09-07 10:07:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-09-07 10:07:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=80', 0, 'post', '', 0),
(81, 1, '2026-09-08 05:29:15', '2026-09-08 05:29:15', '{\n    \"page_for_posts\": {\n        \"value\": \"75\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 05:29:15\"\n    },\n    \"my_text_box_setting\": {\n        \"value\": \"dfadfa\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 05:29:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '076e2b78-149c-4e6c-bfc9-fd45f93f6798', '', '', '2026-09-08 05:29:15', '2026-09-08 05:29:15', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/076e2b78-149c-4e6c-bfc9-fd45f93f6798/', 0, 'customize_changeset', '', 0),
(82, 1, '2026-09-08 05:29:31', '2026-09-08 05:29:31', '{\n    \"my_text_box_setting\": {\n        \"value\": \"dfadfa\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 05:29:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bc298e5f-5d07-4448-90b3-3a52e18ddcbc', '', '', '2026-09-08 05:29:31', '2026-09-08 05:29:31', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/bc298e5f-5d07-4448-90b3-3a52e18ddcbc/', 0, 'customize_changeset', '', 0),
(83, 1, '2026-09-08 05:45:59', '2026-09-08 05:45:59', '{\n    \"my_text_box_setting\": {\n        \"value\": \"My custom text\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 05:45:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a9d631ef-5a15-494e-96de-58e51bee056c', '', '', '2026-09-08 05:45:59', '2026-09-08 05:45:59', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/a9d631ef-5a15-494e-96de-58e51bee056c/', 0, 'customize_changeset', '', 0),
(84, 1, '2026-09-08 05:51:18', '2026-09-08 05:51:18', '{\n    \"my_copyright_text_box_setting\": {\n        \"value\": \"@ copyright  \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 05:51:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59754976-fe42-403c-882f-fc736f46c770', '', '', '2026-09-08 05:51:18', '2026-09-08 05:51:18', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/59754976-fe42-403c-882f-fc736f46c770/', 0, 'customize_changeset', '', 0),
(85, 1, '2026-09-08 05:53:38', '2026-09-08 05:53:38', '{\n    \"my_copyright_box_setting_id\": {\n        \"value\": \"@ myapp copyright 2026\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 05:53:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93b6047e-a029-45af-8b69-c97edd81bb2e', '', '', '2026-09-08 05:53:38', '2026-09-08 05:53:38', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/93b6047e-a029-45af-8b69-c97edd81bb2e/', 0, 'customize_changeset', '', 0),
(86, 1, '2026-09-08 06:43:03', '0000-00-00 00:00:00', '{\n    \"my_copyright_txt_id\": {\n        \"value\": \"hello\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:43:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8da79470-a222-4f73-b468-2d799868d462', '', '', '2026-09-08 06:43:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2026-09-08 06:43:32', '2026-09-08 06:43:32', '{\n    \"my_copyright_txt_id\": {\n        \"value\": \"hello\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:43:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b094158a-b719-4196-a563-203cb30e84fb', '', '', '2026-09-08 06:43:32', '2026-09-08 06:43:32', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/b094158a-b719-4196-a563-203cb30e84fb/', 0, 'customize_changeset', '', 0),
(88, 1, '2026-09-08 06:44:41', '0000-00-00 00:00:00', '{\n    \"my_copyright_txt_id\": {\n        \"value\": \"hello\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:44:41\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd13c210c-72f0-48f3-bf18-e999eab949c9', '', '', '2026-09-08 06:44:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=88', 0, 'customize_changeset', '', 0),
(89, 1, '2026-09-08 06:51:46', '0000-00-00 00:00:00', '{\n    \"my_footer_link_txt\": {\n        \"value\": \"hello\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:51:46\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1c3c25cc-49ad-4c05-b1c1-75ade1c562b9', '', '', '2026-09-08 06:51:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2026-09-08 06:53:51', '2026-09-08 06:53:51', '{\n    \"my_footer_link_txt\": {\n        \"value\": \"Home\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:53:51\"\n    },\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:53:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '386be785-33dd-4f2c-91d9-967dce93b47d', '', '', '2026-09-08 06:53:51', '2026-09-08 06:53:51', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/386be785-33dd-4f2c-91d9-967dce93b47d/', 0, 'customize_changeset', '', 0),
(91, 1, '2026-09-08 06:54:01', '2026-09-08 06:54:01', '{\n    \"my_copyright_txt_id\": {\n        \"value\": \"copyright text\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:54:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96be0afe-b8c8-4784-afa8-5c5e54ddb551', '', '', '2026-09-08 06:54:01', '2026-09-08 06:54:01', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/96be0afe-b8c8-4784-afa8-5c5e54ddb551/', 0, 'customize_changeset', '', 0),
(92, 1, '2026-09-08 06:58:43', '2026-09-08 06:58:43', '{\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"78\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:58:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'da6becba-94da-404c-b293-be5cb4dac32e', '', '', '2026-09-08 06:58:43', '2026-09-08 06:58:43', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/da6becba-94da-404c-b293-be5cb4dac32e/', 0, 'customize_changeset', '', 0),
(93, 1, '2026-09-08 06:58:50', '2026-09-08 06:58:50', '{\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"12\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 06:58:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5bd6a94-66d4-4112-af17-65a3780887f4', '', '', '2026-09-08 06:58:50', '2026-09-08 06:58:50', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/b5bd6a94-66d4-4112-af17-65a3780887f4/', 0, 'customize_changeset', '', 0),
(94, 1, '2026-09-08 07:04:43', '2026-09-08 07:04:43', '{\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 07:04:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68a1ef05-d7dc-4241-adaa-49a166e32a0e', '', '', '2026-09-08 07:04:43', '2026-09-08 07:04:43', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/68a1ef05-d7dc-4241-adaa-49a166e32a0e/', 0, 'customize_changeset', '', 0),
(95, 1, '2026-09-08 07:05:00', '2026-09-08 07:05:00', '{\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"13\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 07:05:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dba1ef02-b683-4e3b-9cc4-448eb8bcf27c', '', '', '2026-09-08 07:05:00', '2026-09-08 07:05:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/dba1ef02-b683-4e3b-9cc4-448eb8bcf27c/', 0, 'customize_changeset', '', 0),
(96, 1, '2026-09-08 07:29:06', '2026-09-08 07:29:06', '{\n    \"my_footer_link_txt\": {\n        \"value\": \"About\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 07:29:06\"\n    },\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"12\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 07:29:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '37097a7b-d354-44de-93f2-c323c14dc856', '', '', '2026-09-08 07:29:06', '2026-09-08 07:29:06', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/37097a7b-d354-44de-93f2-c323c14dc856/', 0, 'customize_changeset', '', 0),
(97, 1, '2026-09-08 08:46:51', '2026-09-08 08:46:51', '{\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"75\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 08:46:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '334b2d6a-69a8-4af1-a776-baecf52ac48f', '', '', '2026-09-08 08:46:51', '2026-09-08 08:46:51', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/334b2d6a-69a8-4af1-a776-baecf52ac48f/', 0, 'customize_changeset', '', 0),
(98, 1, '2026-09-08 11:52:29', '0000-00-00 00:00:00', '{\n    \"my_image_uploader\": {\n        \"value\": \"http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 11:52:29\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '02ea799d-84e5-48b4-a63c-12e8b05360da', '', '', '2026-09-08 11:52:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=98', 0, 'customize_changeset', '', 0),
(99, 1, '2026-09-08 11:53:21', '0000-00-00 00:00:00', '{\n    \"my_image_uploader\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 11:53:21\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1c19734b-4d72-4b4c-9ab6-89110741a9bc', '', '', '2026-09-08 11:53:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=99', 0, 'customize_changeset', '', 0),
(100, 1, '2026-09-08 12:03:43', '0000-00-00 00:00:00', '{\n    \"my_image_uploader\": {\n        \"value\": \"http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cars-24.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:03:43\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2444135a-2940-428e-be57-a22515f47cd0', '', '', '2026-09-08 12:03:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=100', 0, 'customize_changeset', '', 0),
(101, 1, '2026-09-08 12:04:56', '0000-00-00 00:00:00', '{\n    \"my_image_uploader\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:04:56\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '870b60a3-3381-458d-bb2c-f43c12cede24', '', '', '2026-09-08 12:04:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=101', 0, 'customize_changeset', '', 0),
(102, 1, '2026-09-08 12:05:43', '2026-09-08 12:05:43', '{\n    \"my_footer_pages_dropdown\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:05:43\"\n    },\n    \"my_image_uploader\": {\n        \"value\": \"http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:05:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed137558-9ca1-4a7c-82d2-8190828e530d', '', '', '2026-09-08 12:05:43', '2026-09-08 12:05:43', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/ed137558-9ca1-4a7c-82d2-8190828e530d/', 0, 'customize_changeset', '', 0),
(103, 1, '2026-09-08 12:22:47', '2026-09-08 12:22:47', '{\n    \"my_image_uploader\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:22:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '632b5b74-f46a-43cf-9493-049fb3b80b52', '', '', '2026-09-08 12:22:47', '2026-09-08 12:22:47', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/632b5b74-f46a-43cf-9493-049fb3b80b52/', 0, 'customize_changeset', '', 0),
(104, 1, '2026-09-08 12:22:56', '2026-09-08 12:22:56', '{\n    \"my_image_uploader\": {\n        \"value\": \"http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/cars-24.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:22:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cdde1ec5-410f-42c5-9679-bb9e9d42fc35', '', '', '2026-09-08 12:22:56', '2026-09-08 12:22:56', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/cdde1ec5-410f-42c5-9679-bb9e9d42fc35/', 0, 'customize_changeset', '', 0),
(105, 1, '2026-09-08 12:23:03', '2026-09-08 12:23:03', '{\n    \"my_image_uploader\": {\n        \"value\": \"http://localhost/custom-wp-theme-dev/myapp/wp-content/uploads/2026/08/ff98b202-ad81-4780-b6b2-2ede2afbcb29.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-08 12:23:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ef64ab4-2fdd-45a5-83c2-e5f495c5e931', '', '', '2026-09-08 12:23:03', '2026-09-08 12:23:03', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/3ef64ab4-2fdd-45a5-83c2-e5f495c5e931/', 0, 'customize_changeset', '', 0),
(106, 1, '2026-09-09 04:37:08', '0000-00-00 00:00:00', '{\n    \"my_colorpicker_id\": {\n        \"value\": \"#81d742\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-09 04:37:08\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'cc43d19c-b96a-4052-82ad-47a1bbd060cb', '', '', '2026-09-09 04:37:08', '2026-09-09 04:37:08', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/?p=106', 0, 'customize_changeset', '', 0),
(107, 1, '2026-09-09 04:38:02', '2026-09-09 04:38:02', '{\n    \"my_colorpicker_id\": {\n        \"value\": \"#adadad\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-09 04:38:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c1bdf9dd-985b-4105-810b-611cd46a3dd6', '', '', '2026-09-09 04:38:02', '2026-09-09 04:38:02', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/c1bdf9dd-985b-4105-810b-611cd46a3dd6/', 0, 'customize_changeset', '', 0),
(108, 1, '2026-09-09 04:38:16', '2026-09-09 04:38:16', '{\n    \"my_colorpicker_id\": {\n        \"value\": \"#81d742\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-09-09 04:38:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4d6114d2-2392-49bb-9b26-a5dd2a19c3c2', '', '', '2026-09-09 04:38:16', '2026-09-09 04:38:16', '', 0, 'http://localhost/custom-wp-theme-dev/myapp/4d6114d2-2392-49bb-9b26-a5dd2a19c3c2/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Fashion', 'fashion', 0),
(2, 'custom-theme', 'custom-theme', 0),
(3, 'primary menu', 'primary-menu', 0),
(4, 'custom-theme-2', 'custom-theme-2', 0),
(5, 'Tech', 'tech', 0),
(6, 'post-format-aside', 'post-format-aside', 0),
(7, 'post-format-link', 'post-format-link', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(23, 3, 0),
(38, 1, 0),
(40, 5, 0),
(40, 7, 0),
(41, 1, 0),
(41, 6, 0),
(42, 1, 0),
(42, 5, 0),
(64, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'wp_theme', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'post_format', '', 0, 1),
(7, 7, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Rahul'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'modern'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"742dc933ed1d88151f5ab9ae7678037fbcf28a70e2bc84bca38c013d334dfd7c\";a:4:{s:10:\"expiration\";i:1789387098;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36\";s:5:\"login\";i:1788177498;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '80'),
(18, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";i:4;s:19:\"dashboard_right_now\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:40:\"dashboard_site_health,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:19:\"dashboard_right_now\";s:7:\"column4\";s:0:\"\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1787222457'),
(26, 1, 'infinite_scrolling', 'true'),
(27, 1, 'wp_persisted_preferences', 'a:4:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2026-09-07T11:34:43.047Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$8h/tsqcr2fgc8rMW6YNYA.Qk/P26YJ/3rii1Mrl8aAte2KSHROWx.', 'admin', 'Rahul@click2commission.com', 'http://localhost/custom-wp-theme-dev/myapp', '2026-08-17 08:39:14', '', 0, 'Rahul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
