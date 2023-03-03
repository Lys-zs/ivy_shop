-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 03, 2023 lúc 03:47 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php62_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'SALE 50% TOÀN BỘ SP', 0),
(2, 'Áo thun', 1),
(3, 'Áo sơ mi', 1),
(4, 'SS2022 - Sale up to 50%', 0),
(5, 'Áo Khoác', 6),
(6, 'Hàng Mới Về', 0),
(18, 'Đầm', 6),
(19, 'Phụ Kiện', 4),
(20, 'GIÀY & DÉP', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(7, 'Đào Thế Hậu', 'nvba@gmail.com', '26', '0923257856', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, ' Mệnh Thổ hợp màu gì?', '<p>Khi di chuyển bằng &ocirc; t&ocirc;, &iacute;t nhiều sẽ c&oacute; trường hợp bạn gặp phải c&aacute;c t&igrave;nh huống rắc rối, thậm ch&iacute; nguy cấp. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao bạn n&ecirc;n trang bị những kiến thức v&agrave; phụ kiện cứu hộ cần thiết. Video dưới đ&acirc;y l&agrave; một mẹo nhỏ sẽ gi&uacute;p bạn trong một v&agrave;i trường hợp khẩn cấp khi sử dụng xe &ocirc; t&ocirc; con.</p>\r\n', '<p>Chiếc xe đầu ti&ecirc;n bị ch&aacute;y v&agrave;o th&aacute;ng 9-2018, nhưng do t&igrave;nh trạng huỷ hoại nặng của xe n&ecirc;n h&atilde;ng kh&ocirc;ng thể t&igrave;m ra manh m&ocirc;i n&agrave;o.</p>\r\n\r\n<p>T&igrave;nh trạng n&agrave;y diễn ra li&ecirc;n tục sau đ&oacute; nhưng việc t&igrave;m kiếm mọi đầu mối nguy&ecirc;n nh&acirc;n vẫn thất bại. Đến đầu năm 2020, Hyundai buộc phải thu&ecirc; b&ecirc;n thứ 3 để t&igrave;m lỗi v&agrave; cuối c&ugrave;ng nguy&ecirc;n nh&acirc;n được x&aacute;c định do chập điện.</p>\r\n\r\n<p>Theo đ&oacute;, dầu phanh ABS bị r&ograve; rỉ, rớt v&agrave;o bộ điều khiển điện tử ECU, dẫn đến ăn m&ograve;n bảng mạch in của ECU g&acirc;y chập điện.</p>\r\n\r\n<p>Dầu thuỷ lực cũng chảy tr&agrave;n l&ecirc;n vỏ động cơ, n&ecirc;n Hyundai đưa ra cảnh b&aacute;o chủ xe Santa Fe n&ecirc;n để &yacute; đến m&ugrave;i kh&eacute;t, kh&oacute;i từ động cơ bốc ra, v&agrave; kết hợp c&aacute;c cảnh b&aacute;o đ&egrave;n trong xe để nhanh ch&oacute;ng đưa xe đến đại l&yacute; sửa chữa.</p>\r\n\r\n<p>Bắt đầu v&agrave;o cuối th&aacute;ng 10 đến, Hyundai y&ecirc;u cầu c&aacute;c xe Santa Fe đời 2013-2015 đến c&aacute;c đại l&yacute; để thay thế cụm thắng ABS bị lỗi.</p>\r\n\r\n<p><strong>Theo Phương Minh (Ph&aacute;p Luật TPHCM)</strong></p>\r\n', 1, '1666345425_4a9e66a98fd625846e1a29225ba7ee98.jpg'),
(7, ' Người mệnh Kim hợp màu gì và kỵ màu gì?', '<p>Tại Việt Nam, McLaren 720S l&agrave; một trong những d&ograve;ng si&ecirc;u xe phổ biến nhất với số lượng hơn 10 chiếc, cả bản Coupe v&agrave; Spider. Đặc biệt nhất l&agrave; chiếc 720S Coupe của đại gia Vũng T&agrave;u với m&agrave;u t&iacute;m Lantana Purple độc nhất Việt Nam.</p>\r\n', '<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-1.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" /></p>\r\n\r\n<p>Vẫn chưa h&agrave;i l&ograve;ng với m&agrave;u sơn đặc biệt, đại gia n&agrave;y đ&atilde; chi khoản tiền khủng để lột x&aacute;c ho&agrave;n to&agrave;n chiếc si&ecirc;u xe. Cụ thể, chiếc 720S được n&acirc;ng cấp g&oacute;i độ N-Largo của Novitec.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-2.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" /></p>\r\n\r\n<p>Nếu c&aacute;c g&oacute;i độ kh&aacute;c chỉ lắp đặt v&agrave;i chi tiết tăng t&iacute;nh kh&iacute; động học th&igrave; g&oacute;i độ N-Largo thay đổi gần như to&agrave;n bộ ngoại thất xe. Phần th&acirc;n vỏ mới được l&agrave;m bằng carbon, vừa tăng t&iacute;nh thẩm mỹ vừa giảm khối lượng cho xe.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-3.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" /></p>\r\n\r\n<p>Sau khi n&acirc;ng cấp bodykit mới, chiều rộng th&acirc;n xe tăng đ&ocirc;i ch&uacute;t. Cụ thể, v&ograve;m b&aacute;nh trước rộng hơn 60 mm v&agrave; v&ograve;m b&aacute;nh sau rộng hơn 130 mm. Sự thay đổi n&agrave;y vừa tăng vẻ hầm hố cho xe, vừa cung cấp th&ecirc;m kh&ocirc;ng gian để bổ sung c&aacute;c chi tiết kh&iacute; động học.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-4.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" /></p>\r\n\r\n<p>Do si&ecirc;u xe mang m&agrave;u Lantana Purple độc quyền của bộ phận MSO, chủ nh&acirc;n phải đặt h&agrave;ng m&agrave;u sơn n&agrave;y từ McLaren để phủ l&ecirc;n bodykit mới. D&ugrave; kh&ocirc;ng tiết lộ, mức gi&aacute; cho những hộp sơn từ bộ phận MSO kh&aacute; đắt đỏ.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-5.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" /></p>\r\n\r\n<p>Điểm thay đổi nhiều nhất l&agrave; nửa th&acirc;n trước của xe. Nhờ bộ kit mới, phần đầu xe trở n&ecirc;n hầm hố hơn với cảm hứng từ đ&agrave;n anh Senna. V&ograve;m b&aacute;nh xe được bổ sung khe gi&oacute; kh&iacute; động học mới.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-6.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" /></p>\r\n\r\n<p>Bộ m&acirc;m nguy&ecirc;n bản được thay bằng la-zăng đa chấu của Vossen với k&iacute;ch thước 20 inch ở ph&iacute;a trước v&agrave; 21 inch ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-7.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" /></p>\r\n\r\n<p>Để tạo điểm nhấn cho ngoại thất, một số chi tiết được phủ m&agrave;u v&agrave;ng như viền cản trước/sau, viền ốp h&ocirc;ng, khe gi&oacute; tr&ecirc;n v&ograve;m b&aacute;nh trước, kh&oacute;a t&acirc;m b&aacute;nh xe v&agrave; kẹp phanh.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-8.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" /></p>\r\n\r\n<p>Ở ph&iacute;a sau, xe được trang bị c&aacute;nh gi&oacute; mới l&agrave;m bằng carbon. Hệ thống ống xả cũng được n&acirc;ng cấp l&ecirc;n thương hiệu FI Exhaust. Hệ thống ống xả n&agrave;y thuộc d&ograve;ng Signature Titanium, được l&agrave;m từ titanium m&agrave;u v&agrave;ng v&agrave; phần chụp ống xả bằng carbon.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-9.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; si&ecirc;u xe n&agrave;y kh&ocirc;ng được n&acirc;ng cấp động cơ. Cung cấp sức mạnh cho 720S vẫn l&agrave; động cơ tăng &aacute;p k&eacute;p V8 4.0L cho c&ocirc;ng suất tối đa 720 m&atilde; lực v&agrave; m&ocirc;-men xoắn 770 Nm. Nhờ sức mạnh n&agrave;y, 720S c&oacute; thể tăng tốc 0-100 km/h chỉ trong 2,9 gi&acirc;y. Nếu được n&acirc;ng cấp hiệu suất theo cấu h&igrave;nh N-Largo, 720S sẽ cho ra c&ocirc;ng suất hơn 800 m&atilde; lực.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-10.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" /></p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh n&acirc;ng cấp g&oacute;i độ N-Largo cho 720S được thực hiện trong khoảng 1 th&aacute;ng với chi ph&iacute; kh&ocirc;ng được tiết lộ. Novitec chỉ sản xuất 15 bộ bodykit N-Largo cho McLaren 720S. Với độ đặc biệt n&agrave;y, chi ph&iacute; cho g&oacute;i độ N-Largo kh&ocirc;ng thấp hơn con số 1 tỷ đồng.</p>\r\n', 1, '1666345417_d570dc34d5fb3673028b7519392b4eed.jpg'),
(8, ' Người mệnh Kim hợp màu gì và kỵ màu gì?', '<p>Mệnh Kim hợp m&agrave;u g&igrave; l&agrave; thắc mắc được nhiều người quan t&acirc;m. Từ những nhu cầu h&agrave;ng ng&agrave;y như mua sắm quần &aacute;o, đồng hồ v&agrave; trang sức&hellip; cho đến những t&agrave;i sản quan trọng như mua nh&agrave;, mua xe th&igrave; nhiều người đều n&ecirc;n coi phong thủy để c&oacute; thể mang lại nhiều may mắn t</p>\r\n', '<p>Mệnh Kim hợp m&agrave;u g&igrave; l&agrave; thắc mắc được nhiều người quan t&acirc;m. Từ những nhu cầu h&agrave;ng ng&agrave;y như mua sắm quần &aacute;o, đồng hồ v&agrave; trang sức&hellip; cho đến những t&agrave;i sản quan trọng như mua nh&agrave;, mua xe th&igrave; nhiều người đều n&ecirc;n coi phong thủy để c&oacute; thể mang lại nhiều may mắn trong cuộc sống. Vậy h&atilde;y c&ugrave;ng IVY moda t&igrave;m hiểu người mệnh Kim ph&ugrave; hợp m&agrave;u g&igrave; v&agrave; lựa chọn ph&ugrave; hợp theo phong thủy.</p>\r\n\r\n<h2>Tổng quan về mệnh Kim</h2>\r\n\r\n<p>Trong ngũ h&agrave;nh, mệnh Kim đại diện cho những vật thể rắn, thể hiện của sức mạnh. Những người mệnh Kim ch&iacute;nh l&agrave; đại diện cho sự c&ocirc;ng minh, ch&iacute;nh trực, l&agrave; những người th&ocirc;ng minh, nhanh nhẹn n&ecirc;n thường rất nổi bật trong một tập thể.</p>\r\n\r\n<h3>Những người mệnh Kim sinh năm bao nhi&ecirc;u</h3>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những năm sinh thuộc mệnh Kim:</p>\r\n\r\n<ul>\r\n	<li>Tuổi Nh&acirc;m Th&acirc;n: 1932, 1992</li>\r\n	<li>Tuổi Ất M&ugrave;i: 1955, 2015</li>\r\n	<li>Tuổi Gi&aacute;p T&yacute;: 1984, 1924</li>\r\n	<li>Tuổi Qu&yacute; Dậu: 1933, 1993</li>\r\n	<li>Tuổi Nh&acirc;m Dần: 1962, 2022</li>\r\n	<li>Tuổi Ất Sửu: 1985, 1925</li>\r\n	<li>Tuổi Canh Th&igrave;n: 1940, 2000</li>\r\n	<li>Tuổi Qu&yacute; M&atilde;o: 1963, 2023</li>\r\n	<li>Tuổi T&acirc;n Tỵ: 1941, 2001</li>\r\n	<li>Tuổi Canh Tuất: 1970, 2030</li>\r\n	<li>Tuổi Gi&aacute;p Ngọ: 1954, 2014</li>\r\n	<li>Tuổi T&acirc;n Hợi: 1971, 2031</li>\r\n</ul>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-xoe-2-lop-ms-41b8707-31633\"><img alt=\"Tổng quan về mệnh Kim\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/3cf64217b139d587f76784a8b9e799bf.png\" /></a></p>\r\n\r\n<h3>T&iacute;nh c&aacute;ch của người mệnh Kim</h3>\r\n\r\n<p>Phụ thuộc v&agrave;o năm sinh m&agrave; mỗi người sẽ thuộc một cung mệnh kh&aacute;c nhau, từ đ&oacute; sẽ c&oacute; những n&eacute;t t&iacute;nh c&aacute;ch đặc trưng ri&ecirc;ng.</p>\r\n\r\n<p>Đặc điểm nhận dạng của người mệnh Kim sở hữu tr&aacute;n rộng, gương mặt s&aacute;ng, th&ocirc;ng minh đặc biệt c&oacute; một đ&ocirc;i mắt tinh anh với sự hoạt b&aacute;t.&nbsp;</p>\r\n\r\n<p>T&iacute;nh c&aacute;ch nhanh nhẹn v&agrave; khả năng th&iacute;ch nghi cao cho d&ugrave; c&oacute; sự thay đổi ở đ&acirc;u th&igrave; những người mệnh Kim đều th&iacute;ch ứng được. Những người n&agrave;y c&oacute; sự sắc sảo v&agrave; giỏi trong c&ocirc;ng việc.</p>\r\n\r\n<p>Ưu điểm m&agrave; c&aacute;c mệnh kh&aacute;c lu&ocirc;n muốn sở hữu đ&oacute; l&agrave; t&iacute;nh c&aacute;ch ki&ecirc;n định, dứt kho&aacute;t kh&ocirc;ng qu&aacute; lay động giữa c&aacute;c quyết định c&aacute; nh&acirc;n, c&oacute; mục ti&ecirc;u v&agrave; lu&ocirc;n biến những mục ti&ecirc;u ấy th&agrave;nh sự thật. Trong cuộc sống, họ coi trọng nghĩa kh&iacute; hơn, lu&ocirc;n biết kiềm chế bản th&acirc;n trong c&aacute;c t&igrave;nh huống v&agrave; c&aacute;c sự cố gặp phải.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; nhược điểm ở người mệnh n&agrave;y dễ bị ảnh hưởng, một ch&uacute;t bướng bỉnh cố chấp, thường nghĩ m&igrave;nh l&agrave; trung t&acirc;m. Nếu biết được điểm yếu của m&igrave;nh rồi th&igrave; những người mệnh Kim h&atilde;y ch&uacute; &yacute; tiết chế lại, bởi vậy những người mệnh Kim cũng c&oacute; nhiều người cảm thấy kh&ocirc;ng thoải m&aacute;i khi người mệnh Kim bộc lộ ra t&iacute;nh c&aacute;ch.</p>\r\n\r\n<p>Tr&ecirc;n con đường sự nghiệp, những người mệnh Kim với tố chất l&atilde;nh đạo tốt do vậy con đường sự nghiệp c&ocirc;ng danh của người mệnh Kim ng&agrave;y c&agrave;ng tiến xa.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-maxi-xep-nep-ms-41m6443-29607\"><img alt=\"mệnh kim hợp màu gì\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/d07e4dd81e4275ca27b47818fc989827.png\" /></a></p>\r\n\r\n<h2>Người mệnh Kim hợp m&agrave;u g&igrave;?</h2>\r\n\r\n<p>Theo phong thủy, &ldquo;Kim&rdquo; trong mệnh Kim l&agrave; kim loại, kim kh&iacute; v&igrave; vậy mệnh Kim sẽ tương hợp với c&aacute;c m&agrave;u trắng, x&aacute;m v&agrave; bạc c&oacute; &aacute;nh kim theo m&agrave;u bản mệnh. B&ecirc;n cạnh những m&agrave;u n&acirc;u, v&agrave;ng, đen đại diện cho mệnh &ldquo;Thổ&rdquo;, nh&oacute;m m&agrave;u tương sinh với người mệnh Kim gi&uacute;p mang đến t&agrave;i lộc v&agrave; may mắn.</p>\r\n\r\n<h3>M&agrave;u v&agrave;ng nổi bật</h3>\r\n\r\n<p>M&agrave;u v&agrave;ng tượng trưng cho niềm hạnh ph&uacute;c trường tồn, cho một sức sống bất diệt tựa như &aacute;nh mặt trời chiếu s&aacute;ng. M&agrave;u sắc n&agrave;y c&ograve;n mang đến sự thu h&uacute;t mạnh mẽ v&agrave; k&iacute;ch th&iacute;ch khả năng s&aacute;ng tạo của tr&iacute; &oacute;c. Ch&iacute;nh v&igrave; vậy người mệnh Kim khi sử dụng m&agrave;u v&agrave;ng, bạn sẽ được truyền th&ecirc;m một nguồn năng lượng t&iacute;ch cực cho c&ocirc;ng việc. Kết hợp những bộ quần &aacute;o hay trang sức m&agrave;u v&agrave;ng c&ograve;n gi&uacute;p chi&ecirc;u t&agrave;i lộc, mang vận may cho m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Màu vàng nổi bật\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/326e1a032b05eaed87143bd114def58d.png\" />Xem th&ecirc;m:&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/menh-hoa-hop-mau-gi-825\">Mệnh Hỏa hợp m&agrave;u g&igrave;? Bật m&iacute; trang phục ph&ugrave; hợp với người mệnh Hỏa</a></p>\r\n\r\n<h3>M&agrave;u trắng tinh kh&ocirc;i</h3>\r\n\r\n<p>M&agrave;u trắng c&oacute; &aacute;nh kim được xem l&agrave; m&agrave;u sắc đại diện cho mệnh Kim. M&agrave;u trắng mang sự tinh kh&ocirc;i, thanh khiết v&agrave; mang n&eacute;t đẹp giản dị.&nbsp;</p>\r\n\r\n<p><img alt=\"Màu trắng tinh khôi\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/db27c2c7ceb93d5f4e451da074306898.png\" /></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-du-tiec-xep-nguc-ms-41m7468-34094\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/eee182363d4695ccf5ced6c12446b4a4.png\" /></a></p>\r\n\r\n<h3>M&agrave;u x&aacute;m hoặc m&agrave;u n&acirc;u đất</h3>\r\n\r\n<p>V&igrave; đ&acirc;y l&agrave; m&agrave;u sắc tương sinh cho người mệnh Kim n&ecirc;n n&oacute; sẽ gi&uacute;p bạn giải quyết được nhiều vấn đề trong c&ocirc;ng việc, bạn c&oacute; thể trang tr&iacute; b&agrave;n l&agrave;m việc được trang tr&iacute; th&ecirc;m t&ocirc;ng m&agrave;u n&agrave;y.&nbsp;</p>\r\n\r\n<p><img alt=\"Màu xám hoặc màu nâu đất\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/f1a8448c19cfb61feabecb02fdde3d81.png\" /></p>\r\n\r\n<h2>Mệnh Kim kh&ocirc;ng hợp m&agrave;u g&igrave;?</h2>\r\n\r\n<p>Theo quy luật ngũ h&agrave;nh, Hỏa khắc Kim n&ecirc;n c&aacute;c m&agrave;u đỏ, cam, hồng thuộc h&agrave;nh Hoả sẽ tương khắc với người mệnh Kim. Đ&acirc;y l&agrave; c&aacute;c m&agrave;u l&agrave;m hạn chế vận may của bạn, sinh kh&iacute;, v&agrave; đường c&ocirc;ng danh sự nghiệp đối với người mệnh Kim.</p>\r\n\r\n<ul>\r\n	<li>Trong mối quan hệ tương khắc theo ngũ h&agrave;nh, ta c&oacute;: Kim khắc Mộc, Mộc khắc Thổ, Thổ khắc Thủy, Thủy khắc Hỏa v&agrave; Hỏa khắc Kim (kim loại thể cắt c&acirc;y cỏ, c&acirc;y h&uacute;t chất dinh dưỡng từ đất, nước bị đất ngăn trở, nước dập được lửa, lửa nung chảy kim loại).</li>\r\n	<li>V&igrave; Hỏa (lửa) c&oacute; thể l&agrave;m tan chảy Kim (kim loại) n&ecirc;n c&aacute;c m&agrave;u sắc thuộc mệnh Hỏa l&agrave; m&agrave;u tối kỵ cho những người mệnh Kim. Đ&oacute; l&agrave; m&agrave;u đỏ, cam v&agrave; hồng.</li>\r\n	<li>Ngo&agrave;i ra, những người mệnh Kim cũng kh&ocirc;ng n&ecirc;n sử dụng c&aacute;c m&agrave;u sắc qu&aacute; sặc sỡ, l&ograve;e loẹt. V&igrave; m&agrave;u trắng l&agrave; m&agrave;u bản mệnh của những người mệnh Kim n&ecirc;n bất cứ m&agrave;u n&agrave;o qu&aacute; sặc sỡ cũng sẽ l&agrave;m cho Kim bị suy yếu.</li>\r\n</ul>\r\n\r\n<p>Vậy bạn đ&atilde; nắm được mệnh Kim ph&ugrave; hợp m&agrave;u g&igrave; v&agrave; khắc m&agrave;u g&igrave; chưa? Chỉ cần chọn lựa m&agrave;u sắc tu&acirc;n theo quy tắc ngũ h&agrave;nh th&igrave; việc gặp may mắn cũng dễ d&agrave;ng hơn rất nhiều.</p>\r\n\r\n<p><img alt=\"Mệnh Kim không hợp màu gì?\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/0de998782a0941fa7ac9a6a596f82273.png\" /></p>\r\n\r\n<p><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/4d7d6df5a58280aef43628a95ce94375.png\" /></p>\r\n\r\n<h2>Lưu &yacute; c&aacute;ch chọn đồ ph&ugrave; hợp cho người mệnh Kim theo phong thuỷ</h2>\r\n\r\n<h3>Đầm m&agrave;u v&agrave;ng, m&agrave;u trắng sang trọng đầy thu h&uacute;t</h3>\r\n\r\n<p>Theo những chia sẻ đ&atilde; đề cập ở tr&ecirc;n, những người mệnh Kim hợp m&agrave;u g&igrave; để lựa chọn trang phục đẹp v&agrave; ph&ugrave; hợp th&igrave; chắc hẳn v&agrave;ng l&agrave; gam m&agrave;u kh&ocirc;ng thể thiếu cho bộ sưu tập của c&aacute;c n&agrave;ng. Bạn c&oacute; thể lựa chọn&nbsp;<a href=\"https://ivymoda.com/danh-muc/ao-so-mi-nu\">&aacute;o sơ mi nữ</a>&nbsp;hoặc &aacute;o kiểu để trang phục th&ecirc;m điệu đ&agrave;, nữ t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Đầm màu vàng, màu trắng sang trọng đầy thu hút\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/61d45ce811bc16ac6aa867b974c95208.png\" />Xem th&ecirc;m:&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/menh-thuy-hop-mau-gi-827\">Mệnh Thủy hợp m&agrave;u g&igrave; để kh&ocirc;ng phạm ngũ h&agrave;nh tương sinh tương khắc</a></p>\r\n\r\n<h3>&Aacute;o trắng tạo kiểu, ph&ugrave; hợp với người mệnh Kim</h3>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-tay-lo-cut-out-ms-16m6922-30955\"><img alt=\"Áo trắng tạo kiểu, phù hợp với người mệnh Kim\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/9672676ab4f02dd8c5ff9c91291e0fc8.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-peplum-cai-khuy-eo-ms-15m7318-34114\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/ac2bdf57f6a60485ddbe6ca03667ab63.png\" /></a></p>\r\n\r\n<h3>Trang phục m&agrave;u n&acirc;u cho c&ocirc; n&agrave;ng mệnh Kim qu&yacute; ph&aacute;i&nbsp;</h3>\r\n\r\n<p>Nếu bạn lo lắng gam m&agrave;u n&acirc;u sẽ l&agrave;m m&igrave;nh tr&ocirc;ng gi&agrave; đi th&igrave; h&atilde;y chọn cho m&igrave;nh những chiếc &aacute;o c&aacute;c điệu sẽ gi&uacute;p bạn tr&ocirc;ng nữ t&iacute;nh hơn. H&atilde;y ưu ti&ecirc;n c&aacute;c kiểu d&aacute;ng thật phong c&aacute;ch, n&oacute; sẽ gi&uacute;p t&ocirc;n th&ecirc;m n&eacute;t trẻ trung, nữ t&iacute;nh cho c&aacute;c n&agrave;ng.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/jumpsuit-dang-vest-ms-18m7135-33083\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/fe96ceaf9921a94a0357f0b629d51e74.png\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng chỉ mệnh Kim, mỗi thi&ecirc;n mệnh đều mang những m&agrave;u sắc tương sinh v&agrave; tương khắc kh&aacute;c nhau. Qua b&agrave;i viết tr&ecirc;n hy vọng những bạn mệnh Kim đ&atilde; chọn cho m&igrave;nh những m&agrave;u sắc ph&ugrave; hợp. Đừng qu&ecirc;n gh&eacute; qua website/app&nbsp;<a href=\"https://ivymoda.com/\">IVY moda</a>&nbsp;để lựa chọn cho m&igrave;nh những trang phục ph&ugrave; hợp với sở th&iacute;ch v&agrave; thi&ecirc;n mệnh của m&igrave;nh.</p>\r\n', 1, '1666345407_00c6f0f36638b9d6a9877882e9c4927f.jpg'),
(9, ' Mệnh Thổ hợp màu gì?', '<p>Mệnh thổ hợp m&agrave;u g&igrave;, xung khắc với m&agrave;u g&igrave; l&agrave; c&acirc;u hỏi được rất nhiều người quan t&acirc;m thời gian gần đ&acirc;y. Đặc biệt trong phong thủy ngũ h&agrave;nh, yếu tố về mệnh l&agrave; một trong những yếu tố v&ocirc; c&ugrave;ng quan trọng. Ch&uacute;ng cũng phần n&agrave;o quyết định đến sự may mắn v&agrave; t&agrave;i lộc</p>\r\n', '<p>Mệnh thổ hợp m&agrave;u g&igrave;, xung khắc với m&agrave;u g&igrave; l&agrave; c&acirc;u hỏi được rất nhiều người quan t&acirc;m thời gian gần đ&acirc;y. Đặc biệt trong phong thủy ngũ h&agrave;nh, yếu tố về mệnh l&agrave; một trong những yếu tố v&ocirc; c&ugrave;ng quan trọng. Ch&uacute;ng cũng phần n&agrave;o quyết định đến sự may mắn v&agrave; t&agrave;i lộc của mỗi người. Dựa v&agrave;o bản mệnh để x&aacute;c định m&agrave;u sắc phong thủy cho người mệnh thổ qua b&agrave;i viết t&oacute;m gọn dưới đ&acirc;y của thời trang IVY moda để hiểu r&otilde; hơn về người&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/menh-tho-hop-mau-gi-830\">mệnh thổ hợp m&agrave;u g&igrave;</a>&nbsp;nhất nh&eacute;!</p>\r\n\r\n<h2>Đặc điểm của người mệnh thổ</h2>\r\n\r\n<h3>Mệnh Thổ sinh năm n&agrave;o?</h3>\r\n\r\n<p>C&aacute;c bạn cần biết người mệnh thổ sinh năm bao nhi&ecirc;u th&igrave; mới c&oacute; thể lựa chọn m&agrave;u sắc ph&ugrave; hợp nhất được. Dưới đ&acirc;y l&agrave; t&oacute;m tắt về năm sinh của những người mệnh thổ:</p>\r\n\r\n<p>Năm sinh của người mệnh thổ: Mậu Dần (1928, 1998); Kỷ M&atilde;o (1939. 1999); B&iacute;nh Tuất (1946,2006); Đinh Hợi (1947, 2007); Canh T&yacute; (1960, 2020); T&acirc;n Sửu (1961, 2021); Mậu Th&acirc;n (1968); Kỷ Dậu (1969); B&iacute;nh Th&igrave;n (1976); Đinh Tỵ (1977); Canh Ngọ (1990); T&acirc;n M&ugrave;i (1991)</p>\r\n\r\n<p><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/2aab764ecf1d7c1d59090aaaf84ede8a.png\" /></p>\r\n\r\n<h3>T&iacute;nh c&aacute;ch của người mệnh Thổ</h3>\r\n\r\n<p>T&iacute;nh c&aacute;ch người mệnh thổ phụ thuộc v&agrave;o mệnh thổ sinh năm n&agrave;o. Với một số ưu điểm như gi&agrave;u t&igrave;nh y&ecirc;u thương, t&iacute;nh c&aacute;ch &ocirc;n h&ograve;a, chăm chỉ, đặc biệt họ l&agrave; những người sống l&yacute; tr&iacute; với &yacute; ch&iacute; vững v&agrave;ng thực tế v&agrave; khi&ecirc;m tốn. B&ecirc;n cạnh đ&oacute; họ cũng gh&eacute;t sự c&ocirc; độc một m&igrave;nh, v&igrave; vậy n&ecirc;n chọn mệnh thổ hợp với m&agrave;u g&igrave; để tương sinh v&agrave; khắc chế những t&iacute;nh c&aacute;ch khiến cho người mệnh thổ kh&oacute; ph&aacute;t triển.</p>\r\n\r\n<p><img alt=\"\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/32a85a9bff1e9382ae556c4c3ccb053a.jpg\" /></p>\r\n\r\n<p>Nhờ t&iacute;nh giản dị v&agrave; khi&ecirc;m tốn m&agrave; kh&aacute; &iacute;t người biết đến những người thuộc bản mệnh n&agrave;y. Với t&iacute;nh c&aacute;ch trầm lặng v&agrave; lu&ocirc;n giữ được &ocirc;n h&ograve;a, h&ograve;a kh&iacute; giữa c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh. Người mệnh thổ l&agrave; người sống nguy&ecirc;n tắc n&ecirc;n họ rất ch&uacute; trọng đến lời hứa cũng như uy t&iacute;n của m&igrave;nh v&igrave; vậy m&agrave; được l&ograve;ng mọi người v&agrave; được bạn b&egrave; tin tưởng.</p>\r\n\r\n<p>N&ecirc;n chọn c&aacute;c m&agrave;u hợp mệnh thổ để mang đến may mắn v&agrave; gi&uacute;p c&acirc;n bằng những khuyết điểm của những người thuộc bản mệnh n&agrave;y.&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, những người mệnh thổ lại kh&ocirc;ng gi&agrave;u tr&iacute; tưởng tượng n&ecirc;n &iacute;t khi thấy được sự mạo hiểm v&agrave; t&aacute;o bạo của họ khi đứng trước một vấn đề cần đưa ra quyết định.</p>\r\n\r\n<h2>Mệnh thổ hợp m&agrave;u g&igrave; theo phong thủy ngũ h&agrave;nh</h2>\r\n\r\n<p>Theo ngũ h&agrave;nh, phong thủy mệnh Thổ sẽ hợp với c&aacute;c m&agrave;u như v&agrave;ng đất, m&agrave;u n&acirc;u đất cũng đồng thời l&agrave; m&agrave;u tương sinh của người mệnh Kim. Bạn cũng c&oacute; sẵn c&acirc;u trả lời cho c&acirc;u hỏi người mệnh Kim hợp m&agrave;u g&igrave;. Những người mệnh Thổ c&oacute; t&iacute;nh c&aacute;ch trầm lắng th&igrave; c&aacute;c gam m&agrave;u đỏ, t&iacute;m hay hồng sẽ gi&uacute;p tinh thần của họ sảng kho&aacute;i hơn, cảm gi&aacute;c tr&agrave;n đầy năng lượng từ đ&oacute; gặp nhiều điều may mắn hơn.</p>\r\n\r\n<p><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/cfd37fd8b6ac33889de0d1f138ddb82f.png\" /></p>\r\n\r\n<p>Mệnh thổ hướng về m&ocirc;i trường, c&acirc;y trồng, nu&ocirc;i dưỡng sự sinh s&ocirc;i v&agrave; ph&aacute;t triển của đất v&agrave; trong phong thủy lu&ocirc;n được chia l&agrave;m 4 nh&oacute;m m&agrave;u đối với từng bản mệnh.</p>\r\n\r\n<p>- M&agrave;u tương sinh: l&agrave; m&agrave;u hợp phong thủy d&agrave;nh cho mệnh thổ. M&agrave;u tương sinh l&agrave; m&agrave;u tốt nhất m&agrave; bạn n&ecirc;n ưu ti&ecirc;n lựa chọn cho mệnh thổ gi&uacute;p c&ocirc;ng danh sự nghiệp thăng tiến, ph&aacute;t triển, t&igrave;nh duy&ecirc;n của người mệnh thổ cũng thuận lợi v&agrave; tấn tới.</p>\r\n\r\n<p>- M&agrave;u tương hợp: Mệnh thổ hợp m&agrave;u n&agrave;o cũng l&agrave; điều cần ch&uacute; &yacute; đến bởi những m&agrave;u tương hợp n&agrave;y l&agrave; m&agrave;u tượng trưng của từng mệnh gi&uacute;p bạn c&oacute; được may mắn v&agrave; kiềm chế những t&iacute;nh c&aacute;ch chưa tốt đồng thời ph&aacute;t huy điểm mạnh.</p>\r\n\r\n<p>- M&agrave;u khắc chế: l&agrave; m&agrave;u m&agrave; người mệnh thổ hạn chế sử dụng</p>\r\n\r\n<p>- M&agrave;u bị khắc: người mệnh thổ kh&ocirc;ng n&ecirc;n d&ugrave;ng những m&agrave;u n&agrave;y</p>\r\n\r\n<h3>Mệnh thổ tương hợp m&agrave;u v&agrave;ng&nbsp;</h3>\r\n\r\n<p>M&agrave;u hợp với mệnh thổ l&agrave; m&agrave;u v&agrave;ng, m&agrave;u của sự thuần khiết v&agrave; trong s&aacute;ng cũng l&agrave; m&agrave;u của đất, đại diện cho sự ho&agrave;n thiện trong cuộc sống đồng thời đ&acirc;y cũng l&agrave; m&agrave;u thuộc top m&agrave;u tốt nhất gi&uacute;p mang đến cho chủ nh&acirc;n nhiều may mắn.</p>\r\n\r\n<p><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/24c6c072df1ed81c588c85af720dc483.png\" /></p>\r\n\r\n<h3>Mệnh thổ hợp m&agrave;u t&iacute;m&nbsp;</h3>\r\n\r\n<p>M&agrave;u t&iacute;m l&agrave; gam m&agrave;u hợp với mệnh thổ. T&iacute;nh chung thủy mang đến nhiều c&ocirc;ng dụng v&agrave; mang đậm t&iacute;nh ki&ecirc;n cường, một l&ograve;ng một dạ kh&ocirc;ng thay đổi, tượng trưng cho sự thịnh vượng, an khang v&agrave; t&iacute;nh ổn định. M&agrave;u mệnh thổ một khi đ&atilde; quyết định một việc g&igrave; đ&oacute; sẽ kh&ocirc;ng bao giờ thay đổi v&agrave; lu&ocirc;n giữ vững ch&iacute;nh kiến của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/01dec0dcb77f3650634417f41827ea08.png\" /></p>\r\n\r\n<h3>Mệnh thổ hợp m&agrave;u đỏ&nbsp;</h3>\r\n\r\n<p>M&agrave;u đỏ được liệt k&ecirc; trong danh s&aacute;ch nh&oacute;m m&agrave;u hợp với mệnh Thổ. Tất cả c&aacute;c gam m&agrave;u n&oacute;ng như m&agrave;u đỏ, m&agrave;u của lửa đều hợp với người mệnh thổ. Chọn c&aacute;c m&agrave;u sắc phong thủy như vậy gi&uacute;p người mệnh thổ gặp nhiều may mắn v&agrave; c&oacute; nhiều t&agrave;i lộc.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-co-cheo-xep-ly-ms-48m7297-34808\"><img alt=\"Màu đỏ hợp tương sinh với người mệnh thổ\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/315699f0dd00a065ce937f8ae2c8518d.png\" /></a></p>\r\n\r\n<h3>Mệnh thổ hợp m&agrave;u hồng - m&agrave;u tương sinh</h3>\r\n\r\n<p>Mọi c&ocirc; n&agrave;ng đều thắc mắc m&agrave;u hồng c&oacute; phải m&agrave;u tương sinh của người mệnh thổ hay kh&ocirc;ng? Trước đ&acirc;y khi nhắc đến m&agrave;u hồng chỉ nh&igrave;n thấy sự nhẹ nh&agrave;ng v&agrave; dịu d&agrave;ng th&igrave; đối với mệnh thổ ch&uacute;ng lại được xem l&agrave; gam m&agrave;u mang đến cảm gi&aacute;c mới lạ c&ugrave;ng sự quan t&acirc;m, hiểu biết v&agrave; t&igrave;nh y&ecirc;u m&atilde;nh liệt, đồng thời mang đến sự tươi mới h&agrave;i h&ograve;a với v&ugrave;ng đất kh&ocirc; cằn ch&iacute;nh l&agrave; mệnh thổ.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-lua-canh-tien-ms-48m7284-33898\"><img alt=\"Màu hồng là gam màu hợp với người mệnh thổ\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/ee1dcf28a5ff6bb7871f6e35190afeab.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-tay-bong-chu-a-ms-48t0130-32330\"><img alt=\"màu hồng đậm cũng rất hợp với những cô nàng mệnh thổ\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/d5410682d9e1198aef3af4917891c34f.png\" /></a></p>\r\n\r\n<h3>Mệnh thổ hợp m&agrave;u cam - sự may mắn</h3>\r\n\r\n<p>Mệnh thổ hợp m&agrave;u cam l&agrave; đặc điểm v&agrave; t&iacute;nh chất gần như với m&agrave;u đỏ, thể hiện &yacute; ch&iacute;, ki&ecirc;n quyết, v&agrave; t&iacute;nh s&aacute;ng tạo đồng thời l&agrave; nguồn năng lượng t&iacute;ch cực cho người h&agrave;nh thổ.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-maxi-eo-cut-out-ms-47t0206-34959\"><img alt=\"Váy cut out màu cam đỏ hợp mệnh thổ\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/c98ee2d53a1342c2f3b4ae9af42cfffa.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-lua-phoi-nut-buoc-ms-48m7487-33781\"><img alt=\"Màu cam phù hợp với những cô nàng mệnh thổ\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/2de5e60b48b250c51869c7a397fb0e34.png\" /></a></p>\r\n\r\n<h2>Mệnh thổ kỵ m&agrave;u g&igrave;?</h2>\r\n\r\n<p>Mệnh thổ kỵ v&agrave; khắc c&aacute;c gam m&agrave;u xanh dương v&agrave; m&agrave;u đen. Việc sử dụng c&aacute;c m&agrave;u kỵ n&agrave;y sẽ lấy sinh kh&iacute; người mệnh thổ thay v&igrave; mang đến may mắn bằng m&agrave;u sắc phong thủy. Đặc biệt trong c&ocirc;ng việc, sử dụng m&agrave;u kỵ sẽ l&agrave;m cản trở sự th&agrave;nh c&ocirc;ng v&agrave; sự thăng tiến sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/8a3785be7325b62dd4b29082407b8b7d.png\" /></p>\r\n\r\n<h3>M&agrave;u xanh dương</h3>\r\n\r\n<p>Để trả lời cho c&acirc;u hỏi mệnh thổ khắc m&agrave;u g&igrave; th&igrave; chắc chắn bạn phải kể ngay đến m&agrave;u xanh nước biển. Tr&aacute;i ngược với&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/menh-moc-hop-mau-gi-833\">mệnh mộc hợp m&agrave;u g&igrave;</a>, th&igrave; bạn c&oacute; thể trả lời l&agrave; m&agrave;u xanh dương nhưng đ&acirc;y cũng l&agrave; m&agrave;u đại diện cho m&agrave;u kỵ của người mệnh thổ. Nh&igrave;n chung c&oacute; sự tương khắc &iacute;t nhưng nếu sử dụng m&agrave;u n&agrave;y th&igrave; người mệnh thổ sẽ phần n&agrave;o bị hao tổn &iacute;t nhiều sự may mắn v&igrave; vậy m&agrave; ch&uacute;ng được cho l&agrave; gam m&agrave;u n&ecirc;n tr&aacute;nh.</p>\r\n\r\n<p><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/e3bac61d1830e891e965b626b35ef431.jpg\" /></p>\r\n\r\n<h3>Mệnh đen</h3>\r\n\r\n<p>M&agrave;u đen khắc với m&agrave;u của người mệnh thổ n&ecirc;n khi phối quần &aacute;o v&agrave; phong c&aacute;ch thời trang c&aacute;c n&agrave;ng cần lưu &yacute;. N&oacute; sẽ mang lại những điềm xấu, ngăn cản sự may mắn, tiền t&agrave;i v&agrave; c&ocirc;ng đ&aacute;nh đến với người mệnh thổ.</p>\r\n\r\n<h2>Người mệnh thổ phối đồ như thế n&agrave;o cho hợp mệnh?</h2>\r\n\r\n<h3>Mệnh thổ hợp m&agrave;u trắng</h3>\r\n\r\n<p>Khi được hỏi người mệnh thổ hợp m&agrave;u g&igrave; th&igrave; rất nhiều người thắc mắc về gam m&agrave;u trắng. Tuy kh&ocirc;ng được liệt k&ecirc; r&otilde; r&agrave;ng trong danh s&aacute;ch c&aacute;c gam m&agrave;u hợp mệnh thổ nhưng n&agrave;ng c&oacute; thể phối&nbsp;&nbsp;<a href=\"https://ivymoda.com/danh-muc/ao-so-mi-nu\">&aacute;o sơ mi nữ</a>&nbsp;c&ocirc;ng sở m&agrave;u trắng hoặc chọn đầm kết hợp phối sọc trắng để c&oacute; được set đồ với gam m&agrave;u hợp với mệnh thổ.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-lua-co-be-2-ve-ms-16m7400-34091\"><img alt=\"Áo sơ mi màu trắng thanh lịch dành cho cô nàng mệnh thổ\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/b33116b4b4ce5e3b2972fe72d069505f.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-chan-chun-co-vuong-ms-40b9271-34362\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/6d327ecb5410453388c28c569c6dbcf4.png\" /></a></p>\r\n\r\n<h3>Đầm đỏ phối ren hợp mệnh thổ</h3>\r\n\r\n<p>Người mệnh thổ c&oacute; ph&ugrave; hợp với đầm đỏ phối ren hay kh&ocirc;ng. C&acirc;u trả lời l&agrave; c&oacute;. &nbsp;Mẫu đầm su&ocirc;ng th&iacute;ch hợp cho mọi c&ocirc; n&agrave;ng mệnh thổ! D&ugrave; ở độ tuổi trung ni&ecirc;n hay trẻ trung cũng sẽ c&oacute; n&eacute;t nhấn nh&aacute; ri&ecirc;ng biệt.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-yem-lua-nhan-chun-ms-41b9195-33884\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/4ecd45428257dfb9f9a192a44a061ac4.png\" /></a></p>\r\n\r\n<p>Thiết kế n&agrave;y thoạt nh&igrave;n sẽ kh&ocirc;ng cảm thấy bắt mắt cho lắm, nhưng phải diện v&agrave;o rồi mới thấy hết được n&oacute; t&ocirc;n d&aacute;ng v&ograve;ng 2 v&agrave; v&ograve;ng 1 cực đỉnh. M&agrave;u đỏ c&ograve;n đại diện cho quyền lực sẽ khiến n&agrave;ng b&ugrave;ng nổ, quyết liệt hơn v&agrave; dễ th&agrave;nh c&ocirc;ng hơn.</p>\r\n\r\n<h3>Jumpsuit v&agrave;ng cho n&agrave;ng mệnh thổ</h3>\r\n\r\n<p>M&agrave;u hợp với mệnh thổ cần nhắc đến khi phối hợp&nbsp; c&ugrave;ng phong c&aacute;ch thời trang ch&iacute;nh l&agrave; sắc v&agrave;ng n&oacute;ng bỏng đặc biệt l&agrave; khi n&agrave;ng diện set jumpsuit đến c&ocirc;ng sở đảm bảo sẽ thay đổi &aacute;nh nh&igrave;n của mọi người về sự chắc ăn v&agrave; chậm chạp thường ng&agrave;y, thay v&agrave;o đ&oacute; l&agrave; một c&ocirc; n&agrave;ng c&ocirc;ng sở năng động v&agrave; tươi mới giữa ng&agrave;y h&egrave;.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/jumpsuit-vest-phoi-dai-ms-18m7464-33871\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/f8501984d2fcf9dd1ff1b680d3559841.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/jumpsuit-lua-suong-tron-ms-18m7268-34317\"><img alt=\"Người mệnh thổ rất hợp với gam màu cam nên lựa chọn jumpsuit màu cam rất đẹp\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/7503025f71b9b2cfe0a49555b7705ff9.png\" /></a></p>\r\n\r\n<h3>Đầm đỏ phối sọc trắng/họa tiết</h3>\r\n\r\n<p>Nữ mệnh thổ hợp m&agrave;u g&igrave; để giảm bớt sự lu mờ, nhạt nh&ograve;a thường ng&agrave;y? Đầm c&ocirc;ng sở cao cấp d&agrave;nh cho c&ocirc; n&agrave;ng mệnh thổ diện sẽ l&agrave; sự lựa chọn ho&agrave;n hảo t&ocirc;n l&ecirc;n n&eacute;t thần th&aacute;i khiến người ta qu&ecirc;n đi sự lu mờ thường ng&agrave;y của n&agrave;ng mệnh thổ. Thay v&agrave;o đ&oacute; l&agrave; những đường cắt sắc n&eacute;t c&ugrave;ng sự tinh xảo v&agrave; tăng th&ecirc;m niềm tin cho n&agrave;ng trong c&ocirc;ng việc, dễ thăng tiến v&agrave; ph&aacute;t triển.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-dinh-hoa-noi-ms-48m7506-34883\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/1ef2244537a827d6fd9f48a7485a0939.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-da-hoi-co-yem-ms-45s2714-34081\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/fa548e25f47561bd391fcf2de82acb59.png\" /></a></p>\r\n\r\n<p>Vậy mệnh thổ hợp m&agrave;u g&igrave; đ&atilde; được giải đ&aacute;p kỹ c&agrave;ng qua b&agrave;i viết tr&ecirc;n đ&acirc;y. Suy cho c&ugrave;ng, chọn m&agrave;u hợp mệnh thổ l&agrave; để ph&aacute;t triển c&ocirc;ng danh, sự nghiệp v&agrave; t&igrave;nh duy&ecirc;n thuận lợi. Đừng qu&ecirc;n IVY moda lu&ocirc;n cập nhật những phong c&aacute;ch thời trang theo đ&uacute;ng bản mệnh của c&ocirc; n&agrave;ng mệnh thổ, c&aacute;c n&agrave;ng h&atilde;y gh&eacute; Website/app<a href=\"https://ivymoda.com/\">&nbsp;IVY moda</a>&nbsp;để được trải nghiệm mua sắm th&uacute; vị mỗi ng&agrave;y nh&eacute;!</p>\r\n', 1, '1666345397_026436ba6aa2aca1f93b99c5ee2caf8e.jpg'),
(10, ' Mệnh Thủy hợp màu gì để không phạm ngũ hành tương sinh tương khắc', '<p>Mệnh Thủy hợp m&agrave;u g&igrave;? M&agrave;u g&igrave; mang lại may mắn cho người mệnh Thủy? B&agrave;i viết sau đ&acirc;y sẽ gi&uacute;p bạn hiểu th&ecirc;m về m&agrave;u sắc d&agrave;nh cho mệnh Thủy cũng như những m&agrave;u m&agrave; người mệnh Thủy cần tr&aacute;nh. B&ecirc;n cạnh đ&oacute; IVY moda sẽ gi&uacute;p bạn phối đồ hợp phong thủy đẹp nhất v&agrave; sở</p>\r\n', '<p>Mệnh Thủy hợp m&agrave;u g&igrave;? M&agrave;u g&igrave; mang lại may mắn cho người mệnh Thủy? B&agrave;i viết sau đ&acirc;y sẽ gi&uacute;p bạn hiểu th&ecirc;m về m&agrave;u sắc d&agrave;nh cho mệnh Thủy cũng như những m&agrave;u m&agrave; người mệnh Thủy cần tr&aacute;nh. B&ecirc;n cạnh đ&oacute; IVY moda sẽ gi&uacute;p bạn phối đồ hợp phong thủy đẹp nhất v&agrave; sở hữu được những bộ trang phục mang lại nhiều may mắn trong c&ocirc;ng việc v&agrave;&nbsp; &nbsp; cuộc sống.</p>\r\n\r\n<h1>Năm sinh v&agrave; t&iacute;nh c&aacute;ch đặc trưng của những người mệnh Thủy&nbsp;</h1>\r\n\r\n<h3>Năm sinh người mệnh Thủy</h3>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những năm sinh thuộc mệnh Thủy để bạn c&oacute; thể dễ d&agrave;ng theo d&otilde;i xem người th&acirc;n, bạn b&egrave; của m&igrave;nh c&oacute; phải người mệnh Thủy kh&ocirc;ng:</p>\r\n\r\n<ul>\r\n	<li>B&iacute;nh T&yacute;: 1936, 1996</li>\r\n	<li>Qu&yacute; Tỵ: 1953, 2013</li>\r\n	<li>Nh&acirc;m Tuất: 1982, 1922</li>\r\n	<li>Đinh Sửu: 1937, 1997</li>\r\n	<li>B&iacute;nh Ngọ: 1966, 2026</li>\r\n	<li>Qu&yacute; Hợi: 1983, 1923</li>\r\n	<li>Gi&aacute;p Th&acirc;n: 1944, 2004</li>\r\n	<li>Đinh M&ugrave;i: 1967, 2027</li>\r\n	<li>Ất Dậu: 1945, 2005</li>\r\n	<li>Gi&aacute;p Dần: 1974, 2034</li>\r\n	<li>Nh&acirc;m Th&igrave;n: 1952, 2012</li>\r\n	<li>Ất M&atilde;o: 1975, 2035</li>\r\n</ul>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-co-dap-ren-ms-16m7361-34001\"><img alt=\"Năm sinh người mệnh Thủy\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/99775ff7b2413e1d1b3604d8277c5e4e.png\" /></a></p>\r\n\r\n<h3>T&iacute;nh c&aacute;ch đặc trưng của mệnh Thủy</h3>\r\n\r\n<p>Người mệnh Thủy sở hữu c&aacute;c n&eacute;t t&iacute;nh c&aacute;ch đặc trưng như ch&acirc;n th&agrave;nh, dịu d&agrave;ng v&agrave; đặc biệt rất s&acirc;u sắc. L&agrave; người c&oacute; mục ti&ecirc;u trong cuộc sống, lu&ocirc;n nỗ lực biến ước mơ th&agrave;nh hiện thực. .</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; kỹ năng giao tiếp của những người mệnh Thủy được đ&aacute;nh gi&aacute; l&agrave; cực kỳ kh&eacute;o l&eacute;o, việc m&agrave; người mệnh Thủy giỏi nhất ch&iacute;nh l&agrave; thuyết phục. Ở người mệnh Thủy lu&ocirc;n c&oacute; sự tinh tế, s&acirc;u sắc v&agrave; kh&aacute; nhạy cảm, người kh&aacute;c phải thật sự tr&acirc;n qu&yacute; nếu như bản th&acirc;n họ c&oacute; được một người bạn mệnh Thủy.</p>\r\n\r\n<p>Nhận thấy r&otilde; nhất đ&oacute; l&agrave; sự th&ocirc;ng minh, gi&agrave;u t&igrave;nh cảm, kh&ocirc;ng &aacute;p đặt quyền lực để đ&agrave;n &aacute;p người kh&aacute;c. Lu&ocirc;n muốn chinh phục những thử th&aacute;ch trong cuộc sống bằng sự ki&ecirc;n tr&igrave;. Đ&ocirc;i khi người mệnh n&agrave;y như một d&ograve;ng suối m&aacute;t x&oacute;a hết mệt mỏi nhằm tạo n&ecirc;n một con người mới lạ, ch&iacute;nh v&igrave; vậy m&agrave; những người xung quanh mệnh Thủy c&agrave;ng ng&agrave;y c&agrave;ng tốt l&ecirc;n. Đồng thời m&agrave;u phong Thủy mệnh Thủy l&agrave; m&agrave;u xanh cũng sẽ thể hiện r&otilde; n&eacute;t được t&iacute;nh c&aacute;ch.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/quan-lua-xe-ta-ms-22b9325-33804\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/7d3bbadbe89436941e4a0a608b493902.png\" /></a></p>\r\n\r\n<h2>Mệnh Thủy n&ecirc;n lựa chọn m&agrave;u sắc n&agrave;o?</h2>\r\n\r\n<p>Dựa v&agrave;o mối quan hệ tương sinh, tương hợp của bảng m&agrave;u ngũ h&agrave;nh phong thủy th&igrave; mệnh Thủy sẽ ph&ugrave; hợp với m&agrave;u: trắng, m&agrave;u bạc hay m&agrave;u sắc &aacute;nh kim. Nh&oacute;m m&agrave;u tương hợp với mệnh Thủy l&agrave; m&agrave;u đen v&agrave; m&agrave;u xanh dương.</p>\r\n\r\n<h3>M&agrave;u sắc tương sinh</h3>\r\n\r\n<p>&Aacute;p dụng quy luật tương sinh sẽ tốt cho mệnh của bạn.&nbsp;</p>\r\n\r\n<h4>M&agrave;u trắng</h4>\r\n\r\n<p>M&agrave;u trắng l&agrave; m&agrave;u hợp nhất với người mệnh Thủy. N&oacute; tượng trưng cho sự tinh kh&ocirc;i, thanh khiết của nước, gi&uacute;p mệnh Thủy c&oacute; được những thuận lợi, may mắn trong c&ocirc;ng việc.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-co-duc-ms-17b9171-33073\"><img alt=\"Màu trắng\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/1f88cb0565f3514e50ce0456f141bf04.png\" /></a>Xem th&ecirc;m:&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/menh-kim-hop-mau-gi-831\">Người mệnh Kim hợp m&agrave;u g&igrave; v&agrave; kỵ m&agrave;u g&igrave;? M&agrave;u sắc hợp phong thủy với mệnh Kim</a></p>\r\n\r\n<h4>M&agrave;u bạc, &aacute;nh kim</h4>\r\n\r\n<p>Đ&acirc;y l&agrave; một loại m&agrave;u sắc thuộc mệnh tương sinh. C&oacute; những vật dụng trong gia đ&igrave;nh kh&ocirc;ng thể l&agrave;m từ m&agrave;u trắng th&igrave; được bạn c&oacute; thể lựa chọn thay thế bằng m&agrave;u bạc &aacute;nh kim lấp l&aacute;nh c&agrave;ng th&ecirc;m sang trọng cho người sở hữu.</p>\r\n\r\n<p><img alt=\"Màu bạc, ánh kim\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/5779082d5ee6c7d65f6201c6adeeae22.png\" /></p>\r\n\r\n<h3>M&agrave;u sắc tương hợp</h3>\r\n\r\n<p>Đ&acirc;y l&agrave; những m&agrave;u sắc đại diện cho người mệnh Thủy, theo phong Thủy n&oacute; vẫn c&oacute; t&aacute;c dụng hỗ trợ v&agrave; t&aacute;c động đến vận mệnh của người mệnh Thủy. C&oacute; hai m&agrave;u ph&ugrave; hợp với người mệnh Thủy được nhắc đến l&agrave; đen v&agrave; xanh dương.</p>\r\n\r\n<h4>M&agrave;u đen</h4>\r\n\r\n<p>M&agrave;u đen thể hiện cho sự huyền b&iacute;, mạnh mẽ, đầy bản lĩnh. Đ&acirc;y cũng ch&iacute;nh l&agrave; t&iacute;nh c&aacute;ch đặc trưng của những người mệnh Thủy. B&ecirc;n cạnh đ&oacute; m&agrave;u đen cũng c&oacute; t&iacute;nh ứng dụng rất cao từ trang phục cho đến đồ nội thất trong gia đ&igrave;nh</p>\r\n\r\n<p><img alt=\"Màu đen tương khắc mệnh thủy\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/af1cb1db88cb6fc2023bfa00ef815032.png\" /></p>\r\n\r\n<h4>M&agrave;u xanh dương</h4>\r\n\r\n<p>Nước xanh nước biển thuộc bảng m&agrave;u sắc hợp mệnh Thủy. N&oacute; sẽ gi&uacute;p giải quyết những kh&oacute; khăn, cản trở đối với người mệnh Thủy.</p>\r\n\r\n<p><img alt=\"Màu xanh dương\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/83986afa0936f6d0b1adb9325ffa2e93.png\" /></p>\r\n\r\n<h2>Mệnh Thủy kh&ocirc;ng hợp với m&agrave;u g&igrave;?</h2>\r\n\r\n<p>Mệnh Thủy lu&ocirc;n bị khắc chế bởi m&agrave;u xanh l&aacute; v&agrave; những m&agrave;u đại diện cho mệnh Hỏa như m&agrave;u đỏ, m&agrave;u t&iacute;m v&agrave; m&agrave;u cam. Cần tr&aacute;nh c&aacute;c m&agrave;u bị khắc bao tương tự như m&agrave;u v&agrave;ng, m&agrave;u n&acirc;u đất, n&acirc;u nhạt. Người mệnh Thủy khi sử dụng c&aacute;c m&agrave;u sắc n&agrave;y lu&ocirc;n cảm gi&aacute;c bị hối th&uacute;c, thiếu sinh lực v&agrave; gặp những điều kh&ocirc;ng may mắn.</p>\r\n\r\n<h3>M&agrave;u chế khắc người mệnh Thủy</h3>\r\n\r\n<p>Theo quy luật trong ngũ h&agrave;nh l&agrave; Thủy sinh c&acirc;y cối (nguồn nước gi&uacute;p c&acirc;y cối ph&aacute;t triển) nhưng sau đ&oacute; Thủy sẽ bị suy yếu dần, v&igrave; thế m&agrave;u xanh l&aacute; của c&acirc;y cối vẫn n&ecirc;n bị hạn chế nếu bạn kh&ocirc;ng muốn năng lượng của m&igrave;nh bị giảm bớt.&nbsp;</p>\r\n\r\n<p>Mệnh hỏa cũng kh&ocirc;ng ngoại lệ, nước v&agrave; lửa chưa bao giờ hợp với nhau do đ&oacute; m&agrave; những m&agrave;u đại diện cho lửa cũng l&agrave; những m&agrave;u khắc mệnh Thủy.</p>\r\n\r\n<p><img alt=\"Màu chế khắc người mệnh Thủy\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/0f50df906e06f32ee5b3399995e1654f.png\" /></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/menh-hoa-hop-mau-gi-825\">Mệnh Hỏa hợp m&agrave;u g&igrave;? Bật m&iacute; trang phục ph&ugrave; hợp với người mệnh Hỏa</a></p>\r\n\r\n<h3>M&agrave;u bị khắc với người mệnh Thủy</h3>\r\n\r\n<p>Mệnh Thủy khắc m&agrave;u g&igrave; trong mệnh ngũ h&agrave;nh. Đất cản trở nước n&ecirc;n m&agrave;u sắc của đất bị xem l&agrave; khắc với người mệnh Thủy cực kỳ nhiều. C&aacute;c m&agrave;u như v&agrave;ng, n&acirc;u đất, n&acirc;u nhạt n&ecirc;n cho v&agrave;o danh s&aacute;ch loại trừ trong&nbsp;phong&nbsp;Thủy của người mệnh Thủy.</p>\r\n\r\n<p>Khi lựa chọn m&agrave;u c&aacute;c đồ vật trong nh&agrave; cũng cần phải tu&acirc;n theo phong Thủy, ch&uacute;ng kh&ocirc;ng bắt buộc nhưng thật sự cần thiết nếu muốn gặp nhiều may mắn trong c&ocirc;ng việc lẫn cuộc sống th&igrave; h&atilde;y ch&uacute; &yacute; trong c&aacute;ch chọn lựa m&agrave;u sắc.</p>\r\n\r\n<p><img alt=\"Màu bị khắc với người mệnh Thủy\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/0eabbd8d5ec55db3289c6ebb2f3ab56e.png\" /></p>\r\n\r\n<h2>C&aacute;ch chọn đồ hợp nữ hợp mệnh Thủy</h2>\r\n\r\n<h3>Đầm xanh dương trẻ trung cho n&agrave;ng c&ocirc;ng sở</h3>\r\n\r\n<p>M&agrave;u xanh dương l&agrave; m&agrave;u sắc kh&ocirc;ng thể thiếu trong bảng m&agrave;u may mắn d&agrave;nh cho người mệnh Thủy. M&agrave;u sắc n&agrave;y vừa thể hiện phong c&aacute;ch sang trọng, nhẹ nh&agrave;ng vừa c&oacute; thể gi&uacute;p bạn mang lại may mắn trong c&ocirc;ng việc. V&agrave;o những ng&agrave;y h&egrave; oi ả, kh&oacute; chịu chiếc đầm m&agrave;u xanh m&aacute;t mắt sẽ xoa dịu đi c&aacute;i oi bức v&agrave; mang đến sự tươi m&aacute;t cho bạn.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/dam-xoe-ha-eo-co-tron-ms-48m7546-34430\"><img alt=\"Đầm xanh dương trẻ trung cho nàng công sở\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/c43e4012376a752d43f23286027d43ca.png\" /></a></p>\r\n\r\n<h3>V&aacute;y đầm đen sang trọng cho những bữa tiệc</h3>\r\n\r\n<p>Một chiếc đầm sơ mi đen kết hợp c&ugrave;ng quần &acirc;u/ch&acirc;n v&aacute;y nh&atilde; nhặn hay những chiếc v&aacute;y quyến rũ thật thu h&uacute;t d&agrave;nh cho ph&aacute;i đẹp đang l&agrave;m mưa gi&oacute; tại c&aacute;c cửa h&agrave;ng của IVY moda. Đặc biệt trong những ng&agrave;y h&egrave; nắng n&oacute;ng bạn c&oacute; thể lựa chọn những thiết kế c&oacute; chất vải m&aacute;t như vải lụa, lanh, cotton,...&nbsp;</p>\r\n\r\n<p><img alt=\"Váy đầm đen sang trọng cho những bữa tiệc\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/2e92a1268382a5fd679c36af1da8dd9e.png\" /></p>\r\n\r\n<h3>M&agrave;u trắng tinh kh&ocirc;i</h3>\r\n\r\n<p>M&agrave;u trắng l&agrave; m&agrave;u sắc thời thượng, kh&ocirc;ng bao giờ l&agrave; lỗi thời v&agrave; l&uacute;c n&agrave;o cũng chứng tỏ được sự h&uacute;t của n&oacute;. Bạn c&oacute; thể phối &aacute;o trắng c&ugrave;ng với ch&acirc;n v&aacute;y hoặc lựa chọn những chiếc v&aacute;y liền th&acirc;n m&agrave;u trắng t&ugrave;y theo sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n\r\n<p><img alt=\"Màu trắng tinh khôi\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/d7f4cf26cd7be930f9b4310e0ad2ac1f.png\" /></p>\r\n\r\n<h3>&Aacute;o xanh biển m&aacute;t mắt</h3>\r\n\r\n<p>Kết hợp&nbsp;<a href=\"https://ivymoda.com/danh-muc/ao-so-mi-nu\">&aacute;o sơ mi nữ</a>&nbsp;xanh biển c&ugrave;ng với ch&acirc;n v&aacute;y, hoặc quần m&agrave;u đen/m&agrave;u trắng l&agrave; m&agrave;u hợp với mệnh Thủy để tăng th&ecirc;m may mắn. Bạn c&oacute; thể lựa chọn những chiếc &aacute;o ph&ocirc;ng đơn giản hoặc &aacute;o sơ mi c&aacute;ch điệu cho những ng&agrave;y đi l&agrave;m.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/quan-cai-dai-lech-ms-22m7293-33167\"><img alt=\"Áo xanh biển mát mắt phù hợp cho người mệnh Thủy\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/043f3cfbc7928af5ec9920099966daaa.png\" /></a></p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/iris-set-ao-yem-va-quan-suong-dap-noi-ms-16b9265-33217\"><img alt=\"image\" src=\"https://pubcdn.ivymoda.com/files/news/2022/06/25/adb22f6dddec85bc7a49bf05f2aee0fe.png\" /></a></p>\r\n\r\n<p>B&agrave;i viết tr&ecirc;n đ&atilde; trả lời cho c&acirc;u hỏi mệnh Thủy hợp m&agrave;u g&igrave;? Đồng thời gợi &yacute; cho bạn những c&aacute;ch phối đồ ph&ugrave; hợp với người mệnh Thủy để mang đến nhiều may mắn nhất. Đừng qu&ecirc;n gh&eacute; qua website/app&nbsp;<a href=\"https://ivymoda.com/\">IVY moda</a>&nbsp;để lựa chọn cho m&igrave;nh những chiếc đầm, &aacute;o sơ mi hay quần t&acirc;y ph&ugrave; hợp nhất với phong c&aacute;ch của bạn.</p>\r\n', 1, '1666345389_38d1784abb5c01ad01666abd6dcd8d3c.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(45, 23, 47, 1, 1190000),
(46, 24, 47, 1, 1190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
(23, 7, '2022-11-03', 1190000, 1),
(24, 7, '2022-11-03', 1190000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(3, 'Áo Thun Trễ Vai', '', '', 1, '1666344916_ff9c50736ca51e7dd26d1c60debef59a.jpg', 1190000, 20, 2),
(4, 'Áo Thun In Hình', '', '', 1, '1666344908_857a5c6fc9aed91a38c64ab08bdddd2e.jpg', 1190000, 30, 2),
(5, 'Áo Thun In Hình', '', '', 1, '1666344899_27e2e386699739b8502fc29433954833.jpg', 790000, 40, 2),
(6, 'Áo Thun In Họa Tiết', '', '', 1, '1666344892_857a5c6fc9aed91a38c64ab08bdddd2e.jpg', 1590000, 50, 2),
(8, 'Áo Thun In Họa Tiết', '', '', 1, '1666344874_9c391c0f016b6a162d3c94b429e1519e.jpg', 1090000, 20, 2),
(9, 'Áo Thun Trễ Vai', '', '', 1, '1666344864_0d7610a27ecd1701d834c6bc70c245e1.jpg', 2790000, 60, 2),
(10, 'Set Áo Lụa Và Chân Váy Kèm Đai', '', '', 1, '1666344855_72dec2f17fc70be796de8dd9192c36db.jpg', 3450000, 40, 18),
(11, 'Áo Thun Trễ Vai', '', '', 1, '1666344845_987f47337da192cff3ecab58e7f1a87c.jpg', 3450000, 20, 2),
(12, 'Đầm Xòe Khoét Ngực', '', '', 1, '1666344838_681543c14ab7620fc50a17345477f41b.jpg', 3450000, 20, 18),
(13, 'Set Áo Lụa Và Chân Váy Kèm Đai', '', '', 1, '1666344830_4cd53b6f15443602dafeed9dd7565e52.jpg', 3450000, 20, 18),
(14, 'Đầm Thun Nhúm Vai', '', '', 1, '1666344821_fd1ee022b812a73fbb7a08e582056afc.jpg', 2090000, 20, 18),
(15, 'Áo Khoác Tweed Croptop Cổ 2 Ve', '', '', 1, '1666344812_857a5c6fc9aed91a38c64ab08bdddd2e (1).jpg', 590000, 20, 5),
(16, 'Đầm Tweed Ôm Đính Hoa', '', '', 1, '1666344805_ed8ee4109b86f8da01bcbd7fe3543521.jpg', 1190000, 50, 18),
(17, 'Áo Thun In Hình', '', '', 1, '1666344793_32d3fde5802706c23ceadc2380254aeb.jpg', 1190000, 50, 2),
(18, 'Áo Thun In Họa Tiết', '', '', 1, '1666344778_4df86167f40e92efa096a94fa46c60db.jpg', 1190000, 50, 2),
(19, 'Áo Thun Trễ Vai', '', '', 1, '1666344765_c00dda95ea1ee1107cfd1408d2ea40f3.jpg', 1190000, 50, 2),
(20, 'Áo Thun In Họa Tiết', '', '', 1, '1666344757_66ec2565f4f8fa48a5e61de55734f3af.jpg', 1190000, 50, 2),
(31, 'ĐẦM TWEED SÁT NÁCH', '', '', 1, '1667185757_f5846a4d7db99cb38837fee39b0accb4.jpg', 1190000, 0, 18),
(32, 'ĐẦM TWEED SÁT NÁCH', '', '', 1, '1667185802_a6773ad1541a610db24f91ea3de70bc9.jpg', 1190000, 0, 18),
(33, 'CAILY DRESS - ĐẦM THUN CUT OUT', '', '', 0, '1667185825_22285f9a6efdbee6c91a283de9003cb7.jpeg', 1190000, 0, 18),
(34, 'FIONA DRESS - ĐẦM TAPTA DẬP NỔI TAY LỠ', '', '', 0, '1667186039_28000dce066bc199cd27441263269e67.jpeg', 1190000, 0, 18),
(35, 'ĐẦM SƠ MI NHÚN THÂN', '', '', 0, '1667186068_24424c8a0372046e9d2aa5830d9e4ca7.jpg', 1190000, 0, 18),
(36, 'ĐẦM SƠ MI NHÚN THÂN', '', '', 0, '1667186090_cf83c3133809c4b2ec5db187438cc9c6.jpg', 1190000, 0, 18),
(37, 'ĐẦM SƠ MI NHUNG CUT-OUT', '', '', 0, '1667186111_0ad3a2c98230b2fe93242868b3f02723.jpg', 1190000, 0, 18),
(38, 'ĐẦM SƠ MI NHUNG CUT-OUT', '', '', 0, '1667186131_95a501c64c68198f8e925411716a3964.jpg', 1190000, 0, 18),
(39, 'DARIA DRESS - ĐẦM TWEED PHỐI NƠ', '', '', 0, '1667186154_d24f2b95d68531d894aa163daff5e857.jpg', 1190000, 0, 18),
(40, 'CIARA DRESS - ĐẦM ORGANZA DÁNG XÒE', '', '', 0, '1667186190_058534d1b311d831a5e898c9581fce07.jpeg', 1190000, 0, 18),
(41, 'ĐẦM VEST XẾP LY TÀ LỆCH 1 BÊN', '', '', 0, '1667186208_12f67f7288124c1cfe499d05de6ff7f7.jpg', 1190000, 0, 18),
(42, 'SARAH DRESS - ĐẦM DỰ TIỆC ĐÍNH HOA', '', '', 0, '1667186226_eddbddc839bdc98325b6f77279ae609c.jpg', 1190000, 0, 18),
(43, 'SARAH DRESS - ĐẦM DỰ TIỆC ĐÍNH HOA', '', '', 0, '1667186252_29afc445b0ef646e5e18cf06a3e121e6.jpg', 1190000, 0, 18),
(44, 'SARAH DRESS - ĐẦM DỰ TIỆC ĐÍNH HOA', '', '', 0, '1667186296_211e504c6a3d3d4bc02569975e24e840.jpg', 1190000, 0, 18),
(45, 'LILY DRESS - ĐẦM XÒE TAY LỠ ĐÍNH HOA', '', '', 0, '1667186315_03e83457f85d8d0364c68df9f5db6d58.jpg', 1190000, 0, 18),
(46, 'ĐẦM PEPLUM DẬP LY', '', '', 0, '1667186335_0313d055597ea4cf823989a7b5010354.jpg', 1190000, 0, 18),
(47, 'ÁO TWEED JACKET PHỐI KHUY NGỌC TRAI', '', '', 1, '1667186745_e2e554941f4f18ce0e134b0272764dc3.jpg', 1190000, 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(45, 20, 5),
(46, 20, 4),
(47, 20, 4),
(48, 20, 5),
(49, 20, 5),
(50, 19, 5),
(51, 18, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'Nguyen Van C', 'nvc@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyen Van D', 'nvd@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'Nguyen Van E', 'nve@gmail.com', '202cb962ac59075b964b07152d234b70'),
(9, 'Nguyen Van B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
