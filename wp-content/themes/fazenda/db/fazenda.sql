-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 26 nov. 2018 à 10:24
-- Version du serveur :  10.1.33-MariaDB
-- Version de PHP :  7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fazenda`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-27 14:25:31', '2018-09-27 12:25:31', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Fazenda Architecture', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'celine.potinet@gl-events.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=104&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:\"ml-slider/ml-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fazenda', 'yes'),
(41, 'stylesheet', 'fazenda', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '107', 'yes'),
(84, 'page_on_front', '104', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'fr_FR', 'yes'),
(96, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Rechercher\";}i:4;a:1:{s:5:\"title\";s:10:\"Rechercher\";}}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1538753131;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538785531;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538818171;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538828754;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538643305;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"celine.potinet@gl-events.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1538051172;}', 'no'),
(160, 'theme_mods_ancien_theme_enfant/fazenda', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_mods_fazenda', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:5;s:6:\"social\";i:0;}}', 'yes'),
(166, 'current_theme', 'Fazenda', 'yes'),
(167, 'theme_switched', '', 'yes'),
(168, 'theme_switched_via_customizer', '', 'yes'),
(169, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(170, 'customize_stashed_theme_mods', 'a:1:{s:15:\"twentyseventeen\";a:6:{s:23:\"nav_menu_locations[top]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-09-27 12:40:35\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-09-27 12:40:35\";}s:7:\"panel_1\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:108;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-09-27 12:40:35\";}s:7:\"panel_2\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:105;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-09-27 12:40:35\";}s:7:\"panel_3\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:107;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-09-27 12:40:35\";}s:7:\"panel_4\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:106;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-09-27 12:40:35\";}}}', 'no'),
(202, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1538793647', 'no'),
(203, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Nice\";s:3:\"url\";s:30:\"https://2018.nice.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-10-19 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:36:\"Nice (on the French Riviera), France\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:43.7087228;s:9:\"longitude\";d:7.28825;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Milano\";s:3:\"url\";s:32:\"https://2018.milano.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-11-16 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Milan, Lombardy/Italy\";s:7:\"country\";s:2:\"IT\";s:8:\"latitude\";d:45.5184464;s:9:\"longitude\";d:9.2131057;}}}}', 'no'),
(210, 'theme_switch_menu_locations', 'a:0:{}', 'yes'),
(213, '_transient_timeout_plugin_slugs', '1538833767', 'no'),
(214, '_transient_plugin_slugs', 'a:6:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:23:\"elementor/elementor.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:25:\"nivoplugin/nivoplugin.php\";i:4;s:24:\"slider-images/Slider.php\";i:5;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";}', 'no'),
(215, 'recently_activated', 'a:3:{s:25:\"nivoplugin/nivoplugin.php\";i:1538731546;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";i:1538729845;s:24:\"slider-images/Slider.php\";i:1538729843;}', 'yes'),
(225, 'wpos_anylc_redirect', '', 'yes'),
(226, 'wpos_anylc_site_uid', '7a24f2f0b3213b73b3099b6c56e91f54', 'yes'),
(227, 'wpos_anylc_pdt_25', 'a:1:{s:6:\"status\";i:2;}', 'yes'),
(234, '_transient_timeout_wpos_plugins_feed', '1538819655', 'no'),
(235, '_transient_wpos_plugins_feed', '\r\n<style type=\"text/css\">\r\n.wpos-plugins{\r\n	background-color: #fff;\r\n    border: 1px solid #ccc;\r\n    min-height: 315px;\r\n    padding: 10px;\r\n    margin: 0 0 20px 0;\r\n}\r\n.wpos-plugin-title{font-size: 1.2em;}\r\n.wpos-plugins img{max-width:100%;}\r\n.wpos-center{text-align:center;}\r\n.wpos-right{text-align:right;}\r\n.wpos-plugins i.dashicons{padding: 3px 0;}\r\n.wpos-plugins .wpos-plugin-buy-link{display: block; height: 35px; padding: 3px; text-align: center;}\r\n.wpos-clear{clear:both;}\r\n.wpcolumn, .wpcolumns {-webkit-box-sizing: border-box;-moz-box-sizing: border-box;  box-sizing: border-box;}\r\na.button.wpos-all-plugin-link{height: auto; line-height: normal; padding: 12px 20px !important;}\r\n@media only screen and (min-width: 40.0625em) {  \r\n	.wpcolumn,\r\n	.wpcolumns {position: relative;padding-left:10px;padding-right:10px;float: left; }\r\n	.wp-medium-1 { width: 8.33333%; }\r\n	.wp-medium-2 { width: 16.66667%; }\r\n	.wp-medium-3 { width: 25%; }\r\n	.wp-medium-4 { width: 33.33333%; }\r\n	.wp-medium-5 { width: 41.66667%; }\r\n	.wp-medium-6 { width: 50%; }\r\n	.wp-medium-7 { width: 58.33333%; }\r\n	.wp-medium-8 { width: 66.66667%; }\r\n	.wp-medium-9 { width: 75%; }\r\n	.wp-medium-10 { width: 83.33333%; }\r\n	.wp-medium-11 { width: 91.66667%; }\r\n	.wp-medium-12 { width: 100%; }\r\n}\r\n</style>\r\n\r\n<div class=\"wp-medium-8 wpcolumns\">\r\n	<h2>You may also like some of our products</h2>\r\n	<p><b>WP Plugins for all kinds of need. Crafted with Passion</b></p>\r\n</div>\r\n<div class=\"wp-medium-4 wpcolumns wpos-right\">\r\n	<p><a class=\"button button-primary wpos-all-plugin-link\" href=\"https://www.wponlinesupport.com/plugins/\" target=\"_blank\"><i class=\"dashicons dashicons-cart\"></i> Browse all Plugins</a></p>\r\n</div>\r\n\r\n<div class=\"wpos-plugins-wrp wpos-clear\">\r\n\r\n	<!-- PRO Plugins Bundle -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugins-combo-offer/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/04/combo-offer.png\" alt=\"PRO Plugins Bundle\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">PRO Plugins Bundle</h3>\r\n			<p>Save 35% on PRO plugins package.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugins-combo-offer/\" target=\"_blank\" title=\"Buy - PRO Plugins Bundle\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP News and Scrolling Widgets PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/sp-news-and-scrolling-widgets/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-news-plugin.jpg\" alt=\"WP News and Scrolling Widgets PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP News and Scrolling Widgets PRO</h3>\r\n			<p>SP News allows you add, manage and display news, widget, vertical and horizontal news scrolling widget on your website with 38+ designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/sp-news-and-scrolling-widgets/\" target=\"_blank\" title=\"Buy - WP News and Scrolling Widgets PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Blog and Widgets PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-blog-and-widgets/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-blog-plugin.jpg\" alt=\"WP Blog and Widgets PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Blog and Widgets PRO</h3>\r\n			<p>WP Blog and widgets, manage and display blog, widget on your website with 50+ designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-blog-and-widgets/\" target=\"_blank\" title=\"Buy - WP Blog and Widgets PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Stylist Post and Widgets Pro -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-stylist-post-and-widgets-pro/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/02/wordpress-stylisth-post-and-widgets-plugin.jpg\" alt=\"WP Stylist Post and Widgets PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Stylist Post and Widgets PRO</h3>\r\n			<p>WP Stylist Post and Widgets Pro display WordPress posts with multiple designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-stylist-post-and-widgets-pro/\" target=\"_blank\" title=\"Buy - WP Stylist Post and Widgets PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Slick Slider and Image Carousel PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-slick-slider-and-image-carousel/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/11/wordpress-free-slickslider-plugin.jpg\" alt=\"WP Slick Slider and Image Carousel PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Slick Slider and Image Carousel PRO</h3>\r\n			<p>Display multiple slick image slider and carousel using shortcode with category.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-slick-slider-and-image-carousel/\" target=\"_blank\" title=\"Buy - WP Slick Slider and Image Carousel PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Responsive Recent Post Slider PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-responsive-recent-post-slider/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/11/wordpress-recent-post-slider.jpg\" alt=\"WP Responsive Recent Post Slider PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Responsive Recent Post Slider PRO</h3>\r\n			<p>Display Responsive Recent Post Slider on your website with multiple designs using a shortcode.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-responsive-recent-post-slider/\" target=\"_blank\" title=\"Buy - WP Responsive Recent Post Slider PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Testimonial with Widget PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-testimonial-with-widget/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-testimonial-plugin.jpg\" alt=\"WP Testimonial with Widget PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Testimonial with Widget PRO</h3>\r\n			<p>Display responsive, clean client’s testimonial on your website using a shortcode or a widget with 15+ designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-testimonial-with-widget/\" target=\"_blank\" title=\"Buy - WP Testimonial with Widget PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP responsive FAQ with category PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/sp-responsive-wp-faq-with-category-plugin/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-faq-plugin.jpg\" alt=\"WP responsive FAQ with category PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP responsive FAQ with category PRO</h3>\r\n			<p>Customize FAQ design with shortcode parameters, Grid view and Custom ordering with drag and drop.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/sp-responsive-wp-faq-with-category-plugin/\" target=\"_blank\" title=\"Buy - WP responsive FAQ with category PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Featured Content and Slider PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-featured-content-and-slider/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/12/wordpress-free-featured-content-and-slider-plugin.jpg\" alt=\"WP Featured Content and Slider PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Featured Content and Slider PRO</h3>\r\n			<p>A quick, easy way to add and display what features your company, product or service offers, using our shortcode with 15+ designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-featured-content-and-slider/\" target=\"_blank\" title=\"Buy - WP Featured Content and Slider PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Logo Showcase Responsive Slider PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-logo-showcase-responsive-slider/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/11/wordpress-free-logo-slider-plugin-1.jpg\" alt=\"WP Logo Showcase Responsive Slider PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Logo Showcase Responsive Slider</h3>\r\n			<p>A quick, easy way to add and display a responsive logo slideshow carousel to your site quickly and easily with 15+ designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-logo-showcase-responsive-slider/\" target=\"_blank\" title=\"Buy - WP Logo Showcase Responsive Slider PRO\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Video gallery and Player -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/video-gallery-player/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/07/videogallery-plus-player.png\" alt=\"Video gallery and Player\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Video gallery and Player</h3>\r\n			<p>Display responsive HTML5, YouTube, Vimeo and Dailymotion vedio gallery with Magnific Popup to your WordPress website.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/video-gallery-player/\" target=\"_blank\" title=\"Video gallery and Player\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Team Showcase and Slider -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-team-showcase-slider/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/08/teamshowcase.jpg\" alt=\"WP Team Showcase and Slider\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Team Showcase and Slider</h3>\r\n			<p>WP Team Showcase and Slider allows you to easily create and display your team members & staff and show them on your site.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-team-showcase-slider/\" target=\"_blank\" title=\"Buy - WP Team Showcase and Slider\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Album and Image Gallery plus Lightbox Pro -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/album-image-gallery-plus-lightbox/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/08/album-and-image-gallery-plus-lightbox.jpg\" alt=\"Album and Image Gallery plus Lightbox\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Album and Image Gallery plus Lightbox</h3>\r\n			<p>Use Album grid and slider to create a simple but effective Album gallery to show of your beautiful photographs and other images.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/album-image-gallery-plus-lightbox/\" target=\"_blank\" title=\"Buy - Album and Image Gallery plus Lightbox\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Timeline and History Slider -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/timeline-history-slider/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/07/timeline-and-history-slider-banner-1.jpg\" alt=\"Album and Image Gallery plus Lightbox\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Timeline and History Slider</h3>\r\n			<p>An advanced WordPress timeline plugin to show your life history, company’s story or WordPress Post in a responsive Vertical/Horizontal design.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/timeline-history-slider/\" target=\"_blank\" title=\"Buy - Timeline and History Slider\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Login Customizer -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/wp-login-customizer/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/03/wordpress-login-customizer-plugin.jpg\" alt=\"WP Login Customizer\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Login Customizer</h3>\r\n			<p>WP Login Customizer allows you to customize the login screen the way you want.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/wp-login-customizer/\" target=\"_blank\" title=\"Buy - WP Login Customizer\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Blog and Widgets - Masonry Add-on -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wordpress-plugin-addon/masonry-addon-wp-blog-widgets/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-blog-plugin.jpg\" alt=\"WP Blog and Widgets - Masonry Add-on\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Blog and Widgets - Masonry Addon</h3>\r\n			<p>Display blog in a stunning masonry layout with lazy load and cool loading effects.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wordpress-plugin-addon/masonry-addon-wp-blog-widgets/\" target=\"_blank\" title=\"Buy - WP Blog and Widgets Masonry Addon\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP News and Widgets - Masonry Add-on -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wordpress-plugin-addon/masonry-addon-wp-news-widgets/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-news-plugin.jpg\" alt=\"WP News and Widgets - Masonry Add-on\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP News and Widgets - Masonry Addon</h3>\r\n			<p>Display News in a stunning masonry layout with lazy load and cool loading effects.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wordpress-plugin-addon/masonry-addon-wp-news-widgets/\" target=\"_blank\" title=\"Buy - WP News and Widgets Masonry Addon\"><i class=\"dashicons dashicons-cart\"></i> Buy this Plugin</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<div class=\"wp-medium-12 wpcolumns wpos-center\">\r\n		<a class=\"button button-primary wpos-all-plugin-link\" href=\"https://www.wponlinesupport.com/plugins/\" target=\"_blank\"><i class=\"dashicons dashicons-cart\"></i> Browse all Plugins</a>\r\n	</div>\r\n\r\n</div><!-- end .wpos-plugins-wrp -->', 'no'),
(239, 'widget_rich_web_photo_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1539267143', 'no'),
(254, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(263, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1538773016', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(264, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Oct 2018 08:51:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:13:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"xIf54gJLc5sdeN3uapmX9Zr6Xbw\";s:13:\"last-modified\";s:29:\"Fri, 05 Oct 2018 08:53:29 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Fri, 05 Oct 2018 08:56:56 GMT\";s:7:\"expires\";s:29:\"Fri, 05 Oct 2018 08:56:56 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";s:14:\"content-length\";s:4:\"5063\";s:13:\"accept-ranges\";s:4:\"none\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(265, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1538773016', 'no'),
(266, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1538729816', 'no'),
(267, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1538773016', 'no'),
(268, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Dis, c’est quoi un site WordPress professionnel ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/qud1MqoYvfY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://wpmarmite.com/site-wordpress-professionnel/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=site-wordpress-professionnel\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Oct 2018 06:00:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:297:\"\n		        \nIl y a quelques semaines, un de mes clients m’a demandé de mener une opération de maintenance sur son site. Lorsque je m’y suis connecté, j’ai eu ce genre de...\nL’article Dis, c&rsquo;est quoi un site WordPress professionnel ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:686:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/10/site-wordpress-pro.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Il y a quelques semaines, un de mes clients m’a demandé de mener une opération de maintenance sur son site. Lorsque je m’y suis connecté, j’ai eu ce genre de...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/site-wordpress-professionnel/\">Dis, c&rsquo;est quoi un site WordPress professionnel ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/qud1MqoYvfY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://wpmarmite.com/site-wordpress-professionnel/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=site-wordpress-professionnel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"10 plugins “spécial blogging” pour votre WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/ygc9Jn-Hli8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wpformation.com/10-plugins-special-blogging-pour-votre-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Oct 2018 06:45:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:590:\"\n		        Des plugins spécial blogging&#8230; C&#8217;est à dire ? On doit bien l&#8217;avouer, même si on peut accomplir de grands projets avec WordPress &#8211; des boutiques en ligne, des sites vitrines, des forums etc &#8211; cet outil reste certainement le favori des blogueurs ! Si vous vous lancez dans le blogging, vous avez certainement lu, ça [&#8230;]\n\nL’article 10 plugins &#8220;spécial blogging&#8221; pour votre WordPress est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1452:\"<p><img width=\"1200\" height=\"800\" src=\"https://wpformation.com/wp-content/uploads/2018/09/plugin-special-blogging.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"plugins special blogging\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Des plugins spécial blogging&#8230; C&#8217;est à dire ? On doit bien l&#8217;avouer, même si on peut accomplir de grands projets avec WordPress &#8211; des boutiques en ligne, des sites vitrines, des forums etc &#8211; cet outil reste certainement le favori des blogueurs ! Si vous vous lancez dans le blogging, vous avez certainement lu, ça [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/10-plugins-special-blogging-pour-votre-wordpress/\">10 plugins &#8220;spécial blogging&#8221; pour votre WordPress</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/ygc9Jn-Hli8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wpformation.com/10-plugins-special-blogging-pour-votre-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Quel thème WordPress choisir pour créer votre blog ? [MAJ 2018]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/lQVUQg4gFww/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wpmarmite.com/theme-wordpress-blog/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=theme-wordpress-blog\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Sep 2018 06:00:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:355:\"\n		        \nIdées d’articles, calendrier éditorial, stratégie de référencement, promotion sur les réseaux sociaux : vous avez tout prévu. Enfin, presque. Il vous manque encore un truc, pour lancer votre nouveau projet...\nL’article Quel thème WordPress choisir pour créer votre blog ? [MAJ 2018] est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:723:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/09/theme.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Idées d’articles, calendrier éditorial, stratégie de référencement, promotion sur les réseaux sociaux : vous avez tout prévu. Enfin, presque. Il vous manque encore un truc, pour lancer votre nouveau projet...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/theme-wordpress-blog/\">Quel thème WordPress choisir pour créer votre blog ? [MAJ 2018]</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/lQVUQg4gFww\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wpmarmite.com/theme-wordpress-blog/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=theme-wordpress-blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"ACF 5.0 est arrivé : nouvelle interface et compatibilité Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/GJMaq1pwTTw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://www.wpnormandie.fr/acf-5-0-est-arrive-nouvelle-interface-et-compatibilite-gutenberg/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Sep 2018 14:08:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:383:\"\n		        Si vous êtes un adepte des « Custom Post Type » et de la personnalisation de WordPress, alors vous deviez attendre avec impatience ACF V5. L&#8217;attente est maintenant terminée car depuis peu vous avez accès à la toute nouvelle version du plugin ACF. Comme toute nouveauté majeure pour un plugin, nous avons droit à de jolies améliorations [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:453:\"Si vous êtes un adepte des « Custom Post Type » et de la personnalisation de WordPress, alors vous deviez attendre avec impatience ACF V5. L&#8217;attente est maintenant terminée car depuis peu vous avez accès à la toute nouvelle version du plugin ACF. Comme toute nouveauté majeure pour un plugin, nous avons droit à de jolies améliorations [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/GJMaq1pwTTw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://www.wpnormandie.fr/acf-5-0-est-arrive-nouvelle-interface-et-compatibilite-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Accélérer le temps de chargement de vos gravatars\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/ElVTqxMDOeY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wpchannel.com/wordpress/plugins-wordpress/accelerer-temps-chargement-gravatars/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Sep 2018 13:03:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:440:\"\n		        Les gravatars sont des images génératrices de requêtes HTTP supplémentaires sur des serveurs externes au vôtre ce qui nuit à vos performances. FV Gravatar Cache est une extension qui stocke localement les gravatars de vos utilisateurs et s&#8217;occuppe de les mettre à jour en tâche de fond. Rechercher en permanence des astuces pour améliorer les temps de chargement de mes sites est l&#8217;une de [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:713:\"<div class=\"post-thumbnail\"><img width=\"356\" height=\"327\" src=\"https://wpchannel.com/images/2018/08/patrouille-france-anglet-356x327.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Les gravatars sont des images génératrices de requêtes HTTP supplémentaires sur des serveurs externes au vôtre ce qui nuit à vos performances. FV Gravatar Cache est une extension qui stocke localement les gravatars de vos utilisateurs et s&#8217;occuppe de les mettre à jour en tâche de fond. Rechercher en permanence des astuces pour améliorer les temps de chargement de mes sites est l&#8217;une de [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/ElVTqxMDOeY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wpchannel.com/wordpress/plugins-wordpress/accelerer-temps-chargement-gravatars/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"UpdraftPlus lance le clonage de site avec UpdraftClone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/799deqNEv5I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://www.wpnormandie.fr/updraftplus-lance-le-clonage-de-site-avec-updraftclone/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Sep 2018 12:31:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"\n		        UpdraftPlus est heureux d&#8217;annoncer que son nouveau service «clone temporaire» est maintenant opérationnel. Vous ne connaissez pas UpdraftPlus ? Il s&#8217;agit de l&#8217;un des plugin WordPress les plus utilisé pour la sauvegarde. Le service UpdraftClone vous permet de créer un site de test cloné directement à partir de la page des paramètres de UpdraftPlus en [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:478:\"UpdraftPlus est heureux d&#8217;annoncer que son nouveau service «clone temporaire» est maintenant opérationnel. Vous ne connaissez pas UpdraftPlus ? Il s&#8217;agit de l&#8217;un des plugin WordPress les plus utilisé pour la sauvegarde. Le service UpdraftClone vous permet de créer un site de test cloné directement à partir de la page des paramètres de UpdraftPlus en [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/799deqNEv5I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://www.wpnormandie.fr/updraftplus-lance-le-clonage-de-site-avec-updraftclone/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"Comment je suis passé à Lando pour développer en utilisant Docker !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/LzUpxEjsYEQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://www.thivinfo.com/blog/tutoriels/comment-je-suis-passe-a-lando-pour-developper-en-utilisant-docker/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Sep 2018 11:09:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:709:\"\n		        Il y a quelques mois j&#8217;avais testé Docker pour gérer mes environnements de développement.L&#8217;avantage majeur de Docker est de pouvoir développer en local sur les meme bases techniques  du serveur. Avouez que c&#8217;est tentant quand on a des sites hébergés chez des prestataires différents ( Même si la plupart pour mon cas sont chez O2Switch ) avec des versions logicielle des PHP, Mysql, Mariadb différentes.L’inconvénient majeur de Docker, a mon humble avis, réside dans la complexité de configuration!Je n&#8217;avais jamais réussi a faire fonctionner plusieurs vhost  en meme temps! Avec Lando, c&#8217;est simple! En discutant avec un collègue sur le…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:779:\"Il y a quelques mois j&#8217;avais testé Docker pour gérer mes environnements de développement.L&#8217;avantage majeur de Docker est de pouvoir développer en local sur les meme bases techniques  du serveur. Avouez que c&#8217;est tentant quand on a des sites hébergés chez des prestataires différents ( Même si la plupart pour mon cas sont chez O2Switch ) avec des versions logicielle des PHP, Mysql, Mariadb différentes.L’inconvénient majeur de Docker, a mon humble avis, réside dans la complexité de configuration!Je n&#8217;avais jamais réussi a faire fonctionner plusieurs vhost  en meme temps! Avec Lando, c&#8217;est simple! En discutant avec un collègue sur le…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/LzUpxEjsYEQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://www.thivinfo.com/blog/tutoriels/comment-je-suis-passe-a-lando-pour-developper-en-utilisant-docker/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Et si vous veniez aux prochains événements WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/LI07EtCbXmw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://www.whodunit.fr/et-si-vous-veniez-aux-prochains-evenements-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Sep 2018 08:52:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:281:\"\n		        Dans les prochaines semaines auront lieu deux événements WordPress intéressants si vous utilisez le CMS en amateur ou en professionnel...\nCet article Et si vous veniez aux prochains événements WordPress est apparu en premier sur Agence WordPress Whodunit.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:525:\"<p>Dans les prochaines semaines auront lieu deux événements WordPress intéressants si vous utilisez le CMS en amateur ou en professionnel...</p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://www.whodunit.fr/et-si-vous-veniez-aux-prochains-evenements-wordpress/\">Et si vous veniez aux prochains événements WordPress</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://www.whodunit.fr\">Agence WordPress Whodunit</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/LI07EtCbXmw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://www.whodunit.fr/et-si-vous-veniez-aux-prochains-evenements-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:13:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"LIjqROvnjdevRGHoIYpIO4nMn+Y\";s:13:\"last-modified\";s:29:\"Fri, 05 Oct 2018 08:50:36 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Fri, 05 Oct 2018 08:56:56 GMT\";s:7:\"expires\";s:29:\"Fri, 05 Oct 2018 08:56:56 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";s:14:\"content-length\";s:4:\"3760\";s:13:\"accept-ranges\";s:4:\"none\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no'),
(269, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1538773016', 'no'),
(270, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1538729816', 'no'),
(271, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1538773016', 'no'),
(272, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/qud1MqoYvfY/\'>Dis, c’est quoi un site WordPress professionnel ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/ygc9Jn-Hli8/\'>10 plugins “spécial blogging” pour votre WordPress</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/lQVUQg4gFww/\'>Quel thème WordPress choisir pour créer votre blog ? [MAJ 2018]</a></li></ul></div>', 'no'),
(282, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538742345;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(285, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'ms_hide_all_ads_until', '1539941283', 'yes'),
(287, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(288, 'ml-slider_children', 'a:0:{}', 'yes'),
(289, 'metaslider_tour_cancelled_on', 'step_show_slide_types', 'yes'),
(305, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538747518;s:7:\"checked\";a:6:{s:7:\"fazenda\";s:3:\"1.5\";s:14:\"portfolio-lite\";s:5:\"1.2.4\";s:10:\"responsive\";s:4:\"3.11\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:14:\"portfolio-lite\";a:4:{s:5:\"theme\";s:14:\"portfolio-lite\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/portfolio-lite/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/portfolio-lite.1.2.6.zip\";}s:10:\"responsive\";a:4:{s:5:\"theme\";s:10:\"responsive\";s:11:\"new_version\";s:4:\"3.12\";s:3:\"url\";s:40:\"https://wordpress.org/themes/responsive/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/responsive.3.12.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(306, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538747366;s:8:\"response\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:228:\"<p>This is a security and maintenance release and we strongly encourage you to update to it immediately. For more information, refer to the <a href=\"https://contactform7.com/category/releases/\">release announcement post</a>.</p>\";s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"elementor/elementor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.2.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.9.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"slider-images/Slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/slider-images\";s:4:\"slug\";s:13:\"slider-images\";s:6:\"plugin\";s:24:\"slider-images/Slider.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/slider-images/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/slider-images.1.3.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/slider-images/assets/icon-128x128.png?rev=1534872\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/slider-images/assets/banner-772x250.png?rev=1658394\";}s:11:\"banners_rtl\";a:0:{}}s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/wp-slick-slider-and-image-carousel\";s:4:\"slug\";s:34:\"wp-slick-slider-and-image-carousel\";s:6:\"plugin\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/wp-slick-slider-and-image-carousel/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/wp-slick-slider-and-image-carousel.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(311, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1538758171', 'no'),
(312, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4511;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3040;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2593;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2450;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1884;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1681;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1675;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1462;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1404;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1403;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1403;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1335;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1248;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1116;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1076;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1047;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1041;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:929;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:893;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:836;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:818;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:809;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:736;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:705;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:691;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:686;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:668;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:662;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:659;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:649;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:645;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:620;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:619;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:601;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:600;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:573;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:555;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:548;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:544;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:533;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:528;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:524;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:518;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:512;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:505;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:497;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:492;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:489;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:483;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:459;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:454;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:451;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:445;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:424;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:421;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:419;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:416;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:392;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:378;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:372;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:367;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:366;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:364;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:363;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:355;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:352;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:349;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:349;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:343;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:340;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:339;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:335;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:330;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:309;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:301;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:293;}}', 'no'),
(313, '_site_transient_timeout_theme_roots', '1538749316', 'no'),
(314, '_site_transient_theme_roots', 'a:6:{s:7:\"fazenda\";s:7:\"/themes\";s:14:\"portfolio-lite\";s:7:\"/themes\";s:10:\"responsive\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(322, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(294, 101, '_wp_attached_file', '2018/09/espresso-9.jpg'),
(295, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/09/espresso-9.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-9-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-9-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-9-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 101, '_starter_content_theme', 'twentyseventeen'),
(298, 102, '_wp_attached_file', '2018/09/sandwich-9.jpg'),
(299, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/09/sandwich-9.jpg\";s:5:\"sizes\";a:22:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-9-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-9-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-9-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:22:\"sandwich-9-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:22:\"sandwich-9-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:22:\"sandwich-9-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:23:\"sandwich-9-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x186\";a:4:{s:4:\"file\";s:22:\"sandwich-9-620x186.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x120\";a:4:{s:4:\"file\";s:22:\"sandwich-9-400x120.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-2000x6\";a:4:{s:4:\"file\";s:21:\"sandwich-9-2000x6.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:6;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1600x5\";a:4:{s:4:\"file\";s:21:\"sandwich-9-1600x5.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:5;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1200x4\";a:4:{s:4:\"file\";s:21:\"sandwich-9-1200x4.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:4;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"meta-slider-resized-620x2\";a:4:{s:4:\"file\";s:20:\"sandwich-9-620x2.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:2;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"meta-slider-resized-400x1\";a:4:{s:4:\"file\";s:20:\"sandwich-9-400x1.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:1;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x385\";a:4:{s:4:\"file\";s:23:\"sandwich-9-1000x385.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x239\";a:4:{s:4:\"file\";s:22:\"sandwich-9-620x239.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x154\";a:4:{s:4:\"file\";s:22:\"sandwich-9-400x154.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x585\";a:4:{s:4:\"file\";s:23:\"sandwich-9-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x363\";a:4:{s:4:\"file\";s:22:\"sandwich-9-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x234\";a:4:{s:4:\"file\";s:22:\"sandwich-9-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 102, '_starter_content_theme', 'twentyseventeen'),
(302, 103, '_wp_attached_file', '2018/09/coffee-9.jpg'),
(303, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/09/coffee-9.jpg\";s:5:\"sizes\";a:22:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-9-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-9-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-9-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:20:\"coffee-9-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:20:\"coffee-9-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:20:\"coffee-9-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:21:\"coffee-9-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x186\";a:4:{s:4:\"file\";s:20:\"coffee-9-620x186.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x120\";a:4:{s:4:\"file\";s:20:\"coffee-9-400x120.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-2000x6\";a:4:{s:4:\"file\";s:19:\"coffee-9-2000x6.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:6;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1600x5\";a:4:{s:4:\"file\";s:19:\"coffee-9-1600x5.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:5;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1200x4\";a:4:{s:4:\"file\";s:19:\"coffee-9-1200x4.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:4;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"meta-slider-resized-620x2\";a:4:{s:4:\"file\";s:18:\"coffee-9-620x2.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:2;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"meta-slider-resized-400x1\";a:4:{s:4:\"file\";s:18:\"coffee-9-400x1.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:1;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x385\";a:4:{s:4:\"file\";s:21:\"coffee-9-1000x385.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x239\";a:4:{s:4:\"file\";s:20:\"coffee-9-620x239.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x154\";a:4:{s:4:\"file\";s:20:\"coffee-9-400x154.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x585\";a:4:{s:4:\"file\";s:21:\"coffee-9-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x363\";a:4:{s:4:\"file\";s:20:\"coffee-9-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x234\";a:4:{s:4:\"file\";s:20:\"coffee-9-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 103, '_starter_content_theme', 'twentyseventeen'),
(307, 104, '_customize_changeset_uuid', '736cbd2e-2986-4eca-a0e9-ae7c8e87a76e'),
(308, 105, '_thumbnail_id', '102'),
(310, 105, '_customize_changeset_uuid', '736cbd2e-2986-4eca-a0e9-ae7c8e87a76e'),
(311, 106, '_thumbnail_id', '101'),
(313, 106, '_customize_changeset_uuid', '736cbd2e-2986-4eca-a0e9-ae7c8e87a76e'),
(314, 107, '_thumbnail_id', '103'),
(316, 107, '_customize_changeset_uuid', '736cbd2e-2986-4eca-a0e9-ae7c8e87a76e'),
(317, 108, '_thumbnail_id', '101'),
(319, 108, '_customize_changeset_uuid', '736cbd2e-2986-4eca-a0e9-ae7c8e87a76e'),
(320, 109, '_edit_lock', '1538052521:1'),
(321, 115, '_menu_item_type', 'custom'),
(322, 115, '_menu_item_menu_item_parent', '0'),
(323, 115, '_menu_item_object_id', '115'),
(324, 115, '_menu_item_object', 'custom'),
(325, 115, '_menu_item_target', ''),
(326, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 115, '_menu_item_xfn', ''),
(328, 115, '_menu_item_url', 'http://localhost/wordpress/'),
(329, 116, '_menu_item_type', 'post_type'),
(330, 116, '_menu_item_menu_item_parent', '0'),
(331, 116, '_menu_item_object_id', '105'),
(332, 116, '_menu_item_object', 'page'),
(333, 116, '_menu_item_target', ''),
(334, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 116, '_menu_item_xfn', ''),
(336, 116, '_menu_item_url', ''),
(337, 117, '_menu_item_type', 'post_type'),
(338, 117, '_menu_item_menu_item_parent', '0'),
(339, 117, '_menu_item_object_id', '107'),
(340, 117, '_menu_item_object', 'page'),
(341, 117, '_menu_item_target', ''),
(342, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 117, '_menu_item_xfn', ''),
(344, 117, '_menu_item_url', ''),
(345, 118, '_menu_item_type', 'post_type'),
(346, 118, '_menu_item_menu_item_parent', '0'),
(347, 118, '_menu_item_object_id', '106'),
(348, 118, '_menu_item_object', 'page'),
(349, 118, '_menu_item_target', ''),
(350, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 118, '_menu_item_xfn', ''),
(352, 118, '_menu_item_url', ''),
(353, 119, '_menu_item_type', 'custom'),
(354, 119, '_menu_item_menu_item_parent', '0'),
(355, 119, '_menu_item_object_id', '119'),
(356, 119, '_menu_item_object', 'custom'),
(357, 119, '_menu_item_target', ''),
(358, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 119, '_menu_item_xfn', ''),
(360, 119, '_menu_item_url', 'https://www.yelp.com'),
(361, 120, '_menu_item_type', 'custom'),
(362, 120, '_menu_item_menu_item_parent', '0'),
(363, 120, '_menu_item_object_id', '120'),
(364, 120, '_menu_item_object', 'custom'),
(365, 120, '_menu_item_target', ''),
(366, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(367, 120, '_menu_item_xfn', ''),
(368, 120, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(369, 121, '_menu_item_type', 'custom'),
(370, 121, '_menu_item_menu_item_parent', '0'),
(371, 121, '_menu_item_object_id', '121'),
(372, 121, '_menu_item_object', 'custom'),
(373, 121, '_menu_item_target', ''),
(374, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(375, 121, '_menu_item_xfn', ''),
(376, 121, '_menu_item_url', 'https://twitter.com/wordpress'),
(377, 122, '_menu_item_type', 'custom'),
(378, 122, '_menu_item_menu_item_parent', '0'),
(379, 122, '_menu_item_object_id', '122'),
(380, 122, '_menu_item_object', 'custom'),
(381, 122, '_menu_item_target', ''),
(382, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(383, 122, '_menu_item_xfn', ''),
(384, 122, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(385, 123, '_menu_item_type', 'custom'),
(386, 123, '_menu_item_menu_item_parent', '0'),
(387, 123, '_menu_item_object_id', '123'),
(388, 123, '_menu_item_object', 'custom'),
(389, 123, '_menu_item_target', ''),
(390, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 123, '_menu_item_xfn', ''),
(392, 123, '_menu_item_url', 'mailto:wordpress@example.com'),
(393, 109, '_wp_trash_meta_status', 'publish'),
(394, 109, '_wp_trash_meta_time', '1538052530'),
(398, 124, '_wp_trash_meta_status', 'publish'),
(399, 124, '_wp_trash_meta_time', '1538643305'),
(400, 125, '_edit_last', '1'),
(401, 125, '_edit_lock', '1538646971:1'),
(402, 125, 'wpsisac_slide_link', ''),
(403, 104, '_edit_lock', '1538744825:1'),
(404, 104, '_edit_last', '1'),
(405, 127, '_wp_attached_file', '2018/10/33364314.jpg'),
(406, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:810;s:4:\"file\";s:20:\"2018/10/33364314.jpg\";s:5:\"sizes\";a:22:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"33364314-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"33364314-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"33364314-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"33364314-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"33364314-1200x506.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:20:\"33364314-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:20:\"33364314-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:20:\"33364314-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:21:\"33364314-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x186\";a:4:{s:4:\"file\";s:20:\"33364314-620x186.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x120\";a:4:{s:4:\"file\";s:20:\"33364314-400x120.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1920x5\";a:4:{s:4:\"file\";s:19:\"33364314-1920x5.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:5;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1600x4\";a:4:{s:4:\"file\";s:19:\"33364314-1600x4.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:4;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-1200x3\";a:4:{s:4:\"file\";s:19:\"33364314-1200x3.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:3;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"meta-slider-resized-620x2\";a:4:{s:4:\"file\";s:18:\"33364314-620x2.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:2;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"meta-slider-resized-400x1\";a:4:{s:4:\"file\";s:18:\"33364314-400x1.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:1;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x385\";a:4:{s:4:\"file\";s:21:\"33364314-1000x385.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x239\";a:4:{s:4:\"file\";s:20:\"33364314-620x239.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x154\";a:4:{s:4:\"file\";s:20:\"33364314-400x154.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x585\";a:4:{s:4:\"file\";s:21:\"33364314-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x363\";a:4:{s:4:\"file\";s:20:\"33364314-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x234\";a:4:{s:4:\"file\";s:20:\"33364314-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 128, '_edit_last', '1'),
(408, 128, '_edit_lock', '1538646974:1'),
(409, 128, 'wpsisac_slide_link', ''),
(410, 129, '_edit_last', '1'),
(411, 129, '_edit_lock', '1538647086:1'),
(412, 129, 'wpsisac_slide_link', ''),
(413, 129, '_thumbnail_id', '102'),
(414, 133, '_edit_last', '1'),
(415, 133, '_edit_lock', '1538730622:1'),
(416, 133, '_thumbnail_id', '127'),
(417, 134, '_edit_last', '1'),
(418, 134, '_edit_lock', '1538730730:1'),
(419, 134, '_thumbnail_id', '103'),
(420, 135, 'ml-slider_settings', 'a:36:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1000\";s:6:\"height\";s:3:\"585\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:4:\"true\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(421, 135, 'metaslider_slideshow_theme', ''),
(422, 136, '_thumbnail_id', '139'),
(423, 136, 'ml-slider_type', 'image'),
(424, 136, 'ml-slider_inherit_image_caption', ''),
(425, 136, 'ml-slider_inherit_image_title', '1'),
(426, 136, 'ml-slider_inherit_image_alt', '1'),
(427, 127, '_wp_attachment_backup_sizes', 'a:17:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-700x300.jpg\";s:4:\"file\";s:20:\"33364314-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-620x266.jpg\";s:4:\"file\";s:20:\"33364314-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-400x171.jpg\";s:4:\"file\";s:20:\"33364314-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-1000x300.jpg\";s:4:\"file\";s:21:\"33364314-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x186\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-620x186.jpg\";s:4:\"file\";s:20:\"33364314-620x186.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x120\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-400x120.jpg\";s:4:\"file\";s:20:\"33364314-400x120.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1920x5\";a:5:{s:4:\"path\";s:69:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-1920x5.jpg\";s:4:\"file\";s:19:\"33364314-1920x5.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:5;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1600x4\";a:5:{s:4:\"path\";s:69:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-1600x4.jpg\";s:4:\"file\";s:19:\"33364314-1600x4.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:4;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1200x3\";a:5:{s:4:\"path\";s:69:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-1200x3.jpg\";s:4:\"file\";s:19:\"33364314-1200x3.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:3;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resized-620x2\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-620x2.jpg\";s:4:\"file\";s:18:\"33364314-620x2.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:2;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resized-400x1\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-400x1.jpg\";s:4:\"file\";s:18:\"33364314-400x1.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:1;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x385\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-1000x385.jpg\";s:4:\"file\";s:21:\"33364314-1000x385.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x239\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-620x239.jpg\";s:4:\"file\";s:20:\"33364314-620x239.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x154\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-400x154.jpg\";s:4:\"file\";s:20:\"33364314-400x154.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x585\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-1000x585.jpg\";s:4:\"file\";s:21:\"33364314-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x363\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-620x363.jpg\";s:4:\"file\";s:20:\"33364314-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x234\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/33364314-400x234.jpg\";s:4:\"file\";s:20:\"33364314-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(429, 137, 'ml-slider_type', 'image'),
(430, 137, 'ml-slider_inherit_image_caption', ''),
(431, 137, 'ml-slider_inherit_image_title', '1'),
(432, 137, 'ml-slider_inherit_image_alt', '1'),
(433, 103, '_wp_attachment_backup_sizes', 'a:17:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-700x300.jpg\";s:4:\"file\";s:20:\"coffee-9-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-620x266.jpg\";s:4:\"file\";s:20:\"coffee-9-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-400x171.jpg\";s:4:\"file\";s:20:\"coffee-9-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-1000x300.jpg\";s:4:\"file\";s:21:\"coffee-9-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x186\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-620x186.jpg\";s:4:\"file\";s:20:\"coffee-9-620x186.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x120\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-400x120.jpg\";s:4:\"file\";s:20:\"coffee-9-400x120.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-2000x6\";a:5:{s:4:\"path\";s:69:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-2000x6.jpg\";s:4:\"file\";s:19:\"coffee-9-2000x6.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:6;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1600x5\";a:5:{s:4:\"path\";s:69:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-1600x5.jpg\";s:4:\"file\";s:19:\"coffee-9-1600x5.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:5;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1200x4\";a:5:{s:4:\"path\";s:69:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-1200x4.jpg\";s:4:\"file\";s:19:\"coffee-9-1200x4.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:4;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resized-620x2\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-620x2.jpg\";s:4:\"file\";s:18:\"coffee-9-620x2.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:2;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resized-400x1\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-400x1.jpg\";s:4:\"file\";s:18:\"coffee-9-400x1.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:1;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x385\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-1000x385.jpg\";s:4:\"file\";s:21:\"coffee-9-1000x385.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x239\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-620x239.jpg\";s:4:\"file\";s:20:\"coffee-9-620x239.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x154\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-400x154.jpg\";s:4:\"file\";s:20:\"coffee-9-400x154.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x585\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-1000x585.jpg\";s:4:\"file\";s:21:\"coffee-9-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x363\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-620x363.jpg\";s:4:\"file\";s:20:\"coffee-9-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x234\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/coffee-9-400x234.jpg\";s:4:\"file\";s:20:\"coffee-9-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(434, 138, '_thumbnail_id', '141'),
(435, 138, 'ml-slider_type', 'image'),
(436, 138, 'ml-slider_inherit_image_caption', ''),
(437, 138, 'ml-slider_inherit_image_title', '1'),
(438, 138, 'ml-slider_inherit_image_alt', '1'),
(439, 102, '_wp_attachment_backup_sizes', 'a:17:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-700x300.jpg\";s:4:\"file\";s:22:\"sandwich-9-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-620x266.jpg\";s:4:\"file\";s:22:\"sandwich-9-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-400x171.jpg\";s:4:\"file\";s:22:\"sandwich-9-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-1000x300.jpg\";s:4:\"file\";s:23:\"sandwich-9-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x186\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-620x186.jpg\";s:4:\"file\";s:22:\"sandwich-9-620x186.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x120\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-400x120.jpg\";s:4:\"file\";s:22:\"sandwich-9-400x120.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-2000x6\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-2000x6.jpg\";s:4:\"file\";s:21:\"sandwich-9-2000x6.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:6;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1600x5\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-1600x5.jpg\";s:4:\"file\";s:21:\"sandwich-9-1600x5.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:5;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-1200x4\";a:5:{s:4:\"path\";s:71:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-1200x4.jpg\";s:4:\"file\";s:21:\"sandwich-9-1200x4.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:4;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resized-620x2\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-620x2.jpg\";s:4:\"file\";s:20:\"sandwich-9-620x2.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:2;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resized-400x1\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-400x1.jpg\";s:4:\"file\";s:20:\"sandwich-9-400x1.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:1;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x385\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-1000x385.jpg\";s:4:\"file\";s:23:\"sandwich-9-1000x385.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:385;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x239\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-620x239.jpg\";s:4:\"file\";s:22:\"sandwich-9-620x239.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x154\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-400x154.jpg\";s:4:\"file\";s:22:\"sandwich-9-400x154.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x585\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-1000x585.jpg\";s:4:\"file\";s:23:\"sandwich-9-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x363\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-620x363.jpg\";s:4:\"file\";s:22:\"sandwich-9-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x234\";a:5:{s:4:\"path\";s:72:\"C:xampphtdocswordpress/wp-content/uploads/2018/09/sandwich-9-400x234.jpg\";s:4:\"file\";s:22:\"sandwich-9-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(440, 136, 'ml-slider_crop_position', 'center-center'),
(441, 136, '_wp_attachment_image_alt', ''),
(442, 137, 'ml-slider_crop_position', 'center-center'),
(443, 137, '_wp_attachment_image_alt', ''),
(444, 138, 'ml-slider_crop_position', 'center-center'),
(445, 138, '_wp_attachment_image_alt', ''),
(446, 139, '_wp_attached_file', '2018/10/photo_diapo.jpg'),
(447, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:780;s:6:\"height\";i:622;s:4:\"file\";s:23:\"2018/10/photo_diapo.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"photo_diapo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"photo_diapo-300x239.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"photo_diapo-768x612.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-780x456\";a:4:{s:4:\"file\";s:23:\"photo_diapo-780x456.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x362\";a:4:{s:4:\"file\";s:23:\"photo_diapo-620x362.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x234\";a:4:{s:4:\"file\";s:23:\"photo_diapo-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 141, '_wp_attached_file', '2018/10/photo_diapo3.jpg'),
(451, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1699;s:6:\"height\";i:1350;s:4:\"file\";s:24:\"2018/10/photo_diapo3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"photo_diapo3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"photo_diapo3-300x238.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"photo_diapo3-768x610.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"photo_diapo3-1024x814.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:814;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"photo_diapo3-1200x954.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:954;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x585\";a:4:{s:4:\"file\";s:25:\"photo_diapo3-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x363\";a:4:{s:4:\"file\";s:24:\"photo_diapo3-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x234\";a:4:{s:4:\"file\";s:24:\"photo_diapo3-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:11:\"Joan Bracco\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:13:\"©Joan Bracco\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(452, 139, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-780x456\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo-780x456.jpg\";s:4:\"file\";s:23:\"photo_diapo-780x456.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x362\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo-620x362.jpg\";s:4:\"file\";s:23:\"photo_diapo-620x362.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x234\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo-400x234.jpg\";s:4:\"file\";s:23:\"photo_diapo-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(454, 141, '_wp_attachment_backup_sizes', 'a:3:{s:16:\"resized-1000x585\";a:5:{s:4:\"path\";s:75:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo3-1000x585.jpg\";s:4:\"file\";s:25:\"photo_diapo3-1000x585.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x363\";a:5:{s:4:\"path\";s:74:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo3-620x363.jpg\";s:4:\"file\";s:24:\"photo_diapo3-620x363.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x234\";a:5:{s:4:\"path\";s:74:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo3-400x234.jpg\";s:4:\"file\";s:24:\"photo_diapo3-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(455, 142, '_wp_attached_file', '2018/10/photo_diapo2-1.jpg'),
(456, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:628;s:6:\"height\";i:501;s:4:\"file\";s:26:\"2018/10/photo_diapo2-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"photo_diapo2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"photo_diapo2-1-300x239.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-628x367\";a:4:{s:4:\"file\";s:26:\"photo_diapo2-1-628x367.jpg\";s:5:\"width\";i:628;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x362\";a:4:{s:4:\"file\";s:26:\"photo_diapo2-1-620x362.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x234\";a:4:{s:4:\"file\";s:26:\"photo_diapo2-1-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(457, 137, '_wp_desired_post_slug', 'slider-135-image-2'),
(458, 143, '_thumbnail_id', '142'),
(459, 143, 'ml-slider_type', 'image'),
(460, 143, 'ml-slider_inherit_image_caption', ''),
(461, 143, 'ml-slider_inherit_image_title', '1'),
(462, 143, 'ml-slider_inherit_image_alt', '1'),
(463, 142, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-628x367\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo2-1-628x367.jpg\";s:4:\"file\";s:26:\"photo_diapo2-1-628x367.jpg\";s:5:\"width\";i:628;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x362\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo2-1-620x362.jpg\";s:4:\"file\";s:26:\"photo_diapo2-1-620x362.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x234\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocswordpress/wp-content/uploads/2018/10/photo_diapo2-1-400x234.jpg\";s:4:\"file\";s:26:\"photo_diapo2-1-400x234.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(464, 143, 'ml-slider_crop_position', 'center-center'),
(465, 143, '_wp_attachment_image_alt', ''),
(466, 144, '_menu_item_type', 'post_type'),
(467, 144, '_menu_item_menu_item_parent', '0'),
(468, 144, '_menu_item_object_id', '104'),
(469, 144, '_menu_item_object', 'page'),
(470, 144, '_menu_item_target', ''),
(471, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(472, 144, '_menu_item_xfn', ''),
(473, 144, '_menu_item_url', ''),
(474, 144, '_menu_item_orphaned', '1538747116'),
(484, 105, '_wp_trash_meta_status', 'publish'),
(485, 105, '_wp_trash_meta_time', '1538748516'),
(486, 105, '_wp_desired_post_slug', 'a-propos-de'),
(487, 107, '_edit_lock', '1538748415:1'),
(488, 107, '_edit_last', '1'),
(489, 2, '_edit_lock', '1538748445:1'),
(490, 2, '_edit_last', '1'),
(491, 3, '_edit_lock', '1538748471:1'),
(492, 3, '_edit_last', '1'),
(493, 108, '_edit_lock', '1538748496:1'),
(494, 150, '_menu_item_type', 'post_type'),
(495, 150, '_menu_item_menu_item_parent', '0'),
(496, 150, '_menu_item_object_id', '107'),
(497, 150, '_menu_item_object', 'page'),
(498, 150, '_menu_item_target', ''),
(499, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(500, 150, '_menu_item_xfn', ''),
(501, 150, '_menu_item_url', ''),
(503, 151, '_menu_item_type', 'post_type'),
(504, 151, '_menu_item_menu_item_parent', '0'),
(505, 151, '_menu_item_object_id', '106'),
(506, 151, '_menu_item_object', 'page'),
(507, 151, '_menu_item_target', ''),
(508, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(509, 151, '_menu_item_xfn', ''),
(510, 151, '_menu_item_url', ''),
(512, 152, '_menu_item_type', 'post_type'),
(513, 152, '_menu_item_menu_item_parent', '0'),
(514, 152, '_menu_item_object_id', '2'),
(515, 152, '_menu_item_object', 'page'),
(516, 152, '_menu_item_target', ''),
(517, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(518, 152, '_menu_item_xfn', ''),
(519, 152, '_menu_item_url', ''),
(521, 154, '_edit_lock', '1538749106:1'),
(522, 154, '_wp_trash_meta_status', 'publish'),
(523, 154, '_wp_trash_meta_time', '1538749113'),
(524, 155, '_wp_trash_meta_status', 'publish'),
(525, 155, '_wp_trash_meta_time', '1538749126'),
(526, 156, '_wp_trash_meta_status', 'publish'),
(527, 156, '_wp_trash_meta_time', '1538749134'),
(528, 157, '_wp_trash_meta_status', 'publish'),
(529, 157, '_wp_trash_meta_time', '1538749215'),
(530, 158, '_wp_trash_meta_status', 'publish'),
(531, 158, '_wp_trash_meta_time', '1538749219'),
(532, 159, '_wp_trash_meta_status', 'publish'),
(533, 159, '_wp_trash_meta_time', '1538749223');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-27 14:25:31', '2018-09-27 12:25:31', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-09-27 14:25:31', '2018-09-27 12:25:31', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-27 14:25:31', '2018-09-27 12:25:31', '', 'L\'agence', '', 'publish', 'closed', 'open', '', 'l-agence', '', '', '2018-10-05 16:09:46', '2018-10-05 14:09:46', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-27 14:25:31', '2018-09-27 12:25:31', '<h2>Qui sommes-nous ?</h2>\r\nL’adresse de notre site Web est : http://localhost/wordpress.\r\n<h2>Utilisation des données personnelles collectées</h2>\r\n<h3>Commentaires</h3>\r\nQuand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.\r\n\r\nUne chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.\r\n<h3>Médias</h3>\r\nSi vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.\r\n<h3>Formulaires de contact</h3>\r\n<h3>Cookies</h3>\r\nSi vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.\r\n\r\nSi vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.\r\n\r\nLorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.\r\n\r\nEn modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.\r\n<h3>Contenu embarqué depuis d’autres sites</h3>\r\nLes articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.\r\n\r\nCes sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.\r\n<h3>Statistiques et mesures d’audience</h3>\r\n<h2>Utilisation et transmission de vos données personnelles</h2>\r\n<h2>Durées de stockage de vos données</h2>\r\nSi vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.\r\n\r\nPour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.\r\n<h2>Les droits que vous avez sur vos données</h2>\r\nSi vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.\r\n<h2>Transmission de vos données personnelles</h2>\r\nLes commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.\r\n<h2>Informations de contact</h2>\r\n<h2>Informations supplémentaires</h2>\r\n<h3>Comment nous protégeons vos données</h3>\r\n<h3>Procédures mises en œuvre en cas de fuite de données</h3>\r\n<h3>Les services tiers qui nous transmettent des données</h3>\r\n<h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3>\r\n<h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Mentions légales', '', 'publish', 'closed', 'open', '', 'mentions-legales', '', '', '2018-10-05 16:10:13', '2018-10-05 14:10:13', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(101, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Expresso', '', 'inherit', 'open', 'closed', '', 'expresso', '', '', '2018-10-04 11:34:19', '2018-10-04 09:34:19', '', 129, 'http://localhost/wordpress/wp-content/uploads/2018/09/espresso-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/09/sandwich-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Café', '', 'inherit', 'open', 'closed', '', 'cafe', '', '', '2018-10-04 11:33:51', '2018-10-04 09:33:51', '', 128, 'http://localhost/wordpress/wp-content/uploads/2018/09/coffee-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '&nbsp;\r\n\r\nBienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-10-04 13:40:05', '2018-10-04 11:40:05', '', 0, 'http://localhost/wordpress/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'trash', 'closed', 'closed', '', 'a-propos-de__trashed', '', '', '2018-10-05 16:08:36', '2018-10-05 14:08:36', '', 0, 'http://localhost/wordpress/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/?page_id=106', 0, 'page', '', 0),
(107, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Les projets', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-10-05 16:09:16', '2018-10-05 14:09:16', '', 0, 'http://localhost/wordpress/?page_id=107', 0, 'page', '', 0),
(108, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'publish', 'closed', 'closed', '', 'une-section-de-page-daccueil', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a1e7f4bb7b80cde3e836cffa6573d7a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9a1a2215e4899c87a0180f9b7c3a4522\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d41a3c9d8097f20b88afadc06052ecdb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a1e7f4bb7b80cde3e836cffa6573d7a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d41a3c9d8097f20b88afadc06052ecdb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9a1a2215e4899c87a0180f9b7c3a4522\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            101,\n            102,\n            103,\n            104,\n            105,\n            106,\n            107,\n            108\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 105,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 107,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 106,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:48:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 104,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 107,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 108,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 105,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 107,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 106,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:35\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-6\",\n                \"search-3\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-27 12:40:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '736cbd2e-2986-4eca-a0e9-ae7c8e87a76e', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/?p=109', 0, 'customize_changeset', '', 0),
(110, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 104, 'http://localhost/wordpress/2018/09/27/104-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 105, 'http://localhost/wordpress/2018/09/27/105-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 106, 'http://localhost/wordpress/2018/09/27/106-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 107, 'http://localhost/wordpress/2018/09/27/107-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 108, 'http://localhost/wordpress/2018/09/27/108-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/accueil/', 0, 'nav_menu_item', '', 0),
(116, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/116/', 1, 'nav_menu_item', '', 0),
(117, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/117/', 2, 'nav_menu_item', '', 0),
(118, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/118/', 3, 'nav_menu_item', '', 0),
(119, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/yelp/', 0, 'nav_menu_item', '', 0),
(120, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/facebook/', 1, 'nav_menu_item', '', 0),
(121, 1, '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-09-27 14:48:49', '2018-09-27 12:48:49', '', 0, 'http://localhost/wordpress/2018/09/27/twitter/', 2, 'nav_menu_item', '', 0),
(122, 1, '2018-09-27 14:48:50', '2018-09-27 12:48:50', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-09-27 14:48:50', '2018-09-27 12:48:50', '', 0, 'http://localhost/wordpress/2018/09/27/instagram/', 3, 'nav_menu_item', '', 0),
(123, 1, '2018-09-27 14:48:50', '2018-09-27 12:48:50', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2018-09-27 14:48:50', '2018-09-27 12:48:50', '', 0, 'http://localhost/wordpress/2018/09/27/e-mail/', 4, 'nav_menu_item', '', 0),
(124, 1, '2018-10-04 10:55:05', '2018-10-04 08:55:05', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"text-6\",\n                \"search-3\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-04 08:55:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8fa78e3c-b735-4cea-b37d-a86e8824c102', '', '', '2018-10-04 10:55:05', '2018-10-04 08:55:05', '', 0, 'http://localhost/wordpress/2018/10/04/8fa78e3c-b735-4cea-b37d-a86e8824c102/', 0, 'customize_changeset', '', 0),
(125, 1, '2018-10-04 11:29:43', '2018-10-04 09:29:43', '<img class=\"alignnone  wp-image-127\" src=\"http://localhost/wordpress/wp-content/uploads/2018/10/33364314-300x127.jpg\" alt=\"\" width=\"561\" height=\"271\" />', 'dfgdfg', '', 'publish', 'closed', 'closed', '', 'dfgdfg', '', '', '2018-10-04 11:33:20', '2018-10-04 09:33:20', '', 0, 'http://localhost/wordpress/?post_type=slick_slider&#038;p=125', 0, 'slick_slider', '', 0),
(126, 1, '2018-10-04 11:32:18', '2018-10-04 09:32:18', '&nbsp;\r\n\r\n[slick-slider]\r\n\r\nBienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-10-04 11:32:18', '2018-10-04 09:32:18', '', 104, 'http://localhost/wordpress/2018/10/04/104-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-10-04 11:33:07', '2018-10-04 09:33:07', '', '33364314', '', 'inherit', 'open', 'closed', '', '33364314', '', '', '2018-10-04 11:33:07', '2018-10-04 09:33:07', '', 125, 'http://localhost/wordpress/wp-content/uploads/2018/10/33364314.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-10-04 11:33:56', '2018-10-04 09:33:56', '<img class=\"alignnone size-medium wp-image-103\" src=\"http://localhost/wordpress/wp-content/uploads/2018/09/coffee-9-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" />', 'dfdfdfdf', '', 'publish', 'closed', 'closed', '', 'dfdfdfdf', '', '', '2018-10-04 11:33:56', '2018-10-04 09:33:56', '', 0, 'http://localhost/wordpress/?post_type=slick_slider&#038;p=128', 0, 'slick_slider', '', 0),
(129, 1, '2018-10-04 11:34:22', '2018-10-04 09:34:22', 'jhkvkvjk legende', 'slide 1', '', 'publish', 'closed', 'closed', '', 'slide-1', '', '', '2018-10-04 11:58:58', '2018-10-04 09:58:58', '', 0, 'http://localhost/wordpress/?post_type=slick_slider&#038;p=129', 0, 'slick_slider', '', 0),
(130, 1, '2018-10-04 11:54:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-04 11:54:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=slick_slider&p=130', 0, 'slick_slider', '', 0),
(131, 1, '2018-10-04 13:33:18', '2018-10-04 11:33:18', '&nbsp;\r\n\r\n[Rich_Web_Slider id=\"1\"]\r\n\r\nBienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-10-04 13:33:18', '2018-10-04 11:33:18', '', 104, 'http://localhost/wordpress/2018/10/04/104-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-10-04 13:40:05', '2018-10-04 11:40:05', '&nbsp;\r\n\r\nBienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-10-04 13:40:05', '2018-10-04 11:40:05', '', 104, 'http://localhost/wordpress/2018/10/04/104-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-10-05 11:00:58', '2018-10-05 09:00:58', 'Texte', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-10-05 11:01:48', '2018-10-05 09:01:48', '', 0, 'http://localhost/wordpress/?post_type=np_images&#038;p=133', 0, 'np_images', '', 0),
(134, 1, '2018-10-05 11:13:01', '2018-10-05 09:13:01', 'Texte2', 'Test2', '', 'publish', 'closed', 'closed', '', 'test2', '', '', '2018-10-05 11:14:30', '2018-10-05 09:14:30', '', 0, 'http://localhost/wordpress/?post_type=np_images&#038;p=134', 0, 'np_images', '', 0),
(135, 1, '2018-10-05 11:28:13', '2018-10-05 09:28:13', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-10-05 15:10:40', '2018-10-05 13:10:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&#038;p=135', 0, 'ml-slider', '', 0),
(136, 1, '2018-10-05 11:28:36', '2018-10-05 09:28:36', '', 'Slider 135 - image', 'Paris 9 Aménagement 200 m', 'publish', 'closed', 'closed', '', 'slider-135-image', '', '', '2018-10-05 15:10:40', '2018-10-05 13:10:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=136', 0, 'ml-slide', '', 0),
(137, 1, '2018-10-05 11:29:16', '2018-10-05 09:29:16', '', 'Slider 135 - image', 'Paris 9 Aménagement 200 m', 'trash', 'closed', 'closed', '', 'slider-135-image-2__trashed', '', '', '2018-10-05 15:10:40', '2018-10-05 13:10:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=137', 1, 'ml-slide', '', 0),
(138, 1, '2018-10-05 11:29:29', '2018-10-05 09:29:29', '', 'Slider 135 - image', 'Paris 9 Aménagement 200 m', 'publish', 'closed', 'closed', '', 'slider-135-image-3', '', '', '2018-10-05 15:10:40', '2018-10-05 13:10:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=138', 2, 'ml-slide', '', 0),
(139, 1, '2018-10-05 14:57:19', '2018-10-05 12:57:19', '', 'photo_diapo', '', 'inherit', 'open', 'closed', '', 'photo_diapo', '', '', '2018-10-05 14:57:19', '2018-10-05 12:57:19', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/10/photo_diapo.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2018-10-05 14:59:27', '2018-10-05 12:59:27', '', 'photo_diapo3', '', 'inherit', 'open', 'closed', '', 'photo_diapo3', '', '', '2018-10-05 14:59:27', '2018-10-05 12:59:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/10/photo_diapo3.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-10-05 15:09:50', '2018-10-05 13:09:50', '', 'photo_diapo2', '', 'inherit', 'open', 'closed', '', 'photo_diapo2-2', '', '', '2018-10-05 15:09:50', '2018-10-05 13:09:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/10/photo_diapo2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2018-10-05 15:10:30', '2018-10-05 13:10:30', '', 'Slider 135 - image', 'Paris 9 Aménagement 200 m', 'publish', 'closed', 'closed', '', 'slider-135-image-2', '', '', '2018-10-05 15:10:40', '2018-10-05 13:10:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=143', 3, 'ml-slide', '', 0),
(144, 1, '2018-10-05 15:45:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-05 15:45:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=144', 1, 'nav_menu_item', '', 0),
(146, 1, '2018-10-05 16:09:16', '2018-10-05 14:09:16', '', 'Les projets', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-10-05 16:09:16', '2018-10-05 14:09:16', '', 107, 'http://localhost/wordpress/2018/10/05/107-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-10-05 16:09:29', '2018-10-05 14:09:29', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'L\'agence', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-05 16:09:29', '2018-10-05 14:09:29', '', 2, 'http://localhost/wordpress/2018/10/05/2-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-10-05 16:09:37', '2018-10-05 14:09:37', '', 'L\'agence', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-05 16:09:37', '2018-10-05 14:09:37', '', 2, 'http://localhost/wordpress/2018/10/05/2-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-10-05 16:10:13', '2018-10-05 14:10:13', '<h2>Qui sommes-nous ?</h2>\r\nL’adresse de notre site Web est : http://localhost/wordpress.\r\n<h2>Utilisation des données personnelles collectées</h2>\r\n<h3>Commentaires</h3>\r\nQuand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.\r\n\r\nUne chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.\r\n<h3>Médias</h3>\r\nSi vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.\r\n<h3>Formulaires de contact</h3>\r\n<h3>Cookies</h3>\r\nSi vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.\r\n\r\nSi vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.\r\n\r\nLorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.\r\n\r\nEn modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.\r\n<h3>Contenu embarqué depuis d’autres sites</h3>\r\nLes articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.\r\n\r\nCes sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.\r\n<h3>Statistiques et mesures d’audience</h3>\r\n<h2>Utilisation et transmission de vos données personnelles</h2>\r\n<h2>Durées de stockage de vos données</h2>\r\nSi vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.\r\n\r\nPour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.\r\n<h2>Les droits que vous avez sur vos données</h2>\r\nSi vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.\r\n<h2>Transmission de vos données personnelles</h2>\r\nLes commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.\r\n<h2>Informations de contact</h2>\r\n<h2>Informations supplémentaires</h2>\r\n<h3>Comment nous protégeons vos données</h3>\r\n<h3>Procédures mises en œuvre en cas de fuite de données</h3>\r\n<h3>Les services tiers qui nous transmettent des données</h3>\r\n<h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3>\r\n<h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-05 16:10:13', '2018-10-05 14:10:13', '', 3, 'http://localhost/wordpress/2018/10/05/3-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-10-05 16:11:27', '2018-10-05 14:11:27', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2018-10-05 16:11:45', '2018-10-05 14:11:45', '', 0, 'http://localhost/wordpress/?p=150', 1, 'nav_menu_item', '', 0),
(151, 1, '2018-10-05 16:11:27', '2018-10-05 14:11:27', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2018-10-05 16:11:45', '2018-10-05 14:11:45', '', 0, 'http://localhost/wordpress/?p=151', 3, 'nav_menu_item', '', 0),
(152, 1, '2018-10-05 16:11:27', '2018-10-05 14:11:27', '', 'L\'agence', '', 'publish', 'closed', 'closed', '', 'lagence', '', '', '2018-10-05 16:11:45', '2018-10-05 14:11:45', '', 0, 'http://localhost/wordpress/?p=152', 2, 'nav_menu_item', '', 0),
(153, 1, '2018-10-05 16:16:22', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-05 16:16:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=153', 0, 'post', '', 0),
(154, 1, '2018-10-05 16:18:33', '2018-10-05 14:18:33', '{\n    \"fazenda::nav_menu_locations[primary]\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:16:59\"\n    },\n    \"fazenda::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:16:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2dc59c38-c4f2-467f-bf90-c470b92ca513', '', '', '2018-10-05 16:18:33', '2018-10-05 14:18:33', '', 0, 'http://localhost/wordpress/?p=154', 0, 'customize_changeset', '', 0),
(155, 1, '2018-10-05 16:18:46', '2018-10-05 14:18:46', '{\n    \"fazenda::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:18:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48705a2e-a333-4e9d-9694-6a021db44a4c', '', '', '2018-10-05 16:18:46', '2018-10-05 14:18:46', '', 0, 'http://localhost/wordpress/2018/10/05/48705a2e-a333-4e9d-9694-6a021db44a4c/', 0, 'customize_changeset', '', 0),
(156, 1, '2018-10-05 16:18:54', '2018-10-05 14:18:54', '{\n    \"fazenda::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:18:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e7092fe-79c5-49e9-b776-8cc71b3b2b80', '', '', '2018-10-05 16:18:54', '2018-10-05 14:18:54', '', 0, 'http://localhost/wordpress/2018/10/05/1e7092fe-79c5-49e9-b776-8cc71b3b2b80/', 0, 'customize_changeset', '', 0),
(157, 1, '2018-10-05 16:20:15', '2018-10-05 14:20:15', '{\n    \"fazenda::nav_menu_locations[primary]\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:20:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ba0e7e01-020b-41b1-8c90-3f9ebd7eaa73', '', '', '2018-10-05 16:20:15', '2018-10-05 14:20:15', '', 0, 'http://localhost/wordpress/2018/10/05/ba0e7e01-020b-41b1-8c90-3f9ebd7eaa73/', 0, 'customize_changeset', '', 0),
(158, 1, '2018-10-05 16:20:19', '2018-10-05 14:20:19', '{\n    \"fazenda::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:20:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a030256-8336-4c1f-8921-0488598a6e30', '', '', '2018-10-05 16:20:19', '2018-10-05 14:20:19', '', 0, 'http://localhost/wordpress/2018/10/05/0a030256-8336-4c1f-8921-0488598a6e30/', 0, 'customize_changeset', '', 0),
(159, 1, '2018-10-05 16:20:23', '2018-10-05 14:20:23', '{\n    \"fazenda::nav_menu_locations[primary]\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 14:20:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ae9afe88-b2c9-4818-86ff-bedb02b0fed8', '', '', '2018-10-05 16:20:23', '2018-10-05 14:20:23', '', 0, 'http://localhost/wordpress/2018/10/05/ae9afe88-b2c9-4818-86ff-bedb02b0fed8/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_photo_slider_instal`
--

