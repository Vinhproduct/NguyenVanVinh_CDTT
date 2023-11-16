-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2023 lúc 10:01 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nguyenvanvinh_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(4, 'LVBrand', 'lvbrand', 'lvbrand.jpg', 1, 'LVBrand', 'LVBrand', 1, NULL, 1, '2023-10-26 02:18:24', '2023-10-26 02:18:24'),
(5, 'LocalBrand', 'localbrand', 'localbrand.jpg', 1, 'LocalBrand', 'LocalBrand', 1, NULL, 1, '2023-10-26 02:45:52', '2023-10-26 02:45:52'),
(7, 'Brand Twenty five (25)', 'brand-twenty-five-25', 'brand-twenty-five-25.jpg', 0, 'Brand Twenty five (25)', 'Brand Twenty five (25)', 1, NULL, 1, '2023-10-26 02:49:09', '2023-10-26 02:49:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(1000) DEFAULT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `metakey`, `metadesc`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Thời trang nữ', 'thoi-trang-nu', 0, 0, 'thoi-trang-nu.jpg', 'Thời trang nữ', 'Thời trang nữ', 1, 1, 1, '2023-10-22 19:32:16', '2023-10-22 12:21:21'),
(5, 'Thời trang giớ trẻ', 'thoi-trang-gio-tre', 0, 0, 'thoi-trang-gio-tre.jpg', 'Thời trang giớ trẻ', 'Thời trang giớ trẻ', 1, 1, 1, '2023-10-25 10:26:38', '2023-10-25 03:26:38'),
(6, 'Bắc óc chó', 'bac-oc-cho', 5, 0, 'bac-oc-cho.jpg', 'ád', 'ád', 1, 1, 0, '2023-10-22 19:15:08', '2023-10-22 12:15:08'),
(7, 'Bắc óc chó', 'bac-oc-cho', 6, 0, 'bac-oc-cho.jpg', 'Bắc óc chó', 'Bắc óc chó', 1, 1, 0, '2023-10-22 19:15:02', '2023-10-22 12:15:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(1000) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `metakey` varchar(225) NOT NULL,
  `metadesc` varchar(225) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `replay_id` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Liên Hệ', 'vinh@gmail.com', '123', 'thông báo', '', 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link`
--

CREATE TABLE `link` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `link`
--

INSERT INTO `link` (`id`, `slug`, `table_id`, `type`) VALUES
(1, 'bac-oc-cho', 3, 'category'),
(2, 'bac-oc-cho', 1, 'topic'),
(3, 'thoi-trang-gio-tre', 5, 'category'),
(4, 'bac-oc-cho', 6, 'category'),
(5, 'bac-oc-cho', 7, 'category');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `table_id`, `type`, `position`, `parent_id`, `sort_order`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'Trang Chủ', 'index.php', 0, 'custom', 'mainmenu', 0, 3, 1, NULL, '2023-10-25 23:47:28', 1, 1),
(6, 'Thời trang giớ trẻ', 'thoi-trang-gio-tre', 5, 'category', 'mainmenu', 0, 1, 1, '2023-10-25 03:27:44', '2023-10-25 03:28:03', 1, 1),
(8, 'Sản phẩm mới', 'san-pham', 1, 'topic', 'mainmenu', 0, 1, 0, '2023-10-25 03:30:29', '2023-10-26 05:15:54', 1, 1),
(13, 'Thời trang nữ', 'thoi-trang-nu', 4, 'category', 'mainmenu', 0, 1, 1, '2023-10-26 05:14:41', '2023-10-26 05:14:44', 1, 1),
(14, 'Tất cả sản phẩm', 'tat-ca-san-pham', 1, 'product', 'mainmenu', 0, 1, 1, '2023-10-26 05:15:56', '2023-10-26 05:15:58', 1, 1),
(15, 'Liên Hệ', 'lien-he', 1, 'custom', 'mainmenu', 0, 1, 1, '2023-10-27 03:47:58', '2023-10-27 03:48:02', 1, 1),
(16, 'Giới Thiệu', 'gioi-thieu', 1, 'custom', 'mainmenu', 0, 1, 1, '2023-10-27 03:48:41', '2023-10-27 04:05:53', 1, 1),
(17, 'Bài Viết', 'bai-viet', 1, 'custom', 'mainmenu', 0, 1, 2, '2023-10-27 03:48:59', '2023-10-29 04:07:50', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_06_163827_create_brand_table', 1),
(3, '2023_10_06_163920_create_category_table', 1),
(4, '2023_10_06_163944_create_config_table', 1),
(5, '2023_10_06_164001_create_contact_table', 1),
(6, '2023_10_06_164009_create_link_table', 1),
(7, '2023_10_06_164018_create_menu_table', 1),
(8, '2023_10_06_164032_create_order_table', 1),
(9, '2023_10_06_164047_create_orderdetail_table', 1),
(10, '2023_10_06_164101_create_post_table', 1),
(11, '2023_10_06_164114_create_product_table', 1),
(12, '2023_10_06_164139_create_product_image_table', 1),
(13, '2023_10_06_164158_create_product_store_table', 1),
(14, '2023_10_06_164219_create_product_option_table', 1),
(15, '2023_10_06_164236_create_product_sale_table', 1),
(16, '2023_10_06_164247_create_product_value_table', 1),
(17, '2023_10_06_164305_create_slider_table', 1),
(18, '2023_10_06_164313_create_topic_table', 1),
(19, '2023_10_06_164320_create_user_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `updated_by` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `detail` longtext NOT NULL,
  `images` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` tinyint(3) UNSIGNED NOT NULL,
  `updated_by` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `topic_id`, `title`, `slug`, `detail`, `images`, `type`, `metakey`, `metadesc`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Bài-viết', '1', 'Chi-tiết-bài-viết', 'sp31.jpg', 'page', '', '', 0, 0, 1, NULL, NULL),
(2, 0, 'Bài-viết1', '1', 'Chi-tiết-bài-viết1', '', 'page', '', '', 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price_buy` decimal(10,0) NOT NULL,
  `detail` longtext NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` tinyint(3) UNSIGNED NOT NULL,
  `updated_by` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price_buy`, `detail`, `metakey`, `metadesc`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(24, 4, 2, 'asdfgh', 'asdfgh', 550000, 'aerthn', 'ghdgh', 'zhgvxv', 1, NULL, 1, '2023-10-21 04:22:44', '2023-10-21 04:22:44'),
(25, 0, 2, 'asdfgh', 'asdfgh', 550000, 'aerthn', 'ghdgh', 'zhgvxv', 1, 1, 0, '2023-10-21 04:25:42', '2023-11-16 01:34:01'),
(26, 4, 2, 'Váy công chúa dành cho nàng thơ', 'vay-cong-chua-danh-cho-nang-tho', 520, 'Váy công chúa dành cho nàng thơ', 'Váy công chúa dành cho nàng thơ', 'Váy công chúa dành cho nàng thơ', 1, 1, 2, '2023-10-22 11:19:13', '2023-11-16 01:48:31'),
(28, 4, 2, 'Váy công chúa', 'vay-cong-chua', 550000, 'Váy công chúa', 'Váy công chúa', 'Váy công chúa', 1, 1, 2, '2023-10-22 11:25:27', '2023-11-16 01:48:29'),
(30, 4, 2, 'Váy xinh đẹp', 'vay-xinh-dep', 550000, 'Váy xinh đẹp', 'Váy xinh đẹp', 'Váy xinh đẹp', 1, NULL, 1, '2023-10-22 11:36:33', '2023-10-22 11:36:33'),
(31, 4, 2, 'váy đầm xòe công chúa', 'vay-dam-xoe-cong-chua', 550000, 'váy đầm xòe công chúa', 'váy đầm xòe công chúa', 'váy đầm xòe công chúa', 1, NULL, 1, '2023-10-22 11:38:23', '2023-10-22 11:38:23'),
(32, 4, 2, 'Váy trắng công chúa tiểu thư', 'vay-trang-cong-chua-tieu-thu', 550000, 'Váy trắng công chúa tiểu thư', 'Váy trắng công chúa tiểu thư', 'Váy trắng công chúa tiểu thư', 1, NULL, 1, '2023-10-22 12:26:01', '2023-10-22 12:26:01'),
(33, 4, 2, 'Váy công chúa xèo', 'vay-cong-chua-xeo', 550000, 'Váy công chúa xèo', 'Váy công chúa xèo', 'Váy công chúa xèo', 1, NULL, 1, '2023-10-22 12:31:37', '2023-10-22 12:31:37'),
(34, 5, 2, 'Váy tiểu thư lộng lẫy', 'vay-trang-cong-chua-tieu-thu-long-lay', 550000, 'Váy trắng công chúa tiểu thư lộng lẫy', 'Váy trắng công chúa tiểu thư lộng lẫy', 'Váy trắng công chúa tiểu thư lộng lẫy', 1, NULL, 1, '2023-10-22 12:36:21', '2023-10-22 12:36:21'),
(36, 4, 2, 'Váy công chúa lộng lẫy gọn dáng', 'vay-cong-chua-long-lay-gon-dang', 550000, 'Váy công chúa lộng lẫy gọn dáng', 'Váy công chúa lộng lẫy gọn dáng', 'Váy công chúa lộng lẫy gọn dáng', 1, NULL, 1, '2023-10-24 23:19:15', '2023-10-24 23:19:15'),
(38, 5, 3, 'Váy tiểu thư nàng thơ', 'vay-tieu-thu-nang-tho', 550000, 'Váy tiểu thư nàng thơ', 'Váy tiểu thư nàng thơ', 'Váy tiểu thư nàng thơ', 1, NULL, 1, '2023-10-25 03:51:22', '2023-10-25 03:51:22'),
(39, 5, 3, 'Váy đầm dọa hội xinh xắn', 'vay-dam-doa-hoi-xinh-xan', 550000, 'Váy đầm dọa hội xinh xắn', 'Váy đầm dọa hội xinh xắn', 'Váy đầm dọa hội xinh xắn', 1, NULL, 1, '2023-10-25 03:52:25', '2023-10-25 03:52:25'),
(40, 5, 3, 'Váy  đi tiệt cuốn hút', 'vay-di-tiet-cuon-hut', 550000, 'Váy  đi tiệt cuốn hút', 'Váy  đi tiệt cuốn hút', 'Váy  đi tiệt cuốn hút', 1, NULL, 1, '2023-10-25 03:53:26', '2023-10-25 03:53:26'),
(41, 4, 2, 'Váy xinh Hội họa', 'vay-xinh-hoi-hoa', 550000, 'Váy xinh Hội họa', 'Váy xinh Hội họa', 'Váy xinh Hội họa', 1, NULL, 0, '2023-10-26 00:06:02', '2023-10-26 00:06:02'),
(42, 5, 7, 'Váy xinh tiểu thư công chúa', 'vay-xinh-tieu-thu-cong-chua', 550000, 'Váy xinh tiểu thư công chúa', 'Váy xinh tiểu thư công chúa', 'Váy xinh tiểu thư công chúa', 1, NULL, 1, '2023-10-26 05:32:22', '2023-10-26 05:32:22'),
(43, 4, 7, 'Váy Nữ gọn dáng xinh xắn', 'vay-nu-gon-dang-xinh-xan', 550000, 'Váy Nữ gọn dáng xinh xắn', 'Váy Nữ gọn dáng xinh xắn', 'Váy Nữ gọn dáng xinh xắn', 1, NULL, 0, '2023-11-16 01:26:26', '2023-11-16 01:26:26'),
(44, 5, 4, 'Đầm Nữ gọn dáng xinh xắn', 'dam-nu-gon-dang-xinh-xan', 550000, 'Đầm Nữ gọn dáng xinh xắn', 'Đầm Nữ gọn dáng xinh xắn', 'Đầm Nữ gọn dáng xinh xắn', 1, NULL, 1, '2023-11-16 01:29:37', '2023-11-16 01:29:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`) VALUES
(2, 14, 'asdasda-1-.jpg'),
(3, 15, 'asdasda-1.jpg'),
(4, 16, 'asdasdaasd-1.jpg'),
(5, 17, 'asd-1.jpg'),
(6, 18, 'asdsdad-1.jpg'),
(7, 19, 'asdsdad-1.jpg'),
(8, 24, 'asdfgh-1.jpg'),
(9, 25, 'asdfgh-1.jpg'),
(10, 26, 'vay-cong-chua-danh-cho-nang-tho-1.jpg'),
(11, 27, 'vay-cong-chua-xinh-xan-1.jpg'),
(12, 28, 'vay-cong-chua-1.jpg'),
(13, 29, 'vay-cong-chua-xinh-xan-1.jpg'),
(14, 30, 'vay-xinh-dep-1.jpg'),
(15, 31, 'vay-dam-xoe-cong-chua-1.jpg'),
(16, 32, 'vay-trang-cong-chua-tieu-thu-1.jpg'),
(17, 33, 'vay-cong-chua-xeo-1.jpg'),
(18, 34, 'vay-trang-cong-chua-tieu-thu-long-lay-1.jpg'),
(19, 35, 'vay-cong-chua-long-lay-gon-dang-1.jpg'),
(20, 36, 'vay-cong-chua-long-lay-gon-dang-1.jpg'),
(21, 37, 'vay-tieu-thu-nang-tho-1.jpg'),
(22, 38, 'vay-tieu-thu-nang-tho-1.jpg'),
(23, 39, 'vay-dam-doa-hoi-xinh-xan-1.jpg'),
(24, 40, 'vay-di-tiet-cuon-hut-1.jpg'),
(25, 41, 'vay-xinh-hoi-hoa-1.jpg'),
(26, 42, 'vay-xinh-tieu-thu-cong-chua-1.jpg'),
(27, 43, 'vay-nu-gon-dang-xinh-xan-1.jpg'),
(28, 44, 'dam-nu-gon-dang-xinh-xan-1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_option`
--

CREATE TABLE `product_option` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sale`
--

CREATE TABLE `product_sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price_sale` decimal(10,0) NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sale`
--

INSERT INTO `product_sale` (`id`, `product_id`, `price_sale`, `date_begin`, `date_end`) VALUES
(1, 23, 123000, '2023-10-21 00:00:00', '2023-10-31 00:00:00'),
(2, 24, 500000, '2023-10-21 00:00:00', '2023-11-11 00:00:00'),
(3, 25, 500000, '2023-10-21 00:00:00', '2023-11-11 00:00:00'),
(4, 26, 500, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(5, 27, 500000, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(6, 28, 500000, '2023-10-23 00:00:00', '2023-10-23 00:00:00'),
(7, 29, 500000, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(8, 30, 500000, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(9, 31, 500000, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(10, 32, 500000, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(11, 33, 500000, '2023-10-23 00:00:00', '2023-10-23 00:00:00'),
(12, 34, 500000, '2023-10-23 00:00:00', '2023-11-11 00:00:00'),
(13, 35, 500000, '2023-10-25 00:00:00', '2023-11-11 00:00:00'),
(14, 36, 500000, '2023-10-26 00:00:00', '2023-11-11 00:00:00'),
(15, 37, 500000, '2023-10-25 00:00:00', '2023-11-11 00:00:00'),
(16, 38, 500000, '2023-10-25 00:00:00', '2023-11-11 00:00:00'),
(17, 39, 500000, '2023-10-25 00:00:00', '2023-11-11 00:00:00'),
(18, 40, 500000, '2023-10-25 00:00:00', '2023-11-11 00:00:00'),
(19, 41, 500000, '2023-10-26 00:00:00', '2023-11-11 00:00:00'),
(20, 42, 500000, '2023-10-26 00:00:00', '2023-11-11 00:00:00'),
(21, 43, 500000, '2023-11-16 00:00:00', '2023-12-09 00:00:00'),
(22, 44, 500000, '2023-11-16 00:00:00', '2023-12-09 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_store`
--

CREATE TABLE `product_store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_store`
--

INSERT INTO `product_store` (`id`, `product_id`, `price`, `qty`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 24, 300000, 100, 1, NULL, '2023-10-21 04:22:44', '2023-10-21 04:22:44'),
(2, 25, 300000, 100, 1, NULL, '2023-10-21 04:25:42', '2023-10-21 04:25:42'),
(3, 26, 600, 50, 1, NULL, '2023-10-22 11:19:13', '2023-10-22 11:19:13'),
(4, 27, 600000, 50, 1, NULL, '2023-10-22 11:21:12', '2023-10-22 11:21:12'),
(5, 28, 600000, 50, 1, NULL, '2023-10-22 11:25:27', '2023-10-22 11:25:27'),
(6, 29, 900000, 100, 1, NULL, '2023-10-22 11:28:55', '2023-10-22 11:28:55'),
(7, 30, 900000, 10, 1, NULL, '2023-10-22 11:36:33', '2023-10-22 11:36:33'),
(8, 31, 600000, 50, 1, NULL, '2023-10-22 11:38:23', '2023-10-22 11:38:23'),
(9, 32, 600000, 10, 1, NULL, '2023-10-22 12:26:01', '2023-10-22 12:26:01'),
(10, 33, 600000, 50, 1, NULL, '2023-10-22 12:31:37', '2023-10-22 12:31:37'),
(11, 34, 600000, 10, 1, NULL, '2023-10-22 12:36:23', '2023-10-22 12:36:23'),
(12, 35, 600000, 10, 1, NULL, '2023-10-24 23:07:31', '2023-10-24 23:07:31'),
(13, 36, 600000, 10, 1, NULL, '2023-10-24 23:19:15', '2023-10-24 23:19:15'),
(14, 38, 600000, 10, 1, NULL, '2023-10-25 03:51:22', '2023-10-25 03:51:22'),
(15, 39, 600000, 10, 1, NULL, '2023-10-25 03:52:25', '2023-10-25 03:52:25'),
(16, 40, 600000, 10, 1, NULL, '2023-10-25 03:53:26', '2023-10-25 03:53:26'),
(17, 41, 600000, 10, 1, NULL, '2023-10-26 00:06:02', '2023-10-26 00:06:02'),
(18, 42, 600000, 10, 1, NULL, '2023-10-26 05:32:22', '2023-10-26 05:32:22'),
(19, 43, 600000, 10, 1, NULL, '2023-11-16 01:26:26', '2023-11-16 01:26:26'),
(20, 44, 600000, 10, 1, NULL, '2023-11-16 01:29:37', '2023-11-16 01:29:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_value`
--

CREATE TABLE `product_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `image` varchar(1000) NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `link`, `sort_order`, `image`, `position`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1', '#', 1, 'slider1.jpg', 'slideshow', 1, 1, 1, NULL, NULL),
(2, 'Slider 2', '#', 1, 'slider2.jpg', 'slideshow', 1, 1, 1, NULL, NULL),
(3, 'Slider 3', '#', 1, 'slider3.jpg', 'slideshow', 1, 1, 1, NULL, NULL),
(5, 'Slider 4', '#', 1, 'slider4.jpg', 'slideshow', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `metakey`, `metadesc`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm mới', 'san-pham-moi', 0, 0, 'sp23.jpg', 'san-pham-moi', 'san-pham-moi', 1, NULL, 1, '2023-10-25 10:30:13', '2023-10-11 09:10:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Họ ',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_store`
--
ALTER TABLE `product_store`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_value`
--
ALTER TABLE `product_value`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `link`
--
ALTER TABLE `link`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `product_store`
--
ALTER TABLE `product_store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product_value`
--
ALTER TABLE `product_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `topic`
--
ALTER TABLE `topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
