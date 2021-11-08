-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2021 lúc 08:30 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` date NOT NULL,
  `begin` date NOT NULL,
  `amountImage` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `end`, `begin`, `amountImage`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'khuatduc', 'vanduc12399@gmail.com', NULL, '$2y$10$1x6LBAzWIm/k71uGIdP.ZuG12F92il2Y70.CGWs3.kYQt3K5BjeGO', '098745674', '2021-11-29', '2021-09-04', 3, NULL, NULL, '2021-11-05 03:32:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bantochuc`
--

CREATE TABLE `bantochuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bantochuc`
--

INSERT INTO `bantochuc` (`id`, `name`, `email`, `password`) VALUES
(1, 'Khuất Thị Loan', 'loan20011996@gmail.com', '$2y$10$As//1AgxOgSjWR.rSnbqO.yZwWklki/oF1fXjlbXXhbq.yJa12EQy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `budges`
--

CREATE TABLE `budges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `budges`
--

INSERT INTO `budges` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khuất Văn Đức', 'khuatduc12399@gmail.com', NULL, '$2y$10$As//1AgxOgSjWR.rSnbqO.yZwWklki/oF1fXjlbXXhbq.yJa12EQy', NULL, NULL, NULL),
(2, 'Khuất Văn Phúc', 'khuatphuc12399@gmail.com', NULL, '$2y$10$As//1AgxOgSjWR.rSnbqO.yZwWklki/oF1fXjlbXXhbq.yJa12EQy', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exhibitions`
--

CREATE TABLE `exhibitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `idImage` int(10) UNSIGNED NOT NULL,
  `sumScore` double(8,2) NOT NULL,
  `exhi` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guimail` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `exhibitions`
--

INSERT INTO `exhibitions` (`id`, `idImage`, `sumScore`, `exhi`, `remember_token`, `created_at`, `updated_at`, `guimail`) VALUES
(29, 7, 8.00, 1, NULL, '2021-10-23 20:24:42', '2021-11-07 16:15:19', 1),
(30, 3, 10.00, 1, NULL, '2021-10-31 06:42:52', '2021-10-31 06:42:52', 0),
(31, 5, 9.00, 1, NULL, '2021-10-31 06:54:41', '2021-10-31 06:54:41', 0),
(33, 6, 10.00, 1, NULL, '2021-11-07 14:18:35', '2021-11-07 14:18:35', 0),
(35, 1, 8.00, 1, NULL, '2021-11-08 07:15:57', '2021-11-08 07:16:34', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `user_id`, `TieuDe`, `TieuDeKhongDau`, `NoiDung`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hôm nay trời nắng', 'hom-nay-troi-nang', '<p>ádfghjkl</p>', '1929_9943anh1.jpg', '2021-01-04 21:10:04', '2021-01-04 21:10:04'),
(2, 1, 'Ảnh Tiên Nữ Trên Bầu Trời Xanh', 'a-b-c', '<p>Ảnh Tiên Nữ Trên Bầu Trời Xanh</p>', '6086_4544anh1.jpg', '2021-01-01 01:50:08', '2021-01-05 01:50:08'),
(3, 2, 'Ảnh đồng quê thời kháng chiến', 'c-b-a', '<p>Ảnh đồng quê thời kháng chiến</p>', '7315_2414anh1.jpg', '2021-09-05 02:15:05', '2021-01-05 02:15:05'),
(4, 1, 'Ảnh Cô Gái Đắm Mình Vào Thiên Nhiên', 'anh-co-gai-dam-minh-vao-thien-nhien', '<p>Ảnh Cô Gái Đắm Mình Vào Thiên Nhiên</p>', '4498_1902anh1.jpg', '2021-09-08 02:19:03', '2021-09-08 02:19:03'),
(5, 3, 'Ảnh Cô Gái Đồng Quê loan Khuất Thị kaka', 'anh-co-gai-dong-que', '<p>Anh đẹp</p>', '1869_6022a1.jpg', '2021-06-23 07:15:03', '2021-06-23 07:15:03'),
(6, 4, 'Ảnh đồng quê thời kháng chiến Khuất Duy Hưng', 'anh-dong-que-thoi-khang-chien-khuat-duy-hung', '<p>Anh từ Khuất Duy Hưng kaka</p>', '7858_5393a2.jpg', '2021-03-23 07:17:17', '2021-03-23 07:17:17'),
(7, 5, 'Hôm nay trời nắng', 'hom-nay-troi-nang', '<p>Anh dap</p>', '8241_6955a2.jpg', '2021-10-23 20:21:24', '2021-10-23 20:21:24'),
(8, 6, 'Chị tôi', 'chi-toi', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">mỹ thuật VN đã nắm bắt được ngọn nguồn tươi mới và sáng tạo, nhất là trong mảng mỹ thuật dân tộc, thì càng về sau, những người làm mỹ thuật trẻ ào ạt chọn những hình thức nghệ thuật mới như&nbsp; pop art hoặc là sắp đặt và trình diễn, video art, mà những hình thức này chỉ mới được tiếp cận trên thông tin cóp nhặt là chính chứ chưa có những cơ sở lý luận vững chắc. Tính chuyên nghiệp của nghệ sĩ đương đại cũng vì thế được nhận định là yếu, tác động không nhỏ tới hình ảnh năng động, có chất lượng của mỹ thuật VN đương đại.</span></p>', '5036_3687an1.png', '2021-11-04 04:47:31', '2021-11-04 04:47:31'),
(9, 6, 'Làng quê Việt Nam', 'lang-que-viet-nam', '<p><span style=\"color:rgb(0, 0, 0); font-family:custom-regular,helvetica,arial,sans-serif; font-size:18px\">Tranh đề tài phong cảnh quê hương từ lâu đã làm bao trái tim người Việt thổn thức, bởi quê hương hai tiếng thiêng liêng là nơi quen thuộc, không chỉ bởi vẻ đẹp giản dị, mộc mạc mà tranh phong cảnh quê hương còn luôn khiến bạn cảm thấy bình yên, vui tươi mỗi khi ngắm nhìn.</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:custom-regular,helvetica,arial,sans-serif; font-size:18px\">quê hương lại nổi bật lên những nét vẽ đầy tình yêu quê hương, đất nước, tạo nên những bức tranh treo tường phong cảnh quê hương mang đến một vẻ đẹp tinh tế cho tổ ấm nhà bạn, như mở ra không gian tuổi thơ đong đầy kỉ niệm</span></p>', '1252_9085an3.png', '2021-11-04 10:37:01', '2021-11-04 10:37:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_04_150451_budgets', 2),
(5, '2021_09_04_150857_admins', 2),
(6, '2021_09_04_153222_users', 3),
(7, '2021_09_04_145516_images', 4),
(8, '2021_09_04_153713_budgets', 5),
(9, '2021_09_04_145943_score', 6),
(10, '2021_05_12_085849_exhibition', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scores`
--

CREATE TABLE `scores` (
  `id` int(10) UNSIGNED NOT NULL,
  `idImage` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idBudget` int(10) UNSIGNED NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `scores`
--

INSERT INTO `scores` (`id`, `idImage`, `idUser`, `idBudget`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 5.00, '2021-09-05 00:37:59', '2021-11-04 11:19:05'),
(2, 2, 1, 1, 3.00, '2021-09-05 02:06:21', '2021-11-04 11:30:36'),
(3, 4, 1, 1, 5.00, '2021-09-08 03:00:21', '2021-09-08 03:00:21'),
(4, 3, 2, 2, 3.00, '2021-09-29 09:18:02', '2021-11-04 13:28:41'),
(5, 1, 1, 2, 3.00, '2021-09-29 09:18:58', '2021-11-04 13:31:01'),
(6, 2, 1, 2, 5.00, '2021-09-29 09:20:51', '2021-09-29 09:20:51'),
(7, 3, 2, 1, 5.00, '2021-09-30 07:56:40', '2021-10-23 07:20:49'),
(8, 5, 3, 1, 4.00, '2021-10-23 07:22:42', '2021-10-23 07:22:42'),
(9, 6, 4, 1, 5.00, '2021-10-23 07:23:03', '2021-10-23 07:23:03'),
(10, 5, 3, 2, 5.00, '2021-10-23 07:23:51', '2021-10-23 07:23:51'),
(11, 6, 4, 2, 5.00, '2021-10-23 07:24:12', '2021-10-23 07:24:12'),
(12, 7, 5, 2, 3.00, '2021-10-23 20:22:26', '2021-10-23 20:22:26'),
(13, 7, 5, 1, 5.00, '2021-10-23 20:22:56', '2021-10-23 20:22:56'),
(14, 8, 6, 1, 4.00, '2021-11-04 07:13:04', '2021-11-04 07:13:04'),
(15, 9, 6, 1, 5.00, '2021-11-04 10:46:12', '2021-11-04 10:46:12'),
(19, 4, 1, 2, 3.00, '2021-11-04 15:46:21', '2021-11-04 15:46:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `lastName`, `firstName`, `age`, `birth`, `position`, `address`, `gender`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khuatvanduc12399@gmail.com', 'Khuất Văn', 'Đức', 18, '2021-09-01', 'Sinh Viên', 'Hà Nam', 0, '0843289256', NULL, '$2y$10$X3PWfw54AlJaVxDS7xJfk.h/OT.T/ntcdz30U9vw5OKd9G.WD2rSa', NULL, '2021-09-04 09:26:36', '2021-09-04 21:06:43'),
(2, 'lehuongbibo9x@gmail.com', 'Lê Thị', 'Hường', 18, '2021-09-01', 'Sinh Viên', 'Hà Nam', 0, '0843289257', NULL, '$2y$10$X3PWfw54AlJaVxDS7xJfk.h/OT.T/ntcdz30U9vw5OKd9G.WD2rSa', NULL, '2021-09-04 09:26:36', '2021-09-04 21:06:43'),
(3, 'conbelangthang5996@gmail.com', 'Con be', 'Lang Thang', 18, '2021-09-01', 'Sinh Viên', 'Thái Nguyên', 1, '0843289254', NULL, '$2y$10$X3PWfw54AlJaVxDS7xJfk.h/OT.T/ntcdz30U9vw5OKd9G.WD2rSa', NULL, '2021-09-04 09:26:36', '2021-09-04 21:06:43'),
(4, 'khuatduyhung96@gmail.com', 'Khuất Duy', 'Hưng', 18, '2021-09-01', 'Sinh Viên', 'Thái Nguyên', 1, '0843289254', NULL, '$2y$10$X3PWfw54AlJaVxDS7xJfk.h/OT.T/ntcdz30U9vw5OKd9G.WD2rSa', NULL, '2021-09-04 09:26:36', '2021-09-04 21:06:43'),
(5, 'loan20011996@gmail.com', 'Khuất Thi', 'Loan', 18, '2021-09-01', 'Sinh Viên', 'Thái Nguyên', 1, '0843289254', NULL, '$2y$10$X3PWfw54AlJaVxDS7xJfk.h/OT.T/ntcdz30U9vw5OKd9G.WD2rSa', NULL, '2021-09-04 09:26:36', '2021-09-04 21:06:43'),
(6, 'vuhainam199800@gmail.com', 'Vũ', 'Hải Nam', 18, '1999-08-03', 'Học Sinh', 'Hà Nội', 0, '0899567890', NULL, '$2y$10$Hki80eqld6RciQsjwKBVy.97CpJxqTL/3cHiyrpD/m8qwHSr145YK', NULL, '2021-11-03 15:28:53', '2021-11-04 04:45:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `bantochuc`
--
ALTER TABLE `bantochuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `budges`
--
ALTER TABLE `budges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `budgets_email_unique` (`email`);

--
-- Chỉ mục cho bảng `exhibitions`
--
ALTER TABLE `exhibitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idImage` (`idImage`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_idimage_foreign` (`idImage`),
  ADD KEY `scores_iduser_foreign` (`idUser`),
  ADD KEY `scores_idbudget_foreign` (`idBudget`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bantochuc`
--
ALTER TABLE `bantochuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `budges`
--
ALTER TABLE `budges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `exhibitions`
--
ALTER TABLE `exhibitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `exhibitions`
--
ALTER TABLE `exhibitions`
  ADD CONSTRAINT `exhibitions_ibfk_1` FOREIGN KEY (`idImage`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `exhibitions_idimage_foreign` FOREIGN KEY (`idImage`) REFERENCES `images` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_idbudget_foreign` FOREIGN KEY (`idBudget`) REFERENCES `budges` (`id`),
  ADD CONSTRAINT `scores_idimage_foreign` FOREIGN KEY (`idImage`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `scores_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
