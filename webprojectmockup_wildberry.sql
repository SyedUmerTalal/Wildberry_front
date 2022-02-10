-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2022 at 10:02 AM
-- Server version: 10.3.33-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webprojectmockup_wildberry`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake`
--

CREATE TABLE `cake` (
  `cake_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `cake_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cake_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cake_status` enum('enable','disable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cake`
--

INSERT INTO `cake` (`cake_id`, `name`, `price`, `desc`, `image`, `cake_created_at`, `cake_updated_at`, `cake_status`) VALUES
(1, 'Chocolate', '700', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium quam et mauris faucibus, a auctor dui blandit. Donec eu ullamcorper nisl. Pellentesque id arcu sagittis', 'cake611.png', '2022-02-03 05:51:34', '2022-02-03 05:51:34', 'enable'),
(2, 'Pine Apple', '900', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium quam et mauris faucibus, a auctor dui blandit. Donec eu ullamcorper nisl. Pellentesque id arcu sagittis', 'cake611.png', '2022-02-03 05:52:30', '2022-02-03 05:52:30', 'enable'),
(3, 'Straberry', '855', 'test', 'cake6111.png', '2022-02-04 13:39:09', '2022-02-04 13:39:09', 'enable'),
(4, 'new ice cake', '1799', 'special offer for the special day', 'cake1.jpg', '2022-02-07 09:52:27', '2022-02-07 09:52:27', 'enable'),
(5, 'new ice cake', '1799', 'special offer for the special day', 'cake1.jpg', '2022-02-07 09:53:22', '2022-02-07 10:00:51', 'disable'),
(6, 'Melvin Riggs', '528', 'chjdsknbon', '', '2022-02-07 09:59:48', '2022-02-07 10:00:40', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `category_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `feature`, `category_created_at`, `category_updated_at`, `category_status`) VALUES
(48, 'WILDBERRY MEN', 'cake611.png', 'yes', '2022-01-18 04:00:16', '2022-01-18 04:00:16', 'enable'),
(49, 'WILDBERRY NUMBER CAKES', 'cake611.png', 'no', '2022-01-18 04:01:03', '2022-01-18 06:46:31', 'enable'),
(50, 'CHOCOLATE FIGURES', 'cake611.png', 'no', '2022-01-18 04:01:19', '2022-01-18 06:46:25', 'enable'),
(51, 'WILDBERRY BIRTHDAY', 'cake611.png', 'yes', '2022-01-18 04:01:27', '2022-01-18 04:01:27', 'enable'),
(52, 'WILDBERRY WEDDING', 'cake611.png', 'no', '2022-01-18 04:01:41', '2022-01-18 06:44:58', 'enable'),
(53, 'CHOCOLATE FIGURES', 'cake611.png', 'yes', '2022-01-18 04:01:50', '2022-01-18 06:44:53', 'disable'),
(54, 'WILDBERRY WEDDING', 'cake611.png', 'yes', '2022-01-18 04:02:01', '2022-01-18 06:44:49', 'disable'),
(55, 'CHOCOLATE CAKES', 'cake611.png', 'no', '2022-01-18 04:02:09', '2022-01-18 06:44:41', 'enable'),
(56, 'CHOCOLATE CREAMS', 'cake611.png', 'no', '2022-01-18 04:02:38', '2022-01-18 04:02:38', 'enable'),
(57, 'breakfast category', 'cake611.png', 'yes', '2022-01-18 06:44:30', '2022-01-18 06:44:30', 'enable'),
(58, 'brunch category', 'cake611.png', 'yes', '2022-01-18 06:45:25', '2022-01-18 06:45:25', 'enable'),
(59, 'lunch category', 'cake611.png', 'yes', '2022-01-18 06:45:54', '2022-01-18 06:45:54', 'enable'),
(60, 'Dinner category', 'cake611.png', 'yes', '2022-01-18 06:46:13', '2022-01-18 06:46:13', 'enable'),
(61, 'test1', 'logo5.png', 'yes', '2022-02-07 09:17:40', '2022-02-07 09:19:26', 'enable'),
(62, 'check', 'logR1.jpg', 'yes', '2022-02-07 09:18:29', '2022-02-07 09:48:35', 'disable'),
(63, 'test1', 'logo5.png', 'yes', '2022-02-07 09:20:22', '2022-02-07 09:21:47', 'disable'),
(64, 'abc', '', 'yes', '2022-02-07 09:27:06', '2022-02-07 09:43:54', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(11) NOT NULL,
  `rider` varchar(255) DEFAULT 'not assigned',
  `order_status` varchar(255) DEFAULT 'pending',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `req` text DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `cod` varchar(255) DEFAULT NULL,
  `cod_amount` varchar(255) DEFAULT NULL,
  `checkout_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `checkout_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `checkout_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`checkout_id`, `rider`, `order_status`, `name`, `email`, `phone`, `address`, `req`, `payment_id`, `cod`, `cod_amount`, `checkout_created_at`, `checkout_updated_at`, `checkout_status`) VALUES
(1, 'not assigned', 'pending', 'ab', 'ab@gmail.com', '1232131312', 'i am in', 'to tesr', 1, 'online', NULL, '2022-02-07 11:10:06', '2022-02-07 11:10:06', 'enable'),
(2, 'not assigned', 'pending', 'Kaden Roman', 'jyxuj@mailinator.com', '+1 (187) 333-1801', 'Eos voluptas pariat', 'Dolor qui sit nisi ', NULL, 'COD', '1803', '2022-02-07 11:15:49', '2022-02-07 11:16:43', 'disable'),
(3, 'not assigned', 'pending', 'Tatyana Lewis', 'neri@mailinator.com', '+1 (721) 411-6719', 'Sunt sunt quae in no', 'In voluptas rerum an', NULL, 'COD', '2973', '2022-02-07 11:17:44', '2022-02-07 11:17:44', 'enable'),
(4, 'not assigned', 'pending', 'Leo Haley', 'vypyguwy@mailinator.com', '+1 (525) 617-5341', 'Cillum totam atque l', 'Tempora tempore vol', NULL, 'COD', '2072', '2022-02-07 11:19:25', '2022-02-07 11:19:25', 'enable'),
(5, 'not assigned', 'pending', 'Hiroko Velez', 'gyjitin@mailinator.com', '+1 (885) 272-2231', 'Nobis aute est enim ', 'Nihil laudantium sa', NULL, 'COD', '763', '2022-02-07 11:26:11', '2022-02-07 11:26:11', 'enable'),
(6, 'not assigned', 'pending', 'Adnan Shakoorr', 'adnanshakoorr@gmail.com', '11111', 'Test', '', NULL, 'COD', '1258', '2022-02-07 16:10:54', '2022-02-07 16:10:54', 'enable'),
(7, 'not assigned', 'pending', 'Garrett Perez', 'jefol62377@mannawo.com', '+1 (741) 255-8534', 'Modi ut veniam veli', 'Consequatur delenit', NULL, 'COD', '364', '2022-02-08 05:18:38', '2022-02-08 05:18:38', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_cake`
--

CREATE TABLE `checkout_cake` (
  `checkout_id` int(11) NOT NULL,
  `rider` varchar(255) DEFAULT 'not assigned',
  `order_status` varchar(255) DEFAULT 'pending',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `req` text DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `cod` varchar(255) DEFAULT NULL,
  `pickup` varchar(255) DEFAULT NULL,
  `cod_amount` varchar(255) DEFAULT NULL,
  `cake_id` int(11) DEFAULT NULL,
  `checkout_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `checkout_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `checkout_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('001280725e88eb79929528d109e507786ac83d5e', '110.93.244.255', 1643866235, '__ci_last_regenerate|i:1643866235;'),
('0025cd506b1816c95cd33fef4662b1f39b5a2da1', '110.93.244.255', 1643289216, '__ci_last_regenerate|i:1643289181;'),
('00910bb46acbae0b8ea3c9b34c5e806eb9736513', '110.93.244.255', 1643885083, '__ci_last_regenerate|i:1643885083;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('00bc2821acd19715b653fa6e194ac2fdc60b33e5', '110.93.244.255', 1643367261, '__ci_last_regenerate|i:1643367261;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('01149a229732a82a4507f1b74895792f28f71ad2', '110.93.244.255', 1644401872, ''),
('01187373b3ba3236c1c54efb71ea0500c4edbe71', '110.93.244.255', 1644325625, '__ci_last_regenerate|i:1644325503;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('011d5067fbc2dbea907df164864717ab7e2739d1', '110.93.244.255', 1644325925, ''),
('013343ce4ac0b149e309835507fdfc75e61e9266', '110.93.244.255', 1643700036, '__ci_last_regenerate|i:1643700036;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:819;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:11:\"Amir Romero\";s:5:\"phone\";s:17:\"+1 (743) 374-7637\";s:5:\"email\";s:21:\"pupopa@mailinator.com\";s:7:\"address\";s:20:\"Do tempora labore vo\";s:3:\"req\";s:20:\"Magnam reiciendis co\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:819;}'),
('013a969327c0bad4aa715b20daec11e8f616860c', '110.93.244.255', 1643374919, '__ci_last_regenerate|i:1643374919;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('0145afdf7c75c3f36d96888ca9d3f92bf0e34de2', '110.93.244.255', 1643783952, '__ci_last_regenerate|i:1643783952;'),
('016jttbmdhksmgvlkr0lr2m5t0334v7a', '::1', 1642576549, '__ci_last_regenerate|i:1642576549;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('01c46a54cb706f34ff1283077353ecae906dd9a6', '110.93.244.255', 1643369382, '__ci_last_regenerate|i:1643369382;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:6:{s:10:\"cart_total\";d:1512;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:14:\"Portia Simpson\";s:5:\"phone\";s:17:\"+1 (112) 384-7667\";s:5:\"email\";s:24:\"wegazebuc@mailinator.com\";s:7:\"address\";s:19:\"Aut eum incidunt di\";s:3:\"req\";s:20:\"Aliquam ab eos inven\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1512;}'),
('01eaec1f7ad1d62708f2c90d49905592b9f8e4de', '110.93.244.255', 1643884790, '__ci_last_regenerate|i:1643884790;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:900;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:3:\"qty\";d:1;s:5:\"price\";d:900;s:3:\"img\";s:11:\"cake611.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:900;}}'),
('01f9ecd95d747b7d96e5aba4fc2bb2ac65b2446e', '110.93.244.255', 1643984759, '__ci_last_regenerate|i:1643984759;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('0250b76b78bf1d02771f69de944d2c3f7ef85d00', '110.93.244.255', 1643352788, '__ci_last_regenerate|i:1643352788;'),
('038350658e2abfeac597c4ef454bb1d8296bf1d2', '110.93.244.255', 1644319199, ''),
('03980883c9aa296720acbe0ba42fe4207d8e9bb1', '110.93.244.255', 1642656121, '__ci_last_regenerate|i:1642656121;'),
('03ecbbd0f443698d8cb96b09f5ce0de8b27e3ee3', '110.93.244.255', 1643285460, '__ci_last_regenerate|i:1643285460;'),
('04034b987a774a5d52e4d2825f8755b805b03557', '110.93.244.255', 1644319200, '__ci_last_regenerate|i:1644319200;'),
('04053e791278fb28b0a0fd5be7661a80ccd2cc98', '110.93.244.255', 1642668328, '__ci_last_regenerate|i:1642668328;'),
('041795210c37a5b45be8eedfedfe2c8cafa3b83c', '110.93.244.255', 1643797983, '__ci_last_regenerate|i:1643797983;'),
('042d891988a2bd7f4bd033901510010b45822072', '110.93.244.255', 1643220556, '__ci_last_regenerate|i:1643220556;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:9:\"211212212\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:6:\"adadad\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('043022ddaacea5e6bf022c388628ab69826ed8b8', '110.93.244.255', 1643350612, '__ci_last_regenerate|i:1643350612;'),
('046604304e17afb4edbe59ca63469cd21f11140c', '110.93.244.255', 1642750027, '__ci_last_regenerate|i:1642749759;success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('04c702f02811f5aa4bcce058c6df8fd1f025fe55', '110.93.244.255', 1643721324, '__ci_last_regenerate|i:1643721324;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('05120a202ad7fcff008c85a966ee4b2894a7cda7', '110.93.244.255', 1643618023, '__ci_last_regenerate|i:1643618023;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('051b16dee41b42f43c6cc0f0909ef6fc3c8a094e', '110.93.244.255', 1644319198, '__ci_last_regenerate|i:1644319198;'),
('053d0917c88c7ec40bfd95fb2ecea8c087d57fdb', '110.93.244.255', 1643801770, '__ci_last_regenerate|i:1643801597;'),
('05cb190ec0f3e1f316c75fb5a2554aae2a40752f', '110.93.244.255', 1643883255, '__ci_last_regenerate|i:1643883255;'),
('05cfaf2b3f83f3caad9f09edae00ada0efb87a5a', '110.93.244.255', 1644238061, '__ci_last_regenerate|i:1644237765;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";msg|s:1:\"1\";__ci_vars|a:2:{s:3:\"msg\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}success|s:22:\"Submitted Successfully\";'),
('05de22e8ffe8b0d667051b318a5e8a956954c118', '110.93.244.255', 1644225763, '__ci_last_regenerate|i:1644225763;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('063c3c1b6c550615d64c49f09b717bf782ff70b2', '110.93.244.255', 1643362025, '__ci_last_regenerate|i:1643362025;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('06dd59c2f2c47eb485ceb8038174a2fe536f4596', '110.93.244.255', 1643092791, '__ci_last_regenerate|i:1643092762;'),
('072b685d01e1001ab1711df3aa875ab68241f885', '110.93.244.255', 1643003412, '__ci_last_regenerate|i:1643003411;'),
('074bfef0a8e3db7b8af673687579338541f3b507', '110.93.244.255', 1644221460, '__ci_last_regenerate|i:1644221460;'),
('074cce837d8a12b4e7c9d1e631ada44e92e7e5a9', '110.93.244.255', 1644319230, ''),
('0769874406dde897b41be8b206e81316354ed2ca', '110.93.244.255', 1644324259, '__ci_last_regenerate|i:1644324259;'),
('07957b7206351e7b2528f1c1b74fc90e2b0d24b8', '110.93.244.255', 1643795451, '__ci_last_regenerate|i:1643795451;'),
('07a958964785792280ef5370597c843434e3c2df', '110.93.244.255', 1643896300, '__ci_last_regenerate|i:1643896300;'),
('0823e59eeaf0fd35bdf33607233974713e074cbd', '110.93.244.255', 1643113874, '__ci_last_regenerate|i:1643113874;'),
('089a61c925a73b6f021e6b0581e2fc278a6f08b0', '110.93.244.255', 1643369827, '__ci_last_regenerate|i:1643369559;cart_contents|a:3:{s:10:\"cart_total\";d:362;s:11:\"total_items\";d:2;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:2;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:362;}}checkout_data|a:7:{s:4:\"name\";s:4:\"test\";s:5:\"phone\";s:11:\"12343234234\";s:5:\"email\";s:24:\"tauqeer.ahmed@oip.com.pk\";s:7:\"address\";s:12:\"rerefgfgdf12\";s:3:\"req\";s:0:\"\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:362;}'),
('08a6e59430f25e647ae2a8a79a0417f7e88e3a08', '110.93.244.255', 1644324324, ''),
('092eaf47a46256c00134293f55ad628526220fac', '110.93.244.255', 1644326037, ''),
('092f702b9beb77096372b6880402a3dd440c39b4', '110.93.244.255', 1643957553, '__ci_last_regenerate|i:1643957553;'),
('09d9fe2807f49bc411cd586f88e0e9281faaec8a', '110.93.244.255', 1643090098, '__ci_last_regenerate|i:1643090098;'),
('09e7846d29f4cee5be6341cc09a67eb86001941b', '110.93.244.255', 1644324283, ''),
('0a434335bed72efd89a43728a306d30cce0be342', '110.93.244.255', 1644401951, '__ci_last_regenerate|i:1644401951;'),
('0a4622911a989105922dee95b601039bb60d2518', '110.93.244.255', 1643876203, '__ci_last_regenerate|i:1643876203;'),
('0a82bfb1fa8169c345f3e3635f20ca1743b8a6e8', '110.93.244.255', 1643883340, '__ci_last_regenerate|i:1643883255;'),
('0ae5931da592d452ff5203e3b028dea4d1344b39', '110.93.244.255', 1644319230, ''),
('0afcb69efd4ac06f10e88041db3f89f59d463475', '110.93.244.255', 1643886843, '__ci_last_regenerate|i:1643886843;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('0aj62dmjjca69mm13gshvgcbsr5okv0d', '::1', 1642584562, '__ci_last_regenerate|i:1642584562;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0b4573a28364bcd376100f77b3cf5018326e3087', '110.93.244.255', 1644320868, ''),
('0b6e5a1a71328fb8888c3f4bd1dc0107606b42ca', '110.93.244.255', 1644329357, '__ci_last_regenerate|i:1644329357;'),
('0b934c0ef04bd738c5b3b0050333b101e2afb3da', '110.93.244.255', 1644320848, '__ci_last_regenerate|i:1644320848;'),
('0bf11ef689ecfb5bd33e3ade1469862448d51af7', '110.93.244.255', 1643282673, '__ci_last_regenerate|i:1643282673;'),
('0c35abf53aef87ae1dd2fb92af3e94c96c274541', '110.93.244.255', 1644215896, '__ci_last_regenerate|i:1644215896;'),
('0c52bdc2f2127abe47aab865287918432a901b59', '110.93.244.255', 1644320855, '__ci_last_regenerate|i:1644320855;'),
('0c74b14ea3f9ee8c6ff5b983fb6acad90e707496', '110.93.244.255', 1644320849, ''),
('0c96cf615c0935f35e2f795a37027a12e30ac51c', '110.93.244.255', 1643630834, '__ci_last_regenerate|i:1643630834;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('0cc87cb44f14992a1412e4fcf21cb91087528658', '110.93.244.255', 1644326038, ''),
('0d0c8e9be9f546cf21b2bd9c73b4595711aea0fa', '110.93.244.255', 1643274681, '__ci_last_regenerate|i:1643274681;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('0d5f4b1a738090d4561a76c4e83f55f3b9c03758', '110.93.244.255', 1642771702, '__ci_last_regenerate|i:1642771702;'),
('0d7d136b9743b80d596575416e0eb0d6f2bf7a4a', '110.93.244.255', 1643370279, '__ci_last_regenerate|i:1643370279;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('0d8743955d0dc5bb759ec0f154e4982a99f64e26', '110.93.244.255', 1643871623, '__ci_last_regenerate|i:1643871623;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0db48233d9ecd5394a73c4ef4f90bae71de9d685', '110.93.244.255', 1644325924, '__ci_last_regenerate|i:1644325924;'),
('0dbad9e35d5e0c69870276739bb81acd8bc6e8a2', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('0dbf9ec052a540c8fd563c918d27552e6341e085', '110.93.244.255', 1643802952, '__ci_last_regenerate|i:1643802952;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('0e19df69e8e6c251519aa078eb0091c7395fc638', '110.93.244.255', 1643284389, '__ci_last_regenerate|i:1643284389;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0e1c82e58a089bedd13a0ed51c79ec303a3855d1', '110.93.244.255', 1643983016, '__ci_last_regenerate|i:1643983016;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0e31a5d25996d51e8fd5ff34d54cea4a44b20680', '110.93.244.255', 1643092868, '__ci_last_regenerate|i:1643092868;'),
('0e412cd42e3133180bfa38ba79d5340f20f50bd3', '110.93.244.255', 1643282105, '__ci_last_regenerate|i:1643282105;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0e4640b417e83f6ad9cdccdb7202d363fdeeeb46', '110.93.244.255', 1644324687, '__ci_last_regenerate|i:1644324687;'),
('0e5ddcb7305c072fa88452bb07107504630d7107', '110.93.244.255', 1644319228, '__ci_last_regenerate|i:1644319228;'),
('0e9d785176b9b0c9d7f8c3d720e35e110f953191', '110.93.244.255', 1644320868, ''),
('0ecb8ed2d350bd8a9f2e96418074d827bee2db3e', '110.93.244.255', 1642766475, '__ci_last_regenerate|i:1642766475;'),
('0f1335a5f5b089bcb753205a98a85d0758ed8ceb', '110.93.244.255', 1643709239, '__ci_last_regenerate|i:1643709239;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('0f56b407aa6ed500280d4f04e74edb374d061302', '110.93.244.255', 1643794259, '__ci_last_regenerate|i:1643794259;'),
('0f60885a49a1a565c451b7402370dc081e204c78', '110.93.244.255', 1644401960, ''),
('0f6949536egjcnrl0klt5fev2qqg63gs', '::1', 1642579026, '__ci_last_regenerate|i:1642579026;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0f8b42ad16574475f60694002703e25c94014b9c', '110.93.244.255', 1643694329, '__ci_last_regenerate|i:1643694329;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('0fa2fb1ed3ba0f4390645301753e04b77b9ce7b5', '110.93.244.255', 1643100557, '__ci_last_regenerate|i:1643100557;'),
('0fad6a127bf155fa8326f38dd0559561688145ac', '110.93.244.255', 1643951631, '__ci_last_regenerate|i:1643951631;'),
('0fd3612c9a9b4f379f3ea421643c60553a07f2e3', '110.93.244.255', 1643883340, '__ci_last_regenerate|i:1643883340;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('0feb33dc48026efa55cd70e58065174341692a56', '110.93.244.255', 1644326036, ''),
('0hjmegdfqu5msfmpv3e6ajjctibrk9ug', '::1', 1642574223, '__ci_last_regenerate|i:1642574223;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Leila Gaines\";s:5:\"phone\";s:17:\"+1 (485) 455-6686\";s:5:\"email\";s:22:\"dikoxyq@mailinator.com\";s:7:\"address\";s:19:\"Ea dolore nesciunt \";s:3:\"req\";s:20:\"Exercitation duis an\";}cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('101f0c0e5d5820051a472331e9c88c7fac1350e2', '110.93.244.255', 1644228954, '__ci_last_regenerate|i:1644228954;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('10325422e20b0170cac0acac23b50869cc735942', '110.93.244.255', 1642660550, '__ci_last_regenerate|i:1642660550;'),
('1074303ca422ab3160da74214aad39e3abd1acf8', '110.93.244.255', 1644324986, '__ci_last_regenerate|i:1644324986;'),
('108ca935f22f8847650ab6795305ef42b8aabe44', '110.93.244.255', 1643093313, '__ci_last_regenerate|i:1643093313;'),
('10b70bff03c2bf041779e0b6e9c18ea7c3715577', '110.93.244.255', 1643887266, '__ci_last_regenerate|i:1643887266;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";checkout_cake_data|a:4:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:5:\"price\";s:3:\"900\";s:3:\"img\";s:11:\"cake611.png\";}success|s:18:\"Added Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('10e63171aa52c072280f63d0db5330a61a04b658', '110.93.244.255', 1644329359, '__ci_last_regenerate|i:1644329359;'),
('10fc8b706392a5b288da0fac681b4ac4cf7013f3', '110.93.244.255', 1643884374, '__ci_last_regenerate|i:1643884374;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('10fe5cba204f8fb4e560c29a4c7d7dc25d0cb399', '110.93.244.255', 1642656128, '__ci_last_regenerate|i:1642656128;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('113947f5551ef4355d2af47fa05daf24cf5e8773', '110.93.244.255', 1643218753, '__ci_last_regenerate|i:1643218753;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:9:\"211212212\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:6:\"adadad\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('11f931369e4bdd838a764ba5cbe6da7f16df25ec', '110.93.244.255', 1643008199, '__ci_last_regenerate|i:1643008163;'),
('12030d3f9b30b338fd167b95de0287e8bb5dce62', '110.93.244.255', 1644230046, '__ci_last_regenerate|i:1644230046;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}success|s:21:\"Updated Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('127ce1c9acacd9d5ddf8d9fd99c1d4989b64ab36', '110.93.244.255', 1644319230, ''),
('12d66d00d729a218a54db0a0a61e9aafcfdf3b1b', '110.93.244.255', 1644412166, '__ci_last_regenerate|i:1644412166;'),
('12legnec4j7vmqkbjo74acncl4t0f82d', '::1', 1642578150, '__ci_last_regenerate|i:1642578150;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('131186631cd6eddc1d2bf78b65c6dd613fa56722', '110.93.244.255', 1644401870, '__ci_last_regenerate|i:1644401870;'),
('1347598570d956e96409f7d66c6b43298d0e060c', '110.93.244.255', 1644401871, ''),
('1355455f719227c6c3595480e96a0e51b44c02f5', '110.93.244.255', 1644319226, '__ci_last_regenerate|i:1644319226;'),
('1403c32833783f0fb07be91340e93c81054a989e', '110.93.244.255', 1644326037, '__ci_last_regenerate|i:1644326037;'),
('14200e58c6f67cf231e02af75128697cc2e32425', '110.93.244.255', 1644329361, ''),
('142e3a444d5792959a51d1d82b0d63a2fec5b4e6', '110.93.244.255', 1643798664, '__ci_last_regenerate|i:1643798664;'),
('1457340d6743f256e0ddbfcba3bf5ab6c01882c3', '110.93.244.255', 1643801246, '__ci_last_regenerate|i:1643801246;'),
('15c5b3abfb2bcb49d855eaf72afbde08edd28811', '110.93.244.255', 1644319201, ''),
('15ed89aafd96628eedafe941afdc705b456ae033', '110.93.244.255', 1644324356, ''),
('16004e74fb0c47be595fd6da927ae469b4f7fa09', '110.93.244.255', 1643693957, '__ci_last_regenerate|i:1643693957;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('164ea00eef80534e974f026cb31dca4456ba654c', '110.93.244.255', 1644324283, ''),
('1655d28dfbedf466535f607da9587673d0db1747', '110.93.244.255', 1643869865, '__ci_last_regenerate|i:1643869865;'),
('1656d46b8f229c04644580b51b2f4d0b16b48d66', '110.93.244.255', 1644326035, '__ci_last_regenerate|i:1644326035;'),
('1680a802b73a26285461e2b14a5aacb5eb2b30d0', '110.93.244.255', 1644320869, ''),
('168343aa3242b631c4b9335927b84135459aafbe', '110.93.244.255', 1644325062, ''),
('16d0a0170732e947196f7fc7c3f8f3c5e4110ad9', '110.93.244.255', 1644401871, '__ci_last_regenerate|i:1644401871;'),
('171380bb1292ec00cef7ea23529bb64a67b74bda', '110.93.244.255', 1644319202, ''),
('176c97bff3e8a393981740e4d84a96f4b484bb04', '110.93.244.255', 1644401960, ''),
('17c24b93f074568a158418f47146baeef1b773a0', '110.93.244.255', 1644319200, '__ci_last_regenerate|i:1644319200;'),
('18338e5a7f8d61f1843411485d3df9dbe634da45', '110.93.244.255', 1642663153, '__ci_last_regenerate|i:1642663153;'),
('18348ed2ff02a1be6f2d7fcefa8df0066403bf58', '110.93.244.255', 1643892803, '__ci_last_regenerate|i:1643892803;'),
('18427ca105fdb163ec5426aa4434b56f36fb8431', '110.93.244.255', 1643873682, '__ci_last_regenerate|i:1643873682;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('18b9f5171a0ffe690cfbc82ab52ab7df6ae731b3', '110.93.244.255', 1643786433, '__ci_last_regenerate|i:1643786433;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('18d410217b40d570715dfeb124361b15b14454ad', '110.93.244.255', 1643361960, '__ci_last_regenerate|i:1643361960;'),
('1901bff41ba18384315b4830fe92914f151af4f3', '110.93.244.255', 1644329357, '__ci_last_regenerate|i:1644329357;'),
('1937722a63564829a595a4c3e395ecfe6956fb28', '110.93.244.255', 1643353108, '__ci_last_regenerate|i:1643353108;'),
('199389b8bc32af96b02ddf8a274ce6ff97d8d761', '110.93.244.255', 1643723891, '__ci_last_regenerate|i:1643723741;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('19a065d0b9d2e0fc3eeda19827f56ab9aaf812be', '110.93.244.255', 1642592524, '__ci_last_regenerate|i:1642592524;'),
('19d5e50e1e5f3def1079481daaeeb816ede4f2d4', '110.93.244.255', 1644320848, ''),
('19ff9b17a244bed457e8144fb1e6303b1a4ce3f9', '110.93.244.255', 1644402244, '__ci_last_regenerate|i:1644402244;'),
('1a841c42cdc5e7569750c2bf8efd4d26ec1e2d3d', '110.93.244.255', 1643347895, '__ci_last_regenerate|i:1643347895;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('1a8da5fc0dc87b0f339c8c5729ba5a2d0ac03d6c', '110.93.244.255', 1643722721, '__ci_last_regenerate|i:1643722721;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('1abf6f0685163d9dd6b53ca7835b332278ec1e80', '110.93.244.255', 1643885377, '__ci_last_regenerate|i:1643885377;'),
('1ac9458a1dec5b6ee3de4692f7c01b5dfce79a85', '110.93.244.255', 1644329360, ''),
('1aff7d88b56e720f0776eab362b33489ad9a4791', '110.93.244.255', 1644401872, ''),
('1b052c12aedbba809801eaa9db597de862284e50', '110.93.244.255', 1643953259, '__ci_last_regenerate|i:1643953259;'),
('1b21c7758aa63241fcf8496185d4ee9aad8c38f5', '110.93.244.255', 1643721787, '__ci_last_regenerate|i:1643721787;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('1b234ba7780c731098805acd5bb84ce504b169f7', '110.93.244.255', 1643951921, '__ci_last_regenerate|i:1643951921;'),
('1b3577a610685a2396879b21b9eb4ef13bafb853', '110.93.244.255', 1642765693, '__ci_last_regenerate|i:1642765693;'),
('1b3ac1047739173885a3a16f55a3fb4f9b32ba02', '110.93.244.255', 1644326038, ''),
('1b99601bb16f47ed1c4d7c747fd22aa0ce16a1a5', '110.93.244.255', 1643786199, '__ci_last_regenerate|i:1643786199;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}success|s:18:\"Added Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('1ba5d55ca5e68d8cbb45c15ccbb12cb6788d580c', '110.93.244.255', 1643957907, '__ci_last_regenerate|i:1643957907;'),
('1bb43579f5157e740b9413d276931e7f0fc7caef', '110.93.244.255', 1643213754, '__ci_last_regenerate|i:1643213754;'),
('1bf7489ed0223c4c327e7c59174b3b003f90c4d8', '110.93.244.255', 1643114178, '__ci_last_regenerate|i:1643114178;'),
('1bffbfda9ea39d7df2f05907a5a82837babb8091', '110.93.244.255', 1644324707, '__ci_last_regenerate|i:1644324707;'),
('1c04a2b3e30032667b07357f4ffa08dbb3012897', '110.93.244.255', 1643890530, '__ci_last_regenerate|i:1643890530;'),
('1c280eb41ed0ddf988ebb3c7b6145bf806f127b9', '110.93.244.255', 1643354260, '__ci_last_regenerate|i:1643354260;'),
('1c6860691fdf02130483aa016a7d231375841160', '110.93.244.255', 1643953589, '__ci_last_regenerate|i:1643953589;'),
('1c8842e9124a05788bf2fc39b4a62f70166582a1', '110.93.244.255', 1644329362, ''),
('1cee7682a8d37c5aef9df2f5dab7fe4ac840f622', '110.93.244.255', 1643866844, '__ci_last_regenerate|i:1643866844;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('1d07c5ccae85e34fad3c9db52777a9e913bdc993', '110.93.244.255', 1643292557, '__ci_last_regenerate|i:1643292557;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('1d22757a4841124d75f3bb424536f593cd82266c', '110.93.244.255', 1642747468, '__ci_last_regenerate|i:1642747468;'),
('1da7e48e63ccc31428818de47d109eabbcc2c453', '110.93.244.255', 1643288248, '__ci_last_regenerate|i:1643288232;cart_contents|a:3:{s:10:\"cart_total\";d:218;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}}'),
('1dab350a56a516d3ebab6ca322bf06513c39d3de', '110.93.244.255', 1643876431, '__ci_last_regenerate|i:1643876253;'),
('1dd4e15341d67fc0da4cdf09ed83aa29a7a2375c', '110.93.244.255', 1643897085, '__ci_last_regenerate|i:1643897085;'),
('1ded79e91ab3812bc3cb5a8df9ca5b7db398a364', '110.93.244.255', 1643367241, '__ci_last_regenerate|i:1643367241;'),
('1df4919239b917ad375c1244588498d1ec31713f', '110.93.244.255', 1644319200, ''),
('1e51f5128fc6426429cd1d7b0acea32a384edddb', '110.93.244.255', 1644320848, ''),
('1e588c6684df930155d071e979f9387cae2f3ffc', '110.93.244.255', 1643957203, '__ci_last_regenerate|i:1643957203;'),
('1e7dc6a4f41a85baaac56462c83278f1ea119b17', '110.93.244.255', 1643289758, '__ci_last_regenerate|i:1643289758;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('1e8ca565690e42bbbb61cb8aa05a22bdad08fbd3', '110.93.244.255', 1643369068, '__ci_last_regenerate|i:1643369068;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('1ea8f3c9cf208a31075ed22f2d2670c7ecb93f04', '110.93.244.255', 1643350256, '__ci_last_regenerate|i:1643350256;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('1ed49f8411e82daf61f1be64f8b4709e92256a0f', '110.93.244.255', 1642663838, '__ci_last_regenerate|i:1642663838;cart_contents|a:4:{s:10:\"cart_total\";d:923;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:814;}}'),
('1ee38ef69f683766d36f5dd7a52a53972db15d8e', '110.93.244.255', 1643776216, '__ci_last_regenerate|i:1643776216;'),
('1ef2c2df5df5d0bde61c87bd666bac34c058b44c', '110.93.244.255', 1644324260, '__ci_last_regenerate|i:1644324260;'),
('1f01d2f729a2b55ede33688d5617ba0d0af94f8b', '110.93.244.255', 1642590195, '__ci_last_regenerate|i:1642590195;'),
('1f2a4cee77f7caeb35d9bce814cc67ef6d01ae2f', '110.93.244.255', 1643691404, '__ci_last_regenerate|i:1643691404;'),
('1f58af2fb239d051042d53f6301971c268fd5b9f', '110.93.244.255', 1643784916, '__ci_last_regenerate|i:1643784916;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:21:\"Assigned Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('1fa7482826e0fb1d6e353a6c4cc7ee4aad8cf9cf', '110.93.244.255', 1643287716, '__ci_last_regenerate|i:1643287716;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('1rjfiip54iddvs0727s48bajd42bcqo2', '::1', 1642573892, '__ci_last_regenerate|i:1642573892;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:14:\"Steel Morrison\";s:5:\"phone\";s:17:\"+1 (932) 302-1587\";s:5:\"email\";s:24:\"hicabicit@mailinator.com\";s:7:\"address\";s:20:\"Autem omnis saepe et\";s:3:\"req\";s:20:\"Earum voluptate moll\";}'),
('20083a81c8a46b1f057cfb397ab611450127586c', '110.93.244.255', 1643367620, '__ci_last_regenerate|i:1643367620;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('20bfa32f75bcd8ac6443389a44ec424ff2e86668', '110.93.244.255', 1644320847, ''),
('20f7d8971fe72fdc00a86e28650912e34c1b0f85', '110.93.244.255', 1642595665, '__ci_last_regenerate|i:1642595665;'),
('21008f0c7e85a430c6e449b7de97c8881b014719', '110.93.244.255', 1643352264, '__ci_last_regenerate|i:1643352264;'),
('2126fe0ebddce9d573d3813a1f0bf3e5443af853', '110.93.244.255', 1643783212, '__ci_last_regenerate|i:1643783212;'),
('212e4c4ee9f6f23bb33b4ab3a1cd80133f90a470', '110.93.244.255', 1643892744, '__ci_last_regenerate|i:1643892744;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('217bbb55c061f0010d156f84db244048a181e615', '110.93.244.255', 1643870869, '__ci_last_regenerate|i:1643870869;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('2192d63bbc46c4bfff257559a73c4993b9e5a781', '110.93.244.255', 1643984160, '__ci_last_regenerate|i:1643984160;'),
('21fe938ae390029123227fc22dd777c32e77fee5', '110.93.244.255', 1642595160, '__ci_last_regenerate|i:1642595155;'),
('224cbb6a70295481a1e368e2385939be1cff0859', '110.93.244.255', 1644320847, '__ci_last_regenerate|i:1644320847;'),
('226881f0caee845068a1eb4cf3a5453d0198201f', '110.93.244.255', 1643787470, '__ci_last_regenerate|i:1643787470;'),
('2296d074b7afe093bde2cf38554c5fc949afb07f', '110.93.244.255', 1644324260, ''),
('22b8eb5bdd084bd7af96fa3729c9eadfc001af21', '110.93.244.255', 1643695624, '__ci_last_regenerate|i:1643695624;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Tamara Craft\";s:5:\"phone\";s:17:\"+1 (212) 932-4202\";s:5:\"email\";s:24:\"fopyqyzeh@mailinator.com\";s:7:\"address\";s:20:\"Sapiente irure eum s\";s:3:\"req\";s:20:\"Ut corporis cumque c\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1020;}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('22c626caf43117a9e01462f84e7f208671d2d636', '110.93.244.255', 1644326036, '__ci_last_regenerate|i:1644326036;'),
('23862fb90d3e147dd4f582c41badbcd677cf6f9b', '110.93.244.255', 1643286492, '__ci_last_regenerate|i:1643286492;'),
('2388c43a38d9a8eae193cfc61e1f1cf09e0a826d', '182.190.105.82', 1644250270, '__ci_last_regenerate|i:1644250170;'),
('23c67369b8d62d94805d181e9ee9dbbcc1c1c21d', '110.93.244.255', 1644319228, ''),
('23dd904da8b4480339790c934b0233e04fd98d9c', '110.93.244.255', 1644324260, ''),
('23f5f878c7c0a3d47b26597199b4e17d55a5caa9', '110.93.244.255', 1643891783, '__ci_last_regenerate|i:1643891783;'),
('241d2fa24d5193ed745878a878ea9db6bb88b59c', '110.93.244.255', 1644319230, '');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('242b2caf537e977f9c85a76f00d902dabf2830a5', '110.93.244.255', 1643613479, '__ci_last_regenerate|i:1643613479;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('242dfa3729264b4aa42db60f6666793d91c1cd01', '110.93.244.255', 1643348210, '__ci_last_regenerate|i:1643348210;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('24a9a66b441a81b08c0e9e936736bf9394f51ddd', '110.93.244.255', 1642592700, '__ci_last_regenerate|i:1642592700;'),
('24bec9a482d98597988c98ecae1ab0f1a8c78a38', '110.93.244.255', 1644324688, ''),
('24cadbeb0e7555033b5711e938f4cdc3436cb04e', '110.93.244.255', 1644329361, ''),
('25231ac666653861a8e7b4308d48d1d8413ab032', '110.93.244.255', 1643701807, '__ci_last_regenerate|i:1643701807;cart_contents|a:5:{s:10:\"cart_total\";d:802;s:11:\"total_items\";d:3;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}checkout_data|a:7:{s:4:\"name\";s:11:\"greycapital\";s:5:\"phone\";s:8:\"54463512\";s:5:\"email\";s:25:\"shair.mohammed@oip.com.pk\";s:7:\"address\";s:5:\"saefg\";s:3:\"req\";s:7:\"zzzzzzz\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:802;}'),
('254172e00487e70abbf3ba5c2eef6472c4d80dfa', '110.93.244.255', 1642770377, '__ci_last_regenerate|i:1642770377;'),
('2547961e3ed07a8e64f17b5358898b8c0a7c66be', '110.93.244.255', 1643956716, '__ci_last_regenerate|i:1643956716;'),
('2624954d901dc7c6389094203f4415e77dfbf1a6', '110.93.244.255', 1644401952, ''),
('262c95c5e855a765af1581e924ebaa7a5b4d6cc7', '110.93.244.255', 1642771401, '__ci_last_regenerate|i:1642771401;'),
('267d45322803e5180312b9467fe91988bc192c45', '110.93.244.255', 1643219895, '__ci_last_regenerate|i:1643219895;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:9:\"211212212\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:6:\"adadad\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('26a9fe666cc58a7fea3101c4e977b2a74277c7e7', '110.93.244.255', 1643692994, '__ci_last_regenerate|i:1643692994;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('26ae39e903127186c93ec33957d4693408bc4b2f', '110.93.244.255', 1643351307, '__ci_last_regenerate|i:1643351307;'),
('26b5238792c99348ab7069d5604cc53a435776fb', '110.93.244.255', 1643699697, '__ci_last_regenerate|i:1643699697;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:819;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Carlos Hogan\";s:5:\"phone\";s:17:\"+1 (512) 567-9551\";s:5:\"email\";s:25:\"gucigefyry@mailinator.com\";s:7:\"address\";s:19:\"Commodo delectus de\";s:3:\"req\";s:20:\"Est minus voluptatem\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:819;}'),
('26e9b9d9b16eb902dadd4d5d43a8bf562237d8e5', '110.93.244.255', 1644401872, '__ci_last_regenerate|i:1644401872;'),
('26f1b3441911191b8786a3e2b0b44c975942aa56', '110.93.244.255', 1643779436, '__ci_last_regenerate|i:1643779436;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:181;s:11:\"total_items\";d:1;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:18:\"Benjamin Wilkinson\";s:5:\"phone\";s:17:\"+1 (961) 759-3334\";s:5:\"email\";s:20:\"pupow@mailinator.com\";s:7:\"address\";s:20:\"Facilis aut aute ver\";s:3:\"req\";s:18:\"Amet sunt tempora \";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:181;}'),
('2783c302218eeb7a9a77ab5cd9537b7aeee4361a', '110.93.244.255', 1643870146, '__ci_last_regenerate|i:1643869865;'),
('2798bba93c8b80609baa9cf2e85c170e31d60130', '110.93.244.255', 1643716915, '__ci_last_regenerate|i:1643716915;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('27f1fe030d5bdb2a7a455f427ee3a94e40bd0b3d', '110.93.244.255', 1643354736, '__ci_last_regenerate|i:1643354736;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('2807e43620bed2b43a5fcfa42c1ae5029f6d7fab', '110.93.244.255', 1643888674, '__ci_last_regenerate|i:1643888674;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";checkout_cake_data|a:4:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:5:\"price\";s:3:\"900\";s:3:\"img\";s:11:\"cake611.png\";}'),
('288f46e30d43a624bfe26faf380a4988b062c916', '110.93.244.255', 1644320665, '__ci_last_regenerate|i:1644320648;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:8:\"logo.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('28928d92b1e07a00d0fb08a75bf4fcb61f46a799', '110.93.244.255', 1643886485, '__ci_last_regenerate|i:1643886485;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('28f44fcc0ed3bac4089ed6a70c283236d050b092', '110.93.244.255', 1643365914, '__ci_last_regenerate|i:1643365914;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('290dbaf9cccc6ce1764153eb85649d991a04a3d1', '110.93.244.255', 1643363942, '__ci_last_regenerate|i:1643363942;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('299fac10ab7dbfb44485551bb66dd3bb17d01ae2', '110.93.244.255', 1644216217, '__ci_last_regenerate|i:1644216217;'),
('2a1524394c5259deb02a696fd42adf444fc834e7', '110.93.244.255', 1643621279, '__ci_last_regenerate|i:1643621279;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('2a166f9bebf3086ce9956cfe128390f827f3edb4', '110.93.244.255', 1643281654, '__ci_last_regenerate|i:1643281654;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('2a50f4565e80200fe7def9a2e710943564ad0ef3', '110.93.244.255', 1642658483, '__ci_last_regenerate|i:1642658483;'),
('2a776a6f1740eb84a673aa6ea13894f5279c53f1', '110.93.244.255', 1643355894, '__ci_last_regenerate|i:1643355894;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('2a7b10438add644104e26d215acf3cd753cdd52a', '110.93.244.255', 1643894555, '__ci_last_regenerate|i:1643894555;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('2aad93bd78b50546f9b3c68b6138830586663b0e', '110.93.244.255', 1644325918, ''),
('2adf6905f5b3b3bf7558f95028d10ee9d898fe8f', '110.93.244.255', 1644324259, ''),
('2b24d025990754b68f68be790abd5382934f92a0', '110.93.244.255', 1643714865, '__ci_last_regenerate|i:1643714865;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('2b505e858b514b2998843a25a81c909b25138a9c', '110.93.244.255', 1643212941, '__ci_last_regenerate|i:1643212941;'),
('2b6d883659b2e0b0d20dea6e853bdfe640e7cc56', '110.93.244.255', 1643624256, '__ci_last_regenerate|i:1643624256;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('2bb5fbcf70cbdc419c349517ad970cebd26bd2c8', '110.93.244.255', 1643883663, '__ci_last_regenerate|i:1643883663;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:181;s:11:\"total_items\";d:1;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('2bfadc65fa7549bd9423a1b485df8ea79794137b', '110.93.244.255', 1643889070, '__ci_last_regenerate|i:1643889070;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('2c0f832f47a0aec73e85220d1145bb645674456c', '110.93.244.255', 1644326036, ''),
('2c2d08f3ab5ce8855cf3b7c985a51eb4e5d75daf', '110.93.244.255', 1644219352, '__ci_last_regenerate|i:1644219296;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('2ce3148f85203bc16452bbb4ae7f6c07b85494a1', '110.93.244.255', 1644225460, '__ci_last_regenerate|i:1644225460;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('2ce6ce832d82df23c33e3d0de74872341fc7268a', '110.93.244.255', 1643348618, '__ci_last_regenerate|i:1643348618;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('2cfa9bd3b6c9a230d1da7cd29e1348daea52521e', '110.93.244.255', 1642767543, '__ci_last_regenerate|i:1642767543;'),
('2d1395249c9b0ac5eb802f37d9ea064b5b7d0fa6', '110.93.244.255', 1644234223, '__ci_last_regenerate|i:1644234223;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('2d1a5d10a16c8f01784da73f90e173a8a4f642ad', '110.93.244.255', 1644401871, ''),
('2d36e9fbab9b6f94ebcb334b824708167f55f4ce', '110.93.244.255', 1644320848, '__ci_last_regenerate|i:1644320848;'),
('2d638d397e3c76c8d5475870155e21967692551e', '110.93.244.255', 1644325384, '__ci_last_regenerate|i:1644325384;'),
('2d651a1d299b26cfd266d63dd0ebd9c5b5782d31', '110.93.244.255', 1642662013, '__ci_last_regenerate|i:1642662013;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('2d66303457d5441dd346c62e5c2a681324cb3618', '110.93.244.255', 1643620939, '__ci_last_regenerate|i:1643620939;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('2dc7542a33ff85b788a707e5d0218e2f67b17240', '110.93.244.255', 1644401872, ''),
('2dd8dbcfe714e5d60190ec94440a0abac3021023', '110.93.244.255', 1644326036, ''),
('2df60dab8a14d2e9b70aae0fea093a871c335807', '110.93.244.255', 1644319228, ''),
('2dfb197bede58f0c21e4df34e194a4396d5b6c4d', '110.93.244.255', 1642657100, '__ci_last_regenerate|i:1642657100;'),
('2dfc08d1e0ff2a3cdc050c601bb699f7757b9805', '110.93.244.255', 1643780065, '__ci_last_regenerate|i:1643780065;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:1205;s:11:\"total_items\";d:3;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}}checkout_data|a:7:{s:4:\"name\";s:18:\"Benjamin Wilkinson\";s:5:\"phone\";s:17:\"+1 (961) 759-3334\";s:5:\"email\";s:20:\"pupow@mailinator.com\";s:7:\"address\";s:20:\"Facilis aut aute ver\";s:3:\"req\";s:18:\"Amet sunt tempora \";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:181;}'),
('2e0c15bab542028b4965b17f23549c07b139757b', '110.93.244.255', 1643089716, '__ci_last_regenerate|i:1643089716;'),
('2e70e4e8ca2850bbcf3a952f2db6bd252ad89cd8', '110.93.244.255', 1644329357, '__ci_last_regenerate|i:1644329357;'),
('2e8bdfeb6398f9d6e32e7efed766ce0c010e7b42', '110.93.244.255', 1643364043, '__ci_last_regenerate|i:1643364043;'),
('2ebdaed4c6159a7b09a964b4855007e2c0c59497', '110.93.244.255', 1643287965, '__ci_last_regenerate|i:1643287965;'),
('2f81cdeed7a006ea748d4345aed952018b073ab6', '110.93.244.255', 1643709642, '__ci_last_regenerate|i:1643709642;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('2f95db3e67ebfdc960e33f2a8f0b9037f98f75be', '110.93.244.255', 1644324712, ''),
('2fba0180d49fe03f39180a5cc7fa210ed024c483', '110.93.244.255', 1643362708, '__ci_last_regenerate|i:1643362708;'),
('2ssjahomgornoscdh5cmlju2mqj1rnph', '::1', 1642576051, '__ci_last_regenerate|i:1642576051;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('31112d9f3020cdebbb3e36d367d595f3ab58189a', '110.93.244.255', 1643349822, '__ci_last_regenerate|i:1643349822;'),
('311f63a50731fd975d3e08790187b324e46856d3', '110.93.244.255', 1643287588, '__ci_last_regenerate|i:1643287588;'),
('315afc04b04b48ca9211624cd0da37ac9fdae914', '110.93.244.255', 1643788083, '__ci_last_regenerate|i:1643788083;'),
('31621848d6db6c4d0656daacf6b25bf810cc8cf1', '110.93.244.255', 1644320869, ''),
('319c2d51e2ea3fe0e006017ebd5de6293d061a92', '110.93.244.255', 1644319203, ''),
('325fa9ef4450e14a245f3a5bc0504de9a364865d', '110.93.244.255', 1642661214, '__ci_last_regenerate|i:1642661214;'),
('326950ae898ea54f2e39baa808790bf351216ea4', '110.93.244.255', 1643290383, '__ci_last_regenerate|i:1643290383;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('32896abd25cfd0f77799acd254a00434aae65473', '110.93.244.255', 1644242423, '__ci_last_regenerate|i:1644242423;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('32e8666ab85351c61a8938d1b67e00ed37deaea0', '110.93.244.255', 1644218777, '__ci_last_regenerate|i:1644218777;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('32l8unfpg167h88d7a7l1eb1hel4qcq8', '::1', 1642585559, '__ci_last_regenerate|i:1642585559;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Xerxes Owens\";s:5:\"phone\";s:17:\"+1 (868) 537-2898\";s:5:\"email\";s:20:\"pixyw@mailinator.com\";s:7:\"address\";s:20:\"Deserunt libero moll\";s:3:\"req\";s:19:\"Voluptate velit bea\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('33293dd07f0b529295b12487a84b9a73294ef91b', '110.93.244.255', 1642656475, '__ci_last_regenerate|i:1642656475;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('332e3820e84b820dedc22c1d0534c994bd26012a', '110.93.244.255', 1643222324, '__ci_last_regenerate|i:1643222202;checkout_data|a:6:{s:4:\"name\";s:6:\"hassan\";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:14:\"admin@demo.com\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";i:0;}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('3335e3233d33f7d464d914180d28868533e81cae', '110.93.244.255', 1643884459, '__ci_last_regenerate|i:1643884459;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:900;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:3:\"qty\";d:1;s:5:\"price\";d:900;s:3:\"img\";s:11:\"cake611.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:900;}}'),
('3338ab19a52a378c60f18669a0fa97626da5b390', '110.93.244.255', 1644324261, ''),
('335f694da9d0a25e0abc79ab67a4a15f0776fa45', '110.93.244.255', 1643701274, '__ci_last_regenerate|i:1643701274;cart_contents|a:5:{s:10:\"cart_total\";d:999;s:11:\"total_items\";d:3;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:7:\"Zeeshan\";s:5:\"phone\";s:7:\"0216565\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:6:\"asdasd\";s:3:\"req\";s:9:\"qweqweqwe\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:999;}'),
('337209277eb87af25fba1ff91a57294f58824fc1', '110.93.244.255', 1643783506, '__ci_last_regenerate|i:1643783506;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('338af4e834c2a1b1175a1499b986d911b317f3f1', '110.93.244.255', 1643801597, '__ci_last_regenerate|i:1643801597;'),
('33981900ec3bd239b34c13b1847cdf86e5aec438', '110.93.244.255', 1644326038, ''),
('339ltgdake3mdeebumhmf1vt4v77f723', '::1', 1642578724, '__ci_last_regenerate|i:1642578724;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('33e17e4f29dd14ce3e750de78819c27c3d1ca2bd', '110.93.244.255', 1644329358, '__ci_last_regenerate|i:1644329358;'),
('343771fc3c1a30275f754802d0b7d7b31ca84d5c', '110.93.244.255', 1644224316, '__ci_last_regenerate|i:1644224316;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:21:\"Updated Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('343fea7510d05064c66b4a0d694f52b432b010c3', '110.93.244.255', 1643221896, '__ci_last_regenerate|i:1643221896;checkout_data|a:6:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";i:0;}cart_contents|a:4:{s:10:\"cart_total\";d:814;s:11:\"total_items\";d:2;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('3481a0100532901de6c57898c3e803d8e8aa1ff2', '110.93.244.255', 1644319229, ''),
('34a59f384243478667d582f4494690a815071e9c', '110.93.244.255', 1644319199, '__ci_last_regenerate|i:1644319199;'),
('34f0035fde5d76876d2e61a35a5acedcdcef3378', '110.93.244.255', 1644319228, ''),
('350707ead003ce149ed4b6a8a3f49a827f5790cf', '110.93.244.255', 1644324698, ''),
('351eb22b7dce75d76e3f2379d651b6ac9e95e000', '110.93.244.255', 1644322534, '__ci_last_regenerate|i:1644322534;'),
('353cf2a142ad3853f7d0e7157909ff6927488cc9', '110.93.244.255', 1643345470, '__ci_last_regenerate|i:1643345470;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";cart_contents|a:5:{s:10:\"cart_total\";d:654;s:11:\"total_items\";d:3;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('357863b4d83b159621d45ac7530dfad042028b30', '110.93.244.255', 1643878435, '__ci_last_regenerate|i:1643878435;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('35896b156334ef3c7c1f23353ba1925db6a7674e', '110.93.244.255', 1644401871, ''),
('358c67cc7d0cd6cb7d18f835629994607a07b25b', '110.93.244.255', 1643691358, '__ci_last_regenerate|i:1643691358;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('36274b3cc6d0bb1985ba222497eb5c5cd3bf35de', '110.93.244.255', 1643220866, '__ci_last_regenerate|i:1643220866;checkout_data|a:6:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:14:\"admin@demo.com\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:20:\"Accusamus neque inci\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('36749bf25d9ed30ed341fd2661521faf03d8c888', '110.93.244.255', 1643293663, '__ci_last_regenerate|i:1643293461;cart_contents|a:4:{s:10:\"cart_total\";d:473;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('3679ae7d03b4c61802ebec7250dfe3d52c47bb88', '110.93.244.255', 1642760058, '__ci_last_regenerate|i:1642760058;'),
('367fd887310d68c051fcf51e445cf168fe84f354', '110.93.244.255', 1643376482, '__ci_last_regenerate|i:1643376482;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('3683e48d7e2a4240d15a299c5a5ffb8301d419fc', '110.93.244.255', 1643612684, '__ci_last_regenerate|i:1643612684;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('3691fdff6c792a4a9ce35a04892460f044a8c291', '110.93.244.255', 1644319228, ''),
('36b630fe0598874fc12442f835fe988a5ec55973', '110.93.244.255', 1644324708, ''),
('373355bfb1e9f1d973a24d5b71a9d1e0c3b276a3', '110.93.244.255', 1644402596, '__ci_last_regenerate|i:1644402596;'),
('3743e24a60d5c3de325d508e73e88e94813b5d1e', '110.93.244.255', 1643706685, '__ci_last_regenerate|i:1643706685;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:1:\"z\";s:5:\"phone\";s:15:\"343453453445435\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:6:\"asdasd\";s:3:\"req\";s:9:\"asdasdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('37d62f4327397d46607263b73300dd0c70ae22b3', '110.93.244.255', 1643362289, '__ci_last_regenerate|i:1643362289;'),
('37f67027606327aec703c28d2e67124c945fc6c3', '110.93.244.255', 1642745163, '__ci_last_regenerate|i:1642745163;'),
('382313a30ab9d2bb517425c23258c35b3c639d4f', '110.93.244.255', 1644324698, '__ci_last_regenerate|i:1644324698;'),
('38cffb2657337fc85b85b1b352d6358c4a84b1df', '110.93.244.255', 1642659543, '__ci_last_regenerate|i:1642659543;'),
('3921a2d27d86132cedf0d838afbadbef3bda94ce', '110.93.244.255', 1643892225, '__ci_last_regenerate|i:1643892225;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('3a9c597b6d278a2ab49a061c36b3a0bba84a2abb', '110.93.244.255', 1644320868, ''),
('3ab257e296033e04feaf7fe0802753ec9a7df51b', '110.93.244.255', 1643890734, '__ci_last_regenerate|i:1643890734;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('3ab4dc310bb4729f77b566bda0e622b135a99261', '110.93.244.255', 1643711001, '__ci_last_regenerate|i:1643711001;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('3b01a568306e87a285a28fe9684bc3ae864a0adb', '110.93.244.255', 1644329358, '__ci_last_regenerate|i:1644329358;'),
('3b037020291852d79bb451bc690075f69c3ba953', '110.93.244.255', 1644243092, '__ci_last_regenerate|i:1644243092;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('3b4a6c6c660b918dd62c22fb0b0d16ab81c56d41', '110.93.244.255', 1643354430, '__ci_last_regenerate|i:1643354430;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('3bd693873aaee0da0da094ba58d97a62260c674d', '110.93.244.255', 1642595155, '__ci_last_regenerate|i:1642595155;'),
('3bdbb530bf968649492ff8bd3ee5fbfc011f7f42', '110.93.244.255', 1642598046, '__ci_last_regenerate|i:1642597948;'),
('3c30c2a5ac87e509630af5754bd171219e007941', '110.93.244.255', 1644319201, ''),
('3c3a8b3c94a3a83c5abb1f0aba7a7b1ee957a7d0', '110.93.244.255', 1643365927, '__ci_last_regenerate|i:1643365927;'),
('3ccdb0b8c949ed479a2f7baed1231f4f108df588', '110.93.244.255', 1644323435, '__ci_last_regenerate|i:1644323435;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('3cd7a72dcac8e333cb36f753d5b113602aad145b', '110.93.244.255', 1644319201, ''),
('3d23ak12taakubdea5g03c3su0ivjkq9', '::1', 1642569329, '__ci_last_regenerate|i:1642569329;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Lester Payne\";s:5:\"phone\";s:17:\"+1 (179) 773-5099\";s:5:\"email\";s:24:\"xucylegef@mailinator.com\";s:7:\"address\";s:19:\"Quis pariatur Dolor\";s:3:\"req\";s:19:\"Iste culpa non accu\";}cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('3d3845b16983018d574b96c817b2f78d73fb9b0a', '110.93.244.255', 1643886963, '__ci_last_regenerate|i:1643886963;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:900;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:3:\"qty\";d:1;s:5:\"price\";d:900;s:3:\"img\";s:11:\"cake611.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:900;}}'),
('3d622341d40cbf2f142ef076c96199d11c379e3d', '110.93.244.255', 1643793016, '__ci_last_regenerate|i:1643793016;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('3d7b6b4e21c2c9af7d504ddac66bd1b7bc903a86', '110.93.244.255', 1644324707, ''),
('3dc7a15b89bc4f71d641f2caee763ebc6bbfb87c', '110.93.244.255', 1644229300, '__ci_last_regenerate|i:1644229300;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('3dfff7604da63ef23ac7df6cf8c3bd9ee1ef65fb', '110.93.244.255', 1644324356, ''),
('3e2dcc114e9088c62c28d50960f85fe72ed14f90', '110.93.244.255', 1644319198, '__ci_last_regenerate|i:1644319198;'),
('3f05d282eb11f1566dfc60127de4ab5964281a13', '110.93.244.255', 1644225134, '__ci_last_regenerate|i:1644225134;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('3f31c9e7661a3c1ef3fab18321b8fceed9791797', '110.93.244.255', 1643209783, '__ci_last_regenerate|i:1643209783;'),
('3f54b36be2715a04d76e05c51e6cd2abbfca0d53', '110.93.244.255', 1644326038, ''),
('3f6a417677296e7e2a39b6dfb972b6b841d2ca54', '110.93.244.255', 1643723023, '__ci_last_regenerate|i:1643723023;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('3f88ddd3fe1d4d73a4ea46b9b7fb3d9be1252666', '110.93.244.255', 1644324259, '__ci_last_regenerate|i:1644324259;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3pv5jft38d9adr1j5k0u140ob8fn28so', '::1', 1642577805, '__ci_last_regenerate|i:1642577805;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('4039a261d7541ebdb0b14d26a30872f60ea0752b', '110.93.244.255', 1643893799, '__ci_last_regenerate|i:1643893799;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('4039b0f43b6f8884a0330785fc48c054c1deb31d', '110.93.244.255', 1643718938, '__ci_last_regenerate|i:1643718938;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:21:\"Assigned Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('406739b32994a09709dd20ffc3d82e2dc6d5deb8', '110.93.244.255', 1643781774, '__ci_last_regenerate|i:1643781774;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('40c5eaa312d248a6509213b8a030fb387d1c369e', '110.93.244.255', 1644320868, ''),
('40d3dab53e0a3e23e2ff30224a2e785ea3888cc6', '110.93.244.255', 1643897613, '__ci_last_regenerate|i:1643897613;'),
('40daf0be62408ca5f45275deb6aaefd5c67c0cbb', '110.93.244.255', 1643281638, '__ci_last_regenerate|i:1643281638;'),
('40eadfca09aac4833aece9d466dfae74c7bc18c0', '110.93.244.255', 1644305348, '__ci_last_regenerate|i:1644305348;'),
('411434cf318888bd619bbe6d7e388c75879d9ad5', '110.93.244.255', 1644319201, '__ci_last_regenerate|i:1644319201;'),
('416141e69688f84553378c756f32b0ae03b55813', '110.93.244.255', 1644234590, '__ci_last_regenerate|i:1644234590;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:5:{s:10:\"cart_total\";d:763;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Hiroko Velez\";s:5:\"phone\";s:17:\"+1 (885) 272-2231\";s:5:\"email\";s:22:\"gyjitin@mailinator.com\";s:7:\"address\";s:20:\"Nobis aute est enim \";s:3:\"req\";s:19:\"Nihil laudantium sa\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:763;}'),
('4197d2efa7b9c8c11e4f8545df1ba348e07bd54f', '110.93.244.255', 1643878579, '__ci_last_regenerate|i:1643878579;'),
('41bf369354cca38388f73cf6feeba5997f3e9bbb', '110.93.244.255', 1643715209, '__ci_last_regenerate|i:1643715209;cart_contents|a:5:{s:10:\"cart_total\";d:985;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (489) 239-4387\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:985;}'),
('425a89e804805696eb3851abbe7a9fdd1652713c', '110.93.244.255', 1644324260, ''),
('4277f17c9ae9faef675de2497181f9d1aa030043', '110.93.244.255', 1643719869, '__ci_last_regenerate|i:1643719869;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:578;s:11:\"total_items\";d:2;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:6:\"Hassan\";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('42bdf530433a9fe655bbf46c75926b60059d9c78', '110.93.244.255', 1643884690, '__ci_last_regenerate|i:1643884690;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('42c54395ae04ca60b1f38df22bde27dde1b13958', '110.93.244.255', 1644236643, '__ci_last_regenerate|i:1644236643;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('4310f291371f07b887e6e21307737205da172f4e', '110.93.244.255', 1643984786, '__ci_last_regenerate|i:1643984759;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('4369634e41defd2d19a20dd5c23e47846c570147', '110.93.244.255', 1643711868, '__ci_last_regenerate|i:1643711795;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('44739dca6d997e4727157421c6f33df7bccfea5b', '110.93.244.255', 1644324688, ''),
('4475c4b6ebd0cf4b20ee7b835990c97a95b51f1b', '110.93.244.255', 1643630956, '__ci_last_regenerate|i:1643630834;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('447a9f939f75bc356c1e0c7a956df4b15c199b5a', '110.93.244.255', 1644319229, ''),
('465d7e0950155fbc9bf5a8e33575b59e4b358bd3', '110.93.244.255', 1644319199, ''),
('467eb1489b0ec9e39251ca07df61da12d3dc87f3', '110.93.244.255', 1642591958, '__ci_last_regenerate|i:1642591958;'),
('4686f668657c2b2d3007bae32148c39577e12e33', '110.93.244.255', 1643693648, '__ci_last_regenerate|i:1643693648;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('4698f3994e2ceb7055cd1a1f269dda6d9f1f1373', '110.93.244.255', 1643222202, '__ci_last_regenerate|i:1643222202;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:14:\"admin@demo.com\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:20:\"Ea aut repudiandae e\";s:3:\"cod\";i:0;}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('46f790ce373da6ae5b8d0c632837cb79dae1d296', '110.93.244.255', 1643715824, '__ci_last_regenerate|i:1643715824;'),
('472964bd32f27a5c2ad862525bb0c406fabc8e09', '110.93.244.255', 1644402569, ''),
('475cb2fafca400680e28319bb2897be858f59293', '110.93.244.255', 1643929969, '__ci_last_regenerate|i:1643929969;'),
('47f7fc0dbb5285be18d1756d5c1b4c32c20cbeb3', '110.93.244.255', 1644320847, '__ci_last_regenerate|i:1644320847;'),
('48347ec5734f43fb52ee31ccc65bc861ee61c945', '110.93.244.255', 1644233667, '__ci_last_regenerate|i:1644233667;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:5:{s:10:\"cart_total\";d:763;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Hiroko Velez\";s:5:\"phone\";s:17:\"+1 (885) 272-2231\";s:5:\"email\";s:22:\"gyjitin@mailinator.com\";s:7:\"address\";s:20:\"Nobis aute est enim \";s:3:\"req\";s:19:\"Nihil laudantium sa\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:763;}'),
('48523707c119882fe3cb933cd2d82cd970044e53', '103.228.157.4', 1643481209, '__ci_last_regenerate|i:1643481209;'),
('4860f0198ac09e65dcb94cf4d8b4975a70bf8b0f', '110.93.244.255', 1644401872, ''),
('48b2bb7719b2a164b0c75aae63fa5478a4b3719e', '110.93.244.255', 1644329360, ''),
('48c5bd68f3a286a4b590aa73878a673a990cd917', '110.93.244.255', 1644231524, '__ci_last_regenerate|i:1644231524;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}success|s:17:\"Send Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('48fvnk9li5kehpbc8ntj4brhru2sjmjv', '::1', 1642585231, '__ci_last_regenerate|i:1642585231;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Xerxes Owens\";s:5:\"phone\";s:17:\"+1 (868) 537-2898\";s:5:\"email\";s:20:\"pixyw@mailinator.com\";s:7:\"address\";s:20:\"Deserunt libero moll\";s:3:\"req\";s:19:\"Voluptate velit bea\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('498d660792217ddb7b6820b9284fd1dbd6a895a9', '110.93.244.255', 1643723450, '__ci_last_regenerate|i:1643723450;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('499020e6eb5af6bfc3fed92078913e95900450e5', '110.93.244.255', 1643711314, '__ci_last_regenerate|i:1643711314;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('49a5dff113a31249b50aba015d949e6bb71f290f', '110.93.244.255', 1643286794, '__ci_last_regenerate|i:1643286794;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('49ae69dfbc8ee4af1ecf91cb3524c8112a142fc8', '110.93.244.255', 1644324323, '__ci_last_regenerate|i:1644324323;'),
('4a8e061d81659c52aaa1dc5265ff22b959733be6', '110.93.244.255', 1643795956, '__ci_last_regenerate|i:1643795956;'),
('4a9d9bf9ae4bdd7b59ebea3c33c0cde39595b7c0', '110.93.244.255', 1643778757, '__ci_last_regenerate|i:1643778757;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:545;s:11:\"total_items\";d:2;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('4ac19d003272696c02e76ffdd5267b232ee49041', '110.93.244.255', 1643366299, '__ci_last_regenerate|i:1643366299;'),
('4ace4931571be6d25625ccffd65eb7011f3b1559', '110.93.244.255', 1643621726, '__ci_last_regenerate|i:1643621726;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('4ad699974119681e5b23495f270f48f14c5cd9eb', '110.93.244.255', 1644230706, '__ci_last_regenerate|i:1644230706;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('4b1954f19e5a59cb89468d0eeafd88e584e32708', '110.93.244.255', 1644326037, ''),
('4b76e5c9d67dd3185eb7b601614319e43ea1f315', '110.93.244.255', 1644325937, '__ci_last_regenerate|i:1644325937;'),
('4c18be69eb7ce8fade35da6a2ef1111877c6826c', '110.93.244.255', 1644324259, ''),
('4c5a7a42f95ec1b02cff48dd3768e14546addcfe', '110.93.244.255', 1643777685, '__ci_last_regenerate|i:1643777685;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('4cd55203efcf11555796e5d525951692c16a7b90', '110.93.244.255', 1644320850, ''),
('4d0da5524c50b97f789e91adcef1f17ed8dd82b6', '110.93.244.255', 1642769252, '__ci_last_regenerate|i:1642769252;'),
('4d16b165c88815a65b5960dd3c5c8a6c7ee190bb', '110.93.244.255', 1644320868, ''),
('4d40f25a2f24e684d7becaba0756cda227526ff7', '110.93.244.255', 1644226917, '__ci_last_regenerate|i:1644226917;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('4e22b5de496e5143d21faa8aca206d027b0cb095', '110.93.244.255', 1644329360, ''),
('4e2305eb6194930533206babc69919c17c16c050', '110.93.244.255', 1643607873, '__ci_last_regenerate|i:1643607873;'),
('4e43c3825e60c3a02d599d66d0be4c3deda6c344', '110.93.244.255', 1644226408, '__ci_last_regenerate|i:1644226408;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:450;s:11:\"total_items\";d:2;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}}'),
('4e4a96ba8f7da12bf04199a470051708939a9a5b', '110.93.244.255', 1643877892, '__ci_last_regenerate|i:1643877892;'),
('4eb9d96168b81ab7743093bb2dc1635b08fb9233', '110.93.244.255', 1642598226, '__ci_last_regenerate|i:1642598226;'),
('4f120e837ad95e8cbd820e3c563d4009939a902e', '110.93.244.255', 1644319226, '__ci_last_regenerate|i:1644319226;'),
('4f2514d7f517cb4dc907eacd9ae86a697b6d6058', '110.93.244.255', 1642768596, '__ci_last_regenerate|i:1642768596;'),
('4fd1c5a62e912d78464ae61c4867c800af0f7adc', '110.93.244.255', 1643720382, '__ci_last_regenerate|i:1643720382;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('4pt1v60fbdg6m7bn5j1od9mbo1u8mr8n', '::1', 1642584866, '__ci_last_regenerate|i:1642584866;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Xerxes Owens\";s:5:\"phone\";s:17:\"+1 (868) 537-2898\";s:5:\"email\";s:20:\"pixyw@mailinator.com\";s:7:\"address\";s:20:\"Deserunt libero moll\";s:3:\"req\";s:19:\"Voluptate velit bea\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('500a8191a90392a035708edcefa77013969dff99', '110.93.244.255', 1643289453, '__ci_last_regenerate|i:1643289453;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('5016e55f44b8c8b216f9f8924b92182b088fd0f3', '110.93.244.255', 1644325012, ''),
('5020029d42cc85be1514b9d63906f5a77a3566ef', '110.93.244.255', 1642591121, '__ci_last_regenerate|i:1642591121;'),
('503c920a269423febc75435eced86e94a05596dd', '110.93.244.255', 1644320846, '__ci_last_regenerate|i:1644320846;'),
('5056ba8bee95c8ce030e63946796e3e9e22a3123', '110.93.244.255', 1644207843, '__ci_last_regenerate|i:1644207841;'),
('50abdfbc512bb652ed090374ccafe25691443040', '110.93.244.255', 1643285506, '__ci_last_regenerate|i:1643285506;'),
('50b18565935d0945f5528761fd95d2694eab58c7', '110.93.244.255', 1644319228, ''),
('511324e3905b230974d8f266142232c317c6762a', '110.93.244.255', 1644319225, '__ci_last_regenerate|i:1644319225;'),
('5125bfbf8ab136e258dfbd7c25c3fb33f48865d4', '110.93.244.255', 1642592323, '__ci_last_regenerate|i:1642592323;'),
('513d00eca38ab6c350668fc666c57b60806fabfe', '110.93.244.255', 1643873201, '__ci_last_regenerate|i:1643873201;'),
('51710aa3c7a1c016de97131ee8cb8647566b2c9b', '110.93.244.255', 1643951633, ''),
('51a29a99cbaa0ad39b83daf4e2af2ea4361cf937', '110.93.244.255', 1644325918, ''),
('51f8487a3d2f98a1c86a901deb4fac5c70ae2256', '110.93.244.255', 1644326036, ''),
('52376be8e5ebae8ca0660995154e94420162514e', '110.93.244.255', 1643281272, '__ci_last_regenerate|i:1643281043;'),
('52a77002cc107996afe269998e376d8af13c6388', '110.93.244.255', 1643282220, '__ci_last_regenerate|i:1643282220;'),
('52b606d1c9271db477ebe9befe7e6f2c0ef2dedb', '110.93.244.255', 1643712470, '__ci_last_regenerate|i:1643712470;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('52bdaac030d530663f510a9656dcb6476832b8c8', '110.93.244.255', 1644326037, ''),
('53304228852ae1374059d171de2a355cd7464254', '110.93.244.255', 1643869033, '__ci_last_regenerate|i:1643869033;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('53810b8ecaa19dc82c0b34e54971ca84a62492df', '110.93.244.255', 1643090105, '__ci_last_regenerate|i:1643090098;'),
('53a6d69d59683841904cb7be400004b256bb1a48', '110.93.244.255', 1644237358, '__ci_last_regenerate|i:1644237358;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('53c550bdc3873828ba081fa517b1b9f00dabf036', '110.93.244.255', 1644233182, '__ci_last_regenerate|i:1644233182;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:5:{s:10:\"cart_total\";d:763;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Hiroko Velez\";s:5:\"phone\";s:17:\"+1 (885) 272-2231\";s:5:\"email\";s:22:\"gyjitin@mailinator.com\";s:7:\"address\";s:20:\"Nobis aute est enim \";s:3:\"req\";s:19:\"Nihil laudantium sa\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:763;}'),
('53d05f215dbbaee2487dae668267d5d31dcdd365', '110.93.244.255', 1644215389, '__ci_last_regenerate|i:1644215389;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('53d0cd089b1c9d87100465f56cfe6b0ab4d2f307', '110.93.244.255', 1644320849, ''),
('53d91eb79d33fb5d61db78b9dc08351458aafa9f', '110.93.244.255', 1644329361, ''),
('540e33b8edc1605df1c83f2cee6e6420dd9fa0c6', '110.93.244.255', 1644324259, ''),
('5479e615dbc4283f5fae6b4c8ff1c750632e3a0d', '110.93.244.255', 1644236071, '__ci_last_regenerate|i:1644236071;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('5497695af84941b1d0fc7afd91e40054115b344c', '110.93.244.255', 1643288018, '__ci_last_regenerate|i:1643288018;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('54a7a0a0720bbd9ad60b7f37ce59d88e23de5b22', '110.93.244.255', 1643889870, '__ci_last_regenerate|i:1643889870;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";checkout_cake_data|a:4:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:5:\"price\";s:3:\"900\";s:3:\"img\";s:11:\"cake611.png\";}success|s:18:\"Added Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('54ef48676ca087d3b1b191c9900a55c3a58ea1d4', '110.93.244.255', 1643715521, '__ci_last_regenerate|i:1643715521;'),
('550082c9f4f0b9ce7a70d912aa86ac7282f22b87', '110.93.244.255', 1644216217, '__ci_last_regenerate|i:1644216217;'),
('550552be868730fdfe0d24d8b946ba436865b4b3', '110.93.244.255', 1644324260, ''),
('551ae147f964f6d9eedd30318fc6464155aa48a4', '110.93.244.255', 1643364921, '__ci_last_regenerate|i:1643364921;'),
('552e75d8ff308b6ab212bd29f9ef116334454ca3', '110.93.244.255', 1643982695, '__ci_last_regenerate|i:1643982695;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('55525f1cc98b9eea9de90fd8901df517d55b3870', '110.93.244.255', 1644326037, ''),
('555dd36dfcea762891777ce50eb16a1770cba3a8', '110.93.244.255', 1644218037, '__ci_last_regenerate|i:1644218037;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}success|s:18:\"Added Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('55c74043a3cf809dc39f5e965521c885a396edd9', '110.93.244.255', 1643787007, '__ci_last_regenerate|i:1643787007;'),
('55cf2eee1769d10cdd6bbe94d400153472e70798', '110.93.244.255', 1644324323, ''),
('55e66ad51e3a9cd60681c05f4b6dc3c7144e6149', '110.93.244.255', 1643712123, '__ci_last_regenerate|i:1643712123;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('560816728ce7646f22125fe446bdb8372faa6e74', '110.93.244.255', 1644320868, ''),
('56d03e0fc4b2bdc28ab9e0964a78072680dac9f0', '110.93.244.255', 1644324260, ''),
('57229a4eb47bdc5e9a586c92fccc1395f2195c09', '110.93.244.255', 1643291489, '__ci_last_regenerate|i:1643291489;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('579869af3e6b82870afcf1305b7ed3533bcadf5e', '110.93.244.255', 1644226044, '__ci_last_regenerate|i:1644226044;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('57a21eb236d840d9e864414ede2c6dea7a606bd7', '110.93.244.255', 1643788854, '__ci_last_regenerate|i:1643788854;'),
('5835185baa5609c4221fff21a2581f93bcf16ac1', '110.93.244.255', 1643274991, '__ci_last_regenerate|i:1643274991;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('583ecf92f864d17067c1a9516a20755a4a141c17', '110.93.244.255', 1643354835, '__ci_last_regenerate|i:1643354834;'),
('58704fd4dd4e0e0f6c5b7b517ec452fccb11556f', '110.93.244.255', 1644319228, '__ci_last_regenerate|i:1644319228;'),
('587ac3ed490e5773782e030af891c6f76fe88e3b', '110.93.244.255', 1643886165, '__ci_last_regenerate|i:1643886165;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('59830f838f6f65bb1ce2b4be235f0a093cec1974', '110.93.244.255', 1643952602, '__ci_last_regenerate|i:1643952602;'),
('59dd4954dc3f74b941214762efc9326063576afe', '110.93.244.255', 1644226429, '__ci_last_regenerate|i:1644226429;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('59df55ec913e65bc72da8cab49374d061171dc83', '110.93.244.255', 1643288870, '__ci_last_regenerate|i:1643288870;'),
('5a17efd717c82671f2055428f3efecc6aa0001df', '110.93.244.255', 1644402569, ''),
('5a510c51f78adb1f0d36678be9a95601b809cae3', '198.16.66.124', 1643620549, '__ci_last_regenerate|i:1643620473;checkout_data|a:7:{s:4:\"name\";s:16:\"Pandora Humphrey\";s:5:\"phone\";s:17:\"+1 (493) 219-5186\";s:5:\"email\";s:19:\"lyfi@mailinator.com\";s:7:\"address\";s:20:\"Voluptates dolore pe\";s:3:\"req\";s:19:\"Odio pariatur Error\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";i:0;}'),
('5a928d00351ed5961869e62914ce6698bd50d8ee', '110.93.244.255', 1644329360, ''),
('5b01a46f143c678de2832db891280fb903f729ac', '110.93.244.255', 1643883383, '__ci_last_regenerate|i:1643883383;'),
('5b92f4227144066ceaf2b029b5fc7ca5e0269101', '110.93.244.255', 1643285808, '__ci_last_regenerate|i:1643285808;'),
('5b9d17d33c8ede8facdd079d76cf768e385c8491', '110.93.244.255', 1643288501, '__ci_last_regenerate|i:1643288501;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('5c2142beccbe42932473e73aa7b0bc1681b5d59b', '110.93.244.255', 1643345785, '__ci_last_regenerate|i:1643345785;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}cart_contents|a:6:{s:10:\"cart_total\";d:1166;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('5c2fbae540165c77c46b5917f888854611838458', '110.93.244.255', 1644320527, '__ci_last_regenerate|i:1644320527;'),
('5c37513b05420ebce015abae5e2cf6a99d270966', '110.93.244.255', 1643802054, '__ci_last_regenerate|i:1643802054;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('5cdd7e46b69c247bdfaad70cf32ed21c441abffa', '110.93.244.255', 1644234542, '__ci_last_regenerate|i:1644234542;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:21:\"Deleted Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('5d70456ff2bb2d59f2407e5c43aeb3ae24316f85', '110.93.244.255', 1644468307, ''),
('5d761f06f4810ebeea430d17534dc1592a7ad08d', '110.93.244.255', 1643794219, '__ci_last_regenerate|i:1643794219;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('5da21472275797ec8ee9744ed5277933f1cbb412', '110.93.244.255', 1643353525, '__ci_last_regenerate|i:1643353525;'),
('5dfb324202224b18377e474c9ded1cdb2270ed9b', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('5e37cf9c5b1da6f77b19be1ede38e573fc1a655e', '110.93.244.255', 1644319228, '__ci_last_regenerate|i:1644319228;'),
('5ea7f4bcfc3f48b5a40d687abc4d79ed58ea9764', '110.93.244.255', 1643092936, '__ci_last_regenerate|i:1643092868;'),
('5ef0a925b9031c504b288d76f5c95750a4d4d5ab', '110.93.244.255', 1643369685, '__ci_last_regenerate|i:1643369685;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('5ef60ff1edf5b46a3d38633157099c5a550dfcb4', '110.93.244.255', 1643885832, '__ci_last_regenerate|i:1643885830;'),
('5f1194aacfe3d73a2336304eea9a23947ca5ec04', '110.93.244.255', 1643356825, '__ci_last_regenerate|i:1643356825;'),
('5f271410345ea1db6973f9d815350f344b8da85e', '110.93.244.255', 1643804054, '__ci_last_regenerate|i:1643803989;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('5khkljep5r70g4udd4gputhhah1jjn91', '::1', 1642566950, '__ci_last_regenerate|i:1642566950;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:15:\"Stacey Caldwell\";s:5:\"phone\";s:17:\"+1 (559) 983-4853\";s:5:\"email\";s:25:\"fidylugaku@mailinator.com\";s:7:\"address\";s:20:\"Alias doloribus sit \";s:3:\"req\";s:20:\"Dolorem repudiandae \";}success|s:25:\"Order Placed Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('5nttde8ifu6fldpjbjnfn2l2d2q179ap', '::1', 1642586260, '__ci_last_regenerate|i:1642586260;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Xerxes Owens\";s:5:\"phone\";s:17:\"+1 (868) 537-2898\";s:5:\"email\";s:20:\"pixyw@mailinator.com\";s:7:\"address\";s:20:\"Deserunt libero moll\";s:3:\"req\";s:19:\"Voluptate velit bea\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('603e88f37f6072ce22a6d90e1b429f8bb1293412', '110.93.244.255', 1643375236, '__ci_last_regenerate|i:1643375236;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('6068fa4ce901da794dbe75622457885ad485852f', '110.93.244.255', 1643355266, '__ci_last_regenerate|i:1643355266;'),
('60982e0c0acf539bd580bf00ab40074e7378e45c', '110.93.244.255', 1643283416, '__ci_last_regenerate|i:1643283416;'),
('60c9c2033bd66a6bed46d1539f6f2e5b3cd2a1c2', '110.93.244.255', 1644324258, '__ci_last_regenerate|i:1644324258;'),
('60mnn51jhtvak67jkvvj4klv1cdntvvo', '::1', 1642565027, '__ci_last_regenerate|i:1642565027;'),
('614255b98874d2336b18aa376d8264cdcb23c1f5', '110.93.244.255', 1643951166, '__ci_last_regenerate|i:1643951166;'),
('6146285c9cf464a14592db77bdaca8ef7553f9c5', '110.93.244.255', 1644401951, '__ci_last_regenerate|i:1644401951;success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('622a59b183e294a89c3b83b3cb838294510f1e43', '110.93.244.255', 1643784550, '__ci_last_regenerate|i:1643784550;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('624ce1d28c391dd923c01e797a4dbbec3bc15146', '110.93.244.255', 1644324261, ''),
('628845c44bbb88f26423560deab4d16daed85298', '110.93.244.255', 1643221556, '__ci_last_regenerate|i:1643221556;checkout_data|a:6:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:14:\"admin@demo.com\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:20:\"Accusamus neque inci\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('62fecbd38c5c2c20cc0685adaae5f09121dea47e', '110.93.244.255', 1643954345, '__ci_last_regenerate|i:1643954345;'),
('6313121b085627c79faba1beb091768d183b9796', '110.93.244.255', 1643952401, '__ci_last_regenerate|i:1643952395;error|s:26:\"Invalid Email Or Password.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}'),
('631bed2d0e5dbfaf680ddf1446330d707ef1cf37', '110.93.244.255', 1642767857, '__ci_last_regenerate|i:1642767857;'),
('63c18ac350fb4f92d90824cfc491b747671d8991', '110.93.244.255', 1643888024, '__ci_last_regenerate|i:1643887785;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('63dbf8e991739cd47cd0b8d7eb83008317130df1', '110.93.244.255', 1643100992, '__ci_last_regenerate|i:1643100992;'),
('63eedeeb3eda21a53255397b5777c4c89f36d78f', '110.93.244.255', 1644319226, '__ci_last_regenerate|i:1644319226;'),
('64546b388ee15e94715310b51fcff74dd5dfac14', '110.93.244.255', 1643877920, '__ci_last_regenerate|i:1643877920;'),
('64873310b7d9357c5e620b83fa78a705aa7aff76', '110.93.244.255', 1642772065, '__ci_last_regenerate|i:1642772065;'),
('64a3dfbeaa037413e05aae89e2af0595fbaa7077', '110.93.244.255', 1643376787, '__ci_last_regenerate|i:1643376787;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('64db34cdc31e97a6cc71938805cc4dbdb99cca2b', '110.93.244.255', 1644237022, '__ci_last_regenerate|i:1644237022;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('64fabcd004513febbe8893abbe3503fc62213112', '110.93.244.255', 1642663468, '__ci_last_regenerate|i:1642663468;'),
('6544e03338de99d553caf307f46c614c98b0299d', '110.93.244.255', 1643877370, '__ci_last_regenerate|i:1643877370;'),
('65d9813307c8680443f83ee83d7ede859fcf887f', '110.93.244.255', 1644320847, '__ci_last_regenerate|i:1644320847;'),
('65fc580f72a0ee462329eacd1fe89460f820d1aa', '110.93.244.255', 1643951094, '__ci_last_regenerate|i:1643950805;'),
('6704cc74945cfa7970096bfbecae71b1427d2ba6', '110.93.244.255', 1643706379, '__ci_last_regenerate|i:1643706379;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:4:\"zzxa\";s:5:\"phone\";s:6:\"asdasd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:7:\"asedasd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('6752433f9b7cdbf70ddc1d1fe72a379ea2e3abcd', '110.93.244.255', 1643356136, '__ci_last_regenerate|i:1643356136;'),
('678f0544e8af6d571cc35f035e31872038678d0a', '40.77.167.24', 1643092526, '__ci_last_regenerate|i:1643092526;'),
('67949b55bb5144e408f10589fdf25ca887ef6d80', '110.93.244.255', 1643289181, '__ci_last_regenerate|i:1643289181;'),
('67f67cb10ac09efd82f38f88b2518f11a0bee141', '110.93.244.255', 1642591556, '__ci_last_regenerate|i:1642591556;'),
('6823a845ae53f777c1bc5e056f52bef00e140d0d', '110.93.244.255', 1644329361, ''),
('68d0474622f829736d8d58e799fe2c3c15b4e813', '110.93.244.255', 1644324260, '__ci_last_regenerate|i:1644324260;'),
('68ee4b17cc06b276b04ba5d1a3ca5dad62b29baf', '52.114.32.212', 1643281278, '__ci_last_regenerate|i:1643281278;'),
('69054c0e4758b908218f2ac7bdbaea97acb3938f', '110.93.244.255', 1644329361, '');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('69175b482ea73e71422ccffd54fdc831397ac18f', '110.93.244.255', 1644229646, '__ci_last_regenerate|i:1644229646;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('693e2e666d4940bd5690b37324cf3210db3d4179', '110.93.244.255', 1644329362, ''),
('69406bd6f42115945ccef933ddce06d18158cdfe', '110.93.244.255', 1642760738, '__ci_last_regenerate|i:1642760738;'),
('69b7df4b37eebd33a4cf9dc24118808867090261', '110.93.244.255', 1644325503, '__ci_last_regenerate|i:1644325503;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('6a2ada7b8cd96faad1408c3583fb7caa48453781', '110.93.244.255', 1643375556, '__ci_last_regenerate|i:1643375556;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('6a2de7626fbf0354bacb47f07a345f42889f83fe', '110.93.244.255', 1644401872, ''),
('6a78fcdf0af58f15063591f46789c1c6400c651c', '110.93.244.255', 1642773541, '__ci_last_regenerate|i:1642773541;'),
('6ad41654aa6321eb20795b7e25a13a00f14bf1f0', '52.114.32.212', 1643291679, '__ci_last_regenerate|i:1643291679;'),
('6b5d48a2ac0fcf60a8a52c564b41503b5a50dc04', '110.93.244.255', 1644324337, ''),
('6b8c2e65899bb5fe56f8e526935e82377cfce271', '110.93.244.255', 1642773023, '__ci_last_regenerate|i:1642773023;'),
('6bc48c6788498a2aa89f006fd9624031df3df21a', '110.93.244.255', 1644320848, ''),
('6bcbb6777e8a11a0960c208a1de2be161d779471', '209.205.218.44', 1643874579, '__ci_last_regenerate|i:1643874579;'),
('6c2ffa6b4d829943277dc07de1cc9d22745d2d41', '110.93.244.255', 1644320868, ''),
('6c46a2b7dc12e229d0cb50b628003378c13c3fe5', '110.93.244.255', 1643291950, '__ci_last_regenerate|i:1643291950;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('6c484dfbea0983acdb4a6b545f787bcb0f7ed7a0', '110.93.244.255', 1644401871, ''),
('6caed002d2b6daa504ff001a17db260877c2321d', '110.93.244.255', 1643784237, '__ci_last_regenerate|i:1643784237;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('6d141273f21630ea3b2493b2472c995f50fe142d', '110.93.244.255', 1644324987, ''),
('6d6fac72e62e3b500f33ba6ed6d53d5d28819f9f', '110.93.244.255', 1643364401, '__ci_last_regenerate|i:1643364401;'),
('6db76486e35e98af3b30b0b501da3ff643a435e1', '110.93.244.255', 1644401872, ''),
('6e05262223df9ce5819781bde1dcd80689f67b62', '110.93.244.255', 1643712793, '__ci_last_regenerate|i:1643712793;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('6e3a9a8498d7b54890950be0c7bd4911a0840307', '110.93.244.255', 1644320868, ''),
('6e8338822a1eeb7612d3a69486b4da9431b29beb', '110.93.244.255', 1643092502, '__ci_last_regenerate|i:1643092502;'),
('6e8c6e5c6daae6e56671d97dea2016c18a9d8d16', '52.114.32.212', 1643369536, '__ci_last_regenerate|i:1643369536;'),
('6ebf1b795052a51d19a75ed9f0f7081fa950b503', '110.93.244.255', 1643619652, '__ci_last_regenerate|i:1643619652;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('6edb631bfe5f1ca473720d7cb45b5f26e0cccda8', '110.93.244.255', 1643622967, '__ci_last_regenerate|i:1643622967;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}success|s:21:\"Updated Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('6f20c211be4fcbdf7d75d83f2cbe951e78aa9108', '110.93.244.255', 1644326036, ''),
('6f6197b336e862b61550d2e97ae523d897150858', '110.93.244.255', 1644215677, '__ci_last_regenerate|i:1644215677;'),
('6fc01b3548aeed95c8330fbcc4f462939ea573a2', '110.93.244.255', 1644227400, '__ci_last_regenerate|i:1644227400;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}success|s:21:\"Deleted Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('6fedcb0ecb65c6c44599d25fe74f0f3c44afcb67', '110.93.244.255', 1643893800, '__ci_last_regenerate|i:1643893799;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('6ubsjbjv6cmute27ftood5lljoob74ba', '::1', 1642576855, '__ci_last_regenerate|i:1642576855;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('703a0de903bb4693dd812d2d121df0a8f91194e4', '110.93.244.255', 1644326035, '__ci_last_regenerate|i:1644326035;'),
('7043526b4a8b47630a15f6b921045a62dbbc4df8', '110.93.244.255', 1644323845, ''),
('70d4461e8fa4423b892e545d3c160941db56abdb', '110.93.244.255', 1644320165, '__ci_last_regenerate|i:1644320165;'),
('70d935524eba9081071799c254bfcd4ccb438dd9', '110.93.244.255', 1644325061, '__ci_last_regenerate|i:1644325061;'),
('7113015890c06c57a5daed2a2d30df193b6434d1', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('7167191c02b57c69cccf24ebbc6180784462776f', '110.93.244.255', 1644216004, '__ci_last_regenerate|i:1644216004;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('71cdb993be5089bdc9ff4ce022499622e61275c7', '110.93.244.255', 1643365460, '__ci_last_regenerate|i:1643365460;'),
('71e024ad754fc6bd8301bb02f956a087adc6f0db', '110.93.244.255', 1643871171, '__ci_last_regenerate|i:1643871171;'),
('71e35d88ce3df49619beafb4d5ada36a299e2e20', '110.93.244.255', 1644501943, '__ci_last_regenerate|i:1644501927;'),
('71fa08d91aa561922202ffb3c57dee86c9458427', '110.93.244.255', 1644326035, '__ci_last_regenerate|i:1644326035;'),
('71fc60dc25c666bad1d7e4522e33a2ae9f3ba3bf', '182.190.99.15', 1643481210, '__ci_last_regenerate|i:1643481209;'),
('722c95bfb7c2b8c28e1837a21d5daeaf688c4184', '110.93.244.255', 1643800716, '__ci_last_regenerate|i:1643800716;'),
('723731004625c07cbb467d37c4bc730053590c68', '110.93.244.255', 1644216366, '__ci_last_regenerate|i:1644216366;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('724f3d7d7c7761981d9ac8851e2754e7b454c39d', '110.93.244.255', 1644412166, '__ci_last_regenerate|i:1644412166;'),
('726cb94bc4a373a7c0ad2200f2ad43ec027d6148', '110.93.244.255', 1643870427, '__ci_last_regenerate|i:1643870427;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('72906288fff7def5e033e8001803f667fbbcb9e3', '110.93.244.255', 1644319228, ''),
('72ab3054d65a4962ef3c120e29f5d917527f3279', '110.93.244.255', 1643877831, '__ci_last_regenerate|i:1643877831;'),
('72e621c4fdbf4cb28f0759dfe009358d7c5f2c59', '110.93.244.255', 1643701714, '__ci_last_regenerate|i:1643701706;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:819;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:9:\"Zena Wood\";s:5:\"phone\";s:17:\"+1 (905) 604-1831\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:19:\"Voluptatem iste exp\";s:3:\"req\";s:20:\"At commodo cum ut po\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:819;}'),
('730e1c107c54f8f094b94d877ed6977bb5d99847', '110.93.244.255', 1644324698, ''),
('73336bb2b9abe3a328bf54d347bc07f33d0bd7f7', '110.93.244.255', 1644220976, '__ci_last_regenerate|i:1644220976;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('734cd2ad865bdd158cdcd9e9f129981f00e11053', '110.93.244.255', 1644324260, '__ci_last_regenerate|i:1644324260;'),
('7376279d7121c2050ac90ff73d86d1c4b6d72667', '110.93.244.255', 1643368530, '__ci_last_regenerate|i:1643368530;'),
('73c409027594bffe1fe85b63c78aeb3a6e0cafd4', '52.201.215.250', 1643912117, '__ci_last_regenerate|i:1643912117;'),
('73eef5bd062aad29c13042d66d837de0ef825e40', '110.93.244.255', 1642656679, '__ci_last_regenerate|i:1642656679;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('752f62b7a83bf0708784c03f7226d6ab92198fd3', '110.93.244.255', 1644329358, '__ci_last_regenerate|i:1644329358;'),
('761d285be3b79c64e05cebdf660c87f44bafaab9', '110.93.244.255', 1642761088, '__ci_last_regenerate|i:1642761088;'),
('766c0ec66aefba854e10de600b28800b65a29b78', '110.93.244.255', 1643716342, '__ci_last_regenerate|i:1643716342;'),
('76d4596fb9cca36011cde5e4444926d3d008cb68', '110.93.244.255', 1644326037, '__ci_last_regenerate|i:1644326037;'),
('76dd064f6e750ec87c463b71d1ce0bddc5bac86f', '110.93.244.255', 1643369978, '__ci_last_regenerate|i:1643369978;'),
('76f32eb2bf3fb71b9d2b79b15ffd27c3e494ee38', '110.93.244.255', 1644320868, ''),
('7712c026a5d17c1edbf7a6ef1a580166d69ea8b1', '110.93.244.255', 1643094064, '__ci_last_regenerate|i:1643094064;'),
('7767059200fc4c94a6678caed28c8451b5e6b749', '110.93.244.255', 1643613014, '__ci_last_regenerate|i:1643613014;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('776b17cc8eeeaf086ad52644befdbd9c826bf301', '110.93.244.255', 1643355817, '__ci_last_regenerate|i:1643355817;'),
('77d024b689bd70dee6fd39f7cbcb9b8d6871fb44', '110.93.244.255', 1643951343, '__ci_last_regenerate|i:1643951336;'),
('7802653a8f8b472457e5723c2f6472e51e8aeb72', '110.93.244.255', 1643794988, '__ci_last_regenerate|i:1643794988;'),
('780800c70079f1599b68b8fe75f22b4511609581', '110.93.244.255', 1643281043, '__ci_last_regenerate|i:1643281043;'),
('781d09f571513b656ab4c36452220fa0150a8ac7', '110.93.244.255', 1644324282, '__ci_last_regenerate|i:1644324282;'),
('784eb47777fab54e0fab87913a7615d106e4661c', '110.93.244.255', 1644324316, ''),
('785e80ffeeac2e6bf0ed09c332ea2df28c5394bb', '110.93.244.255', 1644325616, ''),
('789cde7a0bfae54c5e3dffb0b5354f063fe3bde9', '110.93.244.255', 1642593528, '__ci_last_regenerate|i:1642593528;'),
('78aed8b6bc0123b2db3382a97aa6daeda53a1663', '110.93.244.255', 1644324269, '__ci_last_regenerate|i:1644324269;'),
('79f6fb759d26c82f26d3d18d68bbd71dd38883bb', '110.93.244.255', 1642777750, '__ci_last_regenerate|i:1642777750;'),
('79f96e6638acf81177e438f9d7d2b223126e3eda', '110.93.244.255', 1643786764, '__ci_last_regenerate|i:1643786764;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('7a00e704fcb49b39e0b3d97ed8c92f716f57750e', '110.93.244.255', 1643885830, '__ci_last_regenerate|i:1643885830;'),
('7a1416c9b2a43174f01605dd6f7bf2b768986b8f', '110.93.244.255', 1644401871, '__ci_last_regenerate|i:1644401871;'),
('7afb7d0490e680d744375c57d4d65474f4b3f8b5', '110.93.244.255', 1643711783, '__ci_last_regenerate|i:1643711783;cart_contents|a:4:{s:10:\"cart_total\";d:545;s:11:\"total_items\";d:2;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('7bd38bcb72498c9938173b1a85c5f19d3b9ee9c4', '110.93.244.255', 1643779097, '__ci_last_regenerate|i:1643779097;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:181;s:11:\"total_items\";d:1;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:18:\"Benjamin Wilkinson\";s:5:\"phone\";s:17:\"+1 (961) 759-3334\";s:5:\"email\";s:20:\"pupow@mailinator.com\";s:7:\"address\";s:20:\"Facilis aut aute ver\";s:3:\"req\";s:18:\"Amet sunt tempora \";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:181;}'),
('7be0f9586f4bebb726acf20b9701fdb1e2acf8c5', '110.93.244.255', 1642591868, '__ci_last_regenerate|i:1642591868;'),
('7c4b329524c732b75576fcc05ac6d54c653cf630', '111.88.114.186', 1643217242, '__ci_last_regenerate|i:1643217229;'),
('7c6857d1172fd79dd8851d2aa8e92f4208b0dd97', '110.93.244.255', 1643355043, '__ci_last_regenerate|i:1643355043;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('7c7d0740b4a387bbcb9ff93f3bdf327ebc633394', '110.93.244.255', 1644319227, '__ci_last_regenerate|i:1644319227;'),
('7c95922ace91435118ab875a999a447ef15dc75c', '110.93.244.255', 1644324336, '__ci_last_regenerate|i:1644324336;'),
('7d27be15abfc624993fdbf6b6ad217ca31fc48c4', '110.93.244.255', 1644401872, ''),
('7db71e9e5c2daeda2002e9cc45b41977c44859ce', '110.93.244.255', 1643694676, '__ci_last_regenerate|i:1643694676;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('7dd68b31a44a5e601ea67417c9889e4a4030209a', '110.93.244.255', 1644217026, '__ci_last_regenerate|i:1644217026;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('7ddcf50417a552543357b5729d27b45efd0e2fcc', '110.93.244.255', 1644324260, ''),
('7dde73e2a4e5aff1dd646454af62ac72af633399', '110.93.244.255', 1643351626, '__ci_last_regenerate|i:1643351626;'),
('7df239fbdf31cdcf2b755d7317ce25a6b561956c', '110.93.244.255', 1644329361, ''),
('7e2f378da3c23ab8b9a40368354e65b8fef52007', '110.93.244.255', 1644325937, ''),
('7e6cebe2839d2653c6bcd4d0d262415c60070c1f', '110.93.244.255', 1644401871, '__ci_last_regenerate|i:1644401871;'),
('7e8761c78a4e0a8ae40ca35a23b87779c4d7987a', '110.93.244.255', 1644320868, ''),
('7f13fac60badec135da8cbb599e4a09e4df95d60', '110.93.244.255', 1644323845, ''),
('7f89222261bfe4c0d365e2090e3ced48b5de2da1', '110.93.244.255', 1643874310, '__ci_last_regenerate|i:1643874310;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('7fcf5b7a172b1f99c25265b43b5cc20fb45c10e5', '110.93.244.255', 1644401952, ''),
('7ffaacdd04d10299025dae141f859293f9ab0eef', '110.93.244.255', 1644320868, ''),
('8031f9807b6020cb63f004d80036aab014367cd1', '110.93.244.255', 1644326051, ''),
('807dc94edc12e5c7277495a3d41492c0d3ed8fb6', '110.93.244.255', 1642594457, '__ci_last_regenerate|i:1642594457;'),
('80a7ad5bf80b9cdef4bdaf75cc837b0c3594fa38', '110.93.244.255', 1644324260, ''),
('80d99bae4128341bb868538658207a8081b709d3', '110.93.244.255', 1644329360, ''),
('80de1be1c0a2daace52a7e3cd3ab47a1803eb835', '110.93.244.255', 1643887785, '__ci_last_regenerate|i:1643887785;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('811a77163d9d4dcde69ad5075cbce84d77aa65f2', '110.93.244.255', 1644329357, '__ci_last_regenerate|i:1644329357;'),
('81aaa8183a0c2f266b8aef3114711fb1fa6e1c3a', '110.93.244.255', 1643377940, '__ci_last_regenerate|i:1643377940;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('81e501d4a0b3b898dbe59c0fd40385876662f014', '110.93.244.255', 1642768947, '__ci_last_regenerate|i:1642768947;'),
('8225aeaa36f7be3788e27c602405e8df86a2b315', '110.93.244.255', 1644325384, ''),
('82d193189ad4532c7eb697b8d7721d78c90a1ee1', '110.93.244.255', 1642673085, '__ci_last_regenerate|i:1642673085;'),
('83c92ae20a96461f83735cba4c2fd5ab3d76a482', '110.93.244.255', 1643882941, '__ci_last_regenerate|i:1643882941;'),
('8476k3n4t3pu439mhl8vutq4ktbg44ou', '::1', 1642564696, '__ci_last_regenerate|i:1642564696;cart_contents|a:4:{s:10:\"cart_total\";d:814;s:11:\"total_items\";d:2;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:6:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:6:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('848d7df7344bfbdc6efb1e404dd09ae0508c4bfb', '110.93.244.255', 1643369891, '__ci_last_regenerate|i:1643369685;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:181;s:11:\"total_items\";d:1;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:10:\"Ciaran Lee\";s:5:\"phone\";s:17:\"+1 (325) 551-4698\";s:5:\"email\";s:22:\"kukedyt@mailinator.com\";s:7:\"address\";s:19:\"Possimus quod et di\";s:3:\"req\";s:18:\"Placeat amet nulla\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('84fe428c92aa0a6d0ae5331e2d253ccd3392f3bf', '110.93.244.255', 1643872093, '__ci_last_regenerate|i:1643872093;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('851095520f00bf5dff173d3bc519410c347351a8', '110.93.244.255', 1644320869, ''),
('852b43456da0000d510338131f7757ea1c659f19', '110.93.244.255', 1643981900, '__ci_last_regenerate|i:1643981900;'),
('854c8300e0cea0ca22311f26ac295d0d447cb1bd', '110.93.244.255', 1644407570, '__ci_last_regenerate|i:1644407570;'),
('85533e1caae0e12ea5b46cafa61d6948d5a679f3', '110.93.244.255', 1643894635, '__ci_last_regenerate|i:1643894635;'),
('85aeca2deec1d8db463a39b644421fa1317791ab', '110.93.244.255', 1643617758, '__ci_last_regenerate|i:1643617755;'),
('85b7b281799ee07cc9a6650f05951bdb1e4d4a41', '110.93.244.255', 1643897267, '__ci_last_regenerate|i:1643897267;'),
('85f6b515aedffdea81c6d9de3a9a76fbd1d6e67f', '110.93.244.255', 1643982204, '__ci_last_regenerate|i:1643982204;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('866a3d8a83c047945e882aaa34a7f7cd75eed538', '110.93.244.255', 1644319506, '__ci_last_regenerate|i:1644319506;'),
('867e23a6be404235ed42309cf8c53f3a64b86739', '110.93.244.255', 1643707094, '__ci_last_regenerate|i:1643707094;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('86a79aac23c39a390b797b102e9efd6da25587e0', '110.93.244.255', 1643719265, '__ci_last_regenerate|i:1643719265;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('86d547012972ed910d7719f9d50a1f5dbf7d2d88', '110.93.244.255', 1644219078, '__ci_last_regenerate|i:1644219078;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('86da2d73aad48715e234dfbe33819b104a0dc494', '110.93.244.255', 1643800587, '__ci_last_regenerate|i:1643800587;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('86f8e35de607ee19e1f05079c8edf040ec6b38d8', '110.93.244.255', 1644243149, '__ci_last_regenerate|i:1644243092;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('879ee7f341aae9c00af3a9e344d56842938e9443', '110.93.244.255', 1643616532, '__ci_last_regenerate|i:1643616532;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('87ae7990579d2ce46bb1d3e26b3abbdac20782a9', '110.93.244.255', 1643278986, '__ci_last_regenerate|i:1643278986;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('87b355e1cd1695f1cca6498005010fe9128e542c', '110.93.244.255', 1644320868, ''),
('87c72e6d4f1549e5cacbe4941e1f60774cf2b3e8', '110.93.244.255', 1644226725, '__ci_last_regenerate|i:1644226725;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('88bfd4a6a48f845e035a42e90cb8c47715d109eb', '110.93.244.255', 1643690599, '__ci_last_regenerate|i:1643690599;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('88bfe50df8188bac4245596081588c167eb2b9ad', '110.93.244.255', 1643370468, '__ci_last_regenerate|i:1643370227;cart_contents|a:3:{s:10:\"cart_total\";d:181;s:11:\"total_items\";d:1;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:9:\"Test REAL\";s:5:\"phone\";s:10:\"1646266253\";s:5:\"email\";s:34:\"SUMBLA.QAISER@BINARYITSOLUTION.COM\";s:7:\"address\";s:15:\"Test California\";s:3:\"req\";s:0:\"\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('8921ce651b4b22c22f68f1a7436f3fd8b9836461', '110.93.244.255', 1643609160, '__ci_last_regenerate|i:1643609160;cart_contents|a:7:{s:10:\"cart_total\";d:1911;s:11:\"total_items\";d:7;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:2;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:362;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}'),
('893906e9e280870e593841730dd05ebd9fa9dd89', '110.93.244.255', 1643798339, '__ci_last_regenerate|i:1643798339;'),
('8a1c30f7039bb4b38f333b732d2aad5139cb214d', '110.93.244.255', 1644320847, '__ci_last_regenerate|i:1644320847;'),
('8aa1a3627ca8563bc4f57c8a5356bd5ebf9e37d0', '110.93.244.255', 1644324712, ''),
('8aa291eb9e1d8c6dd7d161bcc0097cb0e07df544', '110.93.244.255', 1644319203, ''),
('8aa79fa61289959812b6ca6eaf275e529041260e', '110.93.244.255', 1643368735, '__ci_last_regenerate|i:1643368735;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('8b04bf938c79a78a9343b6aee50df20f4dd8c8bf', '110.93.244.255', 1644325937, ''),
('8b86a36edc7e50820745f11f4fd91aef6aa07f55', '110.93.244.255', 1643354749, '__ci_last_regenerate|i:1643354749;'),
('8bf9cfa77225fec3b3913b3f4e8e0689e04f3ac0', '110.93.244.255', 1643612371, '__ci_last_regenerate|i:1643612371;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('8c42a3bd302dd6700d2172a241f03cd0626f93d1', '52.114.32.28', 1643870495, '__ci_last_regenerate|i:1643870495;'),
('8c5405aafc52f8fc51c3f74a89441d38b45c50cc', '110.93.244.255', 1644235029, '__ci_last_regenerate|i:1644235029;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('8cc2b6c838f8986215b5aae713b28fe8e3e5f5d0', '110.93.244.255', 1644320848, ''),
('8d66f5e9068f0caf26193ea8ffaeb30c9e8b9d05', '52.114.14.71', 1643890701, '__ci_last_regenerate|i:1643890701;'),
('8e74cc975947db30a27fa05c1ecd20d4ecf7ce05', '110.93.244.255', 1643799914, '__ci_last_regenerate|i:1643799914;'),
('8e9bec2f903b61bb07e9da74081c2c3a794af2bf', '110.93.244.255', 1644320849, ''),
('8eec4b573a54c7962b3a2aedc77c87a3f2de5318', '110.93.244.255', 1643280556, '__ci_last_regenerate|i:1643280556;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('8f06ef35e3ca2c9a14b3130f9865ca0a5dcab921', '110.93.244.255', 1643284874, '__ci_last_regenerate|i:1643284874;'),
('8f1e7d85692529056fd9f7116aeed8f465d83fe2', '110.93.244.255', 1643803989, '__ci_last_regenerate|i:1643803989;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('8f6a4fb68e1875a8fffe76dba45f85f8d71b1612', '110.93.244.255', 1644215362, '__ci_last_regenerate|i:1644215362;'),
('8fac51344aec20b47e4cf716f2c8b0b07b582994', '110.93.244.255', 1643217235, '__ci_last_regenerate|i:1643217235;checkout_data|a:6:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:14:\"admin@demo.com\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:20:\"Et accusantium ex mo\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('8fb326b118ef286b7d79e1f38579f0e1a64abcd3', '110.93.244.255', 1643284568, '__ci_last_regenerate|i:1643284568;'),
('9090e63bedc24e3ce611db3424d2e04f759c83b4', '110.93.244.255', 1644320158, '__ci_last_regenerate|i:1644319968;'),
('91475af4f11eb400176ef5cf7c44c61d377b291b', '110.93.244.255', 1644324987, ''),
('91c8a140401719d79a4874318a383b2af56fc22a', '110.93.244.255', 1644324261, ''),
('91d6248f1521587af3beae24654f3d5932870e9b', '110.93.244.255', 1644468316, ''),
('91faff871c55169ca1f2c5430feed716401aa02e', '110.93.244.255', 1643789465, '__ci_last_regenerate|i:1643789465;'),
('9238379536f8d6f8624d4c5ab649790e87669821', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('92526fae954e552b9d3ae1e697d70d09107d978f', '110.93.244.255', 1644319198, '__ci_last_regenerate|i:1644319198;'),
('92a8ebc1aef7de0c5ef367a3851d9caba02af68c', '110.93.244.255', 1644326036, ''),
('92af4b2a0be7add30134031834dafe97594a5520', '110.93.244.255', 1642744483, '__ci_last_regenerate|i:1642744483;'),
('92e291324a1a60f17d95babb1bfcb71b32ab310c', '110.93.244.255', 1643290073, '__ci_last_regenerate|i:1643290073;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('9313073a5ff4d669e1b2cb056f61d525862d13a0', '110.93.244.255', 1644324297, ''),
('9353ed803f334b59115064d374cb44f90c518227', '110.93.244.255', 1644319199, ''),
('93ab04ccfcbf5cb0853b5d1f91039b9eef178b19', '110.93.244.255', 1644320868, ''),
('93efa9438c511a93a985df299fa4fa20d07b7fd2', '110.93.244.255', 1643893714, '__ci_last_regenerate|i:1643893714;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('943e863601d0c5324317dca282301e5b16634b2b', '110.93.244.255', 1642766091, '__ci_last_regenerate|i:1642766091;'),
('9468f320cd91d8ade149acdd734d74f2d0d01edb', '110.93.244.255', 1644329360, ''),
('94a6e521c199c74f50ddcae5958f8b54e2ec2b9f', '110.93.244.255', 1644329360, ''),
('94b5a387f2577a2d9ce44c465b2654a6c04bfabd', '110.93.244.255', 1643609881, '__ci_last_regenerate|i:1643609881;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('951d3fbcbd274412ee2c4e836de48f45fdb1c54e', '110.93.244.255', 1644401869, '__ci_last_regenerate|i:1644401869;'),
('95768b883d37c0f66cde48b505d66c2cd57fc2d2', '110.93.244.255', 1643873536, '__ci_last_regenerate|i:1643873536;'),
('95872410711a16a6c1015e9feafdc07bfc005896', '110.93.244.255', 1643895232, '__ci_last_regenerate|i:1643895175;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('95d7101dd7849c4f392ff245702a48999530016e', '110.93.244.255', 1643885358, '__ci_last_regenerate|i:1643885358;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('95dd3ac915c1a3c65d3fb09dd9ad6f4705e5b245', '110.93.244.255', 1643794521, '__ci_last_regenerate|i:1643794521;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('966de969723233ba45b1c7345acc400f5e7f6e2b', '110.93.244.255', 1643718296, '__ci_last_regenerate|i:1643718296;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('9690ff70050f605f4346505879b0a00e477c5d54', '110.93.244.255', 1643885555, '__ci_last_regenerate|i:1643885555;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('96abcf35c264353d058cc4701a3ca6da07a3a439', '110.93.244.255', 1643620001, '__ci_last_regenerate|i:1643620001;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('9729fc07c781807dbb12126e31407a7143630f0a', '110.93.244.255', 1643887601, '__ci_last_regenerate|i:1643887601;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('9750494d982120f3c65ae52db45c533d255e1b07', '110.93.244.255', 1642765087, '__ci_last_regenerate|i:1642765087;'),
('97d28d2a468c3ac4b0b1d7159c049cf3b6c6621d', '110.93.244.255', 1643711795, '__ci_last_regenerate|i:1643711795;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('980cd2d860f3421ac0ad797397d0041fe8faf8c1', '110.93.244.255', 1643623906, '__ci_last_regenerate|i:1643623906;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('9835nqlfnt24l4b0q0d1281qe8de63t6', '::1', 1642573459, '__ci_last_regenerate|i:1642573459;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:15:\"Kiayada Mcbride\";s:5:\"phone\";s:17:\"+1 (593) 117-2533\";s:5:\"email\";s:25:\"redumazewi@mailinator.com\";s:7:\"address\";s:20:\"Voluptatem doloribus\";s:3:\"req\";s:20:\"Adipisicing nesciunt\";}cart_contents|a:4:{s:10:\"cart_total\";d:923;s:11:\"total_items\";d:3;s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:814;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('983e9748cbaa0012dbf6d3e921e1327aaf811d01', '110.93.244.255', 1643695006, '__ci_last_regenerate|i:1643695006;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Tamara Craft\";s:5:\"phone\";s:17:\"+1 (212) 932-4202\";s:5:\"email\";s:24:\"fopyqyzeh@mailinator.com\";s:7:\"address\";s:20:\"Sapiente irure eum s\";s:3:\"req\";s:20:\"Ut corporis cumque c\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1020;}'),
('98889000a781714e43627aee5cffa9f4b125cffb', '110.93.244.255', 1642590663, '__ci_last_regenerate|i:1642590642;'),
('9890679590ecddc5e7fcedf7b49e8d029284d7ad', '110.93.244.255', 1644319199, ''),
('98bd2a4daa029c488bf64ec9dec8455c84afd3fa', '110.93.244.255', 1643785820, '__ci_last_regenerate|i:1643785820;'),
('991d82ab6b7450d96312a7e988e702ecaaf85fa8', '110.93.244.255', 1643290702, '__ci_last_regenerate|i:1643290702;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('9992d48806b667138e1fa4b5a8062c821a8a9ec0', '110.93.244.255', 1643699347, '__ci_last_regenerate|i:1643699084;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('99cfb47acefc9bb6ef78a9c95881d748f82a1592', '110.93.244.255', 1643220213, '__ci_last_regenerate|i:1643220213;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:9:\"211212212\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:6:\"adadad\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('99f797db6214f9b8d11865b9ad0d1512ef8d605f', '110.93.244.255', 1644324790, '__ci_last_regenerate|i:1644324790;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('9a106891b960ab04e763732c97189117045d110d', '110.93.244.255', 1643280202, '__ci_last_regenerate|i:1643280202;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('9a58e235fdc8e9a1ac41a20472c72ba020d26888', '110.93.244.255', 1644320848, ''),
('9abd15f39f9f4a81c7e9d9d88a0e92d06a336b56', '110.93.244.255', 1644326051, ''),
('9b056f93f1a2c2a622860e030dd365a851644bc3', '110.93.244.255', 1643607449, '__ci_last_regenerate|i:1643607449;'),
('9b3c092474cd02bf2196b26bc8823021c808784b', '110.93.244.255', 1644401940, '__ci_last_regenerate|i:1644401940;success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('9b84a54933ecce6c44aeef2a9aaff18f1a300632', '52.114.32.212', 1643093323, '__ci_last_regenerate|i:1643093323;'),
('9bd41922088b07fe8731086bcd0a8706a652224c', '110.93.244.255', 1643608169, '__ci_last_regenerate|i:1643608169;'),
('9be25a59738be8b0d4ee6f757c917ff61d7590d4', '110.93.244.255', 1644402550, '__ci_last_regenerate|i:1644402550;'),
('9bec1d92ca8538237b3e482490e01bbd661fae26', '110.93.244.255', 1642596189, '__ci_last_regenerate|i:1642596189;'),
('9c132696f12a17d27ddd80064dba69e0175ca702', '110.93.244.255', 1643790535, '__ci_last_regenerate|i:1643790535;'),
('9c6789a46e9fba9fe54e446ee03f1c0b4a9bf7a3', '110.93.244.255', 1644401871, '__ci_last_regenerate|i:1644401871;'),
('9c72cc6c44391d458ef637bc73b6dd247c005bf0', '52.114.32.28', 1643891997, '__ci_last_regenerate|i:1643891997;'),
('9cbebe54c74f3fce7ad499c56c686ed72017fd50', '110.93.244.255', 1644401959, '__ci_last_regenerate|i:1644401959;success|s:22:\"Submitted Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('9cf06a72ca419ee8a0c540013c64dca5f665fc37', '52.114.14.71', 1644214675, '__ci_last_regenerate|i:1644214675;'),
('9cfe33f5fd63765955d584455ad8ce3fb2d8b986', '110.93.244.255', 1644319228, ''),
('9d110788b180f4932c8f49ef379f677695ade231', '110.93.244.255', 1642672769, '__ci_last_regenerate|i:1642672769;'),
('9e1623d538ab9edd4d9cc3ad096689356e894efd', '110.93.244.255', 1644320849, '__ci_last_regenerate|i:1644320849;'),
('9e4964aafaad49e16855eecd9def2f1258e5ffda', '52.114.32.28', 1643794471, '__ci_last_regenerate|i:1643794471;'),
('9e68064920e53382c4be0047d4eedaef24548901', '110.93.244.255', 1643369146, '__ci_last_regenerate|i:1643369146;'),
('9eb8466b215b1c4ef3488ef19cae8ff828428fb5', '110.93.244.255', 1644320848, '__ci_last_regenerate|i:1644320848;'),
('9eee14a3af476c45485d10017a166336027a7018', '110.93.244.255', 1643092193, '__ci_last_regenerate|i:1643092193;'),
('9f0737c02d1debcaff706f332d946f6eb8936fb4', '110.93.244.255', 1643951633, ''),
('9f0db2db1ff0b8b1c7ebbccb89ef7e4282775a0d', '110.93.244.255', 1644218406, '__ci_last_regenerate|i:1644218406;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('9f445b40f8afe946cd7db4a30bbd049abb8ccff3', '110.93.244.255', 1644319228, ''),
('9fa461b32cd9b4e13fc85b54e3f73310555d5b58', '110.93.244.255', 1644324269, ''),
('9faea78b85cac1320b8cc4e6a6bb73effa3f46b4', '110.93.244.255', 1643888366, '__ci_last_regenerate|i:1643888366;'),
('9o06rvddm0kiev6ruj5bhtndkj6o6bhq', '::1', 1642568725, '__ci_last_regenerate|i:1642568725;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:14:\"Hoyt Gutierrez\";s:5:\"phone\";s:17:\"+1 (493) 148-2313\";s:5:\"email\";s:21:\"jumivu@mailinator.com\";s:7:\"address\";s:20:\"Ut molestias debitis\";s:3:\"req\";s:20:\"Itaque exercitation \";}'),
('a012107235a0cc401828ad1ea8e2ae56f3ff440f', '52.114.32.28', 1643870495, '__ci_last_regenerate|i:1643870495;'),
('a0805b35f38b5ee09a3bbf7daefb2e6b9dc46100', '110.93.244.255', 1643627193, '__ci_last_regenerate|i:1643627193;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('a0a1a29efb2844e362d373fb44bb33620412032f', '110.93.244.255', 1644213757, '__ci_last_regenerate|i:1644213565;'),
('a0ae25a9f86bd79cc690b1ae30acdafc2b801d0b', '110.93.244.255', 1643784348, '__ci_last_regenerate|i:1643784348;'),
('a0cd7621492f81bd350138841d6ad009aaee115d', '110.93.244.255', 1644319201, ''),
('a0fb8ac7454998467efcf5c04105da2e807102c0', '110.93.244.255', 1642767146, '__ci_last_regenerate|i:1642767146;'),
('a1bfb7ee400d223c8cfddd823fea6120db5ab399', '110.93.244.255', 1642589194, '__ci_last_regenerate|i:1642589194;'),
('a1e02ffb602c70df9fc45014d56db12a84a80f4d', '110.93.244.255', 1644320847, ''),
('a284b76adb5c234e9d73aebfcd22861ea568775a', '68.194.160.59', 1643912160, '__ci_last_regenerate|i:1643912122;error|s:26:\"Invalid Email Or Password.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}'),
('a2d6f6780f19a13f69b0b1d4c01c28d064fee47c', '110.93.244.255', 1643280403, '__ci_last_regenerate|i:1643280403;'),
('a3262bfd63ae92a5bea764f998b3ca6ede5d7e31', '110.93.244.255', 1643890202, '__ci_last_regenerate|i:1643890202;'),
('a32f90f2a733e3363fe5dc1743614b95cbac3e18', '110.93.244.255', 1643867269, '__ci_last_regenerate|i:1643867269;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('a3b81682764f471a7ed84ed5dbbd079f6c5dccff', '110.93.244.255', 1644326050, '__ci_last_regenerate|i:1644326050;'),
('a3d6b9fde751e57f7dceef764cb424b7a9b30335', '110.93.244.255', 1644326036, ''),
('a3da3f97417f3f82aaf9402983bc3633cb162c21', '110.93.244.255', 1643344665, '__ci_last_regenerate|i:1643344665;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('a42046a46864ce1d3ffe2b509c8a56fab43e8f23', '110.93.244.255', 1644329359, '__ci_last_regenerate|i:1644329359;'),
('a431cdbceff7b9f373de416f6de412ca4d7af14b', '110.93.244.255', 1643176672, '__ci_last_regenerate|i:1643176670;'),
('a453254a0f4a0a745babde12795d5d8c7967d499', '110.93.244.255', 1644402854, '__ci_last_regenerate|i:1644402854;'),
('a4651b9920fbd739bd1ae7f9fb6c8ae591ae1bbc', '110.93.244.255', 1644319201, ''),
('a48054bb8a8001d60dd7667cd2ae5e855663f40c', '110.93.244.255', 1644401871, ''),
('a48625554bc2dc5fe582456ea3013cd2a7b117f5', '110.93.244.255', 1644228040, '__ci_last_regenerate|i:1644228040;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}success|s:19:\"Added Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('a48cf769ac516c4c61d54131653ad9a7ad9ab204', '110.93.244.255', 1644326036, ''),
('a4c3a42f210d6192b3b43459303bd1148629141a', '52.114.32.28', 1643701286, '__ci_last_regenerate|i:1643701286;'),
('a4c8eab8fc95093485a83d03bc0a04ec4d65ab00', '110.93.244.255', 1643216304, '__ci_last_regenerate|i:1643216304;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('a4d43c8b84adbd438ab30bd783bea869e8532c8e', '110.93.244.255', 1644329361, ''),
('a55b3a0bb4211ebaac651ab5c328d6ecb8299554', '110.93.244.255', 1644325370, '__ci_last_regenerate|i:1644325370;'),
('a59ccdd527f5574c590ba1e21f59386bf761e7e8', '110.93.244.255', 1643871491, '__ci_last_regenerate|i:1643871491;'),
('a5b6e93c8bc3b93ce2d86b8a3fb861ce26133524', '110.93.244.255', 1642765388, '__ci_last_regenerate|i:1642765388;'),
('a6a2e6860462c8fd62bd36c1409dfcd8bc04da1a', '52.114.32.28', 1643877824, '__ci_last_regenerate|i:1643877824;'),
('a7b5bf217291fcc0d8fbe0f0e3368f4525412d3d', '52.114.32.28', 1643800578, '__ci_last_regenerate|i:1643800578;'),
('a7b8c53efea49c039c38845fa1760b821c5b4549', '110.93.244.255', 1644324337, ''),
('a8240074e21851d411cc7a83152b502aaa638849', '110.93.244.255', 1644324297, ''),
('a8669ac99dfeec26ea2ea67b5055be53d10962fd', '110.93.244.255', 1644239969, '__ci_last_regenerate|i:1644239969;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('a894cdf09630f4733770ad96c1670c7d91091321', '110.93.244.255', 1644231178, '__ci_last_regenerate|i:1644231178;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('a8a278d64f3b79e675195f1e34138a4d6516f429', '110.93.244.255', 1643283090, '__ci_last_regenerate|i:1643283090;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('a9680c727f64400db9fca947271a9c91242b2f55', '110.93.244.255', 1644402596, ''),
('a9df1255ea29ee1e34f3b6f37d54b42c4f7bbe38', '110.93.244.255', 1643281227, '__ci_last_regenerate|i:1643281227;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('aa43829a3ec3fd70a798b2b18987b3adc7845f2e', '110.93.244.255', 1644329360, ''),
('aa46de16c8b85115633aeed0e2fbde3929d1132e', '110.93.244.255', 1642763202, '__ci_last_regenerate|i:1642763202;'),
('aa497b6d9e008b7b85f083366aaa2b79b51ce967', '110.93.244.255', 1642656357, '__ci_last_regenerate|i:1642656357;'),
('aacc3cc65501423c6fb62c183242d8cd2a27a73a', '110.93.244.255', 1643282586, '__ci_last_regenerate|i:1643282586;'),
('aacd4c2e85dfc9a73ab06c9a2ef8cf20d704a324', '110.93.244.255', 1643899471, '__ci_last_regenerate|i:1643899470;'),
('ab44a6dcd4582b93ccc2003ee4383a77743213a5', '110.93.244.255', 1643887484, '__ci_last_regenerate|i:1643887484;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('ab6aeadae9f106100a0e290f6a42e1c49732844b', '110.93.244.255', 1642592188, '__ci_last_regenerate|i:1642592188;'),
('aba077200acdb7b879cea1ef8a5266ba8a8a9af1', '110.93.244.255', 1644329361, ''),
('abc2eae9baf39ca555f1abe666997418967a00f6', '110.93.244.255', 1643369597, '__ci_last_regenerate|i:1643369597;'),
('ac05cd571768fbf5f4aa4ffabd16b16ea1aa5482', '110.93.244.255', 1643871691, '__ci_last_regenerate|i:1643871691;'),
('ac100ccd003a0a7b925e29311117673cab89e5a6', '110.93.244.255', 1644242781, '__ci_last_regenerate|i:1644242781;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ac193e5265cb282dd66ae72db2cfb69b770475c9', '110.93.244.255', 1643885827, '__ci_last_regenerate|i:1643885827;'),
('ac61c348f776fee261b924938fb687bc09113fa5', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('ac8bac096f643e4b8724a6c8bb9263198bf848c2', '110.93.244.255', 1643363057, '__ci_last_regenerate|i:1643363057;'),
('ac8f44cd6f89be7e46784e58f3236c911cf7c371', '110.93.244.255', 1644300885, '__ci_last_regenerate|i:1644300885;'),
('acccdb4f3f9a10ef39df1e256b55a5761a34e654', '110.93.244.255', 1643278593, '__ci_last_regenerate|i:1643278593;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('acdeajtmmeq0fidhq5l5oif5app598hm', '::1', 1642565359, '__ci_last_regenerate|i:1642565359;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('ad0709b8e96c9492f82f96ad1174c74e409243b7', '110.93.244.255', 1643888748, '__ci_last_regenerate|i:1643888748;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('ad2758fe8bb66f5f2ca9d85c1218091dc01ef264', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('ad2cf2332433de54033876db5c825fc2f72c4f6f', '110.93.244.255', 1644239423, '__ci_last_regenerate|i:1644239423;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ad64f98568431623ff594a249591049d2d869537', '110.93.244.255', 1643883012, '__ci_last_regenerate|i:1643883012;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('add95ac5e66de3f4ac2a8feb2c4032989b4338c8', '110.93.244.255', 1643353956, '__ci_last_regenerate|i:1643353956;'),
('add9b28b000d3f0b233564dbaa2a522fb4a0ff9d', '110.93.244.255', 1643709947, '__ci_last_regenerate|i:1643709947;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('ae31aff80683379e28fef9c6960604b8ae2c34c9', '110.93.244.255', 1643613123, '__ci_last_regenerate|i:1643613123;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ae57a7f93e31a9954b44333e772fcfecff6aefd5', '110.93.244.255', 1644320848, ''),
('ae6373edae897d364f6eda485cdcdb8e398521de', '110.93.244.255', 1644320848, ''),
('aed0670d871e6454b3f77f91c0b835359d46cf49', '110.93.244.255', 1643782793, '__ci_last_regenerate|i:1643782793;'),
('aed84109e818ad00902fcea97243132fe121da8e', '110.93.244.255', 1644225740, '__ci_last_regenerate|i:1644225740;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('aeda8c53989cb4a940a0ea35aebb16209357f0d3', '110.93.244.255', 1644320848, ''),
('af4c147b1a1015b5a1d6f640581c743d9f982ab9', '110.93.244.255', 1642743401, '__ci_last_regenerate|i:1642743401;'),
('af4dc260efdef2299fc94a43c00bbea79e1c4b6b', '110.93.244.255', 1643956161, '__ci_last_regenerate|i:1643956161;'),
('af6acc3d6e6f52dd1facaa782f801d490ece780c', '110.93.244.255', 1644324259, ''),
('af992080d5fcd0724538f721779917ce8223730b', '110.93.244.255', 1643951566, '__ci_last_regenerate|i:1643951566;'),
('afcf95b87e1ad8eb49a0c5c55b174f77fabbc596', '110.93.244.255', 1644320869, ''),
('afec147d574e3321d10323f3c5a2636f0e15a5e5', '110.93.244.255', 1643785256, '__ci_last_regenerate|i:1643785256;'),
('b02a4d5d7f96d23dcf68572a147e40d86ef5e25c', '52.114.32.28', 1643377116, '__ci_last_regenerate|i:1643377116;'),
('b0704c1607c78b4815d986d507aced5e6ac7095f', '110.93.244.255', 1642775104, '__ci_last_regenerate|i:1642775104;'),
('b21285bedcea51a7b13e829be9770777cbed2071', '110.93.244.255', 1643288921, '__ci_last_regenerate|i:1643288921;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";msg|s:1:\"1\";__ci_vars|a:2:{s:3:\"msg\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}success|s:22:\"Submitted Successfully\";'),
('b26439a62172052162f6a661672960e26e89ae5f', '110.93.244.255', 1644319199, ''),
('b273dd27d010464afdfaf66ee42d0d2e567bdf6f', '110.93.244.255', 1644305525, '__ci_last_regenerate|i:1644305523;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:8:\"logo.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('b329b7f87a64806d3b62a3efdb986138be284b39', '110.93.244.255', 1643692021, '__ci_last_regenerate|i:1643692021;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('b346e40043bb588f13d23f3707805d4f78021a91', '110.93.244.255', 1643219080, '__ci_last_regenerate|i:1643219080;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:9:\"211212212\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:6:\"adadad\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('b378057c0c98270195f481c048455614bc58bc58', '110.93.244.255', 1644320868, ''),
('b3ccfb358206726e764c532672e0f757e4a58264', '110.93.244.255', 1644231848, '__ci_last_regenerate|i:1644231848;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('b3f1489c244b6434a6ea83be4924b6edd4a1a20f', '110.93.244.255', 1643615092, '__ci_last_regenerate|i:1643615092;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('b4396b063697e2518d46e6893c03561c3519b4dd', '110.93.244.255', 1643885702, '__ci_last_regenerate|i:1643885702;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('b44c982c43d4387f2270b46ab639d0fadb48a5d0', '110.93.244.255', 1644325179, '__ci_last_regenerate|i:1644325179;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('b47646ed6193447b1373152dcf5904209236d71a', '110.93.244.255', 1644319227, '__ci_last_regenerate|i:1644319227;'),
('b48053e90c08d818e2dfcc154871eea8f2099102', '110.93.244.255', 1644401872, ''),
('b4a80c54c8255f5bb48c8d454558e308634f9d60', '110.93.244.255', 1643884003, '__ci_last_regenerate|i:1643884003;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('b4ba4acf0f907e65f648ee4b60dfb390319862f3', '110.93.244.255', 1644227724, '__ci_last_regenerate|i:1644227724;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('b4cbbdfabafb8d87bbb195628ae98f7c67e7ac71', '110.93.244.255', 1643215132, '__ci_last_regenerate|i:1643215132;'),
('b4d75091090ff641f3cf04bd1a44978ec54a622b', '110.93.244.255', 1643690271, '__ci_last_regenerate|i:1643690271;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('b4dfe7c259c8a961cee0c5f673af052e39b21a0b', '110.93.244.255', 1643877889, '__ci_last_regenerate|i:1643877826;'),
('b54229ab33562b1027bbd2f2954e552ba00cf2c5', '110.93.244.255', 1643799000, '__ci_last_regenerate|i:1643799000;'),
('b5b81bf84524428b5ae4011a87f6e86cdc4ccc9c', '110.93.244.255', 1643721008, '__ci_last_regenerate|i:1643721008;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('b5fa2ddfeda8bf61ad41196a514b62b34560d8ef', '110.93.244.255', 1643610636, '__ci_last_regenerate|i:1643610636;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('b6ab8a84dfb63cd78c9afd13414e725d17e01137', '110.93.244.255', 1643782860, '__ci_last_regenerate|i:1643782860;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:362;s:11:\"total_items\";d:2;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:2;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:362;}}'),
('b6b16c306587ef5c32f762c9826fd493f5602dc4', '110.93.244.255', 1643883352, '__ci_last_regenerate|i:1643883352;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('b75edbe7362e9155890fb3100453df632a2d7ac5', '110.93.244.255', 1643794622, '__ci_last_regenerate|i:1643794622;'),
('b811f51ef681b799939903bd1e878310c6df78f7', '110.93.244.255', 1644319230, ''),
('b8f3498fb8c86efb5fc51508977ba492f18d12c3', '110.93.244.255', 1643093417, '__ci_last_regenerate|i:1643093313;'),
('b94377435e330d4f22bd81736ba41dbda01529ec', '110.93.244.255', 1642744096, '__ci_last_regenerate|i:1642744096;'),
('b961509f2bc419dcb831ca170c49fbed5f3a87cd', '110.93.244.255', 1644226084, '__ci_last_regenerate|i:1644226084;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('b97cf28ea1dc6dfe5b170a4c20cf9a1d75bf750f', '110.93.244.255', 1643693346, '__ci_last_regenerate|i:1643693346;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('b9e844086de61a1cec199aaad5816356c9f1fc5d', '110.93.244.255', 1643891289, '__ci_last_regenerate|i:1643891289;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('ba17f215589b28f355cb2fc109b76a6548f2051d', '110.93.244.255', 1643354104, '__ci_last_regenerate|i:1643354104;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('ba5446257dd153623b503994d3cd43972d5f5da0', '110.93.244.255', 1642595122, '__ci_last_regenerate|i:1642595122;'),
('ba6b03ff063866ea197b5b2498ab4369d488e424', '110.93.244.255', 1643957911, '__ci_last_regenerate|i:1643957907;'),
('baaa63b8c01e7ec26020b63a7683ead47b97a397', '110.93.244.255', 1644227034, '__ci_last_regenerate|i:1644227034;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('bb580549c006b9781e454391d20409c9ad45d944', '110.93.244.255', 1644401940, '__ci_last_regenerate|i:1644401940;'),
('bbabf11043e39e5937a68c5269d82e8e1b00a67e', '110.93.244.255', 1643114458, '__ci_last_regenerate|i:1643114178;'),
('bc99e92dc105d76feebb80e079c12943be0e508c', '110.93.244.255', 1644326037, ''),
('bcc12e3b35771c3155474b35e3c39b65a5afd2d7', '110.93.244.255', 1644325616, '__ci_last_regenerate|i:1644325616;'),
('bcd035775efa43be6ff2f4d43a16618f0243e0a2', '110.93.244.255', 1643787189, '__ci_last_regenerate|i:1643787189;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('bd0be41ffe56a7dbe07bba4d7dafad903cab4e2d', '110.93.244.255', 1642760399, '__ci_last_regenerate|i:1642760399;'),
('bd34ff5c3ae07514b57bfde83646eeca7a559869', '110.93.244.255', 1642766845, '__ci_last_regenerate|i:1642766845;'),
('bdb89112791b1dc6210c3c2fe4c7d1a0c7db37ca', '110.93.244.255', 1643087924, '__ci_last_regenerate|i:1643087924;'),
('bde51f4a45edaa1ca4351d41e7435485937d8c9f', '110.93.244.255', 1642656492, '__ci_last_regenerate|i:1642656475;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('be379891aa067b0f98d0004ccba14781b3f28578', '110.93.244.255', 1644319202, ''),
('be66bbff82ce0479b02efa8b1bd262d258c4ccd6', '110.93.244.255', 1644324712, '__ci_last_regenerate|i:1644324711;'),
('be9d973110f41fd82ba01b4adaba0c17c114acdb', '110.93.244.255', 1643698552, '__ci_last_regenerate|i:1643698552;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:13:\"Tanya Brennan\";s:5:\"phone\";s:17:\"+1 (968) 168-6428\";s:5:\"email\";s:22:\"fyduryf@mailinator.com\";s:7:\"address\";s:19:\"Exercitation illum \";s:3:\"req\";s:20:\"In voluptate sed rep\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1020;}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('bef767a2e98406d3771388eb17092a7cfab8ea34', '110.93.244.255', 1643609183, '__ci_last_regenerate|i:1643609160;cart_contents|a:7:{s:10:\"cart_total\";d:1911;s:11:\"total_items\";d:7;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:2;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:362;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}'),
('bf22a7fd8c7a09fe4219dba39f1c634b7269d4d5', '110.93.244.255', 1644326035, ''),
('bf3b3302a22ca7bb21a648f3be4b9e75cc135d16', '110.93.244.255', 1643786590, '__ci_last_regenerate|i:1643786590;'),
('bf659f87304c007cc7b03f33d4a65be8e3925454', '110.93.244.255', 1643799613, '__ci_last_regenerate|i:1643799613;'),
('bfd383992cec92d1a5e8457680e085d36695449e', '110.93.244.255', 1644325917, '__ci_last_regenerate|i:1644325917;'),
('c07ceda703e4e74e012e592072b6649b31a06e94', '110.93.244.255', 1643889892, '__ci_last_regenerate|i:1643889892;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('c0879f6e72995f23bd43566fa3c12bb64492bfe7', '110.93.244.255', 1644320848, ''),
('c08a2f3e76f995571292c0b63b010465e323a499', '110.93.244.255', 1643374431, '__ci_last_regenerate|i:1643374431;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('c0ab11124ea714b4b26f84645cb0a8375738defb', '110.93.244.255', 1643952924, '__ci_last_regenerate|i:1643952924;'),
('c13292066ca7fecaf597c075584f53366661e28e', '110.93.244.255', 1644324261, ''),
('c185099bfae8268c390e0ca024cf9892d98cc544', '110.93.244.255', 1644326036, '__ci_last_regenerate|i:1644326036;'),
('c19b33f13283bbb04ad0ccfbac7d52cf0335aea8', '110.93.244.255', 1643788405, '__ci_last_regenerate|i:1643788405;'),
('c1a269354ccdf77269035e673341a0a01cfb74ad', '110.93.244.255', 1643215444, '__ci_last_regenerate|i:1643215444;cart_contents|a:3:{s:10:\"cart_total\";d:814;s:11:\"total_items\";d:2;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:2;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:814;}}success|s:18:\"Added Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('c2255f0d7299252ceb1b24fc0f06030ab1cf5e01', '110.93.244.255', 1644324260, ''),
('c22d6b52a94d6f5c821fa461a6f517a0dbc0fd8f', '110.93.244.255', 1643699388, '__ci_last_regenerate|i:1643699388;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:819;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:19:\"Minim impedit non e\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:819;}'),
('c22e5a83ba27a510566e67f7882f9c4f66277b66', '110.93.244.255', 1643363456, '__ci_last_regenerate|i:1643363456;'),
('c296d7b1ab6600e5014d933ef94962e42d2feea7', '110.93.244.255', 1644320854, '__ci_last_regenerate|i:1644320854;'),
('c2ee4587f5f3216de867e00d80b43c72759189ce', '110.93.244.255', 1643378538, '__ci_last_regenerate|i:1643378382;'),
('c30431cf654d64d81697bf720c3f0e50d29bfed2', '110.93.244.255', 1644401870, '__ci_last_regenerate|i:1644401870;'),
('c30ec1484cbcb9175d6b6ce0187713a9b66078a2', '110.93.244.255', 1644217388, '__ci_last_regenerate|i:1644217388;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('c312ad888ec87e5a44688b80096b45d08c177ec8', '110.93.244.255', 1643893259, '__ci_last_regenerate|i:1643893259;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('c3b7d9d7296af8d4bda7b37528f9b4cb201f44b5', '110.93.244.255', 1643219591, '__ci_last_regenerate|i:1643219591;checkout_data|a:6:{s:4:\"name\";s:5:\"adnan\";s:5:\"phone\";s:9:\"211212212\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:6:\"adadad\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('c3c83fdf70d61ff6f2f894d8a02093318fdee4d0', '110.93.244.255', 1643890619, '__ci_last_regenerate|i:1643890619;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";checkout_cake_data|a:4:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:5:\"price\";s:3:\"900\";s:3:\"img\";s:11:\"cake611.png\";}'),
('c4759b941e5c4f70dadc157506556f3cae5043e6', '110.93.244.255', 1644319229, ''),
('c47a676dcf16deb24ca1e233e0007ad495541b6c', '110.93.244.255', 1644402467, '__ci_last_regenerate|i:1644402467;'),
('c4bf6f1115665e4a1b9b5989115ad0e67fa8c1fd', '110.93.244.255', 1644326036, '__ci_last_regenerate|i:1644326036;'),
('c4f3712b3c8c12eb31e0adaad1a5e2d322e1a18f', '110.93.244.255', 1643345169, '__ci_last_regenerate|i:1643345169;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";cart_contents|a:5:{s:10:\"cart_total\";d:985;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('c51ceddf09a3cebf367ec7e774d9e834a011f2b7', '110.93.244.255', 1643952263, '__ci_last_regenerate|i:1643952263;'),
('c51dc26e50171071f18a2b7c9ff77b94419fb8be', '110.93.244.255', 1643873987, '__ci_last_regenerate|i:1643873987;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('c5266d9224d0c721d93603c57ca3ca6008793cb2', '110.93.244.255', 1643613134, '__ci_last_regenerate|i:1643613123;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('c5aac88634e02888cb01eb3de5b524ce1a11a322', '110.93.244.255', 1643882807, '__ci_last_regenerate|i:1643882807;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('c5febc6061cef38b2408b5d8f6f86b5910a3e532', '110.93.244.255', 1643288346, '__ci_last_regenerate|i:1643288346;'),
('c63b50090e338268cbbe8f5b959ea938ce4ba36f', '110.93.244.255', 1644401872, ''),
('c6a40359b373c2e410072b997b68e2149fb41999', '110.93.244.255', 1643917786, '__ci_last_regenerate|i:1643917786;'),
('c6e125f4651a75e86c0a51b0d1ec578dd514f700', '110.93.244.255', 1643899470, '__ci_last_regenerate|i:1643899470;'),
('c746eb9c4f5198f9b518cf816e69f304e41b05b4', '110.93.244.255', 1644324261, ''),
('c76311b2d4b0a3442b73f3a0b8c8cba481942057', '52.114.32.212', 1643354856, '__ci_last_regenerate|i:1643354856;'),
('c7727b176781121af86c63891d0a40bd034fffc9', '110.93.244.255', 1643883693, '__ci_last_regenerate|i:1643883693;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('c80019556567f3bf283f67f99c6f442554a34aee', '110.93.244.255', 1643955791, '__ci_last_regenerate|i:1643955791;'),
('c83863e60d9417687811f1001dd79a9137c223d3', '110.93.244.255', 1643713447, '__ci_last_regenerate|i:1643713447;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('c840c5a5b3b9569abc41b1184022ff5a6bff43ff', '110.93.244.255', 1643350163, '__ci_last_regenerate|i:1643350163;'),
('c85cf10fdcbc89b917ea247ab1284e122542cd0e', '110.93.244.255', 1643367753, '__ci_last_regenerate|i:1643367753;'),
('c87e179bd57e9dde9f7a6a86ebe051933341d699', '110.93.244.255', 1643366887, '__ci_last_regenerate|i:1643366887;'),
('c8c14b6a0d661b14132b04d48157c0fad23c045a', '110.93.244.255', 1643710251, '__ci_last_regenerate|i:1643710251;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:3:\"asd\";s:3:\"req\";s:6:\"asdasd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('c8f04a0b04b05d890a99eba8c0b725b8dda4fa7f', '110.93.244.255', 1643100209, '__ci_last_regenerate|i:1643100209;'),
('c913ca5e561a2e875f4064c35950cfad8ad3a990', '110.93.244.255', 1642764526, '__ci_last_regenerate|i:1642764526;'),
('c91d1e2f56f50acfc99e305315fe7b5b2c563f2c', '110.93.244.255', 1642592825, '__ci_last_regenerate|i:1642592825;'),
('c93353d6860972b5dc6a1db4afcc57558e15331e', '110.93.244.255', 1644321485, '__ci_last_regenerate|i:1644321485;'),
('c94351ff7576f389159dca57870d1d4412403a61', '110.93.244.255', 1644320850, ''),
('c9466669faecf1adf0e022a2e2f88bff33dc496b', '110.93.244.255', 1642597185, '__ci_last_regenerate|i:1642597185;'),
('c960435e6de0416ef70d6592fba86362e85eb839', '110.93.244.255', 1643953913, '__ci_last_regenerate|i:1643953913;'),
('c97b2ba85d69c4665dcca7ecb4e0dd1cc00d6343', '110.93.244.255', 1642774760, '__ci_last_regenerate|i:1642774760;'),
('c97e50125126054b56892a261724d18cef8017f7', '110.93.244.255', 1644329360, ''),
('c98bc3661e944ba8498735cf295f9d9e7f5c835e', '110.93.244.255', 1643215794, '__ci_last_regenerate|i:1643215794;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('ca138997b832241c64384796bfc5907262163cca', '110.93.244.255', 1644235155, '__ci_last_regenerate|i:1644235155;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:5:{s:10:\"cart_total\";d:763;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Hiroko Velez\";s:5:\"phone\";s:17:\"+1 (885) 272-2231\";s:5:\"email\";s:22:\"gyjitin@mailinator.com\";s:7:\"address\";s:20:\"Nobis aute est enim \";s:3:\"req\";s:19:\"Nihil laudantium sa\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:763;}'),
('ca14247f2620714459b78f2814e8332f86209254', '110.93.244.255', 1643877889, '__ci_last_regenerate|i:1643877889;'),
('ca3d51f55ebcb4534ad306c6df6b9593007a6cf3', '110.93.244.255', 1643617515, '__ci_last_regenerate|i:1643617515;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('cad45ea89a6ac6faecd2df4a69bfa2b724599fa2', '110.93.244.255', 1644319197, '__ci_last_regenerate|i:1644319197;'),
('cae3dc79f39502ae1bffa94288d6e16af0dea6ce', '110.93.244.255', 1643779740, '__ci_last_regenerate|i:1643779740;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:1205;s:11:\"total_items\";d:3;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}}checkout_data|a:7:{s:4:\"name\";s:18:\"Benjamin Wilkinson\";s:5:\"phone\";s:17:\"+1 (961) 759-3334\";s:5:\"email\";s:20:\"pupow@mailinator.com\";s:7:\"address\";s:20:\"Facilis aut aute ver\";s:3:\"req\";s:18:\"Amet sunt tempora \";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:181;}'),
('cafda11c97002d048b6fb66b0f4e584af9d42ead', '110.93.244.255', 1644401872, ''),
('cb2debbd9392d78bde782e6d9665cb68d6f4e726', '110.93.244.255', 1642593130, '__ci_last_regenerate|i:1642593130;'),
('cb52cca2ec9f699e66f9dc9dd0315db5ce4fb13d', '110.93.244.255', 1644326035, ''),
('cc2dd1963c190ba27d320020127c776264768c47', '110.93.244.255', 1643955020, '__ci_last_regenerate|i:1643955020;'),
('cc67a09c33a942b1ad4b51e51f3cc85b307ffd9d', '110.93.244.255', 1643878834, '__ci_last_regenerate|i:1643878834;'),
('cc6c0a452a792054032175e1df953359358c638e', '110.93.244.255', 1644325384, ''),
('cc6ca5580729084d183a6ed2f7650e9114158c07', '110.93.244.255', 1644324259, '__ci_last_regenerate|i:1644324259;'),
('cc9bbd1d6e8c6348b009489ed488671ce74eedf1', '110.93.244.255', 1643101318, '__ci_last_regenerate|i:1643101316;'),
('ccda4695b5dae0b89941d458a25d279738adfadb', '110.93.244.255', 1644324261, '__ci_last_regenerate|i:1644324261;'),
('ccdf4b82fa92c15a88fa5447ea16c3cd158c9384', '52.114.14.71', 1643617736, '__ci_last_regenerate|i:1643617736;'),
('cd0cb243ddfa903e35d006a1f39f29ae10db64c6', '110.93.244.255', 1643720696, '__ci_last_regenerate|i:1643720696;master_admin_email|s:16:\"adnan@oip.com.pk\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";'),
('cd92dd977d83830e75892009106858582c7a5078', '110.93.244.255', 1644320848, '__ci_last_regenerate|i:1644320848;'),
('cda3ddf751b0ef446ffb6206a17a34cb04e87cb1', '110.93.244.255', 1643955479, '__ci_last_regenerate|i:1643955479;'),
('cdad304a347c97aaec77f16bf43a6f50da3cec99', '110.93.244.255', 1644401872, ''),
('cdaf853dfecc0058332a147a5f8c33eda71b83fe', '110.93.244.255', 1644325011, '__ci_last_regenerate|i:1644325011;'),
('ce5ae3fa9cf9430b32dcab8dcde7d9c01ef55648', '110.93.244.255', 1643801548, '__ci_last_regenerate|i:1643801548;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('cec0cdfa74a81d4cd2d006c3fef8b46e7aa08633', '110.93.244.255', 1643357171, '__ci_last_regenerate|i:1643357171;'),
('cef7f0f1d801255cc2f632e644489e2e7716f6cb', '110.93.244.255', 1643377326, '__ci_last_regenerate|i:1643377166;'),
('cf1538242e76b2fe971f5484435e61dcbf72f27d', '110.93.244.255', 1642590197, '__ci_last_regenerate|i:1642590195;'),
('cf595080ce014211c9aac71738765875976bbb6b', '110.93.244.255', 1643895175, '__ci_last_regenerate|i:1643895175;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('cf906e0faf146a6df82d436e695faf51711a80f6', '110.93.244.255', 1643285204, '__ci_last_regenerate|i:1643285204;'),
('cgii6cvms37lemelq6d8b3ul4cr57au3', '::1', 1642570193, '__ci_last_regenerate|i:1642570193;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Lester Payne\";s:5:\"phone\";s:17:\"+1 (179) 773-5099\";s:5:\"email\";s:24:\"xucylegef@mailinator.com\";s:7:\"address\";s:19:\"Quis pariatur Dolor\";s:3:\"req\";s:19:\"Iste culpa non accu\";}'),
('ch7vkuvv2lf7uln07nnp9edmf2brj7db', '::1', 1642571183, '__ci_last_regenerate|i:1642571183;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:6:{s:4:\"name\";s:12:\"Gage Anthony\";s:5:\"phone\";s:17:\"+1 (869) 311-7466\";s:5:\"email\";s:22:\"ducuxij@mailinator.com\";s:7:\"address\";s:20:\"Ut do harum et exerc\";s:3:\"req\";s:20:\"Labore voluptate nih\";s:6:\"pay_id\";s:0:\"\";}cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('d047faa6d562b3c862b28a7672b6e36984f7f68c', '110.93.244.255', 1644324347, '__ci_last_regenerate|i:1644324347;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('d0673077f73b56331903e5bc2f56ef01fac6e37f', '110.93.244.255', 1644232875, '__ci_last_regenerate|i:1644232875;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('d09ac1fffa840848c6996e0db640a39c252614a2', '110.93.244.255', 1643783521, '__ci_last_regenerate|i:1643783521;'),
('d0f7b7d9b4f73ef66f7f72afb6e8a1e89fc09331', '110.93.244.255', 1644324270, ''),
('d132577a07a4a1eaa63e62109a6fc6562bef6589', '110.93.244.255', 1643705712, '__ci_last_regenerate|i:1643705712;cart_contents|a:6:{s:10:\"cart_total\";d:1180;s:11:\"total_items\";d:4;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}checkout_data|a:7:{s:4:\"name\";s:2:\"zz\";s:5:\"phone\";s:6:\"asdasd\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:4:\"zasd\";s:3:\"req\";s:3:\"asd\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1180;}'),
('d16f36cbaf9039675099da992d34e8c386d88065', '110.93.244.255', 1642738717, '__ci_last_regenerate|i:1642738706;'),
('d1946c8b4b99abd1c66af29b90444785e274fe74', '110.93.244.255', 1642663838, '__ci_last_regenerate|i:1642663838;cart_contents|a:4:{s:10:\"cart_total\";d:923;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:814;}}'),
('d1ddc18cbf9d7555b3aa77618e17ebc42e2bc4b0', '110.93.244.255', 1644320849, ''),
('d1e0fa0a6ddc1120ea8a1c1ade9b3e304dbaced5', '110.93.244.255', 1644215055, '__ci_last_regenerate|i:1644215055;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('d1e183a9cc94afef71a89303b55ef1a4af79138e', '110.93.244.255', 1643698935, '__ci_last_regenerate|i:1643698935;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:545;s:11:\"total_items\";d:2;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}checkout_data|a:7:{s:4:\"name\";s:15:\"Kylee Lancaster\";s:5:\"phone\";s:17:\"+1 (831) 461-9915\";s:5:\"email\";s:23:\"cavurosa@mailinator.com\";s:7:\"address\";s:19:\"Rerum consequatur e\";s:3:\"req\";s:19:\"Nulla pariatur Eum \";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:545;}'),
('d2150bb7b7c1e45643858767ca0a8d2b9f622d4e', '110.93.244.255', 1644324260, ''),
('d2157ff424f9c1a836bf917c9b90471a5eba3287', '110.93.244.255', 1644319203, ''),
('d21d941d77152333a23dbccc2171c2f498d5316c', '110.93.244.255', 1644319230, ''),
('d23277b5a650d2c3a7ba2bebcdde249e9d8e8033', '110.93.244.255', 1644320848, ''),
('d2d46539e89cb629ed60e58a25863b1bc712a3b7', '110.93.244.255', 1643608812, '__ci_last_regenerate|i:1643608812;cart_contents|a:5:{s:10:\"cart_total\";d:835;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:2;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:362;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('d3316f5351da26beb174d9fe4f0f9a4f9b8bff9f', '110.93.244.255', 1644324355, '__ci_last_regenerate|i:1644324355;'),
('d3738196cb8f467d1d674dd06407030633c97647', '110.93.244.255', 1643872394, '__ci_last_regenerate|i:1643872394;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('d3fd15a141d6f48d506e233e6318d86303e8d4ff', '110.93.244.255', 1643374096, '__ci_last_regenerate|i:1643374096;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('d40d95a61d9f30fc440039218e13ec93d8151f34', '110.93.244.255', 1643877890, '__ci_last_regenerate|i:1643877890;'),
('d44c9f3ae1ce1dbb2f37fc6bb1a79f1deb7f7828', '110.93.244.255', 1643284235, '__ci_last_regenerate|i:1643284235;'),
('d4ec7728d94f89f8b8eb767f14f50503e5c6ceb9', '110.93.244.255', 1643802623, '__ci_last_regenerate|i:1643802623;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('d4fbe1aac124de4e7bbde148e1f0deb13f30a308', '110.93.244.255', 1644401872, ''),
('d5377cca9f7040c6877ee5f06448a182c12ae32b', '110.93.244.255', 1644326036, '__ci_last_regenerate|i:1644326036;'),
('d5479eae343f369ea7684019217d7296a41f283f', '52.114.32.28', 1643877794, '__ci_last_regenerate|i:1643877794;'),
('d5507f0206e23e63dd11440ac3e908e251affc0b', '110.93.244.255', 1644215700, '__ci_last_regenerate|i:1644215700;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('d5576c1b14d4e656c17cf523d06a249d1999c686', '110.93.244.255', 1644401941, ''),
('d5f27812a5b5a85ffd2f978d78de230bf3314bec', '110.93.244.255', 1644323844, '__ci_last_regenerate|i:1644323844;'),
('d5f843105f6cd347878479a75ed49359ce713529', '110.93.244.255', 1643891619, '__ci_last_regenerate|i:1643891619;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('d61ae46c931b9e7f280c42b334169fe8c707cdb1', '110.93.244.255', 1642598229, '__ci_last_regenerate|i:1642598226;'),
('d6417d6a622dda1fcdb4d52b4656c0658eb553ea', '110.93.244.255', 1644402596, ''),
('d685a5b0b06ee4754a8494b9688f7d0f7ed6b97b', '110.93.244.255', 1643355532, '__ci_last_regenerate|i:1643355532;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('d6afbea122b51d7cbde6d533ec2fff05f4bed7c9', '110.93.244.255', 1644401960, '__ci_last_regenerate|i:1644401960;'),
('d707245a5e6da6714eab67d7b61e6fde41b0a141', '110.93.244.255', 1643783811, '__ci_last_regenerate|i:1643783811;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:512;s:11:\"total_items\";d:1;s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:13:\"Noelani Kline\";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:26:\"muhammad.hassan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('d73b78f5c84ae3be31a11c760d79b4442d203b99', '110.93.244.255', 1644325012, ''),
('d7f1bba42ecf2fbc94d687413d0a721a7782944a', '110.93.244.255', 1643800247, '__ci_last_regenerate|i:1643800247;'),
('d8233b5278509d7b979d195f28ff305e683e1179', '110.93.244.255', 1644324261, ''),
('d853f4bade5c8f1fce339f889a112679a25bc782', '110.93.244.255', 1642743019, '__ci_last_regenerate|i:1642743019;'),
('d8ac57cb3a5737c2437f7b36a5792d17731ed15a', '110.93.244.255', 1642597570, '__ci_last_regenerate|i:1642597570;'),
('d91392f2120b24d554c07f3602fcfb1f3e47f783', '110.93.244.255', 1644234210, '__ci_last_regenerate|i:1644234167;error|s:26:\"Invalid Email Or Password.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}'),
('d94d7057566151ca7513ab9ca34ac6cc52ac04f7', '110.93.244.255', 1644237341, '__ci_last_regenerate|i:1644237082;cart_contents|a:3:{s:10:\"cart_total\";d:1258;s:11:\"total_items\";d:1;s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:1;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:1258;}}'),
('d97d076afa1762bcdfdbcef1d1586c95225cb8ab', '110.93.244.255', 1643796452, '__ci_last_regenerate|i:1643796452;'),
('dab403bba5c78402bd864b00cf9e803bb476bf34', '110.93.244.255', 1644324315, '__ci_last_regenerate|i:1644324315;'),
('db0083709e20c75aff16f769f7361f7b97e9b308', '52.114.32.28', 1643877764, '__ci_last_regenerate|i:1643877764;'),
('dba4a41980a775134389f7c878067f47cff02d67', '110.93.244.255', 1642773068, '__ci_last_regenerate|i:1642773066;'),
('dbacde96dceb7d7bb2141bd860b51846a21d4035', '110.93.244.255', 1642762810, '__ci_last_regenerate|i:1642762810;'),
('dbe022a5cbb3742b73868dbe65f2113ecf97d629', '110.93.244.255', 1643619351, '__ci_last_regenerate|i:1643619351;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('dcf9d87d0e0e91db1eafeda8927a6178cc723718', '110.93.244.255', 1643889804, '__ci_last_regenerate|i:1643889804;'),
('dd180d1688824982ca7ec2f232724a2a18d9f262', '110.93.244.255', 1643887177, '__ci_last_regenerate|i:1643887177;cart_contents|a:3:{s:10:\"cart_total\";d:109;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('dd5281363ae269007959050d5c8b6dbd401b1fb5', '110.93.244.255', 1644325617, ''),
('dd5dde1d291e4facde7825522c67a4bd5cdc20a4', '110.93.244.255', 1642673142, '__ci_last_regenerate|i:1642673085;'),
('dd8dc8410c1dabd8287ea8d53a1d4c820a7bfabf', '110.93.244.255', 1643287006, '__ci_last_regenerate|i:1643287006;'),
('dda1809fd9f062b0472d0bdcbb45eaac97e80e9a', '110.93.244.255', 1644224650, '__ci_last_regenerate|i:1644224650;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ddmgmjmuh9hkgkls37irhm9gvv09b3u6', '::1', 1642577467, '__ci_last_regenerate|i:1642577467;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('de3d07b3b7467324566c595dcd6d5ea3eae2ad0c', '110.93.244.255', 1644325925, ''),
('de3e714e3bde3676c0f6936b7411171b56f3e016', '110.93.244.255', 1644326036, ''),
('de4e855f21ce39359ef99e0e55c24faa3d43da6b', '110.93.244.255', 1642597887, '__ci_last_regenerate|i:1642597887;'),
('de8920af36bf329da1783a628880c8e66ca9df58', '110.93.244.255', 1644325062, ''),
('dec4d5a2abc3dbb0be59d8e796ee7e4b0dfb1e13', '110.93.244.255', 1644319228, ''),
('defe0de5e438b235e8d2ef645e98dd2e9ef345ff', '110.93.244.255', 1644319229, ''),
('df2e0838ce346b4fd1fc94d4825417f8d4d8ff3e', '110.93.244.255', 1644326037, '__ci_last_regenerate|i:1644326037;'),
('dr1kvlg02f254aeskg5pitmk0uu3fmlu', '::1', 1642571803, '__ci_last_regenerate|i:1642571803;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Brynne Grant\";s:5:\"phone\";s:17:\"+1 (485) 708-1313\";s:5:\"email\";s:19:\"caxu@mailinator.com\";s:7:\"address\";s:19:\"Laboriosam tempor d\";s:3:\"req\";s:19:\"Elit ipsum et paria\";}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('e05881e64d135fa7ce8b86961307fc56931bb735', '110.93.244.255', 1643785509, '__ci_last_regenerate|i:1643785509;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:21:\"Assigned Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('e064e282ec9faf6746afbf8930a74bf1118a06cb', '110.93.244.255', 1643702020, '__ci_last_regenerate|i:1643702020;cart_contents|a:5:{s:10:\"cart_total\";d:999;s:11:\"total_items\";d:3;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:7:\"Zeeshan\";s:5:\"phone\";s:7:\"0216565\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:6:\"asdasd\";s:3:\"req\";s:9:\"qweqweqwe\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:999;}'),
('e0c876b0a6f132b759da4e9d64084c98119a8068', '110.93.244.255', 1644402568, '__ci_last_regenerate|i:1644402568;'),
('e17ee5915d908895b1c91e9cd9bf9664d341a34f', '110.93.244.255', 1644228382, '__ci_last_regenerate|i:1644228382;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:11772;s:11:\"total_items\";d:11;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:9;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:11322;}}'),
('e1ee16782505848d43fe3dc5218102cbe056a9a6', '110.93.244.255', 1644319228, ''),
('e1f27164b1d0f281c5ff21fef32df9debb2c2678', '110.93.244.255', 1644319200, '__ci_last_regenerate|i:1644319200;'),
('e2470db919f4a9585a86caa85e535dbb4ac5d7e7', '110.93.244.255', 1644319201, ''),
('e28171adea042f704a054ec6416ae59abd896fa0', '110.93.244.255', 1643874921, '__ci_last_regenerate|i:1643874921;'),
('e2f9415b2b6c66beee87ef6238475e1bdff0767e', '110.93.244.255', 1643376053, '__ci_last_regenerate|i:1643376053;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('e32ec74e2dd08fc1551d1cf841c2a833d390090e', '110.93.244.255', 1644232526, '__ci_last_regenerate|i:1644232526;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:9:{s:10:\"cart_total\";d:1803;s:11:\"total_items\";d:8;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:1;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:225;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:7:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:1;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:225;}s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:2;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:246;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('e3335920e490e35e13ebf508107272d053082fa5', '110.93.244.255', 1644234237, '__ci_last_regenerate|i:1644234237;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:5:{s:10:\"cart_total\";d:763;s:11:\"total_items\";d:4;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Hiroko Velez\";s:5:\"phone\";s:17:\"+1 (885) 272-2231\";s:5:\"email\";s:22:\"gyjitin@mailinator.com\";s:7:\"address\";s:20:\"Nobis aute est enim \";s:3:\"req\";s:19:\"Nihil laudantium sa\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:763;}'),
('e350da84925db9344b06d0975443682ac9e1b995', '110.93.244.255', 1643353688, '__ci_last_regenerate|i:1643353688;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:5:\"Rider\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:7:\"adadada\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('e39b3a9c00d13f753cf0465d7276fded4dbdcfd9', '110.93.244.255', 1643292957, '__ci_last_regenerate|i:1643292957;cart_contents|a:3:{s:10:\"cart_total\";d:123;s:11:\"total_items\";d:1;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}}'),
('e4617ed55fde8db7e6f1e208b6ad1b6ca30d5199', '110.93.244.255', 1644321399, ''),
('e4bc0de36caad8c3924949400a16d5e2b453e865', '110.93.244.255', 1642777794, '__ci_last_regenerate|i:1642777750;'),
('e4e27e3dd313aeac0fc53165b81e69198a9de698', '110.93.244.255', 1642747469, '__ci_last_regenerate|i:1642747468;'),
('e4e55ea521f4cb63ae15bafb3307cd177bd982af', '110.93.244.255', 1643783180, '__ci_last_regenerate|i:1643783180;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('e532dc6ff899e9c88948d2cfdf082dba5abe504b', '110.93.244.255', 1644319226, '__ci_last_regenerate|i:1644319226;'),
('e56ff190d602686d205d961252544507e7569ed8', '110.93.244.255', 1642594805, '__ci_last_regenerate|i:1642594805;'),
('e5712b31e2d752cce099029ccb0eded2fe41c0d9', '110.93.244.255', 1643368106, '__ci_last_regenerate|i:1643368106;'),
('e5c576aae3c6c2d8d950f8afec7448d66e7126d7', '110.93.244.255', 1644320847, ''),
('e5da1123e590e96f7a16f9f5872b38cb29710153', '110.93.244.255', 1643898013, '__ci_last_regenerate|i:1643898013;'),
('e6045901fcdc2b1cc906787b56d4293d52187ed2', '110.93.244.255', 1644401871, ''),
('e62a510df64f42ba8748c7bf3d9b3821100c7eba', '110.93.244.255', 1642772673, '__ci_last_regenerate|i:1642772673;'),
('e6747a444b60735397c9ba425a1d81e769ddf044', '110.93.244.255', 1644216688, '__ci_last_regenerate|i:1644216688;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('e6a8c301b47a572449bfeb8b1ef54583e5e33f59', '110.93.244.255', 1644402181, '__ci_last_regenerate|i:1644402181;'),
('e6acc5fe0a138fdf63d4442a86de7edda343bedd', '110.93.244.255', 1644320855, '__ci_last_regenerate|i:1644320855;'),
('e6f7eafc66ba0f3bac69dc5dfd396fc85e75488f', '110.93.244.255', 1643780900, '__ci_last_regenerate|i:1643780900;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('e7fa68c428c396738a1d483c50c05c6dc150b693', '110.93.244.255', 1642594029, '__ci_last_regenerate|i:1642594029;'),
('e8114278984b55d740a939190c475f431bade304', '110.93.244.255', 1644324259, '__ci_last_regenerate|i:1644324259;'),
('e824efefcde9ce3afbd6b4f94f2529cbca68520e', '110.93.244.255', 1643701268, '__ci_last_regenerate|i:1643701268;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:819;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:8:\"Ian Mack\";s:5:\"phone\";s:17:\"+1 (363) 615-3969\";s:5:\"email\";s:21:\"dofiny@mailinator.com\";s:7:\"address\";s:18:\"Consequat Sint dol\";s:3:\"req\";s:20:\"Iusto inventore tene\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:819;}'),
('e85043a762a52f45f2901ee06e84913450cc9ba8', '110.93.244.255', 1643701967, '__ci_last_regenerate|i:1643701807;cart_contents|a:5:{s:10:\"cart_total\";d:802;s:11:\"total_items\";d:3;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}checkout_data|a:7:{s:4:\"name\";s:5:\"about\";s:5:\"phone\";s:8:\"54463512\";s:5:\"email\";s:25:\"shair.mohammed@oip.com.pk\";s:7:\"address\";s:5:\"saefg\";s:3:\"req\";s:7:\"zzzzzzz\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:802;}'),
('e8cd40e68f8efa297460e0fcfa1512ace9bd0386', '110.93.244.255', 1642768176, '__ci_last_regenerate|i:1642768176;'),
('eaab998df76d44bf9342293dde9b42a483bde231', '110.93.244.255', 1643789994, '__ci_last_regenerate|i:1643789994;'),
('eb243c8b9f11f7aeae7be848548099afa7586629', '110.93.244.255', 1642655761, '__ci_last_regenerate|i:1642655761;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('eb5e64c7c6cacb4ccdd91f5dfaebf14e937979cc', '110.93.244.255', 1643784872, '__ci_last_regenerate|i:1643784872;'),
('ec5de2a5adb832cac7d016b46c2f4fb193f2fbb1', '110.93.244.255', 1643351929, '__ci_last_regenerate|i:1643351929;'),
('ec72a541fe06968bca8355a25b686f758eb2c72e', '110.93.244.255', 1643878296, '__ci_last_regenerate|i:1643878296;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ec9157f525ed97ccc3c6a8d3f09cd76360fdb5fc', '110.93.244.255', 1643218427, '__ci_last_regenerate|i:1643218427;checkout_data|a:6:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:14:\"admin@demo.com\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:20:\"Et accusantium ex mo\";s:3:\"cod\";i:0;}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('eca73b3c4708fefba5338765ef77e21f11542e36', '110.93.244.255', 1644320868, ''),
('ecd6ade7d076d7680d4f94d17f3a26b19f1d0cb5', '110.93.244.255', 1642668305, '__ci_last_regenerate|i:1642668292;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('ece88903e89ec0958759b8ffd0f14a08a2556a6f', '110.93.244.255', 1644319197, '__ci_last_regenerate|i:1644319197;'),
('ed2c760e5163af25130d68ab824f9a8ba3db37e2', '110.93.244.255', 1644324260, ''),
('ed412359f354ac9f6fd606f064e58640ddeef864', '110.93.244.255', 1644241860, '__ci_last_regenerate|i:1644241860;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ed5967aeb9aeb7253c1bf30f0fb17a56135e52ae', '110.93.244.255', 1644319200, ''),
('ed63284a7ce526caf29e19edbf6031ca88918fd9', '110.93.244.255', 1644232153, '__ci_last_regenerate|i:1644232153;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:13030;s:11:\"total_items\";d:12;s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";a:7:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:3:\"abc\";s:3:\"qty\";d:2;s:5:\"price\";d:225;s:3:\"img\";s:0:\"\";s:5:\"rowid\";s:32:\"45c48cce2e2d7fbdea1afc51c7c6ad26\";s:8:\"subtotal\";d:450;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:7:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:16:\"Meredith Ballard\";s:3:\"qty\";d:10;s:5:\"price\";d:1258;s:3:\"img\";s:9:\"logo3.png\";s:5:\"rowid\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:8:\"subtotal\";d:12580;}}'),
('ed6793cca0a2a1dfaa2ea22986521995baa1033a', '110.93.244.255', 1643705376, '__ci_last_regenerate|i:1643705376;cart_contents|a:5:{s:10:\"cart_total\";d:999;s:11:\"total_items\";d:3;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:7:\"Zeeshan\";s:5:\"phone\";s:7:\"0216565\";s:5:\"email\";s:25:\"zeeshan.bughio@oip.com.pk\";s:7:\"address\";s:6:\"asdasd\";s:3:\"req\";s:9:\"qweqweqwe\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:999;}'),
('ed9d11bf5fc3aa1922f0db642db08edd93ddfb0b', '110.93.244.255', 1643275324, '__ci_last_regenerate|i:1643275324;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:621;s:11:\"total_items\";d:2;s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}}'),
('eda5e4bc864b54627e898242788fbff31b74e972', '110.93.244.255', 1643888735, '__ci_last_regenerate|i:1643888735;'),
('edd5f533599b73e2802c0caf183bb9160af82b97', '110.93.244.255', 1643697468, '__ci_last_regenerate|i:1643697468;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:15:\"Latifah Sellers\";s:5:\"phone\";s:17:\"+1 (503) 402-2664\";s:5:\"email\";s:24:\"ricavitup@mailinator.com\";s:7:\"address\";s:20:\"Ea rerum quae cillum\";s:3:\"req\";s:20:\"Quod aut aliquip mol\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1020;}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ee3637d31c10ce1498b824e6dde068816c7f3e03', '110.93.244.255', 1643896793, '__ci_last_regenerate|i:1643896793;'),
('ee57f140cbf33653694018694049e018392fce1e', '110.93.244.255', 1644402456, '__ci_last_regenerate|i:1644402456;'),
('ee6b9b491a87e63af04e4c0e7b87cae8928f7cbb', '110.93.244.255', 1644235676, '__ci_last_regenerate|i:1644235676;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ee7dcd2690579f190cb7e8dbc3d8f7cd9cd74b6c', '110.93.244.255', 1644329359, '__ci_last_regenerate|i:1644329359;'),
('ee810b7795c623298df713ba6e830cad1489a85c', '110.93.244.255', 1644401870, '__ci_last_regenerate|i:1644401870;'),
('ee9fb402211e14aed71e4b7f8a4932103c8e9096', '110.93.244.255', 1644320868, ''),
('eeae03609388ec19934bdf7c52fc93a1a9ceda88', '110.93.244.255', 1644227226, '__ci_last_regenerate|i:1644227214;'),
('ef012026066436c6d44f9d503b331d9c0e106a94', '110.93.244.255', 1644217719, '__ci_last_regenerate|i:1644217719;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ef8fe73d5c05f3eb4118e523fdcd147a5ba7336f', '110.93.244.255', 1642660028, '__ci_last_regenerate|i:1642660028;'),
('ef93409e78a2ad8582184f3315ea6120e97742b4', '110.93.244.255', 1643285099, '__ci_last_regenerate|i:1643285099;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('f0468906c4acc9b3106f1de45147dc444720bd41', '110.93.244.255', 1643884475, '__ci_last_regenerate|i:1643884475;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('f1746e10b2a8848877a3b56e8d49e6d2b42e8d1d', '110.93.244.255', 1643291163, '__ci_last_regenerate|i:1643291163;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('f1838893d271c31310e4480aea8df456323a61d5', '110.93.244.255', 1642744816, '__ci_last_regenerate|i:1642744816;'),
('f1cb29f31c12ad12493c581d0fd08e9bbd1c579e', '110.93.244.255', 1644320855, '__ci_last_regenerate|i:1644320855;'),
('f1dc33d049af3e26d637518870bb6633465b467c', '110.93.244.255', 1643873353, '__ci_last_regenerate|i:1643873353;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('f1e91e64c21da3cb09ffea20ad7d90fcbfd8e366', '110.93.244.255', 1643279830, '__ci_last_regenerate|i:1643279830;'),
('f2015481d51f3b380f1dcca0b05fe1794b4d593b', '110.93.244.255', 1643284782, '__ci_last_regenerate|i:1643284782;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('f204fa317b436e901b1b319f3de783efe521374d', '110.93.244.255', 1643101316, '__ci_last_regenerate|i:1643101316;'),
('f2485979f6bd0b4351b40e49f14cabda8bdf132b', '110.93.244.255', 1642668292, '__ci_last_regenerate|i:1642668292;cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('f2f75718be9c041baef0323cf2361a85e0e66cd1', '52.114.14.102', 1643872111, '__ci_last_regenerate|i:1643872111;'),
('f344f4a511232d5326261b7b727da5f3d4f5b387', '110.93.244.255', 1644324315, ''),
('f3844306f93474cf3056c0a3aa827176a7d68735', '110.93.244.255', 1643866214, '__ci_last_regenerate|i:1643866181;'),
('f3a2257f6b5456da98c275f5135dba1b0ee8b6c3', '110.93.244.255', 1643093009, '__ci_last_regenerate|i:1643093008;'),
('f3df9ba436bd2e37a92330b9268242227e778578', '110.93.244.255', 1643891109, '__ci_last_regenerate|i:1643891109;'),
('f43a3143f82b1d3ffe5937c9feb2fb01e940fa9a', '110.93.244.255', 1643285460, '__ci_last_regenerate|i:1643285460;'),
('f4772fd737a088e28413937a9a981ea5568e4e7d', '110.93.244.255', 1643954667, '__ci_last_regenerate|i:1643954667;'),
('f4cb8ae40bdb3551d64e5dfe34224ab4e341cee5', '110.93.244.255', 1642657421, '__ci_last_regenerate|i:1642657421;'),
('f4dd1ee08b20f614b0946eaa43186f2a97250b1f', '110.93.244.255', 1643280921, '__ci_last_regenerate|i:1643280921;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('f4e3ba1f49f101101553448ee61aa1121af3d8d6', '110.93.244.255', 1644398260, ''),
('f4f772aa1cb24c26c47d4a011ff1d0f88a0fccd2', '110.93.244.255', 1643876684, '__ci_last_regenerate|i:1643876684;'),
('f57e07ccb55a1c05f4e930c2fd882c4ed9633aae', '110.93.244.255', 1644401872, ''),
('f59d4aac0e86b19034636fab4f016e7d4ca1a33a', '110.93.244.255', 1642594218, '__ci_last_regenerate|i:1642594218;'),
('f5b499581f102a4d3b45107e47308db4a29355c7', '110.93.244.255', 1644401872, ''),
('f5c84ad0862ee0e39a349332571cdccb99731365', '110.93.244.255', 1644319203, ''),
('f5vf0g9jt74a3ojvhlspdfkffbt25p9e', '::1', 1642566358, '__ci_last_regenerate|i:1642566358;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";'),
('f639ce1f76d2be11fa0e6fdd0c84b2be71313594', '110.93.244.255', 1643718616, '__ci_last_regenerate|i:1643718616;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('f65a84dc97de002f7833dcb8735cf845948fdcd6', '110.93.244.255', 1643884163, '__ci_last_regenerate|i:1643884163;'),
('f6cb65030c374bea7c1483aa72087346e674b666', '110.93.244.255', 1644322998, '__ci_last_regenerate|i:1644322998;cart_contents|a:3:{s:10:\"cart_total\";d:155;s:11:\"total_items\";d:1;s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:7:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"lunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:155;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:155;}}'),
('f6faa86d0671f8b707f20154529e39a6c6f687ae', '110.93.244.255', 1643878243, '__ci_last_regenerate|i:1643878243;'),
('f706c4669ea83df5b13d7d243fbe07583b52436b', '110.93.244.255', 1643697072, '__ci_last_regenerate|i:1643697072;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}checkout_data|a:7:{s:4:\"name\";s:12:\"Tamara Craft\";s:5:\"phone\";s:17:\"+1 (212) 932-4202\";s:5:\"email\";s:24:\"fopyqyzeh@mailinator.com\";s:7:\"address\";s:20:\"Sapiente irure eum s\";s:3:\"req\";s:20:\"Ut corporis cumque c\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:1020;}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('f7221b8f3fe3dc7ca62c8e511fc22e844e601c65', '110.93.244.255', 1642591473, '__ci_last_regenerate|i:1642591473;'),
('f76e673567e15f2d1d212bb1d7f1eb9a6f605d76', '110.93.244.255', 1642672426, '__ci_last_regenerate|i:1642672426;'),
('f7cae0f3025874314b82b0e46dc44774f08096b3', '110.93.244.255', 1643701706, '__ci_last_regenerate|i:1643701706;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:819;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:8:\"Ian Mack\";s:5:\"phone\";s:17:\"+1 (363) 615-3969\";s:5:\"email\";s:21:\"dofiny@mailinator.com\";s:7:\"address\";s:18:\"Consequat Sint dol\";s:3:\"req\";s:20:\"Iusto inventore tene\";s:3:\"cod\";s:3:\"COD\";s:10:\"cod_amount\";d:819;}'),
('f7e76f5d567b0e248fb4f1ad45f4c6e4949ef273', '110.93.244.255', 1643371302, '__ci_last_regenerate|i:1643371302;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('f80c71ccba2a604287ddf7dea71b115e810b8933', '110.93.244.255', 1644219296, '__ci_last_regenerate|i:1644219296;master_admin_email|s:14:\"rider@demo.com\";master_admin_name|s:7:\"Rider 1\";master_admin_image|s:8:\"img2.jpg\";master_admin_id|s:1:\"5\";master_admin_role|s:5:\"rider\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('f82282306799a84938969b4fc446fd24561bcf0d', '110.93.244.255', 1643796064, '__ci_last_regenerate|i:1643796064;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('f835cd2828e5adbd746b0ebdd655e9051a3058a8', '110.93.244.255', 1643884141, '__ci_last_regenerate|i:1643884141;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:3:{s:10:\"cart_total\";d:900;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Pine Apple\";s:3:\"qty\";d:1;s:5:\"price\";d:900;s:3:\"img\";s:11:\"cake611.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:900;}}'),
('f835df2c7d50d3fb21c8f9ae365e8ee291c658c8', '110.93.244.255', 1643889410, '__ci_last_regenerate|i:1643889410;cart_contents|a:7:{s:10:\"cart_total\";d:4153;s:11:\"total_items\";d:12;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:5;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:1820;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:2;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:910;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:2;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:218;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}}'),
('f83c0cf463ea0f3be13775bef910d7265af2e229', '110.93.244.255', 1644401872, '__ci_last_regenerate|i:1644401872;'),
('f8b43dcf39cabf9a57308896be064f4fe85839d1', '110.93.244.255', 1643898303, '__ci_last_regenerate|i:1643898013;'),
('f8ec41d81e3b7842be6ad320b5a12c9f7ac577d8', '110.93.244.255', 1642658962, '__ci_last_regenerate|i:1642658962;'),
('f9cc70a3ae5449d3abe99264318a9751b131ddaf', '110.93.244.255', 1643003411, '__ci_last_regenerate|i:1643003411;'),
('fa476a631e5deb3f4deedaaec92d8954016f6be7', '110.93.244.255', 1644319199, ''),
('fa9a002dbb983ef9163af3c34605c284b6bc2859', '110.93.244.255', 1643719567, '__ci_last_regenerate|i:1643719567;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:578;s:11:\"total_items\";d:2;s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:7:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"brunch product\";s:3:\"qty\";d:1;s:5:\"price\";d:123;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:123;}s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:7:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:17:\"breakfast product\";s:3:\"qty\";d:1;s:5:\"price\";d:455;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:455;}}checkout_data|a:7:{s:4:\"name\";s:6:\"Hassan\";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}'),
('facfe2485103a4d5a0e0187abf435037107e4a1b', '110.93.244.255', 1644324260, '__ci_last_regenerate|i:1644324260;'),
('fb4b56d4b229460f551ad466ab1d77f9404536c4', '110.93.244.255', 1644329360, ''),
('fb4f09fab6ae7da76d0525fda57848c31f56afe4', '110.93.244.255', 1644401941, ''),
('fbe25091692bbf108cbef8d53d64223d72354c75', '110.93.244.255', 1643378382, '__ci_last_regenerate|i:1643378382;cart_contents|a:3:{s:10:\"cart_total\";d:364;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:16:\"Audrey Schneider\";s:3:\"qty\";d:1;s:5:\"price\";d:364;s:3:\"img\";s:8:\"cat2.png\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:364;}}'),
('fc0052e3482a230e72acea522d5c98c97df5b29e', '110.93.244.255', 1644320847, ''),
('fc933f9b1427f882786824e34bb24278f2346a4d', '110.93.244.255', 1643692652, '__ci_last_regenerate|i:1643692652;cart_contents|a:5:{s:10:\"cart_total\";d:1020;s:11:\"total_items\";d:5;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:3;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:327;}s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:512;}}'),
('fd1d14058b611b1b26be72eddee867f7c244be0e', '110.93.244.255', 1644324297, '__ci_last_regenerate|i:1644324297;'),
('fd964d659c32a0f08cd2662cc574d8a262df2b35', '110.93.244.255', 1643796768, '__ci_last_regenerate|i:1643796768;'),
('fdac602555871b8bfa10863f4b78092f659bcb3b', '110.93.244.255', 1643356490, '__ci_last_regenerate|i:1643356490;'),
('fdd59a0fe6a813e20dee370a727e7a05d36604d3', '110.93.244.255', 1642774000, '__ci_last_regenerate|i:1642774000;'),
('fdff78d27439af93df2ebb20beba812f0961b101', '110.93.244.255', 1643984443, '__ci_last_regenerate|i:1643984160;'),
('fe1d0b10349ba95834d724e87ad7374f44409403', '110.93.244.255', 1643780384, '__ci_last_regenerate|i:1643780384;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";cart_contents|a:4:{s:10:\"cart_total\";d:1205;s:11:\"total_items\";d:3;s:32:\"c4ca4238a0b923820dcc509a6f75849b\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"Dylan Knight\";s:3:\"qty\";d:1;s:5:\"price\";d:181;s:3:\"img\";s:9:\"cat31.png\";s:5:\"rowid\";s:32:\"c4ca4238a0b923820dcc509a6f75849b\";s:8:\"subtotal\";d:181;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:2;s:5:\"price\";d:512;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:1024;}}checkout_data|a:7:{s:4:\"name\";s:6:\"Adnan \";s:5:\"phone\";s:17:\"+1 (493) 999-4786\";s:5:\"email\";s:16:\"adnan@oip.com.pk\";s:7:\"address\";s:20:\"2165 Florence Street\";s:3:\"req\";s:4:\"test\";s:3:\"cod\";s:6:\"Online\";s:10:\"cod_amount\";s:11:\"Online Paid\";}success|s:25:\"Order Placed Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('fe2fa8969dd4c28bf89082020b4be368a8e2d206', '110.93.244.255', 1644320908, '__ci_last_regenerate|i:1644320908;'),
('fe8ee2e19fbf98add81bb02c9f58889643b867b0', '110.93.244.255', 1644237765, '__ci_last_regenerate|i:1644237765;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('fef8427066b265c19afbf7570be3a673039a8b11', '110.93.244.255', 1644325371, ''),
('ff7ebd1722978a8fab2a777cbda46f9ac22c6e62', '110.93.244.255', 1643874158, '__ci_last_regenerate|i:1643874158;'),
('ffb4bbdc4e7dc8c55e402ad7653a4adb8bbf658e', '110.93.244.255', 1644325371, ''),
('gl69spfe9ucg9r6dh8eeq6l02l5ui8sq', '::1', 1642573038, '__ci_last_regenerate|i:1642573038;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:13:\"Ferris Fisher\";s:5:\"phone\";s:17:\"+1 (621) 462-2273\";s:5:\"email\";s:20:\"tedeg@mailinator.com\";s:7:\"address\";s:18:\"Provident illum ve\";s:3:\"req\";s:20:\"Magnam fugiat iste d\";}cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('gp1gbeij15l0fr38sjcqj2mtli5e0m0i', '::1', 1642583202, '__ci_last_regenerate|i:1642583202;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('hmg244d2aqvgltf472d3d46kn5131qgr', '::1', 1642587602, '__ci_last_regenerate|i:1642587545;master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('i11lb20h3uuv9rj0v1t2fu4nnqlde0ne', '::1', 1642584253, '__ci_last_regenerate|i:1642584253;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('ia5lvk749fb42dhjvboe5t8aqv56bf9f', '::1', 1642570807, '__ci_last_regenerate|i:1642570807;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Lester Payne\";s:5:\"phone\";s:17:\"+1 (179) 773-5099\";s:5:\"email\";s:24:\"xucylegef@mailinator.com\";s:7:\"address\";s:19:\"Quis pariatur Dolor\";s:3:\"req\";s:19:\"Iste culpa non accu\";}cart_contents|a:3:{s:10:\"cart_total\";d:407;s:11:\"total_items\";d:1;s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:7:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:14:\"dinner product\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";s:8:\"subtotal\";d:407;}}'),
('k27r1bgqivlfghod0rk9qn6hjvju1r3i', '::1', 1642572701, '__ci_last_regenerate|i:1642572701;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Camilla Pena\";s:5:\"phone\";s:17:\"+1 (167) 203-4737\";s:5:\"email\";s:20:\"zybyv@mailinator.com\";s:7:\"address\";s:19:\"Anim ad velit in ei\";s:3:\"req\";s:20:\"Ut assumenda ea susc\";}'),
('kl0uujh7qu7044seubkhu05rs6r386vj', '::1', 1642585956, '__ci_last_regenerate|i:1642585956;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Xerxes Owens\";s:5:\"phone\";s:17:\"+1 (868) 537-2898\";s:5:\"email\";s:20:\"pixyw@mailinator.com\";s:7:\"address\";s:20:\"Deserunt libero moll\";s:3:\"req\";s:19:\"Voluptate velit bea\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('l21hn70pf4ni7rrf3aoad1afl9iu06ia', '::1', 1642575750, '__ci_last_regenerate|i:1642575750;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('ljj24imrt2jr98ffu84dvrnef8opuajm', '::1', 1642564387, '__ci_last_regenerate|i:1642564387;'),
('lrj3omfgl97squndp8hhk14doup40b6i', '::1', 1642565660, '__ci_last_regenerate|i:1642565660;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('n4egmobjl9nhmms4ade0qo2ng0qrpbuo', '::1', 1642586700, '__ci_last_regenerate|i:1642586700;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Xerxes Owens\";s:5:\"phone\";s:17:\"+1 (868) 537-2898\";s:5:\"email\";s:20:\"pixyw@mailinator.com\";s:7:\"address\";s:20:\"Deserunt libero moll\";s:3:\"req\";s:19:\"Voluptate velit bea\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('pi3qu5m7ig611fgcknsu1plt4tah87lv', '::1', 1642574953, '__ci_last_regenerate|i:1642574953;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}'),
('qatlutdji51vraio4r1t5tucimc2c9fa', '::1', 1642567260, '__ci_last_regenerate|i:1642567260;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:14:\"Hoyt Gutierrez\";s:5:\"phone\";s:17:\"+1 (493) 148-2313\";s:5:\"email\";s:21:\"jumivu@mailinator.com\";s:7:\"address\";s:20:\"Ut molestias debitis\";s:3:\"req\";s:20:\"Itaque exercitation \";}'),
('qj6evmlf1v5s821930a71f2a7d806i7t', '::1', 1642566022, '__ci_last_regenerate|i:1642566022;cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}'),
('rllql58i4bo9if6mj6kqjp64bbg6vnif', '::1', 1642571484, '__ci_last_regenerate|i:1642571484;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:6:{s:4:\"name\";s:15:\"Katelyn Freeman\";s:5:\"phone\";s:17:\"+1 (827) 732-4155\";s:5:\"email\";s:25:\"ryvyzideci@mailinator.com\";s:7:\"address\";s:20:\"Nulla nostrum irure \";s:3:\"req\";s:20:\"Magnam ex aut modi u\";s:10:\"payment_id\";s:0:\"\";}'),
('rol46m2638ap4fkp24ggh286tc495dqp', '::1', 1642569026, '__ci_last_regenerate|i:1642569026;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:13:\"Ariana Garcia\";s:5:\"phone\";s:17:\"+1 (557) 822-8366\";s:5:\"email\";s:25:\"mogomikuxu@mailinator.com\";s:7:\"address\";s:20:\"Lorem irure lorem es\";s:3:\"req\";s:20:\"Deleniti at ullamco \";}cart_contents|a:4:{s:10:\"cart_total\";d:516;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:13:\"Flavia Hughes\";s:3:\"qty\";d:1;s:5:\"price\";d:109;s:3:\"img\";s:8:\"cat1.png\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:109;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"Illana Copeland\";s:3:\"qty\";d:1;s:5:\"price\";d:407;s:3:\"img\";s:8:\"cat3.png\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:407;}}success|s:18:\"Added Successfully\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('rtb9p93h0ijj1frmtht8uphr0992q0ln', '::1', 1642583529, '__ci_last_regenerate|i:1642583529;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('sbapqolngcdqtffu1pgnpnh5sgq1f7m6', '::1', 1642579356, '__ci_last_regenerate|i:1642579356;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";'),
('un32e0vnte14hnbljdku1hh3gnc54nfp', '::1', 1642583903, '__ci_last_regenerate|i:1642583903;name|s:11:\"Lyle Obrien\";phone|s:17:\"+1 (852) 455-6706\";email|s:19:\"mydy@mailinator.com\";address|s:19:\"Lorem reprehenderit\";req|s:20:\"Et accusantium ex mo\";checkout_data|a:5:{s:4:\"name\";s:12:\"Nolan Crosby\";s:5:\"phone\";s:17:\"+1 (415) 333-7967\";s:5:\"email\";s:21:\"fyjifo@mailinator.com\";s:7:\"address\";s:20:\"Ea exercitation et t\";s:3:\"req\";s:19:\"Sit aliquip eligend\";}master_admin_email|s:20:\"masteradmin@demo.com\";master_admin_name|s:12:\"Master Admin\";master_admin_image|s:12:\"Asset-17.png\";master_admin_id|s:1:\"1\";master_admin_role|s:12:\"master admin\";');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(33) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `contact_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `contact_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `contact_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `full_name`, `email`, `phone`, `subject`, `message`, `contact_status`, `contact_created_at`, `contact_updated_at`) VALUES
(1, '', 'wq@rfg', 9, 'Irure sit cupiditate', '', 'enable', '2022-02-07 11:00:23', '2022-02-07 11:00:23'),
(2, 'Trevor Short', 'mezelon@mailinator.com', 34, 'Atque voluptas dolor', 'Cillum explicabo El', 'enable', '2022-02-07 11:00:49', '2022-02-07 11:00:49'),
(3, 'N', 'cebyzopu@mailinator.com', 9, 'Aut eaque incididunt', 'Omnis dolore fugit ', 'enable', '2022-02-07 12:47:21', '2022-02-07 12:47:21'),
(4, 'a', 'fyperij@mailinator.com', 11, 'Numquam ullamco ex e', 'Animi sit excepturi', 'enable', '2022-02-07 12:47:40', '2022-02-07 12:47:40'),
(5, 'Kaden Velazquez', 'jefol62377@mannawo.com', 15, 'Molestias minim sed ', 'Illum voluptas eius', 'enable', '2022-02-08 05:17:17', '2022-02-08 05:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `custom_order`
--

CREATE TABLE `custom_order` (
  `custom_order_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `custom_order_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `custom_order_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `custom_order_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_order`
--

INSERT INTO `custom_order` (`custom_order_id`, `name`, `email`, `phone`, `msg`, `image`, `custom_order_created_at`, `custom_order_updated_at`, `custom_order_status`) VALUES
(1, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa///////////////88888888888888888884444444444444444444444444444444444444444444', 'ar@ef', '09', '', NULL, '2022-02-07 11:04:08', '2022-02-07 11:06:51', 'disable'),
(2, 'Alexandra Chaney', 'bacuty@mailinator.com', '2', 'Et qui esse fuga Er', NULL, '2022-02-07 11:04:59', '2022-02-07 11:04:59', 'enable'),
(3, 'csd', 'abc@gmail.com', '1232131312', '', NULL, '2022-02-08 13:03:53', '2022-02-08 13:03:53', 'enable');

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
-- Table structure for table `homebnr`
--

CREATE TABLE `homebnr` (
  `homebnr_id` int(11) NOT NULL,
  `hdng` varchar(255) NOT NULL,
  `txt` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `homebnr_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `homebnr_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `homebnr_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homebnr`
--

INSERT INTO `homebnr` (`homebnr_id`, `hdng`, `txt`, `img1`, `img2`, `homebnr_created_at`, `homebnr_updated_at`, `homebnr_status`) VALUES
(1, '48', '<span> \r\n                                Join us. Life is so endlessly delicious</span><br>', 'cake2.png', 'cake1.png', '2022-01-12 11:59:59', '2022-01-18 09:05:30', 'enable'),
(2, '49', '<span> \r\n                                Join us. Life is so endlessly delicious</span><br>', 'cake2.png', 'cake1.png', '2022-01-12 12:00:36', '2022-01-18 09:05:33', 'enable'),
(3, '51', 'Officia duis lorem a.', 'cake1.jpg', 'logo13.png', '2022-02-07 10:22:05', '2022-02-07 10:28:34', 'disable'),
(4, '49', '<span> \r\n                                Join us. Life is so endlessly delicious12</span><br>', 'cake2.png', 'cake1.png', '2022-02-07 10:34:12', '2022-02-07 10:35:01', 'enable'),
(5, '60', 'Duis dolorem aperiam', 'map_dot_(1).png', 'truck-old.png', '2022-02-07 12:39:27', '2022-02-07 12:39:31', 'disable');

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
  `master_admin_status` enum('enable','disable') DEFAULT 'enable',
  `master_admin_created_by` int(11) DEFAULT NULL,
  `master_admin_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `master_admin_updated_by` int(11) DEFAULT NULL,
  `master_admin_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_admin`
--

INSERT INTO `master_admin` (`master_admin_id`, `master_admin_name`, `master_admin_email`, `master_admin_phone`, `master_admin_password`, `master_admin_rest_token`, `master_admin_address`, `master_admin_image`, `master_admin_role`, `master_admin_status`, `master_admin_created_by`, `master_admin_created_at`, `master_admin_updated_by`, `master_admin_updated_at`) VALUES
(1, 'Master Admin', 'masteradmin@demo.com', '(111) 111-1111', '4d882a55407a0ac66f11a8c68807cb92fb44afa58c723c5ece0833294375e7ebf3fd19c9818022e1fdb9134e4f940e6a04b96a1649c9a23ce8b48d598ea13cddmGuzAqbcv3H476jcbz66oes2+VBdtcifxo5pjCAmbcg=', '', 'testing', 'logo.png', 'master admin', 'enable', NULL, '2018-05-25 21:25:50', 1, '2022-02-08 07:31:39'),
(5, 'Rider 1', 'rider@demo.com', '(123) 456-7890', '20263ce4a92f2ad4d3cbe3aef0cea1cdb0a51abc5f065096f4768c453f77d506a38fd27051eb19d711f22e923d0650eaf1a85fa71b932ccd33b477c97e2a5e9byobX6cE1gItyTUBIoki3+Qf0LzQmb/VyF13BtngTn6g=', '', '112233', 'img2.jpg', 'rider', 'disable', 0, '2022-01-19 10:14:46', 1, '2022-02-07 09:27:54'),
(6, 'Rider 1', 'rider@demo.com', '(123) 456-7890', '23ab594f2627832f704750397bcb4005a84b2482567e95bc893114573f8d6c445017adf413b5fef8425f2eeabbb5b8fe3357a9e7dc6fc0fb1ceffc515652b43drwIX1EqKjbilKn/9Mm6zYXukOrupxHm4J/XcVT2TW7k=', '', '112233', NULL, 'rider', 'enable', 0, '2022-02-07 06:26:50', NULL, '2022-02-07 06:26:50'),
(7, 'Merrill Kennedy', 'rider1@rider.com', '+1 (993) 167-2824', 'aca9707e4199ca6d2a77febd500c8e1a87fd4ba600e7dd94d680a508248aa21523c3c49fa353f601a7f7edc7dba212acb1218db60e78107d2d86fe4149455c24McRm23gTkshp3S3MLoRmPkP9KxFsuyqreO4ymJ+eNPU=', '', 'Dolore perspiciatis', 'logo-social.png', 'rider', 'enable', 0, '2022-02-07 06:49:57', NULL, '2022-02-07 06:52:57'),
(8, 'Patience Brewer', 'qosoruh@mailinator.com', '+1 (433) 524-9131', 'c03fa5d2059e50aaf4cca14f49dca1a0803de85f869d8fd61a143b5c46a0e48e779f489addafa42dcfb1a3f6774e62f7c932ccdd525affbdea25879ff3675bf8e8c/ZyRRBIxo2KMjdAUWAvk1E2Zyn4gAEEIMXjw8RcITCFIkWXkaF+Gx6rBY068o', '', 'Reprehenderit necess', NULL, 'rider', 'disable', 0, '2022-02-07 09:04:10', NULL, '2022-02-07 09:15:50'),
(9, 'Ulla Kramer', 'zyjucaxax@mailinator.com', '+1 (629) 194-6468', '950e4a780d08399a969e869cccc4b458b592f95440bd0dac615184d32dbad03049ada138cfe5b24f5453fa0666e3e62376d4dbf253204fa3ca97dc7c55cfa2b0XdCrZTYjwwqNqpvQNEPoSXwcyHlUXi0GfnH5Ahi0Dzfd2zT0PDnY5pDFaxoFcf2d', '', 'Enim est impedit ex', 'nexgen.png', 'Select User Role', 'disable', 0, '2022-02-07 11:28:39', NULL, '2022-02-07 11:44:18'),
(10, 'Dawn Pierce', 'hydam@mailinator.com', '+1 (455) 115-5819', 'df5dc24c30c37ca7c4bd5681fd6ad856ef2d92de9704e0d63dbc1ac19735bd2c502be81e3480702b82128f1e5ef06042eb515cea8312dd722f3376ae618a2a64JbkfpBpLYWs9WmQ/NbuLsZ4Zm4yHWc2oiSh2I+CeY9WDzbcrOh2AZlM0QjKQlIiz', '', 'Iusto voluptas sunt', 'truck-old.png', 'Select User Role', 'disable', 0, '2022-02-07 12:30:34', NULL, '2022-02-07 12:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `meal_time`
--

CREATE TABLE `meal_time` (
  `meal_time_id` int(11) NOT NULL,
  `meal_time_name` varchar(255) NOT NULL,
  `meal_time_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `meal_time_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meal_time_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_time`
--

INSERT INTO `meal_time` (`meal_time_id`, `meal_time_name`, `meal_time_created_at`, `meal_time_updated_at`, `meal_time_status`) VALUES
(1, 'Breakfast Menu', '2022-01-17 06:59:12', '2022-01-17 06:59:12', 'enable'),
(2, 'Brunch Menu', '2022-01-17 06:59:12', '2022-01-17 06:59:12', 'enable'),
(3, 'Lunch Menu', '2022-01-17 06:59:12', '2022-01-17 06:59:12', 'enable'),
(4, 'Dinner Menu', '2022-01-17 06:59:12', '2022-01-17 06:59:12', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `meal_time_bridge`
--

CREATE TABLE `meal_time_bridge` (
  `meal_time_bridge_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `meal_time_id` int(11) NOT NULL,
  `meal_time_bridge_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `meal_time_bridge_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meal_time_bridge_status` enum('enable','disable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_time_bridge`
--

INSERT INTO `meal_time_bridge` (`meal_time_bridge_id`, `category_id`, `meal_time_id`, `meal_time_bridge_created_at`, `meal_time_bridge_updated_at`, `meal_time_bridge_status`) VALUES
(1, 48, 1, '2022-01-18 04:24:32', '2022-01-18 04:24:32', ''),
(5, 51, 2, '2022-01-18 04:25:19', '2022-01-18 04:25:19', ''),
(7, 53, 3, '2022-01-18 04:25:33', '2022-01-18 04:25:33', ''),
(8, 54, 4, '2022-01-18 04:25:44', '2022-01-18 04:25:44', ''),
(10, 56, 4, '2022-01-18 04:25:57', '2022-01-18 04:25:57', ''),
(11, 56, 1, '2022-01-18 04:26:02', '2022-01-18 04:26:02', ''),
(12, 57, 1, '2022-01-18 06:44:30', '2022-01-18 06:44:30', 'enable'),
(13, 55, 4, '2022-01-18 06:44:41', '2022-01-18 06:44:41', 'enable'),
(14, 52, 3, '2022-01-18 06:44:58', '2022-01-18 06:44:58', 'enable'),
(15, 58, 2, '2022-01-18 06:45:25', '2022-01-18 06:45:25', 'enable'),
(16, 59, 3, '2022-01-18 06:45:55', '2022-01-18 06:45:55', 'enable'),
(17, 60, 4, '2022-01-18 06:46:13', '2022-01-18 06:46:13', 'enable'),
(18, 50, 2, '2022-01-18 06:46:25', '2022-01-18 06:46:25', 'enable'),
(19, 49, 1, '2022-01-18 06:46:32', '2022-01-18 06:46:32', 'enable'),
(22, 62, 2, '2022-02-07 09:18:29', '2022-02-07 09:18:29', 'enable'),
(23, 61, 2, '2022-02-07 09:19:26', '2022-02-07 09:19:26', 'enable'),
(24, 61, 3, '2022-02-07 09:19:26', '2022-02-07 09:19:26', 'enable'),
(25, 63, 2, '2022-02-07 09:20:22', '2022-02-07 09:20:22', 'enable'),
(26, 63, 3, '2022-02-07 09:20:22', '2022-02-07 09:20:22', 'enable'),
(27, 64, 2, '2022-02-07 09:27:06', '2022-02-07 09:27:06', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `mobile_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `mobile_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mobile_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobile_id`, `name`, `price`, `image`, `mobile_created_at`, `mobile_updated_at`, `mobile_status`) VALUES
(1, 'Shellie Landry', 974, '10fa0-beef-minute-steak.jpg', '2021-12-28 11:42:03', '2021-12-28 11:43:32', 'enable'),
(2, 'Redmi Note 11 Pro', 970, 'xiaomi-redmi-note11-pro-1.jpg', '2021-12-30 07:13:57', '2021-12-30 09:35:42', 'enable'),
(3, 'Shellie Landry', 974, '10fa0-beef-minute-steak.jpg', '2021-12-30 09:52:32', '2021-12-30 09:52:32', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `newsletter_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `newsletter_updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `newsletter_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `unsubscribe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `email`, `newsletter_created_at`, `newsletter_updated_at`, `newsletter_status`, `unsubscribe`) VALUES
(1, 'm@a.c', '2022-02-07 11:02:33', '2022-02-07 11:02:33', 'enable', NULL),
(2, 'bijuhalu@mailinator.com', '2022-02-07 11:03:16', '2022-02-07 11:03:16', 'enable', NULL),
(3, 'votoc@mailinator.com', '2022-02-07 11:03:22', '2022-02-07 11:03:22', 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_bridge`
--

CREATE TABLE `order_bridge` (
  `order_bridge_id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `order_items_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_bridge`
--

INSERT INTO `order_bridge` (`order_bridge_id`, `checkout_id`, `order_items_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 4, 15),
(16, 4, 16),
(17, 5, 17),
(18, 5, 18),
(19, 5, 19),
(20, 6, 20),
(21, 7, 21);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_items_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_items_id`, `product_id`, `qty`, `sub_total`) VALUES
(1, 9, '2', '450'),
(2, 11, '10', '12580'),
(3, 9, '1', '225'),
(4, 10, '1', '225'),
(5, 6, '2', '246'),
(6, 2, '1', '364'),
(7, 8, '1', '407'),
(8, 1, '1', '181'),
(9, 7, '1', '155'),
(10, 1, '2', '362'),
(11, 2, '2', '728'),
(12, 3, '2', '218'),
(13, 11, '1', '1258'),
(14, 8, '1', '407'),
(15, 8, '2', '814'),
(16, 11, '1', '1258'),
(17, 1, '1', '181'),
(18, 2, '1', '364'),
(19, 3, '2', '218'),
(20, 11, '1', '1258'),
(21, 2, '1', '364');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `payment_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `card_name`, `card_number`, `month`, `year`, `total_amount`, `payment_created_at`, `payment_updated_at`, `payment_status`) VALUES
(1, 'abc', '424242424242', '11', '2023', '13030', '2022-02-07 11:10:06', '2022-02-07 11:10:06', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `stock` varchar(255) DEFAULT 'In Stock',
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `stock`, `category_id`, `product_name`, `product_price`, `product_image`, `product_desc`, `product_created_at`, `product_updated_at`, `product_status`) VALUES
(1, 'In Stock', 56, 'Dylan Knight', '181', 'cat31.png', 'Non hic non officia .', '2022-01-13 09:30:17', '2022-01-18 04:06:31', 'enable'),
(2, 'In Stock', 56, 'Audrey Schneider', '364', 'cat2.png', 'Non hic non officia .', '2022-01-13 09:30:28', '2022-01-18 04:06:22', 'enable'),
(3, 'In Stock', 48, 'Flavia Hughes', '109', 'cat1.png', 'Non hic non officia .', '2022-01-13 09:30:35', '2022-01-18 04:06:08', 'enable'),
(4, 'In Stock', 48, 'Illana Copeland', '512', 'cat3.png', 'Non hic non officia .', '2022-01-13 09:30:42', '2022-01-26 18:37:03', 'enable'),
(5, 'In Stock', 57, 'breakfast product', '455', 'cat3.png', 'Non hic non officia .', '2022-01-18 06:48:03', '2022-01-26 18:37:07', 'enable'),
(6, 'In Stock', 58, 'brunch product', '123', 'cat3.png', 'Non hic non officia .', '2022-01-18 06:48:19', '2022-01-26 18:37:16', 'enable'),
(7, 'In Stock', 59, 'lunch product', '155', 'cat3.png', 'Non hic non officia .', '2022-01-18 06:48:37', '2022-01-26 18:37:19', 'enable'),
(8, 'Out Of Stock', 60, 'dinner product', '407', 'cat3.png', 'Non hic non officia .', '2022-01-18 06:48:59', '2022-02-02 11:50:48', 'enable'),
(9, 'Out Of Stock', 61, 'abc', '225', '', 'special', '2022-02-07 09:26:28', '2022-02-07 09:48:18', 'disable'),
(10, 'In Stock', 61, 'abc', '225', '', 'special', '2022-02-07 09:33:43', '2022-02-07 09:44:45', 'disable'),
(11, 'In Stock', 49, 'Meredith Ballard', '1258', 'logo3.png', 'Voluptatem, ullamco .', '2022-02-07 09:35:45', '2022-02-07 09:47:40', 'disable'),
(12, 'In Stock', 57, 'Vanna Cherry', '162', '1.png', 'Nam dolore voluptate.', '2022-02-07 11:29:21', '2022-02-07 11:47:54', 'disable'),
(13, 'In Stock', 61, 'Oscar Maxwell', '758', 'truck-old.png', 'Consequatur, ut comm.', '2022-02-07 12:32:16', '2022-02-07 12:32:21', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `product_meal_bridge`
--

CREATE TABLE `product_meal_bridge` (
  `product_meal_bridge_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `meal_time_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_star`
--

CREATE TABLE `reviews_star` (
  `id` bigint(20) NOT NULL,
  `rest_store_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `type` enum('restaurant','store') NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `reviews_star_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permission`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', '[\"createUser\",\"updateUser\",\"viewUser\",\"deleteUser\",\"createRole\",\"updateRole\",\"viewRole\",\"deleteRole\",\"viewCustomer\",\"deleteCustomer\",\"createCategory\",\"updateCategory\",\"viewCategory\",\"deleteCategory\",\"createSubCategory\",\"updateSubCategory\",\"viewSubCategory\",\"deleteSubCategory\",\"createAttribute\",\"updateAttribute\",\"viewAttribute\",\"deleteAttribute\",\"createVariant\",\"updateVariant\",\"viewVariant\",\"deleteVariant\",\"createProduct\",\"updateProduct\",\"viewProduct\",\"deleteProduct\",\"createProductVariant\",\"updateProductVariant\",\"viewProductVariant\",\"deleteProductVariant\",\"createInventory\",\"updateInventory\",\"viewInventory\",\"deleteInventory\",\"createCurrency\",\"updateCurrency\",\"viewCurrency\",\"deleteCurrency\",\"createHome\",\"updateHome\",\"viewHome\",\"deleteHome\",\"createLocation\",\"updateLocation\",\"viewLocation\",\"deleteLocation\",\"updateContent\",\"viewOrder\",\"viewMarket\",\"updateSetting\",\"updateProfile\"]', 1, NULL, 1, '2020-02-13 12:31:13', NULL),
(2, 'customer', '', 1, NULL, NULL, NULL, NULL),
(3, 'vendor', '[\"createRole\",\"updateRole\",\"viewRole\",\"deleteRole\",\"createCategory\",\"updateCategory\",\"deleteCategory\"]', 1, NULL, 12, '2020-02-12 22:44:18', NULL);

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
  `map_radius` varchar(255) DEFAULT NULL,
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
  `settings_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `map_radius`, `settings_site_title`, `settings_email`, `settings_email_from`, `settings_email_to`, `settings_favicon`, `settings_address`, `settings_logo`, `settings_footer_logo`, `settings_phone`, `settings_status`, `settings_created_by`, `settings_created_at`, `settings_updated_by`, `settings_updated_at`, `lat`, `lng`) VALUES
(1, '10000000000000000000000000000000000000000000000000000', 'Wildberry Cake', 'website@domain.com', 'website@domain.com', 'website@domain.com', 'plan2.png', 'test', 'logo.png', '', '11111', 'enable', NULL, '2018-05-29 02:18:51', 1, '2022-02-08 07:31:59', '40.583640267909736', '-73.9510989189148');

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

-- --------------------------------------------------------

--
-- Table structure for table `table_reservation`
--

CREATE TABLE `table_reservation` (
  `table_reservation_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(33) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `special_req` varchar(2555) NOT NULL,
  `person_qty` int(50) NOT NULL,
  `approval` enum('accept','reject','pending') DEFAULT 'pending',
  `admin_remarks` varchar(255) DEFAULT NULL,
  `table_reservation_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `table_reservation_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `table_reservation_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_reservation`
--

INSERT INTO `table_reservation` (`table_reservation_id`, `name`, `email`, `phone`, `date`, `time`, `special_req`, `person_qty`, `approval`, `admin_remarks`, `table_reservation_status`, `table_reservation_created_at`, `table_reservation_updated_at`) VALUES
(1, 'Fitzgerald Wilson', 'pafyveqiz@mailinator.com', 1, '2011-06-21', '15:34:00', 'Sunt quos quis ut ea', 298, 'pending', NULL, 'enable', '2022-02-07 10:36:27', '2022-02-07 10:36:27'),
(2, 'Tobias Clayton', 'suxymumod@mailinator.com', 1, '1981-01-16', '19:08:00', 'Sit nisi obcaecati ', 587, 'pending', NULL, 'enable', '2022-02-07 10:37:02', '2022-02-07 10:37:02'),
(3, 'xz', 'ab@gmail.com', 2147483647, '0000-00-00', '00:00:00', '', 0, 'pending', NULL, 'enable', '2022-02-07 10:45:06', '2022-02-07 10:45:06'),
(4, 'Dustin Sampson', 'muwoxumig@mailinator.com', 1, '0000-00-00', '00:00:00', 'Voluptatem Optio e', 544, 'reject', 'test', 'enable', '2022-02-07 10:49:22', '2022-02-07 10:52:58'),
(5, 'mairaj', 'muhammad.mairaj@oip.com.pk', 2147483647, '2022-02-07', '21:59:00', 'Sunt quos quis ut ea', 1, 'pending', 'dsds', 'enable', '2022-02-07 10:53:34', '2022-02-07 10:55:36'),
(6, 'Wilma Mccormick', 'sihy@mailinator.com', 1, '1971-04-19', '03:52:00', 'Quam porro corporis ', 620, 'pending', NULL, 'enable', '2022-02-07 12:40:00', '2022-02-07 12:40:00'),
(7, 'Sonia Walls', 'vehiz@mailinator.com', 222, '2015-07-09', '07:37:00', 'Et laboriosam cupid', 838, 'pending', NULL, 'enable', '2022-02-07 12:40:18', '2022-02-07 12:40:18'),
(8, 'Emi Reid', 'adnan@oip.com.pk', 11111, '1971-09-11', '10:19:00', 'Quia consectetur un', 978, 'reject', 'ttttttttt', 'enable', '2022-02-07 12:44:12', '2022-02-07 12:44:32'),
(9, 'Delilah Reese', 'nukipogo@mailinator.com', 1, '1970-05-29', '07:35:00', 'Aut distinctio Dolo', 499, 'pending', NULL, 'enable', '2022-02-09 10:19:00', '2022-02-09 10:19:00'),
(10, 'Keelie Pratt', 'verug@mailinator.com', 1, '1972-01-23', '12:09:00', 'Cumque est consequat', 529, 'pending', NULL, 'enable', '2022-02-09 10:19:11', '2022-02-09 10:19:11'),
(11, 'Cecilia Newton', 'luqideny@mailinator.com', 1, '1997-12-02', '09:58:00', 'Minima ducimus occa', 877, 'pending', NULL, 'enable', '2022-02-09 10:19:19', '2022-02-09 10:19:19'),
(12, 'Adrienne Fleming', 'kybo@mailinator.com', 1, '1983-05-08', '14:58:00', 'Est est rem odio es', 313, 'pending', NULL, 'enable', '2022-02-09 10:19:30', '2022-02-09 10:19:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`cake_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `checkout_cake`
--
ALTER TABLE `checkout_cake`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `custom_order`
--
ALTER TABLE `custom_order`
  ADD PRIMARY KEY (`custom_order_id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`footer_links_id`);

--
-- Indexes for table `homebnr`
--
ALTER TABLE `homebnr`
  ADD PRIMARY KEY (`homebnr_id`);

--
-- Indexes for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD PRIMARY KEY (`master_admin_id`);

--
-- Indexes for table `meal_time`
--
ALTER TABLE `meal_time`
  ADD PRIMARY KEY (`meal_time_id`);

--
-- Indexes for table `meal_time_bridge`
--
ALTER TABLE `meal_time_bridge`
  ADD PRIMARY KEY (`meal_time_bridge_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `order_bridge`
--
ALTER TABLE `order_bridge`
  ADD PRIMARY KEY (`order_bridge_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_items_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_meal_bridge`
--
ALTER TABLE `product_meal_bridge`
  ADD PRIMARY KEY (`product_meal_bridge_id`);

--
-- Indexes for table `reviews_star`
--
ALTER TABLE `reviews_star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `table_reservation`
--
ALTER TABLE `table_reservation`
  ADD PRIMARY KEY (`table_reservation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake`
--
ALTER TABLE `cake`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `checkout_cake`
--
ALTER TABLE `checkout_cake`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_order`
--
ALTER TABLE `custom_order`
  MODIFY `custom_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `footer_links_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homebnr`
--
ALTER TABLE `homebnr`
  MODIFY `homebnr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_admin`
--
ALTER TABLE `master_admin`
  MODIFY `master_admin_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meal_time`
--
ALTER TABLE `meal_time`
  MODIFY `meal_time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meal_time_bridge`
--
ALTER TABLE `meal_time_bridge`
  MODIFY `meal_time_bridge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_bridge`
--
ALTER TABLE `order_bridge`
  MODIFY `order_bridge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_meal_bridge`
--
ALTER TABLE `product_meal_bridge`
  MODIFY `product_meal_bridge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews_star`
--
ALTER TABLE `reviews_star`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

--
-- AUTO_INCREMENT for table `table_reservation`
--
ALTER TABLE `table_reservation`
  MODIFY `table_reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
