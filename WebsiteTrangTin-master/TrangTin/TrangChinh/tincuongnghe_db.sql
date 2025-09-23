-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 23, 2025 lúc 03:02 AM
-- Phiên bản máy phục vụ: 5.7.25
-- Phiên bản PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tincuongnghe_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `publish_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) DEFAULT '0',
  `comments_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `title`, `content`, `image`, `author`, `danhmuc_id`, `publish_date`, `views`, `comments_count`) VALUES
(1, 'AI sẽ thay đổi hoàn toàn cách chúng ta làm việc trong 5 năm tới', 'Các chuyên gia dự đoán trí tuệ nhân tạo sẽ tạo ra bước đột phá lớn trong mọi lĩnh vực...', 'images/AI.png', 'Minh Tuấn', 1, '2025-09-22 22:43:07', 1500, 42),
(2, 'Samsung ra mắt Galaxy S25 với camera 200MP', 'Flagship mới của Samsung hứa hẹn mang lại trải nghiệm chụp ảnh đỉnh cao...', 'https://placeholder-image-service.onrender.com/image/400x250?prompt=Điện thoại smartphone mới nhất', 'Lan Anh', 2, '2025-09-22 22:43:07', 800, 15),
(3, 'Asus ROG giới thiệu laptop gaming mạnh nhất 2024', 'Với cấu hình khủng và thiết kế đậm chất gaming...', 'https://placeholder-image-service.onrender.com/image/400x250?prompt=Laptop gaming với đèn LED RGB', 'Hùng Việt', 3, '2025-09-22 22:43:07', 1200, 28),
(4, 'Top 5 ứng dụng chỉnh sửa ảnh tốt nhất năm 2024', 'Từ các ứng dụng miễn phí đến cao cấp...', 'https://placeholder-image-service.onrender.com/image/400x250?prompt=Ứng dụng di động với giao diện hiện đại', 'Thảo Nguyên', 4, '2025-09-22 22:43:07', 950, 19),
(5, 'Game mobile kiếm hiệp mới thu hút 10 triệu người chơi', 'Chỉ sau 1 tuần phát hành, tựa game này đã phá vỡ nhiều kỷ lục...', 'https://placeholder-image-service.onrender.com/image/400x250?prompt=Trò chơi điện tử với đồ họa 3D sống động', 'Đức Anh', 5, '2025-09-22 22:43:07', 2000, 37);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet_hot`
--

CREATE TABLE `baiviet_hot` (
  `id` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `tomtat` text,
  `noidung` longtext,
  `tacgia` varchar(100) DEFAULT NULL,
  `ngaydang` datetime DEFAULT CURRENT_TIMESTAMP,
  `chuyenmuc` varchar(100) DEFAULT NULL,
  `link_nguon` varchar(500) DEFAULT NULL,
  `anhdaidien` varchar(500) DEFAULT NULL,
  `luotxem` int(11) DEFAULT '0',
  `luotbinhluan` int(11) DEFAULT '0',
  `trangthai` enum('hien','an') DEFAULT 'hien'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `baiviet_hot`
--

INSERT INTO `baiviet_hot` (`id`, `tieude`, `tomtat`, `noidung`, `tacgia`, `ngaydang`, `chuyenmuc`, `link_nguon`, `anhdaidien`, `luotxem`, `luotbinhluan`, `trangthai`) VALUES
(1, 'Vượt qua Yamal, Dembele đoạt Quả Bóng Vàng 2025', 'Tiền đạo 28 tuổi Ousmane Dembele lần đầu đoạt Quả Bóng Vàng nhờ cú ăn ba cùng PSG mùa trước, còn Lamine Yamal nhận Bóng Bạc.', 'Nội dung chi tiết của bài tường thuật Lễ trao Quả Bóng Vàng 2025 từ VNExpress...', 'VNExpress', '2025-09-23 09:02:47', 'Thể thao', 'https://vnexpress.net/truc-tiep-le-trao-qua-bong-vang-2025-4942267-tong-thuat.html', 'images/baiviethot1.jpg', 0, 0, 'hien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `description`) VALUES
(1, 'Công nghệ', 'Tin tức công nghệ mới nhất'),
(2, 'Điện thoại', 'Đánh giá và tin tức điện thoại'),
(3, 'Máy tính', 'Laptop, PC và phần cứng'),
(4, 'Ứng dụng', 'Phần mềm và app di động'),
(5, 'Game', 'Tin game và esports');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin@tin-tuc.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2025-09-22 22:43:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baiviet_hot`
--
ALTER TABLE `baiviet_hot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `baiviet_hot`
--
ALTER TABLE `baiviet_hot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
