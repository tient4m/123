-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 04:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `icon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `icon`) VALUES
(13, 'bánh kem', 'product-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `type` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `des`, `type`, `code`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Sale Tết ', 'Cực kì ưu đãi', 1, 'saletetcucvui', '10', '20%', NULL, NULL),
(2, 'Nô en vui vẻ', 'cực vui', 0, 'noenvuive', '20', '200000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `password`, `phone`, `address`, `avatar`) VALUES
(1, 'Hoàng Thế Quyền', 'hoangquyen0028@gmail.com', 'hoangquyen2222', '0869220028', 'Cư yên - Lương Sơn - Hòa Bình', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_11_29_110703_create_coupons_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(100) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `total`, `date`, `status`) VALUES
('6563294e7655f', NULL, '2023-11-26', 2),
('65632dea86b3d', NULL, '2023-11-26', 2),
('65645ef97db1a', NULL, '2023-11-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `des`, `price`, `images`, `size`, `status`, `category_id`, `supplier_id`) VALUES
(53, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(57, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(59, 'bánh sinh nhật 1', 'ngon tuyệt', 300000, 'Leaves59.jpg', 'L', 1, 5, 1),
(60, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(61, 'bánh sinh nhật 214', 'ngon tuyệtc acacacaca', 800000, 'Best Adventure Places to Visit in the World 50 Most Beautiful Places in the World 30 of the most bea42.jpg', 'S', 0, 8, 2),
(62, 'bánh sinh nhật 1', 'ngon tuyệt', 300000, 'Leaves59.jpg', 'L', 1, 5, 1),
(63, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(64, 'bánh sinh nhật 214', 'ngon tuyệtc acacacaca', 800000, 'Best Adventure Places to Visit in the World 50 Most Beautiful Places in the World 30 of the most bea42.jpg', 'S', 0, 8, 2),
(65, 'bánh sinh nhật 1', 'ngon tuyệt', 300000, 'Leaves59.jpg', 'L', 1, 5, 1),
(66, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(67, 'bánh sinh nhật 214', 'ngon tuyệtc acacacaca', 800000, 'Best Adventure Places to Visit in the World 50 Most Beautiful Places in the World 30 of the most bea42.jpg', 'S', 0, 8, 2),
(68, 'bánh sinh nhật 1', 'ngon tuyệt', 300000, 'Leaves59.jpg', 'L', 1, 5, 1),
(69, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(70, 'bánh sinh nhật 214', 'ngon tuyệtc acacacaca', 800000, 'Best Adventure Places to Visit in the World 50 Most Beautiful Places in the World 30 of the most bea42.jpg', 'S', 0, 8, 2),
(71, 'bánh sinh nhật 1', 'ngon tuyệt', 300000, 'Leaves59.jpg', 'L', 1, 5, 1),
(72, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(73, 'bánh sinh nhật 214', 'ngon tuyệtc acacacaca', 800000, 'Best Adventure Places to Visit in the World 50 Most Beautiful Places in the World 30 of the most bea42.jpg', 'S', 0, 8, 2),
(74, 'bánh sinh nhật 1', 'ngon tuyệt', 300000, 'product-96.jpg', 'L', 1, 5, 1),
(75, 'bánh sinh nhật', 'ngon tuyệt', 300000, 'banh1.jpg', 'L', 1, 5, 1),
(76, 'bánh sinh nhật 214', 'ngon tuyệtc acacacaca', 30000, 'product-839.jpg', 'S', 0, 13, 2),
(77, 'bánh sinh nhật 1', 'ngon tuyệt', 30000, 'product-1297.jpg', 'L', 1, 13, 1),
(78, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(79, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(80, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(81, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(82, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(83, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(84, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(85, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(86, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(87, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(88, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(89, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(90, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(91, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(92, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(93, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(94, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(95, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(96, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(97, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(98, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(99, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(100, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(101, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(102, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(103, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(104, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(105, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(106, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(107, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(108, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(109, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(110, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(111, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(112, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(113, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(114, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(115, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(116, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(117, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(118, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(119, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(120, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(121, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(122, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(123, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(124, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(125, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(126, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(127, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(128, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(129, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(130, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(131, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(132, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(133, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(134, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(135, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(136, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(137, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(138, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(139, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(140, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(141, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(142, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(143, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(144, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(145, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(146, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(147, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(148, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(149, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(150, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(151, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(152, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(153, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(154, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(155, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(156, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(157, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(158, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(159, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(160, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(161, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(162, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(163, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(164, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(165, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(166, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(167, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(168, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(169, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(170, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(171, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(172, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(173, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(174, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(175, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(176, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(177, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(178, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(179, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(180, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(181, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(182, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(183, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(184, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(185, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(186, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(187, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(188, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(189, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(190, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(191, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(192, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(193, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(194, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(195, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(196, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(197, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(198, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(199, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(200, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(201, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(202, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(203, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(204, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(205, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(206, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(207, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(208, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(209, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(210, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(211, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(212, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(213, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(214, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(215, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(216, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(217, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(218, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(219, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(220, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(221, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(222, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(223, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(224, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(225, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(226, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(227, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(228, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(229, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(230, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(231, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(232, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(233, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(234, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(235, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(236, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(237, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(238, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(239, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(240, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(241, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(242, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(243, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(244, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(245, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(246, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(247, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(248, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(249, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(250, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(251, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(252, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(253, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(254, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(255, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(256, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(257, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(258, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(259, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(260, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(261, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(262, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(263, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(264, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(265, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(266, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(267, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(268, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(269, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(270, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(271, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(272, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(273, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(274, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(275, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(276, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(277, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(278, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(279, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(280, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(281, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(282, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(283, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(284, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(285, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(286, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(287, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(288, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(289, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(290, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(291, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(292, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(293, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(294, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(295, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(296, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(297, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(298, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(299, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(300, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(301, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(302, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(303, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(304, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(305, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(306, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(307, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(308, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(309, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(310, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(311, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(312, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(313, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(314, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(315, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(316, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(317, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(318, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(319, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(320, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(321, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(322, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(323, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(324, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(325, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(326, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(327, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(328, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(329, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(330, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(331, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(332, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(333, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(334, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(335, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(336, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(337, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(338, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(339, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(340, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(341, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(342, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(343, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(344, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(345, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(346, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(347, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(348, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(349, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(350, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(351, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(352, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(353, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(354, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(355, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(356, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(357, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(358, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(359, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(360, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(361, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(362, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(363, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(364, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(365, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(366, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(367, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(368, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(369, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(370, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(371, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(372, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(373, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(374, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(375, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(376, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(377, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(378, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(379, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(380, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(381, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1),
(382, 'DOZEN CUPCAKES', 'ngon', 30000, 'product-1.jpg', 'L', 1, 13, 1),
(383, 'GLUTEN FREE MINI DOZEN', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(384, 'COOKIES AND CREAM', 'ngon', 20000, 'product-2.jpg', 'L', 1, 13, 1),
(385, 'COOKIE DOUGH', 'ngon', 25000, 'product-4.jpg', 'L', 1, 13, 1),
(386, 'VANILLA SALTED CARAMEL', 'ngon', 25000, 'product-5.jpg', 'L', 1, 13, 1),
(387, 'GERMAN CHOCOLATE', 'ngon', 35000, 'product-6.jpg', 'M', 1, 13, 1),
(388, 'DULCE DE LECHE', 'ngon', 30000, 'product-7.jpg', 'M', 1, 13, 1),
(389, 'MISSISSIPPI MUD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida', 20000, 'product-8.jpg', 'M', 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `order_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `product_id`, `quantity`, `name`, `phone`, `address`, `email`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 85, 1, 'ewacas', '073402723', 'avavavavav', 'avava@gmail.com', '6563294e7655f', '2023-11-26 04:17:48', '2023-11-26 04:17:48'),
(2, 76, 1, 'ewacas', '073402723', 'avavavavav', 'avava@gmail.com', '6563294e7655f', '2023-11-26 04:17:48', '2023-11-26 04:17:48'),
(3, 84, 2, 'ewacas', '073402723', 'avavavavav', 'avava@gmail.com', '6563294e7655f', '2023-11-26 04:17:48', '2023-11-26 04:17:48'),
(4, 81, 2, 'vsavsvs', '43636363', 'vsvsvsvs', 'ahoaho@gmail.com', '65632dea86b3d', '2023-11-26 04:37:32', '2023-11-26 04:37:32'),
(5, 85, 2, 'vsavsvs', '43636363', 'vsvsvsvs', 'ahoaho@gmail.com', '65632dea86b3d', '2023-11-26 04:37:32', '2023-11-26 04:37:32'),
(6, 85, 2, 'Hoàng Thế Quyền', '0869220028', 'Hòa Bình', 'Hoangquyen0028@gmail.com', '65645ef97db1a', '2023-11-27 02:19:32', '2023-11-27 02:19:32'),
(7, 84, 1, 'Hoàng Thế Quyền', '0869220028', 'Hòa Bình', 'Hoangquyen0028@gmail.com', '65645ef97db1a', '2023-11-27 02:19:32', '2023-11-27 02:19:32'),
(8, 83, 1, 'Hoàng Thế Quyền', '0869220028', 'Hòa Bình', 'Hoangquyen0028@gmail.com', '65645ef97db1a', '2023-11-27 02:19:32', '2023-11-27 02:19:32'),
(9, 82, 1, 'Hoàng Thế Quyền', '0869220028', 'Hòa Bình', 'Hoangquyen0028@gmail.com', '65645ef97db1a', '2023-11-27 02:19:32', '2023-11-27 02:19:32'),
(10, 80, 1, 'Hoàng Thế Quyền', '0869220028', 'Hòa Bình', 'Hoangquyen0028@gmail.com', '65645ef97db1a', '2023-11-27 02:19:32', '2023-11-27 02:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `contact_info`) VALUES
(1, 'tập đoàn abc', 'bapncpanc'),
(2, 'tập đoàn bcd', 'ac na;cnacna[');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchases_orders` (`order_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `fk_purchases_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
