-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 10:39 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custom_theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-04-30 12:33:15', '2017-04-30 12:33:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_datalist`
--

CREATE TABLE `wp_datalist` (
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `full_content` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/custom_theme', 'yes'),
(2, 'home', 'http://localhost/custom_theme', 'yes'),
(3, 'blogname', 'MY THEME', 'yes'),
(4, 'blogdescription', 'This is just a try to make Wordpress custom theme', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shaheryary20@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:35:"wp-fastest-cache/wpFastestCache.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:"E:\\xampp\\htdocs\\custom_theme/wp-content/themes/MY THEME/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'MY THEME', 'yes'),
(41, 'stylesheet', 'MY THEME', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:35:"wp-fastest-cache/wpFastestCache.php";a:2:{i:0;s:14:"WpFastestCache";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:2:{i:0;s:12:"categories-3";i:1;s:14:"recent-posts-3";}s:7:"footer1";a:1:{i:0;s:7:"pages-2";}s:7:"footer2";a:1:{i:0;s:8:"search-3";}s:7:"footer3";a:1:{i:0;s:6:"meta-3";}s:7:"footer4";a:1:{i:0;s:10:"archives-3";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1531960397;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1532003632;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1532005011;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1493556724;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1531946291;s:7:"checked";a:4:{s:8:"MY THEME";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.2";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(115, '_site_transient_timeout_browser_2d70b4ffa221a0fcab90b4c714a3f5ea', '1494160411', 'no'),
(116, '_site_transient_browser_2d70b4ffa221a0fcab90b4c714a3f5ea', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"57.0.2987.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(117, 'can_compress_scripts', '1', 'no'),
(135, 'current_theme', 'MY THEME', 'yes'),
(136, 'theme_mods_MY THEME', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:6:"footer";i:3;}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(141, 'WPLANG', '', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(163, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1493632440', 'no'),
(164, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4331;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2475;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2342;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2033;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1815;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1575;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1541;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1428;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1325;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1316;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1306;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1265;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1254;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1090;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1036;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1034;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:979;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:916;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:810;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:785;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:780;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:761;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:751;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:663;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:651;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:646;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:638;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:638;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:634;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:617;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:591;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:590;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:585;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:571;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:569;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:565;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:561;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:553;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:542;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:532;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:526;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:517;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:510;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:500;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:492;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:485;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:481;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:475;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:459;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:454;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:453;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:438;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:432;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:431;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:430;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:423;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:417;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:408;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:402;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:401;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:400;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:398;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:392;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:391;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:390;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:373;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:370;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:361;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:357;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:348;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:330;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:330;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:327;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:321;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:320;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:318;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:317;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:307;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:307;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:291;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:290;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:287;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:285;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:282;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:279;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:279;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:278;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:270;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:269;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:267;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:263;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:262;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:262;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:261;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:260;}}', 'no'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'WpFc_api_key', '32ea6bb685343f915c067f86e1c34801', 'yes'),
(169, 'WpFastestCache', '{"wpFastestCacheStatus":"on","wpFastestCachePreload_number":"4","wpFastestCacheNewPost_type":"all","wpFastestCacheUpdatePost_type":"post","wpFastestCacheLanguage":"eng"}', 'yes'),
(201, 'category_children', 'a:0:{}', 'yes'),
(219, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1531946290;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";s:6:"tested";s:5:"4.7.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:35:"wp-fastest-cache/wpFastestCache.php";O:8:"stdClass":8:{s:2:"id";s:30:"w.org/plugins/wp-fastest-cache";s:4:"slug";s:16:"wp-fastest-cache";s:6:"plugin";s:35:"wp-fastest-cache/wpFastestCache.php";s:11:"new_version";s:7:"0.8.6.9";s:3:"url";s:47:"https://wordpress.org/plugins/wp-fastest-cache/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wp-fastest-cache.0.8.6.9.zip";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(220, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1531946288;s:15:"version_checked";s:5:"4.7.5";s:12:"translations";a:0:{}}', 'no'),
(221, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"shaheryary20@gmail.com";s:7:"version";s:5:"4.7.5";s:9:"timestamp";i:1496592878;}', 'no'),
(225, '_transient_timeout_plugin_slugs', '1510858454', 'no'),
(226, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:35:"wp-fastest-cache/wpFastestCache.php";}', 'no'),
(227, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1510815255', 'no'),
(228, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(230, '_site_transient_timeout_theme_roots', '1531948090', 'no'),
(231, '_site_transient_theme_roots', 'a:4:{s:8:"MY THEME";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1493714885:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1493714808:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1493618047:1'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1493618208:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1493618595:1'),
(14, 13, '_edit_last', '1'),
(15, 13, '_edit_lock', '1493643471:1'),
(16, 14, '_edit_last', '1'),
(17, 14, '_edit_lock', '1493618596:1'),
(18, 19, '_menu_item_type', 'post_type'),
(19, 19, '_menu_item_menu_item_parent', '0'),
(20, 19, '_menu_item_object_id', '8'),
(21, 19, '_menu_item_object', 'page'),
(22, 19, '_menu_item_target', ''),
(23, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 19, '_menu_item_xfn', ''),
(25, 19, '_menu_item_url', ''),
(27, 20, '_menu_item_type', 'post_type'),
(28, 20, '_menu_item_menu_item_parent', '0'),
(29, 20, '_menu_item_object_id', '14'),
(30, 20, '_menu_item_object', 'page'),
(31, 20, '_menu_item_target', ''),
(32, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 20, '_menu_item_xfn', ''),
(34, 20, '_menu_item_url', ''),
(36, 21, '_menu_item_type', 'post_type'),
(37, 21, '_menu_item_menu_item_parent', '0'),
(38, 21, '_menu_item_object_id', '10'),
(39, 21, '_menu_item_object', 'page'),
(40, 21, '_menu_item_target', ''),
(41, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 21, '_menu_item_xfn', ''),
(43, 21, '_menu_item_url', ''),
(45, 22, '_menu_item_type', 'post_type'),
(46, 22, '_menu_item_menu_item_parent', '0'),
(47, 22, '_menu_item_object_id', '13'),
(48, 22, '_menu_item_object', 'page'),
(49, 22, '_menu_item_target', ''),
(50, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 22, '_menu_item_xfn', ''),
(52, 22, '_menu_item_url', ''),
(54, 23, '_menu_item_type', 'post_type'),
(55, 23, '_menu_item_menu_item_parent', '0'),
(56, 23, '_menu_item_object_id', '12'),
(57, 23, '_menu_item_object', 'page'),
(58, 23, '_menu_item_target', ''),
(59, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 23, '_menu_item_xfn', ''),
(61, 23, '_menu_item_url', ''),
(63, 24, '_edit_last', '1'),
(64, 24, '_edit_lock', '1493642601:1'),
(65, 26, '_menu_item_type', 'post_type'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '24'),
(68, 26, '_menu_item_object', 'page'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 26, '_menu_item_xfn', ''),
(72, 26, '_menu_item_url', ''),
(74, 13, '_wp_page_template', 'new-template.php'),
(75, 28, '_edit_last', '1'),
(76, 28, '_edit_lock', '1493662163:1'),
(77, 28, '_wp_page_template', 'default'),
(78, 30, '_edit_last', '1'),
(79, 30, '_edit_lock', '1493662193:1'),
(80, 30, '_wp_page_template', 'default'),
(85, 1, '_edit_lock', '1493703770:1'),
(86, 1, '_edit_last', '1'),
(95, 38, '_wp_attached_file', '2017/04/cartoon.jpg'),
(96, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:615;s:6:"height";i:626;s:4:"file";s:19:"2017/04/cartoon.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"cartoon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"cartoon-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(97, 6, '_thumbnail_id', '40'),
(100, 39, '_wp_attached_file', '2017/04/cartoon-1.jpg'),
(101, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:615;s:6:"height";i:626;s:4:"file";s:21:"2017/04/cartoon-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cartoon-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cartoon-1-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:21:"cartoon-1-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:21:"cartoon-1-615x210.jpg";s:5:"width";i:615;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(104, 40, '_wp_attached_file', '2017/04/cartoon-2.jpg'),
(105, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:615;s:6:"height";i:626;s:4:"file";s:21:"2017/04/cartoon-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cartoon-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cartoon-2-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:21:"cartoon-2-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:21:"cartoon-2-615x210.jpg";s:5:"width";i:615;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(108, 41, '_wp_attached_file', '2017/04/image-copy.jpg'),
(109, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2017/04/image-copy.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"image-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"image-copy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"image-copy-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:22:"image-copy-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:22:"image-copy-920x210.jpg";s:5:"width";i:920;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(110, 4, '_thumbnail_id', '41'),
(111, 43, '_edit_last', '1'),
(114, 43, '_edit_lock', '1493785476:1'),
(117, 45, '_edit_last', '1'),
(118, 45, '_edit_lock', '1493787367:1'),
(121, 45, '_oembed_e01004fa984a730ec01591a2d11994c7', '{{unknown}}'),
(122, 47, '_edit_last', '1'),
(123, 47, '_edit_lock', '1493789304:1'),
(124, 48, '_wp_attached_file', '2017/05/21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6.jpg'),
(125, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:696;s:4:"file";s:80:"2017/05/21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:80:"21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:80:"21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6-284x300.jpg";s:5:"width";i:284;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:80:"21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:80:"21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6-660x210.jpg";s:5:"width";i:660;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 49, '_wp_attached_file', '2017/05/cartoon.jpg'),
(127, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:615;s:6:"height";i:626;s:4:"file";s:19:"2017/05/cartoon.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"cartoon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"cartoon-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:19:"cartoon-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:19:"cartoon-615x210.jpg";s:5:"width";i:615;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(128, 50, '_wp_attached_file', '2017/05/emma-1-copy.jpg'),
(129, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:427;s:4:"file";s:23:"2017/05/emma-1-copy.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"emma-1-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"emma-1-copy-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:23:"emma-1-copy-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:23:"emma-1-copy-640x210.jpg";s:5:"width";i:640;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(130, 51, '_wp_attached_file', '2017/05/image-copy.jpg'),
(131, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2017/05/image-copy.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"image-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"image-copy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"image-copy-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:22:"image-copy-180x120.jpg";s:5:"width";i:180;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:22:"image-copy-920x210.jpg";s:5:"width";i:920;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(136, 53, '_edit_last', '1'),
(139, 53, '_edit_lock', '1493792203:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-30 12:33:15', '2017-04-30 12:33:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-05-02 05:45:07', '2017-05-02 05:45:07', '', 0, 'http://localhost/custom_theme/?p=1', 0, 'post', '', 1),
(2, 1, '2017-04-30 12:33:15', '2017-04-30 12:33:15', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/custom_theme/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-04-30 12:33:15', '2017-04-30 12:33:15', '', 0, 'http://localhost/custom_theme/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-04-30 12:57:07', '2017-04-30 12:57:07', 'This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post.\r\n\r\nThis is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post.\r\n\r\nThis is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post.', 'New Post', '', 'publish', 'open', 'open', '', 'new-post', '', '', '2017-05-02 08:49:58', '2017-05-02 08:49:58', '', 0, 'http://localhost/custom_theme/?p=4', 0, 'post', '', 0),
(5, 1, '2017-04-30 12:57:07', '2017-04-30 12:57:07', 'This is a new post', 'New Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-04-30 12:57:07', '2017-04-30 12:57:07', '', 4, 'http://localhost/custom_theme/2017/04/30/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-04-30 12:57:31', '2017-04-30 12:57:31', 'This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.\r\n\r\nThis is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.\r\n\r\nThis is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.', 'Wordpress customization', '', 'publish', 'open', 'open', '', 'wordpress-customization', '', '', '2017-05-02 08:39:59', '2017-05-02 08:39:59', '', 0, 'http://localhost/custom_theme/?p=6', 0, 'post', '', 0),
(7, 1, '2017-04-30 12:57:31', '2017-04-30 12:57:31', 'This is wordpress customization', 'Wordpress customization', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-30 12:57:31', '2017-04-30 12:57:31', '', 6, 'http://localhost/custom_theme/2017/04/30/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-05-01 05:56:22', '2017-05-01 05:56:22', 'This is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us Page', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-05-01 05:56:22', '2017-05-01 05:56:22', '', 0, 'http://localhost/custom_theme/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-05-01 05:56:22', '2017-05-01 05:56:22', 'This is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us PageThis is about us Page', 'About us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-05-01 05:56:22', '2017-05-01 05:56:22', '', 8, 'http://localhost/custom_theme/2017/05/01/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-05-01 05:56:46', '2017-05-01 05:56:46', 'This is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service Page', 'Service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2017-05-01 05:56:46', '2017-05-01 05:56:46', '', 0, 'http://localhost/custom_theme/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-05-01 05:56:46', '2017-05-01 05:56:46', 'This is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service PageThis is service Page', 'Service', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-01 05:56:46', '2017-05-01 05:56:46', '', 10, 'http://localhost/custom_theme/2017/05/01/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-05-01 06:04:46', '2017-05-01 06:04:46', 'This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page.', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2017-05-01 06:05:35', '2017-05-01 06:05:35', '', 0, 'http://localhost/custom_theme/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-05-01 06:05:10', '2017-05-01 06:05:10', 'This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\r\n\r\nLorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2017-05-01 12:57:16', '2017-05-01 12:57:16', '', 0, 'http://localhost/custom_theme/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-05-01 06:05:29', '2017-05-01 06:05:29', 'This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page.', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-05-01 06:05:29', '2017-05-01 06:05:29', '', 0, 'http://localhost/custom_theme/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-05-01 06:04:46', '2017-05-01 06:04:46', 'This is FAQ Page', 'FAQ', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-05-01 06:04:46', '2017-05-01 06:04:46', '', 12, 'http://localhost/custom_theme/2017/05/01/12-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-05-01 06:05:10', '2017-05-01 06:05:10', 'This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-01 06:05:10', '2017-05-01 06:05:10', '', 13, 'http://localhost/custom_theme/2017/05/01/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-05-01 06:05:29', '2017-05-01 06:05:29', 'This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page. This is Contact us Page.', 'Contact us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-05-01 06:05:29', '2017-05-01 06:05:29', '', 14, 'http://localhost/custom_theme/2017/05/01/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-05-01 06:05:35', '2017-05-01 06:05:35', 'This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page. This is FAQ Page.', 'FAQ', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-05-01 06:05:35', '2017-05-01 06:05:35', '', 12, 'http://localhost/custom_theme/2017/05/01/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-05-01 06:09:21', '2017-05-01 06:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-05-01 12:46:33', '2017-05-01 12:46:33', '', 0, 'http://localhost/custom_theme/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2017-05-01 06:09:21', '2017-05-01 06:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2017-05-01 12:46:33', '2017-05-01 12:46:33', '', 0, 'http://localhost/custom_theme/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2017-05-01 06:09:21', '2017-05-01 06:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2017-05-01 12:46:33', '2017-05-01 12:46:33', '', 0, 'http://localhost/custom_theme/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2017-05-01 06:09:48', '2017-05-01 06:09:48', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-05-01 06:09:48', '2017-05-01 06:09:48', '', 0, 'http://localhost/custom_theme/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2017-05-01 06:09:48', '2017-05-01 06:09:48', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-05-01 06:09:48', '2017-05-01 06:09:48', '', 0, 'http://localhost/custom_theme/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2017-05-01 12:45:37', '2017-05-01 12:45:37', 'This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page.', 'New Page', '', 'publish', 'closed', 'closed', '', 'new-page', '', '', '2017-05-01 12:45:37', '2017-05-01 12:45:37', '', 0, 'http://localhost/custom_theme/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-05-01 12:45:37', '2017-05-01 12:45:37', 'This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page. This is a new page.', 'New Page', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-05-01 12:45:37', '2017-05-01 12:45:37', '', 24, 'http://localhost/custom_theme/2017/05/01/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-05-01 12:46:01', '2017-05-01 12:46:01', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2017-05-01 12:46:33', '2017-05-01 12:46:33', '', 0, 'http://localhost/custom_theme/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2017-05-01 12:57:01', '2017-05-01 12:57:01', 'This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. This is Terms and Conditions Page. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum\r\n\r\nLorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-01 12:57:01', '2017-05-01 12:57:01', '', 13, 'http://localhost/custom_theme/2017/05/01/13-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-05-01 18:11:39', '2017-05-01 18:11:39', 'There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services.\r\n\r\nThere you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services.', 'Development', '', 'publish', 'closed', 'closed', '', 'development', '', '', '2017-05-01 18:11:39', '2017-05-01 18:11:39', '', 10, 'http://localhost/custom_theme/?page_id=28', 0, 'page', '', 0),
(29, 1, '2017-05-01 18:11:39', '2017-05-01 18:11:39', 'There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services.\r\n\r\nThere you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services. There you can get development services.', 'Development', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-05-01 18:11:39', '2017-05-01 18:11:39', '', 28, 'http://localhost/custom_theme/2017/05/01/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-05-01 18:12:10', '2017-05-01 18:12:10', 'There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services.\r\n\r\nThere you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services.\r\n\r\nThere you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services.', 'Designing', '', 'publish', 'closed', 'closed', '', 'designing', '', '', '2017-05-01 18:12:10', '2017-05-01 18:12:10', '', 10, 'http://localhost/custom_theme/?page_id=30', 0, 'page', '', 0),
(31, 1, '2017-05-01 18:12:10', '2017-05-01 18:12:10', 'There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services.\r\n\r\nThere you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services.\r\n\r\nThere you can get designing services. There you can get designing services. There you can get designing services. There you can get designing services.', 'Designing', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-05-01 18:12:10', '2017-05-01 18:12:10', '', 30, 'http://localhost/custom_theme/2017/05/01/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-05-02 05:00:13', '2017-05-02 05:00:13', 'This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.\r\n\r\nThis is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.\r\n\r\nThis is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.', 'Wordpress customization', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-02 05:00:13', '2017-05-02 05:00:13', '', 6, 'http://localhost/custom_theme/2017/05/02/6-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-05-02 05:00:37', '2017-05-02 05:00:37', 'This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post.\r\n\r\nThis is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post.\r\n\r\nThis is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post. This is a new post.', 'New Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-02 05:00:37', '2017-05-02 05:00:37', '', 4, 'http://localhost/custom_theme/2017/05/02/4-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-02 05:00:51', '2017-05-02 05:00:51', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-02 05:00:51', '2017-05-02 05:00:51', '', 1, 'http://localhost/custom_theme/2017/05/02/1-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-05-02 05:44:10', '2017-05-02 05:44:10', 'This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.\n\nThis is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.\n\nThis is wordpress customization. This is wordpress customization. This is wordpress customization. This is wordpress customization.', 'Wordpress customization', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2017-05-02 05:44:10', '2017-05-02 05:44:10', '', 6, 'http://localhost/custom_theme/2017/05/02/6-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2017-05-02 08:30:27', '2017-05-02 08:30:27', '', 'cartoon', '', 'inherit', 'open', 'closed', '', 'cartoon', '', '', '2017-05-02 08:30:27', '2017-05-02 08:30:27', '', 6, 'http://localhost/custom_theme/wp-content/uploads/2017/04/cartoon.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2017-05-02 08:38:14', '2017-05-02 08:38:14', '', 'cartoon', '', 'inherit', 'open', 'closed', '', 'cartoon-2', '', '', '2017-05-02 08:38:14', '2017-05-02 08:38:14', '', 6, 'http://localhost/custom_theme/wp-content/uploads/2017/04/cartoon-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2017-05-02 08:39:53', '2017-05-02 08:39:53', '', 'cartoon', '', 'inherit', 'open', 'closed', '', 'cartoon-3', '', '', '2017-05-02 08:39:53', '2017-05-02 08:39:53', '', 6, 'http://localhost/custom_theme/wp-content/uploads/2017/04/cartoon-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-05-02 08:49:52', '2017-05-02 08:49:52', '', 'image copy', '', 'inherit', 'open', 'closed', '', 'image-copy', '', '', '2017-05-02 08:49:52', '2017-05-02 08:49:52', '', 4, 'http://localhost/custom_theme/wp-content/uploads/2017/04/image-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-05-03 04:14:15', '2017-05-03 04:14:15', 'This is just a demo status update in aside post format in WordPress.', '', '', 'publish', 'open', 'open', '', '43', '', '', '2017-05-03 04:14:38', '2017-05-03 04:14:38', '', 0, 'http://localhost/custom_theme/?p=43', 0, 'post', '', 0),
(44, 1, '2017-05-03 04:14:15', '2017-05-03 04:14:15', 'This is just a demo status update in aside post format in WordPress.', '', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-05-03 04:14:15', '2017-05-03 04:14:15', '', 43, 'http://localhost/custom_theme/2017/05/03/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-05-03 04:27:30', '2017-05-03 04:27:30', 'https://www.facebook.com', 'You can Visit Facebook With the help of Following link', '', 'publish', 'open', 'open', '', 'you-can-visit-facebook-with-the-help-of-following-link', '', '', '2017-05-03 04:27:30', '2017-05-03 04:27:30', '', 0, 'http://localhost/custom_theme/?p=45', 0, 'post', '', 0),
(46, 1, '2017-05-03 04:27:30', '2017-05-03 04:27:30', 'https://www.facebook.com', 'You can Visit Facebook With the help of Following link', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-05-03 04:27:30', '2017-05-03 04:27:30', '', 45, 'http://localhost/custom_theme/2017/05/03/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-05-03 04:59:24', '2017-05-03 04:59:24', '[gallery link="file" columns="4" ids="48,49,50,51"]', 'Random  Images', '', 'publish', 'open', 'open', '', 'random-images', '', '', '2017-05-03 05:00:43', '2017-05-03 05:00:43', '', 0, 'http://localhost/custom_theme/?p=47', 0, 'post', '', 0),
(48, 1, '2017-05-03 04:59:02', '2017-05-03 04:59:02', '', '21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6', 'Hrithik Roshan', 'inherit', 'open', 'closed', '', '21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6', '', '', '2017-05-03 05:00:15', '2017-05-03 05:00:15', '', 47, 'http://localhost/custom_theme/wp-content/uploads/2017/05/21-1445404744-hrithik-roshan-launches-dctex-new-furnish-collection-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2017-05-03 04:59:04', '2017-05-03 04:59:04', '', 'cartoon', 'Cartoon Photoshop', 'inherit', 'open', 'closed', '', 'cartoon-4', '', '', '2017-05-03 05:00:23', '2017-05-03 05:00:23', '', 47, 'http://localhost/custom_theme/wp-content/uploads/2017/05/cartoon.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-05-03 04:59:07', '2017-05-03 04:59:07', '', 'emma-1 copy', 'Emma Watson', 'inherit', 'open', 'closed', '', 'emma-1-copy', '', '', '2017-05-03 05:00:29', '2017-05-03 05:00:29', '', 47, 'http://localhost/custom_theme/wp-content/uploads/2017/05/emma-1-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-05-03 04:59:09', '2017-05-03 04:59:09', '', 'image copy', 'Face Writing', 'inherit', 'open', 'closed', '', 'image-copy-2', '', '', '2017-05-03 05:00:41', '2017-05-03 05:00:41', '', 47, 'http://localhost/custom_theme/wp-content/uploads/2017/05/image-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-05-03 04:59:24', '2017-05-03 04:59:24', '[gallery link="file" columns="4" ids="48,49,50,51"]', 'Random  Images', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-05-03 04:59:24', '2017-05-03 04:59:24', '', 47, 'http://localhost/custom_theme/2017/05/03/47-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-05-03 05:38:09', '2017-05-03 05:38:09', 'This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post.\r\n\r\nThis is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post.\r\n\r\nThis is a demo Post. This is a demo Post. This is a demo Post.', 'demo Post', '', 'publish', 'open', 'open', '', 'demo-post', '', '', '2017-05-03 05:38:09', '2017-05-03 05:38:09', '', 0, 'http://localhost/custom_theme/?p=53', 0, 'post', '', 0),
(54, 1, '2017-05-03 05:38:09', '2017-05-03 05:38:09', 'This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post.\r\n\r\nThis is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post. This is a demo Post.\r\n\r\nThis is a demo Post. This is a demo Post. This is a demo Post.', 'demo Post', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-05-03 05:38:09', '2017-05-03 05:38:09', '', 53, 'http://localhost/custom_theme/2017/05/03/53-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu Header', 'primary-menu-header', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'Development', 'development', 0),
(5, 'Web', 'web', 0),
(6, 'Wordpress', 'wordpress', 0),
(7, 'post-format-aside', 'post-format-aside', 0),
(8, 'post-format-link', 'post-format-link', 0),
(9, 'post-format-gallery', 'post-format-gallery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(4, 5, 0),
(4, 6, 0),
(6, 4, 0),
(6, 5, 0),
(6, 6, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 3, 0),
(23, 3, 0),
(26, 2, 0),
(43, 1, 0),
(43, 7, 0),
(45, 1, 0),
(45, 8, 0),
(47, 1, 0),
(47, 9, 0),
(53, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'post_format', '', 0, 1),
(8, 8, 'post_format', '', 0, 1),
(9, 9, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '55'),
(17, 1, 'session_tokens', 'a:1:{s:64:"fe33f4ef05d13ac32c027e5649cf8daf5ec9509de3dbb5cc9829f401f1625db7";a:4:{s:10:"expiration";i:1511981640;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";s:5:"login";i:1510772040;}}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1493713837');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3Uprxl96hiVxBhYzSuR6aUCn38GbK.', 'admin', 'shaheryary20@gmail.com', '', '2017-04-30 12:33:13', '', 0, 'admin');

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
-- Indexes for table `wp_datalist`
--
ALTER TABLE `wp_datalist`
  ADD PRIMARY KEY (`url`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  ADD KEY `post_author` (`post_author`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
