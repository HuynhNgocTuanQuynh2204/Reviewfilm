-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 15, 2024 lúc 11:43 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `reviewphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id_baiviet` int NOT NULL,
  `tenbaiviet` text NOT NULL,
  `noidung` longtext NOT NULL,
  `hinhanh` longtext NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_users` int NOT NULL,
  `id_danhmuc` int NOT NULL,
  `trailer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id_baiviet`, `tenbaiviet`, `noidung`, `hinhanh`, `thoigian`, `id_users`, `id_danhmuc`, `trailer`) VALUES
(15, 'Ma Da\r\n      ', '', '1731508991_ma-da-viet-huong.jpg', '2024-11-13 21:43:11', 1, 4, 'https://www.youtube.com/watch?v=vC-KNlLNIso&t=1s'),
(16, 'Gặp lại chị bầu lại chị bầu      ', '<h2><strong>Review phim Gặp Lại Chị Bầu: Liệu có thoát khỏi cái bóng quá lớn của Cua Lại Vợ Bầu?</strong></h2><p><a href=\"https://mobilecity.vn/profile/132\"><i>Nguyễn Thị Kim Ngân</i></a><i> - 12:02 17/02/2024</i></p><p><a href=\"https://mobilecity.vn/tin-tuc-giai-tri\">Giải trí</a></p><p><i>0</i></p><p><i>8740</i></p><p>Cùng <strong>review phim Gặp Lại Chị Bầu</strong>, một tác phẩm điện ảnh hứa hẹn sẽ tạo cơn sốt phòng vé trong dịp Tết Giáp Thìn 2024. Bộ phim đánh dấu sự trở lại của đạo diễn Nhất Trung sau tiếng vang lớn của bộ phim Cua Lại Vợ Bầu.</p><p>Quay lại đường đua mùa Tết với thể loại hài hước, tình cảm hút khách cùng dàn diễn viên đình đám và \"cặp đôi vàng\" của làng V-Biz, liệu dự án mới này có giúp&nbsp;Nhất Trung thoát khỏi cái bóng của 4 năm trước? Không để các bạn chờ lâu hơn nữa, ngay bây giờ chúng tôi sẽ <a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html\">review phim Gặp Lại Chị Bầu</a>, hãy cùng đón xem nhé!</p><p><strong>Mục lục</strong></p><ul><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqa8hni0\">Thông tin phim</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqa8lsk1\">Dàn diễn viên trong phim Gặp Lại Chị Bầu</a><ul><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf4lv2\">Anh Tú vai Phúc</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf4lv3\">Diệu Nhi vai Ngọc Huyền</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf4lv4\">Ngọc Phước vai Ngọc</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf4lv5\">Quốc Khánh vai Tuấn</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf4lv6\">Lê Giang vai bà Lê</a></li></ul></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf8bp7\">Nội dung phim Gặp Lại Chị Bầu</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaf8bp8\">Review phim Gặp Lại Chị Bầu</a><ul><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqeltcld\">Cốt truyện độc đáo, bất ngờ</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqemh4de\">Kịch bản gây nhiều tranh cãi</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqdi84tc\">Diễn xuất vừa vặn</a></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqf83lnf\">Kỹ thuật quay dựng, âm thanh chưa ấn tượng</a></li></ul></li><li><a href=\"https://mobilecity.vn/tin-tuc/review-phim-gap-lai-chi-bau.html#mcetoc_1hmqaffs19\">Tổng kết</a></li></ul><h2>Thông tin phim</h2><p>Gặp Lại Chị Bầu mang đến không khí retro đặc trưng của Sài Gòn những năm 90, gợi lên trong khán giả những cảm xúc nhung nhớ và bồi hồi trong những ngày đầu năm mới... Trước tiên, hãy cùng chúng tôi tìm hiểu một số thông tin chính về bộ phim này nhé.</p><ul><li><strong>Quốc gia:</strong> Việt Nam</li><li><strong>Thể loại:</strong> Hài hước, tình cảm, gia đình</li><li><strong>Đạo diễn:</strong>&nbsp;Nhất Trung</li><li><strong>Diễn viên:</strong> Diệu Nhi, Anh Tú, Lê Giang, Quốc Khánh, Ngọc Phước,...</li><li><strong>Thời lượng:&nbsp;</strong>114 phút</li><li><strong>Ngày công chiếu:</strong> 10/02/2024</li></ul><h2>Dàn diễn viên trong phim Gặp Lại Chị Bầu</h2><p>Gặp Lại Chị Bầu quy tụ những gương mặt nổi tiếng, quen thuộc, chuyên tạo ra tiếng cười, giải trí như Ngọc Phước, Lê Giang, Quốc Khánh, Kiều Minh Tuấn... Ngoài ra, phim còn đánh dấu sự kết hợp lần đầu tiên của cặp đôi Diệu Nhi - Anh Tú trên màn ảnh rộng. Đây là cơ hội để cả hai chứng tỏ khả năng diễn xuất của mình.</p><h3>Anh Tú vai Phúc</h3><p>Hóa thân vào vai một diễn viên nghiệp dư yêu nghề, phải trải qua nhiều biến cố trong cuộc sống, Anh Tú đã mang đến một sự hấp dẫn mới trong vai diễn của mình ở bộ phim Gặp Lại Chị Bầu. Nam diễn viên đã chứng tỏ sự tiến bộ của mình bằng việc thể hiện tròn trịa các cảnh có yếu tố nội tâm, gợi lại niềm tin và sự đồng cảm từ khán giả đối với hoàn cảnh của nhân vật Phúc.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-anh-tu.jpg.webp\" alt=\"Anh Tú vai Phúc\" width=\"600\" height=\"450\"></figure><p><i>Anh Tú vai Phúc</i></p><h3>Diệu Nhi vai Ngọc Huyền</h3><p>Với vai nữ chính Ngọc Huyền, Diệu Nhi&nbsp;đã gây bất ngờ khi lột xác hoàn toàn&nbsp;với&nbsp;phong cách dịu dàng, thanh thuần, khác hẳn so với những lần xuất hiện vui nhộn, hình ảnh hài hước và tràn đầy năng lượng quen thuộc. Đây cũng là lần đầu tiên cô đóng cùng ông xã Anh Tú trên màn ảnh lớn.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-dieu-nhi.jpg.webp\" alt=\"Diệu Nhi vai Ngọc Huyền\" width=\"600\" height=\"450\"></figure><p><i>Diệu Nhi vai Ngọc Huyền</i></p><h3>Ngọc Phước vai Ngọc</h3><p>Cái tên tiếp theo của Gặp Lại Chị Bầu là Ngọc Phước, người đã giành ngôi vị quán quân trong chương trình ăn khách Cười Xuyên Việt. Trong phim, Ngọc Phước đảm nhận vai diễn của nhân vật Ngọc, bạn thân của Huyền và đặc biệt quan tâm đến Phúc. Đáng chú ý, trong nhiều phân đoạn cao trào, cô đã biểu đạt cảm xúc xuất sắc, thúc đấy bạn diễn thăng hoa hơn.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-ngoc-phuoc.jpg.webp\" alt=\"Ngọc Phước vai Ngọc\" width=\"600\" height=\"450\"></figure><p><i>Ngọc Phước vai Ngọc</i></p><h3>Quốc Khánh vai Tuấn</h3><p>Trong phim Gặp Lại Chị Bầu, khán giả còn có cơ hội gặp lại nam diễn viên được đánh giá cao trong thời gian gần đây là Quốc Khánh. Anh đảm nhận vai Tuấn, một thành viên trong hội bạn thân bao gồm Huyền, Ngọc và Phúc. Với vai diễn này, Quốc Khánh đã chứng tỏ được sự phát triển rõ rệt của mình sau nhiều năm hoạt động trong lĩnh vực nghệ thuật.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-quoc-khanh.jpg.webp\" alt=\"Quốc Khánh vai Tuấn\" width=\"600\" height=\"450\"></figure><p><i>Quốc Khánh vai Tuấn</i></p><h3>Lê Giang vai bà Lê</h3><p>Cái tên gây bất ngờ cuối cùng trong bộ phim là nghệ sĩ Lê Giang, một gương mặt quá quen thuộc trong các bộ phim điện ảnh Tết tại rạp phim Việt trong vài năm qua. Lần này, Lê Giang tiếp tục đảm nhận vai trò của người mẹ, nhưng không còn là nhân vật khó tính và khó chiều như trước. Nữ danh hài đã tạo ấn tượng khi tạo ra những khoảnh khắc đắt giá,&nbsp;thể hiện khả năng nhập vai một cách xuất sắc.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-le-giang.jpg.webp\" alt=\"Lê Giang vai bà Lê\" width=\"600\" height=\"450\"></figure><p><i>Lê Giang vai bà Lê</i></p><p>Bên cạnh đó, bộ phim còn có sự xuất hiện đặc biệt của nhiều ngôi sao nổi tiếng như NSƯT Công Ninh, NSƯT Hữu Châu, nghệ sĩ Trung Dân, và ca sĩ Đan Trường, tạo nên một dàn cameo đình đám.</p><h2>Nội dung phim Gặp Lại Chị Bầu</h2><p>Phim kể về Phúc, một chàng trai từ nhỏ đã mồ côi cha mẹ và phải trải qua cuộc sống mưu sinh khó khăn. Trong một lần thiếu nợ, anh bị nhóm cho vay truy đuổi và vô tình rơi xuống sông. Mặc dù anh may mắn sống sót, nhưng không ngờ Phúc lại xuyên không về quá khứ năm 1997.</p><p>Tại đây, anh gặp gỡ những người bạn mới như Huyền, Ngọc, Tuấn... Một anh thanh niên trẻ thế hệ Gen Z bị lạc trong thập kỷ 90, tạo ra nhiều tình huống hài hước, dở khóc dở cười. Không thể chỉ sống phụ thuộc, bất động, Phúc phải làm việc và đối mặt với những điều kỳ quái và xa lạ mà trước đây anh chưa từng biết tới.</p><p>Từ một cuộc phiêu lưu bất đắc dĩ, Phúc dần nhận ra những điều tích cực nhỏ bé mà anh đã bỏ quên suốt thời gian dài. Và rồi tâm hồn nhạy cảm của một đứa trẻ đã từng bị tổn thương bắt đầu được chữa lành.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-noi-dung.jpg.webp\" alt=\"Nội dung phim Gặp Lại Chị Bầu\" width=\"600\" height=\"450\"></figure><p><i>Nội dung phim Gặp Lại Chị Bầu</i></p><h2>Review phim Gặp Lại Chị Bầu</h2><p>Gặp Lại Chị Bầu là một tác phẩm điện ảnh đa sắc màu với yếu tố hài hước, xuyên không, mang đến cho khán giả nhiều cung bậc cảm xúc, từ niềm vui sảng khoái đến sự lắng đọng. Chúng ta hãy cùng xem review chi tiết về bộ phim mới này nhé.</p><h3>Cốt truyện độc đáo, bất ngờ</h3><p>Bộ phim được xây dựng với cốt truyện độc đáo và rất khó đoán. Nhân vật chính là Phúc, một chàng trai trẻ đang trốn nợ, và vô tình xuyên không trở về năm 1997. Câu chuyện bắt đầu từ đây, Phúc phải đối mặt với những thách thức và những sự thay đổi kỳ lạ trong môi trường quay phim thời xưa.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-cot-truyen.jpg.webp\" alt=\"Cốt truyện độc đáo, bí ẩn\" width=\"600\" height=\"450\"></figure><p><i>Cốt truyện độc đáo, bí ẩn</i></p><h3>Kịch bản gây nhiều tranh cãi</h3><p>Mặc dù cốt truyện độc đáo và hấp dẫn, nhưng kịch bản Gặp Lại Chị Bầu lại có nhiều vấn đề gây tranh cãi. Việc lựa chọn thể loại xuyên không đòi hỏi bộ phim cần có một lời giải thích hợp lý và thuyết phục để giải thích các diễn biến mà nhân vật trải qua. Tuy nhiên, Gặp Lại Chị Bầu không thực hiện điều này đúng mức.</p><p>Tác phẩm có kết thúc vội vàng cùng với những tình tiết \"lạc quẻ\" và cường điệu so với cốt truyện trước đó. Bố cục của bộ phim khá rời rạc, với các phân đoạn được cắt chuyển mà thiếu sự kết nối với nhau. Hơn nữa, một số cảnh không cần thiết lại được kéo dài một cách khó hiểu.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-kich-ban.jpg.webp\" alt=\"Kịch bản phim có nhiều vấn đề gây tranh cãi\" width=\"600\" height=\"450\"></figure><p><i>Kịch bản phim có nhiều vấn đề gây tranh cãi</i></p><h3>Diễn xuất vừa vặn</h3><p>Diệu Nhi và Anh Tú đã có sự tiến bộ đáng kể trong diễn xuất trong tác phẩm này. Cả hai đã mang đến sự mới mẻ trong cách diễn khi không chỉ tập trung vào yếu tố hài hước như thường thấy mà còn dồn cảm xúc vào nhân vật. Anh Tú đã diễn xuất với chiều sâu hơn, trong khi Diệu Nhi đã thể hiện sự điềm tĩnh và dịu dàng trong lối diễn của mình.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-anh-tu-dieu-nhi.jpg.webp\" alt=\"Diệu Nhi và Anh Tú đã có sự tiến bộ đáng kể trong diễn xuất\" width=\"600\" height=\"450\"></figure><p><i>Diệu Nhi và Anh Tú đã có sự tiến bộ đáng kể trong diễn xuất</i></p><p>Các diễn viên khác như Lê Giang, Quốc Khánh, Ngọc Phước và cả cameo của Kiều Minh Tuấn đều đã thể hiện vai trò của họ một cách toàn diện. Mặc dù không có quá nhiều bước phá, nhưng các diễn viên trong Gặp Lại Vợ Bầu đều đã thể hiện tinh thần của từng nhân vật một cách xuất sắc.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-cameo.jpg.webp\" alt=\"Kiều Minh Tuấn hóa cameo gây cười cho bộ phim\" width=\"600\" height=\"450\"></figure><p><i>Kiều Minh Tuấn hóa cameo gây cười cho bộ phim</i></p><h3>Kỹ thuật quay dựng, âm thanh chưa ấn tượng</h3><p>Phần kỹ thuật của Gặp Lại Chị Bầu cũng khiến cho người xem có cảm giác như một bộ phim truyền hình bởi việc quay và dựng không được tốt. Điều này không chỉ khiến bộ phim thiếu chỉnh chu, thiếu hiện đại, mà còn làm tăng thêm sự chậm rãi trong nhịp độ của phim.</p><p>Bên cạnh đó, tại một số đoạn có vẻ như bị cắt vội, nếu không tập trung, người xem sẽ không thể hiểu được những sự kiện đang diễn ra. Tuy nhiên, cũng có những lúc mạch phim trôi vào những tình tiết không liên quan, tạo nên một cảm giác hụt hẫng đáng tiếc.</p><figure class=\"image\"><img style=\"aspect-ratio:600/450;\" src=\"https://cdn.mobilecity.vn/mobilecity-vn/images/2024/02/review-phim-gap-lai-chi-bau-mach-phim.jpg.webp\" alt=\"Gặp Lại Chị Bầu có mạch phim chưa mượt mà\" width=\"600\" height=\"450\"></figure><p><i>Gặp Lại Chị Bầu có mạch phim chưa mượt mà</i></p><p>Âm nhạc không tạo nên dấu ấn riêng vì không có sự đột phá, chỉ đơn giản dừng lại ở những giai điệu đơn giản và dễ quên. Một số phân cảnh lạm dụng chiêu trò gây cười quá mức, khiến cho sự duyên dáng trở nên lố bịch và không tự nhiên.</p><h2>Tổng kết</h2><p>Nhìn chung, Gặp Lại Chị Bầu mang đến một bài học về tình yêu, tình bạn và đặc biệt là tình cảm gia đình, rất phù hợp cho dịp xuân đầu năm mới. Tuy nhiên, Gặp Lại Chị Bầu sẽ khó có thể trở thành một bước ngoặt ấn tượng cho đạo diễn&nbsp;Nhất Trung.</p><p>Trên đây là toàn bộ phần review phim Gặp Lại Chị Bầu. Chúc các bạn xem phim vui vẻ!</p>', '1731509088_gap-lai-chi-bau.jpg', '2024-11-13 21:44:48', 1, 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `msg` longtext NOT NULL,
  `id_review` int NOT NULL,
  `commented_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `reply_msg` longtext NOT NULL,
  `commented_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int NOT NULL,
  `tendanhmuc` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendanhmuc`) VALUES
(3, 'Hài hước'),
(4, 'Kinh dị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id_review` int NOT NULL,
  `tenbaiviet` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `hinhanh` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_users` int NOT NULL,
  `tinhtrang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`id_review`, `tenbaiviet`, `hinhanh`, `thoigian`, `id_users`, `tinhtrang`) VALUES
(2, 'Alo báo mới\r\n      ', '1731596680_Background-anime-hoc-online-800x450.jpg', '2024-11-14 22:19:48', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `hovaten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `hovaten`, `email`, `password`, `created_at`, `level`) VALUES
(1, 'Admin', 'admin@gmail.com', '123', '2024-11-13 13:27:02', 0),
(5, 'Tuấn Quỳnh', 'tuanquynh2204@gmail.com', '123', '2024-11-06 10:47:52', 1),
(6, 'Tuấn Đạt', 'tuanquynh3452@gmail.com', '123', '2024-11-06 10:48:08', 1),
(7, 'Tuấn Tú', 'tuantu@gmail.com', '123', '2024-11-13 13:54:58', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id_baiviet`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_baiviet` (`id_review`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_users` (`id_users`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id_baiviet` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
