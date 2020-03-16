-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2020 at 08:22 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhanglaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attr`
--

CREATE TABLE `attr` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attr`
--

INSERT INTO `attr` (`id`, `name`, `value`, `order_id`) VALUES
(1, 'color', 'Xám', 3),
(2, 'Size Quần', '29', 3),
(3, 'Size áo', 'L', 4),
(4, 'color', 'Xanh', 4),
(23, 'color', 'Xám', 14),
(24, 'Size Quần', '29', 14),
(25, 'Size áo', 'L', 15),
(26, 'color', 'Xanh', 15),
(27, 'Size áo', 'L', 16),
(28, 'color', 'Xanh', 16),
(29, 'color', 'Xám', 17),
(30, 'Size Quần', '29', 17),
(31, 'Size áo', 'L', 18),
(32, 'color', 'Xanh', 18),
(33, 'Size áo', 'L', 19),
(34, 'color', 'Xanh', 19),
(35, 'Size áo', 'L', 20),
(36, 'color', 'Xanh', 20),
(37, 'Size áo', 'M', 21),
(38, 'color', 'Xanh', 21),
(39, 'color', 'Xanh', 22),
(40, 'Size Quần', '29', 22);

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `name`) VALUES
(1, 'Size áo'),
(2, 'color'),
(3, 'Size Quần');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent`) VALUES
(1, 'Nam', 0),
(5, 'Nữ', 0),
(9, 'Áo sơ mi', 1),
(10, 'Áo len', 1),
(11, 'Quần nam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(18,0) DEFAULT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `full_name`, `address`, `email`, `phone`, `total`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen van a', 'Vĩnh phúc', 'zim111@gmail.com', '0336341333', '900000', 0, '2020-03-14 07:55:40', '2020-03-14 07:55:40'),
(2, 'Áo Nam 2020', 'ádasdadasdwsss', 'quachsen1973@gmail.om', '02236541524', '1300000', 0, '2020-03-14 08:11:08', '2020-03-14 08:11:08'),
(6, 'tran van b', 'Nghe An', 'abc123@gmail.com', '0928108109', '1800000', 0, '2020-03-14 08:23:33', '2020-03-14 08:23:33'),
(7, 'nguyen vet d', 'Vĩnh phúc', 'hocsinh98@gmail.com', '0928108109', '1800000', 0, '2020-03-14 08:25:19', '2020-03-14 08:25:19'),
(8, 'Áo Nam 2020', 'ádasdadasdwsss', 'quachsen1973@gmail.om', '0928108109', '750000', 1, '2020-03-14 09:31:54', '2020-03-14 18:23:57'),
(9, 'Áo Nam 2020', 'ádasdadasdwsss', 'quachsen1973@gmail.om', '0928108109', '0', 1, '2020-03-14 09:33:05', '2020-03-14 18:23:47'),
(10, 'Áo nam 2018', 'Vĩnh phúc', 'admin@gmail.com', '21312312', '400000', 1, '2020-03-14 09:34:55', '2020-03-14 18:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2020_02_27_105119_create_category_table', 1),
(13, '2020_02_27_105133_create_product_table', 1),
(14, '2020_02_27_105144_create_users_table', 1),
(15, '2020_02_28_071037_create_attribute_table', 1),
(16, '2020_02_28_071050_create_values_table', 1),
(17, '2020_02_28_071127_create_values_product_table', 1),
(18, '2020_02_28_071143_create_variant_table', 1),
(19, '2020_02_28_071206_create_variant_values_table', 1),
(20, '2020_02_28_071256_create_customer_table', 1),
(21, '2020_02_28_071306_create_order_table', 1),
(22, '2020_02_28_071315_create_attr_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,0) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `price`, `quantity`, `img`, `customer_id`) VALUES
(1, 'Quần short nam Aristino', '300000', 1, 'R72WV5Ul2.webp', 1),
(2, 'Áo sơ mi  kẻ nam Aristino', '200000', 3, 'ckQXOaui3.webp', 1),
(3, 'Quần short nam Aristino', '300000', 1, 'R72WV5Ul2.webp', 2),
(4, 'Áo sơ mi  kẻ nam Aristino', '200000', 5, 'ckQXOaui3.webp', 2),
(14, 'Quần short nam Aristino', '300000', 1, 'R72WV5Ul2.webp', 6),
(15, 'Áo sơ mi  kẻ nam Aristino', '200000', 5, 'ckQXOaui3.webp', 6),
(16, 'Áo sơ mi ngắn tay nam Aristino', '250000', 2, 'tTSqw9xSz.webp', 6),
(17, 'Quần short nam Aristino', '300000', 1, 'R72WV5Ul2.webp', 7),
(18, 'Áo sơ mi  kẻ nam Aristino', '200000', 5, 'ckQXOaui3.webp', 7),
(19, 'Áo sơ mi ngắn tay nam Aristino', '250000', 2, 'tTSqw9xSz.webp', 7),
(20, 'Áo sơ mi ngắn tay nam Aristino', '250000', 2, 'tTSqw9xSz.webp', 8),
(21, 'Áo sơ mi ngắn tay nam Aristino', '250000', 1, 'tTSqw9xSz.webp', 8),
(22, 'Quần âu Aristino', '400000', 1, 'Phixk4ViU.webp', 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,0) NOT NULL DEFAULT '0',
  `featured` tinyint(3) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `describe` text CHARACTER SET utf8,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_code`, `name`, `price`, `featured`, `state`, `info`, `describe`, `img`, `category_id`, `created_at`, `updated_at`) VALUES
