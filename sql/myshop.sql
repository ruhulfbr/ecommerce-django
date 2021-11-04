-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 05:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', '', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add banner', 9, 'add_banner'),
(34, 'Can change banner', 9, 'change_banner'),
(35, 'Can delete banner', 9, 'delete_banner'),
(36, 'Can view banner', 9, 'view_banner'),
(37, 'Can add Theme', 10, 'add_theme'),
(38, 'Can change Theme', 10, 'change_theme'),
(39, 'Can delete Theme', 10, 'delete_theme'),
(40, 'Can view Theme', 10, 'view_theme'),
(41, 'Can add brand', 11, 'add_brand'),
(42, 'Can change brand', 11, 'change_brand'),
(43, 'Can delete brand', 11, 'delete_brand'),
(44, 'Can view brand', 11, 'view_brand'),
(45, 'Can add testimonial', 12, 'add_testimonial'),
(46, 'Can change testimonial', 12, 'change_testimonial'),
(47, 'Can delete testimonial', 12, 'delete_testimonial'),
(48, 'Can view testimonial', 12, 'view_testimonial');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$gePEvPk5Z2dUiElbiS4ciT$vleIiFVfL4G1FZRZiTF5PXwkN9ZK7/uvvyCi29j4nro=', '2021-11-04 14:57:27.334545', 1, 'ruhul', '', '', 'ruhul@tbd.com', 1, 1, '2021-11-02 03:29:57.811429'),
(2, 'pbkdf2_sha256$260000$hOXRcQEA1ppMLaVsYqoxqb$20RaNccg6DvzYhOwHP5zA1gjcmRLRCTgT1LfDYXGc4Y=', NULL, 0, 'shahad', '', '', '', 0, 1, '2021-11-02 03:31:02.079781');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-02 03:31:02.235463', '2', 'shahad', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-11-03 02:39:59.614314', '2', 'Fashion', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-11-03 02:40:15.691567', '2', 'Fashion', 3, '', 7, 1),
(4, '2021-11-03 02:44:22.230044', '3', 'fashion', 1, '[{\"added\": {}}]', 7, 1),
(5, '2021-11-03 02:47:32.346431', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-11-03 03:32:33.385624', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-11-03 03:49:50.257262', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(8, '2021-11-03 10:55:28.871044', '1', 'Banner object (1)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2021-11-03 10:56:10.414332', '2', 'Banner object (2)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2021-11-03 10:57:20.231973', '3', 'Banner object (3)', 1, '[{\"added\": {}}]', 9, 1),
(11, '2021-11-03 10:58:06.916555', '4', 'Banner object (4)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2021-11-03 10:58:47.462524', '5', 'Banner object (5)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2021-11-04 03:34:00.261972', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1),
(14, '2021-11-04 03:34:07.329501', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1),
(15, '2021-11-04 03:39:07.265566', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Short desc\", \"Long desc\", \"Sku\", \"Image\"]}}]', 8, 1),
(16, '2021-11-04 03:40:07.221075', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Category\", \"Short desc\", \"Long desc\", \"Image\"]}}]', 8, 1),
(17, '2021-11-04 03:48:49.246016', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 8, 1),
(18, '2021-11-04 03:49:24.316022', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 8, 1),
(19, '2021-11-04 03:50:04.149045', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 8, 1),
(20, '2021-11-04 04:58:35.125831', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Image2\"]}}]', 8, 1),
(21, '2021-11-04 04:59:20.105931', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Image2\"]}}]', 8, 1),
(22, '2021-11-04 04:59:28.591890', '3', 'Product object (3)', 2, '[{\"changed\": {\"fields\": [\"Image2\"]}}]', 8, 1),
(23, '2021-11-04 04:59:36.428204', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Image2\"]}}]', 8, 1),
(24, '2021-11-04 04:59:51.330540', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Image2\"]}}]', 8, 1),
(25, '2021-11-04 08:17:34.059132', '3', 'Fashion', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(26, '2021-11-04 08:38:22.739493', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Name\"]}}]', 10, 1),
(27, '2021-11-04 08:38:53.652320', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(28, '2021-11-04 08:39:06.360292', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Sticky submit\", \"Sticky pagination\"]}}]', 10, 1),
(29, '2021-11-04 08:39:34.353413', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Sticky submit\", \"Sticky pagination\"]}}]', 10, 1),
(30, '2021-11-04 08:42:58.681475', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 10, 1),
(31, '2021-11-04 08:43:04.193629', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 10, 1),
(32, '2021-11-04 08:43:34.410259', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Text color\", \"Background color\"]}}]', 10, 1),
(33, '2021-11-04 08:43:59.980522', '1', 'My Shop', 2, '[{\"changed\": {\"fields\": [\"Text color\"]}}]', 10, 1),
(34, '2021-11-04 15:35:14.022347', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Long desc\"]}}]', 8, 1),
(35, '2021-11-04 15:35:44.142141', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Long desc\"]}}]', 8, 1),
(36, '2021-11-04 15:36:14.110454', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Long desc\"]}}]', 8, 1),
(37, '2021-11-04 15:37:00.204866', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Long desc\"]}}]', 8, 1),
(38, '2021-11-04 15:37:23.483979', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Long desc\"]}}]', 8, 1),
(39, '2021-11-04 15:45:53.522686', '1', 'Brand object (1)', 1, '[{\"added\": {}}]', 11, 1),
(40, '2021-11-04 15:46:09.484785', '2', 'Brand object (2)', 1, '[{\"added\": {}}]', 11, 1),
(41, '2021-11-04 15:46:23.514041', '3', 'Brand object (3)', 1, '[{\"added\": {}}]', 11, 1),
(42, '2021-11-04 15:46:36.626704', '4', 'Brand object (4)', 1, '[{\"added\": {}}]', 11, 1),
(43, '2021-11-04 15:46:51.787572', '5', 'Brand object (5)', 1, '[{\"added\": {}}]', 11, 1),
(44, '2021-11-04 15:47:05.939574', '6', 'Brand object (6)', 1, '[{\"added\": {}}]', 11, 1),
(45, '2021-11-04 15:47:16.522556', '7', 'Brand object (7)', 1, '[{\"added\": {}}]', 11, 1),
(46, '2021-11-04 15:47:27.874570', '8', 'Brand object (8)', 1, '[{\"added\": {}}]', 11, 1),
(47, '2021-11-04 15:47:45.730764', '9', 'Brand object (9)', 1, '[{\"added\": {}}]', 11, 1),
(48, '2021-11-04 16:08:24.673066', '1', 'Testimonial object (1)', 1, '[{\"added\": {}}]', 12, 1),
(49, '2021-11-04 16:08:58.246055', '2', 'Testimonial object (2)', 1, '[{\"added\": {}}]', 12, 1),
(50, '2021-11-04 16:09:30.648039', '3', 'Testimonial object (3)', 1, '[{\"added\": {}}]', 12, 1),
(51, '2021-11-04 16:42:38.099289', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'home', 'banner'),
(11, 'home', 'brand'),
(12, 'home', 'testimonial'),
(7, 'product', 'category'),
(8, 'product', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-02 03:29:20.199657'),
(2, 'auth', '0001_initial', '2021-11-02 03:29:20.893245'),
(3, 'admin', '0001_initial', '2021-11-02 03:29:21.056253'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-02 03:29:21.081970'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-02 03:29:21.102378'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-02 03:29:21.178269'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-02 03:29:21.233494'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-02 03:29:21.247007'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-02 03:29:21.256036'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-02 03:29:21.300297'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-02 03:29:21.306566'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-02 03:29:21.330632'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-02 03:29:21.355365'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-02 03:29:21.372264'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-02 03:29:21.391096'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-02 03:29:21.417988'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-02 03:29:21.434198'),
(18, 'product', '0001_initial', '2021-11-02 03:29:21.511265'),
(19, 'product', '0002_alter_category_parent', '2021-11-02 03:29:21.702471'),
(20, 'sessions', '0001_initial', '2021-11-02 03:29:21.751048'),
(21, 'product', '0003_product', '2021-11-03 02:25:47.374240'),
(22, 'product', '0004_product_image', '2021-11-03 02:45:24.287901'),
(23, 'home', '0001_initial', '2021-11-03 10:52:07.206316'),
(24, 'product', '0005_product_tag', '2021-11-04 02:19:23.444655'),
(25, 'product', '0006_alter_product_tag', '2021-11-04 02:53:26.206223'),
(26, 'product', '0007_product_image2', '2021-11-04 04:57:59.553462'),
(49, 'admin_interface', '0001_initial', '2021-11-04 08:46:33.877885'),
(50, 'admin_interface', '0002_add_related_modal', '2021-11-04 08:46:33.971387'),
(51, 'admin_interface', '0003_add_logo_color', '2021-11-04 08:46:34.007311'),
(52, 'admin_interface', '0004_rename_title_color', '2021-11-04 08:46:34.027579'),
(53, 'admin_interface', '0005_add_recent_actions_visible', '2021-11-04 08:46:34.058074'),
(54, 'admin_interface', '0006_bytes_to_str', '2021-11-04 08:46:34.135738'),
(55, 'admin_interface', '0007_add_favicon', '2021-11-04 08:46:34.149891'),
(56, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2021-11-04 08:46:34.192923'),
(57, 'admin_interface', '0009_add_enviroment', '2021-11-04 08:46:34.245002'),
(58, 'admin_interface', '0010_add_localization', '2021-11-04 08:46:34.279058'),
(59, 'admin_interface', '0011_add_environment_options', '2021-11-04 08:46:34.330294'),
(60, 'admin_interface', '0012_update_verbose_names', '2021-11-04 08:46:34.350474'),
(61, 'admin_interface', '0013_add_related_modal_close_button', '2021-11-04 08:46:34.372455'),
(62, 'admin_interface', '0014_name_unique', '2021-11-04 08:46:34.396631'),
(63, 'admin_interface', '0015_add_language_chooser_active', '2021-11-04 08:46:34.424999'),
(64, 'admin_interface', '0016_add_language_chooser_display', '2021-11-04 08:46:34.458222'),
(65, 'admin_interface', '0017_change_list_filter_dropdown', '2021-11-04 08:46:34.471712'),
(66, 'admin_interface', '0018_theme_list_filter_sticky', '2021-11-04 08:46:34.500344'),
(67, 'admin_interface', '0019_add_form_sticky', '2021-11-04 08:46:34.553280'),
(68, 'admin_interface', '0020_module_selected_colors', '2021-11-04 08:46:34.636251'),
(69, 'admin_interface', '0021_file_extension_validator', '2021-11-04 08:46:34.646790'),
(70, 'admin_interface', '0022_add_logo_max_width_and_height', '2021-11-04 08:46:34.690333'),
(71, 'home', '0002_brand', '2021-11-04 15:42:31.823691'),
(72, 'home', '0003_testimonial', '2021-11-04 16:07:09.790300');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('j6y8pjmue6lyxl1uusswghp2n51mhws4', '.eJxVjDkOwjAUBe_iGlnO4o2SnjNYfzMOIEeKkwpxd4iUAto3M--lEmxrSVuTJU2szqpTp98NgR5Sd8B3qLdZ01zXZUK9K_qgTV9nluflcP8OCrTyrfsowfnR-sgWvQMQGoRzoGyRUEJwfST2ETvwIobYZOJxcNa6nI1D9f4ABm45Ew:1mhkVE:HTByTdDk61BCW4PKJrJpfNVfxAgw6SZVAaAIWOcdsrs', '2021-11-16 03:30:24.093844'),
('v98x4fsw8b8dc10aew9qtyqh7345hxun', '.eJxVjDkOwjAUBe_iGlnO4o2SnjNYfzMOIEeKkwpxd4iUAto3M--lEmxrSVuTJU2szqpTp98NgR5Sd8B3qLdZ01zXZUK9K_qgTV9nluflcP8OCrTyrfsowfnR-sgWvQMQGoRzoGyRUEJwfST2ETvwIobYZOJxcNa6nI1D9f4ABm45Ew:1mieBD:uQbCNR_AR_7OBGZFO6ZLbKLiSGdr5UdPiUN4HTSFllw', '2021-11-18 14:57:27.337537');

-- --------------------------------------------------------

--
-- Table structure for table `home_banner`
--

CREATE TABLE `home_banner` (
  `id` bigint(20) NOT NULL,
  `title_1` varchar(200) NOT NULL,
  `title_2` varchar(200) NOT NULL,
  `link` varchar(512) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_banner`
--

INSERT INTO `home_banner` (`id`, `title_1`, `title_2`, `link`, `status`, `ordering`, `image`, `created_at`, `updated_at`) VALUES
(1, 'NEW COLLECTION', 'SHOP WOMEN\'S', '#', 'active', 1, 'images/banners/banner-1.jpg', '2021-11-03 10:55:28.870178', '2021-11-03 10:55:28.870207'),
(2, 'NEW COLLECTION', 'SHOP MEN\'S', '#', 'active', 2, 'images/banners/banner-2.jpg', '2021-11-03 10:56:10.413430', '2021-11-03 10:56:10.413464'),
(3, 'FLIP FLOP', 'Summer<br>sale -70% off', '#', 'active', 3, 'images/banners/banner-3.jpg', '2021-11-03 10:57:20.229599', '2021-11-03 10:57:20.229702'),
(4, 'ACCESSORIES', '2019 Winter<br>up to 50% off', '#', 'active', 4, 'images/banners/banner-4.jpg', '2021-11-03 10:58:06.915488', '2021-11-03 10:58:06.915515'),
(5, 'NEW IN', 'Women’s<br>sportswear', '#', 'active', 5, 'images/banners/banner-5.jpg', '2021-11-03 10:58:47.461909', '2021-11-03 10:58:47.461935');

-- --------------------------------------------------------

--
-- Table structure for table `home_brand`
--

CREATE TABLE `home_brand` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `link` varchar(512) NOT NULL,
  `status` varchar(10) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_brand`
--

INSERT INTO `home_brand` (`id`, `name`, `link`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'LE BARREL', '#', 'active', 'images/banners/1.png', '2021-11-04 15:45:53.522686', '2021-11-04 15:45:53.522686'),
(2, 'Something', '#', 'active', 'images/banners/2.png', '2021-11-04 15:46:09.482787', '2021-11-04 15:46:09.482787'),
(3, 'Costa Brava', '#', 'active', 'images/banners/3.png', '2021-11-04 15:46:23.513068', '2021-11-04 15:46:23.513068'),
(4, 'Oceanic', '#', 'active', 'images/banners/4.png', '2021-11-04 15:46:36.625730', '2021-11-04 15:46:36.625730'),
(5, 'Fountain', '#', 'active', 'images/banners/5.png', '2021-11-04 15:46:51.785577', '2021-11-04 15:46:51.785577'),
(6, 'Black Birds', '#', 'active', 'images/banners/6.png', '2021-11-04 15:47:05.938576', '2021-11-04 15:47:05.938576'),
(7, 'Hugo', '#', 'active', 'images/banners/7.png', '2021-11-04 15:47:16.521558', '2021-11-04 15:47:16.521558'),
(8, 'Mountain', '#', 'active', 'images/banners/8.png', '2021-11-04 15:47:27.873572', '2021-11-04 15:47:27.873572'),
(9, 'Mr Bookers', '#', 'active', 'images/banners/9.png', '2021-11-04 15:47:45.729763', '2021-11-04 15:47:45.729763');

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonial`
--

CREATE TABLE `home_testimonial` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_testimonial`
--

INSERT INTO `home_testimonial` (`id`, `title`, `Description`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Really great store', 'Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra<br>a, ultricies in, diam. Sed arcu.', 'Charly Smith', 'Customer', '2021-11-04 16:08:24.672096', '2021-11-04 16:08:24.672096'),
(2, 'Friendly Support', 'Impedit, ratione sequi, sunt incidunt magnam et. Delectus obcaecati optio eius error libero perferendis nesciunt atque dolores magni recusandae! Doloremque quidem error eum quis similique doloribus natus qui ut ipsum.', 'Damon Stone', 'Customer', '2021-11-04 16:08:58.245066', '2021-11-04 16:08:58.245066'),
(3, 'Free Shipping', 'Molestias animi illo natus ut quod neque ad accusamus praesentium fuga! Dolores odio alias sapiente odit delectus quasi, explicabo a, modi voluptatibus. Perferendis perspiciatis, voluptate, distinctio earum veritatis animi tempora eget blandit nunc tortor mollis', 'John Smith', 'Customer', '2021-11-04 16:09:30.646639', '2021-11-04 16:09:30.646639');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `status`, `created_at`, `updated_at`, `parent`) VALUES
(1, 'Grocery', 'Active', '2021-11-02 03:32:11.621131', '2021-11-02 03:32:11.621168', 0),
(3, 'Fashion', 'Active', '2021-11-04 08:17:34.058107', '2021-11-04 08:17:34.058114', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE `product_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `short_desc` longtext DEFAULT NULL,
  `long_desc` longtext DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `sku` varchar(128) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `name`, `slug`, `short_desc`, `long_desc`, `price`, `quantity`, `sku`, `status`, `created_at`, `updated_at`, `category_id`, `image`, `tag`, `image2`) VALUES
(1, 'Dress with a belt', 'dress-with-a-belt', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 500, 100, '3-idots', 'active', '2021-11-04 04:59:20.104943', '2021-11-04 04:59:20.104951', 3, 'images/products/product-2-1_s2M04OX.jpg', 'Trending', 'images/products/product-2-2.jpg'),
(2, 'Tie-detail top', 'tie-detail-top', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 200, 300, 'sku', 'active', '2021-11-04 16:42:38.098197', '2021-11-04 16:42:38.098197', 3, 'images/products/product-1-1.jpg', 'Trending', 'images/products/product-1-2.jpg'),
(3, 'Linen-blend paper bag trousers', 'linen-blend-paper-bag-trousers', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 60, 500, 'Linen-blend paper bag trousers', 'active', '2021-11-04 04:59:28.589186', '2021-11-04 04:59:28.589203', 3, 'images/products/product-3-1.jpg', 'Trending', 'images/products/product-3-2.jpg'),
(4, 'Paper straw shopper', 'paper-straw-shopper', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Product Information\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus.\r\n\r\nNunc nec porttitor turpis. In eu risus enim. In vitae mollis elit.\r\nVivamus finibus vel mauris ut vehicula.\r\nNullam a magna porttitor, dictum risus nec, faucibus sapien.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus.', 100, 120, 'sku-2', 'active', '2021-11-04 15:37:23.482982', '2021-11-04 15:37:23.482982', 3, 'images/products/product-4-1.jpg', 'Trending', 'images/products/product-4-2.jpg'),
(5, 'Long-sleeved blouse', 'long-sleeved-blouse', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<h3>Information</h3>\r\n                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. </p>\r\n\r\n                                    <h3>Fabric &amp; care</h3>\r\n                                    <ul>\r\n                                        <li>Faux suede fabric</li>\r\n                                        <li>Gold tone metal hoop handles.</li>\r\n                                        <li>RI branding</li>\r\n                                        <li>Snake print trim interior </li>\r\n                                        <li>Adjustable cross body strap</li>\r\n                                        <li> Height: 31cm; Width: 32cm; Depth: 12cm; Handle Drop: 61cm</li>\r\n                                    </ul>\r\n\r\n                                    <h3>Size</h3>\r\n                                    <p>one size</p>', 75, 1200, 'sku-5', 'active', '2021-11-04 15:37:00.203844', '2021-11-04 15:37:00.203844', 3, 'images/products/product-5-1.jpg', 'Trending', 'images/products/product-5-2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_banner`
--
ALTER TABLE `home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_brand`
--
ALTER TABLE `home_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_testimonial`
--
ALTER TABLE `home_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_product_category_id_0c725779_fk_product_category_id` (`category_id`),
  ADD KEY `product_product_slug_76cde0ae` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `home_banner`
--
ALTER TABLE `home_banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_brand`
--
ALTER TABLE `home_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_testimonial`
--
ALTER TABLE `home_testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `product_product`
--
ALTER TABLE `product_product`
  ADD CONSTRAINT `product_product_category_id_0c725779_fk_product_category_id` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
