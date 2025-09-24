-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 24, 2025 lúc 09:02 AM
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
-- Cơ sở dữ liệu: `tincongnghe_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta_ngan` text COLLATE utf8mb4_unicode_ci,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_danhmuc` int(11) DEFAULT NULL,
  `ngay_dang` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieu_de`, `mo_ta_ngan`, `hinh_anh`, `id_danhmuc`, `ngay_dang`) VALUES
(1, 'iPhone 17 Pro Max ra mắt', 'Apple chính thức trình làng iPhone mới với nhiều cải tiến về hiệu năng.', 'images/ip17.png', 2, '2025-09-24 00:45:10'),
(2, 'Laptop gaming Alienware 2025', 'Alienware 2025 sở hữu CPU Intel thế hệ mới và GPU RTX 5090.', 'images/alienware2025.jpg', 3, '2025-09-24 00:45:10'),
(3, 'Meta ra mắt kính thực tế ảo mới', 'Kính VR của Meta mang trải nghiệm sống động hơn với cảm biến 3D tiên tiến.', 'images/meta-vr.jpg', 1, '2025-09-24 00:45:10'),
(4, '10 ứng dụng AI miễn phí giúp học tập', 'Danh sách các ứng dụng AI hữu ích cho sinh viên và lập trình viên.', 'images/ai-apps.jpg', 4, '2025-09-24 00:45:10'),
(5, 'Top game hot tháng 9', 'Tổng hợp các tựa game được chơi nhiều nhất trong tháng 9.', 'images/game-sep.jpg', 5, '2025-09-24 00:45:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet_hot`
--

CREATE TABLE `baiviet_hot` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) DEFAULT NULL,
  `vi_tri` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten_danhmuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten_danhmuc`, `mo_ta`, `ngay_tao`) VALUES
(1, 'Công nghệ', 'Các tin tức mới nhất về công nghệ và thiết bị điện tử.', '2025-09-24 00:45:05'),
(2, 'Điện thoại', 'Thông tin, đánh giá và tin tức về điện thoại.', '2025-09-24 00:45:05'),
(3, 'Máy tính', 'Các tin tức và đánh giá về máy tính và laptop.', '2025-09-24 00:45:05'),
(4, 'Ứng dụng', 'Tin tức và đánh giá các ứng dụng phần mềm.', '2025-09-24 00:45:05'),
(5, 'Game', 'Các tin tức về game, e-sport và đánh giá game.', '2025-09-24 00:45:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noidung`
--

CREATE TABLE `noidung` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) DEFAULT NULL,
  `tieu_de_muc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noidung`
--

