-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2019 at 12:45 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custom_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('88ca6346403dd0f33b3696904cf706d45bddc548', '::1', 1569581072, '__ci_last_regenerate|i:1569581072;'),
('f67e5e286d274e4b168508f024c9465810653379', '::1', 1569581072, '__ci_last_regenerate|i:1569581072;');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `footer_links_id` int(11) NOT NULL,
  `footer_links_column_heading` varchar(300) DEFAULT NULL,
  `footer_links_column_size` varchar(300) DEFAULT NULL,
  `footer_links_column_links` text DEFAULT NULL,
  `footer_links_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `footer_links_updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `footer_links_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_admin`
--

CREATE TABLE `master_admin` (
  `master_admin_id` int(11) UNSIGNED NOT NULL,
  `master_admin_name` varchar(50) NOT NULL,
  `master_admin_email` varchar(50) DEFAULT NULL,
  `master_admin_phone` varchar(50) DEFAULT NULL,
  `master_admin_password` varchar(255) DEFAULT NULL,
  `master_admin_rest_token` varchar(255) NOT NULL,
  `master_admin_address` varchar(255) DEFAULT NULL,
  `master_admin_image` varchar(255) DEFAULT NULL,
  `master_admin_role` varchar(20) DEFAULT NULL,
  `master_admin_status` enum('enable','disable') DEFAULT NULL,
  `master_admin_created_by` int(11) DEFAULT NULL,
  `master_admin_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `master_admin_updated_by` int(11) DEFAULT NULL,
  `master_admin_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_admin`
--

INSERT INTO `master_admin` (`master_admin_id`, `master_admin_name`, `master_admin_email`, `master_admin_phone`, `master_admin_password`, `master_admin_rest_token`, `master_admin_address`, `master_admin_image`, `master_admin_role`, `master_admin_status`, `master_admin_created_by`, `master_admin_created_at`, `master_admin_updated_by`, `master_admin_updated_at`) VALUES
(1, 'Master Admin', 'masteradmin@demo.com', '', 'bcc790657e54559f8b5568a61b4b0436b701f536194507a4e4fa557ea9e592d3de9aea3f6f1be70de04975044056d14b273a5556fd41a8635906ee75e1a32bbdfb0H2qxnN18RUMBAt2VnIS1LJGgnHk76y7M13UQJDxA=', '', '', 'user.png', 'master admin', 'enable', NULL, '2018-05-25 21:25:50', 1, '2019-09-27 10:38:22'),
(2, 'Sub Admin', 'subadmin@demo.com', '', 'bcc790657e54559f8b5568a61b4b0436b701f536194507a4e4fa557ea9e592d3de9aea3f6f1be70de04975044056d14b273a5556fd41a8635906ee75e1a32bbdfb0H2qxnN18RUMBAt2VnIS1LJGgnHk76y7M13UQJDxA=', '', '', 'user.png', 'sub admin', 'enable', NULL, '2018-05-25 21:25:50', 1, '2019-09-27 10:38:24'),
(3, 'Admin', 'admin@demo.com', '', 'bcc790657e54559f8b5568a61b4b0436b701f536194507a4e4fa557ea9e592d3de9aea3f6f1be70de04975044056d14b273a5556fd41a8635906ee75e1a32bbdfb0H2qxnN18RUMBAt2VnIS1LJGgnHk76y7M13UQJDxA=', '', '', 'user.png', 'client', 'enable', NULL, '2018-05-25 21:25:50', 1, '2019-09-27 10:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `seo_id` int(11) UNSIGNED NOT NULL,
  `seo_page_name` varchar(255) NOT NULL,
  `seo_page_link` varchar(255) NOT NULL,
  `seo_page_title` varchar(255) DEFAULT NULL,
  `seo_meta_title` varchar(255) DEFAULT NULL,
  `seo_meta_description` text NOT NULL,
  `seo_meta_keyword` text NOT NULL,
  `seo_meta_canonical` varchar(255) DEFAULT NULL,
  `seo_meta_index` enum('noindex, nofollow','index, nofollow','noindex, follow','index, follow') DEFAULT NULL,
  `seo_status` enum('enable','disable') DEFAULT NULL,
  `seo_created_by` int(11) DEFAULT NULL,
  `seo_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `seo_updated_by` int(11) DEFAULT NULL,
  `seo_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) UNSIGNED NOT NULL,
  `settings_site_title` varchar(600) DEFAULT NULL,
  `settings_email` varchar(50) DEFAULT NULL,
  `settings_email_from` varchar(300) NOT NULL,
  `settings_email_to` varchar(300) NOT NULL,
  `settings_favicon` varchar(50) DEFAULT NULL,
  `settings_address` varchar(300) NOT NULL,
  `settings_logo` varchar(50) DEFAULT NULL,
  `settings_footer_logo` varchar(300) DEFAULT NULL,
  `settings_phone` varchar(200) NOT NULL,
  `settings_status` enum('enable','disable') DEFAULT NULL,
  `settings_created_by` int(11) DEFAULT NULL,
  `settings_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `settings_updated_by` int(11) DEFAULT NULL,
  `settings_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `settings_site_title`, `settings_email`, `settings_email_from`, `settings_email_to`, `settings_favicon`, `settings_address`, `settings_logo`, `settings_footer_logo`, `settings_phone`, `settings_status`, `settings_created_by`, `settings_created_at`, `settings_updated_by`, `settings_updated_at`) VALUES
(1, 'Website Name', 'website@domain.com', 'website@domain.com', 'website@domain.com', '', '', '', '', '', 'enable', NULL, '2018-05-29 02:18:51', 1, '2019-09-27 10:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int(11) NOT NULL,
  `social_facebook` varchar(300) NOT NULL,
  `social_twitter` varchar(300) NOT NULL,
  `social_tumblr` varchar(300) NOT NULL,
  `social_linkedin` varchar(300) NOT NULL,
  `social_instagram` varchar(500) DEFAULT NULL,
  `social_youtube` varchar(300) NOT NULL,
  `social_googleplus` varchar(300) NOT NULL,
  `social_status` enum('enable','disable','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`social_id`, `social_facebook`, `social_twitter`, `social_tumblr`, `social_linkedin`, `social_instagram`, `social_youtube`, `social_googleplus`, `social_status`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.tumblr.com/', '#', NULL, 'https://www.youtube.com/', 'https://plus.google.com/', 'enable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`footer_links_id`);

--
-- Indexes for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD PRIMARY KEY (`master_admin_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`seo_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `footer_links_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_admin`
--
ALTER TABLE `master_admin`
  MODIFY `master_admin_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `seo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