(16, 'ATR01908', 'Quần âu Aristino', '350000', 1, 1, '<p>MySQL sử dụng tất cả c&aacute;c kiểu dữ liệu số theo chuẩn ANSI SQL. Danh s&aacute;ch sau đ&acirc;y l&agrave; c&aacute;c kiểu dữ liệu số phổ biến:</p>', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Regular fit</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Quần &acirc;u 1 ly phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ, thoải m&aacute;i m&agrave; vẫn đảm bảo vừa vặn số đo h&igrave;nh thể.</p>\r\n\r\n<p>- Ứng dụng c&ocirc;ng nghệ nếp ly vĩnh viễn Supercrease gi&uacute;p quần lu&ocirc;n đứng d&aacute;ng v&agrave; mang đến diện mạo chỉn chu cho người mặc. Quần c&oacute; t&uacute;i xẻ 2 b&ecirc;n, 2 t&uacute;i sau c&agrave;i khuy tiện lợi. Quần m&agrave;u trung t&iacute;nh, mang đến nhiều lựa chọn kết hợp trang phục.</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu Polyester kết hợp Rayon cho quần c&oacute; độ cứng c&aacute;p v&agrave; đứng d&aacute;ng vừa đủ, đồng thời vẫn c&oacute; bề mặt xốp nhẹ, tho&aacute;ng m&aacute;t dễ chịu. Đặc biệt, quần thấm h&uacute;t tốt v&agrave; tho&aacute;t ẩm vượt trội, mang lại cảm gi&aacute;c dễ chịu suốt ng&agrave;y d&agrave;i.</p>', 'Phixk4ViU.webp', 11, '2020-03-10 02:06:01', '2020-03-10 08:42:45'),
(17, 'AKKR04', 'Quần kaki nam Aristino', '300000', 0, 1, NULL, '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Quần khaki phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc nhưng vẫn đảm bảo sự thoải m&aacute;i, nam t&iacute;nh.</p>\r\n\r\n<p>- Thiết kế chỉn chu, đường may tỉ mỉ mang đến vẻ lịch l&atilde;m cho nam giới. Quần c&oacute; t&uacute;i xẻ hai b&ecirc;n v&agrave; t&uacute;i c&agrave;i khuy ph&iacute;a sau tiện lợi. M&agrave;u sắc cơ bản v&agrave; dễ d&agrave;ng kết hợp với trang phục kh&aacute;c.</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n v&agrave; sợi nh&acirc;n tạo, tạo sự mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t cho quần.</p>', '6JfclV6Mj.webp', 11, '2020-03-10 02:59:35', '2020-03-10 02:59:35'),
(18, 'ASO030S9', 'Quần short nam Aristino', '300000', 1, 1, NULL, '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Quần short khaki phom d&aacute;ng Slim fit &ocirc;m vừa vặn v&agrave; t&ocirc;n d&aacute;ng.</p>\r\n\r\n<p>- Thiết kế basic nhưng kh&ocirc;ng k&eacute;m phần ấn tượng với họa tiết in m&agrave;u nổi bật mang đến cho nam giới diện mạo cuốn h&uacute;t. Quần c&oacute; t&uacute;i xẻ hai b&ecirc;n v&agrave; t&uacute;i c&agrave;i khuya ph&iacute;a sau tiện lợi. M&agrave;u sắc cơ bản, độ d&agrave;i chấm gối, c&oacute; thể linh hoạt phối hợp với nhiều trang phục kh&aacute;c nhau trong m&ugrave;a h&egrave;.</p>\r\n\r\n<p><strong>CHẤT LIỆU:&nbsp;</strong></p>\r\n\r\n<p>- Chất liệu Cotton từ sợi b&ocirc;ng cho bề mặt mịn v&agrave; m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng kh&iacute;, ph&ugrave; hợp mặc mọi m&ugrave;a trong năm.</p>\r\n\r\n<p>- Kết hợp sợi spandex gi&uacute;p quần c&oacute; độ co gi&atilde;n nhẹ, c&oacute; thể ph&ugrave; hợp với nhiều d&aacute;ng người</p>', 'R72WV5Ul2.webp', 11, '2020-03-10 03:06:31', '2020-03-10 03:06:31'),
(19, 'ASS049S9', 'Áo sơ mi ngắn tay nam Aristino', '250000', 1, 1, NULL, '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT - T&agrave; Lượn</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- &Aacute;o sơ mi ngắn tay phom d&aacute;ng Slim Fit &ocirc;m vừa, t&ocirc;n d&aacute;ng m&agrave; vẫn đảm bảo sự thoải m&aacute;i.</p>\r\n\r\n<p>- Thiết kế tối giản kh&ocirc;ng t&uacute;i ngực v&agrave; t&agrave; lượn thời trang. Những đường dệt yarn dye kẻ ngang xanh da trời điểm xuyết họa tiết dệt jacquard tropical mang đến diện mạo trẻ trung v&agrave; tinh tế cho người mặc. &Aacute;o c&oacute; thể kết hợp với nhiều loại trang phục trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu Modal từ sợi sồi thi&ecirc;n nhi&ecirc;n cho mặt vải mềm nhẹ, tho&aacute;ng m&aacute;t, kh&aacute;ng khuẩn, thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt, gi&uacute;p &aacute;o c&oacute; khả năng điều h&ograve;a, m&aacute;t v&agrave;o m&ugrave;a h&egrave;, ấm &aacute;p v&agrave;o m&ugrave;a đ&ocirc;ng.</p>\r\n\r\n<p>- Kết hợp Polyspun c&oacute; t&iacute;nh đ&agrave;n hồi, hạn chế nhăn co, dễ l&agrave; ủi v&agrave; bền m&agrave;u. &Aacute;o c&oacute; độ co gi&atilde;n tự nhi&ecirc;n nhờ kết hợp 3% spandex</p>', 'tTSqw9xSz.webp', 9, '2020-03-10 03:31:48', '2020-03-10 03:40:03'),
(20, 'ASS027S9', 'Áo sơ mi  kẻ nam Aristino', '200000', 1, 1, NULL, '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;REGULAR FIT - T&agrave; Bằng</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- &Aacute;o sơ mi ngắn tay phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ kết hợp t&agrave; bằng thoải m&aacute;i.</p>\r\n\r\n<p>- Thiết kế basic với cổ &aacute;o đứng d&aacute;ng gọn g&agrave;ng v&agrave; t&uacute;i ngực kh&ocirc;ng khuy. Họa tiết dệt yarn dye caro xanh mang đến diện mạo trẻ trung cho người mặc. &Aacute;o dễ d&agrave;ng kết hợp với nhiều trang phục trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu Bamboo từ sợi tre thi&ecirc;n nhi&ecirc;n gi&uacute;p bề mặt vải mềm nhẹ, tho&aacute;ng m&aacute;t, thấm h&uacute;t tốt tạo cảm gi&aacute;c dễ chịu cho người mặc. Kết hợp Polyspun c&oacute; t&iacute;nh đ&agrave;n hồi, hạn chế nhăn co, dễ l&agrave; ủi v&agrave; bền m&agrave;u</p>', 'ckQXOaui3.webp', 9, '2020-03-10 03:39:19', '2020-03-10 03:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full`, `address`, `phone`, `level`, `remember_token`) VALUES
(1, 'admin@gmail.com', '$2y$10$WtFSOlk90VI2EOVPLzFqSOu7EJCEldyyvBhDPGUoTaB3tiEMDHSUy', 'Nguyễn thế phúc', 'Thường tín', '0356653301', 1, NULL),
(2, 'zimpro@gmail.com', '$2y$10$1a/orl7OMP2qofh.kAzi5.ntfVWaq2fX79SYnQTrsTDRHcbeGpZqW', 'Nguyễn thế vũ', 'Bắc giang', '0356654487', 2, NULL),
(4, 'zimpro9x@gmail.com', '$2y$10$BI3i.EbWh7K3j.ywRNlyM.3d.NZuGrH2ojBT..MlLpO9fryCcx7Be', 'Nguyễn Văn Công', 'Nghệ An', '0357846659', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `value`, `attr_id`) VALUES
(2, 'M', 1),
(3, 'L', 1),
(5, 'Xanh', 2),
(6, 'Đen', 2),
(7, 'XL', 1),
(8, 'Trắng', 2),
(10, 'S', 1),
(11, '29', 3),
(12, '30', 3),
(13, '31', 3),
(14, '32', 3),
(15, '33', 3),
(16, '28', 3),
(17, '27', 3),
(18, 'Xám', 2),
(19, 'Xanh ghi', 2),
(20, 'Xanh tím', 2);

-- --------------------------------------------------------

--
-- Table structure for table `values_product`
--

CREATE TABLE `values_product` (
  `values_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values_product`
--

INSERT INTO `values_product` (`values_id`, `product_id`) VALUES
(5, 16),
(6, 16),
(18, 16),
(11, 16),
(12, 16),
(13, 16),
(14, 16),
(15, 16),
(16, 16),
(17, 16),
(6, 17),
(8, 17),
(19, 17),
(20, 17),
(11, 17),
(12, 17),
(13, 17),
(14, 17),
(15, 17),
(18, 18),
(20, 18),
(11, 18),
(12, 18),
(14, 18),
(15, 18),
(2, 19),
(3, 19),
(7, 19),
(5, 19),
(2, 20),
(3, 20),
(7, 20),
(5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,0) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `price`, `product_id`) VALUES
(38, '400000', 16),
(39, '350000', 16),
(40, '350000', 16),
(41, '350000', 16),
(42, '350000', 16),
(43, '350000', 16),
(44, '350000', 16),
(45, '350000', 16),
(46, '350000', 16),
(47, '350000', 16),
(48, '350000', 16),
(49, '350000', 16),
(50, '350000', 16),
(51, '350000', 16),
(52, '350000', 16),
(53, '350000', 16),
(54, '350000', 16),
(55, '350000', 16),
(56, '350000', 16),
(57, '350000', 16),
(58, '350000', 16),
(59, '300000', 17),
(60, '300000', 17),
(61, '300000', 17),
(62, '300000', 17),
(63, '300000', 17),
(64, '300000', 17),
(65, '300000', 17),
(66, '300000', 17),
(67, '300000', 17),
(68, '300000', 17),
(69, '300000', 17),
(70, '300000', 17),
(71, '300000', 17),
(72, '300000', 17),
(73, '300000', 17),
(74, '300000', 17),
(75, '300000', 17),
(76, '300000', 17),
(77, '300000', 17),
(78, '300000', 17),
(79, '300000', 18),
(80, '300000', 18),
(81, '300000', 18),
(82, '300000', 18),
(83, '300000', 18),
(84, '300000', 18),
(85, '300000', 18),
(86, '300000', 18),
(87, '0', 19),
(88, '0', 19),
(89, '0', 19),
(90, '200000', 20),
(91, '200000', 20),
(92, '200000', 20);

-- --------------------------------------------------------

--
-- Table structure for table `variant_values`
--

CREATE TABLE `variant_values` (
  `variant_id` int(10) UNSIGNED NOT NULL,
  `values_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_values`
--

INSERT INTO `variant_values` (`variant_id`, `values_id`) VALUES
(38, 5),
(38, 11),
(39, 5),
(39, 12),
(40, 5),
(40, 13),
(41, 5),
(41, 14),
(42, 5),
(42, 15),
(43, 5),
(43, 16),
(44, 5),
(44, 17),
(45, 6),
(45, 11),
(46, 6),
(46, 12),
(47, 6),
(47, 13),
(48, 6),
(48, 14),
(49, 6),
(49, 15),
(50, 6),
(50, 16),
(51, 6),
(51, 17),
(52, 18),
(52, 11),
(53, 18),
(53, 12),
(54, 18),
(54, 13),
(55, 18),
(55, 14),
(56, 18),
(56, 15),
(57, 18),
(57, 16),
(58, 18),
(58, 17),
(59, 6),
(59, 11),
(60, 6),
(60, 12),
(61, 6),
(61, 13),
(62, 6),
(62, 14),
(63, 6),
(63, 15),
(64, 8),
(64, 11),
(65, 8),
(65, 12),
(66, 8),
(66, 13),
(67, 8),
(67, 14),
(68, 8),
(68, 15),
(69, 19),
(69, 11),
(70, 19),
(70, 12),
(71, 19),
(71, 13),
(72, 19),
(72, 14),
(73, 19),
(73, 15),
(74, 20),
(74, 11),
(75, 20),
(75, 12),
(76, 20),
(76, 13),
(77, 20),
(77, 14),
(78, 20),
(78, 15),
(79, 18),
(79, 11),
(80, 18),
(80, 12),
(81, 18),
(81, 14),
(82, 18),
(82, 15),
(83, 20),
(83, 11),
(84, 20),
(84, 12),
(85, 20),
(85, 14),
(86, 20),
(86, 15),
(87, 2),
(87, 5),
(88, 3),
(88, 5),
(89, 7),
(89, 5),
(90, 2),
(90, 5),
(91, 3),
(91, 5),
(92, 7),
(92, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attr`
--
ALTER TABLE `attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attr_order_id_foreign` (`order_id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_product_code_unique` (`product_code`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `values_attr_id_foreign` (`attr_id`);

--
-- Indexes for table `values_product`
--
ALTER TABLE `values_product`
  ADD KEY `values_product_values_id_foreign` (`values_id`),
  ADD KEY `values_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_product_id_foreign` (`product_id`);

--
-- Indexes for table `variant_values`
--
ALTER TABLE `variant_values`
  ADD KEY `variant_values_variant_id_foreign` (`variant_id`),
  ADD KEY `variant_values_values_id_foreign` (`values_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attr`
--
ALTER TABLE `attr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attr`
--
ALTER TABLE `attr`
  ADD CONSTRAINT `attr_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `values`
--
ALTER TABLE `values`
  ADD CONSTRAINT `values_attr_id_foreign` FOREIGN KEY (`attr_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `values_product`
--
ALTER TABLE `values_product`
  ADD CONSTRAINT `values_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `values_product_values_id_foreign` FOREIGN KEY (`values_id`) REFERENCES `values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variant`
--
ALTER TABLE `variant`
  ADD CONSTRAINT `variant_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variant_values`
--
ALTER TABLE `variant_values`
  ADD CONSTRAINT `variant_values_values_id_foreign` FOREIGN KEY (`values_id`) REFERENCES `values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_values_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