INSERT INTO `noidung` (`id`, `id_baiviet`, `tieu_de_muc`, `hinh_anh`, `noi_dung`) VALUES
(1, 1, 'Thiết kế & màu sắc', NULL, 'Chi tiết về iPhone 17 Pro Max: Trang bị chip A19, camera nâng cấp, hỗ trợ sạc nhanh và nhiều cải tiến khác.'),
(2, 2, 'Màn hình 120Hz', 'images/alienware-gaming.jpg', 'Laptop gaming Alienware 2025 với CPU Intel thế hệ mới, GPU RTX 5090, màn hình 240Hz.'),
(3, 3, 'Camera', NULL, 'Meta VR 2025: Kính thực tế ảo mới với cảm biến 3D, trải nghiệm sống động, hỗ trợ nhiều ứng dụng và game VR.'),
(4, 4, NULL, NULL, 'Danh sách 10 ứng dụng AI miễn phí giúp học tập, lập trình và nghiên cứu hiệu quả.'),
(5, 5, NULL, NULL, 'Top game hot tháng 9: tổng hợp các tựa game được chơi nhiều nhất và đánh giá chi tiết.'),
(6, 1, NULL, NULL, 'iPhone 17 có gì mới? \r\n\r\nDòng iPhone 17 giới thiệu nhiều thay đổi đáng kể so với thế hệ trước với 4 phiên bản: iPhone 17 tiêu chuẩn, iPhone Air, iPhone 17 Pro và iPhone 17 Pro Max. Những cập nhật mang tới trải nghiệm tốt hơn về thiết kế, màn hình, hiệu năng, camera và pin.\r\n\r\n### Sự xuất hiện của iPhone Air\r\niPhone Air mỏng nhẹ, sử dụng khung titanium, trọng lượng nhẹ hơn so với dòng Plus trước đây. Phiên bản này có màn hình 120 Hz, khả năng hỗ trợ high refresh rate nhưng vẫn giữ tiết kiệm năng lượng.\r\n\r\n### Thiết kế & bảng màu mới\r\nDòng iPhone 17 thay đổi về thiết kế với lớp kính độ bền cao, viền mỏng hơn và bảng màu thời thượng (ví dụ: xanh lam khói, tím, trắng, đen). Pro/Pro Max dùng chất liệu cao cấp hơn, bề mặt ít bám vân tay.\r\n\r\n### Màn hình & tần số quét 120Hz\r\nTất cả phiên bản iPhone 17 đều trang bị màn hình hỗ trợ tần số quét 120Hz với công nghệ LTPO, giúp chuyển đổi mượt giữa các chế độ sử dụng và tiết kiệm pin khi hiển thị nội dung tĩnh.\r\n\r\n### Camera & nhiếp ảnh\r\nCamera sau Fusion 48MP với zoom quang 2× là cấu hình tiêu chuẩn. Riêng dòng Pro có thêm camera tele và zoom cao hơn, hỗ trợ quay video ProRes, cảm biến lớn hơn để thu sáng tốt hơn.\r\n\r\n### Hiệu năng & chip A19 / A19 Pro\r\nPhiên bản tiêu chuẩn dùng A19, dòng Pro/Pro Max dùng A19 Pro — cải thiện hiệu suất đáng kể, hỗ trợ AI tốt hơn, tối ưu năng lượng. Tất cả máy chạy iOS 26.\r\n\r\n### Pin & sạc\r\nPin được thiết kế để kéo dài hơn so với thế hệ trước. Sạc nhanh, sạc không dây và hỗ trợ MagSafe vẫn giữ nguyên nhưng được tối ưu hơn để rút ngắn thời gian sạc.\r\n\r\n### Khi nào ra mắt & giá bán\r\niPhone 17 được dự kiến ra mắt vào tháng 9/2025. Giá khởi điểm khoảng 799 USD (~25-26 triệu VND) cho bản tiêu chuẩn, các bản Pro/Pro Max cao hơn.'),
(7, 1, '1 iPhone 17 có gì mới?', 'https://example.com/images/iphone17-overview.jpg', 'Apple chính thức ra mắt iPhone 17 với nhiều nâng cấp mạnh mẽ cả về thiết kế, phần cứng và phần mềm.'),
(8, 1, '1.1 Sự xuất hiện của iPhone Air', 'https://example.com/images/iphone17-air.jpg', 'Apple lần đầu giới thiệu phiên bản iPhone Air với thiết kế siêu mỏng, nhẹ hơn nhiều so với bản thường.'),
(9, 1, '1.2 Thiết kế và bảng màu mới', 'https://example.com/images/iphone17-colors.jpg', 'iPhone 17 được ra mắt với khung viền titan, mặt lưng nhám và bổ sung nhiều màu sắc thời thượng.'),
(10, 1, '1.3 Màn hình 120Hz chống phản chiếu cho tất cả phiên bản', 'https://example.com/images/iphone17-display.jpg', 'Apple đã trang bị tần số quét 120Hz và công nghệ chống lóa cho toàn bộ các phiên bản, không còn giới hạn cho Pro.'),
(11, 1, '1.4 Hệ thống camera được nâng cấp', 'https://example.com/images/iphone17-camera.jpg', 'Cụm camera chính có cảm biến lớn hơn, chụp đêm tốt hơn và hỗ trợ quay video 8K.'),
(12, 1, '1.5 Hiệu năng vượt trội với chip A19 và A19 Pro', 'https://example.com/images/iphone17-chip.jpg', 'Chip A19 mang lại hiệu suất mạnh mẽ, bản Pro sử dụng A19 Pro cho khả năng xử lý vượt trội.'),
(13, 1, '1.6 Dung lượng lưu trữ lên đến 2TB', 'https://example.com/images/iphone17-storage.jpg', 'iPhone 17 Pro Max có tùy chọn dung lượng bộ nhớ lên tới 2TB, phù hợp cho người dùng chuyên nghiệp.'),
(14, 1, '1.7 Trang bị hệ thống tán nhiệt buồng hơi', 'https://example.com/images/iphone17-cooling.jpg', 'Apple bổ sung hệ thống làm mát bằng buồng hơi giúp máy duy trì hiệu năng ổn định khi chơi game, quay phim.'),
(15, 1, '1.8 Thời lượng pin được kéo dài', 'https://example.com/images/iphone17-battery.jpg', 'Pin iPhone 17 có dung lượng lớn hơn, tối ưu hóa iOS giúp tăng thêm 2 giờ so với thế hệ trước.'),
(16, 1, '2 iPhone 17 khi nào ra mắt? Giá bao nhiêu?', 'https://example.com/images/iphone17-price.jpg', 'iPhone 17 dự kiến mở bán vào tháng 9 năm nay, với giá khởi điểm từ 999 USD cho bản tiêu chuẩn.'),
(17, 1, '3 Có nên mua iPhone 17 hay không?', 'https://example.com/images/iphone17-should-buy.jpg', 'Với nhiều nâng cấp đáng giá, iPhone 17 là lựa chọn phù hợp cho người dùng cần hiệu năng mạnh và trải nghiệm cao cấp.'),
(18, 1, '4 Kết luận', 'https://example.com/images/iphone17-summary.jpg', 'iPhone 17 là bước tiến quan trọng của Apple, hứa hẹn tiếp tục thống trị thị trường smartphone cao cấp.'),
(19, 1, '1 iPhone 17 có gì mới?', 'https://example.com/images/iphone17-overview.jpg', 'Apple chính thức ra mắt iPhone 17 với nhiều nâng cấp mạnh mẽ cả về thiết kế, phần cứng và phần mềm.'),
(20, 1, '1.1 Sự xuất hiện của iPhone Air', 'https://example.com/images/iphone17-air.jpg', 'Apple lần đầu giới thiệu phiên bản iPhone Air với thiết kế siêu mỏng, nhẹ hơn nhiều so với bản thường.'),
(21, 1, '1.2 Thiết kế và bảng màu mới', 'https://example.com/images/iphone17-colors.jpg', 'iPhone 17 được ra mắt với khung viền titan, mặt lưng nhám và bổ sung nhiều màu sắc thời thượng.'),
(22, 1, '1.3 Màn hình 120Hz chống phản chiếu cho tất cả phiên bản', 'https://example.com/images/iphone17-display.jpg', 'Apple đã trang bị tần số quét 120Hz và công nghệ chống lóa cho toàn bộ các phiên bản, không còn giới hạn cho Pro.'),
(23, 1, '1.4 Hệ thống camera được nâng cấp', 'https://example.com/images/iphone17-camera.jpg', 'Cụm camera chính có cảm biến lớn hơn, chụp đêm tốt hơn và hỗ trợ quay video 8K.'),
(24, 1, '1.5 Hiệu năng vượt trội với chip A19 và A19 Pro', 'https://example.com/images/iphone17-chip.jpg', 'Chip A19 mang lại hiệu suất mạnh mẽ, bản Pro sử dụng A19 Pro cho khả năng xử lý vượt trội.'),
(25, 1, '1.6 Dung lượng lưu trữ lên đến 2TB', 'https://example.com/images/iphone17-storage.jpg', 'iPhone 17 Pro Max có tùy chọn dung lượng bộ nhớ lên tới 2TB, phù hợp cho người dùng chuyên nghiệp.'),
(26, 1, '1.7 Trang bị hệ thống tán nhiệt buồng hơi', 'https://example.com/images/iphone17-cooling.jpg', 'Apple bổ sung hệ thống làm mát bằng buồng hơi giúp máy duy trì hiệu năng ổn định khi chơi game, quay phim.'),
(27, 1, '1.8 Thời lượng pin được kéo dài', 'https://example.com/images/iphone17-battery.jpg', 'Pin iPhone 17 có dung lượng lớn hơn, tối ưu hóa iOS giúp tăng thêm 2 giờ so với thế hệ trước.'),
(28, 1, '2 iPhone 17 khi nào ra mắt? Giá bao nhiêu?', 'https://example.com/images/iphone17-price.jpg', 'iPhone 17 dự kiến mở bán vào tháng 9 năm nay, với giá khởi điểm từ 999 USD cho bản tiêu chuẩn.'),
(29, 1, '3 Có nên mua iPhone 17 hay không?', 'https://example.com/images/iphone17-should-buy.jpg', 'Với nhiều nâng cấp đáng giá, iPhone 17 là lựa chọn phù hợp cho người dùng cần hiệu năng mạnh và trải nghiệm cao cấp.'),
(30, 1, '4 Kết luận', 'https://example.com/images/iphone17-summary.jpg', 'iPhone 17 là bước tiến quan trọng của Apple, hứa hẹn tiếp tục thống trị thị trường smartphone cao cấp.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `baiviet_hot`
--
ALTER TABLE `baiviet_hot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_baiviet` (`id_baiviet`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `noidung`
--
ALTER TABLE `noidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_baiviet` (`id_baiviet`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `noidung`
--
ALTER TABLE `noidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `baiviet_hot`
--
ALTER TABLE `baiviet_hot`
  ADD CONSTRAINT `baiviet_hot_ibfk_1` FOREIGN KEY (`id_baiviet`) REFERENCES `baiviet` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `noidung`
--
ALTER TABLE `noidung`
  ADD CONSTRAINT `noidung_ibfk_1` FOREIGN KEY (`id_baiviet`) REFERENCES `baiviet` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