CREATE TABLE `wp_rich_web_photo_slider_instal` (
  `id` int(10) UNSIGNED NOT NULL,
  `SL_Img_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_NewTab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_photo_slider_instal`
--

INSERT INTO `wp_rich_web_photo_slider_instal` (`id`, `SL_Img_Title`, `Sl_Img_Description`, `Sl_Img_Url`, `Sl_Link_Url`, `Sl_Link_NewTab`, `Sl_Number`) VALUES
(17, 'slide1', '&lt;p&gt;trst desc&lt;/p&gt;', 'http://localhost/wordpress/wp-content/uploads/2018/10/33364314-300x127.jpg', '', 'undefined', 1),
(18, 'slider2', '&lt;p&gt;slider2 desc&lt;/p&gt;', 'http://localhost/wordpress/wp-content/uploads/2018/09/coffee-9-300x180.jpg', '', '', 1),
(19, 'slider3', '&lt;p&gt;slider2&lt;/p&gt;', 'http://localhost/wordpress/wp-content/uploads/2018/09/espresso-9-300x180.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_photo_slider_manager`
--

CREATE TABLE `wp_rich_web_photo_slider_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_IMGS_Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_photo_slider_manager`
--

INSERT INTO `wp_rich_web_photo_slider_manager` (`id`, `Slider_Title`, `Slider_Type`, `Slider_IMGS_Quantity`) VALUES
(1, 'slider3', 'Slider Navigation 1', 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect1`
--

CREATE TABLE `wp_rich_web_slider_effect1` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlSS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_PoH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TUp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHEff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBoxW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArPFT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect1`
--

INSERT INTO `wp_rich_web_slider_effect1` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_web_Sl1_SlS`, `rich_web_Sl1_SlSS`, `rich_web_Sl1_PoH`, `rich_web_Sl1_W`, `rich_web_Sl1_H`, `rich_web_Sl1_BoxS`, `rich_web_Sl1_BoxSC`, `rich_web_Sl1_IBW`, `rich_web_Sl1_IBS`, `rich_web_Sl1_IBC`, `rich_web_Sl1_IBR`, `rich_web_Sl1_TBgC`, `rich_web_Sl1_TC`, `rich_web_Sl1_TTA`, `rich_web_Sl1_TFS`, `rich_web_Sl1_TFF`, `rich_web_Sl1_TUp`, `rich_web_Sl1_ArBgC`, `rich_web_Sl1_ArOp`, `rich_web_Sl1_ArType`, `rich_web_Sl1_ArHBgC`, `rich_web_Sl1_ArHOp`, `rich_web_Sl1_ArHEff`, `rich_web_Sl1_ArBoxW`, `rich_web_Sl1_NavW`, `rich_web_Sl1_NavH`, `rich_web_Sl1_NavPB`, `rich_web_Sl1_NavBW`, `rich_web_Sl1_NavBS`, `rich_web_Sl1_NavBC`, `rich_web_Sl1_NavBR`, `rich_web_Sl1_NavCC`, `rich_web_Sl1_NavHC`, `rich_web_Sl1_ArPFT`, `rich_web_Sl1_NavPos`) VALUES
(1, '1', 'Slider Navigation 1', 'Slider Navigation', 'true', '3', 'true', '750', '400', 'true', '#0084aa', '10', 'solid', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', '#1e73be', '82', '1', '#1e73be', '80', 'slide out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#ffffff', '35', 'bottom'),
(2, '2', 'Slider Navigation 2', 'Slider Navigation', 'true', '3', 'true', '380', '450', 'true', '#0084aa', '0', 'none', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', 'rgba(30,115,190,0.6)', '100', '2', '#1e73be', '100', 'flip out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#1967aa', '40', 'bottom');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect1_loader`
--

CREATE TABLE `wp_rich_web_slider_effect1_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect1_loader`
--

INSERT INTO `wp_rich_web_slider_effect1_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_NSL_L_Show`, `Rich_Web_NSL_LT_Show`, `Rich_Web_NSL_LT`, `Rich_Web_NSL_L_BgC`, `Rich_Web_NSL_L_T`, `Rich_Web_NSL_LT_T`, `Rich_Web_NSL_LT_FS`, `Rich_Web_NSL_LT_FF`, `Rich_Web_NSL_LT_C`, `Rich_Web_NSL_L_T1_C`, `Rich_Web_NSL_L_T2_C`, `Rich_Web_NSL_L_T3_C`, `Rich_Web_NSL_LT_T2_BC`, `Rich_Web_NSL_L_C`, `Rich_Web_NSL_LT_T2_AnC`, `Rich_Web_NSL_LT_T3_BgC`, `Rich_Web_NSL_L_S`, `Rich_Web_NSL_Loading_Show`) VALUES
(1, '1', 'true', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 4', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'small', 'true'),
(2, '2', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0066bf', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect2`
--

CREATE TABLE `wp_rich_web_slider_effect2` (
  `id` int(10) UNSIGNED NOT NULL,
  `richideo_EN_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_BIB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_P` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_SD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_Op` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_ArrShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect2`
--

INSERT INTO `wp_rich_web_slider_effect2` (`id`, `richideo_EN_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_CS_BIB`, `rich_CS_P`, `rich_CS_Loop`, `rich_CS_SD`, `rich_CS_AT`, `rich_CS_Cont_BgC`, `rich_CS_Cont_BSC`, `rich_CS_Cont_W`, `rich_CS_Cont_H`, `rich_CS_Cont_Op`, `rich_CS_Cont_BW`, `rich_CS_Cont_BS`, `rich_CS_Cont_BC`, `rich_CS_Cont_BR`, `rich_CS_Video_TShow`, `rich_CS_Video_TC`, `rich_CS_Video_TSC`, `rich_CS_Video_TFS`, `rich_CS_Video_TFF`, `rich_CS_Video_TTA`, `rich_CS_Video_DShow`, `rich_CS_Video_DC`, `rich_CS_Video_DSC`, `rich_CS_Video_DFS`, `rich_CS_Video_DFF`, `rich_CS_Video_DTA`, `rich_CS_Video_Show`, `rich_CS_Video_W`, `rich_CS_Video_H`, `rich_CS_LFS`, `rich_CS_LFF`, `rich_CS_LC`, `rich_CS_LT`, `rich_CS_LBgC`, `rich_CS_LBC`, `rich_CS_LBR`, `rich_CS_LPos`, `rich_CS_LHBgC`, `rich_CS_LHC`, `rich_CS_Video_ArrShow`, `rich_CS_AFS`, `rich_CS_AC`, `rich_CS_Icon`, `rich_CS_Link_BW`, `rich_CS_Link_BS`) VALUES
(1, '3', 'Content Slider', 'Content Slider', 'true', 'true', 'true', '10', 'bounceUp', '#0084aa', '#0084aa', '650', '400', '50', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '', '', '', '', '', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007da0', '#ffffff', '0', 'left', '#0084aa', '#000000', 'true', '30', '#ffffff', '3', '1', 'solid'),
(2, '4', 'Content-Slider', 'Content Slider', 'true', 'true', 'true', '20', 'bounce3', '#0084aa', '#0084aa', '800', '400', '100', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '', '', '', '', '', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007893', '#ffffff', '10', 'left', '#3190aa', '#ffffff', 'true', '30', '#ffffff', '3', '1', 'solid');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect2_loader`
--

CREATE TABLE `wp_rich_web_slider_effect2_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect2_loader`
--

INSERT INTO `wp_rich_web_slider_effect2_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ContSl_L_Show`, `Rich_Web_ContSl_LT_Show`, `Rich_Web_ContSl_LT`, `Rich_Web_ContSl_L_BgC`, `Rich_Web_ContSl_L_T`, `Rich_Web_ContSl_LT_T`, `Rich_Web_ContSl_LT_FS`, `Rich_Web_ContSl_LT_FF`, `Rich_Web_ContSl_LT_C`, `Rich_Web_ContSl_L_T1_C`, `Rich_Web_ContSl_L_T2_C`, `Rich_Web_ContSl_L_T3_C`, `Rich_Web_ContSl_LT_T2_BC`, `Rich_Web_ContSl_L_C`, `Rich_Web_ContSl_LT_T2_AnC`, `Rich_Web_ContSl_LT_T3_BgC`, `Rich_Web_ContSl_L_S`, `Rich_Web_ContSl_Loading_Show`) VALUES
(1, '3', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#000000', '#357ebf', '#0066bf', '#145b91', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '4', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#000000', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect3`
--

CREATE TABLE `wp_rich_web_slider_effect3` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_animation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow_Speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Anim_Dur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Ic_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_PPL_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Randomize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Box_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Shadow_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Hover_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect3`
--

INSERT INTO `wp_rich_web_slider_effect3` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_fsl_animation`, `rich_fsl_SShow`, `rich_fsl_SShow_Speed`, `rich_fsl_Anim_Dur`, `rich_fsl_Ic_Show`, `rich_fsl_PPL_Show`, `rich_fsl_Randomize`, `rich_fsl_Loop`, `rich_fsl_Width`, `rich_fsl_Height`, `rich_fsl_Border_Width`, `rich_fsl_Border_Style`, `rich_fsl_Border_Color`, `rich_fsl_Box_Shadow`, `rich_fsl_Shadow_Color`, `rich_fsl_Desc_Show`, `rich_fsl_Desc_Size`, `rich_fsl_Desc_Color`, `rich_fsl_Desc_Font_Family`, `rich_fsl_Desc_Text_Align`, `rich_fsl_Desc_Bg_Color`, `rich_fsl_Desc_Transparency`, `rich_fsl_Title_Font_Size`, `rich_fsl_Title_Color`, `rich_fsl_Title_Text_Shadow`, `rich_fsl_Title_Font_Family`, `rich_fsl_Title_Text_Align`, `rich_fsl_Link_Text`, `rich_fsl_Link_Border_Width`, `rich_fsl_Link_Border_Style`, `rich_fsl_Link_Border_Color`, `rich_fsl_Link_Font_Size`, `rich_fsl_Link_Color`, `rich_fsl_Link_Font_Family`, `rich_fsl_Link_Bg_Color`, `rich_fsl_Link_Transparency`, `rich_fsl_Link_Hover_Border_Color`, `rich_fsl_Link_Hover_Bg_Color`, `rich_fsl_Link_Hover_Color`, `rich_fsl_Link_Hover_Transparency`, `rich_fsl_Icon_Size`, `rich_fsl_Icon_Type`, `rich_fsl_Hover_Icon_Type`) VALUES
(1, '5', 'Fashion Slider 1', 'Fashion Slider', 'fade', '1', '3', '3', '1', 'false', 'false', '1', '750', '390', '0', 'solid', '#ffffff', '35', '#606060', 'on', '', '', '', '', 'rgba(0,132,170,0.75)', '', '18', '#ffffff', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12'),
(2, '6', 'Fashion Slider 2', 'Fashion Slider', 'fade', '1', '3', '3', '1', 'false', 'false', '1', '600', '300', '4', 'solid', '#ffffff', '30', '#0084aa', 'on', '', '', '', '', 'rgba(255,255,255,0.65)', '', '18', '#0084aa', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect3_loader`
--

CREATE TABLE `wp_rich_web_slider_effect3_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect3_loader`
--

INSERT INTO `wp_rich_web_slider_effect3_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FSl_L_Show`, `Rich_Web_FSl_LT_Show`, `Rich_Web_FSl_LT`, `Rich_Web_FSl_L_BgC`, `Rich_Web_FSl_L_T`, `Rich_Web_FSl_LT_T`, `Rich_Web_FSl_LT_FS`, `Rich_Web_FSl_LT_FF`, `Rich_Web_FSl_LT_C`, `Rich_Web_FSl_L_T1_C`, `Rich_Web_FSl_L_T2_C`, `Rich_Web_FSl_L_T3_C`, `Rich_Web_FSl_LT_T2_BC`, `Rich_Web_FSl_L_C`, `Rich_Web_FSl_LT_T2_AnC`, `Rich_Web_FSl_LT_T3_BgC`, `Rich_Web_FSl_L_S`, `Rich_Web_FSl_Loading_Show`) VALUES
(1, '5', 'false', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 1', '18', 'Vijaya', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'large', 'true'),
(2, '6', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Aldhabi', '#000000', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect4`
--

CREATE TABLE `wp_rich_web_slider_effect4` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDABgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDAPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect4`
--

INSERT INTO `wp_rich_web_slider_effect4` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_CT_W`, `Rich_Web_Sl_CT_H`, `Rich_Web_Sl_CT_BW`, `Rich_Web_Sl_CT_BS`, `Rich_Web_Sl_CT_BC`, `Rich_Web_Sl_CT_BxSShow`, `Rich_Web_Sl_CT_BxSType`, `Rich_Web_Sl_CT_BxS`, `Rich_Web_Sl_CT_BxC`, `Rich_Web_Sl_CT_TDABgC`, `Rich_Web_Sl_CT_TDAPos`, `Rich_Web_Sl_CT_LBgC`, `Rich_Web_Sl_CT_TFS`, `Rich_Web_Sl_CT_TFF`, `Rich_Web_Sl_CT_TCC`, `Rich_Web_Sl_CT_TC`, `Rich_Web_Sl_CT_ArBgC`, `Rich_Web_Sl_CT_ArBR`, `Rich_Web_Sl_CT_ArType`, `Rich_Web_Sl_CT_ArHBC`, `Rich_Web_Sl_CT_ArHBR`, `Rich_Web_Sl_CT_ArText`, `Rich_Web_Sl_CT_ArLeft`, `Rich_Web_Sl_CT_ArRight`, `Rich_Web_Sl_CT_ArTextC`, `Rich_Web_Sl_CT_ArTextFS`, `Rich_Web_Sl_CT_ArTextFF`) VALUES
(1, '7', 'Circle Thumbnails', 'Circle Thumbnails', '750', '410', '7', 'solid', '#ffffff', 'true', 'true', '8', '#009491', '#009491', 'bottom', '#009491', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', '#ffffff', '20', 'Vijaya'),
(2, '8', 'Circle Thumbnails 2', 'Circle Thumbnails', '650', '370', '7', 'solid', '#ffffff', 'true', 'false', '20', '#009491', 'rgba(0,148,145,0.6)', 'top', 'rgba(0,148,145,0.6)', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', 'rgba(255,255,255,0.6)', '20', 'Vijaya');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect4_loader`
--

CREATE TABLE `wp_rich_web_slider_effect4_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect4_loader`
--

INSERT INTO `wp_rich_web_slider_effect4_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CircleSl_L_Show`, `Rich_Web_CircleSl_LT_Show`, `Rich_Web_CircleSl_LT`, `Rich_Web_CircleSl_L_BgC`, `Rich_Web_CircleSl_L_T`, `Rich_Web_CircleSl_LT_T`, `Rich_Web_CircleSl_LT_FS`, `Rich_Web_CircleSl_LT_FF`, `Rich_Web_CircleSl_LT_C`, `Rich_Web_CircleSl_L_T1_C`, `Rich_Web_CircleSl_L_T2_C`, `Rich_Web_CircleSl_L_T3_C`, `Rich_Web_CircleSl_LT_T2_BC`, `Rich_Web_CircleSl_L_C`, `Rich_Web_CircleSl_LT_T2_AnC`, `Rich_Web_CircleSl_LT_T3_BgC`, `Rich_Web_CircleSl_L_S`, `Rich_Web_CircleSl_Loading_Show`) VALUES
(1, '7', 'false', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 3', '15', 'Abadi MT Condensed Light', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#009491', 'middle', 'true'),
(2, '8', 'true', 'false', 'Loading', '#ffffff', 'Type 4', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#009491', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect5`
--

CREATE TABLE `wp_rich_web_slider_effect5` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) NOT NULL,
  `rich_web_slider_name` varchar(255) NOT NULL,
  `rich_web_slider_type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IH` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_OC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Next` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Prev` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect5`
--

INSERT INTO `wp_rich_web_slider_effect5` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_SC_BW`, `Rich_Web_Sl_SC_BS`, `Rich_Web_Sl_SC_BC`, `Rich_Web_Sl_SC_BoxShShow`, `Rich_Web_Sl_SC_BoxShType`, `Rich_Web_Sl_SC_BoxSh`, `Rich_Web_Sl_SC_BoxShC`, `Rich_Web_Sl_SC_IW`, `Rich_Web_Sl_SC_IH`, `Rich_Web_Sl_SC_IBW`, `Rich_Web_Sl_SC_IBS`, `Rich_Web_Sl_SC_IBC`, `Rich_Web_Sl_SC_IBR`, `Rich_Web_Sl_SC_ICBW`, `Rich_Web_Sl_SC_ICBS`, `Rich_Web_Sl_SC_ICBC`, `Rich_Web_Sl_SC_TBgC`, `Rich_Web_Sl_SC_TC`, `Rich_Web_Sl_SC_TFS`, `Rich_Web_Sl_SC_TFF`, `Rich_Web_Sl_SC_THBgC`, `Rich_Web_Sl_SC_THC`, `Rich_Web_Sl_SC_Pop_OC`, `Rich_Web_Sl_SC_Pop_BW`, `Rich_Web_Sl_SC_Pop_BC`, `Rich_Web_Sl_SC_Pop_BoxShShow`, `Rich_Web_Sl_SC_Pop_BoxShType`, `Rich_Web_Sl_SC_Pop_BoxSh`, `Rich_Web_Sl_SC_Pop_BoxShC`, `Rich_Web_Sl_SC_L_BgC`, `Rich_Web_Sl_SC_L_C`, `Rich_Web_Sl_SC_L_FS`, `Rich_Web_Sl_SC_L_BW`, `Rich_Web_Sl_SC_L_BS`, `Rich_Web_Sl_SC_L_BC`, `Rich_Web_Sl_SC_L_BR`, `Rich_Web_Sl_SC_L_HBgC`, `Rich_Web_Sl_SC_L_HC`, `Rich_Web_Sl_SC_L_Type`, `Rich_Web_Sl_SC_L_Text`, `Rich_Web_Sl_SC_L_IType`, `Rich_Web_Sl_SC_L_FF`, `Rich_Web_Sl_SC_PI_BgC`, `Rich_Web_Sl_SC_PI_C`, `Rich_Web_Sl_SC_PI_FS`, `Rich_Web_Sl_SC_PI_BW`, `Rich_Web_Sl_SC_PI_BS`, `Rich_Web_Sl_SC_PI_BC`, `Rich_Web_Sl_SC_PI_BR`, `Rich_Web_Sl_SC_PI_HBgC`, `Rich_Web_Sl_SC_PI_HC`, `Rich_Web_Sl_SC_PI_Type`, `Rich_Web_Sl_SC_PI_Text`, `Rich_Web_Sl_SC_PI_IType`, `Rich_Web_Sl_SC_PI_FF`, `Rich_Web_Sl_SC_Arr_BgC`, `Rich_Web_Sl_SC_Arr_C`, `Rich_Web_Sl_SC_Arr_FS`, `Rich_Web_Sl_SC_Arr_BW`, `Rich_Web_Sl_SC_Arr_BS`, `Rich_Web_Sl_SC_Arr_BC`, `Rich_Web_Sl_SC_Arr_BR`, `Rich_Web_Sl_SC_Arr_HBgC`, `Rich_Web_Sl_SC_Arr_HC`, `Rich_Web_Sl_SC_Arr_Type`, `Rich_Web_Sl_SC_Arr_FF`, `Rich_Web_Sl_SC_Arr_IType`, `Rich_Web_Sl_SC_Arr_Next`, `Rich_Web_Sl_SC_Arr_Prev`, `Rich_Web_Sl_SC_PCI_FS`, `Rich_Web_Sl_SC_PCI_C`, `Rich_Web_Sl_SC_PCI_Type`) VALUES
(1, '9', 'Slider Carousel 1', 'Slider Carousel', '2', 'solid', '#ffffff', 'true', 'true', '15', '#0084aa', '270', '150', '4', 'solid', '#ffffff', '0', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.85)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.7)', '#0084aa', '18', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.7)', '#ffffff', 'text', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.7)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.7)', '#0084aa', 'text', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.6)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.6)', '#ffffff', 'icon', 'Gabriola', 'angle', 'Next', 'Prev', '35', '#0084aa', 'home'),
(2, '10', 'Slider Carousel 2', 'Slider Carousel', '5', 'solid', '#ffffff', 'true', 'false', '25', '#0084aa', '270', '150', '5', 'solid', '#ffffff', '15', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.75)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.5)', '#0084aa', '16', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.5)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.5)', '#0084aa', 'icon', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.5)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'Gabriola', 'angle-double', 'Next', 'Prev', '35', '#0084aa', 'times');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect5_loader`
--

CREATE TABLE `wp_rich_web_slider_effect5_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_HT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_H_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect5_loader`
--

INSERT INTO `wp_rich_web_slider_effect5_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CarSl_L_Show`, `Rich_Web_CarSl_LT_Show`, `Rich_Web_CarSl_LT`, `Rich_Web_CarSl_L_BgC`, `Rich_Web_CarSl_L_T`, `Rich_Web_CarSl_LT_T`, `Rich_Web_CarSl_LT_FS`, `Rich_Web_CarSl_LT_FF`, `Rich_Web_CarSl_LT_C`, `Rich_Web_CarSl_L_T1_C`, `Rich_Web_CarSl_L_T2_C`, `Rich_Web_CarSl_L_T3_C`, `Rich_Web_CarSl_LT_T2_BC`, `Rich_Web_CarSl_L_C`, `Rich_Web_CarSl_LT_T2_AnC`, `Rich_Web_CarSl_LT_T3_BgC`, `Rich_Web_CarSl_HT`, `Rich_Web_CarSl_H_OvC`, `Rich_Web_CarSl_L_S`, `Rich_Web_CarSl_Loading_Show`) VALUES
(1, '9', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 4', '18', 'Aharoni', '#1e73be', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true'),
(2, '10', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 3', '17', 'Aharoni', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect6`
--

CREATE TABLE `wp_rich_web_slider_effect6` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_TS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SVis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SLoop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SSc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SlPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_ShNavBut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect6`
--

INSERT INTO `wp_rich_web_slider_effect6` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_FS_BgC`, `Rich_Web_Sl_FS_AP`, `Rich_Web_Sl_FS_TS`, `Rich_Web_Sl_FS_PT`, `Rich_Web_Sl_FS_SS`, `Rich_Web_Sl_FS_SVis`, `Rich_Web_Sl_FS_CS`, `Rich_Web_Sl_FS_SLoop`, `Rich_Web_Sl_FS_SSc`, `Rich_Web_Sl_FS_SlPos`, `Rich_Web_Sl_FS_ShNavBut`, `Rich_Web_Sl_FS_I_W`, `Rich_Web_Sl_FS_I_H`, `Rich_Web_Sl_FS_I_BW`, `Rich_Web_Sl_FS_I_BS`, `Rich_Web_Sl_FS_I_BC`, `Rich_Web_Sl_FS_I_BR`, `Rich_Web_Sl_FS_I_BoxShShow`, `Rich_Web_Sl_FS_I_BoxShType`, `Rich_Web_Sl_FS_I_BoxSh`, `Rich_Web_Sl_FS_I_BoxShC`, `Rich_Web_Sl_FS_T_C`, `Rich_Web_Sl_FS_T_FF`, `Rich_Web_Sl_FS_Nav_Show`, `Rich_Web_Sl_FS_Nav_W`, `Rich_Web_Sl_FS_Nav_H`, `Rich_Web_Sl_FS_Nav_BW`, `Rich_Web_Sl_FS_Nav_BS`, `Rich_Web_Sl_FS_Nav_BC`, `Rich_Web_Sl_FS_Nav_BR`, `Rich_Web_Sl_FS_Nav_PB`, `Rich_Web_Sl_FS_Nav_CC`, `Rich_Web_Sl_FS_Nav_HC`, `Rich_Web_Sl_FS_Nav_C`, `Rich_Web_Sl_FS_Arr_Show`, `Rich_Web_Sl_FS_Arr_Type`, `Rich_Web_Sl_FS_Arr_S`, `Rich_Web_Sl_FS_Arr_C`) VALUES
(1, '11', 'Flexible Slider 1', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '134', 'true', 'false', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(2, '12', 'Flexible Slider 2', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '0', 'true', 'true', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect6_loader`
--

CREATE TABLE `wp_rich_web_slider_effect6_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect6_loader`
--

INSERT INTO `wp_rich_web_slider_effect6_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FlexibleSl_L_Show`, `Rich_Web_FlexibleSl_LT_Show`, `Rich_Web_FlexibleSl_LT`, `Rich_Web_FlexibleSl_L_BgC`, `Rich_Web_FlexibleSl_L_T`, `Rich_Web_FlexibleSl_LT_T`, `Rich_Web_FlexibleSl_LT_FS`, `Rich_Web_FlexibleSl_LT_FF`, `Rich_Web_FlexibleSl_LT_C`, `Rich_Web_FlexibleSl_L_T1_C`, `Rich_Web_FlexibleSl_L_T2_C`, `Rich_Web_FlexibleSl_L_T3_C`, `Rich_Web_FlexibleSl_LT_T2_BC`, `Rich_Web_FlexibleSl_L_C`, `Rich_Web_FlexibleSl_LT_T2_AnC`, `Rich_Web_FlexibleSl_LT_T3_BgC`, `Rich_Web_FlexibleSl_L_S`, `Rich_Web_FlexibleSl_Loading_Show`) VALUES
(1, '11', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd8282', '#c9c9c9', '#000000', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '12', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect7`
--

CREATE TABLE `wp_rich_web_slider_effect7` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Tr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_RT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect7`
--

INSERT INTO `wp_rich_web_slider_effect7` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_DS_AP`, `Rich_Web_Sl_DS_PT`, `Rich_Web_Sl_DS_Tr`, `Rich_Web_Sl_DS_H`, `Rich_Web_Sl_DS_BW`, `Rich_Web_Sl_DS_BS`, `Rich_Web_Sl_DS_BC`, `Rich_Web_Sl_DS_TFS`, `Rich_Web_Sl_DS_TFF`, `Rich_Web_Sl_DS_TC`, `Rich_Web_Sl_DS_DFS`, `Rich_Web_Sl_DS_DFF`, `Rich_Web_Sl_DS_DC`, `Rich_Web_Sl_DS_LFS`, `Rich_Web_Sl_DS_LFF`, `Rich_Web_Sl_DS_LC`, `Rich_Web_Sl_DS_LBgC`, `Rich_Web_Sl_DS_LBW`, `Rich_Web_Sl_DS_LBS`, `Rich_Web_Sl_DS_LBC`, `Rich_Web_Sl_DS_LBR`, `Rich_Web_Sl_DS_LHC`, `Rich_Web_Sl_DS_LHBgC`, `Rich_Web_Sl_DS_LT`, `Rich_Web_Sl_DS_Arr_Show`, `Rich_Web_Sl_DS_Arr_LT`, `Rich_Web_Sl_DS_Arr_RT`, `Rich_Web_Sl_DS_Arr_C`, `Rich_Web_Sl_DS_Arr_BgC`, `Rich_Web_Sl_DS_Arr_BW`, `Rich_Web_Sl_DS_Arr_BS`, `Rich_Web_Sl_DS_Arr_BC`, `Rich_Web_Sl_DS_Arr_BR`, `Rich_Web_Sl_DS_Arr_HC`, `Rich_Web_Sl_DS_Arr_HBgC`, `Rich_Web_Sl_DS_Nav_W`, `Rich_Web_Sl_DS_Nav_H`, `Rich_Web_Sl_DS_Nav_PB`, `Rich_Web_Sl_DS_Nav_BW`, `Rich_Web_Sl_DS_Nav_BS`, `Rich_Web_Sl_DS_Nav_BC`, `Rich_Web_Sl_DS_Nav_BR`, `Rich_Web_Sl_DS_Nav_C`, `Rich_Web_Sl_DS_Nav_HC`, `Rich_Web_Sl_DS_Nav_CC`) VALUES
(1, '13', 'Dynamic Slider 1', 'Dynamic Slider', 'true', '5', 'true', '250', '4', 'solid', '#ffffff', '15', 'Aldhabi', '#ffffff', '', '', '', '16', 'Aldhabi', '#ffffff', '#dd3333', '0', 'dotted', '#4a1fc1', '0', '#dd3333', '#ffffff', 'View', 'true', 'Prev', 'Next', '#ffffff', '#0084aa', '0', 'solid', '#16a309', '46', '#ffffff', '#5598aa', '11', '12', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#dd3333', '#ffffff'),
(2, '14', 'Dynamic Slider 2', 'Dynamic Slider', 'true', '5', 'true', '400', '4', 'solid', '#ffffff', '18', 'Aldhabi', '#598fbf', '', '', '', '16', 'Aldhabi', '#ffffff', 'rgba(221,51,51,0)', '1', 'solid', '#ffffff', '0', '#0084aa', 'rgba(255,255,255,0)', 'View More', 'true', 'Prev', 'Next', '#0084aa', 'rgba(255,255,255,0.45)', '0', 'solid', '#000000', '46', '#0084aa', '#ffffff', '10', '10', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#ffffff', '#ffffff');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect7_loader`
--

CREATE TABLE `wp_rich_web_slider_effect7_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_ImgT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect7_loader`
--

INSERT INTO `wp_rich_web_slider_effect7_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_DynamicSl_L_Show`, `Rich_Web_DynamicSl_LT_Show`, `Rich_Web_DynamicSl_LT`, `Rich_Web_DynamicSl_L_BgC`, `Rich_Web_DynamicSl_L_T`, `Rich_Web_DynamicSl_LT_T`, `Rich_Web_DynamicSl_LT_FS`, `Rich_Web_DynamicSl_LT_FF`, `Rich_Web_DynamicSl_LT_C`, `Rich_Web_DynamicSl_L_T1_C`, `Rich_Web_DynamicSl_L_T2_C`, `Rich_Web_DynamicSl_L_T3_C`, `Rich_Web_DynamicSl_LT_T2_BC`, `Rich_Web_DynamicSl_L_C`, `Rich_Web_DynamicSl_LT_T2_AnC`, `Rich_Web_DynamicSl_LT_T3_BgC`, `Rich_Web_DynamicSl_ImgT`, `Rich_Web_DynamicSl_L_S`, `Rich_Web_DynamicSl_Loading_Show`) VALUES
(1, '13', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 2', '21', 'Gabriola', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#007596', '#0084aa', '#dd3333', 'Type 2', 'middle', 'true'),
(2, '14', 'true', 'true', 'LOADING', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#0084aa', '#dd3333', 'Type 1', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect8`
--

CREATE TABLE `wp_rich_web_slider_effect8` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_CBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_HBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_StC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_SpC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect8`
--

INSERT INTO `wp_rich_web_slider_effect8` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_TSL_W`, `Rich_Web_Sl_TSL_H`, `Rich_Web_Sl_TSL_BW`, `Rich_Web_Sl_TSL_BS`, `Rich_Web_Sl_TSL_BC`, `Rich_Web_Sl_TSL_BR`, `Rich_Web_Sl_TSL_BoxShShow`, `Rich_Web_Sl_TSL_BoxShType`, `Rich_Web_Sl_TSL_BoxSh`, `Rich_Web_Sl_TSL_BoxShC`, `Rich_Web_Sl_TSL_CM`, `Rich_Web_Sl_TSL_TA`, `Rich_Web_Sl_TSL_AP`, `Rich_Web_Sl_TSL_PH`, `Rich_Web_Sl_TSL_Loop`, `Rich_Web_Sl_TSL_PT`, `Rich_Web_Sl_TSL_CS`, `Rich_Web_Sl_TSL_Nav_Show`, `Rich_Web_Sl_TSL_Nav_W`, `Rich_Web_Sl_TSL_Nav_H`, `Rich_Web_Sl_TSL_Nav_PB`, `Rich_Web_Sl_TSL_Nav_BC`, `Rich_Web_Sl_TSL_Nav_BR`, `Rich_Web_Sl_TSL_Nav_CBC`, `Rich_Web_Sl_TSL_Nav_HBC`, `Rich_Web_Sl_TSL_Nav_Pos`, `Rich_Web_Sl_TSL_SS_Show`, `Rich_Web_Sl_TSL_SS_W`, `Rich_Web_Sl_TSL_SS_H`, `Rich_Web_Sl_TSL_SS_BC`, `Rich_Web_Sl_TSL_SS_BR`, `Rich_Web_Sl_TSL_SS_StC`, `Rich_Web_Sl_TSL_SS_SpC`, `Rich_Web_Sl_TSL_Arr_Show`, `Rich_Web_Sl_TSL_Arr_Type`, `Rich_Web_Sl_TSL_Arr_S`, `Rich_Web_Sl_TSL_Arr_C`, `Rich_Web_Sl_TSL_Pop_OvC`, `Rich_Web_Sl_TSL_Pop_BW`, `Rich_Web_Sl_TSL_Pop_BS`, `Rich_Web_Sl_TSL_Pop_BC`, `Rich_Web_Sl_TSL_Pop_BR`, `Rich_Web_Sl_TSL_Pop_BgC`, `Rich_Web_Sl_TSL_TFS`, `Rich_Web_Sl_TSL_TFF`, `Rich_Web_Sl_TSL_TC`, `Rich_Web_Sl_TSL_Pop_ArrType`, `Rich_Web_Sl_TSL_Pop_ArrS`, `Rich_Web_Sl_TSL_Pop_ArrC`, `Rich_Web_Sl_TSL_CIT`, `Rich_Web_Sl_TSL_CIS`, `Rich_Web_Sl_TSL_CIC`) VALUES
(1, '15', 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#598fbf', '0', 'true', 'false', '32', '#598fbf', 'vertical', 'true', 'true', 'true', 'true', '5', '500', 'true', '50', '50', '4', '#ffffff', '0', '#598fbf', '#598fbf', 'bottom', 'true', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86)'),
(2, '16', 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#ffffff', '0', 'true', 'true', '15', '#598fbf', 'fade', 'false', 'true', 'true', 'false', '5', '500', 'true', '25', '25', '6', 'rgba(255,255,255,0.43)', '20', 'rgba(89,143,191,0.46)', 'rgba(89,143,191,0.41)', 'top', 'false', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect8_loader`
--

CREATE TABLE `wp_rich_web_slider_effect8_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect8_loader`
--

INSERT INTO `wp_rich_web_slider_effect8_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ThSl_L_Show`, `Rich_Web_ThSl_LT_Show`, `Rich_Web_ThSl_LT`, `Rich_Web_ThSl_L_BgC`, `Rich_Web_ThSl_L_T`, `Rich_Web_ThSl_LT_T`, `Rich_Web_ThSl_LT_FS`, `Rich_Web_ThSl_LT_FF`, `Rich_Web_ThSl_LT_C`, `Rich_Web_ThSl_L_T1_C`, `Rich_Web_ThSl_L_T2_C`, `Rich_Web_ThSl_L_T3_C`, `Rich_Web_ThSl_LT_T2_BC`, `Rich_Web_ThSl_L_C`, `Rich_Web_ThSl_LT_T2_AnC`, `Rich_Web_ThSl_LT_T3_BgC`, `Rich_Web_ThSl_L_S`, `Rich_Web_ThSl_Loading_Show`) VALUES
(1, '15', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 1', '15', 'Abadi MT Condensed Light', '#828282', '#dd9933', '#dd9933', '#dd3333', '#000000', '#dd3333', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '16', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#000000', '#606060', '#b7b7b7', '#000000', '#ffffff', '#81d742', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect9`
--

CREATE TABLE `wp_rich_web_slider_effect9` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect9`
--

INSERT INTO `wp_rich_web_slider_effect9` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AcSL_W`, `Rich_Web_AcSL_H`, `Rich_Web_AcSL_BW`, `Rich_Web_AcSL_BS`, `Rich_Web_AcSL_BC`, `Rich_Web_AcSL_BSh`, `Rich_Web_AcSL_BShC`, `Rich_Web_AcSL_Img_W`, `Rich_Web_AcSL_Img_BSh`, `Rich_Web_AcSL_Img_BShC`, `Rich_Web_AcSL_Title_FS`, `Rich_Web_AcSL_Title_FF`, `Rich_Web_AcSL_Title_C`, `Rich_Web_AcSL_Title_TSh`, `Rich_Web_AcSL_Title_TShC`, `Rich_Web_AcSL_Title_BgC`, `Rich_Web_AcSL_Link_FS`, `Rich_Web_AcSL_Link_FF`, `Rich_Web_AcSL_Link_C`, `Rich_Web_AcSL_Link_TSh`, `Rich_Web_AcSL_Link_TShC`, `Rich_Web_AcSL_Link_BgC`, `Rich_Web_AcSL_Link_Text`) VALUES
(1, '17', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(2, '18', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect9_loader`
--

CREATE TABLE `wp_rich_web_slider_effect9_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect9_loader`
--

INSERT INTO `wp_rich_web_slider_effect9_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AccSl_L_Show`, `Rich_Web_AccSl_LT_Show`, `Rich_Web_AccSl_LT`, `Rich_Web_AccSl_L_BgC`, `Rich_Web_AccSl_L_T`, `Rich_Web_AccSl_LT_T`, `Rich_Web_AccSl_LT_FS`, `Rich_Web_AccSl_LT_FF`, `Rich_Web_AccSl_LT_C`, `Rich_Web_AccSl_L_T1_C`, `Rich_Web_AccSl_L_T2_C`, `Rich_Web_AccSl_L_T3_C`, `Rich_Web_AccSl_LT_T2_BC`, `Rich_Web_AccSl_L_C`, `Rich_Web_AccSl_LT_T2_AnC`, `Rich_Web_AccSl_LT_T3_BgC`, `Rich_Web_AccSl_L_S`, `Rich_Web_AccSl_Loading_Show`) VALUES
(1, '17', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#00688e', '#dd3333', 'middle', 'true'),
(2, '18', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#007087', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect10`
--

CREATE TABLE `wp_rich_web_slider_effect10` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SShChT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_M` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L1_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L2_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L3_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect10`
--

INSERT INTO `wp_rich_web_slider_effect10` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AnSL_W`, `Rich_Web_AnSL_H`, `Rich_Web_AnSL_BW`, `Rich_Web_AnSL_BS`, `Rich_Web_AnSL_BC`, `Rich_Web_AnSL_BR`, `Rich_Web_AnSL_BSh`, `Rich_Web_AnSL_ShC`, `Rich_Web_AnSL_ET`, `Rich_Web_AnSL_SSh`, `Rich_Web_AnSL_SShChT`, `Rich_Web_AnSL_T_FS`, `Rich_Web_AnSL_T_FF`, `Rich_Web_AnSL_T_C`, `Rich_Web_AnSL_T_BgC`, `Rich_Web_AnSL_T_TA`, `Rich_Web_AnSL_T_Sh`, `Rich_Web_AnSL_T_ShC`, `Rich_Web_AnSL_N_Sh`, `Rich_Web_AnSL_N_S`, `Rich_Web_AnSL_N_BW`, `Rich_Web_AnSL_N_BC`, `Rich_Web_AnSL_N_BgC`, `Rich_Web_AnSL_N_BS`, `Rich_Web_AnSL_N_HBgC`, `Rich_Web_AnSL_N_CC`, `Rich_Web_AnSL_N_M`, `Rich_Web_AnSL_Ic_Sh`, `Rich_Web_AnSL_Ic_T`, `Rich_Web_AnSL_Ic_S`, `Rich_Web_AnSL_Ic_C`, `Rich_Web_AnSL_L_BgC`, `Rich_Web_AnSL_L_T`, `Rich_Web_AnSL_L_FS`, `Rich_Web_AnSL_L_FF`, `Rich_Web_AnSL_L_C`, `Rich_Web_AnSL_L1_T`, `Rich_Web_AnSL_L2_T`, `Rich_Web_AnSL_L3_T`) VALUES
(1, '19', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '', '', '', '', '', '', '', ''),
(2, '20', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effect10_loader`
--

CREATE TABLE `wp_rich_web_slider_effect10_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effect10_loader`
--

INSERT INTO `wp_rich_web_slider_effect10_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AnimSl_L_Show`, `Rich_Web_AnimSl_LT_Show`, `Rich_Web_AnimSl_LT`, `Rich_Web_AnimSl_L_BgC`, `Rich_Web_AnimSl_L_T`, `Rich_Web_AnimSl_LT_T`, `Rich_Web_AnimSl_LT_FS`, `Rich_Web_AnimSl_LT_FF`, `Rich_Web_AnimSl_LT_C`, `Rich_Web_AnimSl_L_T1_C`, `Rich_Web_AnimSl_L_T2_C`, `Rich_Web_AnimSl_L_T3_C`, `Rich_Web_AnimSl_LT_T2_BC`, `Rich_Web_AnimSl_L_C`, `Rich_Web_AnimSl_LT_T2_AnC`, `Rich_Web_AnimSl_LT_T3_BgC`, `Rich_Web_AnimSl_L_S`, `Rich_Web_AnimSl_Loading_Show`) VALUES
(1, '19', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd3333', '#dd0000', '#990700', 'rgba(30,115,190,0.54)', '#dd0000', '#dd3333', '#dd3333', 'middle', 'true'),
(2, '20', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '15', 'Abadi MT Condensed Light', '#004da0', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_effects_data`
--

CREATE TABLE `wp_rich_web_slider_effects_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_effects_data`
--

INSERT INTO `wp_rich_web_slider_effects_data` (`id`, `slider_name`, `slider_type`) VALUES
(1, 'Slider Navigation 1', 'Slider Navigation'),
(2, 'Slider Navigation 2', 'Slider Navigation'),
(3, 'Content Slider', 'Content Slider'),
(4, 'Content-Slider', 'Content Slider'),
(5, 'Fashion Slider 1', 'Fashion Slider'),
(6, 'Fashion Slider 2', 'Fashion Slider'),
(7, 'Circle Thumbnails', 'Circle Thumbnails'),
(8, 'Circle Thumbnails 2', 'Circle Thumbnails'),
(9, 'Slider Carousel 1', 'Slider Carousel'),
(10, 'Slider Carousel 2', 'Slider Carousel'),
(11, 'Flexible Slider 1', 'Flexible Slider'),
(12, 'Flexible Slider 2', 'Flexible Slider'),
(13, 'Dynamic Slider 1', 'Dynamic Slider'),
(14, 'Dynamic Slider 2', 'Dynamic Slider'),
(15, 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox'),
(16, 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox'),
(17, 'Accordion 1', 'Accordion Slider'),
(18, 'Accordion 2', 'Accordion Slider'),
(19, 'Animation Slider 1', 'Animation Slider'),
(20, 'Animation Slider 2', 'Animation Slider');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_font_family`
--

CREATE TABLE `wp_rich_web_slider_font_family` (
  `id` int(10) UNSIGNED NOT NULL,
  `Font_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_font_family`
--

INSERT INTO `wp_rich_web_slider_font_family` (`id`, `Font_family`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Aharoni'),
(3, 'Aldhabi'),
(4, 'Andalus'),
(5, 'Angsana New'),
(6, 'AngsanaUPC'),
(7, 'Aparajita'),
(8, 'Arabic Typesetting'),
(9, 'Arial'),
(10, 'Arial Black'),
(11, 'Batang'),
(12, 'BatangChe'),
(13, 'Browallia New'),
(14, 'BrowalliaUPC'),
(15, 'Calibri'),
(16, 'Calibri Light'),
(17, 'Calisto MT'),
(18, 'Cambria'),
(19, 'Candara'),
(20, 'Century Gothic'),
(21, 'Comic Sans MS'),
(22, 'Consolas'),
(23, 'Constantia'),
(24, 'Copperplate Gothic'),
(25, 'Copperplate Gothic Light'),
(26, 'Corbel'),
(27, 'Cordia New'),
(28, 'CordiaUPC'),
(29, 'Courier New'),
(30, 'DaunPenh'),
(31, 'David'),
(32, 'DFKai-SB'),
(33, 'DilleniaUPC'),
(34, 'DokChampa'),
(35, 'Dotum'),
(36, 'DotumChe'),
(37, 'Ebrima'),
(38, 'Estrangelo Edessa'),
(39, 'EucrosiaUPC'),
(40, 'Euphemia'),
(41, 'FangSong'),
(42, 'Franklin Gothic Medium'),
(43, 'FrankRuehl'),
(44, 'FreesiaUPC'),
(45, 'Gabriola'),
(46, 'Gadugi'),
(47, 'Gautami'),
(48, 'Georgia'),
(49, 'Gisha'),
(50, 'Gulim'),
(51, 'GulimChe'),
(52, 'Gungsuh'),
(53, 'GungsuhChe'),
(54, 'Impact'),
(55, 'IrisUPC'),
(56, 'Iskoola Pota'),
(57, 'JasmineUPC'),
(58, 'KaiTi'),
(59, 'Kalinga'),
(60, 'Kartika'),
(61, 'Khmer UI'),
(62, 'KodchiangUPC'),
(63, 'Kokila'),
(64, 'Lao UI'),
(65, 'Latha'),
(66, 'Leelawadee'),
(67, 'Levenim MT'),
(68, 'LilyUPC'),
(69, 'Lucida Console'),
(70, 'Lucida Handwriting Italic'),
(71, 'Lucida Sans Unicode'),
(72, 'Malgun Gothic'),
(73, 'Mangal'),
(74, 'Manny ITC'),
(75, 'Marlett'),
(76, 'Meiryo'),
(77, 'Meiryo UI'),
(78, 'Microsoft Himalaya'),
(79, 'Microsoft JhengHei'),
(80, 'Microsoft JhengHei UI'),
(81, 'Microsoft New Tai Lue'),
(82, 'Microsoft PhagsPa'),
(83, 'Microsoft Sans Serif'),
(84, 'Microsoft Tai Le'),
(85, 'Microsoft Uighur'),
(86, 'Microsoft YaHei'),
(87, 'Microsoft YaHei UI'),
(88, 'Microsoft Yi Baiti'),
(89, 'MingLiU_HKSCS'),
(90, 'MingLiU_HKSCS-ExtB'),
(91, 'Miriam'),
(92, 'Mongolian Baiti'),
(93, 'MoolBoran'),
(94, 'MS UI Gothic'),
(95, 'MV Boli'),
(96, 'Myanmar Text'),
(97, 'Narkisim'),
(98, 'Nirmala UI'),
(99, 'News Gothic MT'),
(100, 'NSimSun'),
(101, 'Nyala'),
(102, 'Palatino Linotype'),
(103, 'Plantagenet Cherokee'),
(104, 'Raavi'),
(105, 'Rod'),
(106, 'Sakkal Majalla'),
(107, 'Segoe Print'),
(108, 'Segoe Script'),
(109, 'Segoe UI Symbol'),
(110, 'Shonar Bangla'),
(111, 'Shruti'),
(112, 'SimHei'),
(113, 'SimKai'),
(114, 'Simplified Arabic'),
(115, 'SimSun'),
(116, 'SimSun-ExtB'),
(117, 'Sylfaen'),
(118, 'Tahoma'),
(119, 'Times New Roman'),
(120, 'Traditional Arabic'),
(121, 'Trebuchet MS'),
(122, 'Tunga'),
(123, 'Utsaah'),
(124, 'Vani'),
(125, 'Vijaya');

-- --------------------------------------------------------

--
-- Structure de la table `wp_rich_web_slider_id`
--

CREATE TABLE `wp_rich_web_slider_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_rich_web_slider_id`
--

INSERT INTO `wp_rich_web_slider_id` (`id`, `Slider_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu supérieur', 'menu-superieur', 0),
(3, 'Menu des liens de réseaux sociaux', 'menu-des-liens-de-reseaux-sociaux', 0),
(4, '135', '135', 0),
(5, 'Main', 'main', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(115, 2, 0),
(116, 2, 0),
(117, 2, 0),
(118, 2, 0),
(119, 3, 0),
(120, 3, 0),
(121, 3, 0),
(122, 3, 0),
(123, 3, 0),
(136, 4, 0),
(137, 4, 0),
(138, 4, 0),
(143, 4, 0),
(150, 5, 0),
(151, 5, 0),
(152, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'ml-slider', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'caroline_ginon'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '153'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"043b48d2080295dc76be7e5728230baddf28aca8562cac4266bc9f2921cf0caf\";a:4:{s:10:\"expiration\";i:1538815930;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538643130;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1538647226'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'caroline_ginon', '$P$BGg1s4h10b7b7nRR1GaX/bNbpo9ezF1', 'caroline_ginon', 'celine.potinet@gl-events.com', '', '2018-09-27 12:25:31', '', 0, 'caroline_ginon');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
