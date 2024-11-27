-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2024 lúc 11:46 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'admin1@example.com', 'password123', 'Admin One', '0901234567', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(2, 'admin2@example.com', 'password123', 'Admin Two', '0901234568', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(3, 'admin3@example.com', 'password123', 'Admin Three', '0901234569', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(4, 'admin4@example.com', 'password123', 'Admin Four', '0901234570', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(5, 'admin5@example.com', 'password123', 'Admin Five', '0901234571', '2024-11-20 10:31:54', '2024-11-20 10:31:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`banner_id`, `name`, `image`, `status`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', 'banner1.jpg', 1, 'Description 1', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(2, 'Banner 2', 'banner2.jpg', 1, 'Description 2', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(3, 'Banner 3', 'banner3.jpg', 1, 'Description 3', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(4, 'Banner 4', 'banner4.jpg', 1, 'Description 4', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(5, 'Banner 5', 'banner5.jpg', 1, 'Description 5', '2024-11-20 10:31:54', '2024-11-20 10:31:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand_product`
--

CREATE TABLE `brand_product` (
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand_product`
--

INSERT INTO `brand_product` (`brand_id`, `name`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Brand 1', 'Brand Description 1', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(2, 'Brand 2', 'Brand Description 2', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(3, 'Brand 3', 'Brand Description 3', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(4, 'Brand 4', 'Brand Description 4', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(5, 'Brand 5', 'Brand Description 5', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `Evaluate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `customer_id`, `product_id`, `content`, `Evaluate`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Great product!', 5, 0, '2024-11-20 17:34:44', '2024-11-21 07:34:27'),
(2, 2, 2, 'Good quality!', 4, 0, '2024-11-20 17:34:44', '2024-11-21 07:34:27'),
(3, 3, 3, 'Satisfactory.', 3, 0, '2024-11-20 17:34:44', '2024-11-21 07:34:27'),
(4, 4, 4, 'Could be better.', 2, 0, '2024-11-20 17:34:44', '2024-11-21 07:34:27'),
(5, 5, 5, 'Loved it!', 5, 0, '2024-11-20 17:34:44', '2024-11-21 07:34:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Customer 1', 'customer1@example.com', 'password123', '0901122334', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(2, 'Customer 2', 'customer2@example.com', 'password123', '0901122335', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(3, 'Customer 3', 'customer3@example.com', 'password123', '0901122336', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(4, 'Customer 4', 'customer4@example.com', 'password123', '0901122337', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(5, 'Customer 5', 'customer5@example.com', 'password123', '0901122338', 1, '2024-11-20 10:31:54', '2024-11-20 10:31:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `about_text` text DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`id`, `address`, `phone`, `email`, `about_text`, `facebook_url`, `instagram_url`, `created_at`, `updated_at`) VALUES
(1, 'Address 1', '0901122339', 'footer1@example.com', 'About text 1', 'https://facebook.com/footer1', 'https://instagram.com/footer1', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(2, 'Address 2', '0901122340', 'footer2@example.com', 'About text 2', 'https://facebook.com/footer2', 'https://instagram.com/footer2', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(3, 'Address 3', '0901122341', 'footer3@example.com', 'About text 3', 'https://facebook.com/footer3', 'https://instagram.com/footer3', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(4, 'Address 4', '0901122342', 'footer4@example.com', 'About text 4', 'https://facebook.com/footer4', 'https://instagram.com/footer4', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(5, 'Address 5', '0901122343', 'footer5@example.com', 'About text 5', 'https://facebook.com/footer5', 'https://instagram.com/footer5', '2024-11-20 10:31:54', '2024-11-20 10:31:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `header`
--

INSERT INTO `header` (`id`, `shop_name`, `logo_image`, `created_at`, `updated_at`) VALUES
(1, 'Shop 1', 'logo1.png', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(2, 'Shop 2', 'logo2.png', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(3, 'Shop 3', 'logo3.png', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(4, 'Shop 4', 'logo4.png', '2024-11-20 10:31:54', '2024-11-20 10:31:54'),
(5, 'Shop 5', 'logo5.png', '2024-11-20 10:31:54', '2024-11-20 10:31:54');

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
(1, '2024_11_21_072959_add_status_to_comments_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `order_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` varchar(50) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_sale_quantity` int(11) NOT NULL,
  `feeship` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `desc` text DEFAULT NULL,
  `product_sold` int(11) DEFAULT 0,
  `product_image` varchar(255) DEFAULT NULL,
  `product_status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `brand_id`, `product_name`, `product_price`, `desc`, `product_sold`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sneaker 1', 100.00, 'Sneaker Description 1', 0, 'sneaker1.jpg', 1, '2024-11-20 10:34:10', '2024-11-20 10:34:10'),
(2, 2, 'Sneaker 2', 150.00, 'Sneaker Description 2', 0, 'sneaker2.jpg', 1, '2024-11-20 10:34:10', '2024-11-20 10:34:10'),
(3, 3, 'Sneaker 3', 200.00, 'Sneaker Description 3', 0, 'sneaker3.jpg', 1, '2024-11-20 10:34:10', '2024-11-20 10:34:10'),
(4, 4, 'Sneaker 4', 250.00, 'Sneaker Description 4', 0, 'sneaker4.jpg', 1, '2024-11-20 10:34:10', '2024-11-20 10:34:10'),
(5, 5, 'Sneaker 5', 300.00, 'Sneaker Description 5', 0, 'sneaker5.jpg', 1, '2024-11-20 10:34:10', '2024-11-20 10:34:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `shipping_method` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistic`
--

CREATE TABLE `statistic` (
  `stat_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `wishlist_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `brand_product`
--
ALTER TABLE `brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_customer_fk` (`customer_id`),
  ADD KEY `reviews_product_fk` (`product_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `header`
--
ALTER TABLE `header`
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
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_code` (`order_code`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `wishlists_customer_fk` (`customer_id`),
  ADD KEY `wishlists_product_fk` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `brand_product`
--
ALTER TABLE `brand_product`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statistic`
--
ALTER TABLE `statistic`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `reviews_customer_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `reviews_product_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_code`) REFERENCES `order` (`order_code`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_product` (`brand_id`);

--
-- Các ràng buộc cho bảng `statistic`
--
ALTER TABLE `statistic`
  ADD CONSTRAINT `statistic_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `statistic_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `statistic_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_customer_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `wishlists_product_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
