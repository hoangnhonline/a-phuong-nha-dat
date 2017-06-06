-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 07:32 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batdongsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `status`) VALUES
(1, 'Quảng cáo bên trái', 1),
(2, 'Quảng cáo bên phải', 1);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `value_from` int(11) NOT NULL,
  `value_to` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `display_order`, `status`, `value_from`, `value_to`, `created_at`, `updated_at`) VALUES
(1, 'Dưới 30 m2', 1, 1, 0, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '30 - 50 m2', 2, 1, 31, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '50 - 70 m2', 3, 1, 51, 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '70 - 100 m2', 4, 1, 71, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '100 - 150 m2', 5, 1, 101, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '150 - 200 m2', 6, 1, 151, 200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '200 - 250 m2', 7, 1, 201, 250, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '250 - 300 m2', 8, 1, 251, 300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '300 - 350 m2', 9, 1, 301, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '350 - 400 m2', 10, 1, 351, 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '400 - 600 m2', 11, 1, 401, 600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '600 - 800 m2', 12, 1, 601, 800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '800 - 1000 m2', 13, 1, 801, 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Trên 1000 m2', 14, 1, 1001, 1000000, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cate_id` int(11) NOT NULL COMMENT '999 : landing page',
  `content` text,
  `is_hot` tinyint(1) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(1, 'Học tập người Nhật trang trí phòng khách vừa đẹp vừa gọn gàng đến bất ngờ', 'hoc-tap-nguoi-nhat-trang-tri-phong-khach-vua-dep-vua-gon-gang-den-bat-ngo', 'Hoc tap nguoi Nhat trang tri phong khach vua dep vua gon gang den bat ngo', 'Ít đồ đạc, lựa chọn chất liệu thân thiện với môi trường, chú ý đến những chi tiết trang trí nhỏ nhất là những yếu tố làm nên sức hút đặc biệt cho bất kỳ không gian phòng khách nào của người Nhật.', 'https://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164424-04c7.jpg', 1, '<p>Cả thế giới không chỉ ngưỡng mộ trước tinh thần làm việc cần cù, cách sống tử tế của người Nhật, mà còn trầm trồ thán phục họ bởi cách trang trí nhà cửa, không quá nhiều đồ đạc nhưng vẫn luôn tiện ích và đẹp tinh tế.</p>\r\n\r\n<p><strong>Trang trí phòng khách</strong> theo phong cách Nhật luôn mang đến vẻ đẹp đặc biệt. Sự đơn giản từ cách trang trí đến việc lựa chọn kiểu dáng nội thất. Nhưng sự đơn giản ấy lại luôn mang đến nét đẹp cân đối, hài hòa với tổng thể. Không những thế, mọi căn phòng bên trong nhà đều có những ô cửa sổ lớn để kết nối với thiên nhiên từ mọi góc độ.</p>\r\n\r\n<p style="text-align:center"><img alt="Phòng khách Nhật " src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164424-04c7.jpg" style="height:375px; width:500px" title="Phòng khách Nhật đẹp tinh tế, gần gũi với tự nhiên."><br><em>Phòng khách Nhật đẹp tinh tế, gần gũi với tự nhiên.</em></p>\r\n\r\n<p>Phòng khách theo phong cách Nhật thường chú trọng đến sự đơn giản, tiện nghi, tiện lợi và hiện đại. Đó là sự tổng hợp từ nhiều nguồn cảm hứng trang trí như phong cách Nhật truyền thống, phong cách nội thất hiện đại và phong cách tối giản. Người Nhật luôn cảm thấy dễ chịu khi sử dụng phòng khách bởi họ luôn ý thức sự gọn gàng, sạch sẽ, sự cân bằng, trật tự và chú trọng vẻ đẹp của tự nhiên.</p>\r\n\r\n<h2>Bảng màu</h2>\r\n\r\n<p>Phòng khách được xem là không gian quan trọng nhất trong ngôi nhà của người Nhật. Ở không gian này, người Nhật thường chọn màu sắc tự nhiên, những gam màu thân thiện có nguồn gốc từ thiên nhiên như gỗ, màu của mặt trời, của đất hay của những thảm cỏ xanh. Những gam màu được kết hợp một cách tinh tế, hài hòa để tạo vẻ đẹp nhẹ nhàng cho căn phòng.</p>\r\n\r\n<p style="text-align:center"><img alt="Màu sắc của phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164411-3333.jpg" style="height:375px; width:500px" title="Màu sắc của phòng khách Nhật vô cùng nhẹ nhàng."><br><em>Màu sắc của phòng khách Nhật vô cùng nhẹ nhàng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164446-c9b3.jpg" style="height:375px; width:500px" title="Người Nhật cũng chú trọng thêm những yếu tố thiên nhiên, cây cối, bonsai vào nhà."><br><em>Người Nhật cũng chú trọng thêm những yếu tố thiên nhiên, cây cối,<br>\r\nbonsai vào nhà.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164477-8c91.jpg" style="height:267px; width:500px" title="Ánh sáng tự nhiên cũng là một phần quan trọng. Họ thường chọn cửa sổ rộng mở hay lấy sáng từ giếng trời, từ trần nhà để không gian luôn thoáng đãng, gần gũi với tự nhiên."><br><em>Ánh sáng tự nhiên cũng là một phần quan trọng. Họ thường chọn cửa sổ rộng<br>\r\nmở hay lấy sáng từ giếng trời, từ trần nhà để không gian luôn thoáng<br>\r\nđãng, gần gũi với tự nhiên.</em></p>\r\n\r\n<h2>Không chọn nhiều nội thất</h2>\r\n\r\n<p>Dễ nhận thấy một điều tuyệt vời trong cách trang trí phòng khách của người Nhật, đó là cách trang trí nội thất. Hầu hết nội thất theo phong cách Nhật thường thấp, đơn giản. Họ hạn chế tối đa việc sử dụng nội thất trong phòng và chú ý sử dụng nhiều nệm để mang lại sự thoải mái nghi ngồi trò chuyện hay làm việc tại phòng khách.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164465-785d.jpg" style="height:334px; width:500px" title="Người Nhật luôn chú trọng văn hóa thưởng trà. Họ thường chọn lựa cho căn phòng một chiếc bàn chân thấp xinh xắn, xung quanh được trải nệm hoặc chiếu tatami truyền thống."><br><em>Người Nhật luôn chú trọng văn hóa thưởng trà. Họ thường chọn lựa cho<br>\r\ncăn phòng một chiếc bàn chân thấp xinh xắn, xung quanh được trải<br>\r\nnệm hoặc chiếu tatami truyền thống.</em></p>\r\n\r\n<h2>Ưu ái đặc biệt cho đồ trang trí bằng gỗ và tre</h2>\r\n\r\n<p>Chất liệu gỗ và tre luôn được ưu ái sử dụng trong phòng khách của người Nhật. Tre được sử dụng phổ biến trong cách ngôi nhà của Á Đông, trong đó có Nhật Bản. Tre mang vẻ đẹp giản dị, bình yên, mát mẻ và trong lành đến cho không gian phòng khách.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164443-cc7a.jpg" style="height:374px; width:500px" title="Đồ gỗ được ưu ái sử dụng."><br><em>Đồ gỗ được ưu ái sử dụng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164435-26a3.jpg" style="height:375px; width:500px" title="Mành rèm tre được sử dụng phổ biến trong phòng khách Nhật."><br><em>Mành rèm tre được sử dụng phổ biến trong phòng khách Nhật.</em></p>\r\n\r\n<h2>Thiết kế cửa trượt</h2>\r\n\r\n<p>Người Nhật luôn mong muốn tạo một không gian rộng rãi, gọn gàng nhất có thể. Vì vậy, ở bất kỳ không gian nào, không chỉ riêng phòng khách được thiết kế ưu ái cho cửa trượt. Cửa trượt vừa giúp không gian mở rộng tối đa về diện tích vừa giúp căn phòng gọn thoáng, ngay ngắn hơn.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164494-0039.jpg" style="height:389px; width:500px" title="Cửa trượt là giải pháp tối ưu hóa không gian."><br><em>Cửa trượt là giải pháp tối ưu hóa không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách Nhật" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426080603164410-6c12.jpg" style="height:333px; width:500px" title="Ngăn chia các phòng hiệu quả."><br><em>Ngăn chia các phòng hiệu quả.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:27', '2017-05-05 14:51:27', 1, 1),
(2, 'Ngôi nhà của bạn sẽ trông ''sang chảnh'' như khách sạn nếu được cải tạo theo cách này', 'ngoi-nha-cua-ban-se-trong-sang-chanh-nhu-khach-san-neu-duoc-cai-tao-theo-cach-nay', 'Ngoi nha cua ban se trong ''sang chanh'' nhu khach san neu duoc cai tao theo cach nay', 'Hãy tô điểm để ngôi nhà của mình thêm hiện đại và sang trọng mà lại không làm “đau” ví tiền của bạn.', 'https://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758724-9faf.jpg', 1, '<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758724-9faf.jpg" style="height:617px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align: center;">Nhà thiết kế nội thất Eisen tư vấn rằng bạn nên tạo vẻ sang trọng cho ngôi nhà bằng cách trang trí theo kiểu bộ ba, giống như ba bức tranh trên tường trong căn nhà trên đây. Bạn có thể tải tác phẩm này miễn phí trên mạng, in ảnh từ máy in, cắt hình ảnh thành 3 phần và lắp tranh vào khung.</p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758711-3ad6.jpg" style="height:693px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align: center;">Nội thất có màu sắc trung tính, đặt gương phía sau ghế sofa và tấm thảm lớn có thể khiến căn phòng trở nên rộng, sang và hào nhoáng hơn rất nhiều.</p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758746-5ff8.jpg" style="height:751px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align:center">Thay vì xếp rất nhiều bình lọ, sách trên khay, bạn nên chọn một vài đồ vật tiêu biểu để trang trí cho kệ tủ nhà mình. Hãy chú ý sắp xếp một cách đơn giản nhất có thể và chú ý lựa những đồ vật có chiều cao khác nhau ở gần nhau.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758777-a3ae.jpg" style="height:281px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align:center">Mỗi căn phòng cần một điểm nhấn nhất định. Hãy tạo điểm nhấn cho căn phòng bằng một bức tranh treo tường thật bắt mắt. Để cắt giảm chi phí, bạn có thể tự vẽ bức tranh trang trí hoặc tải những bức ảnh từ trên mạng rồi in ra trên giấy.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758765-893a.jpg" style="height:751px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align:center">Hãy để ánh sáng mặt trời lan tỏa trong căn phòng nhà bạn bằng cách thêm gương và sắp xếp nội thất có gam màu trung tính, sáng sủa.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758743-3a68.jpg" style="height:751px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align:center">Mảng màu tối ở đầu giường tạo nét sang trọng, phá cách cho phòng ngủ nhà bạn.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758735-9c98.jpg" style="height:751px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align:center">Nếu căn phòng của nhà bạn hướng ra bên ngoài cửa sổ thì đừng ngại làm một chiếc cửa kính và rèm che để bạn có thể ngắm nhìn khung cảnh tuyệt đẹp ở bên ngoài từ bên trong căn phòng. Khung cảnh tươi sáng bên ngoài sẽ giúp ngôi nhà của bạn trở nên sang trọng, hiện đại và nổi bật.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424115117758794-ca4e.jpg" style="height:281px; text-align:center; width:500px"></p>\r\n\r\n<p style="text-align:center">Bạn có thể trang trí căn phòng với các mảng màu tự nhiên thêm các đường viền đầy màu sắc và thêm một vài phụ kiện trang trí. Bạn nên kết hợp sắc thái trắng, xám, be để tạo vẻ sang chảnh cho căn phòng.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Em đẹp)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:27', '2017-05-05 14:51:27', 1, 1),
(3, 'Tưởng chỉ có trong phim ảnh, những cánh cửa bí mật giờ đây lại đang là xu hướng thiết kế của rất nhiều gia đình', 'tuong-chi-co-trong-phim-anh-nhung-canh-cua-bi-mat-gio-day-lai-dang-la-xu-huong-thiet-ke-cua-rat-nhieu-gia-dinh', 'Tuong chi co trong phim anh, nhung canh cua bi mat gio day lai dang la xu huong thiet ke cua rat nhieu gia dinh', 'Những cánh cửa được thiết kế với hình dáng như những chiếc tủ sách đang là một lựa chọn thông minh của nhiều gia đình.', 'https://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469724-08ff.jpg', 1, '<p>Nếu là một người nghiền những bộ phim võ hiệp xưa thì chắc hẳn những cánh cửa bí mật đã không còn gì xa lạ với bạn. Tuy nhiên, điều mới lạ ở đây chính là việc áp dụng nó vào thiết kế nội thất hiện đại ngày nay. Thực tế thì phong cách này được đánh giá là một giải pháp thông minh, hữu ích và tiết kiệm diện tích cho người dùng. Thay vì những bức tường ngăn cách giữa các không gian thì thiết kế cánh cửa dưới hình dáng của những chiếc tủ lưu trữ tiện ích hơn rất nhiều, cùng với đó nó cũng mang đến nét cá tính độc đáo bên trong mỗi ngôi nhà.</p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469724-08ff.jpg" style="height:1014px; width:500px" title="Những cánh cửa bí mật dưới hình dáng giá sách đang được nhiều gia đình lựa chọn thay cho những bức tường ngăn cách nhàm chán."><br><em>Những cánh cửa bí mật dưới hình dáng giá sách đang được nhiều gia đình<br>\r\nlựa chọn thay cho những bức tường ngăn cách nhàm chán.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469711-900f.jpg" style="height:673px; width:500px" title="Phong cách thiết kế cánh cửa bí mật này cũng là một giải pháp tiết kiệm không gian đầy tiện ích cho người dùng."><br><em>Phong cách thiết kế cánh cửa bí mật này cũng là một giải pháp tiết kiệm<br>\r\nkhông gian đầy tiện ích cho người dùng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Cánh cửa bí mật " src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469746-481d.jpg" style="height:944px; width:500px" title="Cánh cửa bí mật này mang đến người dùng một không gian lưu trữ hữu dụng."><br><em>Cánh cửa bí mật này mang đến người dùng một không gian lưu trữ hữu dụng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469777-43ba.jpg" style="height:1138px; width:500px" title="Ai có thể ngờ được rằng đằng sau giá sách lớn kia lại là một không gian sinh hoạt cơ chứ."><br><em>Ai có thể ngờ được rằng đằng sau giá sách lớn kia lại là một không gian<br>\r\nsinh hoạt cơ chứ.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469765-f249.jpg" style="height:1129px; width:500px" title="Phong cách thiết kế nội thất này cũng mang đến nét độc đáo, cá tính, riêng biệt cho không gian sống gia đình."><br><em>Phong cách thiết kế nội thất này cũng mang đến nét độc đáo, cá tính, riêng<br>\r\nbiệt cho không gian sống gia đình.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469743-1f17.jpg" style="height:639px; width:500px" title="Chắc hẳn mọi vị khách của bạn đều sẽ phải trầm trồ với kiểu thiết kế mới lạ và độc đáo này."><br><em>Chắc hẳn mọi vị khách của bạn đều sẽ phải trầm trồ với kiểu thiết kế<br>\r\nmới lạ và độc đáo này.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469735-9233.jpg" style="height:375px; width:500px" title="Tùy theo nhu cầu sử dụng mà bạn có thể thiết kế kích thước của “cánh cửa thần bí” phù hợp nhất mà không ảnh hưởng đến mỹ quan chung của căn phòng."><br><em>Tùy theo nhu cầu sử dụng mà bạn có thể thiết kế kích thước của “cánh cửa<br>\r\nthần bí” phù hợp nhất mà không ảnh hưởng đến mỹ quan chung của căn phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa thần bí" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469794-bcb6.jpg" style="height:671px; width:500px" title="Trên thực tế việc sở hữu một cánh cửa thần bí như thế này khá đơn giản, không quá phức tạp."><br><em>Trên thực tế việc sở hữu một cánh cửa thần bí như thế này khá đơn<br>\r\ngiản, không quá phức tạp.</em></p>\r\n\r\n<p style="text-align:center"><img alt="ánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469710-088e.jpg" style="height:752px; width:500px" title="Bạn chỉ cần thiết kế một giá sách có kích thước lớn vừa khít với kích thước căn phòng cùng một cánh cửa kèm theo đó, vậy là mọi thứ đã hoàn thành rồi."><br><em>Bạn chỉ cần thiết kế một giá sách có kích thước lớn vừa khít với kích thước<br>\r\ncăn phòng cùng một cánh cửa kèm theo đó, vậy là mọi thứ đã hoàn thành rồi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Những cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469764-086c.jpg" style="height:1008px; width:500px" title="Những cánh cửa này còn có thể tạo ra hiệu ứng cực mạnh nếu bạn lựa chọn hai phong cách hoàn toàn đối lập giữa 2 căn phòng."><br><em>Những cánh cửa này còn có thể tạo ra hiệu ứng cực mạnh nếu bạn lựa<br>\r\nchọn hai phong cách hoàn toàn đối lập giữa 2 căn phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469728-8b8b.jpg" style="height:1485px; width:500px" title="Cánh cửa bí mật này khiến bạn và mọi vị khách của bạn luôn thấy thích thú, mới mẻ."><br><em>Cánh cửa bí mật này khiến bạn và mọi vị khách của bạn luôn thấy<br>\r\nthích thú, mới mẻ</em></p>\r\n\r\n<p style="text-align:center"><img alt="Cánh cửa bí mật " src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469724-2013.jpg" style="height:1506px; width:500px" title="Cánh cửa bí mật như một trò ảo thuật của bạn trong cách thiết kế không gian sống."><br><em>Cánh cửa bí mật như một trò ảo thuật của bạn trong cách thiết<br>\r\nkế không gian sống.</em></p>\r\n\r\n<p style="text-align:center"><img alt="cánh cửa bí mật" src="http://img.dothi.net/2017/04/24/0Ln61R5F/20170424080219469731-8214.jpg" style="height:315px; width:500px" title="Và nếu bạn đã từng là một tín đồ của những bộ phim kiếm hiệp Trung Hoa, yêu thích sự độc đáo, khác lạ của cánh cửa bí mật này thì đã đến lúc biến nó thành hiện thực rồi."><br><em>Và nếu bạn đã từng là một tín đồ của những bộ phim kiếm hiệp Trung Hoa,<br>\r\nyêu thích sự độc đáo, khác lạ của cánh cửa bí mật này thì đã đến lúc<br>\r\nbiến nó thành hiện thực rồi.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:28', '2017-05-05 14:51:28', 1, 1),
(4, 'Vẻ đẹp đầy lôi cuốn trong thiết kế nội thất của cặp đôi màu sắc đồng và hồng', 've-dep-day-loi-cuon-trong-thiet-ke-noi-that-cua-cap-doi-mau-sac-dong-va-hong', 'Ve dep day loi cuon trong thiet ke noi that cua cap doi mau sac dong va hong', 'Sự kết hợp giữa chất liệu đồng và sắc hồng nhẹ nhàng trong thiết kế nội thất sẽ mang đến cho không gian sống vẻ đẹp vừa nhẹ nhàng, nữ tính và tinh tế, hiện đại.', 'https://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206124-e4ae.jpg', 1, '<p>Từ bao lâu nay, sắc hồng vẫn luôn được coi như một gam màu đại diện cho phái nữ. Sắc hồng tươi thường mang đến cảm giác nhẹ nhàng, đầy nữ tính. Nhưng sẽ thật là tẻ nhạt và nhàm chán nếu chỉ sử mãi những tông màu hồng quen thuộc ấy. Chính vì vậy việc kết hợp với những gam màu, chất liệu khác nhau trong <strong>thiết kế nội thất</strong> luôn là một lựa chọn hay ho mang đến sự phá cách, sáng tạo trong lối thiết kế không gian sống. Và nếu như bạn còn đang bận lần mò để tìm thấy được sự kết hợp thú vị ấy thì cặp đôi hồng – đồng chính là một gợi ý không tồi chút nào.</p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206124-e4ae.jpg" style="height:500px; width:500px" title="Bạn sẽ bị choáng ngợp bởi vẻ đẹp hoàn hảo, đầy lôi cuốn mà sự kết hợp giữa cặp đôi màu đồng – hồng mang đến không gian sống của mình."><br><em>Bạn sẽ bị choáng ngợp bởi vẻ đẹp hoàn hảo, đầy lôi cuốn mà sự kết hợp<br>\r\ngiữa cặp đôi màu đồng – hồng mang đến không gian sống của mình.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206111-190a.jpg" style="height:500px; width:500px" title="Thay vì chỉ có vẻ đẹp nhẹ nhàng nữ tính như trước kia, sự xuất hiện của màu đồng giúp tô điểm thêm nét tinh té, sang trọng của căn phòng lên rất nhiều."><br><em>Thay vì chỉ có vẻ đẹp nhẹ nhàng nữ tính như trước kia, sự xuất hiện của màu<br>\r\nđồng giúp tô điểm thêm nét tinh té, sang trọng của căn phòng lên rất nhiều.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206146-0a7c.jpg" style="height:749px; width:500px" title="Bạn có thể áp dụng sự kết hợp đầy thú vị này cho bất kì khu vực nào trong gia đình."><br><em>Bạn có thể áp dụng sự kết hợp đầy thú vị này cho bất kì khu vực nào<br>\r\ntrong gia đình</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206177-b791.jpg" style="height:751px; width:500px" title="Phòng khách là một vị trí lý tưởng không thể bỏ qua khi kết hợp giữa những chiếc gối tựa hồng và đồ phụ kiện mạ đồng tinh xảo."><br><em>Phòng khách là một vị trí lý tưởng không thể bỏ qua khi kết hợp giữa những<br>\r\nchiếc gối tựa hồng và đồ phụ kiện mạ đồng tinh xảo</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206165-5588.jpg" style="height:667px; width:500px" title="Căn phòng khách đầy sức sống với vẻ đẹp nữ tính pha chút thanh lịch, hiện đại nhờ vào cách kết hợp khéo léo của chủ nhân."><br><em>Căn phòng khách đầy sức sống với vẻ đẹp nữ tính pha chút thanh lịch, hiện đại<br>\r\nnhờ vào cách kết hợp khéo léo của chủ nhân.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206143-9ba8.jpg" style="height:667px; width:500px" title="Những chiếc đèn tròn mạ đồng tuy đơn giản mà khiến khó lòng rời mắt khỏi."><br><em>Những chiếc đèn tròn mạ đồng tuy đơn giản mà khiến khó lòng rời mắt khỏi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206135-1a3c.jpg" style="height:700px; width:500px" title="Liệu bạn có muốn được sở hữu một căn bếp đẹp xuất sắc như thế này không?"><br><em>Liệu bạn có muốn được sở hữu một căn bếp đẹp xuất sắc như thế này không?</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206194-8f20.jpg" style="height:667px; width:500px" title="Phòng ngủ hồng đã đẹp, giờ có thêm sắc đồng nữa lại càng thêm phần cuốn hút."><br><em>Phòng ngủ hồng đã đẹp, giờ có thêm sắc đồng nữa lại càng thêm phần<br>\r\ncuốn hút.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206110-0534.jpg" style="height:625px; width:500px" title="Những chiếc đèn mạ đồng luôn là một lựa chọn tuyệt vời nhất để bạn có thể kết hợp với sắc hồng tươi có trong căn phòng."><br><em>Những chiếc đèn mạ đồng luôn là một lựa chọn tuyệt vời nhất để bạn có thể<br>\r\nkết hợp với sắc hồng tươi có trong căn phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206164-71c6.jpg" style="height:500px; width:500px" title="Còn gì tuyệt hơn khi sở hữu những chiếc tủ đầu giường đẹp mê mẩn như thế này."><br><em>Còn gì tuyệt hơn khi sở hữu những chiếc tủ đầu giường đẹp mê mẩn<br>\r\nnhư thế này.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206128-8342.jpg" style="height:500px; width:500px" title="Những chiếc khung gương hình tổ ong khiến bạn muốn ngắm nhìn mãi không thôi."><br><em>Những chiếc khung gương hình tổ ong khiến bạn muốn ngắm nhìn mãi<br>\r\nkhông thôi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206124-117f.jpg" style="height:750px; width:500px" title="Góc làm đẹp cũng chỉ cần đơn giản thế này thôi cũng đủ lôi cuốn lắm rồi."><br><em>Góc làm đẹp cũng chỉ cần đơn giản thế này thôi cũng đủ lôi cuốn lắm rồi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206131-7c14.jpg" style="height:500px; width:500px" title="Đừng quên, bạn cũng có thể thiết kế một góc học tập và làm việc tại nhà hoàn hảo như thế này với cặp màu hồng – đồng nhé."><br><em>Đừng quên, bạn cũng có thể thiết kế một góc học tập và làm việc tại nhà hoàn<br>\r\nhảo như thế này với cặp màu hồng – đồng nhé.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất" src="http://img.dothi.net/2017/04/22/0Ln61R5F/20170422083152206198-68b0.jpg" style="height:500px; width:500px" title="Và bây giờ, đã đến lúc để bạn bắt tay vào trang trí với cặp màu này ngay cho không gian sống của mình rồi."><br><em>Và bây giờ, đã đến lúc để bạn bắt tay vào trang trí với cặp màu này ngay<br>\r\ncho không gian sống của mình rồi.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:29', '2017-05-05 14:51:29', 1, 1),
(5, 'Bạn đã biết chưa, thiết kế ghế nằm bên cửa sổ chính là xu hướng được nhiều người yêu thích năm 2017', 'ban-da-biet-chua-thiet-ke-ghe-nam-ben-cua-so-chinh-la-xu-huong-duoc-nhieu-nguoi-yeu-thich-nam-2017', 'Ban da biet chua, thiet ke ghe nam ben cua so chinh la xu huong duoc nhieu nguoi yeu thich nam 2017', 'Những thiết kế ghế nằm này được đánh giá là mang lại cảm giác thư giãn, sang trọng và quyến rũ, chính vì vậy mà nó được lòng rất nhiều vị chủ nhân kể cả người cực khó tính.', 'https://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868724-eb17.jpg', 1, '<p>Nhiều người hay có suy nghĩ giường ngủ thì phải thật lớn và phải được đặt trong một không gian phòng cũng tương xứng như thế. Tuy nhiên, một cuộc khảo sát mới đây cho thấy nhiều người dân đang có xu hướng sử dụng những chiếc ghế nằm nhỏ bên cửa sổ thay vì sử dụng các mẫu thiết kế giường cổ điển đã cũ. Lợi ích đến từ sự tiện dụng của những chiếc giường mini này chính là ưu điểm lớn nhất mà mọi người ưa dùng. Hãy cùng chiêm ngưỡng các mẫu ghế bên cạnh cửa sổ ngay dưới đây để hiểu thêm thêm về mẫu thiết kế này.</p>\r\n\r\n<p style="text-align: center;"><img alt="mẫu ghế phong cách" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868724-eb17.jpg" style="width:500px" title="Thiết kế đầy phong cách này được tạo bởi kiến trúc sư K Kong Designs được trang trí theo chủ đề da cam với màu đặc trưng được sử dụng ở rèm cửa, thảm, ghế và gối dựa."><br><em>Thiết kế đầy phong cách này được tạo bởi kiến trúc sư K Kong Designs<br>\r\nđược trang trí theo chủ đề da cam với màu đặc trưng được sử dụng ở<br>\r\nrèm cửa, thảm, ghế và gối dựa.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="mẫu thiết kế ghế đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868711-afdc.jpg" style="width:500px" title="Với mẫu thiết kế này, kiến trúc sư Jeffrey King đã sử dụng màu xanh đặc trưng của Pháp và phối thêm chất liệu da đỏ cho thêm phần sinh động. "><br><em>Với mẫu thiết kế này, kiến trúc sư Jeffrey King đã sử dụng màu xanh đặc<br>\r\ntrưng của Pháp và phối thêm chất liệu da đỏ cho thêm phần sinh động.<br>\r\nPhần ghế nhỏ sát bên cửa sổ gần như là sự kết hợp hoàn hảo với màu<br>\r\nsắc của bức tường.</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="ghế đệm dài" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868746-22ca.jpg" style="width:500px" title="Một đệm ghế dài êm ái với các loại gối có màu sắc sinh động đã giúp vui mắt hơn cho một khung cửa sổ ở ngôi nhà tại San Francisco."><br>\r\nMột đệm ghế dài êm ái với các loại gối có màu sắc sinh động đã giúp vui<br>\r\nmắt hơn cho một khung cửa sổ ở ngôi nhà tại San Francisco.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="nội thất nhà đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868777-e9e7.jpg" style="width:500px" title="Nhóm nghiên cứu tại Ben Heath nói rằng thiết kế này của họ đã sửa dụng màu sắc trên thành cửa sổ để dành riêng cho người khiếm thị giúp họ phân biệt được bếp và không gian ghế ngồi."><br><em>Nhóm nghiên cứu tại Ben Heath nói rằng thiết kế này của họ đã sửa dụng<br>\r\nmàu sắc trên thành cửa sổ để dành riêng cho người khiếm thị giúp họ<br>\r\nphân biệt được bếp và không gian ghế ngồi.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="mẫu ghế đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868765-70cd.jpg" style="width:500px" title="Chỗ ngồi trên chiếc giế này có thêm đệm xốp băng bông phủ vải với màu sắc giống như bức tường và hai khoang chứa lớn bên dưới đủ đựng hai thùng thép."><br><em>Chỗ ngồi trên chiếc giế này có thêm đệm xốp băng bông phủ vải với màu<br>\r\nsắc giống như bức tường và hai khoang chứa lớn bên dưới đủ đựng hai<br>\r\nthùng thép.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế ghế đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868743-0962.jpg" style="width:500px" title="Thiết kế ghế bên cửa sổ nhẹ nhàng này giống hệt một chiếc giường ngủ thu nhỏ với đầy đủ giá sách và đèn chiếu sáng cả hai bên."><br><em>Thiết kế ghế bên cửa sổ nhẹ nhàng này giống hệt một chiếc giường ngủ thu<br>\r\nnhỏ với đầy đủ giá sách và đèn chiếu sáng cả hai bên.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="ghế nằm cửa sổ" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868735-5c44.jpg" style="width:500px" title="Một nhà khách ở Nantucket, Massachusetts được xây dựng bởi Jonathan Raith đã chơi trội hẳn lên khi sử dụng hẳn hai ghế bên cửa sổ màu xanh patel."><br><em>Một nhà khách ở Nantucket, Massachusetts được xây dựng bởi<br>\r\nJonathan Raith đã chơi trội hẳn lên khi sử dụng hẳn hai ghế bên<br>\r\ncửa sổ màu xanh patel</em>.</p>\r\n\r\n<p style="text-align: center;"><img alt="ghế ngồi cạnh cửa sổ" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868794-3be8.jpg" style="width:500px" title=" Chủ nhân ngôi nhà sẽ thoải mái được sách, ngắm cảnh và ngủ nướng tại đây."><br><em>Chỗ ngồi trên cửa sổ tại Berkeley, California gây ấn tượng bởi tầm nhìn rộng<br>\r\nlớn bao quát được toàn bộ khu vực xung quanh. Chủ nhân ngôi nhà sẽ thoải<br>\r\nmái được sách, ngắm cảnh và ngủ nướng tại đây.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="xu hướng nội thất 2017" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868710-246a.jpg" style="width:500px" title="Các bức tường trắng và tủ đồ trắng muốt đã làm nền cho một trần gỗ và khung cửa sổ. "><br><em>Các bức tường trắng và tủ đồ trắng muốt đã làm nền cho một trần gỗ và<br>\r\nkhung cửa sổ. Một cặp đèn lồng lấy cảm hứng từ câu chuyện cổ tích<br>\r\nđược sử dụng trong thiết kế này.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="nội thất nhà đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868764-95f2.jpg" style="width:500px" title="Ghế ngồi trên cửa sổ lớn ở Sea Ranch, California được thiết kế bởi kiến trúc sư Malcolm Davis có tầm nhìn ngoạn mục ra biển Thái Bình Dương."><br><em>Ghế ngồi trên cửa sổ lớn ở Sea Ranch, California được thiết kế bởi kiến trúc<br>\r\nsư Malcolm Davis có tầm nhìn ngoạn mục ra biển Thái Bình Dương.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="ghế nằm đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868728-e7bc.jpg" style="width:500px" title="Căn bếp này nằm trong một ngôi nhà ở Seattle bao gồm một bàn làm việc và một góc ăn uống, phía dưới có cất giữ bộ giữ nhiệt cho chiếc ghế."><br><em>Căn bếp này nằm trong một ngôi nhà ở Seattle bao gồm một bàn làm việc<br>\r\nvà một góc ăn uống, phía dưới có cất giữ bộ giữ nhiệt cho chiếc ghế.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="ghế cạnh cửa sổ" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868724-47e1.jpg" style="width:500px" title="Người vẽ tranh sơn dầu xung quanh các cửa sổ này đã phù phép khiến trông chiếc cửa sổ chỗ này như lồi hẳn ra trong không gian màu trắng."><br><em>Người vẽ tranh sơn dầu xung quanh các cửa sổ này đã phù phép khiến<br>\r\ntrông chiếc cửa sổ chỗ này như lồi hẳn ra trong không gian màu trắng.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="ghế nằm đẹp" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868731-d0bf.jpg" style="width:500px" title="Nhà thiết kế Wendi Young đã khéo léo sử dụng cùng một loại vải cho đệm ghế cửa sổ và các gối trang trí trên giường."><br><em>Nhà thiết kế Wendi Young đã khéo léo sử dụng cùng một loại vải cho đệm<br>\r\nghế cửa sổ và các gối trang trí trên giường.</em></p>\r\n\r\n<p style="text-align:center"> </p>\r\n\r\n<p style="text-align: center;"><img alt="ghế nằm cửa sổ" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868798-3fe3.jpg" style="width:500px" title="Ngôi nhà có hồ bơi ven biển ở Virginia được thiết kế các bức tường trắng và một ghế nằm cửa sổ thật duyên dáng phù hợp với bãi biển ngập nắng này."><br><em>Ngôi nhà có hồ bơi ven biển ở Virginia được thiết kế các bức tường trắng và<br>\r\nmột ghế nằm cửa sổ thật duyên dáng phù hợp với bãi biển ngập nắng này.</em></p>\r\n\r\n<p style="text-align:center"> </p>\r\n\r\n<p style="text-align: center;"><img alt="ghế sát cửa sổ" src="http://img.dothi.net/2017/04/13/0Ln61R5F/20170413135645868768-0a51.jpg" style="width:500px" title="Mẫu thiết kế ghế sát cửa sổ cuối cùng này thuộc về một phòng ngủ ấm cúng của đứa trẻ bao gồm một chỗ ngồi giữa hai kệ sách dành cho trẻ em."><br><em>Mẫu thiết kế ghế sát cửa sổ cuối cùng này thuộc về một phòng ngủ ấm cúng<br>\r\ncủa đứa trẻ bao gồm một chỗ ngồi giữa hai kệ sách dành cho trẻ em.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Trí thức trẻ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:29', '2017-05-05 14:51:29', 1, 1),
(6, 'Xốp giả gạch 3D - xu hướng trang trí tường mới vừa đẹp vừa rẻ cho không gian sống', 'xop-gia-gach-3d-xu-huong-trang-tri-tuong-moi-vua-dep-vua-re-cho-khong-gian-song', 'Xop gia gach 3D - xu huong trang tri tuong moi vua dep vua re cho khong gian song', 'Nếu bạn muốn tìm đến vẻ đẹp hiện đại, tự nhiên, tiện lợi trong việc thi công và sử dụng, giá thành mềm mại thì có thể xem xét việc trang trí những bức tường của mình bằng xốp giả gạch 3D.', 'https://img.dothi.net/2017/04/11/0Ln61R5F/48-fcea.jpg', 1, '<p>Có thể bạn đã quá quen với việc sử dụng sơn tường, sử dụng giấy dán tường, không gian sẽ cần đến điểm nhấn mới lạ hơn. Hãy xem xét đến việc sử dụng xốp giả gạch 3D.</p>\r\n\r\n<h2><strong>Vẻ đẹp của xốp dán tường</strong></h2>\r\n\r\n<p>Nếu như những họa tiết trên giấy dán tường mang đến vẻ đẹp nghệ thuật đầy tinh tế cho không gian thì việc sử dụng miếng<strong> </strong>xốp giả gach 3D để dán tường lại có thể tạo nên điểm nhấn tự nhiên, giúp căn phòng được gần gũi với tự nhiên hơn. Những miếng xốp được mô phỏng với hình dạng của những viên đá, khác một chút là xốp nhân tạo với nhiều màu sắc, sự kết hợp các gam màu cũng vô cùng tự nhiên giúp cho không gian đẹp ấn tượng.</p>\r\n\r\n<p style="text-align:center"><img alt="trang trí nội thất" src="http://img.dothi.net/2017/04/11/0Ln61R5F/48-fcea.jpg" style="width:500px" title="Xốp dán tường giả gạch đang được ưa chuộng trong trang trí nội thất."><br><em>Xốp dán tường giả gạch đang được ưa chuộng trong trang trí nội thất.</em></p>\r\n\r\n<p style="text-align:center"><img alt="trang trí nhà đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/10-8e86.jpg" style="width:500px" title="Chất liệu nhẹ, dễ thi công"><br><em>Chất liệu nhẹ, dễ thi công</em></p>\r\n\r\n<p style="text-align:center"><img alt="xốp giả gạch" src="http://img.dothi.net/2017/04/11/0Ln61R5F/66-04e6.jpg" style="width:500px" title="Xốp giả gạch tạo vẻ đẹp tự nhiên cho không gian."><br><em>Xốp giả gạch tạo vẻ đẹp tự nhiên cho không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt="xốp dán tường" src="http://img.dothi.net/2017/04/11/0Ln61R5F/70-7f22.jpg" style="width:500px" title="Màu sắc đa dạng giúp bạn lựa chọn được gam phù hợp."><br><em>Màu sắc đa dạng giúp bạn lựa chọn được gam phù hợp.</em></p>\r\n\r\n<p style="text-align:center"><img alt="bài trí nhà đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/56-67d3.jpg" style="width:500px" title="Phù hợp với mọi không gian."><br><em>Phù hợp với mọi không gian.</em></p>\r\n\r\n<h2><strong>Ưu điểm vượt trội</strong></h2>\r\n\r\n<p>Với miếng xốp dán tường 3D, khi ốp trên tường không chỉ tạo điểm nhấn đặc biệt cho không gian, mà còn là giải pháp tuyệt vời cho việc cách âm, chống nóng và chống thấm. Bạn chỉ cần xử lý tường trước khi ốp miếng xốp, thời gian sử dụng có thể lên đến 10 năm.</p>\r\n\r\n<p>Với những mảng tường ẩm mốc, bong tróc hay bị rạn nứt thì việc sử dụng miếng xốp dán tường cũng là cách đơn giản và nhanh chóng nhất trong việc hoàn thiện vẻ đẹp không gian mà không cần nhờ cậy đến việc xử lý cơ bản như khi dán giấy dán tường hay sơn nhà. Ưu điểm này cũng giúp cho bạn làm đẹp không gian một cách hiệu quả nhất, ít tốn kém chi phí nhất.</p>\r\n\r\n<p style="text-align:center"><img alt="tường nhà đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/32-7a3c.jpg" style="width:500px" title="Dễ dàng dán lên tường trong thời gian nhanh nhất."><br><em>Dễ dàng dán lên tường trong thời gian nhanh nhất.</em></p>\r\n\r\n<p style="text-align:center"><img alt="tường nhà đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/53-b943.jpg" style="width:500px" title="Xốp dán tạo điểm nhấn cho căn phòng."></p>\r\n\r\n<p style="text-align:center"><img alt="xốp dán tường giả gạch" src="http://img.dothi.net/2017/04/11/0Ln61R5F/42-9c7c.jpg" style="width:500px" title="Xốp dán tạo điểm nhấn cho căn phòng."><br><em>Xốp dán tạo điểm nhấn cho căn phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="tường nhà độc đáo" src="http://img.dothi.net/2017/04/11/0Ln61R5F/01-1fbe.jpg" style="width:500px" title="Màu sắc ấn tượng"><br><em>Màu sắc ấn tượng</em></p>\r\n\r\n<h2><strong>Giá thành hợp lý</strong></h2>\r\n\r\n<p>Hiện nay, miếng xốp giả gạch 3D dán tường có chi phí dao động từ 80.000đ – 150.000đ/m2. Với mức chi phí này, bạn hoàn toàn có thể yên tâm mua giấy dán để làm đẹp không gian sống của gia đình.</p>\r\n\r\n<h2><strong>Cách sử dụng</strong></h2>\r\n\r\n<p>Với việc sơn tường hay sử dụng giấy dán tường, bạn sẽ mất một khoản chi phí không nhỏ để thuê thợ đến thi công thì với miếng xốp dán tường, chỉ đơn giản là bóc lớp giấy phía sau và dán khéo léo lên tường. Miếng xốp với nhiều màu sắc sẽ giúp bạn lựa chọn được gam màu phù hợp để trang trí tường của từng không gian khác nhau.</p>\r\n\r\n<p style="text-align:center"><img alt="trang trí tường đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/41-fa60.jpg" style="width:500px" title="Nhiều mẫu mã, màu sắc"><br><em>Nhiều mẫu mã, màu sắc</em></p>\r\n\r\n<p style="text-align:center"><img alt="xốp dán tường" src="http://img.dothi.net/2017/04/11/0Ln61R5F/20170411131609034428-5492.jpg" style="width:500px" title="Xốp dán tường mang vẻ đẹp nghệ thuật cho không gian."><br><em>Xốp dán tường mang vẻ đẹp nghệ thuật cho không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt="tường nhà đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/47-8550.jpg" style="width:500px" title="Mang đến không gian của bé nét đẹp sinh động."><br><em>Mang đến không gian của bé nét đẹp sinh động.</em></p>\r\n\r\n<p style="text-align:center"><img alt="trang trí tường nhà" src="http://img.dothi.net/2017/04/11/0Ln61R5F/19-27d3.jpg" style="width:500px" title="trang trí tường nhà"></p>\r\n\r\n<p style="text-align:center"><img alt="xốp giả gạch" src="http://img.dothi.net/2017/04/11/0Ln61R5F/88-0c77.jpg" style="width:500px" title="Miếng xốp dễ dàng vệ sinh khi có bụi bẩn."><br><em>Miếng xốp dễ dàng vệ sinh khi có bụi bẩn.</em></p>\r\n\r\n<p>Miếng xốp dán tường giả gạch 3D đặc biệt phù hợp với không gian phòng bé. Các bé hiếu động, nghịch ngợm, lại yêu những sắc màu rực rỡ, sinh động nên việc lựa chọn miếng xốp giả gạch 3D là hoàn toàn hợp lý. Các góc cạnh của xốp khá mềm mại, an toàn, phù hợp với tính cách hiếu động của trẻ. Hơn nữa, miếng xốp lại dễ dàng lau sạch khi bị bẩn, giúp bạn yên tâm hơn khi bé vẽ vời hay làm bẩn tường.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Trí thức trẻ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:30', '2017-05-05 14:51:30', 1, 1),
(7, 'Là con gái ai chẳng thích có một căn phòng ngủ như thế này', 'la-con-gai-ai-chang-thich-co-mot-can-phong-ngu-nhu-the-nay', 'La con gai ai chang thich co mot can phong ngu nhu the nay', 'Những căn phòng ngủ đậm chất nữ tính sẽ khiến trái tim bạn ngã gục ngay từ ánh nhìn đầu tiên.', 'https://img.dothi.net/2017/04/11/0Ln61R5F/48-729a.jpg', 1, '<p>Không chỉ riêng con gái đâu mà ai cũng đều dành nhiều quan tâm đến không gian riêng tư này. Dưới đây là những mẫu phòng ngủ đầy nét nữ tính chắc chắn khiến mọi cô nàng đều phải thích mê.</p>\r\n\r\n<p>Những căn phòng ngủ nữ tính không chỉ đơn thuần được sơn bằng gam màu hồng ngọt ngào hay sắc trắng trong trẻo, tươi mát mà còn có rất nhiều yếu tố khác. Và những mẫu phòng ngủ được tổng hợp dưới đây sẽ tiết lộ cho bạn biết được những yếu tố đó.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/04/11/0Ln61R5F/48-729a.jpg" style="height:750px; width:500px" title="1. Lấy màu xanh lá tạo điểm nhấn cũng không thể nào che mất đi được nét nữ tính của căn phòng được mang lại bởi chất liệu lông sợi."><br><em>1. Lấy màu xanh lá tạo điểm nhấn cũng không thể nào che mất đi được nét nữ<br>\r\ntính của căn phòng được mang lại bởi chất liệu lông sợi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/10-5249.jpg" style="height:749px; width:500px" title="2. Những thiết kế bèo nhúm dường như đặc gán mác đồng quyền của con gái."><br><em>2. Những thiết kế bèo nhúm dường như đặc gán mác đồng quyền của con gái.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/66-d2f9.jpg" style="height:500px; width:500px" title="3. Có quá nhiều điều mang đến nét nữ tính cho căn phòng này nhưng dễ dàng nhận thấy nhất chính là lớp giấy dán tường họa tiết hoa đầy bắt mắt."><br><em>3. Có quá nhiều điều mang đến nét nữ tính cho căn phòng này nhưng dễ<br>\r\ndàng nhận thấy nhất chính là lớp giấy dán tường họa tiết hoa đầy bắt mắt.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/70-151c.jpg" style="height:667px; width:500px" title="4. Những chi tiết cầu kì thường thấy trong mỗi căn phòng ngủ của con gái được lựa chọn cho khung giường và khung kính gắn tường."><br><em>4. Những chi tiết cầu kì thường thấy trong mỗi căn phòng ngủ của con gái được<br>\r\nlựa chọn cho khung giường và khung kính gắn tường.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/56-a485.jpg" style="height:495px; width:500px" title="5. Một điều không cần phải bàn cãi là chính kiểu dáng của mẫu giường đã nói lên chủ nhân của nó chính là một cô gái ngọt ngào."><br><em>5. Một điều không cần phải bàn cãi là chính kiểu dáng của mẫu giường đã nói<br>\r\nlên chủ nhân của nó chính là một cô gái ngọt ngào.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/32-a59f.jpg" style="height:750px; width:500px" title="6. Sắc trắng dường như cũng trở nên trong trẻo hơn khi được sử dụng trong phòng ngủ con gái."><br><em>6. Sắc trắng dường như cũng trở nên trong trẻo hơn khi được sử dụng<br>\r\ntrong phòng ngủ con gái.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/53-e48b.jpg" style="height:729px; width:500px" title="7. Những chiếc tủ đầu giường cũng là một thứ cần thiết lắm với bọn con gái chúng mình."><br><em>7. Những chiếc tủ đầu giường cũng là một thứ cần thiết lắm với bọn<br>\r\ncon gái chúng mình.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/42-2098.jpg" style="height:500px; width:500px" title="8. Từ giường ngủ đến tủ đầu giường đều đồng nhất về phong cách thiết kế đầy nữ tính, thanh lịch."><br><em>8. Từ giường ngủ đến tủ đầu giường đều đồng nhất về phong cách thiết<br>\r\nkế đầy nữ tính, thanh lịch.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/01-e95d.jpg" style="height:701px; width:500px" title="9. Sức quyến rũ của căn phòng khiến bạn chẳng nỡ rời xa."><br><em>9. Sức quyến rũ của căn phòng khiến bạn chẳng nỡ rời xa.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/41-deef.jpg" style="height:637px; width:500px" title="10. Phòng ngủ con gái còn được đặc trưng bởi những đường nét cong uốn lượn mà bạn có thể bắt gặp ở chiếc ghế đơn hay bộ đèn chùm."><br><em>10. Phòng ngủ con gái còn được đặc trưng bởi những đường nét cong uốn<br>\r\nlượn mà bạn có thể bắt gặp ở chiếc ghế đơn hay bộ đèn chùm.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/20170411081233444028-50cc.jpg" style="height:667px; width:500px" title="11. Và tất nhiên, màu hồng đào ngọt ngào không còn xa lạ gì với những căn phòng ngủ của con gái."><br><em>11. Và tất nhiên, màu hồng đào ngọt ngào không còn xa lạ gì với những<br>\r\ncăn phòng ngủ của con gái.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ nữ tính" src="http://img.dothi.net/2017/04/11/0Ln61R5F/47-36ea.jpg" style="height:622px; width:500px"><br><em>12. Dù có giản dị đến mấy thì bạn vẫn có thể dễ dàng nhận thấy căn phòng<br>\r\nngủ này thuộc về phái nữ.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:30', '2017-05-05 14:51:30', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(8, 'Những gợi ý thiết kế góc làm việc cho cô nàng lãng mạn', 'nhung-goi-y-thiet-ke-goc-lam-viec-cho-co-nang-lang-man', 'Nhung goi y thiet ke goc lam viec cho co nang lang man', 'Với những cô nàng có tính cách dịu dàng, yêu sự lãng mạn, chắc chắn sẽ yêu ngay những góc làm việc vô cùng ngọt ngào này từ cái nhìn đầu tiên.', 'https://img.dothi.net/2017/04/10/0Ln61R5F/48-3071.jpg', 1, '<p>Nếu bạn đang muốn thiết kế một góc làm việc đẹp ấn tượng với phong cách nữ tính, dịu dàng, hãy xác định phong cách trang trí. Khi tìm được phong cách yêu thích, việc tạo một góc làm việc nữ tính là hoàn toàn dễ dàng khi thực hiện thêm những gợi ý tuyệt vời trong bài viết dưới đây.</p>\r\n\r\n<h2>Chọn bàn làm việc</h2>\r\n\r\n<p>Bàn làm việc là vật dụng chính, có yếu tố quan trọng trong việc định hình phong cách trang trí. Vì vậy, kinh nghiệm để chọn một chiếc bàn như ý đó là bạn nên chọn gam màu cho bàn. Bàn làm việc sẽ khiến bạn yêu công việc hơn, tập trung và có hứng thú khi làm việc nhờ vào việc chọn lựa màu sắc của bàn với gam màu yêu thích.</p>\r\n\r\n<p style="text-align:center"><img alt="Bàn làm việc nên chọn màu tươi mới" src="http://img.dothi.net/2017/04/10/0Ln61R5F/48-3071.jpg" style="height:750px; width:500px" title="Bàn làm việc nên chọn màu tươi mới"><br><em>Bàn làm việc nên chọn màu tươi mới.</em></p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/10/0Ln61R5F/10-068f.jpg" style="height:748px; width:500px"></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc" src="http://img.dothi.net/2017/04/10/0Ln61R5F/66-95e3.jpg" style="height:700px; width:500px" title="Màu phổ biến được chọn thường là màu trắng"><br><em>Màu phổ biến được chọn thường là màu trắng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Để bàn làm việc thêm " src="http://img.dothi.net/2017/04/10/0Ln61R5F/70-ec78.jpg" style="height:749px; width:500px" title="Để bàn làm việc thêm nữ tính, bạn nên chọn những gam màu nhạt, thêm những họa tiết, hoa văn có đường nét mềm mại."><br><em>Để bàn làm việc thêm nữ tính, bạn nên chọn những gam màu nhạt, thêm<br>\r\nnhững họa tiết, hoa văn có đường nét mềm mại.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc" src="http://img.dothi.net/2017/04/10/0Ln61R5F/56-917c.jpg" style="height:750px; width:500px" title="Những đường uốn lượn đơn giản nhưng vẫn đủ để giúp góc làm việc trở nên ấn tượng hơn."><br><em>Những đường uốn lượn đơn giản nhưng vẫn đủ để giúp góc làm<br>\r\nviệc trở nên ấn tượng hơn.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nữ tính cho góc làm việc" src="http://img.dothi.net/2017/04/10/0Ln61R5F/32-562a.jpg" style="height:889px; width:500px" title="Đường nét hoa văn ở chân bàn tạo vẻ đẹp nữ tính cho góc làm việc."><br><em>Đường nét hoa văn ở chân bàn tạo vẻ đẹp nữ tính cho góc làm việc.</em></p>\r\n\r\n<h2>Chọn tủ, kệ đựng đồ</h2>\r\n\r\n<p>Tủ và kệ đựng đồ giúp cho căn phòng, góc làm việc trở nên gọn gàng, ngăn nắp. Tủ kệ đựng đồ còn có thể mang đến dấu ấn đặc biệt cho phong cách trang trí mà bạn lựa chọn. Vì thể, bạn có thể lựa chọn cho mình một chiếc tủ kệ với màu sắc bắt mắt, có thể có sắc màu tương đồng với bàn hay ghế làm việc. Cách làm này giúp cho góc làm việc thêm xinh xắn, dễ thương hơn rất nhiều.</p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc" src="http://img.dothi.net/2017/04/10/0Ln61R5F/53-b0be.jpg" style="height:753px; width:500px" title="Chọn kệ đơn giản."><br><em>Chọn kệ đơn giản.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc" src="http://img.dothi.net/2017/04/10/0Ln61R5F/42-dabf.jpg" style="height:690px; width:500px" title="Kiểu dáng và màu sắc phù hợp với không gian."><br><em>Kiểu dáng và màu sắc phù hợp với không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc nữ tính" src="http://img.dothi.net/2017/04/10/0Ln61R5F/01-0dd9.jpg" style="height:749px; width:500px" title="Kệ nên cùng tông màu với bàn hoặc ghế."><br><em>Kệ nên cùng tông màu với bàn hoặc ghế.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc thêm sức sống" src="http://img.dothi.net/2017/04/10/0Ln61R5F/41-8421.jpg" style="height:750px; width:500px" title="Trang trí một chút trên kệ để góc làm việc thêm sức sống"><br><em>Trang trí một chút trên kệ để góc làm việc thêm sức sống.</em></p>\r\n\r\n<h2>Lựa chọn ánh sáng</h2>\r\n\r\n<p>Nếu như những góc làm việc thông thường, bạn chỉ cần thêm một chiếc đèn bàn với ánh sáng phù hợp để cung cấp đủ ánh sáng khi ngồi vào bàn. Tuy nhiên, nếu yêu thích công việc, muốn làm việc tại nhà với thời gian tương đối nhiều, bạn có thể chọn những loại đèn chùm với kiểu dáng phù hợp với phong cách trang trí. Đèn không chỉ cung cấp đầy đủ ánh sáng, mà còn tạo gu phong cách đầy tinh tế cho không gian.</p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc" src="http://img.dothi.net/2017/04/10/0Ln61R5F/20170410080316660528-8d39.jpg" style="height:750px; width:500px" title="Tạo sự hài hòa giữa ánh sáng tự nhiên và nhân tạo."><br><em>Tạo sự hài hòa giữa ánh sáng tự nhiên và nhân tạo.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc đẹp" src="http://img.dothi.net/2017/04/10/0Ln61R5F/47-2214.jpg" style="height:746px; width:500px" title="Thêm đèn chiếu sáng thả trần như điểm nhấn ấn tượng cho nội thất."><br><em>Thêm đèn chiếu sáng thả trần như điểm nhấn ấn tượng cho nội thất.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc nữ tính" src="http://img.dothi.net/2017/04/10/0Ln61R5F/19-2d3a.jpg" style="height:880px; width:500px" title="Ánh sáng tạo nét cá tính."><br><em>Ánh sáng tạo nét cá tính.</em></p>\r\n\r\n<p style="text-align:center"><img alt="góc làm việc đẹp" src="http://img.dothi.net/2017/04/10/0Ln61R5F/88-106c.jpg" style="height:751px; width:500px" title="Tạo sự cân đối giữa ánh sáng và màu sắc."><br><em>Tạo sự cân đối giữa ánh sáng và màu sắc.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:31', '2017-05-05 14:51:31', 1, 1),
(9, 'Cách trang trí phòng khách vừa sang, vừa thoáng', 'cach-trang-tri-phong-khach-vua-sang-vua-thoang', 'Cach trang tri phong khach vua sang, vua thoang', 'Không gian phòng khách luôn được gia chủ quan tâm bởi không gian này là không gian đầu tiên khi bước vào căn hộ của gia đình. Chính vì thế, việc trang trí nội thất phòng khách là điều mà gia chủ luôn quan tâm.', 'https://img.dothi.net/2017/04/08/0Ln61R5F/48-fd88.jpg', 1, '<p style="text-align:center"><img src="http://img.dothi.net/2017/04/08/0Ln61R5F/48-fd88.jpg" style="height:320px; text-align:center; width:500px"></p>\r\n\r\n<p>Khi thiết kế nội thất phòng khách, hãy sử dụng những màu sắc dịu mát, đặc biệt nếu không gian này đã có sẵn một tầm nhìn đẹp, thoáng thì bạn chỉ cần lựa chọn các món nội thất có phong cách phù hợp với cảnh quan thì sự kết hợp giữa thiên nhiên cùng chất liệu mềm mại của gối ôm, ghế ngồi, màu sắc tươi sáng dịu nhẹ của các món nội thất sẽ mang lại cảm giác thanh thản và thư thái trong tâm hồn cho các thành viên trong gia đình cũng như khách đến chơi nhà khi bước vào không gian này.</p>\r\n\r\n<p>Sắc màu không chỉ là một chiếc áo đẹp mà bạn cần sử dụng một cách khéo léo và phù hợp trong thiết kế nội thất, nó còn có những ảnh hưởng rất mạnh mẽ đến cảm xúc của con người. Với lợi điểm này thì bạn cần cân nhắc thật kỹ khi chọn màu sơn nhà, màu rèm cửa, màu của bàn ghế và các đồ nội thất khác trong phòng khách.</p>\r\n\r\n<h2>Các chi tiết kiến trúc</h2>\r\n\r\n<p>Với phòng khách được sơn màu trắng, bạn sẽ làm nổi bật lên các chi tiết kiến trúc độc đáo của phòng khách như dầm gỗ, cột trang trí. Những chi tiết kiến trúc này sẽ bị mờ nhạt đi trong căn phòng có nhiều màu sắc.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/08/0Ln61R5F/10-f984.jpg" style="height:334px; width:500px"></p>\r\n\r\n<h2>Tạo một không khí thân thiện trong gia đình</h2>\r\n\r\n<p>Một phòng khách với màu sắc trung tính sẽ tạo không gian gần gũi và thân thiện trong da đình. Gia chủ hoàn toàn có thể chọn màu màu trắng, màu xám đen hoặc màu nâu cho các chi tiết trang trí hoặc nội thất trong căn phòng nhà mình.</p>\r\n\r\n<h2>Tạo vẻ sang trọng</h2>\r\n\r\n<p>Một phòng khách với màu sắc trung tính làm chủ đạo không hề nhạt nhẽo như bạn nghĩ. Nếu biết kết hợp màu sơn tường, thảm trải sàn và nội thất, gam màu trung tính sẽ tạo cho phòng khách nhà bạn vẻ sang trọng, quyến rũ. Các gam màu như đen, màu be trắng, màu xám đều rất đơn giản và dễ dàng được lựa chọn để phù hợp với tiêu chí đơn giản, hiện đại.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/08/0Ln61R5F/66-782b.jpg" style="height:333px; width:500px"></p>\r\n\r\n<h2>Làm nổi bật chi tiết</h2>\r\n\r\n<p>Phòng khách có tông màu trung tính làm chủ đạo sẽ làm nổi bật những chi tiết điểm nhấn trong phòng khách nhà bạn hơn những phòng khách nhiều màu sắc. Tuy nhiên, khi trang trí phòng khách với gam màu trung lập, bạn nên chú ý đến những chi tiết nhỏ để căn phòng không bị nhàm chán. Không nên chọn những màu quá chói mắt.</p>\r\n\r\n<h2>Tạo cảm giác thoải mái và ấm áp</h2>\r\n\r\n<p>Màu vàng nhạt của bức tường phòng khách sẽ giúp bạn tạo cảm giác thư thái, ấm cúng cho phòng khách nhà mình. Gia chủ cũng nên lựa chọn nội thất có kết cấu mềm mại như lông nhung, len, lụa để trang trí cho phòng khách nhà mình.</p>\r\n\r\n<p>Ngoài ra, khi chọn cây cảnh để trong phòng khách nên chọn những loại cây thích nghi được không gian sinh tồn trong nhà mình, ví dụ ánh sáng, nhiệt độ, độ ẩm, điều kiện gió… Màu sắc của cây phải hài hòa với không gian nội thất.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Báo Xây dựng Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:31', '2017-05-05 14:51:31', 1, 1),
(10, 'Tư vấn thiết kế 3 mẫu phòng khách giá rẻ dưới 15 triệu vẫn đẹp hút hồn', 'tu-van-thiet-ke-3-mau-phong-khach-gia-re-duoi-15-trieu-van-dep-hut-hon', 'Tu van thiet ke 3 mau phong khach gia re duoi 15 trieu van dep hut hon', 'Với mức đầu tư dưới 15 triệu bạn sẽ có được một phòng khách như thế nào? Hãy xem câu giải đáp dưới đây của KTS.', 'https://img.dothi.net/2017/04/07/0Ln61R5F/48-6034.jpg', 1, '<p>Với mức đầu không quá 15 triệu cho việc thiết kế phòng khách thì bạn không nên cải tạo phần tường xây và và xây dựng lại không gian. Chúng ta chỉ quan tâm đến việc trang trí decor bằng những đồ nội thất rời mua sẵn với giá cả phải chăng. Những đồ nội thất phong cách Scandinavian sẽ phù hợp trong trường hợp này.</p>\r\n\r\n<p>Cách bố trí đồ đạc cho một không gian phòng khách sẽ gồm sofa, bàn trà và kệ tivi. Dưới đây là những gợi ý về việc lựa chọn ba đồ nội thất đó:</p>\r\n\r\n<p>- Về sofa bạn nên lựa chọn những mẫu kích thước nhỏ, màu sắc pastel vui mắt, cách bố trí có thể là một sofa chứ L hoặc một sofa đôi kết hợp cùng ghế thư giãn. Lưu ý rằng cách lựa chọn gối trang trí cho sofa cũng rất quan trọng. Mảng tường sau sofa có thể treo tranh, dán decor chữ hay gương trang trí trong tùy không gian.</p>\r\n\r\n<p>- Đối với chọn lựa bàn trà phòng khách, nếu bạn chọn bàn trà gỗ tự nhiên thì giá thành sẽ cao hơn gỗ công nghiệp. Vì thế nếu muốn tiết kiệm chi phí, các bạn nên chọn bàn trà gỗ công nghiệp như gỗ HDF, MDF.</p>\r\n\r\n<p>- Kệ tivi là một phần không thể thiếu trong việc trang trí không gian phòng khách, nên sử dụng những dạng kệ kích thước nhỏ và vật liệu gỗ công nghiệp để tiết kiệm chi phí.</p>\r\n\r\n<h2>Tư vấn giá cả chung:</h2>\r\n\r\n<p><strong><em>Đồ nội thất:</em></strong></p>\r\n\r\n<p>- Sofa: Kích thước (dài x rộng ): 1800 x 800. Giá: 5 - 7 triệu đồng.</p>\r\n\r\n<p>- Bàn trà: 1,5 -2 triệu đồng.</p>\r\n\r\n<p>- Kệ TV: Giá 3 – 5 triệu đồng.</p>\r\n\r\n<p>- Decor trang trí: 500 - 1 triệu đồng.</p>\r\n\r\n<p>Tổng chi phí: 10,5 - 15 triệu</p>\r\n\r\n<p>Và dưới đây là 3 mẫu phòng khách mà KTS tư vấn thiết kế không cần quá xa xỉ đến vài chục triệu đồng cũng sẽ khiến bạn phải bất ngờ.</p>\r\n\r\n<h2>Phòng khách thứ nhất:</h2>\r\n\r\n<p>Lấy sắc xanh pastel làm chủ đạo, thể hiện ở bộ sofa và những mảng nhấn tường. Các mảng tường được decor phóng khoáng và cá tính bằng gương và chữ Typography</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách" src="http://img.dothi.net/2017/04/07/0Ln61R5F/48-6034.jpg" style="height:271px; width:500px" title="Bàn trà gỗ công nghiệp mua sẵn duyên dáng cùng sofa"><br><em>Bàn trà gỗ công nghiệp mua sẵn duyên dáng cùng sofa</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách đẹp" src="http://img.dothi.net/2017/04/07/0Ln61R5F/10-dc31.jpg" style="height:271px; width:500px" title="Gương deco và vẽ chữ Typography ấn tượng."><br><em>Gương deco và vẽ chữ Typography ấn tượng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách nhà đẹp" src="http://img.dothi.net/2017/04/07/0Ln61R5F/66-f759.jpg" style="height:271px; width:500px" title="Kệ tivi treo tường nhỏ vật liệu gỗ công nghiệp."><br><em>Kệ tivi treo tường nhỏ vật liệu gỗ công nghiệp.</em></p>\r\n\r\n<h2>Căn hộ thứ hai:</h2>\r\n\r\n<p>Tría ngược với gam màu nhẹ nhàng ở căn hộ thứ nhất, căn hộ thứ 2 với thiết kế hai màu cơ bản là màu trắng và màu vàng sồi khiến không gian phòng khách trở nên ấm áp hơn. Vị trí của không gian phòng khách này nằm ở trung tâm căn hộ.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách" src="http://img.dothi.net/2017/04/07/0Ln61R5F/70-c281.jpg" style="height:309px; width:500px" title="Diện tường dán giấy hoa văn gạch trần dọc theo phòng khách và phòng ăn chính là không gian để bạn thỏa sức sáng tạo với tranh, giá kệ và đèn treo tường."><br><em>Diện tường dán giấy hoa văn gạch trần dọc theo phòng khách và phòng ăn<br>\r\nchính là không gian để bạn thỏa sức sáng tạo với tranh, giá kệ và đèn treo tường</em></p>\r\n\r\n<p style="text-align:center"><img alt="không gian phòng khách" src="http://img.dothi.net/2017/04/07/0Ln61R5F/56-1e92.jpg" style="height:309px; width:500px" title="Những chậu cây nhỏ và tinh tế đặt vào những góc trống mang thêm sức sống vào không gian phòng khách."><br><em>Những chậu cây nhỏ và tinh tế đặt vào những góc trống mang thêm sức<br>\r\nsống vào không gian phòng khách.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách đẹp" src="http://img.dothi.net/2017/04/07/0Ln61R5F/32-ee9c.jpg" style="height:400px; width:500px" title="Mặt cắt của căn hộ thứ 2"><br><em>Mặt cắt của căn hộ thứ 2</em></p>\r\n\r\n<h2>Phòng khách thứ ba</h2>\r\n\r\n<p>Đối lập với 2 gam màu nhẹ ở trên là một gợi ý cho phong cách khác, sử dụng màu nâu trầm, những vật liệu sofa da và bàn trà sắt đen và hệ đèn treo trần mang tính chất công nghiệp hơn.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách đẹp" src="http://img.dothi.net/2017/04/07/0Ln61R5F/53-b4cd.jpg" style="height:309px; width:500px" title="Đèn treo trần và đèn ray chiểu điểm chính là những điểm nhấn bằng ánh sáng trong không gian nội thất phòng khách này."><br><em>Đèn treo trần và đèn ray chiểu điểm chính là những điểm nhấn bằng ánh<br>\r\nsáng trong không gian nội thất phòng khách này.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách " src="http://img.dothi.net/2017/04/07/0Ln61R5F/42-1f1b.jpg" style="height:309px; width:500px" title="Không gian sinh động và ấm áp hơn với những mẫu gối decor và tranh trang trí ấn tượng."><br><em>Không gian sinh động và ấm áp hơn với những mẫu gối decor và tranh<br>\r\ntrang trí ấn tượng.</em></p>\r\n\r\n<p style="text-align: right;"><em>KTS tư vấn: Lê Quang Thạch</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:32', '2017-05-05 14:51:32', 1, 1),
(11, 'Những mẫu phòng phủ đẹp hiện đại và phong cách', 'nhung-mau-phong-phu-dep-hien-dai-va-phong-cach', 'Nhung mau phong phu dep hien dai va phong cach', 'Mỗi thiết kế, sắc màu đều giúp phòng ngủ có nét độc đáo riêng và giúp bạn có thêm năng lượng dồi dào cho mỗi ngày thức dậy.', 'https://img.dothi.net/2017/04/05/0Ln61R5F/48-3266.jpg', 1, '<p style="text-align:center"><img alt="Phòng ngủ đẹp" src="http://img.dothi.net/2017/04/05/0Ln61R5F/48-3266.jpg" style="height:349px; text-align:center; width:500px" title="Không bỏ qua tầng áp mái, chủ nhân biến nơi này thành phòng ngủ lý tưởng. Từ đây, có thể thoải mái ngắm trời, ngắm cây xanh để đầu óc thư giãn."><br><em>Không bỏ qua tầng áp mái, chủ nhân biến nơi này thành phòng ngủ lý tưởng.<br>\r\nTừ đây, có thể thoải mái ngắm trời, ngắm cây xanh để đầu óc thư giãn.</em></p>\r\n\r\n<p style="text-align:center"><img alt="mẫu phòng ngủ đẹp" src="http://img.dothi.net/2017/04/05/0Ln61R5F/10-9b8d.jpg" title="Với ô cửa kính lớn, chiếc giường ngủ hình cánh buồm, chủ nhân căn phòng luôn được thư thái như đang đi trên biển thong dong ngắm mây trời, non nước."><br><em>Với ô cửa kính lớn, chiếc giường ngủ hình cánh buồm, chủ nhân căn phòng<br>\r\nluôn được thư thái như đang đi trên biển thong dong ngắm mây trời, non nước.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 3" src="http://img.dothi.net/2017/04/05/0Ln61R5F/66-1e46.jpg" style="height:455px; width:500px" title="Không quá cầu kỳ trong nội thất. Phòng chỉ cần chiếc giường ngủ được thiết kế độc, lạ như này cũng đủ để chủ nhân có nhiều cảm hứng rồi."><br><em>Không quá cầu kỳ trong nội thất. Phòng chỉ cần chiếc giường ngủ được thiết<br>\r\nkế độc, lạ như này cũng đủ để chủ nhân có nhiều cảm hứng rồi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 4" src="http://img.dothi.net/2017/04/05/0Ln61R5F/70-9602.jpg" style="height:564px; width:500px" title="Sự kết hợp giữa đỏ, trắng và xám tạo nên sự tinh tế, nhẹ nhàng cho căn phòng."><br><em>Sự kết hợp giữa đỏ, trắng và xám tạo nên sự tinh tế, nhẹ nhàng cho căn phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 5" src="http://img.dothi.net/2017/04/05/0Ln61R5F/56-7796.jpg" style="height:282px; width:500px" title="Căn phòng này vừa là nơi làm việc, vừa là nơi ngủ. 2 nơi được tách biệt với nhau bởi 1 giá sách."><br><em>Căn phòng này vừa là nơi làm việc, vừa là nơi ngủ. 2 nơi được tách biệt<br>\r\nvới nhau bởi 1 giá sách.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 5" src="http://img.dothi.net/2017/04/05/0Ln61R5F/32-d7fe.jpg" style="height:563px; width:500px" title="Xám - trắng là gam màu chủ đạo của căn phòng ngủ này. Hệ thống đèn được thiết kế độc đáo làm cho phòng trở nên huyền bí hơn."><br><em>Xám - trắng là gam màu chủ đạo của căn phòng ngủ này. Hệ thống đèn được<br>\r\nthiết kế độc đáo làm cho phòng trở nên huyền bí hơn.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 6" src="http://img.dothi.net/2017/04/05/0Ln61R5F/53-e324.jpg" style="height:250px; width:500px" title="Căn phòng này là sự tích hợp cả nơi ngủ và khu vực thư giãn. Một mảng tường màu nâu sẽ là điểm nổi bật của căn phòng. Trên đó, gia chủ có thể bày biện giá sách hoặc những đồ dùng cần thiết."><br><em>Căn phòng này là sự tích hợp cả nơi ngủ và khu vực thư giãn. Một mảng tường<br>\r\nmàu nâu sẽ là điểm nổi bật của căn phòng. Trên đó, gia chủ có thể bày biện<br>\r\ngiá sách hoặc những đồ dùng cần thiết.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 7" src="http://img.dothi.net/2017/04/05/0Ln61R5F/42-4509.jpg" style="height:751px; width:500px" title="Phong cách cổ điển dường như được đưa gọn vào căn phòng này. Mọi thứ dường như đều là màu nâu gỗ giản dị, mộc mạc mà gần gũi. Một tấm cửa kính lớn ngay cạnh giường ngủ sẽ là nơi thư giãn tuyệt vời sau mỗi ngày làm việc vất vả và khơi nguồn cảm hứng cho bạn mỗi sáng thức dậy."><br><em>Phong cách cổ điển dường như được đưa gọn vào căn phòng này. Mọi thứ<br>\r\ndường như đều là màu nâu gỗ giản dị, mộc mạc mà gần gũi. Một tấm cửa kính<br>\r\nlớn ngay cạnh giường ngủ sẽ là nơi thư giãn tuyệt vời sau mỗi ngày làm việc<br>\r\nvất vả và khơi nguồn cảm hứng cho bạn mỗi sáng thức dậy.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 8" src="http://img.dothi.net/2017/04/05/0Ln61R5F/01-3629.jpg" style="height:670px; width:500px" title="Một màu trắng tinh khôi bao trùm lấy cả căn phòng rộng. Tuyệt vời hơn khi mỗi bình minh thức dậy được đón tia nắng mặt trời tại đây."><br><em>Một màu trắng tinh khôi bao trùm lấy cả căn phòng rộng. Tuyệt vời hơn khi<br>\r\nmỗi bình minh thức dậy được đón tia nắng mặt trời tại đây.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 9" src="http://img.dothi.net/2017/04/05/0Ln61R5F/41-95e5.jpg" style="height:333px; width:500px" title="Lãng mạn với rèm che, kiểu giường ngủ này rất phù hợp khi muốn riêng tư trong căn nhà kính."><br><em>Lãng mạn với rèm che, kiểu giường ngủ này rất phù hợp khi muốn<br>\r\nriêng tư trong căn nhà kính.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 10" src="http://img.dothi.net/2017/04/05/0Ln61R5F/20170405094929896528-b643.jpg" style="height:334px; width:500px" title="Mẫu phòng ngủ tinh tế với đồ nội thất hoàn toàn mãu trắng dành cho những phụ nữ yêu sạch sẽ."><br><em>Mẫu phòng ngủ tinh tế với đồ nội thất hoàn toàn mãu trắng dành cho<br>\r\nnhững phụ nữ yêu sạch sẽ.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 11" src="http://img.dothi.net/2017/04/05/0Ln61R5F/47-a370.jpg" style="height:282px; width:500px" title=''Phòng ngủ mộc mạc, giản dị với gạch thô. Đối diện là khung cửa thoáng đãng sẽ là nguồn cảm hứng bất tận cho những ai có "máu nghệ sĩ".''><br><em>Phòng ngủ mộc mạc, giản dị với gạch thô. Đối diện là khung cửa thoáng đãng<br>\r\nsẽ là nguồn cảm hứng bất tận cho những ai có "máu nghệ sĩ".</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 12" src="http://img.dothi.net/2017/04/05/0Ln61R5F/19-32e8.jpg" style="height:333px; width:500px" title="Hiện đại và hơi phá cách, người chủ thiết kế này có lẽ thích tư duy theo hướng trừu tượng..."><br><em>Hiện đại và hơi phá cách, người chủ thiết kế này có lẽ thích tư duy theo<br>\r\nhướng trừu tượng...</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 13" src="http://img.dothi.net/2017/04/05/0Ln61R5F/88-ae9a.jpg" style="height:333px; width:500px" title="Thư giãn hoàn hảo, đơn giản, tiện dụng và đủ chức năng, 1 căn phòng ngủ với thiết kế Châu âu đúng nghĩa."><br><em>Thư giãn hoàn hảo, đơn giản, tiện dụng và đủ chức năng, 1 căn phòng ngủ<br>\r\nvới thiết kế Châu âu đúng nghĩa.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 14" src="http://img.dothi.net/2017/04/05/0Ln61R5F/81-a5ce.jpg" style="height:333px; width:500px" title="Phòng ngủ thiết kế hiện đại, ứng dụng công nghệ cao, phong cách hoàng gia."><br><em>Phòng ngủ thiết kế hiện đại, ứng dụng công nghệ cao, phong cách hoàng gia.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 15" src="http://img.dothi.net/2017/04/05/0Ln61R5F/54-8b3a.jpg" style="height:334px; width:500px" title="Thiết kế cầu kỳ và nhiều chi tiết này chắc chắn là của một cô gái rất yêu nghệ thuật và đầy đam mê sáng tạo."><br><em>Thiết kế cầu kỳ và nhiều chi tiết này chắc chắn là của một cô gái rất<br>\r\nyêu nghệ thuật và đầy đam mê sáng tạo.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 15" src="http://img.dothi.net/2017/04/05/0Ln61R5F/82-5a11.jpg" style="height:333px; width:500px" title="Thiết kế sang trọng, đẳng cấp theo phong cách quý tộc, những đồ nội thất đều được chạm khắc cầu kỳ."><br><em>Thiết kế sang trọng, đẳng cấp theo phong cách quý tộc, những đồ nội thất<br>\r\nđều được chạm khắc cầu kỳ.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 16" src="http://img.dothi.net/2017/04/05/0Ln61R5F/14-6472.jpg" style="height:333px; width:500px" title="Thiết kế vách ngăn kiểu nhật, kết hợp cùng ánh sáng xanh dịu dàng mang lại vẻ đẹp thanh thoát."><br><em>Thiết kế vách ngăn kiểu nhật, kết hợp cùng ánh sáng xanh dịu dàng mang<br>\r\nlại vẻ đẹp thanh thoát.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 16" src="http://img.dothi.net/2017/04/05/0Ln61R5F/03-0c4c.jpg" style="height:333px; width:500px" title="Thiết kế phòng ngủ tối giản với 2 màu đen trắng, giấy dán tường và bộ đèn chùm khiến thiết kế này trở nên sang trọng."><br><em>Thiết kế phòng ngủ tối giản với 2 màu đen trắng, giấy dán tường và bộ<br>\r\nđèn chùm khiến thiết kế này trở nên sang trọng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp 17" src="http://img.dothi.net/2017/04/05/0Ln61R5F/01-2e0a.jpg" style="height:333px; width:500px" title="Phòng ngủ nam tính và có thiết kế lạ, chắc hẳn những quý ông độc thân sẽ rất thích thiết kế này."><br><em>Phòng ngủ nam tính và có thiết kế lạ, chắc hẳn những quý ông độc<br>\r\nthân sẽ rất thích thiết kế này.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo VOV)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:33', '2017-05-05 14:51:33', 1, 1),
(12, 'Tủ bếp đa năng - bí quyết cho việc tiết kiệm không gian trong nhà bếp nhỏ', 'tu-bep-da-nang-bi-quyet-cho-viec-tiet-kiem-khong-gian-trong-nha-bep-nho', 'Tu bep da nang - bi quyet cho viec tiet kiem khong gian trong nha bep nho', 'Những chiếc tủ đa năng đựng được nhiều đồ luôn đúng với các nhà bếp nhỏ. Nếu bạn đang tu sửa nhà bếp hãy xem những mẫu thiết kế với tủ bếp dưới đây, nó sẽ giúp ích được rất nhiều cho nhà bạn đó.', 'https://img.dothi.net/2017/04/04/0Ln61R5F/48-86bf.jpg', 1, '<p>Một cách tuyệt vời cho nhà bếp của bạn khi chỉ cần kéo và mở cánh tủ thì đồ đạc đã hiện ra đầy đủ, ngay tức khắc mà lại không tốn quá nhiều diện tích trong phòng ăn của bạn. Đó là nhờ những chiếc<strong> </strong>tủ bếp Genius, công cụ chứa vạn đồ tiện ích cho nhà bếp có diện tích nhỏ.</p>\r\n\r\n<p style="text-align:center"><img alt="tủ bếp đa năng" src="http://img.dothi.net/2017/04/04/0Ln61R5F/48-86bf.jpg" style="width:500px" title="Tủ bếp đa năng - bí quyết cho việc tiết kiệm không gian trong nhà bếp nhỏ"></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp đa năng" src="http://img.dothi.net/2017/04/04/0Ln61R5F/10-1970.jpg" style="width:500px" title="Một nhà bếp rất cần những không gian cất giữ tiện ích như thế này."><br><em>Một nhà bếp rất cần những không gian cất giữ tiện ích như thế này.<br>\r\nĐặc biệt là với các dụng cụ làm bếp lớn.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp thông minh" src="http://img.dothi.net/2017/04/04/0Ln61R5F/66-cbda.jpg" style="width:500px" title="Một tủ đựng thức ăn nhiều kệ được thiết kế để có sức chứa nhiều hơn và giúp căn bếp nhà bạn thêm gọn gàng, ngăn nắp."><br><em>Một tủ đựng thức ăn nhiều kệ được thiết kế để có sức chứa nhiều hơn và<br>\r\ngiúp căn bếp nhà bạn thêm gọn gàng, ngăn nắp.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/70-0a1f.jpg" style="width:500px" title="Trong thiết kế này, một ngăn kéo đi kèm bên cạnh chiếc tủ lạnh thật tuyệt vời."><br><em>Trong thiết kế này, một ngăn kéo đi kèm bên cạnh chiếc tủ lạnh thật tuyệt<br>\r\nvời. Nó giúp bạn ngốn đi kha khá đồ gia vị và đồ uống nhỏ đấy.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp cho nhà nhỏ" src="http://img.dothi.net/2017/04/04/0Ln61R5F/56-d93a.jpg" style="width:500px" title="Một thiết kế nhỏ dưới bệ bếp sẽ tiện lợi hơn cho bạn khi đựng những nồi, niêu, chảo... khi nấu ăn."><br><em>Một thiết kế nhỏ dưới bệ bếp sẽ tiện lợi hơn cho bạn khi đựng những nồi,<br>\r\nniêu, chảo... khi nấu ăn.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="nội thất nhà đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/32-e322.jpg" style="width:500px" title="Tận dụng không gian không sử dụng những khuôn bánh được đặt ngay ngắn và sạch sẽ."><br><em>Tận dụng không gian không sử dụng những khuôn bánh được đặt ngay<br>\r\nngắn và sạch sẽ.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/53-1fcd.jpg" style="width:500px" title="Thêm một chiếc tủ thu nhỏ cho phòng bếp là phương án tối ưu cho nhà bếp có diện tích nhỏ."><br><em>Thêm một chiếc tủ thu nhỏ cho phòng bếp là phương án tối ưu cho nhà<br>\r\nbếp có diện tích nhỏ.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp đa năng cho nhà nhỏ" src="http://img.dothi.net/2017/04/04/0Ln61R5F/42-baf7.jpg" style="width:500px" title="Nếu bạn không có chỗ để những dụng cụ lau sàn, hay vệ sinh thì có thể thực hiện theo cách này nhé."><br><em>Nếu bạn không có chỗ để những dụng cụ lau sàn, hay vệ sinh thì có thể thực<br>\r\nhiện theo cách này nhé.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp hiện đại" src="http://img.dothi.net/2017/04/04/0Ln61R5F/01-83a2.jpg" style="width:500px" title="Ngăn kéo tủ là một lựa chọn tuyệt vời, vừa vặn với góc nhà mà lại tích kiệm được diện tích."><br><em>Ngăn kéo tủ là một lựa chọn tuyệt vời, vừa vặn với góc nhà mà lại<br>\r\ntích kiệm được diện tích.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="bếp đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/41-4942.jpg" style="width:500px" title="Dụng cụ làm bếp được sắp sếp gọn gàng, ngăn nắp với thanh tủ chỉ chiếm 10cm."><br><em>Dụng cụ làm bếp được sắp sếp gọn gàng, ngăn nắp với thanh tủ chỉ<br>\r\nchiếm 10cm.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế tủ bếp đa năng" src="http://img.dothi.net/2017/04/04/0Ln61R5F/20170404131747137928-ff5c.jpg" style="width:500px" title="Một ngăn tủ với hai ngăn để đựng những dụng cụ ăn uống hàng ngày của bạn. "><br><em>Một ngăn tủ với hai ngăn để đựng những dụng cụ ăn uống hàng ngày của<br>\r\nbạn. Cũng khá tiện lợi cho công việc chuẩn bị bữa cơm khi bạn chỉ cần<br>\r\nlấy chúng ở cùng một chỗ.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp cho nhà chật" src="http://img.dothi.net/2017/04/04/0Ln61R5F/47-eaac.jpg" style="width:500px" title="Hoặc chỉ cần để chúng gọn gàng vào là được."><br><em>Hoặc chỉ cần để chúng gọn gàng vào là được.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="nội thất đa năng" src="http://img.dothi.net/2017/04/04/0Ln61R5F/19-9ce3.jpg" style="width:500px" title="Một ngăn kéo kết hợp với thùng rác phía dưới là một công trình nhà bếp thu nhỏ tuyệt vời."><br><em>Một ngăn kéo kết hợp với thùng rác phía dưới là một công trình nhà<br>\r\nbếp thu nhỏ tuyệt vời.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Trí thức trẻ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:34', '2017-05-05 14:51:34', 1, 1),
(13, '15 mẫu thiết kế giường ngủ đặc sắc các gia đình có con gái không thể bỏ qua', '15-mau-thiet-ke-giuong-ngu-dac-sac-cac-gia-dinh-co-con-gai-khong-the-bo-qua', '15 mau thiet ke giuong ngu dac sac cac gia dinh co con gai khong the bo qua', 'Tính tình và sở thích của các cô nhóc luôn thay đổi như chong chóng vì thế việc thiết kế giường ngủ cho các nàng là vô cùng khó khăn. Nhưng với 15 mẫu thiết kế dưới đây sẽ giúp các bậc phụ huynh không cần phải đau đầu thêm nữa.', 'https://img.dothi.net/2017/04/04/0Ln61R5F/48-dbcb.jpg', 1, '<p>Các mẫu thiết kế giường ngủ chúng tôi liệt kê dưới đây đều rất đầy đủ từ mẫu mã đến hình in, màu sắc sử dụng được cho là hoàn hảo nhất. Họa tiết chú lính, cây xanh, các loại trái cây, kem, hoa theo mùa đều đầy đủ. Lưu ý rằng những màu quá sáng hoặc những mẫu đậm quá có thể làm con bạn không ngủ ngon nên bạn cần hạn chế sử dụng những màu sắc này.</p>\r\n\r\n<p style="text-align:center"><img alt="giường ngủ đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/48-dbcb.jpg" style="height:500px; width:500px" title="1. Các hình que kem vui mắt đi cùng tông màu hồng phấn dễ thương rất hợp với các bé gái có tính tình dịu dàng, nết na."><br><em>1. Các hình que kem vui mắt đi cùng tông màu hồng phấn dễ thương rất hợp<br>\r\nvới các bé gái có tính tình dịu dàng, nết na</em></p>\r\n\r\n<p style="text-align:center"><img alt="giường ngủ đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/10-f7ec.jpg" style="height:500px; width:500px" title="2. Bộ ga giường với họa tiết và hoa văn in đậm đi kèm tường có cùng tông màu chủ đạo xanh dương với điểm nhấn là các chấm bi ngộ nghĩnh."><br><em>2. Bộ ga giường với họa tiết và hoa văn in đậm đi kèm tường có cùng tông<br>\r\nmàu chủ đạo xanh dương với điểm nhấn là các chấm bi ngộ nghĩnh.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Thiết kế giường nhiều màu sắc " src="http://img.dothi.net/2017/04/04/0Ln61R5F/66-6172.jpg" style="height:775px; width:500px" title="3. Thiết kế giường nhiều màu sắc này sử dụng tông màu nền là đen huyền bí nên các hoa văn và màu sắc khác cứ gọi là nổi bần bật lên."><br><em>3. Thiết kế giường nhiều màu sắc này sử dụng tông màu nền là đen huyền bí<br>\r\nnên các hoa văn và màu sắc khác cứ gọi là nổi bần bật lên.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Giường ngủ đầy sắc màu" src="http://img.dothi.net/2017/04/04/0Ln61R5F/70-878a.jpg" style="height:644px; width:500px" title="4. Giường ngủ đầy sắc màu với tông màu hồng đậm tôn lên sự nữ tính kết hợp với các bức tranh sinh động sẽ làm phòng ngủ của bé gái nhà bạn tràn ngập sức sống."><br><em>4. Giường ngủ đầy sắc màu với tông màu hồng đậm tôn lên sự nữ tính<br>\r\nkết hợp với các bức tranh sinh động sẽ làm phòng ngủ của bé gái nhà bạn<br>\r\ntràn ngập sức sống</em></p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế giường đẹp" src="http://img.dothi.net/2017/04/04/0Ln61R5F/56-96fd.jpg" style="height:528px; width:500px" title="5. Bạn có từng nhớ chúng tôi đã đề cập đến việc trang trí hoa văn giọt nước không. Đây chính là thiết kế đó, rất đáng yêu phải không nào."><br><em>5. Bạn có từng nhớ chúng tôi đã đề cập đến việc trang trí hoa văn giọt nước<br>\r\nkhông. Đây chính là thiết kế đó, rất đáng yêu phải không nào.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Thêm một thiết kế giường" src="http://img.dothi.net/2017/04/04/0Ln61R5F/32-840d.jpg" style="height:500px; width:500px" title="6. Thêm một thiết kế giường với hoa văn hình giọt nước nữa. Điểm nhấn thú vị của thiết kế này đến từ lớp trang trí phía trong của chăn. Bạn có nhìn ra không đó là hình cầu vồng bảy sắc đẹp mắt nối liền nhau."><br><em>6. Thêm một thiết kế giường với hoa văn hình giọt nước nữa. Điểm nhấn thú vị<br>\r\ncủa thiết kế này đến từ lớp trang trí phía trong của chăn. Bạn có nhìn ra không<br>\r\nđó là hình cầu vồng bảy sắc đẹp mắt nối liền nhau</em></p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế giường đẹp cho bé gái" src="http://img.dothi.net/2017/04/04/0Ln61R5F/53-ba88.jpg" style="height:881px; width:500px" title="7. Mẫu thiết kế này lấy ý tưởng từ những câu chuyện cổ tích. Những hoa văn sử dụng có thể kế đến như: hoa, cỏ, động vật và cây cối."><br><em>7. Mẫu thiết kế này lấy ý tưởng từ những câu chuyện cổ tích. Những hoa<br>\r\nvăn sử dụng có thể kế đến như: hoa, cỏ, động vật và cây cối.</em></p>\r\n\r\n<p style="text-align:center"><img alt="mẫu thiết kế giường" src="http://img.dothi.net/2017/04/04/0Ln61R5F/42-fd1d.jpg" style="height:600px; width:500px" title="8. Đơn giản hơn so với các mẫu thiết kế trước, tại mẫu thiết kế giường cho bé gái này màu xám và hồng phấn được kết hợp với nhau hoàn hảo. Cặp đôi đèn lồng và voi cũng tạo ra điểm nhấn thú vị."><br><em>8. Đơn giản hơn so với các mẫu thiết kế trước, tại mẫu thiết kế giường cho bé gái<br>\r\nnày màu xám và hồng phấn được kết hợp với nhau hoàn hảo. Cặp đôi đèn<br>\r\nlồng và voi cũng tạo ra điểm nhấn thú vị.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Mẫu giường ngủ đáng yêu" src="http://img.dothi.net/2017/04/04/0Ln61R5F/01-7dda.jpg" style="height:748px; width:500px" title="9. Mẫu giường ngủ đáng yêu với các hình tim dễ thương xếp đầy lên chăn này sẽ làm con gái của bạn thích mê cho mà xem. Không những thế việc trang trí thêm thảm lông trắng muốt cũng tạo sự ấm áp cho không gian."><br><em>9. Mẫu giường ngủ đáng yêu với các hình tim dễ thương xếp đầy lên chăn này<br>\r\nsẽ làm con gái của bạn thích mê cho mà xem. Không những thế việc trang trí thêm<br>\r\nthảm lông trắng muốt cũng tạo sự ấm áp cho không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế giường cho bé gái" src="http://img.dothi.net/2017/04/04/0Ln61R5F/41-31e7.jpg" style="height:610px; width:500px" title="10. Phong cách Nhật Bản được ứng dụng vào mẫu thiết kế này rất hoàn hảo. Đối với ai yêu thích hoa anh đào thì nên áp dụng nó vào ngôi nhà của mình ngay lập tức."><br><em>10. Phong cách Nhật Bản được ứng dụng vào mẫu thiết kế này rất hoàn hảo.<br>\r\nĐối với ai yêu thích hoa anh đào thì nên áp dụng nó vào ngôi nhà của<br>\r\nmình ngay lập tức</em></p>\r\n\r\n<p style="text-align:center"><img alt="giường ngủ cho bé" src="http://img.dothi.net/2017/04/04/0Ln61R5F/20170404081401407528-5505.jpg" style="height:539px; width:500px" title="11. Bạn đã thấy mùa hè sôi động qua thiết kế này chưa. Với các loài đồ ăn dễ thương miền nhiệt đới được in ở chăn thế này sẽ giúp không gian phòng ngủ của con bạn tràn đầy năng lượng và ánh sáng đó."><br><em>11. Bạn đã thấy mùa hè sôi động qua thiết kế này chưa. Với các loài đồ ăn<br>\r\ndễ thương miền nhiệt đới được in ở chăn thế này sẽ giúp không gian phòng ngủ<br>\r\ncủa con bạn tràn đầy năng lượng và ánh sáng đó.</em></p>\r\n\r\n<p style="text-align:center"><img alt="mẫu giường ngủ đẹp cho bé" src="http://img.dothi.net/2017/04/04/0Ln61R5F/47-8150.jpg" style="height:776px; width:500px" title="12. Một mẫu giường ngủ sát đất với khung và thành giường vườn cao lên che chắn giống như hình thù của một ngôi nhà mini. Màu hồng phấn đi kèm sẽ làm cô công chúa nhỏ nhà bạn thích thú cho mà xem."><br><em>12. Một mẫu giường ngủ sát đất với khung và thành giường vườn cao lên che<br>\r\nchắn giống như hình thù của một ngôi nhà mini. Màu hồng phấn đi kèm sẽ<br>\r\nlàm cô công chúa nhỏ nhà bạn thích thú cho mà xem.</em></p>\r\n\r\n<p style="text-align:center"><img alt="giường ngủ cho bé gái" src="http://img.dothi.net/2017/04/04/0Ln61R5F/19-4c76.jpg" style="height:500px; width:500px" title="13. Màu đệm trung tính kết hợp với chất liệu gỗ từ giường làm không gian phòng ngủ cô các cô gái mang hơi thở đồng quê thật nhẹ nhàng."><br><em>13. Màu đệm trung tính kết hợp với chất liệu gỗ từ giường làm không gian phòng<br>\r\nngủ cô các cô gái mang hơi thở đồng quê thật nhẹ nhàng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Một chiếc giường ngủ " src="http://img.dothi.net/2017/04/04/0Ln61R5F/88-9cf3.jpg" style="height:645px; width:500px" title="14. Một chiếc giường ngủ đươc lấy ý tưởng từ câu chuyện lọ lẹm với tạo hình là quả bí ngô cổ tích sẽ đem lại một giấc ngủ ngọt ngào cho các bé gái."><br><em>14. Một chiếc giường ngủ đươc lấy ý tưởng từ câu chuyện lọ lẹm với tạo hình<br>\r\nlà quả bí ngô cổ tích sẽ đem lại một giấc ngủ ngọt ngào cho các bé gái.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Một mẫu thiết kế giường ngủ" src="http://img.dothi.net/2017/04/04/0Ln61R5F/81-f87b.jpg" style="height:752px; width:500px" title="15. Một mẫu thiết kế giường ngủ không thể đơn giản hơn nữa dành cho các bé gái có tính cách lãnh mặc và ưa sống nội tâm. Tông màu nâu nhạt trung tính này sẽ làm các em thoải mái nhất khi sử dụng."><br><em>15. Một mẫu thiết kế giường ngủ không thể đơn giản hơn nữa dành cho<br>\r\ncác bé gái có tính cách lãnh mặc và ưa sống nội tâm. Tông màu nâu nhạt<br>\r\ntrung tính này sẽ làm các em thoải mái nhất khi sử dụng.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:34', '2017-05-05 14:51:34', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(14, 'Kệ mở - món đồ có thể phù hợp với bất cứ không gian, diện tích nào trong ngôi nhà của bạn', 'ke-mo-mon-do-co-the-phu-hop-voi-bat-cu-khong-gian-dien-tich-nao-trong-ngoi-nha-cua-ban', 'Ke mo - mon do co the phu hop voi bat cu khong gian, dien tich nao trong ngoi nha cua ban', 'Tất nhiên những chiếc kệ mở đều có công dụng chung là lưu trữ đồ, nhưng linh hoạt một chút, bạn có thể sử dụng chúng ở bất kỳ không gian nào mà bạn muốn.', 'https://img.dothi.net/2017/04/01/0Ln61R5F/48-b55f.jpg', 1, '<p>Những chiếc kệ mở không chỉ có tác dụng để đồ trang trí cho nhà, nó còn có tác dụng lưu trữ vô cùng hữu ích, và bạn hoàn toàn có thể tìm thấy những ý tưởng thú vị từ những ý tưởng của chúng tôi.</p>\r\n\r\n<h2>Phòng bếp</h2>\r\n\r\n<p>Không còn lạ gì với hình ảnh những chiếc kệ mở trong phòng bếp với những bộ bát đĩa tinh xảo trên kệ.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/01/0Ln61R5F/48-b55f.jpg" style="height:666px; width:500px"></p>\r\n\r\n<p style="text-align:center"><img alt="Những chiếc kệ màu đen và trắng" src="http://img.dothi.net/2017/04/01/0Ln61R5F/10-dcc5.jpg" style="height:666px; width:500px" title="Những chiếc kệ màu đen và trắng theo kích thước không gian của bạn có thể dùng để bày những chiếc bát đĩa hay ly tách"><br><em>Những chiếc kệ màu đen và trắng theo kích thước không gian của bạn có<br>\r\nthể dùng để bày những chiếc bát đĩa hay ly tách.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="kệ mở" src="http://img.dothi.net/2017/04/01/0Ln61R5F/66-d80c.jpg" style="height:751px; width:500px" title="Thêm khu vực để đồ thủy tinh bên dưới kệ hay gắn thêm móc treo để treo cốc,ly, cách này sẽ giúp tiết kiệm không gian."><br><em>Thêm khu vực để đồ thủy tinh bên dưới kệ hay gắn thêm móc treo để treo<br>\r\ncốc, ly, cách này sẽ giúp tiết kiệm không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 2" src="http://img.dothi.net/2017/04/01/0Ln61R5F/70-dac8.jpg" style="height:667px; width:500px" title="Sắp xếp quầy bar nhà bạn với những chiếc kệ mở bằng cách đặt ly, tách trên kệ, thêm đèn bên dưới để góc thêm lung linh là quầy bar của bạn đã đẹp không kém gì các quán bar sang trọng rồi."><br><em>Sắp xếp quầy bar nhà bạn với những chiếc kệ mở bằng cách đặt ly, tách trên kệ,<br>\r\nthêm đèn bên dưới để góc thêm lung linh là quầy bar của bạn đã đẹp không<br>\r\nkém gì các quán bar sang trọng rồi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 3" src="http://img.dothi.net/2017/04/01/0Ln61R5F/56-0c70.jpg" style="height:568px; width:500px" title="Một chiếc kệ với những món đồ trang trí đáng yêu hay những cuốn sách nấu ăn trong phòng bếp cũng sẽ là điều tuyệt vời."><br><em>Một chiếc kệ với những món đồ trang trí đáng yêu hay những cuốn sách nấu ăn<br>\r\ntrong phòng bếp cũng sẽ là điều tuyệt vời.</em></p>\r\n\r\n<h2>Phòng ngủ</h2>\r\n\r\n<p>Những chiếc kệ IKEA có thể được sử dụng một cách thông minh trong các phòng ngủ, ví dụ như gắn theo dọc tường để lưu trữ. Bạn cũng có thể cắt những chiếc kệ này thành cỡ nhỏ hơn và gắn nó vào giường để biến chúng thành chiếc bàn nhỏ bên đầu giường để cất sách và đèn.</p>\r\n\r\n<p style="text-align:center"><img alt="Chiếc kệ mở được đóng thấp" src="http://img.dothi.net/2017/04/01/0Ln61R5F/32-5948.jpg" style="height:666px; width:500px" title="Chiếc kệ mở được đóng thấp nhưng lại chạy dọc theo chiều dài phòng ngủ sẽ là góc trưng bày sách và đồ lưu niệm hoàn hảo."><br><em>Chiếc kệ mở được đóng thấp nhưng lại chạy dọc theo chiều dài phòng ngủ<br>\r\nsẽ là góc trưng bày sách và đồ lưu niệm hoàn hảo.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Một chiếc kệ nhỏ " src="http://img.dothi.net/2017/04/01/0Ln61R5F/53-fe4e.jpg" style="height:416px; width:500px" title="Một chiếc kệ nhỏ gắn trực tiếp vào giường có thể là chiếc bàn nhỏ hay ho"><br><em>Một chiếc kệ nhỏ gắn trực tiếp vào giường có thể là chiếc bàn nhỏ hay ho.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở" src="http://img.dothi.net/2017/04/01/0Ln61R5F/42-5fd4.jpg" style="height:750px; width:500px" title="Hay bạn có thể lắp nó lơ lửng trên tường"><br><em>Hay bạn có thể lắp nó lơ lửng trên tường.</em></p>\r\n\r\n<h2>Phòng khách</h2>\r\n\r\n<p>Những chiếc kệ mở cổ điển trong phòng khách có thể gắn lên tường để lưu trữ và "khoe" những cuốn sách hay những món đồ khác của bạn, sử dụng chúng làm chỗ để khung ảnh... Những chiếc kệ mở cũng là cách tuyệt vời nhất để trang trí với đèn.</p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở" src="http://img.dothi.net/2017/04/01/0Ln61R5F/01-511b.jpg" style="height:666px; width:500px" title="Phòng khách kiểu cổ với kệ mở đồng màu và những cuốn sách báo đã cũ  ​mang lại vẻ vintage dịu dàng cho không gian."><br><em>Phòng khách kiểu cổ với kệ mở đồng màu và những cuốn sách báo đã cũ<br>\r\nmang lại vẻ vintage dịu dàng cho không gian.</em></p>\r\n\r\n<p style="text-align:center"><img alt=" chiếc kệ mở với vài món đồ trang trí" src="http://img.dothi.net/2017/04/01/0Ln61R5F/41-6828.jpg" style="height:751px; width:500px" title="Những góc nhà sẽ bớt nhàm chán hơn nhờ chiếc kệ mở với vài món đồ trang trí."><br><em>Những góc nhà sẽ bớt nhàm chán hơn nhờ chiếc kệ mở với vài món đồ trang trí.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở" src="http://img.dothi.net/2017/04/01/0Ln61R5F/20170401081148970028-96a7.jpg" style="height:659px; width:500px" title="Góc đọc sách thư giãn lý tưởng"><br><em>Góc đọc sách thư giãn lý tưởng</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở theo các hình dáng khác nhau" src="http://img.dothi.net/2017/04/01/0Ln61R5F/47-6d23.jpg" style="height:735px; width:500px" title="Bạn có thể sắp xếp các kệ mở theo các hình dáng khác nhau thay vì thẳng ​ hàng nhau để bớt đi cảm giác nhàm chán."><br><em>Bạn có thể sắp xếp các kệ mở theo các hình dáng khác nhau thay vì thẳng<br>\r\nhàng nhau để bớt đi cảm giác nhàm chán.</em></p>\r\n\r\n<p style="text-align:center"><img alt="những chiếc kệ này" src="http://img.dothi.net/2017/04/01/0Ln61R5F/19-4fbd.jpg" style="height:666px; width:500px" title="Thậm chí là chú mèo nhà bạn cũng sẽ thích thú với những chiếc kệ này"><br><em>Thậm chí là chú mèo nhà bạn cũng sẽ thích thú với những chiếc kệ này.</em></p>\r\n\r\n<h2>Phòng làm việc tại nhà</h2>\r\n\r\n<p>Nếu bạn có một góc hay cả một phòng làm việc tại nhà, thì những chiếc kệ mở này sẽ hoàn toàn xứng đáng để bạn thử. Không chỉ có thể dùng để lưu trữ, nó còn có thể trở thành bàn làm việc thú vị cho bạn.</p>\r\n\r\n<p style="text-align:center"><img alt="chiếc kệ mở" src="http://img.dothi.net/2017/04/01/0Ln61R5F/88-5e9e.jpg" style="height:394px; width:500px" title="Phòng làm việc theo phong cách tối giản với hai gam màu đen trắng cùng kệ mở chạy dọc phòng. Chiếc kệ mở này không chỉ có thể đặt vài bức tranh mà chủ nhà sưu tầm, nó còn có thể đặt tài liệu hay vài cuốn sách tham khảo."><br><em>Phòng làm việc theo phong cách tối giản với hai gam màu đen trắng cùng kệ mở<br>\r\nchạy dọc phòng. Chiếc kệ mở này không chỉ có thể đặt vài bức tranh mà chủ nhà<br>\r\nsưu tầm, nó còn có thể đặt tài liệu hay vài cuốn sách tham khảo.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở" src="http://img.dothi.net/2017/04/01/0Ln61R5F/81-901d.jpg" style="height:500px; width:500px" title="Không có nhiều không gian thì bạn có thể lựa chọn những chiếc kệ mở cỡ nhỏ như thế này."><br><em>Không có nhiều không gian thì bạn có thể lựa chọn những chiếc kệ<br>\r\nmở cỡ nhỏ như thế này.</em></p>\r\n\r\n<h1>Phòng của bé</h1>\r\n\r\n<p>Có vô vàn thứ trong phòng của bé mà bạn cần phải lưu trữ, và những chiếc kệ mở này sẽ giúp bạn lưu trữ sách, giầy, hay thậm chí là có thể gắn thêm móc hoặc thanh ngang để treo quần áo bên dưới kệ, hay làm chỗ để đồ chơi cho bé.</p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 4" src="http://img.dothi.net/2017/04/01/0Ln61R5F/54-6b20.jpg" style="height:752px; width:500px" title="Những món đồ chơi và khung hình bé yêu được xếp trên những chiếc kệ hình bậc thang tạo điểm nhấn cho không gian phòng."><br><em>Những món đồ chơi và khung hình bé yêu được xếp trên những chiếc kệ hình bậc<br>\r\nthang tạo điểm nhấn cho không gian phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 5" src="http://img.dothi.net/2017/04/01/0Ln61R5F/82-179e.jpg" style="height:750px; width:500px" title="Những cuốn truyện được xếp ngay ngắn trên kệ mở đầu giường và bé có thể dễ dàng lấy xuống đọc trước khi đi ngủ."><br><em>Những cuốn truyện được xếp ngay ngắn trên kệ mở đầu giường và bé có<br>\r\nthể dễ dàng lấy xuống đọc trước khi đi ngủ.</em></p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/01/0Ln61R5F/14-8e1b.jpg" style="height:729px; width:500px"></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở trang trí" src="http://img.dothi.net/2017/04/01/0Ln61R5F/03-4d64.jpg" style="height:334px; width:500px" title="Vừa là kệ trang trí, vừa là tủ quần áo hợp lý."><br><em>Vừa là kệ trang trí, vừa là tủ quần áo hợp lý.</em></p>\r\n\r\n<h2>Lưu trữ đồ trang điểm</h2>\r\n\r\n<p>Những chiếc kệ mở sẽ biến thành góc trưng bày đồ trang điểm lý tưởng cho bất kỳ cô nàng nghiện mỹ phẩm nào, thậm chí là còn có khả năng lưu trữ khổng lồ nữa. Bạn có thể lắp chúng ở hai bên gương để dễ dàng cho việc lấy đồ.</p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 6" src="http://img.dothi.net/2017/04/01/0Ln61R5F/01-16e0.jpg" style="height:666px; width:500px" title="Đồ trang điểm được cất trong những chiếc giỏ tre, còn mặt kệ có thể tận dụng làm bàn trang điểm luôn mà vẫn rất bắt mắt."><br><em>Đồ trang điểm được cất trong những chiếc giỏ tre, còn mặt kệ có thể tận dụng<br>\r\nlàm bàn trang điểm luôn mà vẫn rất bắt mắt.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 7" src="http://img.dothi.net/2017/04/01/0Ln61R5F/48-98d4.jpg" style="height:491px; width:500px" title="Bất kể bạn có nhiều giày dép, túi xách và đồ trang điểm đến đâu, thì những chiếc kệ này vẫn có thể giải quyết giúp bạn mà không hề làm căn phòng bừa bộn."><br><em>Bất kể bạn có nhiều giày dép, túi xách và đồ trang điểm đến đâu, thì những chiếc<br>\r\nkệ này vẫn có thể giải quyết giúp bạn mà không hề làm căn phòng bừa bộn.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Kệ đồ trang điểm " src="http://img.dothi.net/2017/04/01/0Ln61R5F/20170401081148970093-09b8.jpg" style="height:666px; width:500px" title="Kệ đồ trang điểm vô cùng bắt mắt với mỗi tầng là một loại như son, phấn, kem..."><br><em>Kệ đồ trang điểm vô cùng bắt mắt với mỗi tầng là một loại như son, phấn, kem...</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 8" src="http://img.dothi.net/2017/04/01/0Ln61R5F/60-b913.jpg" style="height:500px; width:500px" title="Góc bàn phấn vô cùng lung linh với những bóng đèn cotton ball và chiếc kệ mở ở hai bên gương."><br><em>Góc bàn phấn vô cùng lung linh với những bóng đèn cotton ball và<br>\r\nchiếc kệ mở ở hai bên gương.</em></p>\r\n\r\n<h2>Lưu trữ giày</h2>\r\n\r\n<p>Gắn những chiếc kệ mở ở trong tủ quần áo hay lối hành lang, hoặc thậm chí là trong phòng ngủ để lưu trữ và trưng bày những đôi giày của bạn. Một căn phòng trông sẽ hấp dẫn hơn với những đôi giày được xếp ngay ngắn trên kệ.</p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 9" src="http://img.dothi.net/2017/04/01/0Ln61R5F/81-a224.jpg" style="height:705px; width:500px" title="Những chiếc kệ để giày được đóng ngay sau cánh cửa. Khi đóng cánh cửa, giá giày trông sẽ rất lung linh, còn khi mở cửa, giá giày lại hoàn toàn được che lại để không gây cảm giác bừa bộn."><br><em>Những chiếc kệ để giày được đóng ngay sau cánh cửa. Khi đóng cánh cửa,<br>\r\ngiá giày trông sẽ rất lung linh, còn khi mở cửa, giá giày lại hoàn toàn được<br>\r\nche lại để không gây cảm giác bừa bộn.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 10" src="http://img.dothi.net/2017/04/01/0Ln61R5F/97-f97c.jpg" style="height:888px; width:500px" title="Thậm chí là bạn có thể tận dụng vị trí của chiếc cột nhà để làm một chiếc kệ giày sáng tạo như thế này."><br><em>Thậm chí là bạn có thể tận dụng vị trí của chiếc cột nhà để làm một chiếc<br>\r\nkệ giày sáng tạo như thế này.</em></p>\r\n\r\n<p style="text-align:center"><img alt="kệ mở 11" src="http://img.dothi.net/2017/04/01/0Ln61R5F/69-8ccc.jpg" style="height:666px; width:500px" title="Ngay bên góc tủ quẩn áo là những đôi giày được xếp trên kệ hình chữ V khá lạ mắt."><br><em>Ngay bên góc tủ quẩn áo là những đôi giày được xếp trên kệ hình<br>\r\nchữ V khá lạ mắt.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:35', '2017-05-05 14:51:35', 1, 1),
(15, '17 phòng ngủ gỗ xua tan định kiến về nội thất gỗ là nặng nề và già nua', '17-phong-ngu-go-xua-tan-dinh-kien-ve-noi-that-go-la-nang-ne-va-gia-nua', '17 phong ngu go xua tan dinh kien ve noi that go la nang ne va gia nua', 'Với vẻ đẹp hoàn hảo và sức cuốn hút của mình, những căn phòng ngủ gỗ này sẽ khiến bạn "chết lịm" ngay từ những giây phút ban đầu.', 'https://img.dothi.net/2017/03/31/0Ln61R5F/48-440a.jpg', 1, '<p>Phòng ngủ luôn một không gian mang tính riêng tư cao, cũng đòi hỏi rất nhiều điều trong khâu thiết kế và trang trí. Vì đây là không gian chính để ta nghỉ ngơi, thư giãn sau một ngày làm việc mệt nhọc vậy nên việc thiết kế ra một căn phòng thoải mái, thư thái là vô cùng quan trọng. Vậy nên, khi thiết kế phòng ngủ người ta thường hạn chế sử dụng quá nhiều đồ nội thất. Song, là một không gian riêng tư nên mọi người vẫn muốn khẳng định được cá tính của mình trong từng thiết kế của căn phòng. Nếu bạn vẫn còn đang mắc giữa những yêu cầu đó thì những mẫu phòng ngủ gỗ dưới đây chính là thứ không thể nào bỏ qua được.</p>\r\n\r\n<p style="text-align:center"><img alt="Những căn phòng ngủ " src="http://img.dothi.net/2017/03/31/0Ln61R5F/48-440a.jpg" style="height:269px; width:500px" title="1. Những căn phòng ngủ dùng chất liệu gỗ để trang trí vừa đơn giản, ấm cúng mà không kém phần ấn tượng"><br><em>1. Những căn phòng ngủ dùng chất liệu gỗ để trang trí vừa đơn giản, ấm cúng<br>\r\nmà không kém phần ấn tượng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Phòng ngủ chất liệu gỗ" src="http://img.dothi.net/2017/03/31/0Ln61R5F/10-1623.jpg" style="height:375px; width:500px" title="2. Chất liệu gỗ tự nhiên luôn là một lựa chọn yêu thích của nhiều gia đình bởi tính thân thiện của nó."><br><em>2. Chất liệu gỗ tự nhiên luôn là một lựa chọn yêu thích của nhiều gia đình<br>\r\nbởi tính thân thiện của nó</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/03/31/0Ln61R5F/66-0de4.jpg" style="height:667px; width:500px" title="3. Không cần đến quá nhiều món đồ nội thất, chỉ với sử dụng chất liệu gỗ tự nhiên sáng tạo, bạn đã có thể sở hữu một không gian riêng tư đầy ấn tượng như thế này."><br><em>3. Không cần đến quá nhiều món đồ nội thất, chỉ với sử dụng chất liệu gỗ<br>\r\ntự nhiên sáng tạo, bạn đã có thể sở hữu một không gian riêng tư đầy ấn tượng<br>\r\nnhư thế này.</em><br><img alt="Căn phòng ngủ vô cùng" src="http://img.dothi.net/2017/03/31/0Ln61R5F/70-1dd5.jpg" style="height:345px; width:500px" title="4. Căn phòng ngủ vô cùng thanh lịch với đường nét đơn giản của, vẻ mộc mạc của mảng tường gỗ sáng màu."><br><em>4. Căn phòng ngủ vô cùng thanh lịch với đường nét đơn giản của, vẻ mộc mạc<br>\r\ncủa mảng tường gỗ sáng màu</em>.</p>\r\n\r\n<p style="text-align:center"><img alt="căn phòng trở nên cuốn hút vô cùng" src="http://img.dothi.net/2017/03/31/0Ln61R5F/56-5bb6.jpg" style="height:333px; width:500px" title="5. Những mảng tường mang đậm hơi thở thiên nhiên khiến không gian căn phòng trở nên cuốn hút vô cùng"><br><em>5. Những mảng tường mang đậm hơi thở thiên nhiên khiến không gian căn<br>\r\nphòng trở nên cuốn hút vô cùng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/03/31/0Ln61R5F/32-f9a6.jpg" style="height:332px; width:500px" title="6. Không chỉ có mảng tường ốp gỗ độc đáo mà chiếc giường treo lạ mắt cũng đủ khiến bao người phải say mê."><br><em>6. Không chỉ có mảng tường ốp gỗ độc đáo mà chiếc giường treo lạ mắt<br>\r\ncũng đủ khiến bao người phải say mê.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ ấm cúng này." src="http://img.dothi.net/2017/03/31/0Ln61R5F/53-607a.jpg" style="height:313px; width:500px" title="7. Gỗ là chất liệu chủ yếu bên trong căn phòng ngủ ấm cúng này."><br><em>7. Gỗ là chất liệu chủ yếu bên trong căn phòng ngủ ấm cúng này.</em></p>\r\n\r\n<p style="text-align:center"><img alt=" căn phòng này lên gấp bội" src="http://img.dothi.net/2017/03/31/0Ln61R5F/42-6167.jpg" style="height:267px; width:500px" title="8. Những mảng gỗ tự nhiên kết hợp với đèn chiếu sáng làm tăng vẻ đẹp, sức cuốn hút của căn phòng này lên gấp bội"><br><em>8. Những mảng gỗ tự nhiên kết hợp với đèn chiếu sáng làm tăng vẻ đẹp, sức cuốn<br>\r\nhút của căn phòng này lên gấp bội</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ gỗ" src="http://img.dothi.net/2017/03/31/0Ln61R5F/01-b30c.jpg" style="height:464px; width:500px" title="9. Những lát gỗ nguyên dạng tạo ra một ấn tượng không hề nhỏ với người đối diện."><br><em>9. Những lát gỗ nguyên dạng tạo ra một ấn tượng không hề nhỏ với người đối diện.</em></p>\r\n\r\n<p style="text-align:center"><img alt="trong phòng ngủ như thế này" src="http://img.dothi.net/2017/03/31/0Ln61R5F/41-ccd4.jpg" style="height:375px; width:500px" title="10. Bạn cũng có thể lựa chọn chất liệu gỗ công nghiệp cho những mảng tường trong phòng ngủ như thế này."><br><em>10. Bạn cũng có thể lựa chọn chất liệu gỗ công nghiệp cho những mảng tường<br>\r\ntrong phòng ngủ như thế này.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp giản dị" src="http://img.dothi.net/2017/03/31/0Ln61R5F/20170331080959657628-cb8c.jpg" style="height:592px; width:500px" title="11. Chẳng cần phải cầu kì, kiểu cách, chỉ những đường vân gỗ tự nhiên thế này thôi cũng đủ ghi điểm rồi"><br><em>11. Chẳng cần phải cầu kì, kiểu cách, chỉ những đường vân gỗ tự nhiên thế<br>\r\nnày thôi cũng đủ ghi điểm rồi.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Căn phòng ngũ" src="http://img.dothi.net/2017/03/31/0Ln61R5F/47-8613.jpg" style="height:350px; width:500px" title="12. Căn phòng ngũ đẹp xuất sắc với sức mạnh thổi bay mọi căng thẳng, mệt mỏi của người dùng"><br><em>12. Căn phòng ngũ đẹp xuất sắc với sức mạnh thổi bay mọi căng thẳng, mệt mỏi<br>\r\ncủa người dùng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/03/31/0Ln61R5F/19-1011.jpg" style="height:375px; width:500px" title="13. Bạn đừng để những đường vân gỗ dọc đánh lừa thị giác về chiều cao của căn phòng."><br><em>13. Bạn đừng để những đường vân gỗ dọc đánh lừa thị giác về chiều<br>\r\ncao của căn phòng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất phòng ngủ" src="http://img.dothi.net/2017/03/31/0Ln61R5F/88-2659.jpg" style="height:319px; width:500px" title="14. Những mảng tường gỗ vô cùng cầu kì với những họa tiết nội thất tinh tế."><br><em>14. Những mảng tường gỗ vô cùng cầu kì với những họa tiết nội thất tinh tế.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nội thất phòng ngủ" src="http://img.dothi.net/2017/03/31/0Ln61R5F/81-4226.jpg" style="height:313px; width:500px" title="15. Chỉ với những đường vân nổi đã khiến bức tường phòng ngủ trở nên thu hút vô cùng."><br><em>15. Chỉ với những đường vân nổi đã khiến bức tường phòng ngủ trở<br>\r\nnên thu hút vô cùng.</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/03/31/0Ln61R5F/54-ff98.jpg" style="height:286px; width:500px" title="16. Khi không thích những đường vân gỗ nổi thì chất liệu gỗ tự nhiên cao cấp nhằn mịn như thế này cũng là một lựa chọn không kém chút nào."><br><em>16. Khi không thích những đường vân gỗ nổi thì chất liệu gỗ tự nhiên cao cấp<br>\r\nnhằn mịn như thế này cũng là một lựa chọn không kém chút nào.</em></p>\r\n\r\n<p style="text-align:center"><img alt="căn phòng ngủ này" src="http://img.dothi.net/2017/03/31/0Ln61R5F/82-4592.jpg" style="height:313px; width:500px" title="17. Phải thừa nhận rằng, cách sử dụng chất liệu gỗ sáng tạo, độc đáo khiến bạn khó lòng rời mắt khỏi căn phòng ngủ này"><br><em>17. Phải thừa nhận rằng, cách sử dụng chất liệu gỗ sáng tạo, độc đáo khiến<br>\r\nbạn khó lòng rời mắt khỏi căn phòng ngủ này.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 14:51:35', '2017-05-05 14:51:35', 1, 1),
(16, 'Thị trường khách sạn tại Tp.HCM được dự báo lạc quan', 'thi-truong-khach-san-tai-tphcm-duoc-du-bao-lac-quan', 'Thi truong khach san tai Tp.HCM duoc du bao lac quan', 'Giá thuê trung bình theo ngày nhiều khả năng vẫn sẽ là yếu tố quyết định kết quả hoạt động của phân khúc khách sạn tại châu Á - Thái Bình Dương trong năm nay.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/ks-5700.jpg', 7, '<p>Theo thông báo mới nhất từ Savills Việt Nam về thị trường khách sạn tại khu vực Châu Á - Thái Bình Dương, công suất cho thuê khách sạn tại khu vực giảm ở mức trung bình trong năm 2016. Tuy nhiên, bù lại giá thuê tại phần lớn các thị trường trong khu vực đã tăng đáng kể. Giá thuê trung bình theo ngày nhiều khả năng vẫn sẽ là yếu tố quyết định kết quả hoạt động của phân khúc khách sạn tại châu Á - Thái Bình Dương trong năm nay.</p>\r\n\r\n<div class="photo" style="text-align: center;"><img alt="Thị trường khách sạn tại Tp.HCM " src="https://img.dothi.net/2017/05/05/Z9BcC3fq/ks-5700.jpg" style="width:600px" title="Thị trường khách sạn tại Tp.HCM được dự báo lạc quan"></div>\r\n\r\n<p>Tại Tp.HCM, những đối tượng tham gia khảo sát bày tỏ sự lạc quan, tuy ở mức thận trọng, và cho rằng giá thuê trung bình nhìn chung sẽ duy trì ở mức ổn định trong những tháng tới. Một số còn lạc quan hơn khi dự báo công suất cho thuê sẽ tăng nhẹ trong 6 tháng đầu năm 2017.</p>\r\n\r\n<p>Số lượng khách du lịch quốc tế đến Tp.HCM đạt mức kỷ lục trong năm 2016 với 5,2 triệu lượt và hiện tại không có dấu hiệu cho thấy xu hướng phát triển này sẽ không tiếp tục trong năm 2017. Tuy nhiên, 3.000 phòng khách sạn mới dự kiến sẽ đi vào hoạt động trong ba năm tới, hạn chế sự tăng trưởng trong giá phòng và công suất cho thuê. Một đối tượng tham gia khảo sát khác tin rằng mặc dù nguồn cung sẽ tiếp tục tăng lên theo năm nhưng vẫn duy trì ở mức có thể quản lý được.</p>\r\n\r\n<p>Trong khi đó, thị trường khách sạn ở Sydney đã có một khởi đầu vững mạnh trong năm 2017 và đang sẵn sàng tiếp tục tăng trưởng trong quý I năm 2017. Tổng lượng khách du lịch trong nước và quốc tế dự kiến sẽ duy trì ở mức cao và ổn định. Là điểm đến chính cho mục đích thương mại và giải trí ở Úc, Sydney được kỳ vọng sẽ thúc đẩy hơn nữa nhu cầu tổ chức họp, chương trình ưu đãi, hội thảo, triển lãm (MICE) cũng như các nhu cầu chung của doanh nghiệp bằng việc khai trương Trung tâm Hội nghị Quốc tế.</p>\r\n\r\n<p>Thượng Hải được kỳ vọng sẽ vượt qua Bắc Kinh để trở thành trung tâm thương mại và giải trí trọng điểm ở Trung Quốc. Tháng 6/2016, Chính phủ Trung Quốc đã áp dụng mức thuế giá trị gia tăng (VAT) 6,6%. Mức thuế này có ảnh hưởng đến mức lợi nhuận hoạt động trong việc tính toán chi phí quản lí và lương cơ sở. Tuy nhiên, việc thay đổi mức VAT chưa có ảnh hưởng lớn đến tình hình hoạt động của thị trường khách sạn. Năm 2017 thị trường có khởi đầu khá trầm lắng; Tết Nguyên Đán rơi vào cuối tháng Giêng đã ảnh hưởng đến nguồn cầu thương mại trong tháng đầu năm. Tuy nhiên các tháng sắp tới hứa hẹn cơ hội phát triển trong nửa đầu năm 2017.</p>\r\n\r\n<p>Ngoài ra, tình hình hoạt động của thị trường khách sạn ở Osaka (Nhật Bản) có phần suy giảm kể từ năm 2016. Do sự tăng nhanh về nguồn cung và giá thuê phòng khách sạn trong một vài năm gần đây, thị trường Osaka dự kiến sẽ phải điều chỉnh lại trong tình hình hoạt động của khách sạn vì mức giá hiện tại được cho là không bền vững. Sự phát triển của phân khúc lưu trú cho thuê ngắn hạn cũng thu hút mất nguồn cầu nhạy cảm với giá của phân khúc khách sạn, làm giảm công suất cho thuê...</p>\r\n\r\n<p>Tương tự, ở Jarkata (Indonesia), hầu hết những người được phỏng vấn đều tin rằng sẽ có sự giảm nhẹ hoặc giảm đáng kể trong công suất và giá thuê trung bình. Nguồn cầu từ doanh nghiệp đã trở nên trì trệ và có thể sẽ ảnh hưởng xấu đến công suất cho thuê ...</p>\r\n    \r\n        <em>\r\n            <em>(Theo Thời báo Ngân hàng)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:38', '2017-05-05 15:04:38', 1, 1),
(17, 'Cần tạo hệ sinh thái để nhà đầu tư “sống” trong khu công nghiệp', 'can-tao-he-sinh-thai-de-nha-dau-tu-song-trong-khu-cong-nghiep', 'Can tao he sinh thai de nha dau tu “song” trong khu cong nghiep', 'Bất động sản công nghiệp đang được coi là phân khúc nhiều tiềm năng phát triển. Tuy nhiên, nếu mỗi khu công nghiệp, mỗi địa phương không tạo được một hệ thống kết nối hạ tầng giao thông, mạng lưới công nghiệp đủ mạnh thì việc thu hút doanh nghiệp vào khu công nghiệp vẫn là bài toán khó giải.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/bdscn-7ba1.jpg', 7, '<p>Tính đến cuối năm 2016, cả nước có 324 khu công nghiệp với tổng diện tích đất tự nhiên 91.800 ha, trong đó diện tích đất công nghiệp có thể cho thuê đạt 61.700 ha; bên cạnh đó có 16 khu kinh tế và 2 khu công nghệ cao.</p>\r\n\r\n<p>Tại khu vực phía Bắc, các khu công nghiệp tập trung chủ yếu tại các tỉnh lân cận Hà Nội như Hải Phòng, Vĩnh Phúc, Bắc Ninh, Hải Dương, Quảng Ninh và Hưng Yên. Tổng diện tích đất có thể cho thuê tại các khu công nghiệp phía Bắc đạt trên 40.000 ha. Tuy nhiên, do tồn tại nhiều “nút thắt” về cơ sở pháp lý, thiếu sự kết nối hạ tầng, đặc biệt là thiếu thị trường hệ thống công nghiệp phụ trợ đủ mạnh nên vẫn có không ít khu công nghiệp không thu hút được lượng doanh nghiệp vào đặt đại bản doanh như kỳ vọng.</p>\r\n\r\n<p>Điểm sáng lớn nhất trong khu vực phía Bắc về khả năng “đón sóng” FDI có lẽ phải kể đến Bắc Ninh. Các khu công nghiệp đang hoạt động ở tỉnh này như Quế Võ I, Quế Võ II, Tiên Sơn, Yên Phong I… có tỷ lệ lấp đầy đạt bình quân gần 85%.</p>\r\n\r\n<p>Quý I/2017, Bắc Ninh lại đón thêm “những con sếu lớn” như Tập đoàn Hana Micron (Hàn Quốc), Công ty Hanwha Techwin (Hàn Quốc)… Đáng chú ý, trước đó, Công ty TNHH Samsung Display Việt Nam cũng “rót” thêm 2,5 tỷ USD vào Bắc Ninh, nâng tổng số vốn đầu tư của công ty này ở Bắc Ninh lên 6,5 tỷ USD.</p>\r\n\r\n<div class="photo" style="text-align: center;">\n<img alt="bất động sản công nghiệp" src="https://img.dothi.net/2017/05/05/Z9BcC3fq/bdscn-7ba1.jpg" style="width:600px" title="Các doanh nghiệp lớn rất cần một hệ thống công nghiệp phụ trợ để phát triển."><br><em>Các doanh nghiệp lớn rất cần một hệ thống công nghiệp phụ trợ để phát triển.<br>\r\nẢnh: Lê Toàn</em>\n</div>\r\n\r\n<p>Ông Ha Chan Ho, cố vấn Chiến lược Tập đoàn Samsung chia sẻ, bên cạnh việc gần sây bay, bến cảng, thì một trong những điều kiện hàng đầu khi chọn địa điểm đầu tư chính là ở đó phải tạo ra được môi trường ổn định đủ dài để doanh nghiệp có thể yên tâm bỏ vốn đầu tư sản xuất.</p>\r\n\r\n<p>“Chúng tôi rất yên tâm hoạt động vì lãnh đạo tỉnh Bắc Ninh có nhiều chính sách thu hút các doanh nghiệp công nghiệp hỗ trợ. Khi chúng tôi cần bao bì sản phẩm thì đã có doanh nghiệp đáp ứng, chúng tôi cần vỏ ốp nhựa cũng có rất nhiều doanh nghiệp đóng trên địa bàn có thể cung cấp”, ông Ha Chan Ho chia sẻ.</p>\r\n\r\n<p>Do vậy, có thể nói, để các khu công nghiệp có sức sống và nhanh chóng được lấp đầy, việc tạo một mối liên kết chặt chẽ cũng như chia sẻ trách nhiệm của các bên Doanh nghiệp thuê đất - Chính quyền - Chủ đầu tư khu công nghiệp là rất quan trọng. Nhiều khu công nghiệp chỉ chú trọng đến việc xây dựng cơ sở hạ tầng cứng như giao thông, điện nước,… mà “bỏ quên” việc tạo những “hạ tầng mềm”, những mối liên kết để giữ chân các nhà đầu tư nên đã thất bại.</p>\r\n\r\n<p>Ông Nguyễn Thanh Hà, Chủ tịch Công ty Luật SbLaw, đơn vị đã từng kết nối nhiều doanh nghiệp vào các khu công nghiệp, phân tích: “Trong mối quan hệ ba bên đó, mỗi bên phải làm tốt nhất công việc của mình. Các nhà đầu tư phải làm sao tạo ra những khu công nghiệp với hạ tầng tốt, giá cả phải chăng. Chính quyền cần phải nỗ lực xây dựng đầu mối, chú trọng phát triển công nghệ phụ trợ, kết nối giao thông tạo thuận lợi cho nhà đầu tư sản xuất và xuất cảng. Các doanh nghiệp thuê đất cũng cần có một tầm nhìn phát triển dài hạn và minh bạch để các chính sách hỗ trợ của chính quyền đến đúng đối tượng”.</p>\r\n\r\n<p>Trong những yếu tố hấp dẫn doanh nghiệp vào một khu công nghiệp hay một địa phương nào đó, tính sẵn sàng của hệ thống công nghiệp phụ trợ là cực kỳ quan trọng. Một khi có doanh nghiệp phụ trợ ở trong khu công nghiệp sẽ giúp doanh nghiệp tiết kiệm được chi phí sản xuất, vận chuyển…</p>\r\n\r\n<p>Những “điểm sáng” về phát triển công nghiệp phụ trợ như Bắc Ninh hiện không nhiều. Theo số liệu của Bộ Công thương, rất nhiều ngành sản xuất hàng xuất khẩu mang lại kim ngạch hàng chục tỷ USD mỗi năm nhưng đang phải nhập khẩu tới 80 - 85% nguyên liệu.</p>\r\n\r\n<p>PGS. TS Nguyễn Văn Hùng, Nguyên Hiệu trưởng Trường Đại học Xây dựng Hà Nội cũng cho rằng, việc xây dựng một khu công nghiệp với hệ thống hoàn chỉnh chỉ là yếu tố cần chứ không phải yếu tố chính để giữ chân các nhà đầu tư. Một khi vấn đề tiền thuê đất, sự kết nối với sân bay, cảng biển cũng như xây dựng các doanh nghiệp phụ trợ còn bị xem nhẹ thì sẽ còn không ít những khu công nghiệp sẽ rơi vào trạng thái “nằm bất động”.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Đầu tư Chứng khoán)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:39', '2017-05-20 09:53:34', 1, 1),
(18, 'Rao bán khống nền biệt thự trong dự án “hot”, đút túi hơn chục tỷ đồng', 'rao-ban-khong-nen-biet-thu-trong-du-an-hot-dut-tui-hon-chuc-ty-dong', 'Rao ban khong nen biet thu trong du an “hot”, dut tui hon chuc ty dong', 'Cho rằng mình đang cần tiền nên bán giá rẻ cùng lúc nhiều nền biệt thự và nhà phố trong dự án đang… rất “hot”, một phụ nữ đã “ẵm” của các nạn nhân số tiền hơn chục tỷ đồng. Khi bị hối thúc thực hiện đúng hợp đồng, người phụ nữ này không chỉ trì hoãn, hẹn lần hẹn lữa rồi lánh mặt mà còn có thái độ bất thường nhằm làm tê liệt ý chí yêu cầu thực hiện thỏa thuận từ bên mua.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/duan1-de47.jpg', 7, '<div class="photo" style="text-align: center;">\n<img alt="Rao bán khống nền biệt thự trong dự án " src="https://img.dothi.net/2017/05/05/Z9BcC3fq/duan1-de47.jpg" style="width:600px" title="Bên ngoài dự án Khu dân cư Thăng Long."><br><em>Bên ngoài dự án Khu dân cư Thăng Long.</em>\n</div>\r\n\r\n<p>Trưa 4/5, đội cái nắng như đổ lửa, lần theo địa chỉ trên giấy, PV Báo CAND đã đến được ấp 1, xã Bình Hưng, huyện Bình Chánh (TP Hồ Chí Minh) – nơi đặt dự án khu dân cư Thăng Long. Do chỉ cách ngã tư Phạm Hùng – Nguyễn Văn Linh khoảng hơn 100m, lại nằm cặp theo đại lộ Nguyễn Văn Linh nên giới kinh doanh bất động sản nói đây là vị trí “hot”.</p>\r\n\r\n<p>Thấy bảng giới thiệu thông tin cơ bản về dự án này chỉ trơ lại phần khung sắt, bề mặt đã bong tróc hết lớp sơn và phần nội dung nên để cho chắc chắn, tôi hỏi thêm một lần nữa chị bán nước mía cạnh đó. Thấy chị gật đầu: “Đúng rồi. Dự án Thăng Long đó!”, tôi mới tìm lối vào.</p>\r\n\r\n<p>Có lẽ ngay giờ nghỉ trưa của các nhân viên bảo vệ nên khi chúng tôi đưa miệng vào lỗ khóa để gọi, chẳng thấy ai bước ra mở cửa. Tranh thủ quan sát qua khe hẹp này, tôi thấy bên trong chỉ là một khu đất trống. Gần nơi tôi đứng có mấy thùng container cũ nằm cạnh mấy cọc bê tông đóng dang dở; xa hơn là cỏ hoang… Dường như khu đất hàng chục hécta nằm cặp theo đại lộ Nguyễn Văn Linh này đang ở giai đoạn san lấp nền hạ. “Dự án này đã có hơn chục năm rồi đó!”, chị bán nước mía cho biết thêm.</p>\r\n\r\n<p>Lại lần theo địa chỉ trên giấy, chúng tôi ngược đường về trung tâm thành phố tìm đến trụ sở Chi nhánh Tổng Công ty CP Thương mại Xây dựng (Vietracimex - trụ sở đặt trên đường Trần Hưng Đạo, quận 5). Thật may mắn, chúng tôi gặp được giám đốc Chi nhánh - ông Lê Việt Hùng, cũng vừa xong chuyến công tác dài ngày trở về.</p>\r\n\r\n<p>Khi nghe chúng tôi tóm tắt nội dung thể hiện trong đơn kêu cứu của nạn nhân gửi Báo CAND, ông Hùng đi từ ngạc nhiên này đến ngạc nhiên khác. Ông Hùng cho biết, dự án Khu dân cư Thăng Long có tổng diện tích là 41,87 ha được UBND TP Hồ Chí Minh giao cho Công ty CP Xây dựng và Hạ tầng số 9 – đơn vị thành viên trực thuộc của Vietracimex, làm chủ đầu tư hơn chục năm trước. Dự án đã được lập và phê duyệt quy hoạch chi tiết 1/2000 và 1/500.</p>\r\n\r\n<p>Tuy nhiên, do công tác bồi thường, giải phóng mặt bằng (GPMB) gặp nhiều khó khăn nên chủ đầu tư đã xin được điều chỉnh. Và cách nay đúng 2 năm, UBND thành phố đã thuận chủ trương cho chủ đầu tư này thu hẹp ranh giới dự án này xuống còn hơn 20ha. Hiện nay dự án đang thực hiện công tác điều chỉnh quy hoạch, lập quy hoạch chi tiết 1/500, đồng thời cùng Ban bồi thường GPMB huyện lập phương án bồi thường phần diện tích còn lại chưa bồi thường được nằm trong ranh giới quy hoạch mới.</p>\r\n\r\n<p>“Đại diện cho chủ đầu tư xin khẳng định cho tới thời điểm này chúng tôi chưa có chủ trương bán bất kỳ lô nền biệt thự hay nhà phố nào vì dự án chưa hoàn thành công tác GPMB. Do đó việc có đối tượng nói đang là chủ sở hữu nền đất biệt thự và nhà phố trong dự án là hoàn toàn bịa đặt và lừa đảo”, ông Lê Việt Hùng nói.</p>\r\n\r\n<p>Phía chủ đầu tư khẳng định như thế nhưng thực tế điều tra của chúng tôi, cách đây hơn 2 năm, bà Văn Thị Mỹ Hạnh (50 tuổi, ngụ 94, đường 16, cư xá Lữ Gia, phường 15, quận 11, TP Hồ Chí Minh) đã rao bán 15 nền đất biệt thự (quy cách 10m x 30m) và 6 nền đất nhà phố (6m x 18m) nằm trong dự án này.</p>\r\n\r\n<p>“Chúng tôi biết bà Hạnh qua một người quen có nhà trên đường Phạm Thế Hiển, phường 6, quận 8. Khi vợ chồng chúng tôi tìm tới nhà, bà Hạnh nói bà đang là chủ sở hữu nhiều lô đất biệt thự, nền nhà phố và một số nền đất của nhiều vị lãnh đạo cao cấp muốn bán gấp để ra Hà Nội giữ vị trí cao hơn (?). Nghe bà Hạnh tự giới thiệu thêm về bản thân, thân nhân mình, vợ chồng chúng tôi rất tin tưởng và ngỏ ý rủ anh em, bạn bè cùng mua.</p>\r\n\r\n<p>Khi chúng tôi hỏi vị trí của các lô đất nền, bà Hạnh cho biết tất cả đều nằm trong dự án khu dân cư Thăng Long. Tiếp xúc thêm một vài lần sau đó, nghe bà Hạnh nói bà còn có nền đất vị trí đẹp trong khu dân cư Minh Long, đường Huỳnh Tấn Phát, huyện Nhà Bè nên vợ chồng chúng tôi đồng ý mua tiếp”, chị Lê Thị Nguyệt H. (ngụ tại phường Tân Phong, quận 7) kể.</p>\r\n\r\n<p>Anh Võ Văn Ng, chồng chị H kể thêm, theo gợi ý của bà Hạnh, vợ chồng anh cùng người thân, bạn bè (gồm: Lê Thị Huỳnh Ng., Phạm Thị Ng., Trịnh Văn D., Võ Thị Phiên, Nguyễn Thị H., Ngô Văn Ng., Ngô Thị Cẩm H., Lê Thị Ngọc N,. Hứa Tuấn H., Phan Thu Đ., Võ Văn Ng.) gom đủ số tiền 12,443 tỷ đồng, chuyển vào tài khoản cá nhân của bà Hạnh tại Ngân hàng TMCP Á Châu – Chi nhánh Sài Gòn.</p>\r\n\r\n<p>“Nhận được tiền, bà Hạnh còn hối thúc chúng tôi gấp rút photo giấy CMND, hộ khẩu chuyển cho bà để bà hoàn tất thủ tục, kịp giao nền và sổ đỏ vào tháng 4-2015. Thế nhưng, đến hẹn, chúng tôi chẳng thấy bà Hạnh động tĩnh gì. Chúng tôi hỏi thì bà Hạnh viện đủ lý do. Hơn một năm sau, cụ thể là tháng 6/2016, khi chúng tôi quyết liệt yêu cầu thực hiện cam kết thì bà Hạnh tắt điện thoại, lánh mặt”, anh Ng. kể thêm.</p>\r\n\r\n<p>Vào ngày 26/8/2016, khi gặp lại vợ chồng chị H. tại một quán cà phê gần nhà, bà Hạnh tỏ ra sốt sắng và hẹn vào ngày 29/8/2016, bà sẽ cùng vợ chồng chị H. đến chủ đầu tư dự án Thăng Long để nhận hợp đồng, phiếu thu, giấy cam kết giao nền. Bà Hạnh cam kết chắc chắn rằng nếu không có hợp đồng mua đất của chủ đầu tư, bà sẽ chịu trách nhiệm.</p>\r\n\r\n<p>“Sau ngày đó, những gì nói đều không có thật nên bà Hạnh chuyển sang cam kết sẽ trả lại số tiền đã nhận. Thực tế bà ấy cam kết chủ yếu là để xoa dịu bức xúc của chúng tôi. Mấy ngày sau, khi đến nhà bà Hạnh, chúng tôi bị một nhóm người lạ chặn đầu xe, dằn mặt và dọa hành hung. Kể từ đó, chúng tôi không dám đến nhà bà Hạnh nữa”, chị H kể thêm.</p>\r\n\r\n<p>“Hầu hết là dân tỉnh lẻ lên đây mưu sinh. Để có được số tiền lớn như vậy là quá trình lao động vất vả, dành dụm và mượn, vay nóng thêm từ bên ngoài. Giờ bà Hạnh dùng thủ đoạn gian dối để chiếm đoạt, chúng tôi không chỉ trắng tay mà còn nợ nần, lãi mẹ đẻ lãi con. Mong cơ quan chức năng khẩn trương điều tra làm rõ hành vi của bà Hạnh nhằm bảo vệ quyền lợi chính đáng của người dân chúng tôi”, anh Ng. bày tỏ.</p>\r\n    \r\n        <em>\r\n            <em>(Theo CAND)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:39', '2017-05-20 09:53:34', 1, 1),
(19, 'Rủi ro dự án bán nhà trên giấy: Ai chịu trách nhiệm?', 'rui-ro-du-an-ban-nha-tren-giay-ai-chiu-trach-nhiem', 'Rui ro du an ban nha tren giay: Ai chiu trach nhiem', 'Từ đầu năm 2017, Sở Xây dựng Hà Nội đã có hai lượt công bố danh sách các dự án đủ điều kiện “bán nhà trên giấy”, đưa tổng số lên 121 dự án được giao dịch hợp pháp.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/ruiro-550e.jpg', 7, '<p>Động thái này là tấm giấy thông hành giúp họ bán hàng tốt hơn trong bối cảnh nhiều dự án cạnh tranh như hiện nay. Trong khi đó, ở góc độ chuyên môn, các chuyên gia bất động sản (BĐS) vẫn cho rằng bán nhà trên giấy là hình thức mua bán đầy rủi ro, đi ngược lại nguyên lý phát triển bền vững của thị trường địa ốc.</p>\r\n\r\n<h2><strong>Ai chịu trách nhiệm?</strong></h2>\r\n\r\n<p>Tình trạng bán nhà ở hình thành trong tương lai, được gọi nôm na là “bán nhà trên giấy”, hiện đang được nhiều chủ đầu tư áp dụng dưới nhiều hình thức như huy động vốn, góp vốn thực hiện dự án hay vay vốn từ khách hàng. Tuy nhiên, kiểu bán nhà trên giấy bằng cách huy động vốn từ chính người mua, kiểu “lấy mỡ nó rán nó”, có rủi ro rất cao và đẩy khách hàng vào tình thế “cầm dao đằng lưỡi”.</p>\r\n\r\n<div class="photo" style="text-align: center;">\n<img alt="rủi ro dự án bán nhà trên giấy" src="https://img.dothi.net/2017/05/05/Z9BcC3fq/ruiro-550e.jpg" style="width:600px" title="Khách hàng tham khảo thông tin mở bán một dự án nhà ở tại Hà Nội. "><br><em>Khách hàng tham khảo thông tin mở bán một dự án nhà ở tại Hà Nội.<br>\r\nẢnh: Chiến Công</em>\n</div>\r\n\r\n<p>Có thể dễ dàng thấy hệ lụy của hình thức kinh doanh này là hàng loạt dự án bị kiện cáo do chậm tiến độ, thậm chí chủ đầu tư ôm tiền biến mất khiến người mua nhà khóc dở, mếu dở. Trên thị trường, không hiếm các dự án huy động hàng trăm tỷ đồng trong khách hàng cả chục năm nay nhưng vẫn là bãi đất trống. Đơn cử, dự án lớn như Usilk City từng rơi vào vòng luẩn quẩn không lối thoát khi chủ đầu tư ôm tiền huy động trước tiêu vào mục đích khác, bỏ rơi khách hàng.</p>\r\n\r\n<p>Xung quanh thông tin này, GS.TSKH Đặng Hùng Võ thẳng thắn cho rằng bán nhà hình thành trong tương lai là hình thức mua bán không bền vững và Nhà nước nên cấm hình thức này. “Sở Xây dựng chịu trách nhiệm công bố danh sách các dự án được phép giao dịch BĐS hình thành trong tương lai thì giả định trường hợp người dân vẫn gặp rủi ro khi giao dịch tại các dự án này thì ai chịu trách nhiệm? Sự thật thì pháp luật đã có vì thế hãy để cho chủ đầu tư tự kiểm định dự án của mình có đủ điều kiện bán ra thị trường hay không. Lúc này, Sở Xây dựng mới đi kiểm tra chủ đầu tư đã thực thi đúng quy định không? Nếu chưa, cần phạt nặng. Như vậy, mới đúng cơ chế quản lý, chứ không phải đi làm thay trách nhiệm công bố cho chủ đầu tư” - ông Võ nhấn mạnh.</p>\r\n\r\n<h2><strong>Đi ngược nguyên lý phát triển</strong></h2>\r\n\r\n<p>Lý giải cụ thể hơn, GS.TSKH Đặng Hùng Võ cho biết, tại các nước phát triển, có giao dịch BĐS hình thành trong tương lai nhưng chủ yếu ở dạng thế chấp để vay vốn chứ không tập trung vào mua bán. Người ta chủ yếu mua - bán các căn nhà đang hiện hữu. Bởi nước họ có những ngân hàng chuyên cho vay BĐS kinh phí lớn, thậm chí ở nước ngoài còn có tình trạng dư vốn, cho vay không lãi suất, miễn là đồng tiền vận động được. Còn ở Việt Nam do thiếu vốn nên dẫn đến tình trạng bán nhà trên giấy. Dù Luật Kinh doanh BĐS có đưa ra một số hình thức để hạn chế tính không bền vững trong hình thức giao dịch này nhưng thực tế chưa phù hợp. Bởi, người mua nhà vẫn nộp tiền cho chủ đầu tư thay vì ngân hàng. Vì lẽ đó, chỉ có rất ít ngân hàng gắn lợi ích được với chủ đầu tư mới đồng ý đứng ra bảo lãnh.</p>\r\n\r\n<table align="right" border="0" cellpadding="0" cellspacing="0" class="tb-box" style="width:250px"><tbody><tr>\n<td style="background-color: rgb(186, 226, 237);">\r\n			<p>Bán nhà trên giấy là một hình thức bán hàng vì lợi ích của bên cung chứ không phải bên cầu. Trong khi đó, đã gọi là thị trường thì bắt buộc phải cân bằng lợi ích của bên cung và bên cầu.</p>\r\n\r\n			<p><strong>GS.TSKH Đặng Hùng Võ</strong></p>\r\n			</td>\r\n		</tr></tbody></table>\n<p>Đồng quan điểm, chuyên gia tài chính – ngân hàng, TS Nguyễn Trí Hiếu cho biết, mỗi quốc gia đều có những dự án nhà ở hình thành trong tương lai. Thế nhưng, giữa Mỹ và Việt Nam có một sự khác biệt rất lớn. Tại Mỹ các nhà đầu tư có đất, khi đi vay vốn của ngân hàng thì phải đảm bảo xây dựng xong mới được bán cho khách hàng, không được phép huy động tiền của dân chúng rồi đồng thời đi vay ngân hàng. Trường hợp, người dân Mỹ có tiền muốn mua căn hộ tại dự án hình thành trong tương lai có quyền đặt cọc trước. Tuy nhiên, chủ đầu tư phải mở một tài khoản ở ngân hàng, số tiền đặt cọc được bỏ vào tài khoản phong tỏa. Cho đến khi dự án hoàn thành, chủ đầu tư mới được nhận số tiền đó. Song song, giao cho người mua giấy chứng nhận quyền sở hữu trên căn hộ hoặc căn nhà đó. Tức là tiền trao cháo múc. Trong khi đó, ở Việt Nam thì ngược lại. Người dân khi mua nhà “trên giấy” phải được đứng ở cương vị người mua. Việc bắt họ bỏ tiền đầu tư là đang gián tiếp biến họ thành những nhà đầu tư bất khả kháng.</p>\r\n\r\n<p>Phân tích nguyên nhân cốt lõi của sự khác biệt này, vị chuyên gia này nhận định bắt nguồn từ môi trường kinh doanh, tài chính khác nhau của Việt Nam và Mỹ. Ở Mỹ, các nhà kinh doanh BĐS có thể vay mượn được ngân hàng dễ dàng. Bên cạnh đó, có các kênh quỹ đầu tư, bán cổ phiếu, trái phiếu để có vốn xây dựng dự án. Còn ở Việt Nam thì các nhà đầu tư BĐS không có phương tiện này. “Dù vậy, hiện tại thị trường vốn BĐS của nước ta đang dần dần được hình thành, các chủ đầu tư BĐS đã có kênh huy động vốn từ ngân hàng, phát hành cổ phiếu, trái phiếu và các quỹ đầu tư. Từ đó kỳ vọng, hình thành thị trường cấp vốn cho nhà đầu tư BĐS thay vì chạy vào trong dân để huy động vốn” – ông Hiếu cho hay.</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:500px"><tbody><tr>\n<td style="background-color: rgb(186, 226, 237);">\r\n			<p>Chuyên gia nhận định<br><strong>Người mua vẫn cầm “đằng lưỡi”</strong></p>\r\n\r\n			<p>Trao đổi với báo chí, TS Phạm Sỹ Liêm – Phó Chủ tịch Tổng hội Xây dựng Việt Nam cho rằng, ở Việt Nam, tình trạng bán nhà hình thành trong tương lai ngày càng nở rộ là do nhiều DN địa ốc kinh doanh theo hướng “tay không bắt giặc”. Vì thế, muốn có vốn thì nhanh nhất là huy động từ khách hàng. Từ khâu thiết kế dự án, quảng cáo truyền thông chỉ cần phù hợp thị hiếu (không gian công cộng, cây xanh, trường học, bệnh viện, tiện ích đẳng cấp...) là hoàn toàn có thể đi bán “trên giấy”. Người mua thấy quảng cáo hay thì nộp tiền vào mua. Khi mua cũng có ký kết nhưng thực tế sau đó còn phụ thuộc tình hình thị trường. Hầu hết các nhà đầu tư bất động sản không chỉ có một dự án mà tới 2 - 3 dự án, có dự án bán được, có dự án trì trệ. Họ lấy tiền của dự án bán được đầu tư sang dự án không bán được do thiếu vốn. Đến lúc không dự án nào hoàn chỉnh và hệ quả là không có nhà thực sự. Nhà có thể đã xây thô, có khi đã hoàn thiện nhưng tiện ích không có gì, không đường, không điện... rất lủng củng. Về phía người mua, khi mua một căn nhà phải dựa trên 3 yếu tố: Giá cả, chất lượng và tiến độ giao nhà. Giá cả phụ thuộc vào diện tích, chất lượng phụ thuộc vào đẳng cấp... nhưng đó chỉ là những lời hứa hẹn trên giấy, sau khi hoàn thiện có thiếu sót gì cũng không ai biết. Do đó, nên cải tiến việc bán nhà hình thành trong tương lai theo hướng sử dụng tiền đặt cọc. Số tiền đặt cọc thường chiếm khoảng 10% giá trị sản phẩm, không vào túi bên bán mà mở một tài khoản phong tỏa tại ngân hàng. Ngân hàng giữ số tiền này, còn chủ đầu tư sẽ vay tiền ngân hàng. Khi ngân hàng thấy dự án có nhiều người đặt cọc nghĩa là triển vọng bán được hàng thì sẽ yên tâm cho vay. Như thế mọi chuyện rất sòng phẳng, rõ ràng và không thể xảy ra chuyện lợi dụng lừa đảo lẫn nhau.</p>\r\n			</td>\r\n		</tr></tbody></table>\r\n        <em>\r\n            <em>(Theo Kinh tế &amp; Đô thị Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:40', '2017-05-05 15:04:40', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(20, 'Công khai dự án sai phạm nhưng nhà đã bán hết thì nghĩa lý gì?', 'cong-khai-du-an-sai-pham-nhung-nha-da-ban-het-thi-nghia-ly-gi', 'Cong khai du an sai pham nhung nha da ban het thi nghia ly gi', 'Việc công khai dự án bất động sản sai phạm lên các phương tiện thông tin theo các chuyên gia là việc làm cần thiết. Song, quan trọng là tính kịp thời của các thông tin đó, nếu công bố ra khi chủ đầu tư đã bán hết rồi thì cũng không có nghĩa lý gì....', 'https://img.dothi.net/2017/05/05/0Ln61R5F/20170505103102502624-3bf9.jpg', 7, '<p>Đoàn Thanh tra liên ngành của Hà Nội mới đây đã có báo cáo gửi UBND TP Hà Nội về thực hiện thanh tra, kết luận đối với các dự án khu nhà ở, khu đô thị mới trên địa bàn thành phố Hà Nội có sai phạm về quy hoạch, trật tự xây dựng đất.</p>\r\n\r\n<p>Kết quả thanh kiểm tra cho thấy, trong số 50 dự án được lựa chọn ngẫu nhiên để thanh tra có 38 dự án sai phạm về quy hoạch, xây dựng như: xây dựng vượt số tầng, thông tầng, vượt diện tích xây dựng, diện tích sàn xây dựng so với quy hoạch, thiết kế được duyệt hoặc giấy phép xây dựng, sử dụng sai công năng một số tầng trong toà nhà chung cư, thay đổi cơ cấu căn hộ, chưa hoàn thiện hồ sơ về quy hoạch, xây dựng… Trong đó có 15 dự án sai phạm về xây dựng, quy hoạch ảnh hưởng tới an toàn phòng cháy chữa cháy.</p>\r\n\r\n<p style="text-align:center"><img alt="sai phạm" src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505103102502624-3bf9.jpg" style="height:375px; width:500px" title="Dự án 88 Láng Hạ (Hà Nội) là một trong số các dự án vừa có tên trong kết quả thanh tra các dự án sai phạm khi chủ đầu tư tự ý xây dựng thêm vài căn penhouse tại tầng kỹ thuật và tầng mái ..."><br><em>Dự án 88 Láng Hạ (Hà Nội) là một trong số các dự án vừa có tên trong kết quả<br>\r\nthanh tra các dự án sai phạm khi chủ đầu tư tự ý xây dựng thêm vài căn<br>\r\npenhouse tại tầng kỹ thuật và tầng mái ...</em></p>\r\n\r\n<p>Bên cạnh đó, nhiều dự án chưa thẩm duyệt, nghiệm thu phòng cháy chữa cháy hoặc còn vướng mắc về nộp tiền sử dụng đất, chưa hoàn thành nghĩa vụ tài chính. Một số chủ đầu tư được nhà nước giao đất, cho phép chuyển mục đích sử dụng đất nhưng đã tự ý chuyển nhượng dự án cho chủ đầu tư thứ cấp không đúng quy định.</p>\r\n\r\n<p>Mới đây, UBND TP Hà Nội đã yêu cầu các Sở, ngành liên quan tăng cường công tác thanh tra kiểm tra xử lý nghiêm đối với các vi phạm trật tự xây dựng đô thị trên địa bàn thành phố. Trong đó, công khai các dự án bất động sản đang thế chấp ngân hàng, các dự án không thực hiện bảo lãnh, dự án chậm tiến độ, các dự án chưa nghiệm thu chất lượng công trình, chưa nghiệm thu phòng cháy chữa cháy đã đưa vào sử dụng.</p>\r\n\r\n<p>Đặc biệt, HĐND TP Hà Nội cũng đã đề xuất kiên quyết không xem xét cho các chủ đầu tư dự án nhà ở có dự án vi phạm pháp luật về đất đai, trật tự xây dựng, quy hoạch được tham gia đầu tư dự án mới.</p>\r\n\r\n<p>Liệu việc công khai các dự án vi phạm này của Hà Nội có tăng sức răn đe với các doanh nghiệp?</p>\r\n\r\n<p>Trao đổi với <strong>PV Infonet</strong>, ông Nguyễn Thế Điệp, Chủ tịch HĐQT Công ty Cổ phần Đầu tư Reenco Sông Hồng kiêm Phó Chủ tịch Câu lạc bộ Bất động sản Hà Nội cho rằng, việc công khai thông tin sai phạm tại các dự án bất động sản là cần thiết và thỏa đáng.</p>\r\n\r\n<p>Theo ông, thực tế đã có nhiều doanh nghiệp bưng bít thông tin, không ai biết nên rất cần công khai thông tin sai phạm của các dự án. Hiện trên thị trường bất động sản đã có một số dự án khi bán hàng thì công khai lối đi vào dự án như thế này nhưng khi người dân về ở lại bắt đi lối khác, như thế là chủ đầu tư vi phạm, không công khai thông tin. Ngoài ra, nhiều dự án bàn giao cho người dân khi dự án chưa đảm bảo an toàn về phòng cháy chữa cháy và các điều kiện khác… gây nguy hiểm cho người dân thì cần công khai rõ ràng.</p>\r\n\r\n<p>“Nếu liền một lúc kiểm tra, kiểm soát tất cả thì khó nhưng nếu kiểm tra đến đâu công khai lên công luận đến đó thì tất cả người dân đều biết được, chắc chắn họ sẽ từ chối mua hoặc giá trị dự án sẽ thấp đi nếu không đảm bảo. Công khai minh bạch thông tin là việc làm chính xác”, ông Điệp nói thêm.</p>\r\n\r\n<p>Cũng theo ông Điệp, thị trường bất động sản Việt Nam mới hình thành khoảng 10-15 năm nay nên chúng ta không thể cầu toàn như các nước, nhưng vì còn nhiều khiếm khuyết nên cần đưa ra công luận để tự doanh nghiệp nhìn lại mình để làm sao làm tốt hơn, có thể cạnh tranh giữa các doanh nghiệp được. Doanh nghiệp nào cố tình thì phải xử lý, còn nếu doanh nghiệp nào do lý do khách quan hay chủ quan thì có thể xem xét cho hoàn chỉnh.</p>\r\n\r\n<p>“Bản thân tôi cũng là doanh nghiệp, tôi hiểu doanh nghiệp cũng gặp muôn vàn khó khăn, rủi ro về chính sách, tiền tệ, thị trường…., nhất là bất động sản nên chúng ta phải có cái nhìn khách quan và công bằng. Dần đưa doanh nghiệp vào khuôn khổ chứ liền một lúc mà “ép như ép giò” thì hơi khó, đồng thời cần hoàn chỉnh về cơ chế chính sách cho tốt hơn”, ông Điệp cho hay.</p>\r\n\r\n<p>Còn ông Trần Ngọc Quang, Tổng Thư ký Hiệp hội Bất động sản Việt Nam cho rằng, cần công bố sớm, thường xuyên và có cơ chế để người dân tiếp cận được các thông tin đó một cách dễ dàng.</p>\r\n\r\n<p>“Tôi cho rằng, hiện nay chúng ta làm quá muộn so với nhu cầu thực tế, không đáp ứng được nhu cầu của thị trường. Quan trọng là tính kịp thời của các thông tin đó, nếu công bố ra khi chủ đầu tư đã bán hết rồi thì cũng không có nghĩa lý gì cả. Đặc biệt, độ chính xác của các thông tin đó ở mức độ nào. Khi đã cấp giấy phép, cho bán rồi thì việc hậu kiểm của cơ quan quản lý nhà nước là rất quan trọng để kiểm tra xem dự án đó có thực hiện đúng cam kết hay không”- ông Quang nói.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Infonet)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:40', '2017-05-05 15:04:40', 1, 1),
(21, 'Có nên mua nhà xây sẵn hay mua đất để xây?', 'co-nen-mua-nha-xay-san-hay-mua-dat-de-xay', 'Co nen mua nha xay san hay mua dat de xay', 'Phong trào mua đất phân lô xây nhà sẵn để bán hiện là trào lưu đang nở rộ. Một dãy phố xây dựng khang trang, đường nội bộ được thảm bê tông nhựa, kiểu cách xây dựng mới đồng bộ của các nhà đầu tư nhỏ lẻ tại các khu vực vùng ven như Tân Bình, Quận 12, Gò Vấp,… cũng đang rất thu hút khách.', 'https://img.dothi.net/2017/05/05/0Ln61R5F/20170505103047680624-b53d.jpg', 7, '<p>Nếu bạn cần mua nhà gấp để ở như : Mua nhà để làm chỗ ở cho con học đại học, bán nhà sau khi phân chia tài sản cần có chỗ ở gấp không muốn mất thời gian xây nhà và phải ở nhà thuê, thì yếu tố thời gian được đặt lên hàng đầu.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505103047680624-b53d.jpg" style="height:375px; width:500px"></p>\r\n\r\n<p>Điều lo lắng của tất cả mọi người khi mua nhà xây sẵn là chất lượng công trình có đảm bảo không? Chủ đầu tư xây nhà để bán là các doanh nghiệp lớn, có thương hiệu, có quy trình xây dựng bài bản, có uy tín sẽ làm bạn yên tâm. Nhà đầu tư bất động sản nhỏ lẻ, thì chất lượng sẽ phụ thuộc rất lớn vào cái tâm của họ.</p>\r\n\r\n<p>Đa phần nhà xây sẵn để bán, có kiến trúc đẹp, mẫu mã khá bắt mắt. Tuy nhiên chất lượng là điều cũng đáng để bàn. Do yêu tố cần thi công nhanh để xoay vòng vốn, và yếu tố quá tiết kiệm nên những vấn đề liên quan đến hạng mục thi công bị che khuất như: xây bể phốt có mấy ngăn, hố ga có làm con thỏ chống hôi hay không, chống thấm WC, mái, sân thượng bằng vật liệu chống thấm có phù hợp hay không, có bền thời gian hay chỉ sử dụng được ba mùa mưa. Câu chuyện ba mùa mưa rất hay xảy ra. Hệ thống ống nước sử dụng ống uPVC Bình Minh hay nhưa tổ hợp cứng, giòn, rẻ. Hệ thống dây điện ngoài yếu tố thương hiệu như Cadivi, đường kính tiết diện dây cũng khá quan trọng, đấu nối dây điện bằng cách mượn nguội (dây lạnh hay còn gọi là trung tính) giúp tiết kiệm dây nhưng hậu quả rất lớn ảnh hưởng đến cháy vì chập điện do dây nhỏ không đáp ứng được công suất sử dụng, cũng như an toàn về điện</p>\r\n\r\n<p>Xây dựng một căn nhà mới theo nhu cầu sử dụng và gu thẩm mỹ riêng mình, yếu tố tự do được cân nhắc kỹ. Giải pháp xây nhà trọn gói được ưu tiên lựa chọn. Khác với nhà bán sẵn, bạn có thể yêu cầu kiến trúc sư bố trí hướng bếp, vị trí bếp theo cung, mạng phong thủy của mình. Nhu cầu công năng sử dụng như: mấy phòng ở, có WC chung hay riêng, phòng thờ, phòng giặt, thư viện, phòng tập thể dục nhà thầu xây dựng và kiến trúc sư giúp bạn ngay từ khâu bản vẽ thiết kế kiến trúc.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505103047680611-9295.jpg" style="height:749px; width:500px"></p>\r\n\r\n<p>Khi Bạn mua đất để tự xây nhà thông thường sẽ tiết kiệm chi phí hơn so với mua nhà xây dựng sẵn. Tuy Bạn tốn nhiều thời gian hơn từ khâu chọn đất, đến khâu lựa chọn nhà thầu thi công xây dựng. Một căn nhà được thiết kế thi công theo ý tưởng của Bạn sẽ làm bạn vừa ý hơn và yên tâm hơn trong quá trình sử dụng.</p>\r\n\r\n<p>Việc có nên mua nhà xây sẵn hay mua đất để xây đều tùy thuộc vào yếu tố thời gian, tài chính, chất lượng công trình, thẩm mỹ, độ bền vững theo thời gian, sự thoải mái trong sử dụng. Hãy cân nhắc thật kỹ để có một căn nhà vừa ý!</p>\r\n\r\n<p>Việc có nên mua nhà xây sẵn hay mua đất để xây đều tùy thuộc vào yếu tố thời gian, tài chính, chất lượng công trình, thẩm mỹ, độ bền vững theo thời gian, sự thoải mái trong sử dụng. Hãy cân nhắc thật kỹ để có một căn nhà vừa ý!</p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:41', '2017-05-05 15:04:41', 1, 1),
(22, 'Tồn kho cũ chưa hết, thị trường BĐS lại đối mặt với nỗi lo hàng tồn kho mới', 'ton-kho-cu-chua-het-thi-truong-bds-lai-doi-mat-voi-noi-lo-hang-ton-kho-moi', 'Ton kho cu chua het, thi truong BDS lai doi mat voi noi lo hang ton kho moi', 'Tính đến 20/4/2017, tổng giá trị tồn kho bất động sản còn khoảng 28.369 tỷ đồng, giảm so với tháng 12/2016 là 2.654 tỷ đồng (giảm 8,55%).', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/ton-kho-1e7d.jpg', 7, '<p style="text-align: center;"><img src="https://img.dothi.net/2017/05/05/Z9BcC3fq/ton-kho-1e7d.jpg" style="height:333px; width:500px"></p>\r\n\r\n<p>Theo Bộ Xây dựng, tồn kho bất động sản tiếp tục giảm, nhưng tốc độ giảm đã chậm lại, tồn kho chủ yếu là đất nền tại các dự án xa trung tâm chưa có hạ tầng đầy đủ. Tính đến 20/4/2017, tổng giá trị tồn kho bất động sản còn khoảng 28.369 tỷ đồng, giảm so với tháng 12/2016 là 2.654 tỷ đồng (giảm 8,55%), giảm so với thời điểm 20/3/2017 là 624 tỷ đồng).</p>\r\n\r\n<p>Theo đánh giá của các chuyên gia, con số tồn kho bất động sản hiện tại đã giảm đáng kể vì thị trường đang tốt, nhiều dự án đang triển khai lại. Tuy nhiên, các chuyên gia cung lo lắng trong vài năm trở lại đây các dự án mới ồ ạt tung ra thị trường. Dù hàng cũ đã được giải phóng, nhưng còn một số hàng mới vẫn chưa bán hết được. Câu hỏi đặt ra là liệu có xuất hiện hàng tồn kho mới nữa không.</p>\r\n\r\n<p>Báo cáo của đơn vị nghiên cứu CBRE, Savills cũng chỉ rõ giao dịch trên thị trường BĐS từ cuối năm 2016 bắt đầu hạ nhiệt và chững lại. Nhu cầu mua để ở đang bị lấn lướt bởi nhu cầu đầu tư, đầu cơ trên thị trường. Trong khi đó, lượng hàng mới vẫn liên tục được bung ra khiến nỗi lo dư thừa nguồn cung tăng cao.</p>\r\n\r\n<p>Ông Nguyễn Trần Nam, chủ tịch Hiệp hội BĐS Việt Nam - Nguyên thứ trưởng Bộ Xây dựng cũng nhiều lần bày tỏ lo ngại tình trạng dư thừa nguồn cung BĐS cao cấp trên thị trường BĐS hiện nay. "Những nguy cơ hiện nay như là mất cân đối, thiếu vắng các sản phẩm trung bình, sản phẩm thấp, nhà ở xã hội bây giờ đã chậm lại, nếu không có cảnh báo và điều chỉnh sớm rất có nguy cơ trong 1 vài năm tới, thị trường bất động sản sẽ đi lại vết xe đổ cách đây mấy năm, đó là thừa những cái không cần và thiếu những cái xã hội và người dân đang rất cần”, ông Nam cho biết.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Tri thức trẻ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:42', '2017-05-05 15:04:42', 1, 1),
(23, 'Nguy cơ ‘mất cả chì lẫn chài’ vì ăn theo hạ tầng', 'nguy-co-‘mat-ca-chi-lan-chai’-vi-an-theo-ha-tang', 'Nguy co ‘mat ca chi lan chai’ vi an theo ha tang', 'Dự án ăn theo hạ tầng là câu chuyện không có gì mới mẻ. Tuy nhiên, trong bối cảnh TP.HCM đang thiếu vốn trầm trọng cho các dự án đang triển khai, thì việc chạy theo những dự án hạ tầng còn trên giấy, đang tiềm ẩn nhiều rủi ro cho nhà đầu tư.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/ha-tang-7cf9.jpg', 7, '<h2 style="text-align:justify">Vốn cho hạ tầng ngày càng khó khăn</h2>\r\n\r\n<p>Theo TS.Đinh Thế Hiển, hiện tại nhiều dự án hạ tầng đang triển khai tại TP.HCM rơi vào tình trạng “căng thẳng” về vốn. Không ít dự án có khả năng thi công chậm hoặc ngưng thi công.</p>\r\n\r\n<p>“Việc chậm vốn trong triển khai các dự án hạ tầng là điều dễ hiểu, do quy trình giải ngân phải trải qua nhiều thủ tục, từ thiết kế được duyệt, rồi qua bộ phận giải ngân, mà cái này từ xưa đến giờ chúng ta làm rất yếu kém. Nguyên nhân là khâu thủ tục phức tạp quá nên việc triển khai và hoàn tất thủ tục kéo dài.</p>\r\n\r\n<p>Một dự án khi thực hiện phải kéo thời gian rất dài, nên mới có chuyện cuối năm TP làm đường làm sá. Cái này đáng lẽ phải thực hiện trong năm nhưng cuối năm mới bắt đầu bỏ vốn, rồi đi giải ngân, xây dựng. Hiện tại, chúng ta chưa có cải tiến đáng kể trong khâu thủ tục nên giải ngân chậm.</p>\r\n\r\n<p style="text-align:center"><img alt="Dự án " src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505103024171311-504b.jpg" style="height:320px; text-align:center; width:500px" title="Dự án tuyến Metro số 1 có nguy cơ thi công chậm để chờ vốn"><br><em>Dự án tuyến Metro số 1 có nguy cơ thi công chậm để chờ vốn</em></p>\r\n\r\n<p>Còn một số trường hợp giải ngân thiếu, như trường hợp của tuyến Metro số 1. Nguyên nhân là do dự án đội vốn. Ngân sách chỉ phân bổ một số tiền dựa trên nguyên tắc cân bằng. Một dự án lớn như metro thì đội vốn rất lớn. Do đó, ngân sách chưa cân bằng kịp, nguồn bố trí cho dự án không kịp. Thành ra, dự án có nguy cơ thi công chậm để chờ vốn.</p>\r\n\r\n<p>Việc triển khai các dự án hạ tầng quan trọng là phải dựa vào năng lực ngân sách và tính tất yếu. Ngân sách của TP.HCM hiện nay chắn chắn có hạn, do TP phải điều tiết cho Trung ương thêm 5%, mà Trung ương lại đang gặp vấn đề về cân đối ngân sách. Vốn bố trí cho các dự án hạ tầng sẽ có hạn và ngày càng khó khăn hơn nữa”, ông nhận định.</p>\r\n\r\n<p>TS.Đinh Thế Hiển cho biết xét về hạ tầng luôn xảy ra tình trạng chênh lệch giữa vốn trong quá trình lập dự án và thực hiện. Hiện tại, chưa có giải pháp nào khả thi để khắc phục chênh lệch này.</p>\r\n\r\n<p>Nguyên nhân là do quá trình lập dự án đến triển khai giải ngân kéo dài thời gian làm cho vốn trên thực tế tăng. Chưa kể, năng lực quản lý dự án của TP còn yếu kém. “Khó khăn đó làm cho vốn bố trí của dự án sẽ không đáp ứng được vốn triển khai và có thể ngưng trệ do thiếu vốn khiến cho dự án đó vừa kéo dài vừa tăng lãng phí. Chúng ta có vốn làm một lèo thì khác. Cái này vẫn có thể lặp lại trong nhiều dự án khác”.</p>\r\n\r\n<h2>Thận trọng khi đầu tư ăn theo hạ tầng</h2>\r\n\r\n<p>Nói về các dự án được ưu tiên thực hiện trong tình trạng TP.HCM “đói vốn”, TS Đinh Thế Hiển cho rằng, sẽ phải dựa trên nguyên tắc, dự án nào có tính lan tỏa chung, phục vụ cho sản xuất kinh doanh sẽ được ưu tiên. Ví dụ như việc mở rộng đường Quốc lộ 1 để lưu thông hàng hóa; mở rộng cảng do đường đang bị ùn tắc hoặc cảng vượt công suất… Còn những dự án mang tính giao thông, mở rộng khu đô thị mới như Cần Giờ, cầu qua đảo Kim Cương thì phải xếp vào cuối cùng.</p>\r\n\r\n<p>“Chúng ta không thể nào có vốn để làm đủ tất cả các dự án. Đây là điều chắc chắn. Vì vậy, những dự án nào mà qua việc mở rộng đó làm tăng nguồn thu thì nên thực hiện theo hình thức BOT hay công tư. Trong đó, vốn chủ yếu từ các công ty tư nhân chấp nhận làm. Còn những dự án tư nhân ứng tiền ra làm liên quan đến bất động sản như mở đường ở Tân Cảng, cái đó thực chất vẫn là TP thiếu nợ, vì vậy không nên ưu tiên, dù là tư nhân ứng tiền.</p>\r\n\r\n<p>Với những người ăn theo hạ tầng, đầu tư những khu vực nào sau này hạ tầng tốt mà giá đất lên là hợp lý, không có vấn đề gì. Vấn đề là việc đầu tư dùng vốn dài hạn của mình hay là lướt sóng với vốn vay.</p>\r\n\r\n<p>Nếu chúng ta thấy vùng đó đón đầu quy hoạch để nhảy vào mua nhưng nguồn vốn đó không phải là vốn dài hạn mà là vốn vay thì nguy cơ đối đầu với rủi ro rất cao. Nếu dự án hạ tầng đó không triển khai thì hoàn toàn mất vốn trong vài ba năm.</p>\r\n\r\n<p>Thực tế một dự án hạ tầng không thể triển khai hay triển khai chậm trong vòng 5-7 năm là chuyện bình thường, chỉ cần một dự án mà vay vốn 50% trong 3 - 4 năm thì gần như khả năng đóng lãi bằng với vốn bỏ ra ban đầu”, ông nói thêm.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Vietnamnet)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:42', '2017-05-05 15:04:42', 1, 1),
(24, 'Nguy cơ bị mất trắng khi mua nhà hình thành trong tương lai', 'nguy-co-bi-mat-trang-khi-mua-nha-hinh-thanh-trong-tuong-lai', 'Nguy co bi mat trang khi mua nha hinh thanh trong tuong lai', 'Thời gian vừa qua, thị trường bất động sản xuất hiện một số doanh nghiệp đưa một dự án thế chấp ngân hàng 2 lần. Hình thức thế chấp dự án này sẽ gây rủi ro rất lớn cho khách hàng, vì nếu dự án không thực hiện được, khách hàng sẽ mất trắng.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/mua-nha-b37a.jpg', 7, '<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="mua dự án thế chấp " src="https://img.dothi.net/2017/05/05/Z9BcC3fq/mua-nha-b37a.jpg" style="height:275px; width:500px" title="Tiềm ẩn nhiều rủi ro khi mua dự án thế chấp ngân hàng - Ảnh: TL"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Tiềm ẩn nhiều rủi ro khi mua dự án thế chấp ngân hàng - Ảnh: TL</em></td>\r\n		</tr>\n</tbody></table>\n<h2>Người mua rủi ro nhất</h2>\r\n\r\n<p>Theo ông Lê Hoàng Châu - Chủ tịch Hiệp hội Bất động sản TP.HCM, quy định về bảo lãnh ngân hàng chỉ mới được luật đưa vào áp dụng một thời gian ngắn nhưng trên thực tế việc thực hiện chưa hợp lý.</p>\r\n\r\n<p>Trên thị trường, thời gian vừa qua đã xuất hiện một số doanh nghiệp bất động sản đưa dự án thế chấp ngân hàng 2 lần. Cụ thể, doanh nghiệp đem sổ đỏ của dự án đi thế chấp vay tiền lần thứ nhất và tiếp tục thế chấp những căn hộ đã bán cho khách hàng để vay tiền lần thứ hai, trong khi pháp luật chỉ cho phép dự án thế chấp một lần.</p>\r\n\r\n<p>“Đây là hình thức làm ăn không đàng hoàng, lừa dối khách hàng, ảnh hưởng xấu đến thị trường. Hình thức thế chấp dự án này sẽ gây rủi ro rất lớn cho khách hàng, vì nếu dự án không thực hiện được, khách hàng sẽ mất trắng”, ông Châu nhận định.</p>\r\n\r\n<p>Chuyên gia tài chính TS. Nguyễn Trí Hiếu cũng cho rằng người mua nhà tại Việt Nam đang bị lợi dụng, do chưa quan tâm đến vấn đề ngân hàng bảo lãnh cho chủ đầu tư trong bán và cho thuê nhà ở hình thành trong tương lai. Người mua chỉ quan tâm về tên tuổi chủ đầu tư mà không quan tâm đến vấn đề bảo lãnh.</p>\r\n\r\n<p>Theo ông, tại Mỹ không có việc bảo lãnh bất động sản hình thành trong tương lai. Chủ đầu tư tại nước này không được phép ra ngoài kêu gọi người dân đóng góp vào. Nếu người dân muốn mua nhà từ khi chưa hình thành thì chủ đầu tư phải đưa số tiền đó vào một “kho” riêng. Đến khi dự án xây xong, chủ đầu tư mới được lấy tiền đó mang trả ngân hàng.</p>\r\n\r\n<p>“Người mua nhà tại Việt Nam đang bị lợi dụng vì có những trường hợp tiền mất tật mang do năng lực yếu của chủ đầu tư. Khi những ông chủ này vỡ nợ, không triển khai sẽ gây thiệt hại cho người tiêu dùng. Điều thiếu sót trong bảo lãnh bất động sản tại Việt Nam là ngân hàng chỉ bảo lãnh cho người mua nhà trong việc bắt buộc chủ đầu tư phải giao đúng tiến độ nhưng lại không bảo lãnh chất lượng sản phẩm”, ông Hiếu nhận định.</p>\r\n\r\n<h2>Cần có nhiều sự ràng buộc</h2>\r\n\r\n<p>Ông Nguyễn Hoàng Minh - Phó giám đốc Ngân hàng Ngân hàng chi nhánh TP.HCM, cho rằng nhà ở hình thành trong tương lai ở nước ta cần có nhiều ràng buộc để hoàn thiện và hạn chế rủi ro.</p>\r\n\r\n<p>Hiện tại, có 3 vấn đề cần phải làm rõ, đó là đánh giá hiện trạng thị trường bất động sản TP.HCM có khả năng xảy ra bong bóng hay không; làm thế nào để người mua nhà nhận được nhà và cấp giấy chủ quyền; tránh tình trạng một nhà mà bán nhiều người. Ngân hàng chỉ bảo lãnh đối với nghĩa vụ tài chính của chủ đầu tư đối với khách hàng chứ không phải bảo lãnh dự án và công trình bất động sản.</p>\r\n\r\n<p>Theo ông Minh, điều 56 của Luật Kinh doanh Bất động sản về nội dung bảo lãnh của ngân hàng có 2 khía cạnh cần làm rõ. Thứ nhất là ngân hàng chỉ bảo lãnh về nghĩa vụ tài chính của chủ đầu tư với khách hàng, tức ngân hàng bảo lãnh thay chủ đầu tư trả tiền khách góp vào căn hộ khi chủ đầu tư không thể thực hiện bàn giao nhà như cam kết. Thứ hai là việc bảo lãnh nhằm vào khía cạnh quản lý, quản trị để hạn chế rủi ro, không phải đặt ra để siết chủ đầu tư hay nâng cao giá trị của dự án mà tạo giá trị ảo.</p>\r\n\r\n<p>Phó giám đốc Ngân hàng Nhà nước chi nhánh TP.HCM đánh giá qua sự cố một vài chủ đầu tư thế chấp dự án cho ngân hàng, nhà nước đã rốt ráo xử lý nhằm đảm bảo quyền lợi người mua nhà và ngân hàng. Tuy nhiên, qua đó cũng thấy rủi ro rất lớn đối với người mua nhà khi mua những dự án như thế. </p>\r\n\r\n<p>Cũng bàn về vấn đề này, luật sư Hà Hải cho biết những quy định về hợp đồng mua bán nhà ở hình thành trong tương lai được quy định tại nhiều bộ luật. Thế nhưng, trên thực tế tình trạng người mua căn hộ không thể tiếp cận thông tin một cách đầy đủ. </p>\r\n\r\n<p>Vì vậy, tình trạng vi phạm hợp đồng, chiếm dụng vốn của người mua, không giao nhà hoặc giao nhà trễ hẹn hoặc giao nhà nhưng không có giấy tờ hợp lệ vẫn thường xuyên xảy ra. Có những trường hợp người mua nhà 10 năm vẫn chưa có giấy chứng nhận quyền sở hữu. Khi tranh chấp phát sinh, cơ quan thẩm quyền vẫn còn lúng túng trong quá trình giải quyết vì thiếu các quy định pháp luật.</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:500px"><tbody><tr>\n<td style="background-color: rgb(186, 226, 237);">\r\n			<p><strong>Cân nhắc việc mua nhà hình thành trong tương lai</strong></p>\r\n\r\n			<p>Để tránh rủi ro khi mua nhà hình thành trong tương lai, TS Nguyễn Trí Hiếu khuyên người mua cần quan tâm các vấn đề liên quan đến những dự án đã có bảo lãnh. Khách hàng phải xem lại việc mua những căn nhà hình thành trong tương lai nếu như chủ đầu tư không cung cấp giấy tờ bảo lãnh dự án. Đặc biệt, chủ đầu tư cũng cần phải thông báo đến khác hàng về việc ngân hàng đang bảo lãnh dự án.</p>\r\n\r\n			<p>“Tại Mỹ, có nhiều thông tin liên quan đến năng lực chủ đầu tư nhưng Việt Nam lại không có nhiều thông tin này dẫn đến khó khăn cho khách hàng trong việc tìm kiếm thông tin. Vì vậy, khách hàng có thể tìm hiểu năng lực chủ đầu tư và việc bảo lãnh bất động sản của các ngân hàng bảo lãnh thông qua Ngân hàng Nhà nước.</p>\r\n\r\n			<p>Việc bảo lãnh là rất cần thiết để bảo vệ quyền lợi người tiêu dùng vì chỉ có như vậy những tình trạng ôm nợ, tiền mất tật mang sẽ không còn xảy ra nữa”, ông nói thêm”, ông Hiếu nói thêm.</p>\r\n			</td>\r\n		</tr></tbody></table>\r\n        <em>\r\n            <em>(Theo Một thế giới)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:43', '2017-05-05 15:04:43', 1, 1),
(25, 'An Giang tái định cư cho 20.000 hộ dân vùng sạt lở', 'an-giang-tai-dinh-cu-cho-20000-ho-dan-vung-sat-lo', 'An Giang tai dinh cu cho 20.000 ho dan vung sat lo', 'Theo dự báo, hiện tại toàn tỉnh có 51 đoạn sông, rạch trên địa bàn có nguy cơ sạt lở, số lượng hộ dân bị ảnh hưởng lên đến 20.000 hộ.', 'https://img.dothi.net/2017/05/05/Z9BcC3fq/tai-dinh-cu-4123.jpg', 7, '<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="tái định cư nhà ở" src="https://img.dothi.net/2017/05/05/Z9BcC3fq/tai-dinh-cu-4123.jpg" style="height:335px; width:500px" title="Đến năm 2025, An Giang sẽ tái định cư nhà ở cho 20.000 hộ dân nằm trong vùng bị sạt lở"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Đến năm 2025, An Giang sẽ tái định cư nhà ở cho 20.000 hộ dân nằm trong vùng bị sạt lở</em></td>\r\n		</tr>\n</tbody></table>\n<p>Ông Trần Anh Thư, GĐ Sở NN-PTNT An Giang, cho biết, sau khi xảy ra vụ sạt lở sông Vàm Nao (thuộc xã Mỹ Hội Đông, huyện Chợ Mới) chính quyền địa phương đã khẩn trương triển khai các chính sách tái định cư cho người dân vùng sạt lở.</p>\r\n\r\n<p>Theo dự báo, hiện tại toàn tỉnh có 51 đoạn sông, rạch trên địa bàn có nguy cơ sạt lở, số lượng hộ dân bị ảnh hưởng lên đến 20.000 hộ. Tỉnh ủy An Giang đề xuất Trung ương hỗ trợ kinh phí để thực hiện các đề án di dời vào tuyến dân cư.</p>\r\n\r\n<p>Hiện tại tỉnh đang gấp rút xây dựng 15 cụm, tuyến dân cư tại 15 xã, phường, thị trấn trong toàn tỉnh với tổng nguồn vốn đầu tư khoảng 1.000 tỷ đồng. Riêng với 16 hộ mất nhà do sạt lở sông Vàm Nao đã được một doanh nghiệp tài trợ xây dựng nhà cửa ở khu dân cư. Từ nay đến năm 2025 tỉnh phải chuyển hết người dân ở vùng có nguy cơ sạt lở về nơi ở mới, không để ai phải thiếu nhà cửa.</p>\r\n    \r\n        <em>\r\n            <em>(Theo NNVN)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:43', '2017-05-05 15:04:43', 1, 1),
(26, 'Báo cáo Thủ tướng kết quả thanh tra công trình 18 tầng không phép', 'bao-cao-thu-tuong-ket-qua-thanh-tra-cong-trinh-18-tang-khong-phep', 'Bao cao Thu tuong ket qua thanh tra cong trinh 18 tang khong phep', '“Hiện các cơ quan chức năng của Thành phố đang trong quá trình thanh tra, kiểm tra. Thực tế, đã nhiều lần các cơ quan chức năng của Thành phố lập biên bản vi phạm nhưng tập đoàn FLC thực hiện không nghiêm túc”, Bộ trưởng Mai Tiến Dũng chia sẻ.', 'https://img.dothi.net/2017/05/05/0Ln61R5F/20170505081218612124-7c9f.jpg', 7, '<p style="text-align:center"><img alt="xây dựng không phép " src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505081218612124-7c9f.jpg" style="height:333px; text-align:center; width:500px" title="Công trình 18 tầng xây dựng không phép giữa thủ đô."><br><em>Công trình 18 tầng xây dựng không phép giữa thủ đô.</em></p>\r\n\r\n<p>Tại buổi họp báo thường kỳ Chính phủ chiều 4/5, PV đặt câu hỏi về công trình 18 tầng tại dự án The Garden City xây dựng chưa có giấy phép. Nhiều cơ quan chức năng đã xử phạt hành chính nhưng cũng không ngăn chặn được. Hiện nay dự án được báo chí phản ánh đã mở bán cho người dân. Với công trình 18 tầng không phép ngay giữa lòng Thủ đô Hà Nội như vậy, quan điểm của Chính phủ về sai phạm ấy ra sao và cách xử lý?</p>\r\n\r\n<p>Trả lời câu hỏi trên, Bộ trưởng Chủ nhiệm Văn phòng Chính phủ Mai Tiến Dũng cho biết, trước đây dự án nằm tại Đại Mỗ, Từ Liêm, Hà Nội, với quy mô 8 ha và vốn đầu tư 3.500 tỷ đồng do chủ đầu tư ban đầu là Công ty Cổ phần địa ốc Alaska.</p>\r\n\r\n<p>Dự án đã được phê duyệt quy hoạch chi tiết, nhưng tháng 8/2013 chủ đầu tư có chuyển nhượng cho tập đoàn FLC. Công trình này đúng là xây dựng không phép và hiện Sở Xây dựng Hà Nội đang thanh tra, kiểm tra theo tinh thần chỉ đạo của Thành ủy, UBND Thành phố Hà Nội. Kết quả kiểm tra, thanh tra chưa báo cáo với Bí thư Hà Nội.</p>\r\n\r\n<p>Theo Bộ trưởng, việc vi phạm công trình xây dựng không phép tại Thành phố là thuộc thẩm quyền của Thành phố. Nhưng tinh thần chỉ đạo của Thủ tướng là có thái độ rất cương quyết.</p>\r\n\r\n<p>“Các công trình xây dựng đều phải thực hiện theo quy định, phải được cấp phép; nếu không phải xử lý theo quy định”, ông Dũng nhấn mạnh.</p>\r\n\r\n<p>Cũng theo bộ trưởng Mai Tiến Dũng, hiện các cơ quan chức năng của Thành phố đang trong quá trình thanh tra, kiểm tra. Thực tế, đã nhiều lần các cơ quan chức năng của Thành phố lập biên bản vi phạm nhưng tập đoàn FLC thực hiện không nghiêm túc.</p>\r\n\r\n<p>“Trước hết tôi xin cảm ơn báo chí đã phản ánh và chúng tôi xin chuyển thông tin này tới các cơ quan chức năng và báo cáo Thủ tướng kết quả thanh tra, kiểm tra”, ông Dũng cho hay.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:43', '2017-05-05 15:04:43', 1, 1),
(27, 'Phó Thủ tướng yêu cầu làm rõ việc đất dự án bị ''xẻ thịt'' quận Cầu Giấy', 'pho-thu-tuong-yeu-cau-lam-ro-viec-dat-du-an-bi-xe-thit-quan-cau-giay', 'Pho Thu tuong yeu cau lam ro viec dat du an bi ''xe thit'' quan Cau Giay', 'Phó Thủ tướng Thường trực Trương Hòa Bình yêu cầu UBND thành phố Hà Nội kiểm tra nội dung phản ánh của báo điện tử Tiền phong liên quan đến việc cho thuê đất mương thoát nước Nghĩa Đô, quận Cầu Giấy, thành phố Hà Nội.', 'https://img.dothi.net/2017/05/05/0Ln61R5F/20170505081212606124-b14d.jpg', 7, '<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505081212606124-b14d.jpg" style="height:281px; text-align:center; width:500px"></p>\r\n\r\n<p>Trước đó, báo điện tử Tiền phong ngày 20/4/2017 có bài "Thêm 14.000 m2 đất dự án bãi đỗ xe bị ''xẻ thịt'' làm nhà hàng", phản ánh: tại quận Cầu Giấy, thành phố Hà Nội, khu đất rộng 14.000 m2 thuộc dự án cống hóa mương thoát nước Nghĩa Đô kết hợp bãi đỗ xe và công trình dịch vụ phụ trợ dọc theo mặt tiền đường Nguyễn Khánh Toàn đang bị sử dụng sai mục đích, chia lô cho thuê mở trung tâm thương mại, nhà hàng, quán ăn.</p>\r\n\r\n<p>Về việc này, Phó Thủ tướng Trương Hòa Bình yêu cầu UBND thành phố Hà Nội kiểm tra nội dung phản ánh của báo điện tử <em>Tiền phong</em>; làm rõ cơ sở pháp luật cho thuê đất, cấp giấy chứng nhận quyền sử dụng đất mương thoát nước Nghĩa Đô cho doanh nghiệp để sử dụng làm mặt bằng kinh doanh và các vi phạm liên quan đến việc cho thuê đất, cấp giấy chứng nhận quyền sử dụng đất, xây dựng, sử dụng đất mương thoát nước Nghĩa Đô, báo cáo Thủ tướng Chính phủ trước ngày 1/6/2017.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505081212606111-5fcd.jpg" style="height:281px; width:500px"></p>\r\n\r\n<p>Sau những phản ánh về dự án cống hóa kênh mương Phan Kế Bính và mương nước Nghĩa Đô làm bãi đỗ xe bị biến thành "phố kinh doanh" trong nhiều năm. UBND quận Ba Đình đang có kiến nghị thu hồi khu đất để làm đường giao thông.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:44', '2017-05-05 15:04:44', 1, 1),
(28, 'Vì sao dân trong chung cư nguy hiểm không chịu di dời?', 'vi-sao-dan-trong-chung-cu-nguy-hiem-khong-chiu-di-doi', 'Vi sao dan trong chung cu nguy hiem khong chiu di doi', 'Nằm trong danh sách công trình cấp độ D, khu nhà G6A Thành Công được đánh giá là khu nhà tập thể nguy hiểm nhất Hà Nội. Thế nhưng, những người dân ở đây thì cho rằng: Họ vẫn sống tốt mà không cần cải tạo, sửa chữa gì!', 'https://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162524-e384.jpg', 7, '<p style="text-align:center"><img alt="khu tập thể lớn " src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162524-e384.jpg" style="height:282px; text-align:center; width:500px" title="Khu tập thể Thành Công (phường Thành Công, quận Ba Đình, Hà Nội) là một trong những khu tập thể lớn nhất ở Hà Nội."><br><em>Khu tập thể Thành Công (phường Thành Công, quận Ba Đình, Hà Nội) là<br>\r\nmột trong những khu tập thể lớn nhất ở Hà Nội.</em></p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162511-5292.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Khu nhà G6A, nằm trên mặt đường Nguyên Hồng, phường Thành Công được đưa vào sử dụng từ năm 1987. Một vài chỗ của tòa nhà đã bị nghiêng, tạo thành khe hở chữ V. UBND phường Thành Công đã phải gắn biển thông báo ở đơn nguyên 1 và 2, yêu cầu các hộ dân không cơi nới trái phép và chủ động tháo dỡ để tòa nhà bảo đảm khả năng chịu lực.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162546-f090.jpg"></p>\r\n\r\n<p>Điều đáng ngạc nhiên là hầu như tất cả người dân tại đây khi được hỏi đều cho rằng: Chung cư vẫn rất tốt, không cần phải cải tạo gì. Đại diện khu tập thể G6 (gồm G6A, G6B), ông Nguyễn Văn Chi cho biết, từ năm 1987 khi người dân chuyển về đây, nhà đã nghiêng như vậy rồi.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162577-64ad.jpg"></p>\r\n\r\n<p>Theo ông Chi, để tiết kiệm chi phí đào móng chủ đầu tư đã xây chung cư dựa trên 2 nền móng không bằng phẳng do đó tạo ra khe hở.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162565-e587.jpg" style="height:667px; width:500px"></p>\r\n\r\n<p>“Khe hở này hoàn toàn không phải khe nứt, do đó xếp hạng chúng tôi là tập thể hạng D là không có cơ sở”, ông Chi khẳng định.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162543-378b.jpg" style="height:281px; width:500px"></p>\r\n\r\n<p>Để chứng minh cho nhận định của mình, ông Chi dẫn PV lên tầng thượng nơi có “khe hở” giữa 2 khối nhà. Ở đây có một tấm tôn cứng được đặt giữa 2 toà nhà G6A và G6B được đặt vào những năm 1990 để đảm bảo an toàn. “Sau hàng chục năm khe hở này vẫn chưa vậy, bằng chứng là tấm tôn vẫn còn nguyên vẹn. Do đó chúng tôi đã làm đơn yêu cầu xác định lại cấp độ chung cư này”, ông Chi nói.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162535-5933.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Biên bản kiểm tra, xác minh hiện trạng nhà B6 khu tập thể Thành Công được thực hiện từ tháng 6 năm 2013.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162594-6dff.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Theo giám đốc Sở Xây dựng Lê Văn Dục, toàn thành phố hiện có gần 1.500 khu CCC, chung cư độc lập được xây dựng từ những năm 1960 - 1970 đã quá niên hạn sử dụng, nhiều khu nhà đã ở tình trạng nguy hiểm nằm trên địa bàn quận Đống Đa, Hai Bà Trưng, Ba Đình, Hoàn Kiếm gây mất mỹ quan đô thị.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162510-9233.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Trong hơn 10 năm qua, do còn nhiều vướng mắc chưa được tháo gỡ, dẫn đến việc Hà Nội mới chỉ thực hiện cải tạo được 14/1.500 nhà CCC, đạt chưa đầy 1%.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162564-8123.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Có những khu nhà được liệt vào danh sách nguy hiểm phải khẩn cấp sửa chữa như G6 A-B Thành Công, C8 Giảng Võ, nhà A Ngọc Khánh…,</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162528-e5f1.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Hiện nay vẫn rơi vào ngõ cụt do chưa nhận được sự đồng thuận từ đông đảo người dân.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162524-5c56.jpg" style="height:282px; width:500px"></p>\r\n\r\n<p>Cầu thang nhà tập thể B6 Thành Công được gia cố bằng thép từ tầng 1 đến tầng 5 để tránh nguy hiểm do sự xuống cấp ở đây quá lớn.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162531-55e5.jpg" style="height:219px; width:500px"></p>\r\n\r\n<p>Toàn bộ khu vực tầng 1 được các hộ dân kinh doanh buôn bán.</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162598-6c95.jpg" style="height:889px; width:500px"></p>\r\n\r\n<p>Phần trên cùng của những dãy nhà tập thể cũ kỹ là hàng ngàn bồn chứa nước sinh hoạt. Nơi đây luôn tiềm ẩn rất nhiều nguy hiểm do nhà thì cũ nát, những khối nước nặng hàng tấn này lại luôn đè từ trên xuống.</p>\r\n\r\n<p style="text-align:center"><img alt="khu tập thể Thành Công" src="http://img.dothi.net/2017/05/05/0Ln61R5F/20170505080457162568-15fa.jpg" style="height:282px; width:500px" title="Toàn bộ khu tập thể Thành Công nhìn từ trên cao."><br><em>Toàn bộ khu tập thể Thành Công nhìn từ trên cao.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:44', '2017-05-05 15:04:44', 1, 1),
(29, 'Sửa quy định để trị giá đất ảo', 'sua-quy-dinh-de-tri-gia-dat-ao', 'Sua quy dinh de tri gia dat ao', 'Có những khu vực ở Tp.HCM giá nhà đất bị đẩy lên mức ảo. Nguồn cung bị ảnh hưởng do khó tách thửa. Nhiều chuyên gia nhận định như trên và đề nghị sửa quy định, tăng điều tiết để giảm rủi ro...', 'https://img.dothi.net/2017/05/04/Z9BcC3fq/sotao-0be9.jpg', 7, '<p style="text-align: center;"><img alt="Sửa quy định để trị giá đất ảo" src="https://img.dothi.net/2017/05/04/Z9BcC3fq/sotao-0be9.jpg" style="width:600px" title="Quảng cáo mua bán nhà đất trên đường Nguyễn Duy Trinh, Tp.HCM."><br><em>Quảng cáo mua bán nhà đất trên đường Nguyễn Duy Trinh, Tp.HCM.<br>\r\nẢnh: Quang Định</em></p>\r\n\r\n<p><strong>Ông Nguyễn Mạc Hoài Nam</strong><em><strong> </strong>(Tổng giám đốc Công ty cổ phần tư vấn Nam Phát):</em></p>\r\n\r\n<p><strong>Sửa quyết định 33 để “giảm nhiệt”</strong></p>\r\n\r\n<p>Hiện nay giá nhà đất thị trường tại nhiều khu vực trên địa bàn Tp.HCM và một số khu vực vùng ven TP đang lên “cơn sốt” chứ chưa đến mức độ “nóng”. Nguyên nhân đầu tiên do tâm lý, khu Đông (Tp.HCM) hiện giá lên cao do kết nối hạ tầng giao thông tốt nên các khu khác cũng “ăn theo” lên giá.</p>\r\n\r\n<p>Nguyên nhân thứ hai, hiện nay chưa có quyết định sửa đổi quyết định 33/2014 (quy định về diện tích tối thiểu được tách thửa) của UBND Tp.HCM. Một số quận huyện đang “tắc nghẽn” việc tách thửa, chuyển mục đích sử dụng đất lên thổ cư nên hạn chế nguồn cung. Lúc trước lượng sản phẩm đất nền mới cung cấp cho thị trường 10 phần, giờ chỉ còn 1-2 phần, do đó gây ra tình trạng khan hiếm nền đất cho những người có nhu cầu mua ở thực sự. Trong khi hiện nay đất vùng ven trở thành xu hướng tìm kiếm của những người không thích ở chung cư.</p>\r\n\r\n<p>Từ việc khan hiếm, các “cò” đất lợi dụng đẩy giá lên cao. Có những khu vực giá bị đẩy lên ảo. Như một số khu vực ở Q.9, có những lô đất cách đây hai năm chỉ có giá 7-10 triệu đồng/m2 nhưng giờ đang “kêu” gần 30 triệu đồng/m2 thực sự là ảo quá.</p>\r\n\r\n<p>Để “giải nhiệt” cơn sốt giá đất, UBND TP cần nhanh chóng xem xét ban hành quyết định mới về tách thửa, chuyển mục đích sử dụng đất lên thổ cư phù hợp, giải quyết tắc nghẽn. Đối với những khu đất hợp quy hoạch, phù hợp tiêu chuẩn nên giải quyết để họ tách thửa, phân lô vì hợp với nhu cầu thực của người dân.</p>\r\n\r\n<p>Ngoài ra, các quận, huyện nên xem xét lại các khu quy hoạch “treo” để người dân chuyển đổi mục đích hoặc xóa bớt quy hoạch “treo” để giảm nhiệt. Vấn đề ở đây là TP kiểm soát, quản lý cho đúng quy định, tránh tình trạng lách luật, làm sai luật.</p>\r\n\r\n<p><strong>Bà Trần Thị Cẩm Tú</strong><em><strong> </strong>(Tổng giám đốc Công ty cổ phần dịch vụ bất động sản Eximrs):</em></p>\r\n\r\n<p><strong>Cẩn thận “dính” chiêu làm giá</strong></p>\r\n\r\n<p>Theo tôi, có ba lý do để đất ở các khu vực trên địa bàn TP sốt giá thời gian qua. Thứ nhất, cơ sở hạ tầng ở các khu vực này được kết nối tốt hơn so với trước đây. Thứ hai, giá đất ở khu vực trung tâm TP quá cao, cho nên người dân có xu hướng giãn ra mua đất ở các vùng ven. Giá ở đây dễ chấp nhận đối với những gia đình trẻ, người lao động. Thứ ba, cuối năm 2016 đầu năm 2017, một số nhà đầu tư lớn có chủ trương đầu tư các siêu dự án ở các huyện vùng ven như Cần Giờ, Củ Chi hoặc Nhơn Trạch (Đồng Nai)... Người đầu tư kỳ vọng đất nền ở đó sẽ tăng nên đổ xô mua đất.</p>\r\n\r\n<p>Thời gian qua thấy bà con mua rần rần tôi cũng thấy choáng. Hồi xưa gọi giá “ảo” bởi giá tăng nhưng không có người mua. Song hiện giờ giá được đẩy lên kinh khủng vẫn có người mua. Nguy hiểm hơn, thấy thị trường mua bán ào ào, nhiều người tư duy mua để “lướt sóng” cho nên khi mua không để ý đến pháp lý dẫn tới mua trúng đất pháp lý không ổn, đất quy hoạch hoặc “dính bẫy” những chiêu thức làm giá.</p>\r\n\r\n<p>Theo tôi, lúc này người mua phải bình tĩnh, không thể có sự tăng giá vô lý kiểu hôm nay thông báo một giá, mai lại tăng lên giá khác. Để mua đất đầu tiên phải xem xét giấy tờ pháp lý, tiềm năng chủ đầu tư dự án. Quan trọng lựa chọn dự án phải có kết nối hạ tầng, khả năng xây dựng vào ở sớm. Về giá, cần so sánh với giá của một số bất động sản tương tự trong cùng một khu vực để có cơ sở quyết định mua hay không.</p>\r\n\r\n<p><strong>Ông Võ Tấn Hoàng Văn</strong><em> (Tổng giám đốc Ngân hàng Sài Gòn - SCB):</em></p>\r\n\r\n<p><strong>Chủ yếu rút tiết kiệm đầu cơ</strong></p>\r\n\r\n<p>Giá bất động sản, cụ thể là phân khúc đất nền thời gian qua sốt giá, nhất là từ trước tết đến nay. Thực tế phần lớn những người tham gia đầu cơ là những người có tiền nhàn rỗi, thấy có cơ hội nên rút tiền tiết kiệm để đầu tư kiếm lời. Một số khác là những người có sẵn nhà, đất và thế chấp tài sản này để vay.</p>\r\n\r\n<p>Tuy nhiên, thực tế tỉ lệ cho vay của các ngân hàng (NH) không thấm vào đâu vì các NH thẩm định rất kỹ dựa trên bảng giá đất trước đây và áp dụng ổn định trong vòng một năm. NH không cho vay trên giá đất khi thị trường trong cơn sốt. Sau một năm, khi thị trường ổn định và thiết lập mặt bằng giá mới, NH mới cập nhật lại bảng giá.</p>\r\n\r\n<p>Tín dụng những tháng đầu năm tăng cao là do cuối năm ngoái các NH hạn chế cho vay vì hết “room”, giờ dồn vào đầu năm. Thực tế tín dụng vẫn tăng chủ yếu vào lĩnh vực sản xuất chứ vốn vào bất động sản không nhiều vì NH cũng thận trọng trong cho vay.</p>\r\n\r\n<p><strong>Ông Nguyễn Hoàng Minh</strong> <em>(Phó Giám đốc Ngân hàng Nhà nước Tp.HCM):</em></p>\r\n\r\n<p><strong>Đã cảnh báo các ngân hàng</strong></p>\r\n\r\n<p>Tính đến cuối tháng 4-2017, tín dụng trên địa bàn TP đã tăng 5,64%, gấp đôi so với cùng kỳ năm trước. Trước tình trạng bất động sản nóng lên trong thời gian gần đây, NH Nhà nước cũng đã cảnh báo các NH, tuy nhiên có thực tế dù tăng về số tuyệt đối nhưng tỉ trọng tín dụng đối với lĩnh vực bất động sản không tăng cao bằng tín dụng sản xuất, thậm chí giảm đi trong những năm gần đây.</p>\r\n\r\n<p>Năm 2014 tín dụng bất động sản chiếm 14% dư nợ, đến năm 2015 tỉ lệ này còn 12,3%, còn đến cuối năm 2016 tỉ lệ cho vay bất động sản trong tổng dư nợ chỉ còn 10% do các NH chủ động điều chỉnh sau khi NH Nhà nước phát tín hiệu cũng như có những điều chỉnh bằng chính sách.</p>\r\n\r\n<p>Hiện các NH cũng thận trọng trong việc rót vốn vào các dự án bất động sản và chỉ có những chủ đầu tư có năng lực tài chính mới được ưu tiên rót vốn. NH chủ yếu cho vay với người mua nhà để ở, trả nợ bằng lương.</p>\r\n\r\n<p><strong>Chuyên gia Bùi Quang Tín:</strong></p>\r\n\r\n<p><strong>Nhiều dự án chưa hoàn thiện pháp lý</strong></p>\r\n\r\n<p>Hiện nay phân khúc đất nền đang sốt nóng, giá tăng rất nhanh, người mua nên lưu ý các vấn đề pháp lý. Hiện ở nhiều vùng ven, chủ đầu tư gom một miếng đất lớn sau đó “vẽ” ra dự án, phân lô, bán nền trong khi chưa hoàn thiện về pháp lý. Họ chỉ hứa sau 5 tháng, 10 tháng có giấy phép xây dựng, sau khi xây lên rồi tách sổ... Nhưng vì thấy giá tăng nên nhiều người đua nhau mua rồi sang tay kiếm lời. Nhiều miếng đất trong thời gian ngắn đã sang đến 5-7 chủ. Rủi ro trong trường hợp này rất lớn với người mua cuối cùng.</p>\r\n\r\n<p>Với những người vay tiền để mua thì rủi ro còn lớn hơn khi lãi suất đã tăng trở lại. Lãi suất huy động vốn đã tăng liên tục trong thời gian qua và vay mua nhà thuộc nhóm không ưu tiên về lãi suất, do vậy khả năng ngân hàng sẽ còn điều chỉnh tăng nữa trong thời gian tới.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Tuổi trẻ Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:45', '2017-05-05 15:04:45', 1, 1),
(30, 'Tp.HCM: Bất động sản vẫn tăng trưởng nhưng không còn sôi động', 'tphcm-bat-dong-san-van-tang-truong-nhung-khong-con-soi-dong', 'Tp.HCM: Bat dong san van tang truong nhung khong con soi dong', 'Theo ông Nguyễn Khánh Duy, Giám đốc bộ phận Kinh doanh nhà ở Savills Việt Nam, thị trường bất động sản Tp.HCM năm 2017 sẽ vẫn tiếp tục tăng trưởng dù có thể không còn sôi động như năm 2016.', 'https://img.dothi.net/2017/05/04/Z9BcC3fq/tt-bbd3.jpg', 7, '<div class="photo">\r\n<p>Hiện tại, phân khúc nhà phố hiện hữu ở khu vực nội thành, nhất là nhà mặt tiền và nhà hẻm rộng (hẻm xe hơi) vẫn là loại sản phẩm được đông đảo khách hàng quan tâm. Nguyên nhân chủ yếu xoay quanh lợi ích cho thuê kinh doanh và nhu cầu di chuyển, đi lại. Khu vực quận 1, quận 3 với vị trí thuận tiện, đắc địa vẫn có mức mua bán ổn định.</p>\r\n\r\n<p>Tuy nhiên, ông Duy cho rằng trong thời gian gần đây, nhiều khách hàng bắt đầu chú ý đến những sản phẩm nhà phố và biệt thự xây sẵn, ở cách trung tâm Tp.HCM từ 10-15 km. Phân khúc này sẽ tiếp tục thu hút dòng vốn đầu tư đổ vào.</p>\r\n\r\n<p>“Các vùng ven như quận 9, quận 2, quận 7, Nhà Bè hiện có kết nối hạ tầng giao thông tương lai tốt. Không chỉ bởi ý muốn thoát khỏi sự ngột ngạt, đông đúc, ồn ào, ô nhiễm, khách hàng hướng tới những khu vực này vì sự xuất hiện của nhiều dự án được quy hoạch tốt, sở hữu không gian sống rộng rãi với nhiều mảng xanh, hồ cảnh quan, công viên, tiện ích sinh hoạt đầy đủ, an ninh và biệt lập. Đặc điểm chung của những khách hàng ở phân khúc này là gia đình có con nhỏ hoặc nhiều thế hệ sống chung và sở hữu xe ô tô riêng để việc di chuyển không gặp trở ngại.</p>\r\n\r\n<p>Theo xu hướng này, có thể kể đến vài dự án nhà liền thổ nổi bật ở địa bàn quận 2, quận 9, Nhà Bè như Palm Residences, Lucasta, Park Riverside, Melosa, Nine South Estates, Lake View… đều đáp ứng phần nào điều kiện để hình thành một môi trường sống trong lành, giảm stress”, ông Duy nói.</p>\r\n</div>\r\n\r\n<div class="photo" style="text-align: center;">\n<img alt="Bất động sản vẫn tăng trưởng nhưng không còn sôi động" src="https://img.dothi.net/2017/05/04/Z9BcC3fq/tt-bbd3.jpg" style="width:600px" title="Giao dịch bất động sản trong quý I/2017 tại Tp.HCM đã giảm"><br><em>Giao dịch bất động sản trong quý I/2017 tại Tp.HCM đã giảm - Ảnh: P.D</em>\n</div>\r\n\r\n<p>Giám đốc bộ phận Kinh doanh nhà ở Savills Việt Nam nói rằng nếu sở hữu trong tay từ 3-5 tỉ đồng, khách hàng có thể mua được một sản phẩm nhà phố liền kề giao thô hoàn thiện bên ngoài, còn nếu có số tiền cao hơn, từ 7-8 tỉ đồng trở lên thì có thể sở hữu được một ngôi nhà biệt thự song lập hoặc biệt lập vừa ý.</p>\r\n\r\n<p>Theo báo cáo thị trường quý I/2017 do Savills thực hiện, trong thời gian qua có 7 dự án biệt thự, nhà liên kế mới cung cấp khoảng 590 căn, bên cạnh đó nguồn cung sơ cấp đạt khoảng 2.600 căn, tăng 25% so với năm trước.</p>\r\n\r\n<p>Quận 2 và Nhà Bè có lượng giao dịch tốt nhất, đặc biệt nhà liên kế với diện tích 90 – 120m2. Còn quận 9 chiếm đến 49% lượng căn/nền bán được trong quý này của toàn thành phố.</p>\r\n\r\n<p>“Từ quý 2/2017 đến 2019, thị trường này sẽ tiếp nhận thêm khoảng 14.200 căn/nền từ 44 dự án mới. Khu Thủ Thiêm với hàng loạt các dự án nhà đất, biệt thự đáng chú ý được đánh giá là ngôi sao sáng trong thời gian tới bởi sự phát triển về hạ tầng, quy hoạch. Các quận phía đông dự kiến sẽ chiếm 55% tổng nguồn cung tương lai”, ông Duy nhận định.</p>\r\n\r\n<p>Với phân khúc căn hộ, ông Duy nói với tầm giá từ 2-3 tỉ đồng trở lên, những dự án được xây dựng dọc theo tuyến metro thu hút các gia đình trẻ khi đáp ứng được những nhu cầu thiết thực, nhất là việc di chuyển dễ dàng khi đi làm, đi chơi tại khu vực trung tâm. Song song đó, sự đầu tư về tiện ích nội ngoại khu như cảnh quan, trung tâm mua sắm, siêu thị tiện lợi… cũng giúp cho những dự án này có được giá trị cho thuê, kinh doanh cao.</p>\r\n\r\n<p>Trong khi đó, các dự án thuộc phân khúc căn hộ cao cấp, tưởng chừng có lượng hấp thụ thấp do giá thành cao vẫn thu hút khách hàng bởi điểm chung là mật độ dân cư ít (từ 500 đến dưới 1000 căn/dự án) và được đầu tư bởi đơn vị có uy tín, có sản phẩm nhận được phản hồi tích cực trên thị trường.</p>\r\n\r\n<p>“Đối với những khách hàng có ngân sách dư dả hơn, chuyện chọn một ngôi nhà không phải san sẻ quá nhiều không gian sống chung với người khác, môi trường, cộng đồng dân cư tương lai, được các đơn vị chuyên nghiệp quản lý vận hành là mối quan tâm hàng đầu của họ. Hiện tại, những dự án như Empire City, City Garden, Gateway Thảo Điền, The Nassim, Estella Heights, Diamond Island, Feliz En Vista… đều có chất lượng sản phẩm được đánh giá cao và có tỉ lệ hấp thụ khả quan”, ông chia sẻ thêm.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Một Thế Giới)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:04:45', '2017-05-05 15:04:45', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(31, 'Xây nhà 2 tầng với 500 triệu đồng?', 'xay-nha-2-tang-voi-500-trieu-dong', 'Xay nha 2 tang voi 500 trieu dong', 'Với 500 triệu đồng trong tay, liệu bạn có thể sở hữu ngôi nhà 2 tầng có phong cách hiện, gần gũi với thiên nhiên?', 'https://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092124-48d4.jpg', 6, '<p>Dưới đây là những gợi ý tham khảo cho ngôi nhà mơ ước của bạn:</p>\r\n\r\n<p>- Phần thô khoảng 325 triệu đồng</p>\r\n\r\n<p>- Giàn cửa sắt 25 triệu</p>\r\n\r\n<p>- Gạch 17 triệu</p>\r\n\r\n<p>- Đá granit 13 triệu</p>\r\n\r\n<p>- Thiết bị vệ sinh, vòi nước 19 triệu</p>\r\n\r\n<p>- Hệ thống đèn chiếu sáng 5 triệu</p>\r\n\r\n<p>- Nhôm kính 6 triệu</p>\r\n\r\n<p>- Sơn nước 20 triệu</p>\r\n\r\n<p>- Tủ bếp 30 triệu</p>\r\n\r\n<p>- Giường ngủ 15 triệu</p>\r\n\r\n<p>- Tủ quần áo 25 triệu.</p>\r\n\r\n<p style="text-align: center;"><img alt="tư vấn thiết kế nhà 2 tầng" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092124-48d4.jpg" style="width:500px" title="Phối cảnh ngôi nhà 2 tầng với mặt tiền đơn giản, dùng tông màu xám nhẹ, theo phong cách hiện đại."><br><em>Phối cảnh ngôi nhà 2 tầng với mặt tiền đơn giản, dùng tông màu xám nhẹ,<br>\r\ntheo phong cách hiện đại.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế nhà 2 tầng" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092111-b2a4.jpg" style="width:500px" title="Mặt bằng tầng một: Một bên là sân và nơi để xe, một bên là phòng khách. "><br><em>Mặt bằng tầng một: Một bên là sân và nơi để xe, một bên là phòng khách.<br>\r\nPhần còn lại bố trí phòng ăn và bếp. Phòng ngủ hướng ra cửa chính<br>\r\nthông thoáng.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="mặt bằng tầng 2" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092146-e5f0.jpg" style="width:500px" title="Tầng 2: Bố trí phòng ngủ bố mẹ và phòng ngủ của con."><br><em>Tầng 2: Bố trí phòng ngủ bố mẹ và phòng ngủ của con. Hai phòng dùng chung<br>\r\nban công hướng ra bên ngoài lấy sáng. Phía sau là phòng vệ sinh, sân phơi<br>\r\nvà cầu thang.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tầng mái" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092177-1132.jpg" style="width:500px" title="Tầng mái: Để bồn nước và trồng rau sạch."><br><em>Tầng mái: Để bồn nước và trồng rau sạch. Ánh sáng được lấy tối đa từ ô lấy<br>\r\nsáng cầu thang.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế nhà đẹp" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092165-4983.jpg" style="width:500px" title="Một số mẫu thiết kế nội thất nhà theo phong cách hiện đại cho bạn tham khảo"><br><em>Một số mẫu thiết kế nội thất nhà theo phong cách hiện đại cho bạn tham<br>\r\nkhảo: Phòng khách gồm bộ bàn ghế sofa để tiếp khách. Tận dụng không<br>\r\ngian dưới gầm cầu thang để làm kệ đựng đồ. </em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng khách đẹp" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092143-da68.jpg" style="width:500px" title="Phòng khách sử dụng tông màu trắng làm chủ đạo, tạo cảm giác rộng rãi"><br><em>Phòng khách sử dụng tông màu trắng làm chủ đạo, tạo cảm giác rộng rãi.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="gian bếp đẹp" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092135-4a74.jpg" style="width:500px" title="Gian bếp và phòng ăn chung giúp căn nhà rộng hơn."><br><em>Gian bếp và phòng ăn chung giúp căn nhà rộng hơn.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="nhà vệ sinh" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092194-4e6e.jpg" style="width:500px" title="Nhà vệ sinh được thiết kế dưới gầm cầu thang để tiết kiệm diện tích."><br><em>Nhà vệ sinh được thiết kế dưới gầm cầu thang để tiết kiệm diện tích.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ đơn giản" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092110-fef8.jpg" style="width:500px" title="Phòng ngủ đơn giản nhưng vô cùng ấm cúng."><br><em>Phòng ngủ đơn giản nhưng vô cùng ấm cúng.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="giếng trời" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092164-5680.jpg" style="width:500px" title="Tận dụng không gian giếng trời làm phòng giặt, phơi quần áo."><br><em>Tận dụng không gian giếng trời làm phòng giặt, phơi quần áo.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế nhà đẹp" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092128-1c34.jpg" style="width:500px" title="Nhà vệ sinh trên lầu dùng vách ngăn kính tạo không gian mở và đảm bảo sàn phòng luôn khô ráo."><br><em>Nhà vệ sinh trên lầu dùng vách ngăn kính tạo không gian mở và đảm bảo<br>\r\nsàn phòng luôn khô ráo.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ của bố mẹ" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092124-13f7.jpg" style="width:500px" title="Phòng ngủ bố mẹ hiện đại với cửa sổ và cửa đi ra ban công làm không gian tràn ngập ánh sáng."><br><em>Phòng ngủ bố mẹ hiện đại với cửa sổ và cửa đi ra ban công làm không gian<br>\r\ntràn ngập ánh sáng.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ con" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092131-c48d.jpg" style="width:500px" title="Phòng ngủ con."><br><em>Phòng ngủ con.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="sân thượng" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092198-bb0b.jpg" style="width:500px" title="Sân thượng được tận dụng để trồng rau."><br><em>Sân thượng được tận dụng để trồng rau.</em></p>\r\n\r\n<p style="text-align:center"><img alt="xây nhà hai tầng" src="http://img.dothi.net/2017/04/14/0Ln61R5F/20170414133043092168-db4d.jpg" style="width:500px" title="thiết kế nhà 2 tầng "></p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:22', '2017-05-05 15:06:22', 1, 1),
(32, 'Cách thiết kế phòng ngủ đa dạng màu sắc', 'cach-thiet-ke-phong-ngu-da-dang-mau-sac', 'Cach thiet ke phong ngu da dang mau sac', 'Màu sắc luôn là sự lựa chọn hàng đầu cho không gian ngôi nhà của bạn. Tuy nhiên,  trong thiết kế nội thất phòng ngủ thì lựa chọn màu sắc sao cho phù hợp là điều vô cùng quan trọng. Với những mẫu phòng ngủ dưới đây sẽ giúp bạn có giấc ngủ sâu và cảm giác thoải mái.', 'https://img.dothi.net/2017/04/12/0Ln61R5F/48-1687.jpg', 6, '<p style="text-align:center"><img alt="thiết kế phòng ngủ" src="http://img.dothi.net/2017/04/12/0Ln61R5F/48-1687.jpg" style="width:500px" title="Cách thiết kế phòng ngủ đa dạng màu sắc"></p>\r\n\r\n<p>Màu đỏ thể hiện sự mạnh mẽ, quý phái, lòng đam mê và dũng khí vươn lên. Theo người phương Đông quan niệm, màu đỏ luôn tượng trưng cho sự may mắn và hạnh phúc. Gia chủ với chiếc giường màu đỏ làm nổi bật không gian của 2 vợ chồng đề cao được tình yêu, nềm hạnh phúc mỹ mãn.</p>\r\n\r\n<p>Với gam màu nổi bật này, gia chủ không những thể hiện được công năng sử dụng chỉ để ngủ mà còn ở cả ngay vật dụng trang trí và tường vách. Cả không gian nơi đây như khơi dậy niềm đam mê, tạo cảm hứng trong cuộc sống mặn nồng. Phòng ngủ đẹp với gam màu này rất thích hợp với những người có mệnh hỏa và thổ.</p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế nội thất phòng ngủ" src="http://img.dothi.net/2017/04/12/0Ln61R5F/10-35cf.jpg" style="width:500px" title="Bên cạnh đó, gam màu trung tính sẽ dễ dàng kết hợp, đồng thời làm cân bằng các màu sắc khác."><br><em>Bên cạnh đó, gam màu trung tính sẽ dễ dàng kết hợp, đồng thời làm cân<br>\r\nbằng các màu sắc khác.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ hiện đại" src="http://img.dothi.net/2017/04/12/0Ln61R5F/66-4116.jpg" style="width:500px" title="Tuy nhiên, trong xu hướng thiết kế hiện đại, những gam màu tươi sáng lại được sử dụng nhiều hơn, mang lại nét mới mẻ, sinh động và hấp dẫn cho nội thất phòng."></p>\r\n\r\n<p>Tuy nhiên, trong xu hướng thiết kế hiện đại, những gam màu tươi sáng lại được sử dụng nhiều hơn, mang lại nét mới mẻ, sinh động và hấp dẫn cho nội thất phòng.</p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế phòng ngủ" src="http://img.dothi.net/2017/04/12/0Ln61R5F/70-14cd.jpg" style="width:500px" title="Cách thiết kế phòng ngủ đa dạng màu sắc"></p>\r\n\r\n<p>Trong phòng ngủ màu vàng được sử dụng khá nhiều trong không gian nội thất. Màu vàng mang đến cảm giác từ vui tươi sôi nổi đến êm ả, nhẹ nhàng... Nếu bạn dùng màu vàng cùng với các màu xanh lá, trắng... thì căn phòng của bạn sẽ được “phủ đầy” bằng hơi thở của thiên nhiên thoáng đãng.</p>\r\n\r\n<p style="text-align: center;"><em><img alt="phòng ngủ hiện đại" src="http://img.dothi.net/2017/04/12/0Ln61R5F/56-61d3.jpg" style="width:500px" title="Phòng ngủ sử dụng màu tím luôn là một màu điển hình về sự lãng mạn và thủy chung, nó còn mang lại vẻ nữ tính, duyên dáng cho phòng ngủ của những cô gái trẻ trung, hiện đại."></em></p>\r\n\r\n<p>Phòng ngủ sử dụng màu tím luôn là một màu điển hình về sự lãng mạn và thủy chung, nó còn mang lại vẻ nữ tính, duyên dáng cho phòng ngủ của những cô gái trẻ trung, hiện đại.</p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/04/12/0Ln61R5F/32-0a91.jpg" style="width:500px" title="Phòng ngủ màu xanh dương mang đến cảm giác cho con người sự thư thái, yên bình như nằm dưới một bầu trời trong xanh tươi mát."><br><em>Phòng ngủ màu xanh dương mang đến cảm giác cho con người sự thư<br>\r\nthái, yên bình như nằm dưới một bầu trời trong xanh tươi mát.</em></p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế phòng ngủ" src="http://img.dothi.net/2017/04/12/0Ln61R5F/53-70c8.jpg" style="width:500px" title="Phòng ngủ màu xanh dương mang đến cảm giác cho con người sự thư thái, yên bình như nằm dưới một bầu trời trong xanh tươi mát."></p>\r\n\r\n<p>Màu xanh lá cây khá đơn giản chỉ cần chút biến hóa phòng ngủ của bạn đã trở nên ấn tượng rất nhiều. Lấy cảm hứng từ thiên nhiên căn phòng gợi lên vẻ đẹp tươi mới, trẻ trung, năng động.</p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ màu xanh lá" src="http://img.dothi.net/2017/04/12/0Ln61R5F/42-5ad0.jpg" style="width:500px" title="phòng ngủ màu xanh lá"></p>\r\n\r\n<p>Tuy nhiên, màu sắc nổi bật của năm 2017 là gam màu xanh lá, hãy làm mới phòng ngủ của bạn kết hợp màu xanh lá và đỏ cho đồ nội thất, đồ trang trí để tăng hiệu quả thẩm mỹ.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Báo Xây dựng Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:22', '2017-05-05 15:06:22', 1, 1),
(33, 'Tư vấn: Xây nhà mặt phố ba tầng 71,5m2 đẹp như biệt thự', 'tu-van-xay-nha-mat-pho-ba-tang-715m2-dep-nhu-biet-thu', 'Tu van: Xay nha mat pho ba tang 71,5m2 dep nhu biet thu', 'Nhà mặt phố được Kiến trúc sư thiết kế thông thoáng, khang trang không kém gì biệt thự.', 'https://img.dothi.net/2017/04/05/Z9BcC3fq/tk-3f94.jpg', 6, '<h2><strong>Hỏi:</strong></h2>\r\n\r\n<p><em>Kính gửi chuyên mục Nhà đẹp!</em></p>\r\n\r\n<p><em>Mảnh đất gia đình tôi có diện tích 71,5m2 với mặt tiền 6,2m, chiều dài 11,5m. Tôi muốn xây nhà ba tầng đơn giản, khang trang và hiện đại. Các phòng chức năng phải thoáng và mát mẻ. Nội thất cũng không cần quá cầu kỳ miễn là được bài trí hài hòa và khoa học. Tôi dự đinh phân chia các phòng chức năng cho từng tầng như sau:</em></p>\r\n\r\n<p><em>- Tầng 1 gồm có: Sân trước, phòng khách, bếp và bàn ăn.</em></p>\r\n\r\n<p><em>- Tầng 2 gồm có: Hai phòng ngủ, hai phòng tắm cho vợ chồng tôi và con nhỏ.</em></p>\r\n\r\n<p><em>- Tầng 3 gồm có: Phòng ngủ cho con lớn, phòng thờ, sân phơi và một phòng tắm.</em></p>\r\n\r\n<p><em>Hy vọng Kiến trúc sư (KTS) sớm đưa ra phương án tư vấn thiết kế khoa học giúp gia đình tôi. Tôi xin chân thành cảm ơn!</em></p>\r\n\r\n<p><strong><em>(KG – Lào Cai)</em></strong></p>\r\n\r\n<h2><strong>Trả lời:</strong></h2>\r\n\r\n<p>Mảnh đất của gia đình gia chủ khá đẹp với mặt tiền rộng rãi. Diện tích hơn 70m2 là đủ để xây một ngôi nhà thoải mái cho bốn thành viên ở. Về số lượng các phòng chức năng của từng tầng theo mong muốn của gia chủ là khá hợp lý. Tuy vậy, KTS vẫn cần cân nhắc kỹ lưỡng khi phân chia không gian để các phòng đều thoáng mát và sáng, không bị chật chội, ẩm ướt.</p>\r\n\r\n<p>Dưới đây là phương án thiết kế chi tiết do KTS tính toán và đưa ra:</p>\r\n\r\n<p><strong>*Về phương án thiết kế mặt bằng</strong></p>\r\n\r\n<p>- Mặt bằng tầng 1:</p>\r\n\r\n<p>Sau cổng vào là sân trước, khoảng sân này được sử dụng trồng cây cảnh tạo khoảng không gian nhỏ xinh và làm chỗ để xe cho cả gia đình cũng như bạn bè, người thân khi đến chơi. Phòng khách và phòng bếp ăn chia đôi không gian bên trong nhà. Cả hai phòng đều khá vuông vắn và rộng rãi. Phòng bếp và bàn ăn có cửa mở ra sân sau giúp lưu thông không khí.</p>\r\n\r\n<p>Phòng bếp thường bị ám bởi mùi thức ăn cũng như ẩm ướt trong quá trình chuẩn bị nấu nướng nên việc đảm bảo ánh sáng và không khí cho căn phòng này là vô cùng cần thiết. Với hệ thống cửa sổ, cửa mở ra sân sau và trang bị máy hút mùi hiện đại không gian nấu nướng sẽ luôn sạch sẽ, khô ráo và dễ chịu.</p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế nhà đẹp" src="http://img.dothi.net/2017/04/05/0Ln61R5F/48-78e1.jpg" style="width:500px" title="Mặt bằng tầng 1."><br><em>Mặt bằng tầng 1.</em></p>\r\n\r\n<p>- Mặt bằng tầng 2:</p>\r\n\r\n<p>Hai phòng ngủ tầng hai có diện tích tương đương nhau. Phòng ngủ dành cho vợ chồng gia chủ được bố trí phía trước không gian, trong khi đó phòng ngủ của con được đặt bên trong mặt bằng tầng hai. Hai không gian riêng này đều có ban công nhỏ xinh để tạo góc thư giãn nhẹ nhàng và giúp căn phòng luôn mát mẻ, thoáng khí.</p>\r\n\r\n<p>Phòng tắm dành cho phòng ngủ của vợ chồng gia chủ được thiết kế khép kín, còn phòng tắm dành cho con có cửa riêng bên ngoài gần cầu thang. Vì con còn nhỏ nên KTS không thiết kế phòng tắm khép kín để đảm bảo an toàn cho bé.</p>\r\n\r\n<p style="text-align:center"><img alt="tư vấn thiết kế nhà đẹp" src="http://img.dothi.net/2017/04/05/0Ln61R5F/10-63ed.jpg" style="width:500px" title="Mặt bằng tầng 2."><br><em>Mặt bằng tầng 2.</em></p>\r\n\r\n<p>- Mặt bằng tầng 3:</p>\r\n\r\n<p>Phòng thờ được bô trí phía trước mặt bằng. Không gian thờ cúng không quá rộng chỉ vừa đủ sử dụng để dành diện tích cho phòng ngủ và sân phơi. Phòng ngủ cho con lớn gia chủ được thiết kế khép kín với phòng tắm bên trong. Không gian nghỉ ngơi và học tập khá yên tĩnh. KTS không quên sử dụng cửa sổ lớn và ban công nhỏ để nơi đây luôn thoáng và dễ chịu.</p>\r\n\r\n<p style="text-align:center"><img alt="Mặt bằng tầng 3." src="http://img.dothi.net/2017/04/05/0Ln61R5F/66-bc77.jpg" style="width:500px" title="Mặt bằng tầng 3."><br><em>Mặt bằng tầng 3.</em></p>\r\n\r\n<p>*Về phương án phối cảnh kiến trúc mặt tiền</p>\r\n\r\n<p>KTS thiết kế mặt tiền ngôi nhà ba tầng đơn giản, hiện đại nhưng vẫn hài hòa, trẻ trung. Toàn bộ ngôi nhà được sơn màu trắng chủ đạo. Gam màu trung tính này luôn được nhiều gia đình yêu thích bởi dễ kết hợp và làm nổi bật các màu sắc khác.</p>\r\n\r\n<p>Bên cạnh đó, màu trắng cũng đem đến nét đẹp trang nhã, thanh thoát cho không gian sống. Để tạo điểm nhấn cho mặt tiền ngôi nhà ba tầng, toàn bộ khung cửa sổ và cửa kính KTS sử dụng vật liệu gỗ. Thêm vào đó, ở tầng ba những mảng tường trung tâm được sơn màu xanh lá nhạt bắt mắt và tươi tắn.</p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế nhà đẹp" src="http://img.dothi.net/2017/04/05/0Ln61R5F/70-7f6d.jpg" style="width:500px" title="Mặt tiền được thiết kế khang trang, hài hòa"><br><em>Mặt tiền được thiết kế khang trang, hài hòa</em>.</p>\r\n\r\n<p>Một số gợi ý về cách bài trí các phòng chức năng</p>\r\n\r\n<p style="text-align:center"><img alt="phòng khách hiện đại" src="http://img.dothi.net/2017/04/05/0Ln61R5F/56-02d5.jpg" style="width:500px" title="Phòng khách hiện đại, ấm cúng"><br><em>Phòng khách hiện đại, ấm cúng. (Ảnh minh họa)</em></p>\r\n\r\n<p style="text-align:center"><img alt="Phòng ăn trang nhã" src="http://img.dothi.net/2017/04/05/0Ln61R5F/32-64b1.jpg" style="width:500px" title="Phòng ăn trang nhã"><br><em>Phòng ăn trang nhã. (Ảnh minh họa)</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ đẹp" src="http://img.dothi.net/2017/04/05/0Ln61R5F/53-0279.jpg" style="width:500px" title="Phòng ngủ dành cho vợ chồng chủ nhà được thiết kế lãng mạn, thoáng mát."><br><em>Phòng ngủ dành cho vợ chồng chủ nhà được thiết kế lãng mạn, thoáng mát.<br>\r\n(Ảnh minh họa)</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ dễ thương" src="http://img.dothi.net/2017/04/05/0Ln61R5F/42-6837.jpg" style="width:500px" title="Phòng ngủ dễ thương dành cho con chủ nhà."><br><em>Phòng ngủ dễ thương dành cho con chủ nhà. (Ảnh minh họa)</em></p>\r\n\r\n<p style="text-align:center"><img alt="phòng ngủ cho con" src="http://img.dothi.net/2017/04/05/0Ln61R5F/01-8df9.jpg" style="width:500px" title="Một thiết kế khác phòng ngủ cho con chủ nhà. "><br><em>Một thiết kế khác phòng ngủ cho con chủ nhà. (Ảnh minh họa)</em></p>\r\n\r\n<p>Trên đây là phương án thiết kế hợp lý do KTS cân nhắc kĩ lưỡng đưa ra. Chúc gia đình nhỏ sớm xây được ngôi nhà ba tầng hiện đại, khang trang và cuốn hút!</p>\r\n    \r\n        <em>\r\n            <em>(Theo Em đẹp)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:23', '2017-05-05 15:06:23', 1, 1),
(34, 'Mẫu thiết kế nhà tiện nghi 2 tầng cho gia đình 3 thế hệ', 'mau-thiet-ke-nha-tien-nghi-2-tang-cho-gia-dinh-3-the-he', 'Mau thiet ke nha tien nghi 2 tang cho gia dinh 3 the he', 'Với mẫu thiết kế này, bạn hoàn toàn có thể có một căn nhà tiện nghi và đẹp mắt dành cho 3 thế hệ cùng chung sống.', 'https://img.dothi.net/2017/03/29/0Ln61R5F/48-2142.jpg', 6, '<p style="text-align:center"><img alt="Căn nhà được thiết kế có 2 tầng" src="http://img.dothi.net/2017/03/29/0Ln61R5F/48-2142.jpg" style="height:338px; text-align:center; width:500px" title="Căn nhà được thiết kế có 2 tầng 1. Tầng 1 chủ yếu sử dụng làm không gian sinh hoạt chung."><br><em>Căn nhà được thiết kế có 2 tầng 1. Tầng 1 chủ yếu sử dụng làm không<br>\r\ngian sinh hoạt chung.</em></p>\r\n\r\n<p style="text-align:center"><img alt="căn nhà nhìn từ phía trước" src="http://img.dothi.net/2017/03/29/0Ln61R5F/10-b383.jpg" style="height:334px; width:500px" title="Lối vào cửa chính được thiết kế nằm lệch phía bên phải của căn nhà nhìn từ phía trước"><br><em>Lối vào cửa chính được thiết kế nằm lệch phía bên phải của căn nhà<br>\r\nnhìn từ phía trước</em></p>\r\n\r\n<p style="text-align:center"><img alt="căn nhà 2 tầng" src="http://img.dothi.net/2017/03/29/0Ln61R5F/66-bf54.jpg" style="height:334px; width:500px" title="Phòng khách, bếp ăn và nhà vệ sinh được bố trí ở tầng trệt."><br><em>Phòng khách, bếp ăn và nhà vệ sinh được bố trí ở tầng trệt.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Phòng khách của căn nhà 2 tầng" src="http://img.dothi.net/2017/03/29/0Ln61R5F/70-53fe.jpg" style="height:749px; width:500px" title="Phòng khách sử dụng những tông màu trung lập được kết hợp trang nhã với đồ nội thất như sofa, ghế bành và sàn gỗ."><br><em>Phòng khách sử dụng những tông màu trung lập được kết hợp trang nhã với đồ<br>\r\nnội thất như sofa, ghế bành và sàn gỗ.</em></p>\r\n\r\n<p style="text-align:center"><img alt="thiết kế nhà 2 tầng" src="http://img.dothi.net/2017/03/29/0Ln61R5F/56-7a71.jpg" style="height:334px; width:500px" title="Có thể thiết kế kho chứa đồ ở dưới tầng trệt."><br><em>Có thể thiết kế kho chứa đồ ở dưới tầng trệt.</em></p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/03/29/0Ln61R5F/32-a55d.jpg" style="height:334px; width:500px"></p>\r\n\r\n<p style="text-align:center"><img alt="phòng tắm của căn nhà" src="http://img.dothi.net/2017/03/29/0Ln61R5F/53-3774.jpg" style="height:334px; width:500px" title="Không gian phòng tắm và nhà vệ sinh."><br><em>Không gian phòng tắm và nhà vệ sinh.</em></p>\r\n\r\n<p style="text-align:center"><img alt="Khu nghỉ ngơi của căn nhà" src="http://img.dothi.net/2017/03/29/0Ln61R5F/42-76bd.jpg" style="height:334px; width:500px" title="Khu nghỉ ngơi, thư giãn phía sau. Rất phù hợp với những gia đình 3 thế hệ."><br><em>Khu nghỉ ngơi, thư giãn phía sau. Rất phù hợp với những gia đình 3 thế hệ.</em></p>\r\n\r\n<p style="text-align:center"><img alt="sau nhà chính" src="http://img.dothi.net/2017/03/29/0Ln61R5F/01-15ab.jpg" style="height:275px; width:500px" title="Phối cảnh tổng thể khu vực phía sau nhà chính"><br><em>Phối cảnh tổng thể khu vực phía sau nhà chính.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:23', '2017-05-05 15:06:23', 1, 1),
(35, 'Tư vấn thiết kế phòng khách mang phong cách hiện đại với tổng chi phí chưa đến 30 triệu đồng', 'tu-van-thiet-ke-phong-khach-mang-phong-cach-hien-dai-voi-tong-chi-phi-chua-den-30-trieu-dong', 'Tu van thiet ke phong khach mang phong cach hien dai voi tong chi phi chua den 30 trieu dong', 'Với ngân sách đưa ra cho việc thiết kế phòng khách là 30 triệu đồng, KTS đã có những giải pháp tối ưu để vừa làm đẹp vừa phù hợp với ngân sách.', 'https://img.dothi.net/2017/03/24/0Ln61R5F/48-3893.jpg', 6, '<p><em>Kính gửi chuyên mục Nhà Hay,</em></p>\r\n\r\n<p><em>Gia đình tôi mới nhận căn chung cư có diện tích 85m² và có nhu cầu thiết kế phòng khách có diện tích 15m². Do hiện tại phòng khách nhà tôi mới chỉ có sẵn 1 bàn thờ còn lại đồ đạc đang trống nên cần mua mới hoàn toàn. </em></p>\r\n\r\n<p><em>Rất mong KTS tư vấn giúp tôi 1 phòng khách với phong cách hiện đại trong phạm vi ngân sách khoảng 30 triệu.</em></p>\r\n\r\n<p><em>Xin chân thành cảm ơn.</em></p>\r\n\r\n<p><em>Đình Vũ</em></p>\r\n\r\n<h2><strong>Kiến trúc sư tư vấn:</strong></h2>\r\n\r\n<p>Trong căn hộ chung cư có diện tích 85m2, với thiết kế phòng khách và phòng bếp liên thông nên diện tích ước lệ của phòng khách chỉ còn khoảng 15m². Trong đấy đã tính cả diện tích để bàn thờ và tủ để giày. Với ngân sách khách hàng đưa ra là khoảng 30 triệu đồng, KTS đã đưa ra giải pháp thiết kế phù hợp cho diện tích 15m² này. Tuy nhiên do kinh phí của bạn khá hạn hẹp nên bạn cần lưu ý về chất lượng sản phẩm nếu muốn đáp ứng tiêu chí về giá cả.</p>\r\n\r\n<p style="text-align:center"><img alt="tư vấn thiết kế phòng khách" src="http://img.dothi.net/2017/03/24/0Ln61R5F/48-3893.jpg" style="width:500px" title="tư vấn thiết kế phòng khách"></p>\r\n\r\n<p>Tổng thể thiết kế là 1 gam màu sáng trắng. Kết hợp với các điểm nhấn nhỏ có gam màu tối hơn. Đã tạo được sự tương phản mạnh nhưng rất hài hòa cho căn hộ có diện tích nhỏ này. Với hệ tủ bếp màu trắng của phòng bếp liên thông với phòng khách. Kiến trúc sư đã thiết kế bộ sofa có cùng màu trắng để tạo sự hài hòa với tổng thể chung.</p>\r\n\r\n<p style="text-align:center"><img alt="Tư vấn thiết kế nhà đẹp" src="http://img.dothi.net/2017/03/24/0Ln61R5F/10-3113.jpg" style="width:500px" title="Thiết kế phòng khách chung cư"></p>\r\n\r\n<p>Tuy nhiên, để không làm giảm đi nét tinh tế của màu trắng, KTS đã khéo léo kết hợp mảng nhấn là giấy dán tưởng sẫm màu cùng tông với bàn thờ có sẵn. Tạo nên một phông nền đẹp cho bộ sofa nổi bật lên trong không gian bé này.</p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế nhà đẹp" src="http://img.dothi.net/2017/03/24/0Ln61R5F/66-3ebf.jpg" style="width:500px" title="Phần đối diện với mảng tường đặt sofa là vách tivi."><br><em>Phần đối diện với mảng tường đặt sofa là vách tivi. Sự bố trí đối xứng này tạo<br>\r\nđiểu kiện tốt cho việc xem phim của gia chủ.</em></p>\r\n\r\n<p style="text-align:center"><img alt="tư vấn thiết kế phòng khách" src="http://img.dothi.net/2017/03/24/0Ln61R5F/70-60d1.jpg" style="width:500px" title="tư vấn thiết kế phòng khách chung cư"></p>\r\n\r\n<p>Mảng tivi cũng trang trí bởi gam màu hài hòa với tổng thể. Tuy nhiên, để tăng phần duyên dáng và sức sống cho không gian, Tủ giày cao kịch trần và tủ trang trí trên tường được sử dụng chất liệu MFC có vân gỗ tự nhiên ấm cúng. Bên dưới của mảng trang trí treo tivi là kệ tivi băng ngang 2 tầng. Bên cạnh tivi cũng được trang trí các đợt ngang nhẹ nhàng để bầy đồ deco trang trí, tăng thêm phần sinh động cho ngôi nhà.</p>\r\n\r\n<p>Báo giá tham khảo các hạng mục làm mới:</p>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/03/24/0Ln61R5F/56-c822.jpg" style="width:600px"></p>\r\n\r\n<p style="text-align: right;"><em>Kts tư vấn: Lê Quang Thạch</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Trí thức trẻ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:24', '2017-05-05 15:06:24', 1, 1),
(36, 'Xây nhà vườn 200m2 với 650 triệu đồng', 'xay-nha-vuon-200m2-voi-650-trieu-dong', 'Xay nha vuon 200m2 voi 650 trieu dong', 'Căn hộ nhà vườn 1 tầng trên diện tích 200m2 với phong cách hiện đại, gần gũi cùng thiên nhiên.', 'https://img.dothi.net/2017/03/24/0Ln61R5F/48-4ec8.jpg', 6, '<p style="text-align:center"><img alt="Mẫu căn hộ nhà vườn" src="http://img.dothi.net/2017/03/24/0Ln61R5F/48-4ec8.jpg" style="height:299px; text-align:center; width:500px" title="Mẫu căn hộ nhà vườn được thiết kế trên diện tích đất 200m2 ở Phù Yên, Sơn La. Giá trị thiết kế và thi công hoàn thiện dự kiến là 650 triệu (chưa bao gồm nội thất)."><br><em>Mẫu căn hộ nhà vườn được thiết kế trên diện tích đất 200m2 ở Phù Yên, Sơn La.<br>\r\nGiá trị thiết kế và thi công hoàn thiện dự kiến là 650 triệu (chưa<br>\r\nbao gồm nội thất).</em></p>\r\n\r\n<p style="text-align:center"><img alt="Căn hộ nhà vườn 1 tầng" src="http://img.dothi.net/2017/03/24/0Ln61R5F/10-acd3.jpg" style="height:299px; width:500px" title="Căn hộ nhà vườn 1 tầng, mái thái có diện tích sử dụng 160m2 với đầy đủ công năng gồm: 1 phòng khách, 4 phòng ngủ, bếp, phòng ăn, phòng thờ và các không gian lưu không trong căn hộ. Kết cấu khung, mái bê tông cốt thép lợp ngói, tường bao được hoàn thiện với vật liệu gạch đỏ truyền thống. Mặt tiền là sự kết hợp giữa kính an toàn nhựa lõi thép."><br><em>Căn hộ nhà vườn 1 tầng, mái thái có diện tích sử dụng 160m2 với đầy đủ<br>\r\ncông năng gồm: 1 phòng khách, 4 phòng ngủ, bếp, phòng ăn, phòng thờ và<br>\r\ncác không gian lưu không trong căn hộ. Kết cấu khung, mái bê tông cốt thép<br>\r\nlợp ngói, tường bao được hoàn thiện với vật liệu gạch đỏ truyền thống. Mặt tiền<br>\r\nlà sự kết hợp giữa kính an toàn nhựa lõi thép.</em></p>\r\n\r\n<p style="text-align:center"><img alt="nhà vườn đẹp" src="http://img.dothi.net/2017/03/24/0Ln61R5F/66-808e.jpg" style="height:298px; width:500px" title="Bên ngoài sân vườn được trồng nhiều cây xanh giúp căn hộ trở nên gần gũi với thiên nhiên."><br><em>Bên ngoài sân vườn được trồng nhiều cây xanh giúp căn hộ trở nên<br>\r\ngần gũi với thiên nhiên.</em></p>\r\n\r\n<p style="text-align:center"><img alt="căn hộ nhà vườn 1 tầng" src="http://img.dothi.net/2017/03/24/0Ln61R5F/70-1956.jpg" style="height:582px; width:500px" title="Bản vẽ chi tiết mặt bằng căn hộ nhà vườn 1 tầng"><br><em>Bản vẽ chi tiết mặt bằng căn hộ nhà vườn 1 tầng.</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Tiền phong Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:25', '2017-05-05 15:06:25', 1, 1),
(37, 'Tư vấn thiết kế nhà 42m² có 3 phòng ngủ vừa thoáng lại vừa hiện đại', 'tu-van-thiet-ke-nha-42m-co-3-phong-ngu-vua-thoang-lai-vua-hien-dai', 'Tu van thiet ke nha 42m² co 3 phong ngu vua thoang lai vua hien dai', 'Với diện tích nhà là 42m², KTS đã tư vấn thiết kế để chủ nhà có được một ngôi nhà tận dụng được rất nhiều khoảng không trong nhà.', 'https://img.dothi.net/2017/03/21/Z9BcC3fq/k5-fd7f.jpg', 6, '<p>Xin chào Kiến trúc sư!</p>\r\n\r\n<p>Gia đình tôi có mảnh đất 4.5 x 9.5m 1 mặt tiền hướng Đông Nam, mặt ngõ rộng 2.5m. Hiện nay tôi có nhu cầu xây nhà 3 tầng có 3 phòng ngủ, phòng khách, bếp, phòng thờ và khu vực để xe máy, xe đạp với phong cách hiện đại.</p>\r\n\r\n<p>Tôi xin chân thành cảm ơn</p>\r\n\r\n<p>Quý Văn</p>\r\n\r\n<h2><strong>Kiến trúc sư tư vấn:</strong></h2>\r\n\r\n<p>Dựa theo những thông tin về diện tích khu đất xây dựng và những yêu cầu về không gian sử dụng của bạn, chúng tôi xin đưa ra phương án mặt bằng tư vấn thiết kế để bạn tham khảo.</p>\r\n\r\n<p style="text-align: center;"><img alt="thiết kế nhà 42m" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k1-411f.jpg" style="width:500px" title="​Mặt bằng tư vấn thiết kế và bố trí nội thất tầng 1."><br><em>Mặt bằng tư vấn thiết kế và bố trí nội thất tầng 1.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tư vấn thiết kế nhà đẹp" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k2-45de.jpg" style="width:500px" title="​Mặt bằng bố trí nội thất tầng 2."><br><em><span style="font-size:12pt">Mặt bằng bố trí nội thất tầng 2.</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="tư vấn thiết kế nhà nhỏ" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k3-3230.jpg" style="width:500px" title="​Mặt bằng bố trí nội thất tầng 3."><br><em><span style="font-size:12pt">Mặt bằng bố trí nội thất tầng 3.</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="tư vấn thiết kế nhà đẹp" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k4-cf3c.jpg" style="width:500px" title="​Mặt bằng bố trí nội thất tầng mái."><br><em><span style="font-size:12pt">Mặt bằng bố trí nội thất tầng mái.</span></em></p>\r\n\r\n<p>Điều đầu tiên xin chúc mừng anh chị đã sở hữu một lô đất hình chữ nhật với tỉ lệ chiều dài và chiều rộng khá đẹp. Với yêu cầu công năng và mục đích sử dụng của gia đình, tôi xin tư vấn như sau:</p>\r\n\r\n<p>Tầng 1: Chúng tôi sẽ thiết kế thang một vế để tạo khoảng không gian rộng rãi cho nhà bạn, mặc dù nhà bạn có với diện tích xây dựng khiêm tốn 4,5x9,5m². Bước vào nhà là, không gian để xe máy tương đối thoái mái, tiếp đến là phòng khách và phòng ăn thông nhau.</p>\r\n\r\n<p>Tầng 2: Chúng tôi bố trí 2 phòng ngủ sang hai bên một nhà vệ sinh chung ở giữa khá rộng rãi. 2 phòng ngủ đều vuông vức và thông thoáng đều có ánh sáng tự nhiên từ cửa sổ chính và giếng trời. Giường ngủ đều được kê vuông góc với cửa sổ, tránh không bị ánh sáng trực tiếp chiếu vào mặt khi chúng ta có mở cửa khi ngủ, cho bạn một giấc ngủ thoải mái sau ngày làm việc chăm chỉ.</p>\r\n\r\n<p>Tầng 3: Một bên là phòng thờ và phòng ngủ. Phòng thờ khá rộng, đủ diện tích để bạn kê một bộ tủ thờ hoàng tráng , được bố trí bên mặt tiền tiếp giáp với đường tràn ngập ánh sáng tự nhiên cho các cụ.</p>\r\n\r\n<p>Tầng mái: là sân phơi và phòng giặt đồ và sân chơi rất rộng rãi. Bạn cỏ thể trông cây xanh, hay rau củ quả sạch trên này.</p>\r\n\r\n<p>Với những yêu cầu của bạn, chúng tôi nghĩ phương án tư vấn thiết kế này là khá hợp lý. Chúc bạn sớm có nhà mới.</p>\r\n\r\n<p style="text-align: center;"><img alt="phòng khách đẹp" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k5-fd7f.jpg" style="width:500px" title="Phòng khách rất thông thoáng với sofa chữ L kết hợp kệ lưu trữ."><br><em>Phòng khách rất thông thoáng với sofa chữ L kết hợp kệ lưu trữ.</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tủ bếp chữ I" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k6-e672.jpg" style="width:500px" title="​Tủ bếp chữ I chạy dài theo diện tích phòng bếp."><br><em><span style="font-size:12pt">Tủ bếp chữ I chạy dài theo diện tích phòng bếp.</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="bàn ăn bằng gỗ" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k7-65ff.jpg" style="width:500px" title="​Bộ bàn ăn bằng gỗ sáng màu rất sạch và hiện đại."><br><em><span style="font-size:12pt">Bộ bàn ăn bằng gỗ sáng màu rất sạch và hiện đại.</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ con" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k8-6539.jpg" style="width:500px" title="Phòng ngủ con với gam màu xanh mát mắt."><br><em><span style="font-size:12pt">Phòng ngủ con với gam màu xanh mát mắt.</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng ngủ bố mẹ" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k9-e759.jpg" style="width:500px" title="Phòng ngủ bố mẹ với tủ quần áo âm tường tiết kiệm diện tích."><br><em><span style="font-size:12pt">Phòng ngủ bố mẹ với tủ quần áo âm tường tiết kiệm diện tích.</span></em></p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k10-30a6.jpg" style="width:500px"></p>\r\n\r\n<p style="text-align: center;"><img alt="phòng thờ" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k11-5635.jpg" style="width:500px" title="​Hình ảnh tham khảo phòng thờ"><br><span style="font-size:12pt"><em>Hình ảnh tham khảo phòng thờ</em></span></p>\r\n\r\n<p style="text-align: center;"><img alt="sân vườn trên mái" src="http://img.dothi.net/2017/03/21/Z9BcC3fq/k12-9c38.jpg" style="width:500px" title="​Hình ảnh tham khảo sân vườn trên mái."><br><em><span style="font-size:12pt">Hình ảnh tham khảo sân vườn trên mái.</span></em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Trí thức trẻ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:06:25', '2017-05-05 15:06:25', 1, 1),
(38, 'Sức khỏe suy yếu vì kê giường bên trên phòng bếp và cách hóa giải', 'suc-khoe-suy-yeu-vi-ke-giuong-ben-tren-phong-bep-va-cach-hoa-giai', 'Suc khoe suy yeu vi ke giuong ben tren phong bep va cach hoa giai', 'Giường ngủ kê ở vị trí trên bếp nấu của phòng bếp đem lại phong thủy cực xấu và phải có biện pháp hóa giải để không ảnh hưởng đến sức khỏe.', 'https://img.dothi.net/2017/05/03/Z9BcC3fq/giuong-ngu-phong-thu-ea7d.jpg', 4, '<p>Phòng ngủ là khu vực quan trọng trong phong thủy nhà ở, nó liên quan đến vấn đề sức khỏe và hạnh phúc của gia đình.</p>\r\n\r\n<p>Đối với những căn hộ nhiều tầng thì hầu hết đều thiết kế phòng ngủ ở vị trí tầng 2 (trở lên) và phòng bếp ở tầng một. Tuy nhiên, một lưu ý quan trọng cần phải nhắc tới rằng trong phòng ngủ, vị trí của giường là yếu tố quan trọng nhất và nếu giường ngủ của bạn được kê ở vị trí bên trên bếp nấu, nó sẽ mang lại phong thủy không tốt.</p>\r\n\r\n<p>Lý do là bởi vì năng lượng của lửa được tạo ra bởi bếp nấu sẽ làm nhiễu loạn năng lượng của giường ngủ. Một chiếc giường được kê ở vị trí phong thủy tốt sẽ duy trì năng lượng tích cực giúp chủ nhân khỏe mạnh, ổn định giấc ngủ.</p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="phong thủy không tốt" src="https://img.dothi.net/2017/05/03/Z9BcC3fq/giuong-ngu-phong-thu-ea7d.jpg" style="height:332px; width:500px" title="Giường kê bên trên bếp nấu đem lại phong thủy không tốt. Ảnh minh họa"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Giường kê bên trên bếp nấu đem lại phong thủy không tốt. Ảnh minh họa</em></td>\r\n		</tr>\n</tbody></table>\n<p>Vậy, làm thế nào để cải thiện phong thủy khi giường kê trên bếp nấu?</p>\r\n\r\n<p>Có một vài điều bạn có thể làm để cải thiện phong thủy của một chiếc giường đặt trên bếp nấu:</p>\r\n\r\n<p>Di chuyển giường: Cách đơn giản và dễ dàng nhất là di chuyển vị trí giường ra một nơi khác. Đừng ngại thử nghiệm và tìm một vị trí mới cho giường của bạn. Kiểm tra các hướng dẫn phong thủy cho giường và phòng ngủ, xem xét những lựa chọn khác tốt hơn so với hiện tại.</p>\r\n\r\n<p>Trung hòa năng lượng: Bạn cần phải sử dụng các yếu tố phong thủy để trung hòa năng lượng lửa từ bếp nấu.</p>\r\n\r\n<p>Có thể sử dụng một tấm thảm màu socola hoặc màu đất đặt dưới gầm giường. Thậm chí gối và ga trải giường cũng có thể áp dụng hai màu này.</p>\r\n\r\n<p>Sử dụng một chiếc gương nhỏ để làm dịu năng lượng lửa: Một cách chữa phong thủy thường được khuyên áp dụng trong trường hợp này đó là dùng một tấm gương tròn nhỏ đặt úp mặt xuống bên dưới gầm giường.</p>\r\n\r\n<p>Việc làm này có thể "tạo ra năng lượng nước để làm mát năng lượng lửa" từ bếp nấu, từ đó năng lượng tiêu cực sẽ không làm phiền tới giường ngủ cũng như sức khỏe của bạn.</p>\r\n\r\n<p>Tuy nhiên, điều quan trọng nhất vẫn là cố gắng tuân thủ tốt phong thủy trong cả hai căn phòng ngủ và nhà bếp. </p>\r\n    \r\n        <em>\r\n            <em>(Theo Khám phá)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:18', '2017-05-05 15:07:18', 1, 1),
(39, 'Mẹo phong thủy: Để thứ này trên bàn làm việc giúp sự nghiệp thăng tiến vù vù', 'meo-phong-thuy-de-thu-nay-tren-ban-lam-viec-giup-su-nghiep-thang-tien-vu-vu', 'Meo phong thuy: De thu nay tren ban lam viec giup su nghiep thang tien vu vu', 'Mẹo phong thủy: Để thứ này trên bàn làm việc giúp sự nghiệp thăng tiến vù vù - ai cũng cần giắt lưng ngay.', 'https://img.dothi.net/2017/05/03/Z9BcC3fq/phong-thuy-van-phong-48ca.jpg', 4, '<p style="text-align: center;"><img src="https://img.dothi.net/2017/05/03/Z9BcC3fq/phong-thuy-van-phong-48ca.jpg" style="height:333px; width:500px"></p>\r\n\r\n<h2>Đặt chậu nước nhỏ trên bàn làm việc</h2>\r\n\r\n<p>Nước là nhân tố không thể thiếu trong phong thủy, đặt chậu nước nhỏ ngay trên bàn làm việc hoặc trên giá sách sẽ rất có lợi: Giúp tâm trí tỉnh táo, xua tan khí chướng có thể làm chủ nhân đổ bệnh và hỗ trợ công việc xuôi chèo mát mái.</p>\r\n\r\n<h2>Cách để máy tính hợp phong thủy</h2>\r\n\r\n<p>Nếu diện tích văn phòng quá nhỏ hẹp, thì không nên dùng màn hình máy tính quá to, nếu không sẽ tạo sự mất cân xứng trong bố cục không gian văn phòng, sẽ ảnh hưởng gián tiếp tới các mối quan hệ gia đình, bạn bè, xã hội của người sử dụng máy vi tính. Vị trí đặt máy vi tính cũng rất quan trọng. Cần tuyệt đối tránh để mặt sau máy vi tính chính diện với nơi có người, vì bức xạ máy vi tính mạnh nhất là ở phía sau, tiếp đó là phần hai bên cạnh máy. Còn bức xạ của màn hình lại là nhỏ nhất.</p>\r\n\r\n<p>Thông thường , cứ làm việc một giờ đồng hồ bên máy vi tính thì cần thư giãn khoảng 10 phút. Chú ý bảo vệ thị lực, cần thường xuyên nhìn ra xa, tập các động tác bảo vệ mắt, đảm bảo ngủ đủ giấc. Ngoài ra nên đặt thêm những thiết bị bảo hộ nhằm làm giảm bức xạ của máy vi tính.</p>\r\n\r\n<h2>Màu sắc nội thất</h2>\r\n\r\n<p>Ở hướng Đông của ngôi nhà nên bài trí một số đồ nội thất màu đỏ, sẽ cung cấp năng lượng cho toàn bộ ngôi nhà và giúp công việc kinh doanh được thuận lợi và con cái học hành tốt hơn. Màu vàng luôn đại diện cho sự giàu có. Hãy sắm vài đồ trang trí cho phòng khách có màu vàng, tiền, tài, lộc sẽ dồi dào hơn.</p>\r\n\r\n<p>Đặt những bình nước nhỏ trên bàn làm việc là một mẹo phong thủy giúp chủ nhân có cơ hội thăng tiến trong sự nghiệp</p>\r\n\r\n<h2>Đặt kỳ lân trên bàn làm việc</h2>\r\n\r\n<p>Một đôi kỳ lân đặt trên bàn làm việc hay phòng khách sẽ mang đến sự thịnh vượng, giàu có. Ngoài ra còn giúp chủ nhân tránh được những đố kỵ, thị phi.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Khỏe &amp; Đẹp)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:19', '2017-05-05 15:07:19', 1, 1),
(40, 'Cách chọn vật phẩm phong thủy cho người mệnh Thủy', 'cach-chon-vat-pham-phong-thuy-cho-nguoi-menh-thuy', 'Cach chon vat pham phong thuy cho nguoi menh Thuy', 'Đối với người mệnh Thủy nên chọn những vật phẩm như tượng hình rồng, pha lê, thạch anh, cóc vàng… để mang lại nhiều may mắn, tài lộc cho gia đình.', 'https://img.dothi.net/2017/04/28/Z9BcC3fq/be-ca-menh-thuy-78f0.jpg', 4, '<p>Rất nhiều người thích dùng vật phẩm phong thủy, vật dụng phong thủy như vòng trang sức, đeo đá, trưng bày tỳ hưu …. tuy nhiên đối với mỗi người, bản mệnh khác nhau phải sử dụng những vật phẩm phong thủy sao cho phù hợp.</p>\r\n\r\n<p>Vật phẩm phong thủy không chỉ có tác dụng làm trang trí cho ngôi nhà bạn thêm đẹp mà nó còn có nhiều lợi ích tốt cho gia chủ như mang lại tài lộc, may mắn, sức khỏe, xua đuổi tà ma… cho gia đình an khang và thịnh vượng. Nhưng trong đó tùy từng vật phẩm mà có tác dụng riêng với từng mệnh của mỗi người. Vật phẩm hợp mệnh sẽ mang lại nhiều lợi ích tốt lành còn ngược lại cũng sẽ phản tác dụng với gia chủ vừa tiền mất mà tật lại mang. Vậy đối với những gia chủ mệnh Thủy thì nên lựa chọn vật phẩm phong thủy như thế nào để mang lại tài lộc cho gia đình?</p>\r\n\r\n<p>Thủy tức là nước, người mệnh Thủy hợp với những tông màu đen và màu xanh biển. Ngoài ra cũng được kết hợp với các tông màu trắng và những sắc màu ánh kim (Theo ngũ hành tương sinh thì Kim sinh Thủy). Do đó khi lựa chọn vật phẩm bạn hãy chú ý đặc điểm này nhé.</p>\r\n\r\n<p>Cụ thể, với những gia chủ mệnh Thủy, để đón tài lộc, may mắn vào nhà nên lựa chọn các vật phẩm sau đây.</p>\r\n\r\n<h2>Bể cá</h2>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="bể cá" src="https://img.dothi.net/2017/04/28/Z9BcC3fq/be-ca-menh-thuy-78f0.jpg" style="height:333px; width:500px" title="Bể cá là một vật phẩm mà người mệnh Thủy nên đặt trong nhà (Ảnh minh họa)"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Bể cá là một vật phẩm mà người mệnh Thủy nên đặt trong nhà (Ảnh minh họa)</em></td>\r\n		</tr>\n</tbody></table>\n<p>Theo phong thủy thì việc đặt bể cá sẽ giúp cho người mệnh Thủy điều chỉnh được nguồn tài chính cũng như điều hòa được âm dương trong nhà. Với người mệnh Thủy, bạn nên đặt bể cá ở hướng Bắc và Đông Nam sẽ mang tới nhiều may mắn và tài lộc.</p>\r\n\r\n<h2>Tượng thần tài</h2>\r\n\r\n<p>Đây cũng là một vật phẩm mà gia chủ mệnh Thủy nên mua về đặt trong nhà mình. Bởi vì, tượng thần tài với người mệnh Thủy được coi là pháp khí mang tới tài lộc cũng như phú quý cho gia chủ. Nên đặt tượng thần tài trong phòng khách hoặc trên bàn làm việc để không chỉ mang tài lộc mà còn có vận khí tốt đẹp.</p>\r\n\r\n<h2>Vật phẩm pha lê, thạch anh</h2>\r\n\r\n<p>Pha lê và thạch anh không chỉ là đồ trang sức, trang trí mang tới vẻ đẹp quý phái và sang trọng cho ngôi nhà mà còn là vật phẩm mang tới sự thịnh vượng và tiền tài dành cho gia chủ đó.</p>\r\n\r\n<p>Đối với pha lê mang tới khí dương thuộc hành Thổ, đây được xem là vật trang trí không thể thiếu cho những người kinh doanh hoặc mưu cầu danh tài cũng như học hành thi cử.</p>\r\n\r\n<p>Còn thạch anh không chỉ được xem như một biểu tượng tốt đẹp và mang tới tiền tài cũng như may mắn và nó còn mang tới sức khỏe cho gia chủ. Do đó, người mệnh Thủy nên sắm cho gia đình mình những vật phẩm này.</p>\r\n\r\n<h2>Vật phẩm hình rồng</h2>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="rồng phong thủy" src="https://img.dothi.net/2017/04/28/Z9BcC3fq/rong-phong-thuy-8cb3.jpg" style="height:375px; width:500px" title="Vật phẩm hình rồng sẽ mang tới nguồn sinh khí mạnh mẽ đến với gia đình (Ảnh minh họa)"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Vật phẩm hình rồng sẽ mang tới nguồn sinh khí mạnh mẽ đến với gia đình (Ảnh minh họa)</em></td>\r\n		</tr>\n</tbody></table>\n<p>Rồng là một con vật linh thiêng và cũng đại diện cho sức mạnh cũng như quyền uy của vũ trụ. Nếu như trong nhà gia chủ mệnh Thủy trang trí tượng Rồng thì sẽ mang tới nguồn sinh khí mạnh mẽ đến với gia đình.</p>\r\n\r\n<p>Đối với vật phẩm này bạn nên đặt hướng ra chính cửa hoặc cửa sổ sẽ mang tới nhiều tài lộc cho gia đình và giúp công việc được thuận buồm xuôi gió.</p>\r\n\r\n<h2>Cóc vàng</h2>\r\n\r\n<p>Theo quan niệm dân gian thì Cóc là một sinh vật mang tới nhiều điều tốt lành. Và màu vàng cũng là màu thuộc mệnh Hỏa mang tới nhiều sắc thái và sinh khí cũng như sự an lành trong gia đình của người mệnh Thủy.</p>\r\n\r\n<h2>Sư tử đồng</h2>\r\n\r\n<p>Sử tử đồng cũng là một vật phẩm mà gia chủ mệnh Thủy nên sắm cho mình. Đặt tượng Sư Tử trong nhà có thể phù trợ sức khỏe cũng như tài lộc trong gia đình, đồng thời giúp xua đuổi được tà ma và những điều không hay.</p>\r\n    \r\n        <em>\r\n            <em>(Theo GDVN)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:19', '2017-05-05 15:07:19', 1, 1),
(41, 'Lỗi phong thủy nghiêm trọng khiến thần tài không bao giờ ghé thăm nhà bạn', 'loi-phong-thuy-nghiem-trong-khien-than-tai-khong-bao-gio-ghe-tham-nha-ban', 'Loi phong thuy nghiem trong khien than tai khong bao gio ghe tham nha ban', 'Lỗi phong thủy nghiêm trọng khiến thần tài không bao giờ ghé thăm nhà bạn - bỏ ngay lập tức.', 'https://img.dothi.net/2017/04/27/Z9BcC3fq/loi-phong-thuy-7418.jpg', 4, '<p style="text-align: center;"><img src="https://img.dothi.net/2017/04/27/Z9BcC3fq/loi-phong-thuy-7418.jpg" style="height:375px; width:500px"></p>\r\n\r\n<p>Theo quan niệm phong thủy, nhà ở có ảnh hưởng rất lớn đến tài vận - tiền bạc. Sau đây, các chuyên gia phong thủy chỉ ra 8 lỗi mà mọi người thường hay mắc phải và cần tránh lặp lại những sai lầm này để cải thiện tài vận gia đình mình:</p>\r\n\r\n<h2>1. Treo ảnh lệch, ảnh u tối</h2>\r\n\r\n<p>Không ít người thích treo các bức ảnh gia đình trên tường nhà nhằm mục đích trang trí, đồng thời có thể khích lệ tinh thần, khơi dậy sự gắn kết cho mọi thành viên trong nhà.</p>\r\n\r\n<p>Nhưng cần lưu ý, khi chọn và treo ảnh tránh treo lệch, nghiêng, chọn những bức ảnh u buồn, khóc lóc. Xét về mặt phong thủy, điều đó sẽ mang tới vận khí xấu, ảnh hưởng tới tình cảm gia đình cũng như cản trở sự nghiệp của gia chủ.</p>\r\n\r\n<h2>2. Phong thủy không thỏa đáng có thể gây bất lợi cho tình cảm vợ chồng</h2>\r\n\r\n<p>Hạnh phúc gia đình đòi hỏi rất nhiều yếu tố. Bên cạnh tình yêu, sự thấu hiểu, bao dung và cùng nhau phấn đấu của cả hai người thì một số bố cục phong thủy không đúng cũng có thể khiến tình cảm vợ chồng dễ bất hòa, thậm chí là rạn nứt.</p>\r\n\r\n<h2>3. Khu vực cửa chính lộn xộn và thiếu ánh sáng</h2>\r\n\r\n<p>Thông thường, phía trước nhà thường có một lối đi dẫn vào cửa chính. Vị trí này kị nhất là âm u, thiếu vẻ mỹ quan và bày trí không ngay ngắn. Lỗi phong thủy ngay trước cửa nhà như thế có thể khiến cho các luồng khí xấu dễ dàng xâm nhập vào trong, đồng thời các luồng khí tốt cũng dễ bị rối loạn, khiến cho vợ chồng thường xuyên xảy ra xung đột, có nhiều nguy cơ bị tiểu nhân phá hoại hoặc xuất hiện người thứ ba chen vào hạnh phúc gia đình.</p>\r\n\r\n<h2>4. Để tiền lung tung trong nhà</h2>\r\n\r\n<p>Có một thói quen xấu rất nhiều người mắc phải đó là hay để tiền lung tung trong nhà. Mọi người thường nghĩ nhà không có người lạ nên tiện đâu để đấy. Về phong thủy điều này rất nghiêm trọng. Muốn tài vận tốt, tiền phải được để tập trung lại một chỗ mới tụ được tài khí. Để tiền lung tung chính là sai lầm làm phân tán tài khí của mình.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Khỏe &amp; Đẹp)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:20', '2017-05-05 15:07:20', 1, 1),
(42, 'Treo ảnh cưới trong phòng ngủ, tưởng treo đúng hóa ra lại là sai lầm', 'treo-anh-cuoi-trong-phong-ngu-tuong-treo-dung-hoa-ra-lai-la-sai-lam', 'Treo anh cuoi trong phong ngu, tuong treo dung hoa ra lai la sai lam', 'Đây là một trong những sai lầm mà các cặp vợ chồng hay mắc phải khi treo ảnh cưới trong phòng ngủ.', 'https://img.dothi.net/2017/04/27/0Ln61R5F/20170427134724583824-18f4.jpg', 4, '<p>Ảnh cưới là một hình ảnh vô cùng thiêng liêng với cuộc sống của hai vợ chồng, và có ảnh hưởng rất nhiều đến tình cảm của họ. Vì vậy, theo phong thủy nếu bày trí ảnh cưới đúng chỗ sẽ góp phần khiến cho hôn nhân lâu dài, hạnh phúc. Tuy nhiên, có một vị trí mà các cặp vợ chồng ngỡ là tốt nhưng nếu không được coi phong thủy đúng hướng thì sẽ ảnh hưởng xấu đến cuộc sống hôn nhân, đó chính là treo ảnh cưới ở đầu giường.</p>\r\n\r\n<p style="text-align:center"><img alt="phong thủy" src="http://img.dothi.net/2017/04/27/0Ln61R5F/20170427134724583824-18f4.jpg" style="height:362px; width:500px" title="Treo ảnh cưới ở đầu giường chỉ tốt khi xem phong thủy đúng hướng với vợ chồng (Ảnh: Internet)"><br><em>Treo ảnh cưới ở đầu giường chỉ tốt khi xem phong thủy đúng hướng<br>\r\nvới vợ chồng (Ảnh: Internet)</em></p>\r\n\r\n<p>Nhiều người cho rằng việc treo ảnh ở đầu giường hoàn toàn phù hợp với phong thủy bởi nó biểu hiện cho sự hòa thuận, yêu thương nhau giữa vợ chồng và kinh tế gia đình cũng sẽ trở nên vững mạnh hơn. Tuy nhiên, nếu treo ở vị trí này mà không xem hướng có hợp với vận mệnh của hai vợ chồng hay không cũng sẽ không tốt cho đời sống hôn nhân. Trên thực tế, treo ảnh cưới ở đầu giường nếu không cẩn thận thì ảnh cưới sẽ bị rơi bất cứ lúc nào, tạo ra cảm giác nguy hiểm cho người nằm dưới.</p>\r\n\r\n<p>Ngoài ra, theo khoa học phong thủy, đây là một vị trí rất xấu, không tốt cho đời sống vợ chồng. Ảnh cưới treo đầu giường sẽ luôn tạo ra một áp lực đè nén xung quanh hai vợ chồng, phát sinh cảm giác không an toàn về hôn nhân, dễ phát sinh lòng đố kỵ, hai bên sẽ dễ nảy sinh bất hòa, tranh chấp, không có lợi cho hôn nhân. Nếu treo ảnh cưới ở cuối giường, vợ chồng sẽ thường gây bất hòa về chuyện tiền bạc nhưng tình cảm vẫn duy trì tốt.</p>\r\n\r\n<p style="text-align:center"><img alt="phong thủy" src="http://img.dothi.net/2017/04/27/0Ln61R5F/20170427134724583811-62b7.jpg" style="height:327px; width:500px" title="Nên treo ảnh cưới ở vị trí dễ nhìn và tốt nhất là bên trái giường ngủ (Ảnh: Internet)"><br><em>Nên treo ảnh cưới ở vị trí dễ nhìn và tốt nhất là bên trái<br>\r\ngiường ngủ (Ảnh: Internet)</em></p>\r\n\r\n<p>Bên cạnh đó, có môt sai lầm mà các vợ chồng hay mắc phải là đặt gương xung quanh vị trí ảnh cưới. Theo nghiên cứu phong thủy, gương là vật dụng không tốt khi đặt trong phòng ngủ. Ngay cả gương trang điểm cũng không thể để đối diện giường ngủ vì sẽ khiến cuộc sống vợ chồng lục đục. Do vậy, gương cũng không hề tốt khi trang trí xung quanh ảnh cưới.</p>\r\n\r\n<p>Cuối cùng, vị trí nào là tốt nhất cho việc treo ảnh cưới trong phòng ngủ? Bạn nên treo ảnh cưới ở vị trí có thể nhìn thấy nó ngay khi bước vào phòng ngủ. Nên treo ở bức tường mà người nằm trên giường có thể nhìn thấy dễ dàng, tạo cảm giác thoải mái cho cả hai. Không nên treo ảnh cưới ở bên phải giường ngủ, nếu không sẽ gây ảnh hưởng xấu đến hôn nhân. Ngược lại, treo ảnh cưới phía bên trái phòng ngủ sẽ làm tăng thêm vận khí tốt đẹp cho cuộc hôn nhân của hai vợ chồng, từ đó cuộc sống sẽ hạnh phúc, êm ấm.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:21', '2017-05-05 15:07:21', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(43, 'Cách bố trí bàn ăn chuẩn, hợp phong thủy để khỏe mạnh, hạnh phúc', 'cach-bo-tri-ban-an-chuan-hop-phong-thuy-de-khoe-manh-hanh-phuc', 'Cach bo tri ban an chuan, hop phong thuy de khoe manh, hanh phuc', 'Việc bài trí bàn ăn hợp lý không những mang lại cho gia đình bạn một không gian sống đẹp mà còn giúp bạn và người thân có sức khỏe, may mắn và tinh thần tốt.', 'https://img.dothi.net/2017/04/27/Z9BcC3fq/ban-an-aa6e.jpg', 4, '<p>Bạn có thể tham khảo cách bài trí bàn ghế theo phong thủy góp phần mang lại may mắn, củng cố hạnh phúc gia đình được liệt kê dưới đây.</p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img src="https://img.dothi.net/2017/04/27/Z9BcC3fq/ban-an-aa6e.jpg" style="height:334px; width:500px"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Ảnh minh họa.</em></td>\r\n		</tr>\n</tbody></table>\n<h2>Bàn ăn không nên để đối diện trực tiếp cửa chính</h2>\r\n\r\n<p>Theo kiến trúc sư Nguyễn Văn Hợp, Công ty CP Kiến trúc DMC Việt Nam thì cửa chính là nơi nạp khí cho toàn bộ ngôi nhà. Dòng khí vào nhà cần được lưu thông để đi tới các phòng, góc của ngôi nhà. Bàn ăn đặt ở vị trí đối diện cửa sẽ cản trở luồng khí này ra vào nhà.</p>\r\n\r\n<p>Thêm vào đó, nếu bàn ăn đối diện cửa chính thì người đi bên ngoài có thể nhìn thấy mọi người đang ăn cơm, làm mất đi tính riêng tư của gia đình.</p>\r\n\r\n<h2>Bàn ăn không đối diện nhà vệ sinh</h2>\r\n\r\n<p>Nhà vệ sinh theo quan niệm phong thủy là nơi không sạch sẽ, có nhiều khí xấu. Do đó, không nên để bàn ăn đối diện nhà vệ sinh, vừa không hợp vệ sinh gây ảnh hưởng đến sức khỏe, vừa khiến người ngồi ăn cơm không có cảm giác ngon miệng.</p>\r\n\r\n<h2>Không kê bàn ăn đối diện bếp nấu</h2>\r\n\r\n<p>Hiện nay, nhiều gia đình thường đặt bàn ăn luôn ở phòng bếp, tạo không gian chung phòng bếp – ăn. Khi bố trí như vậy, cần tránh để bàn ăn đối diện trực tiếp với bếp nấu.</p>\r\n\r\n<p style="text-align: center;"><img src="https://img.dothi.net/2017/04/27/Z9BcC3fq/ban-an-2-71cb.jpg" style="height:309px; width:500px"></p>\r\n\r\n<p>Theo chuyên gia phong thủy, bếp nấu thường có nhiệt độ cao và khói, nếu bàn ăn đặt đối diện sẽ khiến sức khỏe của các thành viên trong gia đình không được tốt, tính khí cũng sẽ trở nên nóng nảy, dễ cáu gắt.</p>\r\n\r\n<h2>Ghế ngồi không nên đặt dưới đèn chiếu sáng</h2>\r\n\r\n<p>Trong không gian phòng ăn của gia đình hiện đại ngày nay thường bố trí thêm đèn chiếu sáng và đèn trang trí trên trần nơi đặt bàn ăn.</p>\r\n\r\n<p>Tuy nhiên bạn cần chú ý để ghế ngồi không bị đèn "chiếu" thẳng vào đầu, vì theo quan niệm phong thủy, người ngồi sẽ lâm vào thế bị đèn đè lên đầu.</p>\r\n\r\n<p style="text-align: center;"><img src="https://img.dothi.net/2017/04/27/Z9BcC3fq/ban-an-3-19fb.jpg" style="height:333px; width:500px"></p>\r\n\r\n<h2>Mặt bàn không được lồi lõm</h2>\r\n\r\n<p>Bạn cần lưu ý rằng, một chiếc bàn không phẳng sẽ ảnh hưởng đến cảm giác ngon miệng của mọi người, từ đó sẽ ảnh hưởng đến sức khỏe. Ngoài ra, bàn ăn thông thường là nơi tụ tập ăn uống nên không tránh được va chạm bát đũa, nếu mặt bàn không phẳng chỉ cần va chạm nhẹ cũng dễ làm đổ thức ăn.</p>\r\n\r\n<h2>Luôn giữ cho mặt bàn gọn gàng, sạch sẽ</h2>\r\n\r\n<p>Trên bàn ăn bạn không nên bày nhiều đồ đạc linh tinh bởi sự bừa bộn sẽ làm vợ/chồng, con cái cảm giác khó chịu, ảnh hưởng đến tình cảm vợ chồng và tình thân giữa cha mẹ và con cái. Do vậy, bạn cần phải luôn giữ cho bàn ăn gọn gàng, sạch sẽ.</p>\r\n\r\n<h2>Không kê bàn ăn quá to, quá nhỏ so với căn phòng</h2>\r\n\r\n<p>Bạn cần biết rằng, diện tích bàn ăn cũng cần phải hợp lý, tốt nhất phải phù hợp với diện tích thực tế của phòng ăn hoặc phòng bếp trong ngôi nhà bạn. Nếu phòng ăn quá nhỏ mà kê bàn ăn quá to sẽ khiến mọi người “đứng ngồi không yên”.</p>\r\n\r\n<p>Và ngược lại, nếu phòng ăn quá lớn mà kê bàn ăn quá nhỏ thì sẽ gây hiểu lầm về sự “không phóng khoáng, keo kiệt của gia chủ”. Vì thế bàn ăn nhất định phải chọn kích cỡ cho phù hợp.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Gia đình &amp; Xã hội)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:21', '2017-05-05 15:07:21', 1, 1),
(44, 'Nhà đã "khó" mà hay đặt những vật này ở ban công thì muôn đời vẫn nghèo', 'nha-da-kho-ma-hay-dat-nhung-vat-nay-o-ban-cong-thi-muon-doi-van-ngheo', 'Nha da "kho" ma hay dat nhung vat nay o ban cong thi muon doi van ngheo', 'Nhiều người thường thích treo chuông gió hay trồng cây cao ở ban công mà không biết rằng việc này sẽ ảnh hưởng đến tài vận của gia đình, khiến gia chủ nghèo đến "mạt vận".', 'https://img.dothi.net/2017/04/27/Z9BcC3fq/phong-thuy-nha-o-hie-e498.jpg', 4, '<p>Ban công là nơi đón sáng và cũng là một địa điểm quan trọng của ngôi nhà. Gia chủ có thể bày biện đồ vật tại nơi này, tuy nhiên, có một số vật không được phép xuất hiện tại ban công nếu không sẽ ảnh hưởng đến gia vận.</p>\r\n\r\n<h2>Chuông gió</h2>\r\n\r\n<p>Theo phong thủy, do phát ra những âm thanh dễ nghe khi gió thổi nên chuông gió có thể khuấy động không khí và ảnh hưởng tới từ trường, có tác dụng hóa giải sát khí. Mặc dù vậy, nếu treo ngoài ban công chuông gió có thể bị sát khí từ bên ngoài gây động, điều này lại gây tác động không nhỏ đến phong thủy trong nhà.</p>\r\n\r\n<h2>Cây xanh quá cao</h2>\r\n\r\n<p>Ban công là nơi lý tưởng để trồng cây xanh, tuy nhiên không nên trồng những loại cây có tán lá quá rậm bởi nó sẽ ảnh hưởng tới gia vận. Mà thay vào đó nên trồng những chậu cây hoa nhỏ, bồn cây bé để lấp chỗ trống trên ban công.</p>\r\n\r\n<p style="text-align:center"><img alt="phong thủy" src="http://img.dothi.net/2017/04/27/0Ln61R5F/20170427081004281446-b5ce.jpg" style="height:333px; width:500px" title="Trồng những chậu hoa nhỏ trên ban công vừa có tác dụng trang trí, vừa có thể hút vượng khí cho ngôi nhà. (Ảnh minh họa)"><br><em>Trồng những chậu hoa nhỏ trên ban công vừa có tác dụng trang trí, vừa có thể<br>\r\nhút vượng khí cho ngôi nhà. (Ảnh minh họa)</em></p>\r\n\r\n<p>Nếu mỗi chậu cây đều xanh tốt, chứng tỏ rằng nơi này dương khí thịnh; nếu càng ngày càng khô héo thì chứng tỏ nơi này không nên trồng cây hoặc cần phải chọn loại cây khác.</p>\r\n\r\n<h2>Bài vị</h2>\r\n\r\n<p>Bài vị thờ cúng khó tránh khỏi việc đốt hương thắp nến, khiến trong nhà chướng khí mù mịt . Để tránh tình trạng này có người sẽ đưa bài vị ra ban công, cho rằng như vậy sẽ tiện thông gió tán khí và bài vị sẽ được tiếp cận với thiên nhiên thoáng đãng.</p>\r\n\r\n<p>Tuy nhiên, ban công vốn là nơi trống trải, chịu gió thổi mưa tạt, nếu đặt bài vị ở đây sẽ không đem đến điều tốt lành, dễ mạo phạm thần linh. Nếu đến mùa đông, thần vị chịu ảnh hưởng của gió Đông Bắc sẽ làm mất linh tính.</p>\r\n\r\n<p>Ngoài ra, nhiều gia đình chọn ban công là nơi để phơi quần áo, mà quần áo nhiễm khí con người, đặc biệt là nội y, điều này thể hiện sự bất kính đối với thần linh. Vậy nên, gia chủ không nên đặt thần vị tại ban công.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Khám phá)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:21', '2017-05-05 15:07:21', 1, 1),
(45, 'Cách bài trí gương phong thủy giúp tăng lợi nhuận kinh doanh và hạnh phúc cho mọi gia đình', 'cach-bai-tri-guong-phong-thuy-giup-tang-loi-nhuan-kinh-doanh-va-hanh-phuc-cho-moi-gia-dinh', 'Cach bai tri guong phong thuy giup tang loi nhuan kinh doanh va hanh phuc cho moi gia dinh', 'Bài trí gương phong thủy tại các không gian quan trọng như cửa hàng, phòng khách, phòng bếp, phòng tắm đúng cách sẽ mang đến nguồn tài lộc dồi dào cho gia đình bạn.', 'https://img.dothi.net/2017/04/26/0Ln61R5F/20170426131826862524-4870.jpg', 4, '<p>Như chúng ta đều biết, tác dụng chính của gương là phản chiếu, biến một sự vật thành hai. Chính vì vậy, nếu biết bố trí gương theo phong thủy, bạn sẽ tạo ra hiệu ứng tích cực, giúp nhân đôi thu nhập, hút thêm tiền bạc cũng như hạnh phúc gia đình. Ngược lại, dùng gương sai cách, bố trí gương rơi vào phong thủy xấu sẽ tiềm ẩn những ám khí gây hại cho cuộc sống của bạn.</p>\r\n\r\n<p style="text-align:center"><img alt="bài trí gương theo phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426131826862524-4870.jpg" style="width:700px" title="Gương có tác dụng phản chiếu, biết sử dụng đúng cách sẽ gia tăng vận may cho bạn"><br><em>Gương có tác dụng phản chiếu, biết sử dụng đúng cách sẽ gia tăng vận may cho bạn</em></p>\r\n\r\n<p>Những mẹo phong thủy sau đây trong cách bài trí gương phong thủy sẽ mang lại nhiều may mắn cho bạn trong nhiều lĩnh vực.</p>\r\n\r\n<h2><strong>Cách bài trí gương nhằm gia tăng lợi nhuận kinh doanh</strong></h2>\r\n\r\n<p>Theo quan niệm phong thủy, nếu bạn muốn tăng doanh số hay thu hút nhiều khách hàng hơn, hãy bày gương chiếu vào quầy tính tiền. Điều này mang ý nghĩa tăng gấp đôi mọi hoạt động giao dịch trong cửa hàng, doanh thu sẽ tăng dần lên.</p>\r\n\r\n<p>Bên cạnh đó, người chủ kinh doanh có thể bài trí một tấm gương to bản và cao từ sản đến trần nhà ở gần cửa ra vào. Việc làm này không chỉ cung cấp thêm ánh sáng cho cửa hàng, cửa hiệu mà còn nhân đôi không gian, tạo cảm giác như được nới rộng diện tích, giúp khách hàng có tâm thể thoải mái hơn khi mua hàng. Vì thế, số lượng khách hàng và các đơn hàng sẽ gia tăng, mang lại nhiều lợi nhuận cho bạn.</p>\r\n\r\n<p style="text-align:center"><img alt="treo gương theo phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426131826862511-1f98.jpg" style="width:600px" title="Những tấm gương to bản sẽ làm sáng hơn không gian cửa hàng kinh doanh của bạn"><br><em>Những tấm gương to bản sẽ làm sáng hơn không gian cửa hàng kinh doanh của bạn</em></p>\r\n\r\n<p>Đặc biệt, những cửa hàng kinh doanh thời trang cần chú ý có những chiếc gương đẹp, tôn vinh được vẻ đẹp của khách hàng, thậm chí “đánh lừa thị giác” của khách.</p>\r\n\r\n<h2><strong>Cách bài trí gương phong thủy tốt cho sức khỏe và hạnh phúc gia đình</strong></h2>\r\n\r\n<p>Theo phong thủy nhà ở, vị trí đặt gương tốt nhất là ở khu vực sinh hoạt và ăn uống chung của cả gia đình hay phòng tắm. Đây là những vị trí có thể sản sinh vượng khí, tốt cho sức khỏe, hạnh phúc và tài lộc cho gia chủ.</p>\r\n\r\n<p>Trong phòng khách, gia chủ không nên treo gương ở vị trí đối diện với cửa sổ, cửa ra vào. Trong trường hợp gương chiếu vào cửa sổ, mà phía sau cửa sổ là hình ảnh bãi rác hay con đường đâm thẳng vào nhà... thì bạn có thể dùng rèm hoặc mành che để hóa giải hung khí cản trở tài lộc vào nhà bạn.</p>\r\n\r\n<p style="text-align:center"><img alt="bài trí gương hợp phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426131826862546-42bb.jpg" style="width:700px" title="Trong phòng khách, không nên treo gương đối diện cửa sổ hoặc cửa ra vào"><br><em>Trong phòng khách, không nên treo gương đối diện cửa sổ hoặc cửa ra vào</em></p>\r\n\r\n<p>Nhưng nếu bên ngoài là không gian đẹp như cây cối xanh tốt, sông hồ hiền hòa... thì không đáng lo ngại. Năng lượng thuần khiết của tự nhiên được nhân đôi và đi vào nhà, mang lại nguồn tài lộc bền vững cho gia đình cũng như nâng đỡ các mối quan hệ hài hòa.</p>\r\n\r\n<p>Tại phòng bếp, gương chiếu vào bàn ăn làm tăng gấp đôi lượng thực phẩm, mang ý nghĩa về sự giàu có, phong phú, khơi dậy hứng thú ăn uống của cả nhà, tăng sự ấm cúng, hạnh phúc trong gia đình.</p>\r\n\r\n<p>Tuy nhiên, khi treo gương trong nhà bếp, phòng ăn cần tránh để gương chiếu vào thùng rác hay bếp đun. Bởi đây là những vị trí không sạch sẽ, nếu gương chiếu vào sẽ nhân đôi ám khí trong nhà bạn, gây ảnh hưởng trực tiếp đến sức khỏe của mọi người.</p>\r\n\r\n<p>Tương tự, bếp gas, bếp hồng ngoại cũng không nên bị gương chiếu vào, dễ tăng gấp đôi lửa, gây hỏa hoạn bất ngờ, gây hại đến tính mạng và tài sản của cả gia đình.</p>\r\n\r\n<p style="text-align:center"><img alt="bài trí gương theo phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426131826862577-31bc.jpg" style="width:700px" title="Treo gương đối diện bàn ăn sẽ có lợi cho sức khỏe của bạn"><br><em>Treo gương đối diện bàn ăn sẽ có lợi cho sức khỏe của bạn</em></p>\r\n\r\n<p>Treo gương trong phòng tắm cũng cần được gia chủ quan tâm để cải thiện sức khỏe cho cả nhà. Chúng ta đều biết rằng, khi tắm, gương không chỉ giúp bạn phát hiện nhanh chóng những biểu hiện bất thường trên da, cơ thể mà việc soi gương còn lại cảm giác thư giãn cho bạn. Tinh thần thư thái, mọi cảm xúc ưu phiền qua đi, tất nhiên sức khỏe bạn cũng được đảm bảo hơn, không phải lo lắng quá nhiều chuyện phiền não nữa.</p>\r\n\r\n<p>Vì thể, hãy treo những tấm gương ở vị trí đối diện vòi hoa sen hay bồn tắm để bạn cảm thấy thoải mái hơn. Tuy nhiên, tránh để gương chiếu thẳng vào bồn cầu bởi không ai muốn tăng gấp đôi xú uế, rác thải, vừa thiếu mỹ quan lại ảnh hưởng không tốt tới sức khỏe.</p>\r\n\r\n<p style="text-align:center"><img alt="gương phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426131826862565-81fa.jpg" style="width:600px" title="Bài trí gương phong thủy gần khu vực bạn tắm sẽ gia tăng cảm giác thoải mái"><br><em>Bài trí gương phong thủy gần khu vực bạn tắm sẽ gia tăng cảm giác thoải mái</em></p>\r\n\r\n<p>Lưu ý những vị trí treo gương gia tăng hung khí cho cả nhà: Cửa ra vào và cửa sổ; Giường ngủ; gó nhọn của nội thất hay bức tường, Hóa đơn thanh toán, Gương thấp hơn người cao nhất trong nhà, khi soi bị mất phần đầu; Những vị trí không sạch sẽ như thùng rác, bồn cầu, chỗ để giày dép,…</p>\r\n    \r\n        <em>\r\n            <em>(Theo VietQ)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:22', '2017-05-05 15:07:22', 1, 1),
(46, 'Gia đình bạn mà đặt bàn thờ vị trí này hãy đổi ngay kẻo hối thì đã muộn', 'gia-dinh-ban-ma-dat-ban-tho-vi-tri-nay-hay-doi-ngay-keo-hoi-thi-da-muon', 'Gia dinh ban ma dat ban tho vi tri nay hay doi ngay keo hoi thi da muon', 'Gia đình bạn mà đặt bàn thờ vị trí này hãy đổi ngay kẻo hối thì đã muộn - nhớ chú ý lập tức.', 'https://img.dothi.net/2017/04/26/Z9BcC3fq/ban-tho-phong-thuy-27ee.jpg', 4, '<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/26/Z9BcC3fq/ban-tho-phong-thuy-27ee.jpg" style="height:346px; width:500px"></p>\r\n\r\n<h2>Không được đặt bài vị sát tường</h2>\r\n\r\n<p>Nếu như tượng Thần Phật cần phải sát tường mới tốt thì ngược lại, không nên đặt bài vị của tổ tiên sát tường. Theo góc nhìn của phong thủy, cách bài trí này sẽ ảnh hưởng đến tiền đồ và có thể là vận mệnh đời con cháu. Trường hợp bài vị đã đặt sát tường thì giữa bài vị của tổ tiên và tường nên có một khoảng trống nhỏ.</p>\r\n\r\n<h2>Không được đặt bàn thờ phía dưới xà ngang</h2>\r\n\r\n<p>Nếu phía trên bàn thờ là xà ngang, nó sẽ sản sinh ra sát khí áp lực, khiến các thành viên trong gia đình thường bị đau đầu, dẫn đến suy nhược thần kinh, thậm chí, có thể ảnh hưởng đến cả vận thế trong gia đình.</p>\r\n\r\n<p>Về phong thủy: nên đặt bàn thờ theo phương hướng tốt, tránh đặt các khu vệ sinh hay giường ngủ đè lên trên bàn thờ. Trường hợp muốn đặtphòng thờtrên tầng lửng cũng không sao, chỉ cần bố trí sao cho khu thờ cúng không bị vướng phải những vấn đề trên là được.</p>\r\n\r\n<h2>Bàn thờ không được gần phòng vệ sinh và bếp</h2>\r\n\r\n<p>Bàn thờ không được gần phòng vệ sinh và bếp. Bàn thờ sát phòng vệ sinh là tội không tôn trọng thần linh và tổ tiên.</p>\r\n\r\n<p>Nếu phía sau bàn thờ là bếp thì sẽ gây hỏa sát rất nặng, vận thế củagia đìnhsẽ không ổn định hoặc giảm sút, ảnh hưởng đến phong thủy khác của gia đình. Trong trường hợp này, tốt nhất là đặt lại vị trí bàn thờ. Nếu không thể đặt ở vị trí khác thì phải cách một khoảng không gian giữa bàn thờ với phòng vệ sinh hay bếp. Tốt nhất nên đặt 6 sâu tiền Lục Đế để hóa giải.</p>\r\n\r\n<h2>Bàn thờ không được xung với cửa</h2>\r\n\r\n<p>Bàn thờ không được xung với cửa. Nếu 2 bên bàn thờ xung với cửa hoặc đường cái có thể ảnh hưởng đến vận thế và sức khỏe của cả gia đình, dễ bị tiểu nhân hãm hại. Vì vậy, nếu bàn thờ xung với cửa, dù là cửa phòng, cửa chính, cửa bếp, cửa nhà vệ sinh hay đường thì cần đặt tấm bình phong để che chắn.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Khỏe &amp; Đẹp)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:23', '2017-05-05 15:07:23', 1, 1),
(47, 'Còn sống theo kiểu này, chẳng mẹo phong thủy nào có thể giúp gia đình bạn gặp may mắn, thịnh vượng đâu', 'con-song-theo-kieu-nay-chang-meo-phong-thuy-nao-co-the-giup-gia-dinh-ban-gap-may-man-thinh-vuong-dau', 'Con song theo kieu nay, chang meo phong thuy nao co the giup gia dinh ban gap may man, thinh vuong dau', 'Nếu còn phạm phải những nguyên tắc phong thủy sau, bạn nên thay đổi ngay nhé.', 'https://img.dothi.net/2017/04/26/0Ln61R5F/20170426081003342424-4877.jpg', 4, '<p>Ai cũng muốn gia đình mình luôn gặp may mắn, thịnh vượng, mọi sự đều thuận buồm xuôi gió. Phong thủy đã chỉ ra rất nhiều cách để mang đến sự may mắn, tài lộc cho gia đình. Và trong phong thủy, có một nguyên tắc cực kì quan trọng, ảnh hưởng đến cuộc sống của bạn và gia đình mà nếu bạn không tuân theo thì thực sự, chẳng có thầy phong thủy hay mẹo nào có thể giúp gia đình bạn có cuộc sống tốt hơn.</p>\r\n\r\n<p>Theo các chuyên gia phong thủy, sống mất vệ sinh, bày bừa lung tung, không giữ chỗ ở ngăn nắp, sạch sẽ là một trong những điều vi phạm nguyên tắc phong thủy nghiêm trọng.</p>\r\n\r\n<p>Theo đó khi nhà cửa bề bộn, mất vệ sinh, không sạch sẽ, trường năng lượng tích cực không được luân chuyển trong không gian sống một cách suôn sẻ, dễ bị phản xạ, triệt tiêu, gây sự hỗn loạn từ trường, ảnh hưởng tiêu cực đến người cư trú trong ngôi nhà đó. Nhưng ảnh hưởng tiêu cực đó thường được mọi người hiểu là vận rủi, là xui xẻo.</p>\r\n\r\n<p>Còn giải thích theo các nguyên tắc về sức khỏe, một ngôi nhà đầy bụi bẩn, mạng nhện, rác… chắc chắn chẳng thể nào tốt cho sức khỏe của các thành viên trong gia đình. Từ đó, chất lượng cuộc sống giảm sút.</p>\r\n\r\n<p>Do đó, nếu còn phạm phải những nguyên tắc sau, bạn nên thay đổi ngay nhé.</p>\r\n\r\n<h2>Phòng khách bụi bặm, bừa bộn</h2>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426081003342424-4877.jpg" style="height:323px; width:500px"></p>\r\n\r\n<p>Muốn gia đình có cuộc sống khỏe mạnh, thịnh vượng, gặp nhiều may mắn, tốt nhất mọi thứ trong phòng khách phải được sắp xếp ngăn nắp và phải thường xuyên được lau bụi, quét dọn sạch sẽ (Ảnh: Internet)</p>\r\n\r\n<p>Trong phong thủy, phòng khách là trái tim của ngôi nhà, là nơi các thành viên trong gia đình quây quần cùng trò chuyện, đồng thời là nơi tiếp đãi khách khứa. Nguồn năng lượng từ ngoài thường tập trung nhiều nhất ở phòng khách, là nơi cộng hưởng nhiều nhất với không khí sinh hoạt chung của cả nhà.</p>\r\n\r\n<p>Thói quen của rất nhiều người là ngay khi về nhà sẽ quăng áo khoác, nón, giày dép… ngay trong phòng khách và đây là thói quen không hề tốt cho phong thủy. Thế nên nếu bạn muốn gia đình có cuộc sống khỏe mạnh, thịnh vượng, gặp nhiều may mắn, tốt nhất mọi thứ trong phòng khách phải được sắp xếp ngăn nắp và phải thường xuyên được lau bụi, quét dọn sạch sẽ. Nếu nhà có con nít, không nên bày bừa đồ chơi tùm lum trong căn phòng này, trẻ chơi xong nên dọn dẹp ngay; người lớn cũng cần phải bỏ thói quen vứt đồ đạc lung tung khi vừa trở về nhà.</p>\r\n\r\n<p>Đó chính là cách bạn giúp chất lượng sống của gia đình được tốt hơn.</p>\r\n\r\n<h2>Phòng ngủ để đồ vật lung tung</h2>\r\n\r\n<p style="text-align:center"><img src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426081003342411-e679.jpg" style="height:333px; width:500px"></p>\r\n\r\n<p>Đừng biến phòng ngủ thành nhà kho, tốt nhất nên chuyển chúng về đúng vị trí để bảo vệ giấc ngủ và sức khỏe của bạn (Ảnh: Internet)</p>\r\n\r\n<p>Phòng ngủ là nơi cần năng lượng âm yên tĩnh vừa đủ, giúp bạn có được giấc ngủ ngon, cân bằng năng lượng dương. Thông thường, các chuyên gia phong thủy không khuyến khích mang quá nhiều đồ vật vào phòng ngủ, đặc biệt là máy tập thể dục, TV, máy vi tính bởi nó sẽ xáo trộn nguồn năng lượng trong phòng ngủ, ảnh hưởng đến giấc ngủ của bạn, khiến bạn ngủ không ngon, người hay mệt mỏi, bực bội.</p>\r\n\r\n<p>Những đồ vật đã lâu rồi không dùng đến và không có ý định dùng đến cũng không nên cho vào phòng ngủ. Đừng biến phòng ngủ thành nhà kho, tốt nhất nên chuyển chúng về đúng vị trí để bảo vệ giấc ngủ và sức khỏe của bạn.</p>\r\n\r\n<h2>Nhà bếp bụi, ẩm thấp</h2>\r\n\r\n<p style="text-align:center"><img alt="phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426081003342446-0f8c.jpg" style="height:332px; width:500px" title="Chén bát phải luôn được rửa sạch, khô ráo và cất trong tủ, đừng để bát dơ nhiều ngày liền (Ảnh: Internet)"><br><em>Chén bát phải luôn được rửa sạch, khô ráo và cất trong tủ, đừng để bát<br>\r\ndơ nhiều ngày liền (Ảnh: Internet)</em></p>\r\n\r\n<p>Trong phong thủy, bếp được ví ngang với dạ dày của cơ thể. Do đó, nhà bếp luôn phải được bày biện gọn gàng, khoa học, sạch sẽ. Chén bát phải luôn được rửa sạch, khô ráo và cất trong tủ, đừng để bát dơ nhiều ngày liền. Trần nhà bếp phải cao ráo, khăn lau tay, lau chén, lau bàn… luôn phải được khô ráo vì đây là nơi luôn tích tụ vi khuẩn cực kì nhiều. Ngoài ra, sàn nhà phải luôn giữ khô ráo, nước văng do rửa chén bát, rửa rau… đều phải được lau cho khô.</p>\r\n\r\n<h2>Nhà vệ sinh, nhà tắm ẩm thấp</h2>\r\n\r\n<p style="text-align:center"><img alt="phong thủy" src="http://img.dothi.net/2017/04/26/0Ln61R5F/20170426081003342477-e136.jpg" style="height:381px; width:500px" title="Nhà vệ sinh, nhà tắm nên tối giản, gọn gàng (Ảnh: Internet)"><br><em>Nhà vệ sinh, nhà tắm nên tối giản, gọn gàng (Ảnh: Internet)</em></p>\r\n\r\n<p>Nhà vệ sinh, nhà tắm thường là nơi ô uế nhất của gia đình. Không chỉ vậy, nơi đây còn thường chứa khá nhiều đồ vật, từ cây lau nhà cho đến mỹ phẩm làm đẹp, sữa tắm… Chưa kể, nhiều người còn có thói quen treo khăn tắm trong đây nữa. Tuy nhiên, đồ đạc nhiều sẽ khiến cho việc chùi dọn khó khăn, đóng bẩn nhiều hơn, vi khuẩn không được làm sạch, từ đó không tốt cho sức khỏe. Chưa kể, phòng tắm thường là nơi ẩm thấp cũng gây ảnh hưởng xấu. Do đó, phòng tắm, nhà vệ sinh phải luôn thoáng khí, tối giản, ít đồ vật, sẽ tốt hơn cho cuộc sống của bạn và gia đình.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Afamily)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:24', '2017-05-05 15:07:24', 1, 1),
(48, 'Chuyên gia phong thủy "mách nước" cách hóa giải nhà ở sát ''vách'' nghĩa trang', 'chuyen-gia-phong-thuy-mach-nuoc-cach-hoa-giai-nha-o-sat-vach-nghia-trang', 'Chuyen gia phong thuy "mach nuoc" cach hoa giai nha o sat ''vach'' nghia trang', 'Hàng chục dự án, khu đô thị nằm cạnh nghĩa trang, nhưng hầu hết được chủ đầu tư quay tôn kín hoặc treo biển quảng cáo cao quá đầu người để che mắt khách hàng.', 'https://img.dothi.net/2017/04/25/0Ln61R5F/20170425132228410424-77b0.jpg', 4, '<p>Tại Hà Nội, những dự án bất động sản nằm kế bên hay có hướng nhìn ra nghĩa trang không phải là hiếm. Đơn cử, ngay tại khu đô thị Tây Nam Linh Đàm (quận Hoàng Mai), khu biệt thự, liền kề được nằm sát một nghĩa trang ngay mặt đường.</p>\r\n\r\n<p style="text-align: center;"><img alt="hóa giải nhà sát nghĩa trang" src="http://img.dothi.net/2017/04/25/0Ln61R5F/20170425132228410424-77b0.jpg" style="height:375px; text-align:center; width:500px" title="Khu biệt thự, liền kể của khu đô thị Tây Nam Linh Đàm (quận Hoàng Mai, Hà Nội) nằm sát nghĩa trang. Ảnh: Minh Thư"><br><em>Khu biệt thự, liền kể của khu đô thị Tây Nam Linh Đàm (quận Hoàng Mai,<br>\r\nHà Nội) nằm sát nghĩa trang. Ảnh: Minh Thư</em></p>\r\n\r\n<p>Điều đáng nói, nghĩa trang này hiện vẫn được sử dụng để an táng, có dịp đi ngang qua đây, người đi đường vẫn bắt gặp những ngôi mộ vừa mới chôn cất với nhiều vòng hoa tươi. Ngăn cách nghĩa trang này với khu biệt thự, liền kề Tây Nam Linh Đàm là một bức tường xây cao quá đầu người màu vàng, có đoạn được trồng cây dây leo phủ kín.</p>\r\n\r\n<p>Tại dự án Khu văn phòng, dịch vụ và nhà ở tại số 99 Lê Văn Lương và 164 Khuất Duy Tiến (có tên Việt Đức Complex) được thực hiện bởi liên danh chủ đầu tư gồm Công ty cổ phần đầu tư Sông Đà - Việt Đức và 2 đơn vị Tập đoàn xây dựng và thiết bị công nghiệp (Cie Corp), Tổng Công Ty xây dựng Hà Nội gồm 4 tòa tháp với tổng số 704 căn hộ cũng có hướng đúng nghĩa trang.</p>\r\n\r\n<p style="text-align: center;"><img alt="nhà sát nghĩa trang" src="http://img.dothi.net/2017/04/25/0Ln61R5F/20170425132228410411-7e3b.jpg" style="height:375px; text-align:center; width:500px" title="Hướng đẹp nhất của dự án Việt Đức Complex tại số 99 Lê Văn Lương và 164 Khuất Duy Tiến nằm quay ra phía đường Lê Văn Lương nhưng bên cạnh lại là nghĩa trang Quán Dền – Nhân Chính. Ảnh: Minh Thư"><br><em>Hướng đẹp nhất của dự án Việt Đức Complex tại số 99 Lê Văn Lương và 164<br>\r\nKhuất Duy Tiến nằm quay ra phía đường Lê Văn Lương nhưng bên cạnh lại là<br>\r\nnghĩa trang Quán Dền – Nhân Chính. Ảnh: Minh Thư</em></p>\r\n\r\n<p>Theo quan sát, dự án này nằm lọt thỏm trong khu đất có 3 hướng bị chắn bởi các tòa chung cư cao tầng bên cạnh. Còn hướng đẹp nhất của dự án quay ra phía đường Lê Văn Lương và hồ điều hòa nhưng lại vướng bởi nghĩa trang Quán Dền – Nhân Chính chắn gần 2/3 bề ngang dự án. Các lối phụ phải đi qua các dự án kế cạnh.</p>\r\n\r\n<p>Ngoài ra, một số dự án như Home City Trung Kính, Glexia Riveside Tam Trinh, chung cư Thông Tấn xã Việt Nam trên đường Nguyễn Xiển… cũng có khu nghĩa trang nằm kế bên.</p>\r\n\r\n<p>Có thể thấy từ thực tế, những dự án có vị trí gần nghĩa trang, nhất là những căn có hướng đối diện với nghĩa trang thì giá trị bất động sản có ảnh hưởng khi giá bán thường thấp hơn những dự án khác cùng khu vực. Đồng thời, những dự án đó cũng có phần khó bán hơn do về mặt tâm lý, người Việt Nam vẫn rất e ngại khi sở hữu căn hộ ngay sát nghĩa trang.</p>\r\n\r\n<p>Tuy nhiên, theo chuyên gia phong thủy Phạm Cương chúng ta không quá đặt nặng vấn đề dự án ngay cạnh nghĩa trang vì vẫn có cách giải quyết những bài toán phần âm. Đơn cử, một trong số giải pháp thường được chủ đầu tư áp dụng đó là trồng hàng rào trúc, là loại cây ngăn cản được âm khí.</p>\r\n\r\n<p>“Những phần nghĩa trang là quy hoạch phần âm và nhà cửa là quy hoạch dương, đôi khi âm dương có sự so sánh, khi dương rất vượng tức nhà cửa quần tụ đông thì dương lấn âm và âm không xâm phạm được nữa, nhưng ngược lại, nếu nhà cửa ít mà ngay cạnh cả một nghĩa trang to đùng thì âm lấn dương lại rất ảnh hưởng”, ông Cương nói.</p>\r\n\r\n<p>Vì thế, theo lời khuyên của vị chuyên gia phong thủy này, nếu chẳng may có căn hộ hướng nhìn ra thẳng nghĩa trang thì ngoài việc trồng cây trúc, gia chủ cần có ban thờ quan thần linh sẽ tốt hơn.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Vietnamnet)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:24', '2017-05-05 15:07:24', 1, 1),
(49, 'Sai lầm khi dùng giấy dán tường khiến cả đời ''thần tài không gõ cửa''', 'sai-lam-khi-dung-giay-dan-tuong-khien-ca-doi-than-tai-khong-go-cua', 'Sai lam khi dung giay dan tuong khien ca doi ''than tai khong go cua''', 'Nếu chỉ nghĩ đơn giản rằng giấy dán tường không liên quan đến phong thủy thì bạn đã sai hoàn toàn.', 'https://img.dothi.net/2017/04/25/Z9BcC3fq/giay-dan-tuong-6259.jpg', 4, '<p>Theo chuyên gia phong thủy, không chỉ có căn nhà, mà những vật dụng trong nhà cũng có ảnh hưởng rất lớn đến tài vận, vượng khí và tiền bạc của gia chủ. Tuy nhiên, vẫn có rất nhiều người cho rằng những vật dụng không mấy quan trọng như giấy dán tường, tranh ảnh, cây cảnh.. sẽ không ảnh hưởng đến phong thủy. Quan niệm này không đúng.</p>\r\n\r\n<p>Giấy dán tường ngoài công dụng trang trí nhà cửa, đảm bảo yếu tố thẩm mỹ hoặc có thể cách âm, thì trong phong thủy, nó còn có thể mang đến năng lượng và tiền tài, bình an cho gia chủ. Nhưng nếu dùng giấy dán tường sai cách, thì tiền tài, an lành cũng theo đó mà "đội nón ra đi".</p>\r\n\r\n<h2>Dùng giấy dán tường có hoa văn sắc nhọn, hình ảnh hung tàn</h2>\r\n\r\n<p>Điều này được coi là tối kỵ trong phong thủy giấy dán tường, bởi nó sẽ tạo cảm giác nguy hiểm và thiếu thân thiện. Chủ nhà và các thành viên trong gia đình sẽ dễ bất đồng quan điểm, hay cãi vã và sinh ra bạo lực trong nhà. Không những vậy, loại giấy dán tường này khi dán trong phòng ngủ sẽ khiến chủ nhân ngủ không sâu, dễ mộng mị, mất ngủ.</p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="giấy dán tường " src="http://img.dothi.net/2017/04/25/Z9BcC3fq/giay-dan-tuong-6259.jpg" style="height:327px; width:500px" title="Nên chọn loại giấy dán tường có họa tiết và màu sắc phù hợp không gian nhà cũng như vận mệnh gia chủ. (Ảnh minh họa)"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Nên chọn loại giấy dán tường có họa tiết và màu sắc phù hợp không gian nhà cũng như vận mệnh gia chủ. (Ảnh minh họa)</em></td>\r\n		</tr>\n</tbody></table>\n<p>Bởi vậy khi lựa chọn giấy dán tường, cần đặc biệt chú ý đến họa tiết, màu sắc cho phù hợp. Nếu bạn thực sự muốn sử dụng họa tiết theo hình, thì nên chọn cho mình những bức tranh phong cảnh thiên nhiên hài hòa nhẹ nhàng, sẽ làm cho không gian trong nhà trở nên đầm ấm hơn.</p>\r\n\r\n<h2>Dùng giấy dán tường rách</h2>\r\n\r\n<p>Giấy dán tường sau nhiều năm sử dụng thì sớm muộn cũng sẽ rách và bong ra. Điều này theo phong thủy là rất xấu, bởi nếu giấy dán tường không khít, lệch, có khe hở hoặc rách sẽ khiến từ trường quanh nhà hỗn loạn, gia vận theo đó mà ngày càng đi xuống, nhất là những gia đình có thờ Thần Phật. </p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="giấy dán tường" src="http://img.dothi.net/2017/04/25/Z9BcC3fq/giay-dan-tuong-2-2c2a.jpg" style="height:375px; width:500px" title="Giấy dán tường không khít, lệch, có khe hở hoặc rách sẽ khiến từ trường quanh nhà hỗn loạn, gia vận theo đó mà ngày càng đi xuống. (Ảnh minh họa)"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Giấy dán tường không khít, lệch, có khe hở hoặc rách sẽ khiến từ trường quanh nhà hỗn loạn, gia vận theo đó mà ngày càng đi xuống. (Ảnh minh họa)</em></td>\r\n		</tr>\n</tbody></table>\n<p>Để tránh được việc này, nên chú ý đến việc sử dụng và gìn giữ giấy dán tường sao cho hợp lý. Không nên kê đồ đạc tiếp xúc trực tiếp với giấy dán tường, nên để cách 1-2 cm hoặc có miếng lót khi tiếp xúc. Tránh các vật sắc nhọn va đập mạnh gây trầy xước bề mặt giấy dán tường.</p>\r\n\r\n<p>Không để mực bút bi dính lên bề mặt giấy dán tường vì rất khó làm sạch. Xử lý vết bẩn bám trên tường nên sử dụng khăn tẩm xà bông lau sơ rồi dùng khăn sạch lau lại một lần nữa.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Khám phá)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:25', '2017-05-05 15:07:25', 1, 1),
(50, 'Gia đình có êm ấm, giàu có hay không đều phụ thuộc vào vị trí này của ngôi nhà', 'gia-dinh-co-em-am-giau-co-hay-khong-deu-phu-thuoc-vao-vi-tri-nay-cua-ngoi-nha', 'Gia dinh co em am, giau co hay khong deu phu thuoc vao vi tri nay cua ngoi nha', 'Thái cực (tức là vị trí trung tâm ngôi nhà) sẽ ít nhiều quyết định sự phú quý, ấm êm cho mỗi thành viên sống trong ngôi nhà.', 'https://img.dothi.net/2017/04/22/Z9BcC3fq/trung-cung-3378.jpg', 4, '<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/22/Z9BcC3fq/trung-cung-3378.jpg" style="height:303px; width:500px"></p>\r\n\r\n<h2>Tầm quan trọng của thái cực ngôi nhà</h2>\r\n\r\n<p>Thường nói, con người có linh hồn, sự vật có thái cực. Vậy thái cực là gì? Theo “Kinh Dịch” mà nói, thái cực tức là “có”, là điểm bắt đầu, là khởi điểm, là mọi nguồn cội của lý, khí, số, tượng. Thái cực có tầm quan trọng tương đương không kém với linh hồn của con người.</p>\r\n\r\n<p>Thái cực trong nhà ở trên thực tế chính là trung tâm ngôi nhà, trong phong thủy người ta còn gọi là “huyệt nhãn”. Đây có thể nói là điểm kết tụ sinh khí của cả ngôi nhà, đại diện cho linh hồn của nhà ở. Vì ý nghĩa này, thái cực ngôi nhà được xem là vị trí vô cùng tôn quý.</p>\r\n\r\n<p>Nếu lấy ngôi nhà ví như cơ thể con người thì vị trí trung ương cũng giống như trái tim của chúng ta, là một cơ quan quan trọng nhất trong cơ thể. Vì vậy, thiết kế trung tâm nhà ở càng đòi hỏi phải thận trọng và chăm chút hơn bất cứ không gian nào.</p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/22/Z9BcC3fq/trung-cung-2-252d.jpg" style="height:333px; width:500px"></p>\r\n\r\n<h2>Những ảnh hưởng bất lợi khi ngôi nhà thiếu vị trí trung tâm</h2>\r\n\r\n<h3>Gia đình thiếu “chủ tâm cốt”</h3>\r\n\r\n<p>Biểu hiện đầu tiên của một ngôi nhà bị gọi là thiếu “chủ tâm cốt” chính là gia đình nhìn bề ngoài trông có vẻ phồn hoa nhưng lại thiếu sự gắn kết và khó vững bền. Các thành viên trong nhà thường không có chung mục tiêu và dễ rời rạc, mỗi người một cách sống và chí hướng riêng, thậm chí thường xảy ra xung đột, bất hòa, mạnh ai nấy làm điều mình thích. Nói chung, khi ngôi nhà thiếu vị trí trung tâm thì cũng đồng nghĩa gia đình không có người đảm nhận vai trò và gánh vác việc lớn chung của cả nhà.</p>\r\n\r\n<h3>Gia đình bất hòa về mọi mặt</h3>\r\n\r\n<p>Trung tâm nhà ở đảm nhận vai trò vận chuyển, điều tiết và phân phối năng lượng ở mọi phương hướng đối với ngôi nhà. Vì thế, nếu nhà của bạn không có nơi gọi là trung tâm thì năng lượng các hướng tự nhiên sẽ tản phát riêng rẽ, không thể thống nhất và hài hòa.</p>\r\n\r\n<p>Ảnh hưởng của kiểu nhà ở này thường khiến các thành viên trong nhà mỗi người đều có xu hướng “tự tung tự tác”, không nghĩ đến người khác, dễ sinh lòng ích kỷ, chỉ biết lợi ích cá nhân và thiếu tính hòa hợp, gắn bó. Về lâu dài, gia đình sẽ đối mặt với nguy cơ mâu thuẫn và xung đột ngày càng gay gắt, không thể hòa giải, có thể dẫn đến cục diện tan vỡ đáng tiếc.</p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/22/Z9BcC3fq/trung-cung-3-8272.jpg" style="height:333px; width:500px"></p>\r\n\r\n<h3>Tai họa nhiều hơn</h3>\r\n\r\n<p>Khi thiếu vị trí trung tâm hoặc phạm kiêng kị trong phong thủy, các thành viên trong gia đình sẽ thường gặp chuyện không mong muốn, tai họa nhiều và có tính nghiêm trọng hơn bình thường.</p>\r\n\r\n<p>Đặc biệt là người đàn ông trong gia đình còn dễ sinh nhiều bệnh tật, hoặc sự nghiệp nhiều trắc trở, dễ thất bại, bất đắc chí. Đồng thời, người nam trong nhà cũng trở nên thiếu đi uy nghiêm cần thiết, không đủ bản lĩnh làm chỗ dựa chính cho cả gia đình.</p>\r\n\r\n<h3>Gia phong dễ bất chính</h3>\r\n\r\n<p>Ngôi nhà không có trung tâm cũng giống như không có điểm then chốt đúng nghĩa. Nội bộ trong nhà thường xảy ra tình trạng không có tôn ti, trật tự, cuộc sống mỗi người vô kỷ luật và không có trách nhiệm với nhau.</p>\r\n\r\n<h2>Những nguyên tắc cần nhớ để ngôi nhà có thái cực tốt</h2>\r\n\r\n<h3>Thái cực ngôi nhà không thể đặt vật nặng</h3>\r\n\r\n<p>Các vật thể cồng kềnh, nặng nề nếu đặt trong nhà ở thì hơn phân nửa trong số chúng đều sẽ ít nhiều ảnh hưởng đến phong thủy ngôi nhà. Đặc biệt là khi vị trí trung tâm có vật nặng sẽ dễ làm “nghẽn” mất “huyệt nhãn”, không khí trong nhà khó lưu thông, từ trường bị hỗn loạn, cản trở sinh khí và vượng khí phát huy hiệu ứng tích cực, thậm chí sinh khí còn có thể biến thành thoái khí, tử khí, rất bất lợi cho cuộc sống gia đình.</p>\r\n\r\n<p>Nếu các vật như bộ ghế sô pha, tủ sách, bàn lớn, tủ tivi v.v… bố trí ngay thái cực thì càng nên thận trọng, tốt nhất là nên di chuyển chúng sang một nơi khác thích hợp hơn.</p>\r\n\r\n<p style="text-align: center;"> </p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/22/Z9BcC3fq/trung-cung-4-6cca.jpg"></p>\r\n\r\n<h3>Thái cực ngôi nhà không nên thiết kế cầu thang</h3>\r\n\r\n<p>Cầu thang là lối đi thường xuyên có nhiều người lên xuống, nếu đặt ngay vị trí trung tâm ngôi nhà sẽ làm “huyên náo” khu vực tôn nghiêm này, dễ khiến người trong nhà sinh ra cảm giác bị đè nén, ức chế, tinh thần dễ kích động, gia đình thiếu sự hài hòa, êm ấm.</p>\r\n\r\n<h3>Thái cực ngôi nhà không làm nhà bếp, toilet hay phòng lưu trữ</h3>\r\n\r\n<p>Nhà bếp, nhà vệ sinh thường là không gian động, có nhiều lửa, nước sẽ làm mất đi từ trường tĩnh của thái cực. Ngoài ra, nhà vệ sinh hay phòng cất đồ đạc thường nhiều bụi bẩn, uế khí, không thích hợp thiết kế ở ngay trung tâm ngôi nhà. Nếu phạm kiêng kị này, các thành viên thường dễ sinh bệnh và vận thế kém.</p>\r\n\r\n<h3>Thái cực ngôi nhà không nên thiết kế giếng trời</h3>\r\n\r\n<p>Nhiều người vì muốn không gian sáng sủa và tăng vẻ thẩm mỹ nên thường thiết kế giếng trời ngay trung tâm ngôi nhà. Lỗi phong thủy này có thể khiến cho năng lượng của “huyệt nhãn” bị thất thoát đi hết, ảnh hưởng lớn đến sinh khí bên trong ngôi nhà, làm cho vận thế gia đình suy yếu.</p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/22/Z9BcC3fq/trung-cung-5-e1ff.jpg" style="height:333px; width:500px"></p>\r\n\r\n<h3>Thái cực ngôi nhà không nên để trống</h3>\r\n\r\n<p>Vấn đề này vừa lãng phí không gian tốt, vừa khiến cho các thành viên trong gia đình không có cơ hội “thừa hưởng” lợi ích từ thái cực. Tình trạng này biểu trưng cho sự nghiệp của gia chủ không được xã hội công nhận, trong công việc không được cấp trên chiếu cố cũng không được cấp dưới tôn trọng.</p>\r\n\r\n<p>Thái cực ngôi nhà thường là nơi lý tưởng để thiết kế phòng khách. Không gian này thường là nơi mọi người quay quần, trò chuyện, sẻ chia, thư giãn cùng nhau. Những năng lượng tích cực từ vị trí trung tâm sẽ được phát huy tác dụng ở mỗi một thành viên.</p>\r\n\r\n<h3>Tốt nhất nên tránh nhà kiểu “L” để không lãng phí thái cực</h3>\r\n\r\n<p>Thông thường những ngôi nhà xây dựng theo hình chữ “L” thì trung tâm dễ lộ ra ngoài, cũng tương tự với việc thái cực bị trống rỗng. Thiết kế này vừa lãng phí không gian, vừa gây mất cân bằng năng lượng cho cả ngôi nhà, dẫn đến nhiều ảnh hưởng bất lợi cho gia chủ.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Em đẹp)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:25', '2017-05-05 15:07:25', 1, 1),
(51, 'Bỏ ngay những vật "đại kỵ" trong phòng ngủ ra ngoài kẻo hối hận không kịp', 'bo-ngay-nhung-vat-dai-ky-trong-phong-ngu-ra-ngoai-keo-hoi-han-khong-kip', 'Bo ngay nhung vat "dai ky" trong phong ngu ra ngoai keo hoi han khong kip', 'Để những đồ vật "đại kỵ" trong phòng ngủ như thế này, không sớm thì muộn, sức khỏe và tài vận của gia đình bạn sẽ bị ảnh hưởng.', 'https://img.dothi.net/2017/04/21/Z9BcC3fq/be-ca-hop-phong-thuy-a317.jpg', 4, '<p>Phòng ngủ là nơi nghỉ ngơi sau những giờ làm việc mệt mỏi, căng thẳng, nếu muốn có giấc ngủ ngon, cuộc sống gia đình hạnh phúc thì tuyệt đối không nên để những <em>vật đại kỵ trong phòng ngủ</em> như thế này.</p>\r\n\r\n<h2>1. Di ảnh người quá cố</h2>\r\n\r\n<p>Tuyệt đối không để di ảnh người quá cố trong phòng ngủ, cho dù đó là người thân yêu trong gia đình bạn. Di ảnh của người quá cố nên được đặt ở những nơi an tịnh, sạch sẽ và thiêng liêng như phòng khách hay nơi nào tiện cho việc cúng bái. Việc đặt di ảnh người đã mất trong phòng ngủ dễ gây mộng mị, bóng đè, không tốt cho giấc ngủ và sức khỏe.</p>\r\n\r\n<h2>2. Dao kiếm</h2>\r\n\r\n<p style="text-align:center"><img alt="Theo phong thủy" src="http://img.dothi.net/2017/04/21/0Ln61R5F/20170421150155963646-d856.jpg" style="height:296px; width:500px" title="Theo phong thủy, dao kiếm là những vật đại kỵ trong phòng ngủ vì sát khí rất nặng, dễ gặp áp lực công việc, đau đầu, bất an, thậm chí bị thương… cho người trong phòng. (Ảnh minh họa)"><br><em>Theo phong thủy, dao kiếm là những vật đại kỵ trong phòng ngủ vì sát khí<br>\r\nrất nặng, dễ gặp áp lực công việc, đau đầu, bất an, thậm chí bị thương…<br>\r\ncho người trong phòng. (Ảnh minh họa)</em></p>\r\n\r\n<p>Nhiều người có sở thích sưu tầm dao, kiếm và coi đó là một thú vui trong cuộc sống, thậm chí trưng bày chúng trong phòng ngủ. Tuy nhiên theo phong thủy đó là những <em>vật đại kỵ đặt trong phòng ngủ</em> vì sát khí rất nặng, dễ gặp áp lực công việc, đau đầu, bất an, thậm chí bị thương… cho người trong phòng ngủ.</p>\r\n\r\n<h2>3. Di vật hoặc cổ vật</h2>\r\n\r\n<p>Nhiều nhà lựa chọn cổ vật trang trí trong nhà mà không chú ý rằng di vật hay cổ vật là những đồ vật rất quý báu và có giá trị, thuộc về quá khứ, không thích hợp để trong phòng ngủ. Các nhà phong thủy cho rằng những món đồ thuộc về quá khứ đó cất giữ trong phòng ngủ thường khiến tâm trí bất an, hay mơ kỳ quái, mất tinh thần làm việc…</p>\r\n\r\n<h2>4. Gương soi</h2>\r\n\r\n<p>Gương là vật dụng phổ biến và cần thiết trong mỗi gia đình, tuy nhiên bạn hãy chọn vị trí đặt gương cho hợp lý, nhất là trong phòng ngủ. Nếu bắt buộc phải đặt gương soi trong phòng ngủ, tuyệt đối kiêng kỵ đặt gương đối diện với giường ngủ hoặc cửa ra vào gây phản chiếu, ảnh hưởng đến hạnh phúc gia đình.</p>\r\n\r\n<p style="text-align:center"><img alt="phong thủy" src="http://img.dothi.net/2017/04/21/0Ln61R5F/20170421150155963643-7ed1.jpg" style="height:375px; width:500px" title="Nếu bắt buộc phải đặt gương soi trong phòng ngủ, tuyệt đối kiêng kỵ đặt gương đối diện với giường ngủ hoặc cửa ra vào gây phản chiếu, ảnh hưởng đến hạnh phúc gia đình. (Ảnh minh họa)"><br><em>Nếu bắt buộc phải đặt gương soi trong phòng ngủ, tuyệt đối kiêng kỵ đặt<br>\r\ngương đối diện với giường ngủ hoặc cửa ra vào gây phản chiếu, ảnh hưởng<br>\r\nđến hạnh phúc gia đình. (Ảnh minh họa)</em></p>\r\n\r\n<p>Hơn nữa, việc nằm ngủ đối diện với gương sẽ làm bạn dễ rơi vào trạng thái mê man, ngủ không sâu, không đảm bảo sức khỏe, khó tập trung suy nghĩ về mọi chuyện.</p>\r\n\r\n<h2>5. Tượng thần, Phật</h2>\r\n\r\n<p>Trong phong thủy, việc đặt tượng thần, Phật trong phòng ngủ là “cất giấu” may mắn và tài lộc, khiến công danh sự nghiệp sẽ luôn ở mức trung bình và hay gặp họa. Còn về góc độ tín ngưỡng, đây là điều tuyệt đối cấm kỵ.</p>\r\n\r\n<h2>6. Bể cá</h2>\r\n\r\n<p style="text-align:center"><img alt="phong thủy nhà ở" src="http://img.dothi.net/2017/04/21/0Ln61R5F/20170421150155963610-c68a.jpg" style="height:305px; width:500px" title="Bể cá chỉ phù hợp khi đặt trang trí trong phòng khách hoặc phòng làm việc. (Ảnh minh họa)"><br><em>Bể cá chỉ phù hợp khi đặt trang trí trong phòng khách hoặc phòng làm việc.<br>\r\n(Ảnh minh họa)</em></p>\r\n\r\n<p>Bể cá để trong phòng khách hoặc phòng làm việc rất tốt cho phong thủy của gia chủ, nhưng nếu trong phòng ngủ của bạn đang có một chiếc bể cá thì hãy nhanh chóng di chuyển nó ra ngoài. Đặt bể cá, bồn rửa mặt, treo tranh vẽ hồ nước, sông, suối, biển… (hành Thủy) trong phòng ngủ dễ khiến vợ chồng con cái gặp hiểu lầm, bất hòa, ngủ không an giấc.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Khám phá)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:25', '2017-05-05 15:07:25', 1, 1),
(52, 'Sắp xếp đồ đạc theo phong thủy để ''hút'' may mắn', 'sap-xep-do-dac-theo-phong-thuy-de-hut-may-man', 'Sap xep do dac theo phong thuy de ''hut'' may man', 'Theo thuật phong thủy, việc sắp xếp bố trí đồ đạc hợp lý và đúng cách chính là chìa khóa của thành công trong việc điều khiển nguồn năng lượng trong nhà, đem lại may mắn cho mọi người trong nhà.', 'https://img.dothi.net/2017/04/21/Z9BcC3fq/sap-xep-nha-va-a848.jpg', 4, '<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="bài trí nhà cửa" src="http://img.dothi.net/2017/04/21/Z9BcC3fq/sap-xep-nha-va-a848.jpg" style="height:316px; width:500px" title="Ảnh minh họa. Nguồn: Internet"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Ảnh minh họa. Nguồn: Internet</em></td>\r\n		</tr>\n</tbody></table>\n<p>Sắp xếp đồ đạc theo phong thủy là nhằm mục đích để đồ đạc không phải là vật cản, không ngăn chặn cản trở hay bóp méo các luồng khí, tạo điều kiện tốt nhất để khí có thể lưu thông luân chuyển trong nhà một cách dễ dàng.</p>\r\n\r\n<p>Bạn cần phải lưu ý không nhồi nhét quá nhiều đồ đạc, phụ kiện vào một không gian chật hẹp. Năng lượng cần phải được tự do di chuyển bên dưới đồ đạc trong phòng, vì thế bạn cần phải kê cao đồ đạc lên một chút tránh để chúng sát xuống sàn nhà vì như thế sẽ ngăn chặn sự lưu thông khí trong nhà.</p>\r\n\r\n<p>Bàn ghế trong phòng khách nên được đặt ở vị trí đối diện với cửa chính, nếu vì điều kiện không cho phép để có thể sắp đặt theo cách này bạn có thể khắc hục bằng cách treo một tấm gương trên tường sao cho có thể dễ dàng quan sát cửa đi qua gương. Mọi người sẽ có cảm giác an toàn hơn khi đồ đạc được đặt trong tầm mắt của họ khi họ vừa bước chân vào phòng. Đồ đạc nên được đặt cách xa nhau một khoảng cách là 0,91m.</p>\r\n\r\n<p>Các tác phẩm nghệ thuật treo tường nên được đặt vừa với tầm mắt và phải cân nhắc đến “bát quái đồ” khi sắp đặt các phụ kiện xung quanh đồ đạc. Việc sắp xếp đồ đạc phải bao hàm được những yếu tố khiến không gian trở nên gần gũi, thân thiện hơn, tạo điều kiện thuận lợi và cảm giác dễ chịu thoải mái cho tất cả mọi người. Một chút không gian trống sẽ là điều kiện thuận lợi cho sự di chuyển của năng lượng.</p>\r\n\r\n<p>Theo phong thủy thì phòng khách chính là trái tim của cả gia đình vì thế việc sắp đặt đồ đạc ở đây cần phải được đặc biệt chú trọng để tạo ra một không gian thư thái và yên bình.</p>\r\n\r\n<p>Phòng khách không nên có quá nhiều đồ dùng, đồ đạc nên được làm từ những chất liệu mềm, các cạnh nên được làm tù hoặc có dạng tròn. Bố trí cây xanh xung quanh các đồ vật để thu hút vượng khí. Đối với những căn phòng hẹp và dài thì nên sử dụng cửa phòng được chạm khắc những họa tiết tròn hoặc lục giác.</p>\r\n\r\n<p>Đặt những đồ vật có kích thước lớn, nặng ở góc phòng nhưng không nên đặt áp sát vào tường, không đặt đồ đối diện với bức tường trống bởi điều đó sẽ gây cho người sử dụng cảm giác bồn chồn, bất an.</p>\r\n\r\n<p>Đối với phòng ăn thì bàn ăn chính là trung tâm của cả căn phòng, đừng bày quá nhiều đồ đạc không phục vụ cho bữa ăn như thư từ, hóa đơn… lên bàn ăn.</p>\r\n\r\n<p>Theo quan niệm thì bàn ăn sẽ nói lên được đời sống vật chất của gia chủ, khi mà bàn ăn bừa bộn, bụi bặm thì tài chính của bạn sẽ gặp vấn đề. Bàn ăn nên có dạng tròn hoặc hình ô van và có kích thước phù hợp với diện tích phòng ăn, được thiết kế chắc chắn vì nếu bàn ăn bị khập khiễng, rung rinh khi sử dụng là điều rất kỵ.</p>\r\n\r\n<p>Những chiếc ghế xung quanh bàn ăn sẽ tạo sự cân bằng năng lượng trong phòng, một chiếc bàn ăn được làm từ chất liệu gỗ tốt sẽ phản ánh sự thịnh vượng và sung túc của gia chủ.</p>\r\n\r\n<p>Đồ đạc không phá vỡ hay tạo ra nguồn năng lượng có ích cho nhà bạn nhưng theo phong thủy thì việc sắp xếp đồ đạc theo đúng những nguyên tắc cơ bản sẽ khiến bạn cảm thấy thoải mái hơn trong ngôi nhà thân yêu của mình.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Lao động)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:07:26', '2017-05-05 15:07:26', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(53, 'Nhà đất chưa có sổ đỏ có được thế chấp?', 'nha-dat-chua-co-so-do-co-duoc-the-chap', 'Nha dat chua co so do co duoc the chap', 'Năm 2007, ông Nguyễn Đức Tuyền (tỉnh Thái Bình) đã được UBND huyện Thái Thụy cấp Giấy chứng nhận quyền sử dụng đất ở cho mảnh đất diện tích 125m2. Nay trên đất đã có nhà ở 2 tầng nhưng chưa có Giấy chứng nhận quyền sở hữu cho căn nhà trên. Ông Tuyền hỏi, ông có thể thế chấp nhà đất trên cho ngân hàng không?', 'https://img.dothi.net/2017/04/26/Z9BcC3fq/sd1-1ce5.jpg', 5, '<div class="photo" style="text-align: center;">\n<img alt="Nhà đất chưa có sổ đỏ có được thế chấp?" src="http://img.dothi.net/2017/04/26/Z9BcC3fq/sd1-1ce5.jpg" style="width:600px" title="Nhà đất chưa có sổ đỏ có được thế chấp?"><br><em>Ảnh minh họa</em>\n</div>\r\n\r\n<p><em>Về vấn đề này, Ngân hàng Nhà nước Việt Nam có ý kiến như sau:</em></p>\r\n\r\n<p>Theo quy định tại Điều 179 Luật Đất đai 2013: “1. Hộ gia đình, cá nhân sử dụng đất nông nghiệp được Nhà nước giao trong hạn mức; đất được Nhà nước giao có thu tiền sử dụng đất, cho thuê đất trả tiền thuê đất một lần cho cả thời gian thuê, được Nhà nước công nhận quyền sử dụng đất; đất nhận chuyển đổi, nhận chuyển nhượng, nhận tặng cho, nhận thừa kế thì có các quyền và nghĩa vụ sau đây:...</p>\r\n\r\n<p>g) Thế chấp quyền sử dụng đất tại tổ chức tín dụng được phép hoạt động tại Việt Nam, tại tổ chức kinh tế khác hoặc cá nhân theo quy định của pháp luật”.</p>\r\n\r\n<p>Theo quy định tại Điều 325 Bộ luật Dân sự 2015 về thế chấp quyền sử dụng đất mà không thế chấp tài sản gắn liền với đất:</p>\r\n\r\n<p>Trường hợp thế chấp quyền sử dụng đất mà không thế chấp tài sản gắn liền với đất và người sử dụng đất đồng thời là chủ sở hữu tài sản gắn liền với đất thì tài sản được xử lý bao gồm cả tài sản gắn liền với đất, trừ trường hợp có thỏa thuận khác.</p>\r\n\r\n<p>Trường hợp thế chấp quyền sử dụng đất mà người sử dụng đất không đồng thời là chủ sở hữu tài sản gắn liền với đất thì khi xử lý quyền sử dụng đất, chủ sở hữu tài sản gắn liền với đất được tiếp tục sử dụng đất trong phạm vi quyền, nghĩa vụ của mình; quyền và nghĩa vụ của bên thế chấp trong mối quan hệ với chủ sở hữu tài sản gắn liền với đất được chuyển giao cho người nhận chuyển quyền sử dụng đất, trừ trường hợp có thỏa thuận khác.</p>\r\n\r\n<p>Thế chấp nhà ở khi chưa có giấy chứng nhận</p>\r\n\r\n<p>Điểm a, Khoản 1; Điểm a, Khoản 2 Điều 118 Luật Nhà ở 2014 quy định điều kiện của nhà ở tham gia giao dịch như sau:</p>\r\n\r\n<p>"1. Giao dịch về mua bán, cho thuê mua, tặng cho, đổi, thế chấp, góp vốn bằng nhà ở thì nhà ở phải có đủ điều kiện sau đây:</p>\r\n\r\n<p>a) Có Giấy chứng nhận theo quy định của pháp luật, trừ trường hợp quy định tại khoản 2 Điều này;"</p>\r\n\r\n<p>"2. Giao dịch về nhà ở sau đây thì nhà ở không bắt buộc phải có Giấy chứng nhận:</p>\r\n\r\n<p>a) Mua bán, thế chấp nhà ở hình thành trong tương lai".</p>\r\n\r\n<p>Khoản 19 Điều 3 Luật Nhà ở quy định: “19. Nhà ở hình thành trong tương lai là nhà ở đang trong quá trình đầu tư xây dựng và chưa được nghiệm thu đưa vào sử dụng”.</p>\r\n\r\n<p>Như vậy, Luật Nhà ở đã quy định rõ việc thế chấp nhà ở phải có giấy chứng nhận quyền sở hữu, trừ trường hợp quy định tại Khoản 2, Điều 118 Luật Nhà ở 2014 đã nêu trên.</p>\r\n\r\n<p>Căn cứ quy định pháp luật nêu trên, trường hợp nhà ở của ông Nguyễn Đức Tuyền chưa có Giấy chứng nhận quyền sở hữu nhà ở muốn được thế chấp tại các tổ chức tín dụng thì phải thuộc trường hợp thế chấp nhà ở hình thành trong tương lai theo quy định của pháp luật về nhà ở (Điểm a, Khoản 2, Điều 118 Luật Nhà ở 2014).</p>\r\n\r\n<p>Do vậy, nếu nhà của ông Tuyền là nhà đã hoàn thành, đang sử dụng, chưa có Giấy chứng nhận quyền sở hữu thì không thuộc trường hợp được thế chấp nhà ở; không thuộc trường hợp được thế chấp nhà ở hình thành trong tương lai.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Chinhphu.vn)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:08', '2017-05-05 15:08:08', 1, 1),
(54, 'Đất không giấy tờ có được cấp sổ đỏ?', 'dat-khong-giay-to-co-duoc-cap-so-do', 'Dat khong giay to co duoc cap so do', 'Gia đình ông Nguyễn Tuấn Anh (Hải Dương) sinh sống trên 1 thửa đất từ trước năm 1980, nhưng đến nay đề nghị cấp sổ đỏ thì không được cấp do đất không có giấy tờ. Ông Anh hỏi, thửa đất gia đình ông đang sinh sống có được cấp sổ đỏ không?', 'https://img.dothi.net/2017/04/26/Z9BcC3fq/sd-0858.jpg', 5, '<div class="photo" style="text-align: center;"><img alt="Đất không giấy tờ có được cấp sổ đỏ?" src="http://img.dothi.net/2017/04/26/Z9BcC3fq/sd-0858.jpg" style="width:600px" title="Đất không giấy tờ có được cấp sổ đỏ?"></div>\r\n\r\n<div class="photo" style="text-align: center;"> </div>\r\n\r\n<div class="photo"><em>Sở Tài nguyên và Môi trường tỉnh Hải Dương trả lời câu hỏi của ông Anh như sau:</em></div>\r\n\r\n<p>Trường hợp ông Anh hỏi do không cung cấp các thông tin chi tiết, vì vậy Sở Tài nguyên và Môi trường không có cơ sở để trả lời cụ thể. Tuy nhiên, tại Khoản 2, Điều 101 Luật Đất đai năm 2013 quy định:</p>\r\n\r\n<p>“Hộ gia đình, cá nhân đang sử dụng đất không có các giấy tờ quy định tại Điều 100 Luật này nhưng đất đã được sử dụng ổn định từ trước ngày 01/7/2004 và không vi phạm pháp luật Đất đai, nay được UBND cấp xã, phường xác nhận là đất không có tranh chấp, phù hợp với quy hoạch sử dụng đất, quy hoạch chi tiết xây dựng đô thị, quy hoạch xây dựng điểm dân cư nông thôn đã được cơ quan nhà nước có thẩm quyền phê duyệt đối với nơi đã có quy hoạch thì được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất”.</p>\r\n\r\n<p>Như vậy, trường hợp gia đình ông đã sử dụng đất trước năm 1980 nhưng không có giấy tờ về quyền sử dụng đất theo quy định tại Điều 100 Luật Đất đai năm 2013, Điều 18 Nghị định số 43/2014/NĐ-CP ngày 15/5/2014 của Chính phủ quy định chi tiết thi hành một số điều của Luật Đất đai mà không vi phạm pháp luật đất đai, được UBND phường xác nhận là đất không có tranh chấp, phù hợp với quy hoạch sử dụng đất, quy hoạch chi tiết xây dựng đô thị, quy hoạch xây dựng điểm dân cư nông thôn đã được cấp có thẩm quyền phê duyệt thì được cấp giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản gắn liền với đất.</p>\r\n\r\n<p>Việc cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất theo quy định tại Điều 20 Nghị định số 43/2014/NĐ-CP ngày 15/5/2014 của Chính phủ.</p>\r\n\r\n<p>Trường hợp việc sử dụng đất của gia đình ở có vi phạm pháp luật đất đai thì được xử lý và cấp giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản gắn liền với đất theo quy định tại Điều 22 Nghị định số 43/2014/NĐ-CP ngày 15/5/2014 của Chính phủ.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Chinhphu.vn)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:08', '2017-05-05 15:08:08', 1, 1),
(55, 'Có được quyền yêu cầu định giá lại tài sản tranh chấp?', 'co-duoc-quyen-yeu-cau-dinh-gia-lai-tai-san-tranh-chap', 'Co duoc quyen yeu cau dinh gia lai tai san tranh chap', 'Tôi là bị đơn trong một vụ kiện tranh chấp đất đai. Tôi và phía nguyên đơn có thỏa thuận một công ty định giá mảnh đất tranh chấp.', 'https://img.dothi.net/2017/04/25/Z9BcC3fq/tc-ea97.jpg', 5, '<p>Và mảnh đất trên được định giá là 900 triệu đồng. Tuy nhiên, theo tôi được biết giá giao dịch trên thực tế của mảnh đất trên cao hơn rất nhiều, lên đến 1 tỉ 300 triệu đồng. Như vậy, tôi có thể yêu cầu định giá lại không?</p>\r\n\r\n<p><em>Nguyễn Thanh An (thanhan.phuoc@...)</em></p>\r\n\r\n<p style="text-align: center;"><img alt="tranh chấp đất đai" src="http://img.dothi.net/2017/04/25/Z9BcC3fq/tc-ea97.jpg" style="width:600px" title="Có được quyền yêu cầu định giá lại tài sản tranh chấp?"><br><em>Có được quyền yêu cầu định giá lại tài sản tranh chấp?<br>\r\n(Ảnh minh họa, nguồn: Internet)</em></p>\r\n\r\n<p>Luật sư NGUYỄN THỊ DỊU HIỀN, Đoàn Luật sư Tp.HCM, trả lời: Tại khoản 5 Điều 104 Bộ luật Tố tụng dân sự quy định cho phép các đương sự có quyền thỏa thuận lựa chọn tổ chức thẩm định giá tài sản để thực hiện việc thẩm định giá tài sản và cung cấp kết quả thẩm định giá cho tòa án. Việc thẩm định giá tài sản được thực hiện theo quy định của pháp luật về thẩm định giá tài sản.</p>\r\n\r\n<p>Trong trường hợp có căn cứ cho rằng kết quả định giá lần đầu không chính xác hoặc không phù hợp với giá thị trường nơi có tài sản định giá tại thời điểm giải quyết vụ án dân sự thì đương sự có quyền yêu cầu tòa án ra quyết định định giá lại tài sản tranh chấp.</p>\r\n\r\n<p>Như vậy trong trường hợp của bạn, nếu có đủ căn cứ cho rằng kết quả định giá lần đầu không chính xác hoặc không phù hợp với giá thị trường nơi có tài sản định giá tại thời điểm giải quyết vụ án thì bạn có quyền yêu cầu tòa án ra quyết định định giá lại.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Pháp luật Tp.HCM Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:09', '2017-05-05 15:08:09', 1, 1),
(56, 'Có bắt buộc ký, đóng dấu bản vẽ trước khi thi công?', 'co-bat-buoc-ky-dong-dau-ban-ve-truoc-khi-thi-cong', 'Co bat buoc ky, dong dau ban ve truoc khi thi cong', 'Ông Dương Công Hiếu (tỉnh Lạng Sơn) hỏi: Bản vẽ thiết kế trước khi phát hành để thi công có cần ký và đóng dấu phê duyệt không? Nếu cần thì thực hiện theo hướng dẫn nào?', 'https://img.dothi.net/2017/04/24/Z9BcC3fq/tc-cc86.jpg', 5, '<div class="photo" style="text-align: center;">\n<img src="http://img.dothi.net/2017/04/24/Z9BcC3fq/tc-cc86.jpg" style="width:600px"><br><em>Ảnh minh họa</em>\n</div>\r\n\r\n<h2><strong>Bộ Xây dựng trả lời vấn đề này như sau:</strong></h2>\r\n\r\n<p>Bản vẽ thiết kế phát hành để triển khai thi công xây dựng công trình đã được đóng dấu thẩm định của cơ quan có thẩm quyền và đồng thời bản vẽ thiết kế này là một bộ phận không tách rời của hợp đồng thi công xây dựng công trình.</p>\r\n\r\n<p>Bản vẽ trước khi phát hành để đề nghị thẩm định thiết kế đã quy định việc chủ đầu tư phải ký và đóng dấu.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Chinhphu.vn)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:09', '2017-05-05 15:08:09', 1, 1),
(57, 'Đất chưa có sổ đỏ không được chuyển nhượng', 'dat-chua-co-so-do-khong-duoc-chuyen-nhuong', 'Dat chua co so do khong duoc chuyen nhuong', 'Hỏi: - Năm 1985, tôi có mua 1.625m2 đất vườn. Việc mua bán chỉ có giấy tờ tay nhưng có 4 chủ đất xung quanh làm chứng, ký tên vào giấy mua bán. Tôi sử dụng thửa đất từ đó đến nay, không có tranh chấp với ai. Xin hỏi, tôi có quyền chuyển nhượng đất đó hay không?', 'https://img.dothi.net/2017/04/21/Z9BcC3fq/cn1-b42c.jpg', 5, '<p><em>Trần Trí Nhân (Bình Chánh, TPHCM)</em></p>\r\n\r\n<p style="text-align: center;"><img src="http://img.dothi.net/2017/04/21/Z9BcC3fq/cn1-b42c.jpg" style="width:500px"><br><em>Ảnh minh họa. Nguồn: Internet</em></p>\r\n\r\n<h2><strong>Trả lời:</strong></h2>\r\n\r\n<p>Khoản 1, Điều 167 Luật Đất đai năm 2013 quy định: Người sử dụng đất được thực hiện các quyền chuyển đổi, chuyển nhượng, cho thuê, cho thuê lại, thừa kế, tặng cho, thế chấp, góp vốn bằng quyền sử dụng đất theo quy định của luật này. Khoản 1, Điều 168 của Luật Đất đai 2013 cũng quy định rõ: “Người sử dụng đất được thực hiện các quyền chuyển nhượng, cho thuê, cho thuê lại, tặng cho, thế chấp, góp vốn quyền sử dụng đất khi có giấy chứng nhận. Đối với trường hợp chuyển đổi quyền sử dụng đất nông nghiệp, người sử dụng đất thực hiện quyền sau khi có quyết định giao đất, cho thuê đất...”.</p>\r\n\r\n<p>Theo trình bày, đất của ông chưa có sổ đỏ nên không thể làm thủ tục chuyển nhượng cho người khác. Theo Điều 100 Luật Đất đai 2013, thửa đất của ông có đủ điều kiện được cấp sổ đỏ. Ông cần tiến hành thủ tục xin cấp sổ đỏ, khi có sổ đỏ rồi mới được tiến hành làm thủ tục sang nhượng đất cho người khác.</p>\r\n\r\n<p style="text-align: right;"><strong>Luật gia Nguyễn Văn Khôi</strong></p>\r\n    \r\n        <em>\r\n            <em>(Theo Sài Gòn Đầu tư Tài chính Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:10', '2017-05-05 15:08:10', 1, 1),
(58, 'Làm gì khi mua đất nhưng thuộc diện quy hoạch?', 'lam-gi-khi-mua-dat-nhung-thuoc-dien-quy-hoach', 'Lam gi khi mua dat nhung thuoc dien quy hoach', 'Anh A có 136m2 đất mua vi bằng và không phải là người đứng tên tổng 2.000m2 đất đó. Tôi có mua miếng đất 68m2 trong 136m2 đó ở Bình Chánh, TP.HCM nhưng khi vi bằng trả tiền xong tôi mới biết 68m2 đó đang nằm trong quy hoạch mở đường nhưng chưa có quyết định thu hồi của nhà nước.', 'https://img.dothi.net/2017/04/21/Z9BcC3fq/md-9722.jpg', 5, '<p>Cho hỏi, tôi có quyền khởi kiện anh A không? Vì:</p>\r\n\r\n<p>- Không cung cấp đủ thông tin, cố tình làm sai lệch hiện trạng vì biết đất đang quy hoạch nhưng che giấu;</p>\r\n\r\n<p>- Bán đất nhưng không phải là người đứng tên QSD đất mục đích kinh doanh lại đang bi quy hoạch;</p>\r\n\r\n<p>- Vi Bằng khi ra Toà sẽ xử vô hiệu hoá giao dịch này, 2 bên trả lại cho nhau tiền và đất, bên A sẽ thua kiện và phải chịu án phí?</p>\r\n\r\n<p><em>doanquangduong.nd@...</em></p>\r\n\r\n<div class="photo" style="text-align: center;">\n<img alt="Làm gì khi mua đất nhưng thuộc diện quy hoạch?" src="http://img.dothi.net/2017/04/21/Z9BcC3fq/md-9722.jpg" style="width:500px" title="Làm gì khi mua đất nhưng thuộc diện quy hoạch?"><br><em>Hình minh họa</em>\n</div>\r\n\r\n<h2><strong>Luật sư Trần Thị Thanh Nga – Công ty luật TNHH Đất Luật trả lời:</strong></h2>\r\n\r\n<p>Theo quy định tại Điều 188 Luật Đất đai năm 2013 thì người sử dụng đất thực hiện quyền chuyển nhượng quyền sử dụng đất khi có các điều kiện sau: có Giấy Chứng Nhận; đất không có tranh chấp; quyền sử dụng đất không bị kê biên để đảm bảo thi hành án; trong thời hạn sử dụng đất.</p>\r\n\r\n<p>Theo thông tin Bạn cung cấp thì Anh A không phải có người đứng tên trên Giấy Chứng Nhận, theo đó hợp đồng mua bán giữa bạn và Anh A sẽ bị vô hiệu do vi phạm điều cấm của luật theo quy định tại Điều 123 Bộ luật Dân sự 2015.</p>\r\n\r\n<p>Bạn có thể chọn giải pháp khởi kiện yêu cầu Tòa án có thẩm quyền tuyên bố hợp đồng mua bán vô hiệu do vi phạm điều cấm và hậu quả pháp lý của giao dịch dân sự vô hiệu là các bên khôi phục lại tình trạng ban đầu, hoàn trả cho nhau những gì đã nhận, bên nào có lỗi gây thiệt hại thì phải bồi thường. Việc xác định bên nào có lỗi và mức độ bồi thường sẽ do Tòa án quyết định.</p>\r\n    \r\n        <em>\r\n            <em>(Theo CafeLand)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:10', '2017-05-05 15:08:10', 1, 1),
(59, 'Các bước thực hiện thủ tục chuyển nhượng căn hộ chung cư', 'cac-buoc-thuc-hien-thu-tuc-chuyen-nhuong-can-ho-chung-cu', 'Cac buoc thuc hien thu tuc chuyen nhuong can ho chung cu', 'Tôi dự định mua căn hộ ở một khu chung cư đã được cấp sổ hồng. Xin hỏi thủ tục chuyển nhượng như thế nào để bảo đảm tính pháp lý và an toàn?', 'https://img.dothi.net/2017/04/21/Z9BcC3fq/cn-005a.jpg', 5, '<div class="photo" style="text-align: center;"><img alt="chuyển nhượng căn hộ chung cư" src="http://img.dothi.net/2017/04/21/Z9BcC3fq/cn-005a.jpg" style="width:500px" title="Các bước thực hiện thủ tục chuyển nhượng căn hộ chung cư"></div>\r\n\r\n<p>Thông thường, một giao dịch chuyển nhượng tương tự sẽ được thực hiện qua các bước sau:</p>\r\n\r\n<h2><strong>Bước 1: Xác minh thông tin</strong></h2>\r\n\r\n<p>Theo quy định của Luật Nhà ở năm 2014, căn hộ dự định mua phải đảm bảo được các điều kiện sau (tóm tắt): đã được cấp giấy chứng nhận quyền sở hữu và đang trong thời hạn sử dụng, không bị tranh chấp, kê biên, thu hồi, có tờ khai trước bạ hợp lệ theo quy định của pháp luật. Tuy nhiên, người mua vẫn có thể liên hệ thêm với Phòng Địa chính, nơi có căn hộ để kiểm tra thêm các thông tin khác nếu thấy cần thiết.</p>\r\n\r\n<p>Người mua cũng nên kiểm tra để bảo đảm người bán là chủ sở hữu thực sự căn hộ hoặc người được chủ sở hữu cho phép, ủy quyền, cũng như có đủ năng lực để thực hiện giao dịch chuyển nhượng theo quy định của pháp luật. Trong quá trình đó, người mua nên kết hợp với việc trực tiếp kiểm tra thực tế căn hộ, các trang thiết bị đi kèm, nếu có.</p>\r\n\r\n<h2><strong>Bước 2: Thỏa thuận sơ bộ và tiến hành đặt cọc</strong></h2>\r\n\r\n<p>Người mua cần thỏa thuận rõ với người bán về các nội dung liên quan như số tiền đặt cọc và thời hạn đặt cọc, các mốc thời gian cần thiết liên quan đến việc thực hiện thủ tục chuyển nhượng, trách nhiệm thanh toán các khoản thuế, phí, quyền và nghĩa vụ liên quan đến việc thực hiện thủ tục chuyển nhượng… Thỏa thuận đặt cọc cần phải được các bên lập thành văn bản và được tổ chức hành nghề công chứng kiểm tra, xác nhận.</p>\r\n\r\n<h2><strong>Bước 3: Ký hợp đồng chuyển nhượng</strong></h2>\r\n\r\n<p>Phù hợp với lịch biểu thời gian đã thoả thuận trong hợp đồng đặt cọc, các bên cùng nhau ra tổ chức hành nghề công chứng để tiến hành ký hợp đồng chuyển nhượng.</p>\r\n\r\n<p>Về nguyên tắc, các bên có thể thỏa thuận về nội dung của hợp đồng với điều kiện phải bảo đảm các nội dung cần thiết theo quy định pháp luật. Tuy nhiên trên thực tế, để công đoạn này diễn ra nhanh chóng, các bên thường sử dụng mẫu soạn sẵn của tổ chức hành nghề công chứng. Tiếp đó, người mua thanh toán số tiền theo thoả thuận trước và người bán nhà giao giấy tờ nhà cho người mua. Các giấy tờ chuẩn bị bao gồm Giấy chứng nhận quyền sở hữu (sổ hồng), tờ khai thuế trước bạ, bản vẽ hiện trạng (nếu có), bản sao chứng minh thư nhân dân (thẻ căn cước) + hộ khẩu của người bán và người mua, Giấy chứng nhận đăng ký kết hôn (nếu đã có gia đình), giấy xác nhận tình trạng hôn nhân.</p>\r\n\r\n<h2><strong>Bước 4: Nghĩa vụ thuế</strong></h2>\r\n\r\n<p>Khi đã hoàn tất hợp đồng và có đủ các loại giấy tờ kể trên, các bên đến chi cục thuế để làm thủ tục khai thuế, sau đó tiến hành nghĩa vụ đóng thuế tại cục thuế.</p>\r\n\r\n<h2><strong>Bước 5: Thay đổi chủ sở hữu</strong></h2>\r\n\r\n<p>Sau khi hoàn thành các nghĩa vụ thuế, các bên nộp hồ sơ đến Phòng Tài nguyên-Môi trường để làm thủ tục đăng bộ thay đổi chủ sở hữu.</p>\r\n\r\n<p style="text-align: right;"><strong>Luật sư Lương Nguyễn Khánh Văn</strong><br><em>(Giám đốc Khối Dịch vụ pháp lý doanh nghiệp, Công ty Luật LP Group)</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Đầu tư Chứng khoán)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:11', '2017-05-05 15:08:11', 1, 1),
(60, 'Quy định bồi thường đối với đất tạm giao', 'quy-dinh-boi-thuong-doi-voi-dat-tam-giao', 'Quy dinh boi thuong doi voi dat tam giao', 'Nhà tôi có mảnh đất được gọi là tạm giao của nhà nước. Hiện tại đang có nhà đầu tư về xây chung cư tại đây, có lấy đất. Khi bồi thường đất, gia đình tôi chỉ nhận được khoản bồi thường về hoa màu và không có bất kì khoản hỗ trợ nào khác nữa.', 'https://img.dothi.net/2017/04/20/Z9BcC3fq/tg1-1edf.jpg', 5, '<p>Luật sư cho tôi hỏi về đất tạm giao và khi lấy đất thì sẽ được hỗ trợ đền bù như thế nào? Xin cảm ơn.</p>\r\n\r\n<p><em>phuongbi211192@...</em></p>\r\n\r\n<p style="text-align: center;"><img alt="đất tạm giao" src="http://img.dothi.net/2017/04/20/Z9BcC3fq/tg1-1edf.jpg" style="width:500px" title="Quy định bồi thường đối với đất tạm giao"></p>\r\n\r\n<h2><strong>Luật sư Trần Thị Thanh Nga - Công ty luật TNHH Đất Luật trả lời:</strong></h2>\r\n\r\n<p>Theo quy định tại Khoản 1 Điều 75 Luật Đất đai năm 2013 thì điều kiện để hộ gia đình cá nhân là đang sử dụng đất được bồi thường về đất khi Nhà nước thu hồi đất vì mục đích quốc phòng, an ninh; phát triển kinh tế - xã hội vì lợi ích quốc gia, công cộng là hộ gia đình cá nhân đang sử dụng đất không phải đất thuê trả tiền thuê đất hằng năm, có Giấy chứng nhận quyền sử dụng đất, Giấy chứng nhận quyền sở hữu nhà ở và quyền sử dụng đất ở, Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất (sau đây gọi chung là “Giấy Chứng Nhận”) hoặc có đủ điều kiện để được cấp Giấy Chứng Nhận mà chưa được cấp, trừ trường hợp đất nông nghiệp đã sử dụng trước ngày 01/07/2004 mà người sử dụng đất là hộ gia đình, cá nhân trực tiếp sản xuất nhưng không có Giấy Chứng Nhận không đủ điều kiện để được cấp Giấy Chứng Nhận.<br>\r\n <br>\r\nNhư vậy, đối với phần đất tạm giao của gia đình bạn sẽ không được nhận tiền bồi thường về đất. Trường hợp hộ gia đình, cá nhân trực tiếp sản xuất nông nghiệp khi Nhà nước thu hồi đất nông nghiệp mà không đủ điều kiện được bồi thường thì Ủy ban nhân dân cấp tỉnh xem xét hỗ trợ cho phù hợp với thực tế của địa phương.</p>\r\n    \r\n        <em>\r\n            <em>(Theo CafeLand)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:12', '2017-05-05 15:08:12', 1, 1),
(61, 'Loại đất nào không được chuyển nhượng?', 'loai-dat-nao-khong-duoc-chuyen-nhuong', 'Loai dat nao khong duoc chuyen nhuong', 'Tôi dự kiến mua đất làm nhà ở. Xin hỏi loại đất nào không được phép giao dịch chuyển nhượng?', 'https://img.dothi.net/2017/04/19/Z9BcC3fq/cn-23cd.jpg', 5, '<p><em>Vũ Văn Hoàng, huyện Đan Phượng, Hà Nội</em></p>\r\n\r\n<p style="text-align: center;"><img alt="Loại đất nào không được chuyển nhượng?" src="http://img.dothi.net/2017/04/19/Z9BcC3fq/cn-23cd.jpg" style="width:500px" title="Loại đất nào không được chuyển nhượng?"><br><em>Ảnh minh họa. Nguồn: Internet</em></p>\r\n\r\n<h2><strong>Trả lời</strong></h2>\r\n\r\n<p>Theo quy định tại Điều 191 Luật Đất đai 2013, các trường hợp sau không được nhận chuyển nhượng, nhận tặng cho quyền sử dụng đất:</p>\r\n\r\n<p>1. Tổ chức, hộ gia đình, cá nhân, cộng đồng dân cư, cơ sở tôn giáo, người Việt Nam định cư ở nước ngoài, DN có vốn đầu tư nước ngoài không được nhận chuyển nhượng, nhận tặng cho quyền sử dụng đất đối với trường hợp mà pháp luật không cho phép chuyển nhượng, tặng cho quyền sử dụng đất.</p>\r\n\r\n<p>2. Tổ chức kinh tế không được nhận chuyển nhượng quyền sử dụng đất trồng lúa, đất rừng phòng hộ, đất rừng đặc dụng của hộ gia đình, cá nhân, trừ trường hợp được chuyển mục đích sử dụng đất theo quy hoạch, kế hoạch sử dụng đất đã được cơ quan nhà nước có thẩm quyền phê duyệt.</p>\r\n\r\n<p>3. Hộ gia đình, cá nhân không trực tiếp sản xuất nông nghiệp không được nhận chuyển nhượng, nhận tặng cho quyền sử dụng đất trồng lúa.</p>\r\n\r\n<p>4. Hộ gia đình, cá nhân không được nhận chuyển nhượng, nhận tặng cho quyền sử dụng đất ở, đất nông nghiệp trong khu vực rừng phòng hộ, trong phân khu bảo vệ nghiêm ngặt, phân khu phục hồi sinh thái thuộc rừng đặc dụng, nếu không sinh sống trong khu vực rừng phòng hộ, rừng đặc dụng đó”.</p>\r\n\r\n<p>Theo đó, nếu đất thuộc một trong các trường hợp trên thì không được phép giao dịch chuyển nhượng.</p>\r\n\r\n<p style="text-align: right;"><strong>Luật sư Nguyễn Hồng Quang  Giám đốc Công ty Luật Hồng Quang, Hà Nội</strong></p>\r\n    \r\n        <em>\r\n            <em>(Theo Kinh tế &amp; Đô thị Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:13', '2017-05-05 15:08:13', 1, 1),
(62, 'Trường hợp nào được bán nhà cho người nước ngoài?', 'truong-hop-nao-duoc-ban-nha-cho-nguoi-nuoc-ngoai', 'Truong hop nao duoc ban nha cho nguoi nuoc ngoai', 'Bà Đặng Hoài Mỹ Trinh (TP. Hồ Chí Minh) muốn bán căn hộ chung cư cho 1 người bạn có quốc tịch nước ngoài. Theo chủ đầu tư, bà Trinh cần làm thủ tục chuyển nhượng hợp đồng mua bán tại văn phòng công chứng. Tuy nhiên, văn phòng công chứng đã viện dẫn Khoản 2, Điều 76 Nghị định 99/2015/NĐ-CP để từ chối thực hiện thủ tục này.', 'https://img.dothi.net/2017/04/19/Z9BcC3fq/so-do-3-c87f.png', 5, '<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="mua nhà" src="http://img.dothi.net/2017/04/19/Z9BcC3fq/so-do-3-c87f.png" style="height:333px; width:500px" title="Ảnh minh họa. Nguồn: internet"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Ảnh minh họa. Nguồn: internet</em></td>\r\n		</tr>\n</tbody></table>\n<p>Bà Trinh hỏi, việc văn phòng công chứng không thực hiện các thủ tục liên quan việc chuyển nhượng hợp đồng mua bán từ bà Trinh sang người nước ngoài là đúng hay sai? Bạn của bà là người nước ngoài có thể mua lại căn hộ thuộc dự án đầu tư từ một tổ chức Việt Nam, mà tổ chức này là tổ chức mua sỉ 100 căn hộ và bán lại cho khách hàng có được không?</p>\r\n\r\n<p><strong>Bộ Xây dựng trả lời vấn đề này như sau:</strong></p>\r\n\r\n<p>Theo quy định tại Khoản 2, Điều 76 Nghị định số 99/2015/NĐ-CP ngày 20/10/2015 của Chính phủ quy định chi tiết và hướng dẫn thi hành một số điều của Luật Nhà ở thì “Tổ chức, cá nhân nước ngoài thuộc diện được sở hữu nhà ở tại Việt Nam chỉ được mua, thuê mua nhà ở của chủ đầu tư dự án xây dựng nhà ở, mua nhà ở của tổ chức, cá nhân nước ngoài quy định tại Điểm b, Khoản 4, Điều 7 của Nghị định này và chỉ được nhận thừa kế, nhận tặng cho nhà ở của hộ gia đình, cá nhân hoặc nhận tặng cho nhà ở của tổ chức trong số lượng nhà ở theo quy định tại Khoản 3, Khoản 4 Điều này tại các dự án đầu tư xây dựng nhà ở được phép sở hữu; trường hợp tổ chức, cá nhân nước ngoài được tặng cho, được thừa kế nhà ở tại Việt Nam nhưng không thuộc diện được sở hữu nhà ở tại Việt Nam thì giải quyết theo quy định tại Điều 78 của Nghị định này”.</p>\r\n\r\n<p>Đối chiếu với quy định nêu trên thì người nước ngoài chỉ được mua nhà ở của chủ đầu tư dự án nhà ở mà dự án đó không thuộc khu vực bảo đảm an ninh quốc phòng hoặc mua lại nhà ở của tổ chức, cá nhân nước ngoài đã được sở hữu nhà ở tại Việt Nam. Nghị định số 99/2015/NĐ-CP không quy định người nước ngoài được mua căn hộ từ cá nhân là người Việt Nam.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Chinhphu.vn)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:13', '2017-05-05 15:08:13', 1, 1),
(63, 'Đang nợ tiền sử dụng đất có được cấp phép xây dựng?', 'dang-no-tien-su-dung-dat-co-duoc-cap-phep-xay-dung', 'Dang no tien su dung dat co duoc cap phep xay dung', 'Ông Bùi Việt Châu (tỉnh Quảng Trị) hỏi: Hộ gia đình đang nợ tiền sử dụng đất từ ngày 17/1/2017 thì có được lập thủ tục cấp phép xây dựng không?', 'https://img.dothi.net/2017/04/18/Z9BcC3fq/sd-7767.jpg', 5, '<div class="photo" style="text-align: center;">\n<img alt="cấp phép xây dựng" src="http://img.dothi.net/2017/04/18/Z9BcC3fq/sd-7767.jpg" style="width:500px" title="Đang nợ tiền sử dụng đất có được cấp phép xây dựng?"><br><em>Ảnh minh họa</em>\n</div>\r\n\r\n<h2><strong>Bộ Xây dựng trả lời vấn đề này như sau:</strong></h2>\r\n\r\n<p>Nếu gia đình ông có một trong những giấy tờ chứng minh quyền sử dụng đất theo quy định của pháp luật về đất đai thì có thể lập hồ sơ đề nghị cấp giấy phép xây dựng đối với nhà ở riêng lẻ được quy định tại Khoản 1, Điều 95 Luật Xây dựng năm 2014 và Điều 11 Thông tư số 15/2016/TT-BXD ngày 30/6/2016 của Bộ Xây dựng hướng dẫn về cấp giấy phép xây dựng.</p>\r\n    \r\n        <em>\r\n            <em>(Theo Chinhphu.vn)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:13', '2017-05-05 15:08:13', 1, 1),
(64, 'Tư vấn về bồi thường khi Nhà nước thu hồi đất', 'tu-van-ve-boi-thuong-khi-nha-nuoc-thu-hoi-dat', 'Tu van ve boi thuong khi Nha nuoc thu hoi dat', 'Năm 1994 gia đình tôi lên trên Lào Cai sinh sống và có mua đất không có bìa đỏ, sinh sống ổn định đến nay không có tranh chấp. Đất nhà tôi bây giờ nằm trong khu quy hoạch của công ty mỏ.', 'https://img.dothi.net/2017/04/17/Z9BcC3fq/th-1a50.jpg', 5, '<p>Nhà tôi có 3 anh em trai đều đã lập gia đình, bố mẹ đã mất. Anh hai của tôi đã tách khẩu, còn tôi và anh cả thì chưa. Luật sư cho tôi hỏi, nếu hiện giờ tôi tách khẩu thì có được hưởng quyền lợi gì từ mảnh đất của gia đình không? Mong luật sư tư vấn giúp. Xin cảm ơn.</p>\r\n\r\n<p><em>hoangnam@...</em></p>\r\n\r\n<p style="text-align:center"><img alt="bồi thường khi Nhà nước thu hồi đất" src="http://img.dothi.net/2017/04/17/Z9BcC3fq/th-1a50.jpg" style="width:500px" title="Tư vấn về bồi thường khi Nhà nước thu hồi đất"></p>\r\n\r\n<h2><strong>Luật sư Phạm Thị  Bích Hảo, Giám đốc Công ty luật TNHH Đức An, Thanh Xuân, HN</strong></h2>\r\n\r\n<p>Về điều kiện được bồi thường về đất khi Nhà nước thu hồi đất vì mục đích quốc phòng, an ninh, phát triển kinh tế - xã hội vì mục đích quốc gia quy định tại Điều 75 như sau:</p>\r\n\r\n<p>1. Hộ gia đình, cá nhân đang sử dụng đất không phải là đất thuê trả tiền thuê đất hàng năm, có Giấy chứng nhận quyền sử dụng đất, Giấy chứng nhận quyền sở hữu nhà ở và quyền sử dụng đất ở, Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất (sau đây gọi chung là Giấy chứng nhận) hoặc có đủ điều kiện để được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất theo quy định của Luật này mà chưa được cấp, trừ trường hợp quy định tại khoản 2 Điều 77 của Luật này; người Việt Nam định cư ở nước ngoài thuộc đối tượng được sở hữu nhà ở gắn liền với quyền sử dụng đất ở tại Việt Nam mà có Giấy chứng nhận hoặc có đủ điều kiện được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất theo quy định của Luật này mà chưa được cấp.</p>\r\n\r\n<p>Mặc dù, mảnh đất này không có Giấy chứng nhận quyền sử dụng đất nhưng nếu có đủ điều kiện để được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất thì gia đình bạn được bồi thường về đất khi thu hồi.</p>\r\n\r\n<p>Theo đó, hộ gia đình, cá nhân đang sử dụng đất là chủ thể được bồi thường về đất. Căn cứ quy định tại Điều 15 Nghị định 47/2014/NĐ-CP</p>\r\n\r\n<p>Điều 15. Bồi thường về đất đối với những người đang đồng quyền sử dụng đất</p>\r\n\r\n<p>1. Tổ chức, hộ gia đình, cá nhân đang sử dụng đất chung có đồng quyền sử dụng đất, khi Nhà nước thu hồi đất được bồi thường theo diện tích đất thuộc quyền sử dụng; nếu không có giấy tờ xác định diện tích đất thuộc quyền sử dụng riêng của tổ chức, hộ gia đình, cá nhân thì bồi thường chung cho các đối tượng có đồng quyền sử dụng đất.</p>\r\n\r\n<p>2. Ủy ban nhân dân cấp tỉnh hướng dẫn việc phân chia tiền bồi thường về đất cho các đối tượng đồng quyền sử dụng quy định tại Khoản 1 Điều này.</p>\r\n\r\n<p>Bạn căn cứ quy định trên để thống nhất về việc nhận bồi thường về đất đối với các anh em trong gia đình.</p>\r\n    \r\n        <em>\r\n            <em>(Theo CafeLand)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:14', '2017-05-05 15:08:14', 1, 1),
(65, 'Thi hành bản án hành chính về đất đai', 'thi-hanh-ban-an-hanh-chinh-ve-dat-dai', 'Thi hanh ban an hanh chinh ve dat dai', 'Hỏi: - Công ty Dâu tằm tơ Tân Lộc chúng tôi là doanh nghiệp 100% vốn nhà nước, tọa lạc ở Thị xã Long Khánh, tỉnh Đồng Nai. Bất ngờ, UBND tỉnh Đồng Nai ngày 6-3-2008 ban hành Quyết định 699 và ngày 4-9-2008 ban hành Quyết định 2852 thu hồi toàn bộ diện tích 29.740m2 đất của công ty để xây dựng Đền thờ liệt sĩ thị xã Long Khánh.', 'https://img.dothi.net/2017/04/13/Z9BcC3fq/t1-c4a0.jpg', 5, '<p>Chúng tôi đã khởi kiện vụ án hành chính ra Tòa án tỉnh Đồng Nai. Ngày 8-8-2013, TAND tỉnh Đồng Nai đã tuyên (Bản án 08/2013/HCST) hủy cả Quyết định 699 ngày 6-3-2008 và Quyết định 2852 ngày 4-9-2008 của UBND tỉnh Đồng Nai; công nhận quyền sở hữu và cấp giấy chứng nhận quyền sử dụng đất cho Công ty Dâu tằm tơ Tân Lộc.</p>\r\n\r\n<p>Ngày 25-10-2013 Tòa phúc thẩm TANDTC tại TPHCM đã ra Quyết định 220 đình chỉ xét xử phúc thẩm vụ án hành chính do người kháng cáo là UBND tỉnh Đồng Nai rút kháng cáo, công nhận Bản án sơ thẩm 08/2013/HCST của TAND tỉnh Đồng Nai có hiệu lực pháp luật. Sau khi bản án có hiệu lực, công ty chúng tôi đã làm đơn yêu cầu thi hành án. Thế nhưng gần 4 năm trôi qua, bản án đã có hiệu lực của Tòa án vẫn chưa được thi hành. Xin hỏi, theo quy định pháp luật thì cơ quan nào sẽ giải quyết tiếp?</p>\r\n\r\n<p><em>Phan Ngọc Mậu (Giám đốc CT Dâu tằm tơ Tân Lộc)</em></p>\r\n\r\n<p style="text-align: center;"><img alt="bản án hành chính về đất đai" src="http://img.dothi.net/2017/04/13/Z9BcC3fq/t1-c4a0.jpg" style="width:500px" title="Thi hành bản án hành chính về đất đai"><br><em>Ảnh minh họa, nguồn: Internet</em></p>\r\n\r\n<h2><strong>Trả lời: </strong></h2>\r\n\r\n<p>Khoản 1, Điều 11 Nghị định 71 ngày 1-7-2016 của Chính phủ (quy định thời hạn, trình tự, thủ tục thi hành án hành chính và xử lý trách nhiệm đối với người không thi hành bản án, quyết định của Tòa án) quy định: “Khi hết thời hạn tự nguyện thi hành án quy định tại Điểm b, Khoản 2, Điều 311 Luật Tố tụng hành chính mà người phải thi hành bản án không tự nguyện thi hành, người được thi hành án có quyền đề nghị Tòa án đã xét xử sơ thẩm ra quyết định buộc thi hành án hành chính”.</p>\r\n\r\n<p>Căn cứ quy định pháp luật nêu trên, công ty của ông cần làm đơn yêu cầu gửi TAND tỉnh Đồng Nai (là Tòa án đã xét xử sơ thẩm vụ kiện hành chính), đề nghị Chánh án TAND tỉnh Đồng Nai ra quyết định buộc UBND tỉnh Đồng Nai (người phải thi hành bản án) phải thi hành bản án hành chính đã có hiệu lực pháp luật.</p>\r\n\r\n<p style="text-align: right;"><strong>Luật gia Nguyễn Văn Khôi</strong></p>\r\n    \r\n        <em>\r\n            <em>(Theo Sài Gòn Đầu tư Tài chính Online)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:15', '2017-05-05 15:08:15', 1, 1),
(66, 'Quy định về tiến độ thanh toán khi mua nhà ở hình thành trong tương lai', 'quy-dinh-ve-tien-do-thanh-toan-khi-mua-nha-o-hinh-thanh-trong-tuong-lai', 'Quy dinh ve tien do thanh toan khi mua nha o hinh thanh trong tuong lai', 'Tôi dự định mua 1 căn hộ trong một dự án đang xây dựng, chủ đầu tư yêu cầu tôi đặt cọc trước một khoản bằng 30% giá trị căn hộ. Việc này có đúng quy định không?', 'https://img.dothi.net/2017/04/13/Z9BcC3fq/dt-65b9.jpg', 5, '<div class="photo" style="text-align: center;"><img alt="mua nhà hình thành trong tương lai" src="http://img.dothi.net/2017/04/13/Z9BcC3fq/dt-65b9.jpg" style="width:500px" title="Quy định về tiến độ thanh toán khi mua nhà ở hình thành trong tương lai"></div>\r\n\r\n<p>Theo quy định tại Điều 57 Luật Nhà ở 2014 về thanh toán trong mua bán, thuê mua bất động sản hình thành trong tương lai, thì “Việc thanh toán trong mua bán, thuê mua bất động sản hình thành trong tương lai được thực hiện nhiều lần, lần đầu không quá 30% giá trị hợp đồng, những lần tiếp theo phải phù hợp với tiến độ xây dựng bất động sản, nhưng tổng số không quá 70% giá trị hợp đồng khi chưa bàn giao nhà, công trình xây dựng cho khách hàng; trường hợp bên bán, bên cho thuê mua là doanh nghiệp có vốn đầu tư nước ngoài thì tổng số không quá 50% giá trị hợp đồng”.</p>\r\n\r\n<p>Như vậy, việc chủ đầu tư yêu cầu bạn đặt cọc trước 30% giá trị căn hộ là phù hợp quy định pháp luật.</p>\r\n\r\n<p>Ngoài ra, bạn cần lưu ý một số vấn đề liên quan đối với việc mua bất động sản hình thành trong tương lai:</p>\r\n\r\n<p>1. Bất động sản đó phải có “giấy tờ về quyền sử dụng đất, hồ sơ dự án, thiết kế bản vẽ thi công đã được cấp có thẩm quyền phê duyệt, Giấy phép xây dựng đối với trường hợp phải có giấy phép xây dựng, giấy tờ về nghiệm thu việc hoàn thành xây dựng cơ sở hạ tầng kỹ thuật tương ứng theo tiến độ dự án; trường hợp là nhà chung cư, tòa nhà hỗn hợp có mục đích để ở hình thành trong tương lai thì phải có biên bản nghiệm thu đã hoàn thành xong phần móng của tòa nhà đó.</p>\r\n\r\n<p>2. Chủ đầu tư dự án trước khi bán, cho thuê mua nhà ở hình thành trong tương lai phải được ngân hàng thương mại có đủ năng lực thực hiện bảo lãnh nghĩa vụ tài chính của chủ đầu tư đối với khách hàng khi chủ đầu tư không bàn giao nhà ở theo đúng tiến độ đã cam kết với khách hàng.</p>\r\n\r\n<p>3. Trước khi bán, cho thuê mua nhà ở hình thành trong tương lai, chủ đầu tư phải có văn bản thông báo cho cơ quan quản lý nhà ở cấp tỉnh về việc nhà ở đủ điều kiện được bán, cho thuê mua.</p>\r\n\r\n<p style="text-align: right;"><strong>Luật sư Lương Nguyễn Khánh Văn,<br>\r\nGiám đốc Khối Dịch vụ pháp lý doanh nghiệp, Công ty Luật LP Group</strong></p>\r\n    \r\n        <em>\r\n            <em>(Theo Đầu tư Chứng khoán)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:15', '2017-05-05 15:08:15', 1, 1),
(67, 'Quy định chuyển nhượng hợp đồng mua bán NƠXH', 'quy-dinh-chuyen-nhuong-hop-dong-mua-ban-noxh', 'Quy dinh chuyen nhuong hop dong mua ban NOXH', 'Bạn Nguyễn Văn Nhị tại hòm thư ng.vannhi@gmail.com hỏi: Nếu tôi vay gói 30.000 tỷ đồng để mua nhà chung cư, nhưng chưa đủ 5 năm, chưa trả hết nợ, tôi muốn bán cho đối tượng có đủ điều kiện mua NƠXH thì tôi có được phép sang tên hợp đồng mua bán và có được phép sang tên cho người muốn mua nhà của tôi với đơn vị tín dụng để người mua sẽ tiếp tục thay tôi trả hết món nợ không?', 'https://img.dothi.net/2017/04/13/Z9BcC3fq/chuyennhuongnoxh-539d.jpg', 5, '<table border="0" cellpadding="1" cellspacing="1" style="margin:0 auto; width:500px"><tbody>\n<tr>\n<td>\r\n			<div class="photo"><img alt="chuyển nhượng hợp đồng mua bán NƠXH" src="http://img.dothi.net/2017/04/13/Z9BcC3fq/chuyennhuongnoxh-539d.jpg" style="height:333px; width:500px" title="Quy định chuyển nhượng hợp đồng mua bán NƠXH"></div>\r\n			</td>\r\n		</tr>\n<tr>\n<td style="text-align: center;"><em>Ảnh minh họa.</em></td>\r\n		</tr>\n</tbody></table>\n<p>Về vấn đề trên, Cục Quản lý nhà và Thị trường bất động sản trả lời như sau:</p>\r\n\r\n<h2>Về việc chuyển nhượng hợp đồng mua bán NƠXH</h2>\r\n\r\n<p>Theo quy định tại Khoản 6, Điều 13 Nghị định số 188/2013/NĐ-CP ngày 20/11/2013 của Chính phủ và Khoản 5, Điều 19 Nghị định số 100/2015/NĐ-CP ngày 20/10/2015 của Chính phủ về phát triển và quản lý NƠXH thì trong thời hạn chưa đủ 05 năm, kể từ thời điểm trả hết tiền mua NƠXH, nếu bên mua có nhu cầu bán lại NƠXH thì chỉ được phép bán lại cho chủ đầu tư dự án xây dựng NƠXH hoặc bán lại cho đối tượng được mua NƠXH.</p>\r\n\r\n<p>Pháp luật về nhà ở và pháp luật về kinh doanh bất động sản không quy định hình thức chuyển nhượng hợp đồng mua bán NƠXH.</p>\r\n\r\n<h2>Về hợp đồng tín dụng vay để mua NƠXH</h2>\r\n\r\n<p>Trường hợp người mua NƠXH bán lại NƠXH cho đối tượng được mua NƠXH trong thời hạn chưa đủ 05 năm kể từ thời điểm trả hết tiền mua NƠXH, nếu chưa hoàn tất hợp đồng tín dụng vay gói 30.000 tỷ đồng mà muốn người mua lại nhà tiếp tục trả nợ thì đề nghị công dân liên hệ với Ngân hàng Nhà nước hoặc Ngân hàng trực tiếp cho vay để được hướng dẫn theo đúng thẩm quyền.</p>\r\n\r\n<p style="text-align: right;"><em>Cục Quản lý nhà và Thị trường bất động sản/moc.gov.vn</em></p>\r\n    \r\n        <em>\r\n            <em>(Theo Báo Xây dựng)</em> <br>  </em>', 0, NULL, NULL, 1, 0, 0, '2017-05-05 15:08:16', '2017-05-05 15:08:16', 1, 1),
(68, 'THÔNG TIN DỰ ÁN JAMILA KHANG ĐIỀN', 'thong-tin-du-an-jamila-khang-dien', 'THONG TIN DU AN JAMILA KHANG DIEN', NULL, NULL, 999, '<p style="text-align:center"><a href="http://sunlandsg.vn/du-an/can-ho-jamila/vi-tri" target="_blank"><img alt="Mở bán chính thức căn hộ Jamila Khang Điền Quận 9 - giá sốc từ Chủ Đầu Tư" src="http://sunlandsg.vn/data/upload/image_manual/project/jamila%20khang%20%C4%91i%E1%BB%81n/jamila-banner1_1.gif?1492673721370" style="border-style:solid; border-width:1px; height:347px; width:725px" /></a></p>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>&ndash; Chủ đầu tư :</strong> C&ocirc;ng ty Nh&agrave; Khang Điền.<br />\r\n<strong>&ndash; Nh&agrave; Thầu Ch&iacute;nh :</strong> C&ocirc;ng ty x&acirc;y dựng H&ograve;a B&igrave;nh.<br />\r\n<strong>&ndash; Vị tr&iacute; :</strong> Tọa lạc mặt tiền đường Song H&agrave;nh, Liền kề khu biệt thự si&ecirc;u sang The Venica<br />\r\n<strong>&ndash; T&ecirc;n ch&iacute;nh thức:</strong> <a href="http://sunlandsg.vn/du-an/can-ho-jamila/gioi-thieu" target="_blank"><strong>DỰ &Aacute;N JAMILA</strong></a><br />\r\n<strong>&ndash; Quy M&ocirc; Dự &Aacute;n</strong> : 1.7ha.</span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;Hệ thống tiện &iacute;ch rộng tới 7.000 m2 với 50 hạng mục tiện &iacute;ch kh&aacute;c nhau</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;4 t&ograve;a th&aacute;p nối với nhau tạo th&agrave;nh h&igrave;nh v&ograve;ng cung với 867 căn hộ bao gồm 5 căn Duplex, ngaoif ra c&oacute; 16 căn Shophouse</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;Mỗi t&ograve;a th&aacute;p căn hộ bao gồm 25 tầng. Trong đ&oacute;: </span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Tầng Hầm để xe.</span></span></p>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + 2 Tầng trung t&acirc;m thương mại v&agrave; c&aacute;c ShopHouse.</span></span></p>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + 21 Tầng c&ograve;n lại d&agrave;nh cho tiện &iacute;ch v&agrave; căn hộ.</span></span></p>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>&ndash; Quản l&yacute; về chất lượng :</strong> SCQC<br />\r\n<strong>&ndash; Quản L&yacute; Khu D&acirc;n Cư :</strong> CBRE<br />\r\n<strong>&ndash; Ti&ecirc;u chuẩn b&agrave;n giao nh&agrave; :</strong> Ho&agrave;n thiện nội thất liền tường (<strong>nội thất cao cấp</strong>).<br />\r\n<strong>&ndash; Thời gian dự kiến b&agrave;n giao :</strong> chia l&agrave;m 2 đợt.</span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;Đợt 1 : V&agrave;o qu&yacute; 3 năm 2018.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;Đợt 2 : V&agrave;o qu&yacute; 1 năm 2019.</span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>&ndash; Mở b&aacute;n th&aacute;ng 5/2017: </strong>Block D. </span></span></p>\r\n\r\n<h2 style="text-align:center"><span style="font-size:20px"><span style="color:#008000"><span style="font-family:arial,helvetica,sans-serif"><strong>NHẬN GIỮ CHỔ 50TR ƯU TI&Ecirc;N THEO VỊ TR&Iacute;, NG&Agrave;Y 14/5 CH&Iacute;NH THỨC MỞ B&Aacute;N CĂN HỘ JAMILA.</strong></span></span></span></h2>\r\n\r\n<p style="text-align:center"><a href="https://goo.gl/FtrPJb" target="_blank"><img alt="Nhận báo giá jamila" src="http://sunlandsg.vn/data/upload/image_manual/project/jamila%20khang%20%C4%91i%E1%BB%81n/nhanbaogiabutton.gif?1494490739860" style="height:84px; width:300px" /></a></p>\r\n\r\n<h2 style="text-align:center"><span style="font-size:20px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#ff0000"><strong>HOTLINE: 0938 779 660</strong></span></span></span></h2>\r\n', 0, 1, 1, 0, 0, 0, '2017-05-20 06:13:53', '2017-05-20 06:13:53', 1, 1),
(69, 'VỊ TRÍ VÀNG - DỄ DÀNG DI CHUYỂN', 'vi-tri-vang-de-dang-di-chuyen', 'VI TRI VANG - DE DANG DI CHUYEN', NULL, NULL, 999, '<p style="margin-left:0.25in; text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dự &aacute;n <strong>căn hộ</strong><a href="http://sunlandsg.vn/du-an/can-ho-jamila/gioi-thieu" target="_blank"><strong> <span style="color:#00ccff">Jamila Khang Điền</span></strong></a>&nbsp;tọa lạc tại Mặt tiền đường <em>Song H&agrave;nh Quận 9</em>, tiếp gi&aacute;m Quận 2 (c&aacute;ch 3km)&nbsp;kế cận&nbsp;khu si&ecirc;u&nbsp;biệt thự <em><strong>The Venica</strong></em>. Tiếp cận c&aacute;c trục giao th&ocirc;ng thuận lợi: đường Song H&agrave;nh, đường Đỗ Xu&acirc;n Hợp, Li&ecirc;n Phường, Nguyễn Duy Trinh, dễ d&agrave;ng di chuyển</span></span></p>\r\n\r\n<ul>\r\n	<li style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#006400"><strong>CĂN HỘ JAMILA</strong></span> - C&aacute;ch trung t&acirc;m th&agrave;nh phố 10 ph&uacute;t</span></span></li>\r\n	<li style="text-align:justify"><span style="color:#006400"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:14px">CĂN HỘ&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:14px">JAMILA</span></strong></span><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"> - C&aacute;ch s&acirc;n bay quốc tế Long Th&agrave;nh 15 ph&uacute;t</span></span></li>\r\n	<li style="text-align:justify"><strong><span style="color:#006400"><span style="font-family:arial,helvetica,sans-serif; font-size:14px">CĂN HỘ&nbsp;</span></span><span style="font-family:arial,helvetica,sans-serif; font-size:14px"><span style="color:#006400">JAMILA</span> </span></strong><span style="font-family:arial,helvetica,sans-serif; font-size:14px">- C&aacute;ch khu đ&ocirc; thị Palm City Quận 9 chỉ 3km</span></li>\r\n	<li style="text-align:justify"><span style="color:#006400"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:14px">CĂN HỘ&nbsp;</span></strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:14px"><span style="color:#006400"><strong>JAMILA</strong></span>&nbsp;</span><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Gần khu C&ocirc;ng nghệ cao Quận 9, Bệnh viện, TTTM Vincom Quận 9 v&agrave; trường học Quốc tế, Ủy ban nh&acirc;n d&acirc;n,..</span></span></li>\r\n	<li style="text-align:justify"><span style="color:#006400"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:14px">CĂN HỘ&nbsp;</span></strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:14px"><span style="color:#006400"><strong>JAMILA</strong></span>&nbsp;</span><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;gồm 4 Block &ndash; 867 căn hộ với 2 mặt gi&aacute;p s&ocirc;ng</span></span></li>\r\n</ul>\r\n\r\n<p style="margin-left:0.25in; text-align:center"><img alt="Vị trí Jamila Khang Điền Quận 9" src="http://sunlandsg.vn/data/upload/image_manual/project/jamila%20khang%20%C4%91i%E1%BB%81n/JAMILA_VI-TRI_1.gif?1492487612411" style="height:916px; width:1000px" /></p>\r\n\r\n<p style="margin-left:0.25in; text-align:center"><img alt="Vị trí căn hộ Jamila Khang Điền" src="http://sunlandsg.vn/data/upload/image_manual/project/jamila%20khang%20%C4%91i%E1%BB%81n/VI-TRI-JAMILA-1.jpg?1492487870629" style="height:192px; width:793px" /></p>\r\n', 0, 1, 2, 0, 0, 0, '2017-05-20 06:19:51', '2017-05-20 06:19:51', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(70, 'TỔNG QUAN DỰ ÁN PARK RIVERSIDE', 'tong-quan-du-an-park-riverside', 'TONG QUAN DU AN PARK RIVERSIDE', NULL, NULL, 999, '<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Park riverside l&agrave; dự &aacute;n m&ocirc; h&igrave;nh nh&agrave; phố biệt thự ven s&ocirc;ng với 2 mặt gi&aacute;p s&ocirc;ng. Nơi đ&acirc;y l&agrave; cụm d&acirc;n cư trong khu compound được bảo vệ 24/7. Dự &aacute;n Park Riverside được ph&aacute;t triển bởi <a href="http://sunlandsg.vn/du-an/river-park-quan-9/du-an" target="_blank"><strong><em>tập đo&agrave;n MIK Group</em></strong></a> v&agrave; đơn vị x&acirc;y dựng thầu l&agrave; H&ograve;a B&igrave;nh.</span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Dự &aacute;n Park Riverside c&oacute; quy m&ocirc; rộng 17,70ha gồm 693 căn nh&agrave; li&ecirc;n kế, biệt thự song lập vfa biệt thự đơn lập. Nh&agrave; ph&aacute;t triển dự &aacute;n đ&atilde; d&agrave;nh ra quỹ đất hơn 7ha để ph&aacute;t triển khu tiện &iacute;ch c&ocirc;ng cộng v&agrave; mảng xanh cho khu d&acirc;n cư. MIK hướng dự &aacute;n Park Riveriside trở th&agrave;nh một khu d&acirc;n cư c&oacute; kh&ocirc;ng gian sống xanh h&ograve;a c&ugrave;ng thi&ecirc;n nhi&ecirc;n với hệ thống tiện &iacute;ch đầy đủ v&agrave; đẳng cấp.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><img alt="2majtw giáp sông của dự án park riverside" src="http://sunlandsg.vn/data/upload/image_manual/project/Park%20Riverside/phoi-canh-du-an-park-riverside.jpg?1490857907250" style="height:450px; width:900px" /></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Lấy &yacute; tưởng kiến tr&uacute;c hiện đại kết hợp với kiểu thiết kế đường n&eacute;t uốn cong theo d&ograve;ng s&ocirc;ng xanh m&aacute;t đ&atilde; tạo n&ecirc;n khung cảnh dự &aacute;n Park Riverside n&ecirc;n thơ. Biến nơi n&agrave;y th&agrave;nh một chốn an cư y&ecirc;n b&igrave;nh để trở về sau những giờ l&agrave;m việc mệt mỏi. Tạo cảm gi&aacute;c thư th&aacute;i thoải m&aacute;i trong một kh&ocirc;ng gian sống an l&agrave;nh như chuẩn của một khu &quot;Resort sinh th&aacute;i&quot;.</span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Tại Park Riverside, 30% diện t&iacute;ch dự &aacute;n d&agrave;nh để ph&aacute;t triển tiện &iacute;ch nội khu cao cấp. Như hồ bơi, ph&ograve;ng gym, c&ocirc;ng vi&ecirc;n cho trẻ em, đường chạy bộ, khu BBQ, si&ecirc;u thị.... Th&ocirc;ng qua đ&oacute;, nh&agrave; ph&aacute;t triển dự &aacute;n mong muốn mang lại m&ocirc;i trường sống xanh v&agrave; tiện &iacute;ch chuẩn mực thượng lưu cho c&aacute;c cư d&acirc;n.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><img alt="Khu hồ bơi chân may dự án Park Roverside" src="http://sunlandsg.vn/data/upload/image_manual/project/Park%20Riverside/du-an-river-park%20(2).jpg?1490857972178" style="height:600px; width:800px" /></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Ngo&agrave;i những tiện &iacute;ch nội khu ho&agrave;n hảo, dự &aacute;n cũng dễ d&agrave;ng kết nối tới c&aacute;c dịch vụ l&acirc;n cận, như trung t&acirc;m thương mại Vincom, Parkson, Mega Market, Lotte Mart&hellip; ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng tốt nhu cầu mua sắm, vui chơi giải tr&iacute; của mọi gia đ&igrave;nh. B&ecirc;n cạnh đ&oacute;, hệ thống trường đại học quốc tế FulBright, AIS sẽ tạo m&ocirc;i trường học tập tốt cho thế hệ tương lai. Những t&iacute;n đồ thể thao c&oacute; thể thỏa m&atilde;n niềm đam m&ecirc; của m&igrave;nh bằng s&acirc;n Golf, s&acirc;n Tennis l&acirc;n cận sẽ đ&aacute;p ứng tốt nhu cầu từ cơ bản tới cao cấp. C&oacute; thể n&oacute;i, hệ thống tiện &iacute;ch ngoại khu Park Riverside mang lại sự đầy đủ cho cộng đồng cư d&acirc;n dự &aacute;n.<br />\r\nDự &aacute;n biệt thự, nh&agrave; phố Park Riverside được đ&aacute;nh gi&aacute; như sự lựa chọn ho&agrave;n hảo cho khung cảnh cuộc sống y&ecirc;n b&igrave;nh, xứng đ&aacute;ng được coi như t&aacute;c phẩm khu nh&agrave; phố biệt lập an ninh đ&aacute;ng sống h&agrave;ng đầu Quận 9, nơi sẽ dựng x&acirc;y v&agrave; lấp đầy ước mơ của mọi gia đ&igrave;nh.</span></span></p>\r\n', 0, 2, 1, 0, 0, 0, '2017-05-20 06:21:35', '2017-05-20 06:21:35', 1, 1),
(71, 'Giới Thiệu', 'gioi-thieu', 'Gioi Thieu', NULL, NULL, 999, '<p><strong>TH&Ocirc;NG TIN CHUNG</strong></p>\r\n<strong>&ndash; Chủ đầu tư :</strong>&nbsp;C&ocirc;ng ty TNHH HVK<br />\r\n<strong>&ndash; Nh&agrave; Thầu Ch&iacute;nh :</strong>&nbsp;POSCO E&amp;C Viet Nam<br />\r\n<strong>&ndash;&nbsp;Quản l&yacute; dự &aacute;n :&nbsp;</strong>PND K Co., Ltd<br />\r\n<strong>&ndash;&nbsp;Quản l&yacute; x&acirc;y dựng :&nbsp;</strong>4M Partners Viet Nam JSC<br />\r\n<strong>&ndash; Vị tr&iacute; :</strong>&nbsp;Tọa lạc tr&ecirc;n&nbsp;đường Li&ecirc;n Phường, P. Ph&uacute; Hữu, Quận 9<br />\r\n<strong>&ndash; T&ecirc;n ch&iacute;nh thức:</strong>&nbsp;<strong>DỰ &Aacute;N&nbsp;THE EASTERN</strong><br />\r\n<strong>&ndash; Quy M&ocirc; Dự &Aacute;n</strong>&nbsp;<strong>:&nbsp;</strong><br />\r\n+ Tổng diện t&iacute;ch 15.689m2 &ndash; Bao gồm 2 Block A v&agrave; B .<br />\r\n+ Tỷ lệ x&acirc;y dựng : 28,79%<br />\r\n+ Với quy m&ocirc; : 648 căn hộ (01 hầm, 22 tầng)<br />\r\n<strong>&ndash; Ti&ecirc;u chuẩn b&agrave;n giao nh&agrave; :</strong>&nbsp;Giao nh&agrave; đầy đủ nội thất cao cấp<br />\r\n<strong>&ndash; Thời gian dự kiến b&agrave;n giao :&nbsp;</strong>B&agrave;n giao nh&agrave; qu&yacute; 4/2013', 0, 3, 1, 0, 0, 0, '2017-05-21 15:53:09', '2017-05-21 15:53:09', 1, 1),
(72, 'Vị trí căn hộ ABC', 'vi-tri-can-ho-abc', 'Vi tri can ho ABC', NULL, NULL, 999, '<h3>VỊ TR&Iacute; ĐẮT GI&Aacute; &ndash; DI CHUYỂN DỄ D&Agrave;NG</h3>\r\n\r\n<ul>\r\n	<li>Thuộc đường li&ecirc;n phường, nằm tại Phường Ph&uacute; Hữu Quận 9, c&aacute;ch v&agrave;nh đai trong ph&iacute;a Đ&ocirc;ng Hồ Ch&iacute; Minh 100m.</li>\r\n	<li>Theo tuyến đại lộ Đ&ocirc;ng T&acirc;y, bạn chỉ mất 15-20 ph&uacute;t để đến trung t&acirc;m th&agrave;nh phố.</li>\r\n	<li>C&aacute;ch xa lộ H&agrave; Nội khoảng 5-10 ph&uacute;t để từ căn hộ đến quận 2 .</li>\r\n	<li>Chỉ mất 15 ph&uacute;t để đến quận 7 với tuyến đường V&agrave;nh Đai Trong v&agrave; Cầu Ph&uacute; Mỹ</li>\r\n	<li>Dễ d&agrave;ng thuận tiện với h&agrave;nh tr&igrave;nh đến B&igrave;nh Dương v&agrave; Đồng Nai c&ugrave;ng s&acirc;n bay quốc tế Long Th&agrave;nh với tuyến đường cao tốc Long Th&agrave;nh, Dầu Gi&acirc;y.</li>\r\n</ul>\r\n', 0, 3, 2, 0, 0, 0, '2017-05-21 15:58:43', '2017-05-21 15:58:43', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_cate`
--

INSERT INTO `articles_cate` (`id`, `name`, `slug`, `alias`, `description`, `image_url`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Không gian sống', 'khong-gian-song', 'Khong gian song', '', '', '2016-07-24 06:34:20', '2017-05-20 09:12:35', 0, 0, 1, 0, 'Không gian sống', 'Không gian sống', 'Không gian sống', ''),
(4, 'Phong thủy', 'phong-thuy', 'Phong thuy', '', '', '2016-10-05 16:32:26', '2017-05-20 09:12:43', 0, 0, 1, 0, 'Phong thủy', 'Phong thủy', 'Phong thủy', ''),
(5, 'Tư vấn luật', 'tu-van-luat', 'Tu van luat', '', '', '2017-05-05 14:33:12', '2017-05-20 09:12:51', 0, 0, 1, 0, 'Tư vấn luật', 'Tư vấn luật', 'Tư vấn luật', ''),
(6, 'Tư vấn thiết kế', 'tu-van-thiet-ke', 'Tu van thiet ke', '', '', '2017-05-05 14:33:41', '2017-05-20 09:12:58', 0, 0, 1, 0, 'Tư vấn thiết kế', 'Tư vấn thiết kế', 'Tư vấn thiết kế', ''),
(7, 'Tin thị trường', 'tin-thi-truong', 'Tin thi truong', '', '', '2017-05-05 14:54:21', '2017-05-20 09:13:06', 0, 0, 1, 0, 'Tin thị trường', 'Tin thị trường', 'Tin thị trường', '');

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE `auto` (
  `id` int(11) NOT NULL,
  `date_auto` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`id`, `date_auto`) VALUES
(1, '2016-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `ads_url` varchar(255) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` tinyint(1) NOT NULL COMMENT '1 : danh muc cha , 2 : danh mục con',
  `type` int(11) NOT NULL COMMENT '1 : không liên kết, 2 : trỏ đến 1 trang, 3',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image_url`, `ads_url`, `time_start`, `time_end`, `object_id`, `object_type`, `type`, `display_order`, `status`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(1, '2017/05/05/1-1493985148.jpg', '', 0, 0, 1, 3, 1, 0, 1, '2017-05-05 18:52:31', '2017-05-05 18:52:31', 1, 1),
(4, '2017/05/05/2-1493985180.jpg', '', 0, 0, 1, 3, 1, 0, 1, '2017-05-05 18:53:03', '2017-05-05 18:53:03', 1, 1),
(5, '2017/05/20/banxehoicom-bannertop-1495243392.gif', '', 0, 0, 4, 3, 1, 0, 1, '2017-05-20 08:23:15', '2017-05-20 08:23:15', 1, 1),
(6, '2017/05/20/banner-dothi-apps-100x300-1495243429.gif', '', 0, 0, 2, 3, 1, 0, 1, '2017-05-20 08:23:51', '2017-05-20 08:23:51', 1, 1),
(7, '2017/05/20/cq-na-huongnt-161028-dt-100x300-1495243445.gif', '', 0, 0, 3, 3, 1, 0, 1, '2017-05-20 08:24:07', '2017-05-20 08:24:07', 1, 1),
(8, '2017/05/20/1-1493985148-1495282873.jpg', '', 0, 0, 1, 4, 1, 0, 1, '2017-05-20 19:20:08', '2017-05-20 19:21:23', 1, 1),
(9, '2017/05/21/s1-1495356822.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:53:43', '2017-05-21 15:53:43', 1, 1),
(10, '2017/05/21/s2-1495357030.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:57:11', '2017-05-21 15:57:11', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `name`, `status`) VALUES
(3, 'BDS cho thuê', 1),
(4, 'Dự án BĐS Mỹ Phú', 1),
(5, 'BĐS Hưng Phước', 1),
(6, 'Dự án Sky Garden', 1),
(7, 'BDS Panorama', 1),
(8, 'Dự án BĐS ParkView', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 : chung cu 2 dat nen',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 : hien 2 an',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `slug`, `type`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Chung cư Gold', 'chung-cu-gold', 1, 1, '2017-05-10 20:30:38', '2017-05-10 20:35:49'),
(4, 'Đất nền quận 9', 'dat-nen-quan-9', 2, 1, '2017-05-10 20:41:13', '2017-05-10 20:41:13'),
(5, 'Chung cu abc', 'chung-cu-abc', 1, 1, '2017-05-12 21:27:51', '2017-05-12 21:27:51'),
(11, 'Resert 01kadsf', 'resert-01kadsf', 1, 1, '2017-05-13 07:47:34', '2017-05-13 07:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `direction` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `no_room` varchar(20) DEFAULT NULL,
  `no_wc` varchar(20) DEFAULT NULL,
  `notes` text,
  `type` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `hoa_hong` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 : chua ban 2 da ban 3 doc coc',
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_product`
--

INSERT INTO `cart_product` (`id`, `name`, `cart_id`, `direction`, `price`, `area`, `floor`, `no_room`, `no_wc`, `notes`, `type`, `display_order`, `hoa_hong`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'A01', 3, 'Nam', '1 ty 5', '12 m2', '1 ty 5', '3', '1', 'dgsagsghsdhsffffd gadg sdgads gdsg dsg sgadsg ', 1, 0, '', 2, 1, '2017-05-11 21:14:34', '2017-05-11 21:50:24'),
(4, 'A02', 3, '', '', '', '', '', '', '', 1, 0, '', 2, 1, '2017-05-11 21:33:18', '2017-05-21 17:32:34'),
(5, 'A03', 3, '', '', '', '', '', '', '', 1, 0, '', 2, 1, '2017-05-11 21:33:22', '2017-05-11 21:56:48'),
(6, 'A04', 3, '', '', '', '', '', '', '', 1, 0, '', 2, 1, '2017-05-11 21:33:27', '2017-05-11 21:57:23'),
(7, 'A05', 3, '', '', '', '', '', '', '', 1, 0, '', 2, 1, '2017-05-11 21:33:31', '2017-05-21 17:32:17'),
(8, 'A06', 3, '', '', '', '', '', '', '', 1, 0, '', 1, 1, '2017-05-11 21:33:35', '2017-05-11 21:33:35'),
(9, 'A07', 3, '', '', '', '', '', '', '', 1, 0, '', 1, 1, '2017-05-11 21:33:40', '2017-05-11 21:33:40'),
(10, 'A08', 3, '', '', '', '', '', '', '', 1, 0, '', 1, 1, '2017-05-11 21:33:44', '2017-05-11 21:33:44'),
(11, 'A100', 3, '', '124', '34 m2', '', '', '', '', 0, 0, '', 1, 1, '2017-05-11 22:03:03', '2017-05-11 22:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `code`, `name`, `alias`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'SG', 'Hồ Chí Minh', 'ho-chi-minh', 1, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(2, 'HN', 'Hà Nội', 'hà-nọi', 2, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(3, 'BD', 'Bình Dương', 'binh-duong', 3, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(4, 'DDN', 'Đà Nẵng', 'da-nang', 4, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(5, 'HP', 'Hải Phòng', 'hai-phong', 5, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(6, 'LA', 'Long An', 'long-an', 6, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(7, 'VT', 'Bà Rịa Vũng Tàu', 'ba-ria-vung-tau', 7, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(8, 'AG', 'An Giang', 'an-giang', 8, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(9, 'BG', 'Bắc Giang', 'bac-giang', 9, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(10, 'BK', 'Bắc Kạn', 'bac-kan', 10, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(11, 'BL', 'Bạc Liêu', 'bac-lieu', 11, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(12, 'BN', 'Bắc Ninh', 'bac-ninh', 12, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(13, 'BTR', 'Bến Tre', 'ben-tre', 13, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(14, 'BDD', 'Bình Định', 'binh-dinh', 14, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(15, 'BP', 'Bình Phước', 'binh-phuoc', 15, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(16, 'BTH', 'Bình Thuận  ', 'binh-thuan', 16, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(17, 'CM', 'Cà Mau', 'ca-mau', 17, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(18, 'CT', 'Cần Thơ', 'can-tho', 18, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(19, 'CB', 'Cao Bằng', 'cao-bang', 19, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(20, 'DDL', 'Đắk Lắk', 'dak-lak', 20, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(21, 'DNO', 'Đắk Nông', 'dak-nong', 21, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(22, 'DDB', 'Điện Biên', 'dien-bien', 22, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(23, 'DNA', 'Đồng Nai', 'dong-nai', 23, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(24, 'DDT', 'Đồng Tháp', 'dong-thap', 24, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(25, 'GL', 'Gia Lai', 'gia-lai', 25, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(26, 'HG', 'Hà Giang', 'ha-giang', 26, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(27, 'HNA', 'Hà Nam', 'ha-nam', 27, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(28, 'HT', 'Hà Tĩnh', 'ha-tinh', 28, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(29, 'HD', 'Hải Dương', 'hai-duong', 29, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(30, 'HGI', 'Hậu Giang', 'hau-giang', 30, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(31, 'HB', 'Hòa Bình', 'hoa-binh', 31, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(32, 'HY', 'Hưng Yên', 'hung-yen', 32, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(33, 'KH', 'Khánh Hòa', 'khanh-hoa', 33, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(34, 'KG', 'Kiên Giang', 'kien-giang', 34, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(35, 'KT', 'Kon Tum', 'kon-tum', 35, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(36, 'LCH', 'Lai Châu', 'lai-chau', 36, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(37, 'LDD', 'Lâm Đồng', 'lam-dong', 37, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(38, 'LS', 'Lạng Sơn', 'lang-son', 38, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(39, 'LCA', 'Lào Cai', 'lao-cai', 39, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(40, 'NDD', 'Nam Định', 'nam-dinh', 40, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(41, 'NA', 'Nghệ An', 'nghe-an', 41, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(42, 'NB', 'Ninh Bình', 'ninh-binh', 42, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(43, 'NT', 'Ninh Thuận', 'ninh-thuan', 43, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(44, 'PT', 'Phú Thọ', 'phu-tho', 44, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(45, 'PY', 'Phú Yên', 'phu-yen', 45, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(46, 'QB', 'Quảng Bình', 'quang-binh', 46, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(47, 'QNA', 'Quảng Nam', 'quang-nam', 47, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(48, 'QNG', 'Quảng Ngãi', 'quang-ngai', 48, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(49, 'QNI', 'Quảng Ninh', 'quang-ninh', 49, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(50, 'QT', 'Quảng Trị', 'quang-tri', 50, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(51, 'ST', 'Sóc Trăng', 'soc-trang', 51, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(52, 'SL', 'Sơn La', 'son-la', 52, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(53, 'TNI', 'Tây Ninh', 'tay-ninh', 53, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(54, 'TB', 'Thái Bình', 'thai-binh', 54, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(55, 'TN', 'Thái Nguyên', 'thai-nguyen', 55, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(56, 'TH', 'Thanh Hóa', 'thanh-hoa', 56, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(57, 'TTH', 'Thừa Thiên Huế', 'thua-thien-hue', 57, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(58, 'TG', 'Tiền Giang', 'tien-giang', 58, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(59, 'TV', 'Trà Vinh', 'tra-vinh', 59, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(60, 'TQ', 'Tuyên Quang', 'tuyen-quang', 60, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(61, 'VL', 'Vĩnh Long', 'vinh-long', 61, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(62, 'VP', 'Vĩnh Phúc', 'vinh-phuc', 62, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(63, 'YB', 'Yên Bái', 'yen-bai', 63, '2017-04-27 13:26:09', '2017-04-27 13:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `type`, `title`, `gender`, `full_name`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`, `updated_user`) VALUES
(3, 1, 'Giá khác quá', 1, 'phạm như huyền châu', 'chaudean.phan912@gmail.com', '01629402700', 'sao giá trên đây 165k mà trên icare bán tận 195k', 1, '2016-10-21 15:15:19', '2016-10-21 15:15:19', 0),
(4, 1, '', 1, 'Hoàng', 'hoangnhpublic@gmail.com', '0918485738', 'Hoang test chức năng', 1, '2017-01-18 18:18:31', '2017-01-18 18:18:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `cmnd` varchar(20) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone`, `email`, `gender`, `status`, `birthday`, `cmnd`, `is_main`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Phan Anh Phuong', 'Dac Lak', '0917492305', 'phuong@gmail.com', 1, 1, '2015-07-08', '024532513254', NULL, 1447761535, 1447762095, 18),
(3, 'Nguyen Thi No', '', '098732523', 'thino@gmail.com', 1, 1, '0000-00-00', NULL, NULL, 1448096272, 1448096272, 18),
(4, 'Nguyen Van A', '', '07683431', '', 1, 1, '0000-00-00', NULL, NULL, 1448096272, 1448101457, 18),
(5, 'Le Thi C', 'tay Ninh', '0897851', '', 2, 1, '0000-00-00', NULL, NULL, 1448096272, 1448101458, 18),
(19, 'Nguyen Huy Hoang', 'afdsgfadsgfas', '09865612', 'hoang@gmail.com', 1, 1, '18-12-2000', NULL, NULL, 1448101513, 1448101540, 18),
(20, 'Nguyen Van Teo', '', '098546352', '', 1, 1, '', NULL, NULL, 1448101592, 1448101600, 18),
(21, 'NGUYEN VAN A', '??', '8667677776', 'vannguyen@gmail.com', 1, 1, '22', '354666', NULL, 1448101669, 1450930944, 18),
(22, 'Tran c Sep', '', '1111111', '', 1, 1, '', '', NULL, 1448102300, 1450930944, 18),
(24, 'Nguyen Hoang Huy', '', '0987883423', '', 1, 1, '', '', NULL, 1448128443, 1450501955, 18),
(30, 'NGUYỄN THỊ MAI', 'Hải Phòng', '01689793388', '??', 2, 1, '13/04/1963', '030151206', 1, 1450929743, 1462931818, 18),
(34, 'TRẦN QUANG BÌNH', 'CẤP NGÀY 25/8 TẠI BÁC GIANG - NGUYÊN QUÁN NAM ĐỊNH', '0916181533', 'vietsth1.11@gmail.com', 1, 1, '4/2/1983', '370917612', 1, 1451359635, 1454378265, 18),
(35, 'TRẦN QUANG BÌNH', 'NAM ĐỊNH', '0916181533', 'vietsth1.11@gmail.com', 1, 1, '4/2/1983', '37091762', 1, 1451457909, 1456467525, 18),
(36, 'LÊ THỊ VÂN', '25/17 CỬU LONG, P.2, Q.TÂN BÌNH', '0982188885', 'vietsth1.11@gmail.com', 2, 1, '1985', '025920635', 1, 1451535667, 1451535667, 18),
(37, 'NGUYỄN BÁ CƯỜNG', '44/4A ĐƯỜNG SỐ 17, P.5, Q.GÒ VẤP, TP.HCM', '0986653878', 'vietsth1.11@gmail.com', 1, 1, '1982', '024974558', 1, 1451535973, 1469610101, 18),
(38, 'VIÊN TRƯƠNG VIỆT QUANG', '2/11 ĐỒ SƠN, F.4, Q.TÂN BÌNH, TP.HCM', '0909703930', 'vietsth1.11@gmail.com', 1, 1, '28-03-1991', '024495338', 1, 1451536161, 1451726171, 18),
(39, 'LÊ THỊ VÂN', '25/17 CỬU LONH, P.2, Q.TÂN BÌNH', '0982188885', 'vietsth1.11@gmail.com', 2, 1, '1985', '025920635', 1, 1451536344, 1453085901, 18),
(40, 'LÊ THỊ VÂN', '25/17 CỬU LONG, P.2, Q.TÂN BÌNH', '0982188885', 'vietsth1.11@gmail.com', 2, 1, '1985', '025920635', 1, 1451536490, 1452761202, 18),
(42, 'NGUYỄN THỊ XUÂN HIỀN', 'ĐÁC LẮC', '0987828882', 'vietsth1.11@gmail.com', 2, 1, '1990', '241114388', 1, 1453085613, 1469673235, 18),
(45, 'LÊ VĂN HÙNG', 'THANH HÓA', '0962825389', 'vietsth1.11@gmail.com', 1, 1, '1989', '173230026', 1, 1453775006, 1453775126, 18),
(46, 'CHI TUYẾT', 'TP.HCM', '0983654919', 'vietsth1.11@gmail.com', 2, 1, '', '', 1, 1454377710, 1461384373, 18),
(47, 'NGUYỄN THỊ THANH TÂM', 'TP.HCM', '0902348815', '', 2, 1, '', '', 1, 1454378783, 1460511955, 18),
(48, 'NGUYỄN NGỌC QUÂN', 'HÀ NỘI', '0942009898', 'vietsth1.11@gmail.com', 1, 1, '26-03-1991', '001091000519', 1, 1456479997, 1462504065, 18),
(49, 'NGUYỄN CHÍ CÔNG', 'Hà Nội', '0949868585', 'vietsth1.11@gmail.com', 1, 1, '1/10/1985', '001085010398', 1, 1456548211, 1456548211, 18),
(50, 'Nguyễn Hữu Thành', '', '0912345656', 'vietsth1.11@gmail.com', 1, 1, '', '1333333333', 1, 1457320325, 1457320325, 18),
(51, 'Lê Đình Tuấn', 'đà lạt', '0903362280', 'vietsth1.11@gmail.com', 1, 1, '23/9/1972', '250399726', 1, 1457320486, 1458721011, 18),
(52, 'Nguyễn Thị Hương Trà', 'Bình Dương', '01257502246', 'vietsth1.11@gmail.com', 2, 1, '04-05-1992', '280998199', 1, 1457320904, 1461384196, 18),
(53, 'Phan Anh', '', '0947829039', 'vietsth1.11@gmail.com', 1, 1, '111281', '1564647327', 1, 1457321130, 1457321130, 18),
(54, 'Đặng Văn Ngữ', '', '063748969', 'vietsth1.11@gmail.com', 1, 1, '26', '25465789', 1, 1458721548, 1458721548, 18),
(55, 'Nguyễn thị Nga', '', '0948700444', 'vietsth1.11@gmail.com', 2, 1, '20', '', 1, 1458806424, 1460512029, 18),
(56, 'Lý hoàng an', 'ninh binh', '095646725', 'vietsth1.11@gmail.com', 1, 1, '24', '535252242', 1, 1458806758, 1458806837, 18),
(57, 'NGUYỄN THỊ HƯƠNG TRÀ', '', '0948856679', 'vietsth1.11@gmail.com', 2, 1, '20-12-1990', '', 1, 1460511881, 1461384119, 18),
(58, 'ĐOÀN THANH HẢI VÂN', 'QUẢNG BÌNH', '0934799812', 'vietsth1.11@gmail.com', 1, 1, '08-12-1990', '201574943', 1, 1460951717, 1462504034, 18),
(59, 'hoang minh hai', '', '09558554335', 'vietsth1.11@gmail.com', 1, 1, '20', '1445686986', 1, 1461384321, 1462503959, 18),
(60, 'nguyen van thieu', 'tp.hcm', '0948327784', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1462504592, 1462504592, 18),
(61, 'hoanh xuan truong', 'sài gòn', '0943886422', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1462504681, 1462504681, 18),
(62, 'nguyen viet long', 'nam đinh', '09345255346', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1462504769, 1465025869, 18),
(63, 'trinh quốc phong', '', '0938566433', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1462931895, 1462931895, 18),
(64, 'nguyễn thành đạt', '', '0909899882', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1463103032, 1463103032, 18),
(65, 'trần công binh', '', '09478889554', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1463103130, 1463103149, 18),
(66, 'Hoàng trung hải', '', '094888545891', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1463728794, 1463728794, 18),
(67, 'trinh mai hương', '', '09748785858', 'vietsth1.11@gmail.com', 2, 1, '', '', 1, 1464244367, 1465025615, 18),
(68, 'hoang thanh hai', '', '0944733633', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1464244438, 1465530250, 18),
(69, 'hua hy van', '', '09769668534', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1464244501, 1465025823, 18),
(70, 'nguyễn mạnh nguyên', '', '0943422512', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1465025694, 1465025694, 18),
(71, 'nguyễn đông triều', '', '09385525623', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1465025780, 1465025780, 18),
(72, 'trần huy tập', '', '09682223490', 'vietsth1.11@gmail.com', 1, 1, '', '', 1, 1465176190, 1465289401, 18),
(73, 'Phạn Thị Châu Nga', '', '0938564458', '', 2, 1, '', '', 1, 1469609762, 1469609843, 18),
(74, 'chau nga', '', '0938564458', '', 2, 1, '', '', 1, 1469673002, 1469673002, 18),
(75, 'thanh nga', '', '0938564458', '', 2, 1, '', '', 1, 1469673098, 1469673098, 18);

-- --------------------------------------------------------

--
-- Table structure for table `custom_link`
--

CREATE TABLE `custom_link` (
  `id` int(11) NOT NULL,
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `block_id` int(11) NOT NULL COMMENT '1 : lien ket noi bat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_link`
--

INSERT INTO `custom_link` (`id`, `link_text`, `link_url`, `display_order`, `block_id`) VALUES
(1, 'Cho thuê nhà riêng', 'http://dothi9.com/cho-thue-nha-rieng.html', 1, 1),
(2, 'Bán căn hộ chung cư', 'http://dothi9.com/ban-can-ho-chung-cu.html', 3, 1),
(3, 'Bán nhà mặt phố', 'http://dothi9.com/ban-nha-mat-pho.html', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `direction`
--

CREATE TABLE `direction` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direction`
--

INSERT INTO `direction` (`id`, `name`, `slug`, `status`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Đông', 'dong', 1, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(2, 'Tây', 'tay', 1, 2, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(3, 'Nam', 'nam', 1, 3, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(4, 'Bắc', 'bac', 1, 4, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(5, 'Đông-Nam', 'dong-nam', 1, 5, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(6, 'Đông-Bắc', 'dong-bac', 1, 6, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(7, 'Tây-Nam', 'tay-nam', 1, 7, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(8, 'Tây-Bắc', 'tay-bac', 1, 8, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(9, 'KXĐ', 'kxd', 1, 9, '2017-04-01 00:00:00', '2017-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_id` int(11) DEFAULT NULL,
  `id_dothi` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `slug`, `meta_id`, `id_dothi`, `city_id`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quận 1', 'quan-1', NULL, 53, 1, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(2, 'Quận 2', 'quan-2', NULL, 54, 1, 2, 1, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(3, 'Quận 3', 'quan-3', NULL, 55, 1, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(4, 'Quận 4', 'quan-4', NULL, 56, 1, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(5, 'Quận 5', 'quan-5', NULL, 57, 1, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(6, 'Quận 6', 'quan-6', NULL, 58, 1, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(7, 'Quận 7', 'quan-7', NULL, 59, 1, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(8, 'Quận 8', 'quan-8', NULL, 60, 1, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(9, 'Quận 9', 'quan-9', NULL, 61, 1, 9, 1, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(10, 'Quận 10', 'quan-10', NULL, 62, 1, 10, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(11, 'Quận 11', 'quan-11', NULL, 63, 1, 11, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(12, 'Quận 12', 'quan-12', NULL, 64, 1, 12, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(13, 'Bình Tân', 'binh-tan', NULL, 65, 1, 13, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(14, 'Bình Thạnh', 'binh-thanh', NULL, 66, 1, 14, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(15, 'Gò Vấp', 'go-vap', NULL, 67, 1, 15, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(16, 'Phú Nhuận', 'phu-nhuan', NULL, 68, 1, 16, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(17, 'Tân Bình', 'tan-binh', NULL, 69, 1, 17, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(18, 'Tân Phú', 'tan-phu', NULL, 70, 1, 18, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(19, 'Thủ Đức', 'thu-duc', NULL, 71, 1, 19, 1, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(20, 'Bình Chánh', 'binh-chanh', NULL, 72, 1, 20, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(21, 'Cần Giờ', 'can-gio', NULL, 73, 1, 21, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(22, 'Củ Chi', 'cu-chi', NULL, 74, 1, 22, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(23, 'Hóc Môn', 'hoc-mon', NULL, 75, 1, 23, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(24, 'Nhà Bè', 'nha-be', NULL, 76, 1, 24, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(25, 'Hoàn Kiếm', 'hoan-kiem', NULL, 1, 2, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(26, 'Ba Đình', 'ba-dinh', NULL, 2, 2, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(27, 'Đống Đa', 'dong-da', NULL, 3, 2, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(28, 'Hai Bà Trưng', 'hai-ba-trung', NULL, 4, 2, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(29, 'Thanh Xuân', 'thanh-xuan', NULL, 5, 2, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(30, 'Tây Hồ', 'tay-ho', NULL, 6, 2, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(31, 'Cầu Giấy', 'cau-giay', NULL, 7, 2, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(32, 'Hoàng Mai', 'hoang-mai', NULL, 8, 2, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(33, 'Long Biên', 'long-bien', NULL, 9, 2, 9, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(34, 'Đông Anh', 'dong-anh', NULL, 10, 2, 10, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(35, 'Gia Lâm', 'gia-lam', NULL, 11, 2, 11, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(36, 'Sóc Sơn', 'soc-son', NULL, 12, 2, 12, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(37, 'Thanh Trì', 'thanh-tri', NULL, 13, 2, 13, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(38, 'Bắc Từ Liêm', 'bac-tu-liem', NULL, 718, 2, 14, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(39, 'Nam Từ Liêm', 'nam-tu-liem', NULL, 14, 2, 15, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(40, 'Hà Đông', 'ha-dong', NULL, 15, 2, 16, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(41, 'Sơn Tây', 'son-tay', NULL, 16, 2, 17, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(42, 'Mê Linh', 'me-linh', NULL, 17, 2, 18, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(43, 'Ba Vì', 'ba-vi', NULL, 18, 2, 19, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(44, 'Phúc Thọ', 'phuc-tho', NULL, 19, 2, 20, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(45, 'Đan Phượng', 'dan-phuong', NULL, 20, 2, 21, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(46, 'Hoài Đức', 'hoai-duc', NULL, 21, 2, 22, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(47, 'Quốc Oai', 'quoc-oai', NULL, 22, 2, 23, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(48, 'Thạch Thất', 'thach-that', NULL, 23, 2, 24, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(49, 'Chương Mỹ', 'chuong-my', NULL, 24, 2, 25, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(50, 'Thanh Oai', 'thanh-oai', NULL, 25, 2, 26, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(51, 'Thường Tín', 'thuong-tin', NULL, 26, 2, 27, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(52, 'Phú Xuyên', 'phu-xuyen', NULL, 27, 2, 28, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(53, 'Ứng Hòa', 'ung-hoa', NULL, 28, 2, 29, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(54, 'Mỹ Đức', 'my-duc', NULL, 29, 2, 30, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(55, 'Bến Cát', 'ben-cat', NULL, 156, 3, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(56, 'Dầu Tiếng', 'dau-tieng', NULL, 157, 3, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(57, 'Dĩ An', 'di-an', NULL, 158, 3, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(58, 'Phú Giáo', 'phu-giao', NULL, 159, 3, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(59, 'Tân Uyên', 'tan-uyen', NULL, 160, 3, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(60, 'Thuận An', 'thuan-an', NULL, 161, 3, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(61, 'Thủ Dầu Một', 'thu-dau-mot', NULL, 163, 3, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(62, 'Bàu Bàng', 'bau-bang', NULL, 716, 3, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(63, 'Cẩm Lệ', 'cam-le', NULL, 45, 4, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(64, 'Hải Châu', 'hai-chau', NULL, 46, 4, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(65, 'Liên Chiểu', 'lien-chieu', NULL, 47, 4, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(66, 'Ngũ Hành Sơn', 'ngu-hanh-son', NULL, 48, 4, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(67, 'Sơn Trà', 'son-tra', NULL, 49, 4, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(68, 'Thanh Khê', 'thanh-khe', NULL, 50, 4, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(69, 'Hòa Vang', 'hoa-vang', NULL, 51, 4, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(70, 'Hoàng Sa', 'hoang-sa', NULL, 52, 4, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(71, 'Đồ Sơn', 'do-son', NULL, 30, 5, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(72, 'Dương Kinh', 'duong-kinh', NULL, 31, 5, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(73, 'Hải An', 'hai-an', NULL, 32, 5, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(74, 'Hồng Bàng', 'hong-bang', NULL, 33, 5, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(75, 'Kiến An', 'kien-an', NULL, 34, 5, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(76, 'Lê Chân', 'le-chan', NULL, 35, 5, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(77, 'Ngô Quyền', 'ngo-quyen', NULL, 36, 5, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(78, 'An Dương', 'an-duong', NULL, 37, 5, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(79, 'An Lão', 'an-lao', NULL, 38, 5, 9, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(80, 'Bạch Long Vĩ', 'bach-long-vi', NULL, 39, 5, 10, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(81, 'Cát Hải', 'cat-hai', NULL, 40, 5, 11, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(82, 'Kiến Thụy', 'kien-thuy', NULL, 41, 5, 12, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(83, 'Thủy Nguyên', 'thuy-nguyen', NULL, 42, 5, 13, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(84, 'Tiên Lãng', 'tien-lang', NULL, 43, 5, 14, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(85, 'Vĩnh Bảo', 'vinh-bao', NULL, 44, 5, 15, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(86, 'Bến Lức', 'ben-luc', NULL, 415, 6, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(87, 'Cần Đước', 'can-duoc', NULL, 416, 6, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(88, 'Cần Giuộc', 'can-giuoc', NULL, 417, 6, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(89, 'Châu Thành', 'chau-thanh', NULL, 418, 6, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(90, 'Đức Hòa', 'duc-hoa', NULL, 419, 6, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(91, 'Đức Huệ', 'duc-hue', NULL, 420, 6, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(92, 'Mộc Hóa', 'moc-hoa', NULL, 421, 6, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(93, 'Tân Hưng', 'tan-hung', NULL, 422, 6, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(94, 'Tân Thạnh', 'tan-thanh', NULL, 423, 6, 9, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(95, 'Tân Trụ', 'tan-tru', NULL, 424, 6, 10, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(96, 'Thạnh Hóa', 'thanh-hoa', NULL, 425, 6, 11, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(97, 'Thủ Thừa', 'thu-thua', NULL, 426, 6, 12, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(98, 'Vĩnh Hưng', 'vinh-hung', NULL, 427, 6, 13, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(99, 'Tân An', 'tan-an', NULL, 429, 6, 14, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(100, 'Kiến Tường', 'kien-tuong', NULL, 724, 6, 15, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(101, 'Châu Đức', 'chau-duc', NULL, 96, 7, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(102, 'Côn Đảo', 'con-dao', NULL, 97, 7, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(103, 'Đất Đỏ', 'dat-do', NULL, 98, 7, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(104, 'Long Điền', 'long-dien', NULL, 99, 7, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(105, 'Tân Thành', 'tan-thanh', NULL, 100, 7, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(106, 'Xuyên Mộc', 'xuyen-moc', NULL, 101, 7, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(107, 'Vũng Tàu', 'vung-tau', NULL, 102, 7, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(108, 'Bà Rịa', 'ba-ria', NULL, 103, 7, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(109, 'An Phú', 'an-phu', NULL, 85, 8, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(110, 'Châu Phú', 'chau-phu', NULL, 86, 8, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(111, 'Châu Thành', 'chau-thanh', NULL, 87, 8, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(112, 'Chợ Mới', 'cho-moi', NULL, 88, 8, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(113, 'Tri Tôn', 'tri-ton', NULL, 89, 8, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(114, 'Phú Tân', 'phu-tan', NULL, 90, 8, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(115, 'Tân Châu', 'tan-chau', NULL, 91, 8, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(116, 'Thoại Sơn', 'thoai-son', NULL, 92, 8, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(117, 'Tịnh Biên', 'tinh-bien', NULL, 93, 8, 9, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(118, 'Long Xuyên', 'long-xuyen', NULL, 94, 8, 10, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(119, 'Châu Đốc', 'chau-doc', NULL, 95, 8, 11, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(120, 'Hiệp Hòa', 'hiep-hoa', NULL, 104, 9, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(121, 'Lạng Giang', 'lang-giang', NULL, 105, 9, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(122, 'Lục Nam', 'luc-nam', NULL, 106, 9, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(123, 'Lục Ngạn', 'luc-ngan', NULL, 107, 9, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(124, 'Sơn Động', 'son-dong', NULL, 108, 9, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(125, 'Tân Yên', 'tan-yen', NULL, 109, 9, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(126, 'Việt Yên', 'viet-yen', NULL, 110, 9, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(127, 'Yên Dũng', 'yen-dung', NULL, 111, 9, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(128, 'Yên Thế', 'yen-the', NULL, 112, 9, 9, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(129, 'Bắc Giang', 'bac-giang', NULL, 113, 9, 10, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(130, 'Ba Bể', 'ba-be', NULL, 114, 10, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(131, 'Bạch Thông', 'bach-thong', NULL, 115, 10, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(132, 'Chợ Đồn', 'cho-don', NULL, 116, 10, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(133, 'Chợ Mới', 'cho-moi', NULL, 117, 10, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(134, 'Na Rì', 'na-ri', NULL, 118, 10, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(135, 'Ngân Sơn', 'ngan-son', NULL, 119, 10, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(136, 'Pác Nặm', 'pac-nam', NULL, 120, 10, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(137, 'Bắc Kạn', 'bac-kan', NULL, 121, 10, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(138, 'Đông Hải', 'dong-hai', NULL, 122, 11, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(139, 'Giá Rai', 'gia-rai', NULL, 123, 11, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(140, 'Hòa Bình', 'hoa-binh', NULL, 124, 11, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(141, 'Hồng Dân', 'hong-dan', NULL, 125, 11, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(142, 'Phước Long', 'phuoc-long', NULL, 126, 11, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(143, 'Vĩnh Lợi', 'vinh-loi', NULL, 127, 11, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(144, 'Bạc Liêu', 'bac-lieu', NULL, 128, 11, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(145, 'Gia Bình', 'gia-binh', NULL, 129, 12, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(146, 'Lương Tài', 'luong-tai', NULL, 130, 12, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(147, 'Quế Võ', 'que-vo', NULL, 131, 12, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(148, 'Thuận Thành', 'thuan-thanh', NULL, 132, 12, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(149, 'Tiên Du', 'tien-du', NULL, 133, 12, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(150, 'Từ Sơn', 'tu-son', NULL, 134, 12, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(151, 'Yên Phong', 'yen-phong', NULL, 135, 12, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(152, 'Bắc Ninh', 'bac-ninh', NULL, 136, 12, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(153, 'Ba Tri', 'ba-tri', NULL, 137, 13, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(154, 'Bình Đại', 'binh-dai', NULL, 138, 13, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(155, 'Châu Thành', 'chau-thanh', NULL, 139, 13, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(156, 'Chợ Lách', 'cho-lach', NULL, 140, 13, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(157, 'Giồng Trôm', 'giong-trom', NULL, 141, 13, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(158, 'Thạnh Phú', 'thanh-phu', NULL, 143, 13, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(159, 'Bến Tre', 'ben-tre', NULL, 144, 13, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(160, 'Mỏ Cày Bắc', 'mo-cay-bac', NULL, 705, 13, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(161, 'Mỏ Cày Nam', 'mo-cay-nam', NULL, 706, 13, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(162, 'An Lão', 'an-lao', NULL, 145, 14, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(163, 'An Nhơn', 'an-nhon', NULL, 146, 14, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(164, 'Hoài Ân', 'hoai-an', NULL, 147, 14, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(165, 'Hoài Nhơn', 'hoai-nhon', NULL, 148, 14, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(166, 'Phù Cát', 'phu-cat', NULL, 149, 14, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(167, 'Phù Mỹ', 'phu-my', NULL, 150, 14, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(168, 'Tây Sơn', 'tay-son', NULL, 151, 14, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(169, 'Tuy Phước', 'tuy-phuoc', NULL, 152, 14, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(170, 'Vân Canh', 'van-canh', NULL, 153, 14, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(171, 'Vĩnh Thạnh', 'vinh-thanh', NULL, 154, 14, 10, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(172, 'Quy Nhơn', 'quy-nhon', NULL, 155, 14, 11, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(173, 'Bình Long', 'binh-long', NULL, 164, 15, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(174, 'Bù Đăng', 'bu-dang', NULL, 165, 15, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(175, 'Bù Đốp', 'bu-dop', NULL, 166, 15, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(176, 'Chơn Thành', 'chon-thanh', NULL, 167, 15, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(177, 'Đồng Phú', 'dong-phu', NULL, 168, 15, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(178, 'Lộc Ninh', 'loc-ninh', NULL, 169, 15, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(179, 'Phước Long', 'phuoc-long', NULL, 170, 15, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(180, 'Đồng Xoài', 'dong-xoai', NULL, 171, 15, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(181, 'Hớn Quản', 'hon-quan', NULL, 698, 15, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(182, 'Bù Gia Mập', 'bu-gia-map', NULL, 699, 15, 10, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(183, 'Bắc Bình', 'bac-binh', NULL, 172, 16, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(184, 'Đảo Phú Quý', 'dao-phu-quy', NULL, 173, 16, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(185, 'Đức Linh', 'duc-linh', NULL, 174, 16, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(186, 'Hàm Tân', 'ham-tan', NULL, 175, 16, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(187, 'Hàm Thuận Bắc', 'ham-thuan-bac', NULL, 176, 16, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(188, 'Hàm Thuận Nam', 'ham-thuan-nam', NULL, 177, 16, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(189, 'Tánh Linh', 'tanh-linh', NULL, 178, 16, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(190, 'Tuy Phong', 'tuy-phong', NULL, 179, 16, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(191, 'Phan Thiết', 'phan-thiet', NULL, 181, 16, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(192, 'La Gi', 'la-gi', NULL, 182, 16, 10, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(193, 'Cái Nước', 'cai-nuoc', NULL, 183, 17, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(194, 'Đầm Dơi', 'dam-doi', NULL, 184, 17, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(195, 'Năm Căn', 'nam-can', NULL, 185, 17, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(196, 'Ngọc Hiển', 'ngoc-hien', NULL, 186, 17, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(197, 'Phú Tân', 'phu-tan', NULL, 187, 17, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(198, 'Thới Bình', 'thoi-binh', NULL, 188, 17, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(199, 'Trần Văn Thời', 'tran-van-thoi', NULL, 189, 17, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(200, 'U Minh', 'u-minh', NULL, 190, 17, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(201, 'Cà Mau', 'ca-mau', NULL, 191, 17, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(202, 'Cờ Đỏ', 'co-do', NULL, 77, 18, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(203, 'Phong Điền', 'phong-dien', NULL, 78, 18, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(204, 'Thốt Nốt', 'thot-not', NULL, 79, 18, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(205, 'Vĩnh Thạnh', 'vinh-thanh', NULL, 80, 18, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(206, 'Bình Thủy', 'binh-thuy', NULL, 81, 18, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(207, 'Cái Răng', 'cai-rang', NULL, 82, 18, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(208, 'Ninh Kiều', 'ninh-kieu', NULL, 83, 18, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(209, 'Ô Môn', 'o-mon', NULL, 84, 18, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(210, ' Thới Lai', 'thoi-lai', NULL, 704, 18, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(211, 'Bảo Lạc', 'bao-lac', NULL, 192, 19, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(212, 'Bảo Lâm', 'bao-lam', NULL, 193, 19, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(213, 'Hạ Lang', 'ha-lang', NULL, 194, 19, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(214, 'Hà Quảng', 'ha-quang', NULL, 195, 19, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(215, 'Hòa An', 'hoa-an', NULL, 196, 19, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(216, 'Nguyên Bình', 'nguyen-binh', NULL, 197, 19, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(217, 'Phục Hòa', 'phuc-hoa', NULL, 198, 19, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(218, 'Quảng Uyên', 'quang-uyen', NULL, 199, 19, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(219, 'Thạch An', 'thach-an', NULL, 200, 19, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(220, 'Thông Nông', 'thong-nong', NULL, 201, 19, 10, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(221, 'Trà Lĩnh', 'tra-linh', NULL, 202, 19, 11, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(222, 'Trùng Khánh', 'trung-khanh', NULL, 203, 19, 12, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(223, 'Cao Bằng', 'cao-bang', NULL, 204, 19, 13, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(224, 'Buôn Đôn', 'buon-don', NULL, 205, 20, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(225, 'Cư Kuin', 'cu-kuin', NULL, 206, 20, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(226, 'Cư M''gar', 'cu-mgar', NULL, 207, 20, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(227, 'Ea H''Leo', 'ea-hleo', NULL, 208, 20, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(228, 'Ea Kar', 'ea-kar', NULL, 209, 20, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(229, 'Ea Súp', 'ea-sup', NULL, 210, 20, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(230, 'Krông Ana', 'krong-ana', NULL, 211, 20, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(231, 'Krông Bông', 'krong-bong', NULL, 212, 20, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(232, 'Krông Buk', 'krong-buk', NULL, 213, 20, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(233, 'Krông Năng', 'krong-nang', NULL, 214, 20, 10, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(234, 'Krông Pắc', 'krong-pac', NULL, 215, 20, 11, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(235, 'Lăk', 'lak', NULL, 216, 20, 12, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(236, 'M''Đrăk', 'mdrak', NULL, 217, 20, 13, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(237, 'Buôn Ma Thuột', 'buon-ma-thuot', NULL, 218, 20, 14, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(238, 'Buôn Hồ', 'buon-ho', NULL, 697, 20, 15, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(239, 'Cư Jút', 'cu-jut', NULL, 219, 21, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(240, 'Dăk GLong', 'dak-glong', NULL, 220, 21, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(241, 'Dăk Mil', 'dak-mil', NULL, 221, 21, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(242, 'Dăk R''Lấp', 'dak-rlap', NULL, 222, 21, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(243, 'Dăk Song', 'dak-song', NULL, 223, 21, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(244, 'Krông Nô', 'krong-no', NULL, 224, 21, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(245, 'Tuy Đức', 'tuy-duc', NULL, 225, 21, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(246, 'Gia Nghĩa', 'gia-nghia', NULL, 226, 21, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(247, 'Điện Biên', 'dien-bien', NULL, 227, 22, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(248, 'Điện Biên Đông', 'dien-bien-dong', NULL, 228, 22, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(249, 'Mường Ảng', 'muong-ang', NULL, 229, 22, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(250, 'Mường Chà', 'muong-cha', NULL, 230, 22, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(251, 'Mường Nhé', 'muong-nhe', NULL, 231, 22, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(252, 'Tủa Chùa', 'tua-chua', NULL, 232, 22, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(253, 'Tuần Giáo', 'tuan-giao', NULL, 233, 22, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(254, 'Điện Biên Phủ', 'dien-bien-phu', NULL, 234, 22, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(255, 'Mường Lay', 'muong-lay', NULL, 235, 22, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(256, 'Nậm Pồ', 'nam-po', NULL, 711, 22, 10, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(257, 'Cẩm Mỹ', 'cam-my', NULL, 236, 23, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(258, 'Định Quán', 'dinh-quan', NULL, 237, 23, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(259, 'Long Thành', 'long-thanh', NULL, 238, 23, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(260, 'Nhơn Trạch', 'nhon-trach', NULL, 239, 23, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(261, 'Tân Phú', 'tan-phu', NULL, 240, 23, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(262, 'Thống Nhất', 'thong-nhat', NULL, 241, 23, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(263, 'Trảng Bom', 'trang-bom', NULL, 242, 23, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(264, 'Vĩnh Cửu', 'vinh-cuu', NULL, 243, 23, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(265, 'Xuân Lộc', 'xuan-loc', NULL, 244, 23, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(266, 'Biên Hòa', 'bien-hoa', NULL, 245, 23, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(267, 'Long Khánh', 'long-khanh', NULL, 246, 23, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(268, 'Huyện Cao Lãnh', 'huyen-cao-lanh', NULL, 247, 24, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(269, 'Châu Thành', 'chau-thanh', NULL, 248, 24, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(270, 'Thị xã Hồng Ngự', 'thi-xa-hong-ngu', NULL, 249, 24, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(271, 'Lai Vung', 'lai-vung', NULL, 250, 24, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(272, 'Lấp Vò', 'lap-vo', NULL, 251, 24, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(273, 'Tam Nông', 'tam-nong', NULL, 252, 24, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(274, 'Tân Hồng', 'tan-hong', NULL, 253, 24, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(275, 'Thanh Bình', 'thanh-binh', NULL, 254, 24, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(276, 'Tháp Mười', 'thap-muoi', NULL, 255, 24, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(277, 'Sa Đéc', 'sa-dec', NULL, 257, 24, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(278, 'Tp. Cao Lãnh', 'tp-cao-lanh', NULL, 721, 24, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(279, 'Huyện Hồng Ngự', 'huyen-hong-ngu', NULL, 722, 24, 12, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(280, 'AYun Pa', 'ayun-pa', NULL, 258, 25, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(281, 'Chư Păh', 'chu-pah', NULL, 259, 25, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(282, 'Chư Sê', 'chu-se', NULL, 260, 25, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(283, 'ChưPRông', 'chuprong', NULL, 261, 25, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(284, 'Đăk Đoa', 'dak-doa', NULL, 262, 25, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(285, 'Đăk Pơ', 'dak-po', NULL, 263, 25, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(286, 'Đức Cơ', 'duc-co', NULL, 264, 25, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(287, 'Ia Grai', 'ia-grai', NULL, 265, 25, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(288, 'Ia Pa', 'ia-pa', NULL, 266, 25, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(289, 'KBang', 'kbang', NULL, 267, 25, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(290, 'Kông Chro', 'kong-chro', NULL, 268, 25, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(291, 'Krông Pa', 'krong-pa', NULL, 269, 25, 12, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(292, 'Mang Yang', 'mang-yang', NULL, 270, 25, 13, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(293, 'Phú Thiện', 'phu-thien', NULL, 271, 25, 14, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(294, 'Plei Ku', 'plei-ku', NULL, 272, 25, 15, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(295, 'An Khê', 'an-khe', NULL, 273, 25, 16, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(296, 'Chư Pưh', 'chu-puh', NULL, 710, 25, 17, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(297, 'Bắc Mê', 'bac-me', NULL, 274, 26, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(298, 'Bắc Quang', 'bac-quang', NULL, 275, 26, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(299, 'Đồng Văn', 'dong-van', NULL, 276, 26, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(300, 'Hoàng Su Phì', 'hoang-su-phi', NULL, 277, 26, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(301, 'Mèo Vạc', 'meo-vac', NULL, 278, 26, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(302, 'Quản Bạ', 'quan-ba', NULL, 279, 26, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(303, 'Quang Bình', 'quang-binh', NULL, 280, 26, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(304, 'Vị Xuyên', 'vi-xuyen', NULL, 281, 26, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(305, 'Xín Mần', 'xin-man', NULL, 282, 26, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(306, 'Yên Minh', 'yen-minh', NULL, 283, 26, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(307, 'Hà Giang', 'ha-giang', NULL, 284, 26, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(308, 'Bình Lục', 'binh-luc', NULL, 285, 27, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(309, 'Duy Tiên', 'duy-tien', NULL, 286, 27, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(310, 'Kim Bảng', 'kim-bang', NULL, 287, 27, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(311, 'Lý Nhân', 'ly-nhan', NULL, 288, 27, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(312, 'Thanh Liêm', 'thanh-liem', NULL, 289, 27, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(313, 'Phủ Lý', 'phu-ly', NULL, 290, 27, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(314, 'Cẩm Xuyên', 'cam-xuyen', NULL, 291, 28, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(315, 'Can Lộc', 'can-loc', NULL, 292, 28, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(316, 'Đức Thọ', 'duc-tho', NULL, 293, 28, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(317, 'Hương Khê', 'huong-khe', NULL, 294, 28, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(318, 'Hương Sơn', 'huong-son', NULL, 295, 28, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(319, 'Kỳ Anh', 'ky-anh', NULL, 296, 28, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(320, 'Lộc Hà', 'loc-ha', NULL, 297, 28, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(321, 'Nghi Xuân', 'nghi-xuan', NULL, 298, 28, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(322, 'Thạch Hà', 'thach-ha', NULL, 299, 28, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(323, 'Vũ Quang', 'vu-quang', NULL, 300, 28, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(324, 'Hà Tĩnh', 'ha-tinh', NULL, 301, 28, 11, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(325, 'Hồng Lĩnh', 'hong-linh', NULL, 302, 28, 12, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(326, 'Bình Giang', 'binh-giang', NULL, 303, 29, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(327, 'Cẩm Giàng', 'cam-giang', NULL, 304, 29, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(328, 'Chí Linh', 'chi-linh', NULL, 305, 29, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(329, 'Gia Lộc', 'gia-loc', NULL, 306, 29, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(330, 'Kim Thành', 'kim-thanh', NULL, 307, 29, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(331, 'Kinh Môn', 'kinh-mon', NULL, 308, 29, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(332, 'Nam Sách', 'nam-sach', NULL, 309, 29, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(333, 'Ninh Giang', 'ninh-giang', NULL, 310, 29, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(334, 'Thanh Hà', 'thanh-ha', NULL, 311, 29, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(335, 'Thanh Miện', 'thanh-mien', NULL, 312, 29, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(336, 'Tứ Kỳ', 'tu-ky', NULL, 313, 29, 11, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(337, 'Hải Dương', 'hai-duong', NULL, 314, 29, 12, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(338, 'Châu Thành', 'chau-thanh', NULL, 315, 30, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(339, 'Châu Thành A', 'chau-thanh-a', NULL, 316, 30, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(340, 'Long Mỹ', 'long-my', NULL, 317, 30, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(341, 'Phụng Hiệp', 'phung-hiep', NULL, 318, 30, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(342, 'Vị Thủy', 'vi-thuy', NULL, 319, 30, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(343, 'Ngã Bảy', 'nga-bay', NULL, 320, 30, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(344, 'Vị Thanh', 'vi-thanh', NULL, 321, 30, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(345, 'Cao Phong', 'cao-phong', NULL, 322, 31, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(346, 'Đà Bắc', 'da-bac', NULL, 323, 31, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(347, 'Kim Bôi', 'kim-boi', NULL, 324, 31, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(348, 'Kỳ Sơn', 'ky-son', NULL, 325, 31, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(349, 'Lạc Sơn', 'lac-son', NULL, 326, 31, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(350, 'Lạc Thủy', 'lac-thuy', NULL, 327, 31, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(351, 'Lương Sơn', 'luong-son', NULL, 328, 31, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(352, 'Mai Châu', 'mai-chau', NULL, 329, 31, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(353, 'Tân Lạc', 'tan-lac', NULL, 330, 31, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(354, 'Yên Thủy', 'yen-thuy', NULL, 331, 31, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(355, 'Hòa Bình', 'hoa-binh', NULL, 332, 31, 11, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(356, 'Ân Thi', 'an-thi', NULL, 333, 32, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(357, 'Khoái Châu', 'khoai-chau', NULL, 334, 32, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(358, 'Kim Động', 'kim-dong', NULL, 335, 32, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(359, 'Mỹ Hào', 'my-hao', NULL, 336, 32, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(360, 'Phù Cừ', 'phu-cu', NULL, 337, 32, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(361, 'Tiên Lữ', 'tien-lu', NULL, 338, 32, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(362, 'Văn Giang', 'van-giang', NULL, 339, 32, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(363, 'Văn Lâm', 'van-lam', NULL, 340, 32, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(364, 'Yên Mỹ', 'yen-my', NULL, 341, 32, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(365, 'Hưng Yên', 'hung-yen', NULL, 342, 32, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(366, 'Cam Lâm', 'cam-lam', NULL, 343, 33, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(367, 'Diên Khánh', 'dien-khanh', NULL, 344, 33, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(368, 'Khánh Sơn', 'khanh-son', NULL, 345, 33, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(369, 'Khánh Vĩnh', 'khanh-vinh', NULL, 346, 33, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(370, 'Ninh Hòa', 'ninh-hoa', NULL, 347, 33, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(371, 'Trường Sa', 'truong-sa', NULL, 348, 33, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(372, 'Vạn Ninh', 'van-ninh', NULL, 349, 33, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(373, 'Nha Trang', 'nha-trang', NULL, 350, 33, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(374, 'Cam Ranh', 'cam-ranh', NULL, 351, 33, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(375, 'An Biên', 'an-bien', NULL, 352, 34, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(376, 'An Minh', 'an-minh', NULL, 353, 34, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(377, 'Châu Thành', 'chau-thanh', NULL, 354, 34, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(378, 'Giồng Riềng', 'giong-rieng', NULL, 355, 34, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(379, 'Gò Quao', 'go-quao', NULL, 356, 34, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(380, 'Hòn Đất', 'hon-dat', NULL, 357, 34, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(381, 'Kiên Hải', 'kien-hai', NULL, 358, 34, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(382, 'Kiên Lương', 'kien-luong', NULL, 359, 34, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(383, 'Phú Quốc', 'phu-quoc', NULL, 360, 34, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(384, 'Tân Hiệp', 'tan-hiep', NULL, 361, 34, 10, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(385, 'U minh Thượng', 'u-minh-thuong', NULL, 362, 34, 11, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(386, 'Vĩnh Thuận', 'vinh-thuan', NULL, 363, 34, 12, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(387, 'Rạch Giá', 'rach-gia', NULL, 364, 34, 13, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(388, 'Hà Tiên', 'ha-tien', NULL, 365, 34, 14, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(389, 'Giang Thành', 'giang-thanh', NULL, 723, 34, 15, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(390, 'Đăk Glei', 'dak-glei', NULL, 366, 35, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(391, 'Đăk Hà', 'dak-ha', NULL, 367, 35, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(392, 'Đăk Tô', 'dak-to', NULL, 368, 35, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(393, 'Kon Plông', 'kon-plong', NULL, 369, 35, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(394, 'Kon Rẫy', 'kon-ray', NULL, 370, 35, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(395, 'Ngọc Hồi', 'ngoc-hoi', NULL, 371, 35, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(396, 'Sa Thầy', 'sa-thay', NULL, 372, 35, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(397, 'Tu Mơ Rông', 'tu-mo-rong', NULL, 373, 35, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(398, 'KonTum', 'kontum', NULL, 374, 35, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(399, 'Mường Tè', 'muong-te', NULL, 375, 36, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(400, 'Phong Thổ', 'phong-tho', NULL, 376, 36, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(401, 'Sìn Hồ', 'sin-ho', NULL, 377, 36, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(402, 'Tam Đường', 'tam-duong', NULL, 378, 36, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(403, 'Than Uyên', 'than-uyen', NULL, 379, 36, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(404, 'Lai Châu', 'lai-chau', NULL, 380, 36, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(405, 'Tân Uyên', 'tan-uyen', NULL, 691, 36, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(406, 'Nậm Nhùn', 'nam-nhun', NULL, 709, 36, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(407, 'Bảo Lâm', 'bao-lam', NULL, 381, 37, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(408, 'Cát Tiên', 'cat-tien', NULL, 382, 37, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(409, 'Đạ Huoai', 'da-huoai', NULL, 383, 37, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(410, 'Đạ Tẻh', 'da-teh', NULL, 384, 37, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(411, 'Đam Rông', 'dam-rong', NULL, 385, 37, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(412, 'Di Linh', 'di-linh', NULL, 386, 37, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(413, 'Đơn Dương', 'don-duong', NULL, 387, 37, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(414, 'Đức Trọng', 'duc-trong', NULL, 388, 37, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(415, 'Lạc Dương', 'lac-duong', NULL, 389, 37, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(416, 'Lâm Hà', 'lam-ha', NULL, 390, 37, 10, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(417, 'Đà Lạt', 'da-lat', NULL, 391, 37, 11, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(418, 'Bảo Lộc', 'bao-loc', NULL, 392, 37, 12, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(419, 'Bắc Sơn', 'bac-son', NULL, 393, 38, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(420, 'Bình Gia', 'binh-gia', NULL, 394, 38, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(421, 'Cao Lộc', 'cao-loc', NULL, 395, 38, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(422, 'Chi Lăng', 'chi-lang', NULL, 396, 38, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(423, 'Đình Lập', 'dinh-lap', NULL, 397, 38, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(424, 'Hữu Lũng', 'huu-lung', NULL, 398, 38, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(425, 'Lộc Bình', 'loc-binh', NULL, 399, 38, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(426, 'Tràng Định', 'trang-dinh', NULL, 400, 38, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(427, 'Văn Lãng', 'van-lang', NULL, 401, 38, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(428, 'Văn Quan', 'van-quan', NULL, 402, 38, 10, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(429, 'Lạng Sơn', 'lang-son', NULL, 403, 38, 11, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(430, 'Bắc Hà', 'bac-ha', NULL, 404, 39, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(431, 'Bảo Thắng', 'bao-thang', NULL, 405, 39, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(432, 'Bảo Yên', 'bao-yen', NULL, 406, 39, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(433, 'Bát Xát', 'bat-xat', NULL, 407, 39, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(434, 'Mường Khương', 'muong-khuong', NULL, 408, 39, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(435, 'Sa Pa', 'sa-pa', NULL, 409, 39, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(436, 'Văn Bàn', 'van-ban', NULL, 410, 39, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(437, 'Xi Ma Cai', 'xi-ma-cai', NULL, 411, 39, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(438, 'Lào Cai', 'lao-cai', NULL, 414, 39, 9, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(439, 'Giao Thủy', 'giao-thuy', NULL, 430, 40, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(440, 'Hải Hậu', 'hai-hau', NULL, 431, 40, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(441, 'Mỹ Lộc', 'my-loc', NULL, 432, 40, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(442, 'Nam Trực', 'nam-truc', NULL, 433, 40, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(443, 'Nghĩa Hưng', 'nghia-hung', NULL, 434, 40, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(444, 'Trực Ninh', 'truc-ninh', NULL, 435, 40, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(445, 'Vụ Bản', 'vu-ban', NULL, 436, 40, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(446, 'Xuân Trường', 'xuan-truong', NULL, 437, 40, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(447, 'Ý Yên', 'y-yen', NULL, 438, 40, 9, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(448, 'Nam Định', 'nam-dinh', NULL, 439, 40, 10, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(449, 'Anh Sơn', 'anh-son', NULL, 440, 41, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(450, 'Con Cuông', 'con-cuong', NULL, 441, 41, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(451, 'Diễn Châu', 'dien-chau', NULL, 442, 41, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(452, 'Đô Lương', 'do-luong', NULL, 443, 41, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(453, 'Hưng Nguyên', 'hung-nguyen', NULL, 444, 41, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(454, 'Kỳ Sơn', 'ky-son', NULL, 445, 41, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(455, 'Nam Đàn', 'nam-dan', NULL, 446, 41, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(456, 'Nghi Lộc', 'nghi-loc', NULL, 447, 41, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(457, 'Nghĩa Đàn', 'nghia-dan', NULL, 448, 41, 9, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(458, 'Quế Phong', 'que-phong', NULL, 449, 41, 10, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(459, 'Quỳ Châu', 'quy-chau', NULL, 450, 41, 11, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(460, 'Quỳ Hợp', 'quy-hop', NULL, 451, 41, 12, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(461, 'Quỳnh Lưu', 'quynh-luu', NULL, 452, 41, 13, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(462, 'Tân Kỳ', 'tan-ky', NULL, 453, 41, 14, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(463, 'Thanh Chương', 'thanh-chuong', NULL, 454, 41, 15, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(464, 'Tương Dương', 'tuong-duong', NULL, 455, 41, 16, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(465, 'Yên Thành', 'yen-thanh', NULL, 456, 41, 17, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(466, 'Vinh', 'vinh', NULL, 457, 41, 18, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(467, 'Cửa Lò', 'cua-lo', NULL, 458, 41, 19, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(468, 'Thái Hòa', 'thai-hoa', NULL, 692, 41, 20, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(469, 'Hoàng Mai', 'hoang-mai', NULL, 725, 41, 21, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(470, 'Gia Viễn', 'gia-vien', NULL, 459, 42, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(471, 'Hoa Lư', 'hoa-lu', NULL, 460, 42, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(472, 'Kim Sơn', 'kim-son', NULL, 461, 42, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(473, 'Nho Quan', 'nho-quan', NULL, 462, 42, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(474, 'Yên Khánh', 'yen-khanh', NULL, 463, 42, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(475, 'Yên Mô', 'yen-mo', NULL, 464, 42, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(476, 'Ninh Bình', 'ninh-binh', NULL, 465, 42, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(477, 'Tam Điệp', 'tam-diep', NULL, 466, 42, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(478, 'Bác Ái', 'bac-ai', NULL, 467, 43, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(479, 'Ninh Hải', 'ninh-hai', NULL, 468, 43, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(480, 'Ninh Phước', 'ninh-phuoc', NULL, 469, 43, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(481, 'Ninh Sơn', 'ninh-son', NULL, 470, 43, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(482, 'Thuận Bắc', 'thuan-bac', NULL, 471, 43, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(483, 'Phan Rang - Tháp Chàm', 'phan-rang-thap-cham', NULL, 472, 43, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(484, 'Thuận Nam', 'thuan-nam', NULL, 693, 43, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(485, 'Cẩm Khê', 'cam-khe', NULL, 473, 44, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(486, 'Đoan Hùng', 'doan-hung', NULL, 474, 44, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(487, 'Hạ Hòa', 'ha-hoa', NULL, 475, 44, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(488, 'Lâm Thao', 'lam-thao', NULL, 476, 44, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(489, 'Phù Ninh', 'phu-ninh', NULL, 477, 44, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(490, 'Tam Nông', 'tam-nong', NULL, 478, 44, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(491, 'Tân Sơn', 'tan-son', NULL, 479, 44, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(492, 'Thanh Ba', 'thanh-ba', NULL, 480, 44, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(493, 'Thanh Sơn', 'thanh-son', NULL, 481, 44, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(494, 'Thanh Thủy', 'thanh-thuy', NULL, 482, 44, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(495, 'Yên Lập', 'yen-lap', NULL, 483, 44, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(496, 'Việt Trì', 'viet-tri', NULL, 485, 44, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(497, 'Phú Thọ', 'phu-tho', NULL, 486, 44, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(498, 'Đông Hòa', 'dong-hoa', NULL, 487, 45, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(499, 'Đồng Xuân', 'dong-xuan', NULL, 488, 45, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(500, 'Phú Hòa', 'phu-hoa', NULL, 489, 45, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(501, 'Sơn Hòa', 'son-hoa', NULL, 490, 45, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(502, 'Sông Cầu', 'song-cau', NULL, 491, 45, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(503, 'Sông Hinh', 'song-hinh', NULL, 492, 45, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(504, 'Tây Hòa', 'tay-hoa', NULL, 493, 45, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(505, 'Tuy An', 'tuy-an', NULL, 494, 45, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(506, 'Tuy Hòa', 'tuy-hoa', NULL, 495, 45, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(507, 'Bố Trạch', 'bo-trach', NULL, 496, 46, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(508, 'Lệ Thủy', 'le-thuy', NULL, 497, 46, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(509, 'Minh Hóa', 'minh-hoa', NULL, 498, 46, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(510, 'Quảng Ninh', 'quang-ninh', NULL, 499, 46, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(511, 'Quảng Trạch', 'quang-trach', NULL, 500, 46, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(512, 'Tuyên Hóa', 'tuyen-hoa', NULL, 501, 46, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(513, 'Đồng Hới', 'dong-hoi', NULL, 502, 46, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(514, 'Ba Đồn', 'ba-don', NULL, 720, 46, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(515, 'Bắc Trà My', 'bac-tra-my', NULL, 503, 47, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(516, 'Đại Lộc', 'dai-loc', NULL, 504, 47, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(517, 'Điện Bàn', 'dien-ban', NULL, 505, 47, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(518, 'Đông Giang', 'dong-giang', NULL, 506, 47, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(519, 'Duy Xuyên', 'duy-xuyen', NULL, 507, 47, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(520, 'Hiệp Đức', 'hiep-duc', NULL, 508, 47, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57');
INSERT INTO `district` (`id`, `name`, `slug`, `meta_id`, `id_dothi`, `city_id`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(521, 'Nam Giang', 'nam-giang', NULL, 509, 47, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(522, 'Nam Trà My', 'nam-tra-my', NULL, 510, 47, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(523, 'Núi Thành', 'nui-thanh', NULL, 511, 47, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(524, 'Phú Ninh', 'phu-ninh', NULL, 512, 47, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(525, 'Phước Sơn', 'phuoc-son', NULL, 513, 47, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(526, 'Quế Sơn', 'que-son', NULL, 514, 47, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(527, 'Tây Giang', 'tay-giang', NULL, 515, 47, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(528, 'Thăng Bình', 'thang-binh', NULL, 516, 47, 14, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(529, 'Tiên Phước', 'tien-phuoc', NULL, 517, 47, 15, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(530, 'Tam Kỳ', 'tam-ky', NULL, 519, 47, 16, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(531, 'Hội An', 'hoi-an', NULL, 520, 47, 17, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(532, 'Nông Sơn', 'nong-son', NULL, 694, 47, 18, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(533, 'Ba Tơ', 'ba-to', NULL, 521, 48, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(534, 'Bình Sơn', 'binh-son', NULL, 522, 48, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(535, 'Đức Phổ', 'duc-pho', NULL, 523, 48, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(536, 'Lý Sơn', 'ly-son', NULL, 524, 48, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(537, 'Minh Long', 'minh-long', NULL, 525, 48, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(538, 'Mộ Đức', 'mo-duc', NULL, 526, 48, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(539, 'Nghĩa Hành', 'nghia-hanh', NULL, 527, 48, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(540, 'Sơn Hà', 'son-ha', NULL, 528, 48, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(541, 'Sơn Tây', 'son-tay', NULL, 529, 48, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(542, 'Sơn Tịnh', 'son-tinh', NULL, 530, 48, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(543, 'Tây Trà', 'tay-tra', NULL, 531, 48, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(544, 'Trà Bồng', 'tra-bong', NULL, 532, 48, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(545, 'Tư Nghĩa', 'tu-nghia', NULL, 533, 48, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(546, 'Quảng Ngãi', 'quang-ngai', NULL, 534, 48, 14, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(547, 'Ba Chẽ', 'ba-che', NULL, 535, 49, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(548, 'Bình Liêu', 'binh-lieu', NULL, 536, 49, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(549, 'Cô Tô', 'co-to', NULL, 537, 49, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(550, 'Đầm Hà', 'dam-ha', NULL, 538, 49, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(551, 'Đông Triều', 'dong-trieu', NULL, 539, 49, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(552, 'Hải Hà', 'hai-ha', NULL, 540, 49, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(553, 'Hoành Bồ', 'hoanh-bo', NULL, 541, 49, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(554, 'Tiên Yên', 'tien-yen', NULL, 542, 49, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(555, 'Vân Đồn', 'van-don', NULL, 543, 49, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(556, 'Hạ Long', 'ha-long', NULL, 546, 49, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(557, 'Cẩm Phả', 'cam-pha', NULL, 547, 49, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(558, 'Móng Cái', 'mong-cai', NULL, 548, 49, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(559, 'Uông Bí', 'uong-bi', NULL, 549, 49, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(560, 'Quảng Yên', 'quang-yen', NULL, 708, 49, 14, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(561, 'Cam Lộ', 'cam-lo', NULL, 550, 50, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(562, 'Đăk Rông', 'dak-rong', NULL, 551, 50, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(563, 'Đảo Cồn cỏ', 'dao-con-co', NULL, 552, 50, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(564, 'Gio Linh', 'gio-linh', NULL, 553, 50, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(565, 'Hải Lăng', 'hai-lang', NULL, 554, 50, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(566, 'Hướng Hóa', 'huong-hoa', NULL, 555, 50, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(567, 'Triệu Phong', 'trieu-phong', NULL, 556, 50, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(568, 'Vĩnh Linh', 'vinh-linh', NULL, 557, 50, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(569, 'Đông Hà', 'dong-ha', NULL, 558, 50, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(570, 'Quảng Trị', 'quang-tri', NULL, 559, 50, 10, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(571, 'Cù Lao Dung', 'cu-lao-dung', NULL, 560, 51, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(572, 'Kế Sách', 'ke-sach', NULL, 561, 51, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(573, 'Long Phú', 'long-phu', NULL, 562, 51, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(574, 'Mỹ Tú', 'my-tu', NULL, 563, 51, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(575, 'Mỹ Xuyên', 'my-xuyen', NULL, 564, 51, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(576, 'Ngã Năm', 'nga-nam', NULL, 565, 51, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(577, 'Thạnh Trị', 'thanh-tri', NULL, 566, 51, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(578, 'Vĩnh Châu', 'vinh-chau', NULL, 567, 51, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(579, 'Sóc Trăng', 'soc-trang', NULL, 568, 51, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(580, 'Châu Thành', 'chau-thanh', NULL, 695, 51, 10, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(581, 'Trần Đề', 'tran-de', NULL, 707, 51, 11, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(582, 'Bắc Yên', 'bac-yen', NULL, 569, 52, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(583, 'Mai Sơn', 'mai-son', NULL, 570, 52, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(584, 'Mộc Châu', 'moc-chau', NULL, 571, 52, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(585, 'Mường La', 'muong-la', NULL, 572, 52, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(586, 'Phù Yên', 'phu-yen', NULL, 573, 52, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(587, 'Quỳnh Nhai', 'quynh-nhai', NULL, 574, 52, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(588, 'Sông Mã', 'song-ma', NULL, 575, 52, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(589, 'Sốp Cộp', 'sop-cop', NULL, 576, 52, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(590, 'Thuận Châu', 'thuan-chau', NULL, 577, 52, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(591, 'Yên Châu', 'yen-chau', NULL, 578, 52, 10, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(592, 'Sơn La', 'son-la', NULL, 579, 52, 11, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(593, 'Vân Hồ', 'van-ho', NULL, 726, 52, 12, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(594, 'Bến Cầu', 'ben-cau', NULL, 580, 53, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(595, 'Châu Thành', 'chau-thanh', NULL, 581, 53, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(596, 'Dương Minh Châu', 'duong-minh-chau', NULL, 582, 53, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(597, 'Gò Dầu', 'go-dau', NULL, 583, 53, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(598, 'Hòa Thành', 'hoa-thanh', NULL, 584, 53, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(599, 'Tân Biên', 'tan-bien', NULL, 585, 53, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(600, 'Tân Châu', 'tan-chau', NULL, 586, 53, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(601, 'Trảng Bàng', 'trang-bang', NULL, 587, 53, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(602, 'Tây Ninh', 'tay-ninh', NULL, 588, 53, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(603, 'Đông Hưng', 'dong-hung', NULL, 589, 54, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(604, 'Hưng Hà', 'hung-ha', NULL, 590, 54, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(605, 'Kiến Xương', 'kien-xuong', NULL, 591, 54, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(606, 'Quỳnh Phụ', 'quynh-phu', NULL, 592, 54, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(607, 'Thái Thuỵ', 'thai-thuy', NULL, 593, 54, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(608, 'Tiền Hải', 'tien-hai', NULL, 594, 54, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(609, 'Vũ Thư', 'vu-thu', NULL, 595, 54, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(610, 'Thái Bình', 'thai-binh', NULL, 596, 54, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(611, 'Đại Từ', 'dai-tu', NULL, 597, 55, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(612, 'Định Hóa', 'dinh-hoa', NULL, 598, 55, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(613, 'Đồng Hỷ', 'dong-hy', NULL, 599, 55, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(614, 'Phổ Yên', 'pho-yen', NULL, 600, 55, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(615, 'Phú Bình', 'phu-binh', NULL, 601, 55, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(616, 'Phú Lương', 'phu-luong', NULL, 602, 55, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(617, 'Võ Nhai', 'vo-nhai', NULL, 603, 55, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(618, 'Thái Nguyên', 'thai-nguyen', NULL, 604, 55, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(619, 'Sông Công', 'song-cong', NULL, 605, 55, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(620, 'Bá Thước', 'ba-thuoc', NULL, 606, 56, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(621, 'Cẩm Thủy', 'cam-thuy', NULL, 607, 56, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(622, 'Đông Sơn', 'dong-son', NULL, 608, 56, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(623, 'Hà Trung', 'ha-trung', NULL, 609, 56, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(624, 'Hậu Lộc', 'hau-loc', NULL, 610, 56, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(625, 'Hoằng Hóa', 'hoang-hoa', NULL, 611, 56, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(626, 'Lang Chánh', 'lang-chanh', NULL, 612, 56, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(627, 'Mường Lát', 'muong-lat', NULL, 613, 56, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(628, 'Nga Sơn', 'nga-son', NULL, 614, 56, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(629, 'Ngọc Lặc', 'ngoc-lac', NULL, 615, 56, 10, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(630, 'Như Thanh', 'nhu-thanh', NULL, 616, 56, 11, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(631, 'Như Xuân', 'nhu-xuan', NULL, 617, 56, 12, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(632, 'Nông Cống', 'nong-cong', NULL, 618, 56, 13, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(633, 'Quan Hóa', 'quan-hoa', NULL, 619, 56, 14, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(634, 'Quan Sơn', 'quan-son', NULL, 620, 56, 15, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(635, 'Quảng Xương', 'quang-xuong', NULL, 621, 56, 16, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(636, 'Thạch Thành', 'thach-thanh', NULL, 622, 56, 17, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(637, 'Thiệu Hóa', 'thieu-hoa', NULL, 623, 56, 18, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(638, 'Thọ Xuân', 'tho-xuan', NULL, 624, 56, 19, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(639, 'Thường Xuân', 'thuong-xuan', NULL, 625, 56, 20, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(640, 'Tĩnh Gia', 'tinh-gia', NULL, 626, 56, 21, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(641, 'Triệu Sơn', 'trieu-son', NULL, 627, 56, 22, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(642, 'Vĩnh Lộc', 'vinh-loc', NULL, 628, 56, 23, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(643, 'Yên Định', 'yen-dinh', NULL, 629, 56, 24, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(644, 'Thanh Hóa', 'thanh-hoa', NULL, 630, 56, 25, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(645, 'Bỉm Sơn', 'bim-son', NULL, 631, 56, 26, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(646, 'Sầm Sơn', 'sam-son', NULL, 632, 56, 27, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(647, 'A Lưới', 'a-luoi', NULL, 633, 57, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(648, 'Hương Thủy', 'huong-thuy', NULL, 634, 57, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(649, 'Hương Trà', 'huong-tra', NULL, 635, 57, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(650, 'Nam Đông', 'nam-dong', NULL, 636, 57, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(651, 'Phong Điền', 'phong-dien', NULL, 637, 57, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(652, 'Phú Lộc', 'phu-loc', NULL, 638, 57, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(653, 'Phú Vang', 'phu-vang', NULL, 639, 57, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(654, 'Quảng Điền', 'quang-dien', NULL, 640, 57, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(655, 'Huế', 'hue', NULL, 641, 57, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(656, 'Cái Bè', 'cai-be', NULL, 642, 58, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(657, 'Huyện Cai Lậy', 'huyen-cai-lay', NULL, 643, 58, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(658, 'Châu Thành', 'chau-thanh', NULL, 644, 58, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(659, 'Chợ Gạo', 'cho-gao', NULL, 645, 58, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(660, 'Gò Công Đông', 'go-cong-dong', NULL, 646, 58, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(661, 'Gò Công Tây', 'go-cong-tay', NULL, 647, 58, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(662, 'Tân Phước', 'tan-phuoc', NULL, 648, 58, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(663, 'Tân Phú Đông', 'tan-phu-dong', NULL, 649, 58, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(664, 'Mỹ Tho', 'my-tho', NULL, 650, 58, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(665, 'Gò Công', 'go-cong', NULL, 651, 58, 10, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(666, 'Thị Xã Cai Lậy', 'thi-xa-cai-lay', NULL, 727, 58, 11, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(667, 'Càng Long', 'cang-long', NULL, 652, 59, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(668, 'Cầu Kè', 'cau-ke', NULL, 653, 59, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(669, 'Cầu Ngang', 'cau-ngang', NULL, 654, 59, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(670, 'Châu Thành', 'chau-thanh', NULL, 655, 59, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(671, 'Duyên Hải', 'duyen-hai', NULL, 656, 59, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(672, 'Tiểu Cần', 'tieu-can', NULL, 657, 59, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(673, 'Trà Cú', 'tra-cu', NULL, 658, 59, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(674, 'Trà Vinh', 'tra-vinh', NULL, 659, 59, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(675, 'Chiêm Hóa', 'chiem-hoa', NULL, 660, 60, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(676, 'Hàm Yên', 'ham-yen', NULL, 661, 60, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(677, 'Na Hang', 'na-hang', NULL, 662, 60, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(678, 'Sơn Dương', 'son-duong', NULL, 663, 60, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(679, 'Yên Sơn', 'yen-son', NULL, 664, 60, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(680, 'Tuyên Quang', 'tuyen-quang', NULL, 665, 60, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(681, 'Lâm Bình', 'lam-binh', NULL, 712, 60, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(682, 'Bình Minh', 'binh-minh', NULL, 666, 61, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(683, 'Bình Tân', 'binh-tan', NULL, 667, 61, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(684, 'Long Hồ', 'long-ho', NULL, 668, 61, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(685, 'Mang Thít', 'mang-thit', NULL, 669, 61, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(686, 'Tam Bình', 'tam-binh', NULL, 670, 61, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(687, 'Trà Ôn', 'tra-on', NULL, 671, 61, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(688, 'Vũng Liêm', 'vung-liem', NULL, 672, 61, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(689, 'Vĩnh Long', 'vinh-long', NULL, 673, 61, 8, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(690, 'Bình Xuyên', 'binh-xuyen', NULL, 674, 62, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(691, 'Lập Thạch', 'lap-thach', NULL, 675, 62, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(692, 'Tam Đảo', 'tam-dao', NULL, 676, 62, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(693, 'Tam Dương', 'tam-duong', NULL, 677, 62, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(694, 'Vĩnh Tường', 'vinh-tuong', NULL, 678, 62, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(695, 'Yên Lạc', 'yen-lac', NULL, 679, 62, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(696, 'Vĩnh Yên', 'vinh-yen', NULL, 680, 62, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(697, 'Phúc Yên', 'phuc-yen', NULL, 681, 62, 8, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(698, 'Sông Lô', 'song-lo', NULL, 696, 62, 9, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(699, 'Lục Yên', 'luc-yen', NULL, 682, 63, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(700, 'Mù Cang Chải', 'mu-cang-chai', NULL, 683, 63, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(701, 'Trạm Tấu', 'tram-tau', NULL, 684, 63, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(702, 'Trấn Yên', 'tran-yen', NULL, 685, 63, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(703, 'Văn Chấn', 'van-chan', NULL, 686, 63, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(704, 'Văn Yên', 'van-yen', NULL, 687, 63, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(705, 'Yên Bình', 'yen-binh', NULL, 688, 63, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(706, 'Yên Bái', 'yen-bai', NULL, 689, 63, 8, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(707, 'Nghĩa Lộ', 'nghia-lo', NULL, 713, 63, 9, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `estate_type`
--

CREATE TABLE `estate_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 : ban 2 : cho thue',
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estate_type`
--

INSERT INTO `estate_type` (`id`, `name`, `slug`, `type`, `display_order`, `status`, `meta_id`, `created_at`, `updated_at`) VALUES
(1, 'Bán căn hộ chung cư', 'ban-can-ho-chung-cu', 1, 1, 1, 19, '2017-04-01 00:00:00', '2017-05-20 09:11:59'),
(2, 'Bán nhà riêng', 'ban-nha-rieng', 1, 2, 1, 1, '2017-04-01 00:00:00', '2017-05-05 15:39:06'),
(3, 'Bán nhà biệt thự, liền kề', 'ban-nha-biet-thu-lien-ke', 1, 3, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(4, 'Bán nhà mặt phố', 'ban-nha-mat-pho', 1, 4, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(5, 'Bán đất nền dự án', 'ban-dat-nen-du-an', 1, 5, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(6, 'Bán đất', 'ban-dat', 1, 6, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(7, 'Bán trang trại, khu nghỉ dưỡng', 'ban-trang-trai-khu-nghi-duong', 1, 7, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(8, 'Bán kho, nhà xưởng', 'ban-kho-nha-xuong', 1, 8, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(9, 'Bán loại bất động sản khác', 'ban-loai-bat-dong-san-khac', 1, 9, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(10, 'Cho thuê căn hộ chung cư', 'cho-thue-can-ho-chung-cu', 2, 1, 1, 0, '2017-04-01 00:00:00', '2017-05-05 15:38:19'),
(11, 'Cho thuê nhà riêng', 'cho-thue-nha-rieng', 2, 2, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(12, 'Cho thuê nhà mặt phố', 'cho-thue-nha-mat-pho', 2, 3, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(13, 'Cho thuê nhà trọ, phòng trọ', 'cho-thue-nha-tro-phong-tro', 2, 4, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(14, 'Bán đất nền dự Cho thuê văn phòng', 'cho-thue-van-phong', 2, 5, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(15, 'Cho thuê cửa hàng, ki ốt', 'cho-thue-cua-hang-ki-ot', 2, 6, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(16, 'Cho thuê kho, nhà xưởng, đất', 'cho-thue-kho-nha-xuong-dat', 2, 7, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(17, 'Cho thuê bất động sản khác', 'cho-thue-bat-dong-san-khac', 2, 8, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `content`) VALUES
(1, 'Nhà TB - tầng 2', '007324141425'),
(2, 'Nhà PN - tầng trệt', '0918345334');

-- --------------------------------------------------------

--
-- Table structure for table `info_seo`
--

CREATE TABLE `info_seo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `custom_text` text NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `landing_projects`
--

CREATE TABLE `landing_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `slug` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_id` int(11) DEFAULT NULL,
  `address_contact` varchar(255) DEFAULT NULL,
  `phone_contact` varchar(100) DEFAULT NULL,
  `email_contact` varchar(150) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `landing_projects`
--

INSERT INTO `landing_projects` (`id`, `name`, `description`, `slug`, `image_url`, `logo_url`, `address`, `is_hot`, `status`, `meta_id`, `address_contact`, `phone_contact`, `email_contact`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'JAMILA KHANG ĐIỀN', '', 'jamila-khang-dien', '2017/05/20/images-1495235485.jpg', '2017/05/20/logo-jamila-58f5908b0a52a-1495235489.jpg', 'Đường Đỗ Xuân Hợp, Quận 9', 1, 1, 17, '85A Phan Kế Bính, Đa Kao, quận 1, TP. Hồ Chí Minh', '0938 779 660', 'info@sunland.vn', 1, 1, '2017-05-20 06:11:38', '2017-05-20 06:30:28'),
(2, 'DỰ ÁN PARK RIVERSIDE', '', 'du-an-park-riverside', '2017/05/20/phoi-canh-du-an-park-riverside-1495236050.jpg', '2017/05/20/logo-572ab51b073eb-1495236053.png', 'Quận 9 - Hồ Chí Minh', 1, 1, 18, '85A, Phan Kế Bính, P. ĐaKao, Quận 1, TPHCM', '0917492306', 'info@sunland.vn', 1, 1, '2017-05-20 06:21:00', '2017-05-20 06:32:46'),
(3, 'DỰ ÁN CĂN HỘ THE EASTERN QUẬN 9', 'Dự án Căn hộ The Eastern tọa lạc trên Đường Liên Phường, P. Phú Hữu, quận 9, TP. Hồ Chí Minh. Thuộc khu vực phía đông thành phố, cách đường Vành Đai 100m.', 'du-an-can-ho-the-eastern-quan-9', '2017/05/21/s1-1495356620.jpg', '2017/05/21/logo100-1495356635.png', '60 Nguyễn Đình Chiểu, Đa Kao, Quận 1, Hồ Chí Minh', 1, 1, 24, '60 Nguyễn Đình Chiểu, Đa Kao, Quận 1, Hồ Chí Minh', '938766885', 'baoanhco@yahoo.com', 1, 1, '2017-05-21 15:51:31', '2017-05-21 15:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `legal`
--

CREATE TABLE `legal` (
  `legal_id` int(11) NOT NULL,
  `legal_name` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `legal`
--

INSERT INTO `legal` (`legal_id`, `legal_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Sổ đỏ/ sổ hồng', 1, 1, 1417164620, 1417164620),
(2, 'Giấy tờ hợp lệ', 2, 1, 1417164620, 1417164620),
(3, 'Giấy phép XD', 3, 1, 1417164620, 1417164620),
(4, 'Giấy phép KD', 4, 1, 1417164620, 1417164620);

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `title`, `description`, `keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Bán nhà riêng', 'Bán nhà riêng', 'Bán nhà riêng', '', 1, 1, '2017-05-05 15:39:06', '2017-05-20 09:12:21'),
(2, 'fsdgdsfhsdf', 'dfsh', 'sdfhdfh', 'dfhsdfhsdfhdfh', 1, 1, '2017-05-05 17:39:09', '2017-05-05 17:41:34'),
(3, '', '', '', '', 1, 1, '2017-05-05 17:45:59', '2017-05-05 17:45:59'),
(4, '', '', '', '', 1, 1, '2017-05-05 18:02:08', '2017-05-05 18:02:08'),
(5, NULL, NULL, NULL, '', 0, 0, '2017-05-09 22:15:04', '2017-05-09 22:15:04'),
(6, '', '', '', '', 1, 1, '2017-05-09 22:38:11', '2017-05-09 22:38:11'),
(7, 'dgadsga', 'dgadsgadgádga', 'ádgasdgádgas', 'gádgsdg', 1, 1, '2017-05-09 22:38:28', '2017-05-10 08:45:39'),
(8, 'áf', 'SFA', 'Ấ', 'À', 1, 1, '2017-05-10 09:30:13', '2017-05-10 09:30:13'),
(9, '', '', '', '', 5, 5, '2017-05-13 09:34:52', '2017-05-13 09:34:52'),
(10, NULL, NULL, NULL, '', 0, 0, '2017-05-13 10:32:31', '2017-05-13 10:32:31'),
(11, 'afa', 'fasfAFS', 'ASFas', 'asfS', 1, 1, '2017-05-18 21:29:42', '2017-05-18 21:29:42'),
(12, 'ASDFSD', 'FSAD', 'SDGSD', 'SDG', 1, 1, '2017-05-18 21:30:01', '2017-05-18 21:30:01'),
(13, 'sdgasdgs', 'sdgas', 'sdgasd', 'dgfasgsdgasd', 1, 1, '2017-05-18 21:49:30', '2017-05-18 21:49:30'),
(14, '', '', '', '', 1, 1, '2017-05-18 22:01:37', '2017-05-18 22:01:37'),
(15, '', '', '', '', 1, 1, '2017-05-18 22:01:59', '2017-05-18 22:01:59'),
(16, 'dsgasd', 'gádgads', 'gádgs', 'dsgasdgs', 1, 1, '2017-05-18 22:02:16', '2017-05-18 22:11:42'),
(17, '', '', '', '', 1, 1, '2017-05-20 06:11:38', '2017-05-20 06:11:38'),
(18, '', '', '', '', 1, 1, '2017-05-20 06:21:00', '2017-05-20 06:21:00'),
(19, 'Bán căn hộ chung cư', 'Bán căn hộ chung cư', 'Bán căn hộ chung cư', '', 1, 1, '2017-05-20 09:11:59', '2017-05-20 09:11:59'),
(20, '', '', '', '', 1, 1, '2017-05-20 21:09:38', '2017-05-20 21:09:38'),
(21, '', '', '', '', 1, 1, '2017-05-21 15:39:59', '2017-05-21 15:39:59'),
(22, '', '', '', '', 1, 1, '2017-05-21 15:45:59', '2017-05-21 15:45:59'),
(23, '', '', '', '', 1, 1, '2017-05-21 15:47:27', '2017-05-21 15:47:27'),
(24, '', '', '', '', 1, 1, '2017-05-21 15:51:31', '2017-05-21 15:51:31'),
(25, '', '', '', '', 1, 1, '2017-05-21 16:04:29', '2017-05-21 16:04:29'),
(26, '', '', '', '', 1, 1, '2017-05-21 19:04:52', '2017-05-21 19:04:52'),
(27, '', '', '', '', 1, 1, '2017-05-22 15:03:41', '2017-05-22 15:03:41'),
(28, '', '', '', '', 1, 1, '2017-05-22 16:15:47', '2017-05-22 16:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_member` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `is_member`, `status`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'hoangnhpublic@gmail.com', 1, 1, NULL, '2016-09-22 06:14:46', '2016-09-22 06:14:46'),
(2, 'tungocsang88@gmail.com', 1, 1, NULL, '2016-09-26 11:20:29', '2016-09-26 11:20:29'),
(3, 'dinhthanhtam1966@gmail.com', 0, 1, NULL, '2016-10-07 03:09:07', '2016-10-07 03:09:07'),
(4, 'wqdqwd@gmail.com', 0, 1, NULL, '2016-10-11 07:30:13', '2016-10-11 07:30:13'),
(5, 'hoangnhonline@gmail.com', 0, 1, NULL, '2016-10-30 17:54:26', '2016-10-30 17:54:26'),
(6, 'vtran1483@gmail.com', 1, 1, NULL, '2016-11-06 22:34:56', '2016-11-06 22:34:56'),
(7, 'hahanh380@gmai.com', 0, 1, NULL, '2017-01-15 15:32:50', '2017-01-15 15:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `area` varchar(255) NOT NULL,
  `type_id` tinyint(4) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `max_person` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: trong , 2 : dat coc, 3 : dang o, 4 : cho gia han',
  `image_url` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sell` varchar(50) DEFAULT NULL,
  `price_1` int(11) DEFAULT NULL,
  `price_3` int(11) DEFAULT NULL,
  `price_6` int(11) DEFAULT NULL,
  `price_id` int(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `min_contract` varchar(255) DEFAULT NULL,
  `position_type` tinyint(4) DEFAULT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `no_room` int(11) DEFAULT NULL,
  `no_wc` int(11) DEFAULT NULL,
  `object_type` tinyint(4) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `payment` text,
  `legal` text,
  `street` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`id`, `name`, `alias`, `description`, `area`, `type_id`, `project_name`, `house_id`, `city_id`, `district_id`, `ward_id`, `floor`, `max_person`, `status`, `image_url`, `price`, `price_sell`, `price_1`, `price_3`, `price_6`, `price_id`, `deposit`, `min_contract`, `position_type`, `direction_id`, `video_url`, `address`, `no_room`, `no_wc`, `object_type`, `latitude`, `longitude`, `payment`, `legal`, `street`, `created_by`, `updated_by`, `user_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(3, 'HCM-TB02-CL101', 'hcm-tb02-cl101', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, th&iacute;ch hợp cho c&aacute;c bạn th&iacute;ch kh&ocirc;ng gian y&ecirc;n tĩnh</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế cửa sổ hướng ph&iacute;a cầu thang lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng<br />\r\n+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.<br />\r\n+&nbsp;</span><span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Wc b&ecirc;n ngo&agrave;i, kh&ocirc;ng t&iacute;ch hợp kệ bếp trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 16m2</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Giờ giấc tự do.</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 3.000.000đ/tháng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span><br />\r\n', '16', 4, NULL, 1, 1, 17, 13, 1, 2, 3, 'upload/2016/03/21/cua-chonauan_1458530173.jpg', NULL, NULL, 3000000, 3000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL101', 'HCM-TB02-CL101', 'HCM-TB02-CL101', 1447150865, 1469676955),
(4, 'HCM-TB02-CL102', 'hcm-tb02-cl102', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế, wc b&ecirc;n trong, kệ bếp nấu ăn<br />\r\n+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 25m2(bao gồm g&aacute;c x&eacute;p)</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Giờ giấc tự do.</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 5.000.000đ/tháng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '17.5', 4, NULL, 1, 1, 17, 13, 1, 2, 3, 'upload/2016/03/22/phong-cua-so_1458628642.jpg', NULL, NULL, 5000000, 5000000, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL102', 'HCM-TB02-CL102', 'HCM-TB02-CL102', 1447151456, 1469674574),
(5, 'HCM-TB02-CL103', 'hcm-tb02-cl103', '<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;">\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; ban c&ocirc;ng, lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng rất tốt cho sức khỏe</span></font><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế, wc b&ecirc;n trong, kệ bếp nấu ăn<br />\r\n	+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 30m2(bao gồm g&aacute;c x&eacute;p)</span><br />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">+ Giờ giấc tự do.</span><br />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 6.500.000đ/tháng&nbsp;<br />\r\n	- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span></p>\r\n', '28', 4, NULL, 1, 1, 17, 13, 1, 1, 3, 'upload/2015/11/10/nah-1_1447151587.jpg', NULL, NULL, 6500000, 6500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL103', 'HCM-TB02-CL103', 'HCM-TB02-CL103', 1447151691, 1469674633),
(6, 'HCM-TB02-CL104', 'hcm-tb02-cl104', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; ban c&ocirc;ng, lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng rất tốt cho sức khỏe</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế, wc b&ecirc;n trong, kệ bếp nấu ăn<br />\r\n+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 25m2(bao gồm g&aacute;c x&eacute;p)</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Giờ giấc tự do.</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 5.000.000đ/tháng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '18', 4, NULL, 1, 1, 17, 13, 1, 2, 3, 'upload/2016/03/22/tivi3_1458629226.jpg', NULL, NULL, 4500000, 4500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL104', 'HCM-TB02-CL104', 'HCM-TB02-CL104', 1447152006, 1469674479),
(7, 'HCM-TB02-CL201', 'hcm-tb02-cl201', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra cầu thang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 21m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '21', 4, NULL, 1, 1, 17, 13, 2, 2, 3, 'upload/2015/11/10/nha-3_1447152251.png', NULL, NULL, 5500000, 5500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL201', 'HCM-TB02-CL201', 'HCM-TB02-CL201', 1447152307, 1469675554),
(10, 'HCM-TB02-CL203', 'hcm-tb02-cl203', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng nằm ở mặt ch&iacute;nh của t&ograve;a nh&agrave;, c&oacute; ban c&ocirc;ng, view rộng...</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '25.8', 4, NULL, 1, 1, 17, 13, 2, 3, 3, 'upload/2015/11/12/7_1447296545.jpg', NULL, NULL, 6500000, 6500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL203', 'HCM-TB02-CL203', 'HCM-TB02-CL203', 1447296577, 1469675335),
(12, 'HCM-TB02-CL301', 'hcm-tb02-cl301', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra ph&iacute;a h&agrave;nh lang.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span><br />\r\n', '20', 4, NULL, 1, 1, 17, 13, 3, 2, 1, 'upload/2015/11/12/9_1447296819.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL301', 'HCM-TB02-CL301', 'HCM-TB02-CL301', 1447296838, 1469673642),
(13, 'HCM-TB02-CL302', 'hcm-tb02-cl302', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra ph&iacute;a h&agrave;nh lang.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/10_1447296952.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL302', 'HCM-TB02-CL302', 'HCM-TB02-CL302', 1447296967, 1469674776),
(14, 'HCM-TB02-CL303', 'hcm-tb02-cl303', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra ph&iacute;a h&agrave;nh lang.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '20', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/12_1447297244.JPG', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL303', 'HCM-TB02-CL303', 'HCM-TB02-CL303', 1447297263, 1469676912),
(15, 'HCM-TB02-CL304', 'hcm-tb02-cl304', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra mặt tiền của ng&ocirc;i nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/13_1447297356.JPG', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL304', 'HCM-TB02-CL304', 'HCM-TB02-CL304', 1447297360, 1469674892),
(16, 'HCM-TB02-CL305', 'hcm-tb02-cl305', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra mặt tiền của ng&ocirc;i nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '16.5', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/14_1447297443.JPG', NULL, NULL, 5000000, 5000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL305', 'HCM-TB02-CL305', 'HCM-TB02-CL305', 1447297459, 1469674857),
(17, 'HCM-TB02-CL401', 'hcm-tb02-cl401', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 4 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra h&agrave;nh lang của ng&ocirc;i nh&agrave;.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;3.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 4, 2, 3, 'upload/2015/11/12/16_1447297539.png', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL401', 'HCM-TB02-CL401', 'HCM-TB02-CL401', 1447297550, 1469675115);
INSERT INTO `objects` (`id`, `name`, `alias`, `description`, `area`, `type_id`, `project_name`, `house_id`, `city_id`, `district_id`, `ward_id`, `floor`, `max_person`, `status`, `image_url`, `price`, `price_sell`, `price_1`, `price_3`, `price_6`, `price_id`, `deposit`, `min_contract`, `position_type`, `direction_id`, `video_url`, `address`, `no_room`, `no_wc`, `object_type`, `latitude`, `longitude`, `payment`, `legal`, `street`, `created_by`, `updated_by`, `user_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(18, 'HCM-TB02-CL402', 'hcm-tb02-cl402', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 4 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra h&agrave;nh lang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;3.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 4, 2, 3, 'upload/2015/11/12/15_1447297631.JPG', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL402', 'HCM-TB02-CL402', 'HCM-TB02-CL402', 1447297644, 1469675144),
(19, 'HCM-TB02-CL403', 'hcm-tb02-cl403', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 4 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra s&acirc;n thượng của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;3.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 4, 2, 3, 'upload/2015/11/12/17_1447297728.jpg', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL403', 'HCM-TB02-CL403', 'HCM-TB02-CL403', 1447297744, 1469675071),
(41, 'HCM-TB02-CL204', 'hcm-tb02-cl204', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra mặt ch&iacute;nh của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 21m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '18', 4, NULL, 1, 1, 17, 13, 2, 1, 3, 'upload/2015/12/24/img_20141001_092550_1450945231.jpg', NULL, NULL, 5000000, 5000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL204', 'HCM-TB02-CL204', 'HCM-TB02-CL204', 1450945303, 1469675412),
(42, 'HCM-TB02-CL202', 'hcm-tb02-cl202', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra h&agrave;nh lang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 25m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '20.5', 4, NULL, 1, 1, 17, 13, 2, 1, 3, 'upload/2015/12/24/img_20141001_092117_1450946080.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL202', 'HCM-TB02-CL202', 'HCM-TB02-CL202', 1450946137, 1469675454),
(45, 'HCM-TB02-CL001', 'hcm-tb02-cl001', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu Trệt của t&ograve;a nh&agrave;, với lối đi th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng racầu thang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 35m2 (Bao gồm g&aacute;c x&eacute;p) + Ph&ograve;ng đ&ocirc;i ở được nhiều người<br />\r\n- Giá ph&ograve;ng : &nbsp;7.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '35', 4, NULL, 1, 1, 17, 13, 0, 3, 3, 'upload/2016/03/26/phong-to-co-tu-lanh_1458989009.jpg', NULL, NULL, 7000000, 7000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL001', 'HCM-TB02-CL001', 'HCM-TB02-CL001', 1451357543, 1469675686),
(46, 'HCM-TB02-CL OFFICE', 'hcm-tb02-cl-office', 'mặt bằng mặt tiền cho thu&ecirc; gi&aacute; rẻ, th&iacute;ch hợp cho c&ocirc;ng ty c&oacute; quy m&ocirc; nhỏ dưới 10 người<br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Cho thu&ecirc; mặt bằng (Như h&igrave;nh b&ecirc;n dưới)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Vị tr&iacute; : 25/10 cửu long, p.2, quận t&acirc;n b&igrave;nh ; đường lộ giới 8m, hẻm xe hơi</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Diện t&iacute;ch : 35m2, b&ecirc;n trong c&oacute; wc, m&aacute;y lạnh, mặt tiền k&iacute;nh bản lề s&agrave;n, b&ecirc;n ngo&agrave;i c&oacute; bảo vệ.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Th&iacute;ch hợp thu&ecirc; l&agrave;m văn ph&ograve;ng, v&eacute; m&aacute;y bay, kho lưu h&agrave;ng h&oacute;a...</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Ai c&oacute; nhu cầu LH 0968 11 1080 Mr việt ch&iacute;nh chủ cho thu&ecirc;.</span>', '32', 3, NULL, 1, 1, 17, 13, 0, 10, 3, 'upload/2016/03/22/bao-ve_1458643658.jpg', NULL, NULL, 10000000, 10000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL OFFICE', 'HCM-TB02-CL OFFICE', 'HCM-TB02-CL OFFICE', 1451709032, 1463452469),
(48, 'HCM-TB15-TỐNG VĂN HÊN-02', 'hcm-tb15-tong-van-hen-02', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.<br />\r\n', '25', 4, NULL, 7, 1, 17, 26, 1, 0, 3, 'upload/2016/04/27/img20160427093426_1461744079.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-02', 'HCM-TB15-TỐNG VĂN HÊN-02', 'HCM-TB15-TỐNG VĂN HÊN-02', 1461744119, 1463387481),
(49, 'HCM-TB15-TỐNG VĂN HÊN-03', 'hcm-tb15-tong-van-hen-03', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '20', 4, NULL, 7, 1, 17, 26, 1, 3, 3, 'upload/2016/04/28/img20160427093736_1461807478.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-03', 'HCM-TB15-TỐNG VĂN HÊN-03', 'HCM-TB15-TỐNG VĂN HÊN-03', 1461807529, 1463387575),
(50, 'HCM-TB15-TỐNG VĂN HÊN-04', 'hcm-tb15-tong-van-hen-04', 'Nh&agrave; đẹp khỏi ch&ecirc;<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '20', 4, NULL, 7, 1, 17, 26, 1, 3, 3, 'upload/2016/04/28/img20160427093758_1461807771.jpg', NULL, NULL, 4200000, 4200000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-04', 'HCM-TB15-TỐNG VĂN HÊN-04', 'HCM-TB15-TỐNG VĂN HÊN-04', 1461807787, 1463387645),
(51, 'HCM-TB15-TỐNG VĂN HÊN-05', 'hcm-tb15-tong-van-hen-05', 'Tất cả c&aacute;c ph&ograve;ng đều c&oacute; nước n&oacute;ng sủ dụng năng lượng mặt trời<br />\r\nNh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '23', 4, NULL, 7, 1, 17, 26, 2, 3, 3, 'upload/2016/04/28/img20160427093952_1461808076.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-05', 'HCM-TB15-TỐNG VĂN HÊN-05', 'HCM-TB15-TỐNG VĂN HÊN-05', 1461808144, 1463387705),
(52, 'HCM-TB15-TỐNG VĂN HÊN-06', 'hcm-tb15-tong-van-hen-06', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '25', 4, NULL, 7, 1, 17, 26, 2, 3, 3, 'upload/2016/04/28/img20160427093911_1461809214.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-06', 'HCM-TB15-TỐNG VĂN HÊN-06', 'HCM-TB15-TỐNG VĂN HÊN-06', 1461809280, 1463387755),
(53, 'HCM-TB15-TỐNG VĂN HÊN-07', 'hcm-tb15-tong-van-hen-07', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '28', 4, NULL, 7, 1, 17, 26, 3, 3, 3, 'upload/2016/04/28/img20160427093952_1461809581.jpg', NULL, NULL, 4200000, 4200000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-07', 'HCM-TB15-TỐNG VĂN HÊN-07', 'HCM-TB15-TỐNG VĂN HÊN-07', 1461809609, 1463387802),
(54, 'HCM-TB15-TỐNG VĂN HÊN-08', 'hcm-tb15-tong-van-hen-08', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '30', 4, NULL, 7, 1, 17, 26, 3, 0, 3, 'upload/2016/04/28/img20160427094610_1461809767.jpg', NULL, NULL, 4300000, 4300000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-08', 'HCM-TB15-TỐNG VĂN HÊN-08', 'HCM-TB15-TỐNG VĂN HÊN-08', 1461809788, 1463387841),
(55, 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 'hcm-tb15-tong-van-hen-tret', 'Nh&agrave; mới đẹp<br />\r\nMặt tiền Tống Văn H&ecirc;n tiện kinh doanh bu&ocirc;n b&aacute;n, mở văn ph&ograve;ng đại diện...<br />\r\nNhanh th&igrave; c&ograve;n chậm th&igrave; hết<br />\r\nH&igrave;nh thật nha b&agrave; con', '60', 3, NULL, 7, 1, 17, 26, 0, 0, 3, 'upload/2016/04/28/img20160427101131_1461826683.jpg', NULL, NULL, 8000000, 8000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 1461809788, 1463387880),
(56, 'HCM-TB15-TỐNG VĂN HÊN-vip', 'hcm-tb15-tong-van-hen-vip', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '35', 4, NULL, 7, 1, 17, 26, 4, 4, 3, 'upload/2016/04/28/img20160427095420_1461809940.jpg', NULL, NULL, 5000000, 5000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-vip', 'HCM-TB15-TỐNG VĂN HÊN-vip', 'HCM-TB15-TỐNG VĂN HÊN-vip', 1461809957, 1463147013),
(57, '', '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, 18, 18, 18, '', '', '', 1461825975, 1461825975),
(58, '', '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, 18, 18, 18, '', '', '', 1461826452, 1461826452),
(59, '', '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, 18, 18, 18, '', '', '', 1461826863, 1461826863),
(64, 'HCM-NBTB02-CL19', 'hcm-nbtb02-cl19', 'B&aacute;n nh&agrave; đường cửu long , c&aacute;ch đường trường sơn 50m<br />\r\nNh&agrave; DT 7,8m x 20m 1 trệt 2 lầu<br />\r\n<a href="http://batdongsan.sth.vn">gi&aacute; b&aacute;n 16 tỷ LH để biết th&ecirc;m chi tiết 0968111080</a>', '200', 7, 'HCM-NBTB02', NULL, 1, 17, 13, NULL, NULL, 1, 'upload/2016/05/13/img20160316105621_1463111395.jpg', NULL, '16 tỷ', NULL, NULL, NULL, 12, 0, '', 1, 2, '', 'Đường cửu long, p2. q.tân bình', 7, 5, 3, '10.753151', '106.73088499999994', 'VNĐ', 'SỔ HỒNG', '8', 18, 18, 18, 'Bán nhà đường cửu long', 'Bán nhà đường cửu long', 'Bán nhà đường cửu long, bán nhà chính chủ đường cửu long, bán nhà chính chủ khu sân bay, bán nhà gấp khu sân bay', 1463111983, 1463466309),
(65, 'HCM-NB-TLQ12- 19', 'hcm-nb-tlq12-19', 'B&aacute;n nh&agrave; cấp 4 ch&iacute;nh chủ, phường thạnh lộc, quận 12<br />\r\nCần tiền b&aacute;n nh&agrave; lớn đổi nh&agrave; nhỏ<br />\r\nvị tr&iacute; nh&agrave; rất đẹp mặt tiền kinh doanh&nbsp;<br />\r\nKhu an ninh, quang cảnh đẹp gi&oacute; m&aacute;t lồng lộng, nhiều c&acirc;y xanh xem l&agrave; th&iacute;ch<br />\r\n<a href="http://batdongsan.sth.vn">LH : 0968111080</a>', '100', 7, 'HCM-NB-TLQ12', NULL, 1, 17, 13, NULL, NULL, 1, 'upload/2016/05/17/five_star_bt2_1463466277.png', NULL, '1.8 tỷ', NULL, NULL, NULL, 8, 0, '', 1, 3, '', 'Thạch lộc 19, p.thạnh lộc q.12', 1, 1, 3, '10.753151', '106.73088499999994', 'VNĐ', 'Sổ Hồng', '16', 18, 18, 18, 'Bán nhà chính chủ quận 12', 'Bán nhà chính chủ quận 12', 'Bán nhà chính chủ quận 12, bán nhà cấp 4 riêng lẽ quận 12, chính chủ bán nhà riêng lẽ, bán nhà cấp 4 chính chủ', 1463114640, 1463466288),
(66, 'HCM-NB Q12-TL19-02', 'hcm-nb-q12-tl19-02', 'Đối với c&aacute;c anh chị xa xứ nhu cầu về nh&agrave; ở để an cư lạc nghiệp v&agrave; kh&ocirc;ng muốn đi thu&ecirc; nh&agrave; ở th&igrave; đ&acirc;y l&agrave; một giải ph&aacute;p<br />\r\nHiện nay ch&uacute;ng t&ocirc;i đang c&oacute; một số căn nh&agrave; tại H&agrave; Huy Gi&aacute;p Q.', '25', 8, 'HCM-NB Q12-TL19', NULL, 1, 16, 0, NULL, NULL, 1, 'upload/2016/05/17/ti1_1463466778.jpg', NULL, '400000000', NULL, NULL, NULL, 7, 0, '', 2, 0, '', 'thạnh lộc quận 12', 2, 1, 3, '10.753151', '106.73088499999994', 'Tiền mặt', 'Công chứng', '5m', 0, 10, 10, 'HCM-NB Q12-TL19-02', 'HCM-NB Q12-TL19-02', 'HCM-NB Q12-TL19-02', 1463534591, 1463583412),
(67, 'HCM-TLQ12-TL19-02', 'hcm-tlq12-tl19-02', '<h1>\r\n	<span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code>Nh&agrave; thiết kế sang trọng hiện đại, được chủ đầu tư chau truốt từng g&oacute;c cạnh</code></span></span><br />\r\n	<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Khu nh&agrave; c&oacute; 19 căn nh&agrave; phố v&agrave; 4 căn biệt thự thuộc phường Thạnh Lộc, quận 12, c&aacute;ch MT đường&nbsp;</span><span style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px;">H&agrave; Huy Gi&aacute;p khoảng 200m.&nbsp;</span><br style="margin: 0px; padding: 0px;" />\r\n	<span style="margin: 0px; padding: 0px;">+ Nh&agrave; phố:&nbsp;</span></span></code></span></span></span></h1>\r\n<ul style="margin: 0px; padding-right: 0px; padding-left: 0px; color: rgb(0, 93, 153); font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">1 trệt, 2 lầu. Gồm 19 căn.&nbsp; &bull; Diện t&iacute;ch: Từ 55 m2 đến 60 m2&nbsp;</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Thiết kế: 1 Ph&ograve;ng Kh&aacute;ch, 1 Ph&ograve;ng Bếp + Ăn, 4 Ph&ograve;ng Ngủ, 5WC.</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Bảo h&agrave;nh nh&agrave; 1 năm</span></code></span></span></span></h1>\r\n	</li>\r\n</ul>\r\n<h1>\r\n	<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Gi&aacute; từ 1,78 tỷ - 1,84 tỷ.</span></code></span></span><br />\r\n	<span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px; line-height: 1.5;">+ Biệt thự:&nbsp;</span></code></span></span></span></h1>\r\n<ul style="margin: 0px; padding-right: 0px; padding-left: 0px; color: rgb(0, 93, 153); font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px; line-height: 1.5;">1 trệt, 2 lầu. Gồm 4 căn.&nbsp;</span><span style="margin: 0px; padding: 0px; line-height: 1.5;">&nbsp;&bull; Diện t&iacute;ch: Từ 132.6 m2 đến 184 m2&nbsp;</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Thiết kế: 1 Ph&ograve;ng Kh&aacute;ch, 1 Ph&ograve;ng Ăn, 4 Ph&ograve;ng Ngủ, 5WC.</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Bảo h&agrave;nh nh&agrave; 1 năm. &nbsp;</span></code></span></span></span></h1>\r\n	</li>\r\n</ul>\r\n<h1>\r\n	<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Gi&aacute; từ 3,8 tỷ đến 5,2 tỷ.</span></code></span></span></span></h1>\r\n', '60', 7, 'HCM-TLQ12-TL19', NULL, 1, 16, 29, NULL, NULL, 1, 'upload/2016/05/19/bsg-04-01_1463625857.jpg', NULL, '2 tỷ', NULL, NULL, NULL, 8, 0, '', 0, 1, '', '', 3, 3, 3, '10.753151', '106.73088499999994', 'TIỀN MẶT', 'SỔ HỒNG', '8', 18, 18, 18, 'Nhà bán quận 12', 'Nhà bán quận 12', 'Nhà bán quận 12, nhà bán thạnh lộc quận 12, nhà bán phường thạnh lộc', 1463626193, 1463626259),
(70, 'HCM-PN09-HONG HA', 'hcm-pn09-hong-ha', 'Nh&agrave; ngay mặt tiền, th&iacute;ch hợp l&agrave;m văn ph&ograve;ng cho mọi th&agrave;nh phần kinh tế<br />\r\nDT : 1 trệt 3 lầu, tổng diện t&iacute;ch hơn 400m2, c&oacute; 22 ph&ograve;ng lớn nhỏ<br />\r\nGi&aacute; thu&ecirc; : 70.000.000/th&aacute;ng<br />\r\nH&atilde;y li&ecirc;n hệ xem nh&agrave; trực tiếp 0968 11 1080', '400', 3, NULL, 8, 1, 16, 29, 3, 0, 3, 'upload/2016/05/25/img20160323151010_1464165858.jpg', NULL, NULL, 70000000, 70000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-PN09-HONG HA', 'HCM-PN09-HONG HA', 'HCM-PN09-HONG HA', 1464165943, 1464166498),
(71, 'HCM-TB02-CUULONG', 'hcm-tb02-cuulong', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;">mặt bằng hẻm th&ocirc;ng, xe tải v&agrave;o được&nbsp;</span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;">th&iacute;ch hợp mở văn ph&ograve;ng, đại l&yacute;, kho h&agrave;ng...</span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;">gi&aacute; thu&ecirc; 10.000.000 VNĐ&nbsp;</span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;">ai c&oacute; nhu cầu li&ecirc;n hệ ngay 0968111080</span>', '32', 3, NULL, 1, 1, 17, 13, 1, 0, 3, 'upload/2016/05/25/tai-xuong_1464167761.jpg', NULL, NULL, 10000000, 10000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CUULONG', 'HCM-TB02-CUULONG', 'HCM-TB02-CUULONG', 1464167837, 1464167837),
(72, 'HCM-TB02-YENTHE', 'hcm-tb02-yenthe', '<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); line-height: 20px; font-family: ''comic sans ms'', cursive; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">o thu&ecirc; mặt bằng l&agrave;m văn ph&ograve;ng gi&aacute; ph&ugrave; hợp nhất, với dịch vụ tốt nhất, tại vị tr&iacute; đắc địa nhất tr&ecirc;n đường y&ecirc;n thế.<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />\r\nvới gi&aacute; thu&ecirc; 12USD/m2 chưa bao gồm VAT v&agrave;<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />\r\n- Quy m&ocirc; : 1 trệt, 9 lầu v&agrave; 2 hầm. Tổng diện t&iacute;ch 3000m2<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />\r\n<a href="http://batdongsan.sth.vn/" style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(85, 85, 85); text-decoration: none; vertical-align: baseline; background: transparent;">LH để biết th&ecirc;m chi tiết 0968 11 1080</a></span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, ''Helvetica Neue''; font-size: 13px; line-height: 20px;" />\r\n', '>200', 3, NULL, 0, 1, 17, 13, 0, 0, 1, 'upload/2016/05/25/yen-the-02_1464168584.jpg', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-YENTHE', 'HCM-TB02-YENTHE', 'HCM-TB02-YENTHE', 1464168591, 1464168591),
(73, 'Văn Phòng 01', 'van-phong-01', 'VP VIP', '', 3, NULL, 1, 1, 17, 13, 1, 5, 1, 'upload/2016/05/31/vp_1464660862.jpg', NULL, NULL, 3000000, 3000000, 0, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'Văn Phòng 01', 'Văn Phòng 01', 'Văn Phòng 01', 1464660882, 1464660882);
INSERT INTO `objects` (`id`, `name`, `alias`, `description`, `area`, `type_id`, `project_name`, `house_id`, `city_id`, `district_id`, `ward_id`, `floor`, `max_person`, `status`, `image_url`, `price`, `price_sell`, `price_1`, `price_3`, `price_6`, `price_id`, `deposit`, `min_contract`, `position_type`, `direction_id`, `video_url`, `address`, `no_room`, `no_wc`, `object_type`, `latitude`, `longitude`, `payment`, `legal`, `street`, `created_by`, `updated_by`, `user_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(74, 'HCM-TB04-CH', 'hcm-tb04-ch', 'Cho thu&ecirc; mặt bằng đối diện maximax Cộng H&ograve;a, mặt bằng rộng đẹp<br />\r\nPh&ugrave; hợp mở văn ph&ograve;ng quy m&ocirc; tr&ecirc;n 50 người<br />\r\nHoặc mở qu&aacute;n cafe văn ph&ograve;ng&nbsp;<br />\r\nDiện t&iacute;ch : 250m2<br />\r\ngi&aacute; thu&ecirc; rẻ so với khu vực 60.000.000tr/th&aacute;ng<br />\r\nLH hotline : 0968111080', '250', 3, NULL, 10, 1, 17, 30, 1, 0, 1, 'upload/2016/06/13/img20160524103916_1465783471.jpg', NULL, NULL, 60000000, 60000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB04-CH', 'HCM-TB04-CH', 'HCM-TB04-CH', 1465783699, 1465784041),
(75, 'HCM-TB02', 'hcm-tb02', 'Mặt bằng ph&ugrave; hợp mở văn ph&ograve;ng, tiếp gi&aacute;p với s&acirc;n bay T&acirc;n sơn nhất<br />\r\ngiao thương đường kh&ocirc;ng rất thuận tiện<br />\r\nHiện nay tại khu vực t&igrave;m mặt bằng mở văn ph&ograve;ng rất kh&oacute; khăn v&igrave; gi&aacute; cho thu&ecirc; rất cao.<br />\r\nV&agrave; đ&acirc;y l&agrave; sự lựa chọn cho bạn với diện t&iacute;ch thu&ecirc; gần 80m2 được chia l&agrave;m 3 ph&ograve;ng rất đẹp<br />\r\ngi&aacute; thu&ecirc; : 20.000.000tr/th&aacute;ng<br />\r\nLH hotline : 0968111080', '80', 3, NULL, 1, 1, 17, 13, 1, 0, 3, 'upload/2016/06/13/img20160330155014_1465784226.jpg', NULL, NULL, 20000000, 20000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02', 'HCM-TB02', 'HCM-TB02', 1465785982, 1465785982),
(76, 'HCM-TB02-CL06', 'hcm-tb02-cl06', '', '80', 3, 'HCM-TB02-CL', NULL, 1, 17, 13, NULL, NULL, 1, 'upload/2016/06/13/img20160330155004_1465786215.jpg', 20000000, NULL, NULL, NULL, NULL, 0, 0, '', 0, 7, '', 'cửu long, p.2, q.tân bình', 0, 0, 2, '10.753151', '106.73088499999994', NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL06', 'HCM-TB02-CL06', 'HCM-TB02-CL06', 1465786238, 1465786238);

-- --------------------------------------------------------

--
-- Table structure for table `objects_info`
--

CREATE TABLE `objects_info` (
  `object_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : addon | 2 : convenient  | 3 : service'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objects_info`
--

INSERT INTO `objects_info` (`object_id`, `info_id`, `type`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 15, 1),
(2, 1, 2),
(2, 2, 1),
(2, 3, 1),
(2, 5, 1),
(2, 9, 2),
(2, 15, 1),
(3, 1, 2),
(3, 5, 1),
(3, 6, 2),
(3, 9, 2),
(4, 1, 2),
(4, 2, 2),
(4, 5, 1),
(4, 6, 2),
(4, 9, 2),
(4, 15, 1),
(4, 16, 1),
(5, 1, 2),
(5, 6, 2),
(5, 9, 1),
(5, 9, 2),
(5, 15, 1),
(6, 1, 2),
(6, 5, 1),
(6, 6, 2),
(6, 9, 2),
(6, 15, 1),
(6, 16, 1),
(6, 17, 1),
(6, 18, 1),
(7, 1, 2),
(7, 5, 1),
(7, 6, 2),
(7, 9, 2),
(7, 15, 1),
(9, 1, 2),
(9, 2, 1),
(9, 3, 1),
(9, 5, 1),
(9, 6, 2),
(9, 9, 2),
(9, 15, 1),
(10, 1, 2),
(10, 5, 1),
(10, 6, 2),
(10, 9, 2),
(10, 15, 1),
(11, 1, 2),
(11, 3, 1),
(11, 5, 1),
(11, 6, 2),
(11, 9, 2),
(11, 15, 1),
(12, 1, 2),
(12, 5, 1),
(12, 6, 2),
(12, 9, 2),
(12, 15, 1),
(13, 1, 2),
(13, 5, 1),
(13, 6, 2),
(13, 9, 2),
(13, 15, 1),
(14, 1, 2),
(14, 5, 1),
(14, 6, 2),
(14, 9, 2),
(14, 15, 1),
(15, 1, 2),
(15, 5, 1),
(15, 6, 2),
(15, 9, 2),
(15, 15, 1),
(16, 1, 2),
(16, 5, 1),
(16, 6, 2),
(16, 9, 2),
(16, 15, 1),
(17, 1, 2),
(17, 5, 1),
(17, 6, 2),
(17, 9, 2),
(17, 15, 1),
(18, 1, 2),
(18, 5, 1),
(18, 6, 2),
(18, 9, 2),
(18, 15, 1),
(19, 1, 2),
(19, 5, 1),
(19, 6, 2),
(19, 9, 2),
(19, 15, 1),
(21, 2, 1),
(21, 15, 1),
(22, 1, 2),
(22, 2, 1),
(22, 2, 2),
(22, 3, 2),
(22, 7, 2),
(22, 9, 2),
(22, 15, 1),
(26, 1, 2),
(26, 2, 1),
(26, 7, 2),
(26, 15, 1),
(35, 1, 2),
(35, 2, 1),
(35, 5, 1),
(35, 9, 2),
(35, 15, 1),
(36, 1, 2),
(36, 2, 1),
(36, 3, 1),
(36, 5, 1),
(36, 9, 2),
(36, 15, 1),
(37, 1, 2),
(37, 2, 1),
(37, 3, 1),
(37, 5, 1),
(37, 9, 2),
(37, 15, 1),
(40, 1, 2),
(40, 2, 1),
(40, 3, 1),
(40, 5, 1),
(40, 9, 2),
(40, 15, 1),
(41, 1, 2),
(41, 5, 1),
(41, 9, 2),
(41, 15, 1),
(42, 1, 2),
(42, 5, 1),
(42, 9, 2),
(42, 15, 1),
(44, 1, 2),
(44, 2, 1),
(44, 3, 1),
(44, 5, 1),
(44, 15, 1),
(45, 1, 2),
(45, 5, 1),
(45, 9, 2),
(45, 15, 1),
(46, 1, 2),
(46, 4, 2),
(46, 5, 1),
(46, 5, 2),
(46, 9, 2),
(46, 17, 1),
(46, 18, 1),
(47, 1, 2),
(47, 2, 1),
(47, 2, 2),
(47, 3, 1),
(47, 5, 1),
(47, 9, 2),
(47, 15, 1),
(48, 1, 2),
(48, 2, 2),
(48, 5, 1),
(48, 9, 2),
(48, 15, 1),
(48, 17, 1),
(48, 18, 1),
(49, 1, 2),
(49, 3, 2),
(49, 5, 1),
(49, 9, 2),
(49, 15, 1),
(49, 17, 1),
(49, 18, 1),
(50, 1, 2),
(50, 3, 2),
(50, 5, 1),
(50, 9, 2),
(50, 15, 1),
(50, 17, 1),
(50, 18, 1),
(51, 1, 2),
(51, 3, 2),
(51, 5, 1),
(51, 9, 2),
(51, 15, 1),
(51, 17, 1),
(51, 18, 1),
(52, 1, 2),
(52, 3, 2),
(52, 5, 1),
(52, 9, 2),
(52, 15, 1),
(52, 17, 1),
(52, 18, 1),
(53, 1, 2),
(53, 3, 2),
(53, 5, 1),
(53, 9, 2),
(53, 15, 1),
(53, 17, 1),
(53, 18, 1),
(54, 1, 2),
(54, 3, 2),
(54, 5, 1),
(54, 9, 2),
(54, 15, 1),
(54, 17, 1),
(54, 18, 1),
(55, 1, 2),
(55, 3, 2),
(55, 5, 1),
(55, 9, 2),
(55, 15, 1),
(55, 17, 1),
(55, 18, 1),
(56, 1, 2),
(56, 3, 2),
(56, 5, 1),
(56, 9, 2),
(56, 15, 1),
(56, 17, 1),
(56, 18, 1),
(73, 1, 2),
(73, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `object_tag`
--

CREATE TABLE `object_tag` (
  `object_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_tag`
--

INSERT INTO `object_tag` (`object_id`, `tag_id`) VALUES
(3, 2),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 11),
(3, 12),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(4, 2),
(4, 5),
(4, 6),
(4, 8),
(4, 11),
(4, 12),
(4, 15),
(4, 16),
(5, 2),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 11),
(5, 12),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(6, 2),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 12),
(6, 16),
(6, 17),
(7, 2),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 11),
(7, 12),
(7, 16),
(10, 11),
(10, 12),
(10, 14),
(10, 15),
(10, 16),
(10, 17),
(12, 2),
(12, 7),
(12, 12),
(12, 14),
(12, 15),
(12, 16),
(12, 17),
(13, 2),
(13, 5),
(13, 6),
(13, 8),
(13, 11),
(13, 12),
(13, 15),
(13, 17),
(14, 7),
(14, 8),
(14, 11),
(14, 12),
(14, 14),
(14, 15),
(14, 16),
(14, 17),
(18, 2),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 11),
(18, 12),
(18, 14),
(18, 15),
(18, 16),
(18, 17),
(19, 2),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 11),
(19, 12),
(19, 14),
(19, 15),
(19, 16),
(45, 2),
(45, 5),
(45, 6),
(45, 7),
(45, 8),
(45, 11),
(45, 12),
(45, 14),
(45, 15),
(45, 16),
(45, 17),
(46, 2),
(46, 5),
(46, 6),
(46, 7),
(46, 8),
(46, 11),
(46, 12),
(46, 14),
(46, 15),
(46, 16),
(46, 17),
(48, 2),
(48, 5),
(48, 6),
(48, 7),
(48, 8),
(48, 11),
(48, 12),
(48, 14),
(48, 15),
(48, 16),
(48, 17),
(49, 2),
(49, 5),
(49, 6),
(49, 7),
(49, 8),
(49, 11),
(49, 12),
(49, 14),
(49, 15),
(49, 16),
(49, 17),
(50, 2),
(50, 5),
(50, 6),
(50, 7),
(50, 8),
(50, 11),
(50, 12),
(50, 14),
(50, 15),
(50, 16),
(50, 17),
(51, 2),
(51, 5),
(51, 6),
(51, 7),
(51, 8),
(51, 11),
(51, 12),
(51, 14),
(51, 15),
(51, 16),
(51, 17),
(52, 2),
(52, 5),
(52, 6),
(52, 7),
(52, 8),
(52, 11),
(52, 12),
(52, 14),
(52, 15),
(52, 16),
(52, 17),
(53, 2),
(53, 5),
(53, 6),
(53, 7),
(53, 8),
(53, 11),
(53, 12),
(53, 14),
(53, 15),
(53, 16),
(53, 17),
(54, 2),
(54, 5),
(54, 6),
(54, 7),
(54, 8),
(54, 11),
(54, 12),
(54, 14),
(54, 15),
(54, 16),
(54, 17),
(55, 2),
(55, 5),
(55, 6),
(55, 7),
(55, 8),
(55, 11),
(55, 12),
(55, 14),
(55, 15),
(55, 16),
(55, 17),
(56, 6),
(56, 11),
(56, 12),
(70, 2),
(70, 5),
(70, 6),
(70, 7),
(70, 8),
(70, 11),
(70, 12),
(70, 14),
(70, 15),
(70, 16),
(70, 17),
(71, 2),
(71, 5),
(71, 6),
(71, 7),
(71, 8),
(71, 11),
(71, 12),
(71, 14),
(71, 15),
(71, 16),
(71, 17);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` varchar(255) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `alias`, `description`, `content`, `image_url`, `slug`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'Gioi thieu', '', '<p>\r\n	<strong>Về iChợ:</strong><br />\r\n	iChợ l&agrave; website thương mại điện tử của C&ocirc;ng ty Cổ Phần I.P.L<br />\r\n	iChợ l&agrave; một m&ocirc; h&igrave;nh chợ c&ocirc;ng nghệ chuy&ecirc;n b&aacute;n sỉ online, cung cấp m&aacute;y t&iacute;nh, c&aacute;c sản phẩm thiết bị văn ph&ograve;ng đến với tất cả đối tượng kh&aacute;ch h&agrave;ng từ những kh&aacute;ch h&agrave;ng khối cơ quan nh&agrave; nước, khối doanh nghiệp, đai l&yacute;,&hellip;.. vượt trội cả về chủng loại v&agrave; số lượng, mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm c&oacute; nguồn gốc rỏ r&agrave;ng, ch&iacute;nh h&atilde;ng, đảm bảo về chất lượng.<br />\r\n	iChợ đặt mục ti&ecirc;u trở th&agrave;nh hệ thống chợ b&aacute;n sỉ lớn nhất tr&ecirc;n to&agrave;n quốc. với c&aacute;c gi&aacute; trị tiện &iacute;ch:<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức gi&aacute; sỉ cạnh tranh.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số lượng sản phẩm đa dạng, phong ph&uacute;.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bảo h&agrave;nh ch&iacute;nh h&atilde;ng.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanh to&aacute;n an to&agrave;n, bảo mật.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốc độ giao h&agrave;ng vượt trội<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giao dịch uy t&iacute;n, thuận tiện, nhanh ch&oacute;ng.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&oacute;i kh&ocirc;ng với h&agrave;ng renew, h&agrave;ng đ&atilde; qua sử dụng.<br />\r\n	<br />\r\n	<strong>Th&ocirc;ng tin li&ecirc;n lạc:</strong></p>\r\n<ul>\r\n	<li>\r\n		<strong>Điện thoại:</strong><strong>&nbsp;1900 636 975</strong></li>\r\n	<li>\r\n		<strong>Email:</strong>&nbsp;Truy cập&nbsp;muahang@icho.vn</li>\r\n</ul>\r\n<h3>\r\n	Th&ocirc;ng tin về c&ocirc;ng ty:</h3>\r\n<ul>\r\n	<li>\r\n		C&ocirc;ng ty Cổ phần IPL</li>\r\n	<li>\r\n		Địa chỉ đăng k&yacute; kinh doanh: 216 Ho&agrave;ng Văn Thụ, Phường 4, Quận T&acirc;n B&igrave;nh</li>\r\n	<li>\r\n		Giấy chứng nhận Đăng k&yacute; Kinh doanh số 0310140399 do Sở Kế hoạch v&agrave; Đầu tư Th&agrave;nh phố Hồ Ch&iacute; Minh cấp ng&agrave;y 02/07/2010</li>\r\n</ul>\r\n', '', 'gioi-thieu', 1, '', '', '', '', 1, 1, '2016-09-22 07:14:21', '2017-01-11 14:21:44'),
(3, 'Bảo mật thông tin', 'Bao mat thong tin', '', 'Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin (Xem chi tiết tại điều 68 đến Điều 73 Nghị định 52/2013/NĐ-CP), bao gồm:\r\n<h3>\r\n	<strong>Th&ocirc;ng tin&nbsp;thu thập</strong></h3>\r\nNhững loại th&ocirc;ng tin iChợ cần&nbsp;bao gồm:\r\n<ul>\r\n	<li>\r\n		Họ v&agrave; t&ecirc;n kh&aacute;ch h&agrave;ng, địa chỉ li&ecirc;n hệ</li>\r\n	<li>\r\n		Email, số điện thoại di động, số điện thoại b&agrave;n</li>\r\n</ul>\r\n<h3>\r\n	<strong>Phạm vi sử dụng</strong></h3>\r\n<ul>\r\n	<li>\r\n		iChợ chỉ sử dụng th&ocirc;ng tin thu thập được cho mục đ&iacute;ch chăm s&oacute;c kh&aacute;ch h&agrave;ng</li>\r\n	<li>\r\n		iChợ c&oacute; thể sử dụng những th&ocirc;ng tin n&agrave;y để li&ecirc;n hệ với kh&aacute;ch h&agrave;ng bằng&nbsp;c&aacute;c h&igrave;nh thức như: thư ngỏ, đơn đặt h&agrave;ng, thư cảm ơn, th&ocirc;ng tin khuyến m&atilde;i hay dịch vụ mới</li>\r\n</ul>\r\n<h3>\r\n	<strong>Thời gian lưu trữ</strong></h3>\r\n<ul>\r\n	<li>\r\n		iChợ sẽ lưu trữ th&ocirc;ng tin do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n hệ thống phần mềm CRM trong thời gian theo d&otilde;i bảo h&agrave;nh sản phẩm.</li>\r\n	<li>\r\n		iChợ sẽ tiến h&agrave;nh x&oacute;a th&ocirc;ng tin kh&aacute;ch h&agrave;ng khi sản phẩm đ&atilde; qua hết thời hạn bảo h&agrave;nh hoặc kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;u cầu hủy th&ocirc;ng tin đ&atilde; cung cấp.</li>\r\n</ul>\r\n<h3>\r\n	<strong>Đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin</strong></h3>\r\nShowroom: 240 V&otilde; Văn Ng&acirc;n, B&igrave;nh Thọ, Thủ Đức, Hồ Ch&iacute; Minh<br />\r\nHotline: 1900 636 975\r\n<h3>\r\n	<strong>Cập nhật th&ocirc;ng tin</strong></h3>\r\nKh&aacute;ch h&agrave;ng muốn chỉnh sửa hoặc thay đổi th&ocirc;ng tin vui l&ograve;ng li&ecirc;n hệ bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số 1900 636 975\r\n<h3>\r\n	<strong>Cam kết bảo mật&nbsp;</strong></h3>\r\niChợ kh&ocirc;ng được quyền chia sẻ th&ocirc;ng tin của Qu&yacute; kh&aacute;ch cho bất kỳ một đơn vị n&agrave;o kh&aacute;c. Trong trường hợp đặc biệt, iChợ c&oacute; thể bị y&ecirc;u cầu phải tiết lộ th&ocirc;ng tin kh&aacute;ch h&agrave;ng như: khi c&oacute; căn cứ cho việc cung cấp th&ocirc;ng tin l&agrave; cần thiết để ngăn chặn c&aacute;c mối đe dọa về t&iacute;nh mạng, sức khỏe, hay cho mục đ&iacute;ch thực thi ph&aacute;p luật m&agrave; được cơ quan c&oacute; thẩm quyền y&ecirc;u cầu bằng văn bản. iChợ cam kết tu&acirc;n thủ Luật&nbsp;bảo mật&nbsp;v&agrave; c&aacute;c Nguy&ecirc;n tắc bảo mật hiện h&agrave;nh của nước Cộng h&ograve;a X&atilde; hội Chủ Nghĩa Việt Nam.', '', 'bao-mat-thong-tin', 1, '', '', '', '', 1, 1, '2016-09-22 07:14:22', '2017-01-06 13:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `value_from` float NOT NULL,
  `value_to` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `slug`, `type`, `display_order`, `value_from`, `value_to`, `created_at`, `updated_at`) VALUES
(1, 'Dưới 1 triệu', 'duoi-1-trieu', 2, 1, 0, 1, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(2, '1 - 3 triệu', '1-den-3-trieu', 2, 2, 1.1, 3, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(3, '3 - 5 triệu', '3-den-5-trieu', 2, 3, 3.1, 5, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(4, '5 - 10 triệu', '5-den-10-trieu', 2, 4, 5.1, 10, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(5, '10 - 40 triệu', '10-den-40-trieu', 2, 5, 10.1, 40, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(6, '40 - 70 triệu', '40-den-70-trieu', 2, 6, 40.1, 70, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(7, '70 - 100 triệu', '70-den-100-trieu', 2, 7, 70.1, 100, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(8, '> 100 triệu', 'tren-100-trieu', 2, 8, 100.1, 100000000, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(9, '< 500 triệu', 'duoi-500-trieu', 1, 1, 0, 500, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(10, '500 - 800 triệu', '500-den-800-trieu', 1, 2, 500.1, 800, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(11, '800 - 1 tỷ', '800-den-1-ty', 1, 3, 800.1, 1000, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(12, '1 - 2 tỷ', '1-den-2-ty', 1, 4, 1, 2, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(27, '2 - 3 tỷ', '2-den-3-ty', 1, 5, 2.1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '3 - 5 tỷ', '3-den-5-ty', 1, 6, 3.1, 5, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(29, '5 - 7 tỷ', '5-den-7-ty', 1, 7, 5.1, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '7 - 10 tỷ', '7-den-10-ty', 1, 8, 7.1, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '10 - 20 tỷ', '10-den-20-ty', 1, 9, 10.1, 20, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(32, '20 - 30 tỷ', '20-den-30-ty', 1, 10, 20.1, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '> 30 tỷ', 'tren-30-ty', 1, 11, 30.1, 100000, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `price_unit`
--

CREATE TABLE `price_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL COMMENT '1 ',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_unit`
--

INSERT INTO `price_unit` (`id`, `name`, `slug`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thỏa thuận', 'thoa-thuan', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(2, 'Trăm nghìn/tháng', 'tram-nghin', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(3, 'Triệu/tháng', 'trieu-thang', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(4, 'Trăm nghìn/m2/tháng', 'tram-nghin-m2', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(5, 'Triệu/m2', 'trieu-m2', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(6, 'Nghìn/m2/tháng', 'nghìn-m2', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(7, 'Triệu', 'trieu', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(8, 'Tỷ', 'ty', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(9, 'Cây vàng', 'cay-vang', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(10, 'Trăm nghìn/m2', 'tram-nghin-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(11, 'Triệu/m2', 'trieu-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(12, 'Chỉ vàng/m2', 'chi-vang-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(13, 'Cây vàng/m2', 'cay-vang-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 : buy 2 : rent',
  `thumbnail_id` bigint(20) NOT NULL,
  `estate_type_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `street_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `price_unit_id` smallint(6) NOT NULL,
  `area` varchar(100) NOT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `front_face` varchar(20) DEFAULT NULL,
  `street_wide` varchar(20) DEFAULT NULL,
  `no_floor` smallint(6) NOT NULL,
  `no_room` smallint(6) NOT NULL,
  `direction_id` smallint(6) NOT NULL,
  `no_wc` smallint(6) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` int(11) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_mobile` varchar(20) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `url_dothi` varchar(255) NOT NULL,
  `price_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `longt` varchar(100) DEFAULT NULL,
  `latt` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL COMMENT 'danh cho bds hot',
  `cart_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '1 : chua ban 2 : da ban 3 : giu cho',
  `meta_id` bigint(20) NOT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `slug`, `description`, `type`, `thumbnail_id`, `estate_type_id`, `city_id`, `district_id`, `ward_id`, `street_id`, `project_id`, `price`, `price_unit_id`, `area`, `full_address`, `front_face`, `street_wide`, `no_floor`, `no_room`, `direction_id`, `no_wc`, `image_url`, `video_url`, `contact_name`, `contact_address`, `contact_phone`, `contact_mobile`, `contact_email`, `url_dothi`, `price_id`, `area_id`, `longt`, `latt`, `status`, `is_hot`, `display_order`, `cart_status`, `meta_id`, `created_user`, `updated_user`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'Nhà đường 35, Bình Trưng Tây, 52,3m2, giá 2,7 tỷ, hướng Bắc', 'nha-duong-35-binh-trung-tay-523m2-gia-27-ty-huong-bac', '<p>Cần b&aacute;n gấp căn nh&agrave; B&igrave;nh Trưng T&acirc;y.<br />\r\nDiện t&iacute;ch 52,3m2 nh&agrave; 1 trệt 1 lầu c&oacute; s&acirc;n thượng.<br />\r\n3 ph&ograve;ng ngủ, 3WC, hướng Bắc.<br />\r\nNằm trong khu d&acirc;n cư hiện hữu.<br />\r\nVị tr&iacute; thuận tiện với nhiều tiện &iacute;ch xung quanh. Gần bệnh viện.<br />\r\nQ. 2.<br />\r\nĐi c&aacute;c Quận 1. Q. 7 Q. 9.<br />\r\nChỉ khoảng 5 đến 25ph&uacute;t xe m&aacute;y.<br />\r\nHẻm xe hơi v&agrave;o tận cổng.</p>\r\n', 1, 16, 2, 1, 2, 2, 1, 3, '3', 8, '52.3 m²', 'ádgdasg', '1111', '4 m', 2, 3, 0, 3, 'https://img.dothi.net/2017/05/03/20170503101222-09ec_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-35-phuong-binh-trung-tay/nha-duong-35-binh-trung-tay-523m-gia-27-ty-huong-bac-pr7839589.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 2, NULL, NULL, 0, '2017-05-05 13:40:17', '2017-05-05 18:27:21'),
(2, 'Nhà đường 7 Thạch Mỹ Lợi, Q. 2. 2,5 tỷ DT 45m2, 1 trệt 2 lầu hướng Đông Nam', 'nha-duong-7-thach-my-loi-q-2-25-ty-dt-45m2-1-tret-2-lau-huong-dong-nam', 'Cần bán gấp căn nhà đường 7 Thạch Mỹ Lợi.<br>Diện tích 45m2, DTS 130m.<br>Hẻm rộng 3m, khu an ninh cao.<br>Nằm trong khu dân cư hiện hữu với nhiều tiện ích xung quanh.<br>Trường học 1_2_3.<br>Khu vui chơi giải trí, kho bạc nhà nước, vị trí thuận tiện đi các Quận 1 Q. 7 Q. 9 chỉ khoảng 10_30phút xe máy.', 1, 17, 2, 1, 2, 0, 0, 0, '3', 8, '45 m²', '', '', '3 m', 3, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503100502-f074_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-7-phuong-thanh-my-loi/nha-duong-7-thach-my-loi-q2-25-ty-dt-45m-1-tret-2-lau-huong-dong-nam-pr7839548.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:18', '2017-05-05 18:27:21'),
(3, 'Nhà đường 18, Thạch Mỹ Lợi. 1 lầu 1 trệt, 3 tỷ hướng Bắc', 'nha-duong-18-thach-my-loi-1-lau-1-tret-3-ty-huong-bac', 'Cần bán nhà đường 18.<br>1 lầu 1 trệt.<br>Diện tích 64,3m.<br>Diện tích sàn 105,3m.<br>Ngang 5,3m dài 12,5m hẻm 3,5m.<br>Nằm trong khu dân cư hiện hữu, với nhiều các tiện ích liền kề.<br>Trường học 1_2_3, bệnh viện, chợ, giao thông thuận tiện việc đi lại.<br>Chỉ khoảng 10_25phút xe máy.', 1, 18, 2, 1, 2, 0, 0, 0, '3', 8, '64.3 m²', '', '', '4 m', 2, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503095155-3db2_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-18-1-phuong-thanh-my-loi/nha-duong-18-thach-my-loi-1-lau-1-tret-3-ty-huong-bac-pr7839455.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:19', '2017-05-05 18:27:22'),
(4, 'Nhà cùng dãy phòng trọ, cơ hội cho các nhà đầu tư giá 4 tỷ', 'nha-cung-day-phong-tro-co-hoi-cho-cac-nha-dau-tu-gia-4-ty', 'Nhà cùng dãy phòng trọ, cơ hội cho các nhà đầu tư giá 4 tỷ.<br>Cần bán gấp căn nhà đường 42.<br>Hướng Tây cùng dãy phòng trọ, đường rộng 8m.<br>Nằm trong khu dân cư hiện hữu với nhiều tiện ích liền kề,<br>Gần bệnh viện Q. 2.<br>Trường học 1_2_3. Chợ Cây Xoài, chợ Tân Lập.<br>Đường rộng, giao thông thuận tiện việc đi lại các Q. 1_9_7 khoảng 10_25phút xe máy.<br>Diện tích 101m2.<br>Diện tích xây dựng 63m2.<br>Diện tích sàn 111,4m2.<br>Giá 4 tỷ.', 1, 19, 2, 1, 2, 0, 0, 0, '4', 8, '101 m²', '', '', '8 m', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503094934-d645_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-42-3-phuong-binh-trung-dong/nha-cung-day-phong-tro-co-hoi-cho-cac-nha-dau-tu-gia-4-ty-pr7839432.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:20', '2017-05-05 18:27:22'),
(5, 'Nhà Quận 2, đường 42 Bình Trưng Đông, 2,9 tỷ, 87.3m2', 'nha-quan-2-duong-42-binh-trung-dong-29-ty-873m2', 'Cân bán gấp căn nhà hướng Tây Nam.<br>Diện tích 87,3m2.<br>Diện tích xây dựng 62,8m2.<br>Diện tích sàn 129m2, nhà 3phòng ngủ, 1 phòng thờ, 1PK,<br>1 bếp. 2WC.<br>Nằm trong khu dân cư hiện hữu, với nhiều tiện ích liền kề, gần bệnh viện Q. 2.<br>Gần trường học 1,2,3.<br>Chợ Tân Lập, chợ Cây Xoài, giao thông thuận tiện việc đi lại các quận 1 Q. 9, Q. 7.<br>Chỉ khoảng 10 - 25 phút xe máy, nhà thoáng mát, rộng đẹp với nội thất cao cấp.<br>Tiếp người thiện chí.', 1, 20, 2, 1, 2, 0, 0, 0, '3', 8, '87.3 m²', '', '', '3 m', 2, 2, 0, 2, 'https://img.dothi.net/2017/05/03/20170503093723-e8bb_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-42-3-phuong-binh-trung-dong/nha-quan-2-duong-42-binh-trung-dong-29-ty-873m-pr7839411.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:21', '2017-05-05 18:27:22'),
(6, 'Nhà cùng 4 phòng trọ đường 42 Bình Trưng Đông. 3,85 tỷ', 'nha-cung-4-phong-tro-duong-42-binh-trung-dong-385-ty', 'Cần sang gấp căn nhà cùng 4 phòng trọ, phòng mới tương đối sạch sẽ.<br>Đang full phòng, dạng 1 trệt 1 lầu DT 106,9m2.<br>Giá 3,85 tỷ, hướng Tây, đường rộng 8m.<br>Nằm trong khu dân cư hiện hữu, xung quanh có nhiều các tiện ích liền kề.<br>Gần bệnh viện Q. 2.<br>Giao thông thuận tiện cho việc đi lại các Quận 1_9_7.<br>Chỉ khoảng 10_25phút xe máy.<br>Doanh thu ổn định hàng tháng.<br>Tiếp người thiện chí.', 1, 21, 2, 1, 2, 0, 0, 0, '4', 8, '106.9 m²', '', '', '8 m', 2, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503093124-505e_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-42-3-phuong-binh-trung-dong/nha-cung-4-phong-tro-duong-42-binh-trung-dong-385ty-pr7839333.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:22', '2017-05-05 18:27:22'),
(7, 'Nhà mặt tiền hẻm đường 35, Bình Trưng Tây, 2,6 tỷ, DT 54m2', 'nha-mat-tien-hem-duong-35-binh-trung-tay-26-ty-dt-54m2', 'Cần tiền nên sang gấp nhà 2 mặt tiền đường 35 Bình Trưng Tây.<br>1 trệt 1 lầu, nhà xây để ở nên tương đối chắc chắn.<br>Nhà sạch sẽ vô ở liền.<br>Nằm trong khu dân cư hiện hữu với nhiều tiện ích liền kề,<br>Gần bệnh viện Quận 2.<br>Nhà văn hóa thiếu nhi.<br>Giao thông thuận tiện việc đi lại.', 1, 22, 2, 1, 2, 0, 0, 0, '3', 8, '54 m²', '', '', '', 2, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503092554-ba2e_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-35-phuong-binh-trung-tay/nha-mat-tien-duong-35-binh-trung-tay-26-ty-dt-54m-pr7839304.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:23', '2017-05-05 18:27:22'),
(9, 'Cần bán gấp nhà ở đường 42 Bình Trưng Đông, cấp 4 có gác lửng hướng Tây', 'can-ban-gap-nha-o-duong-42-binh-trung-dong-cap-4-co-gac-lung-huong-tay', 'Diện tích 56m2.<br>Diện tích sàn 69m2. Hẻm rộng 4m.<br>Ô tô chạy vô được.<br>Gần trường học, bệnh viện Q. 2. Chợ, giao thông thuận tiện việc đi lại.<br>Giá 2,5 tỷ.', 1, 24, 2, 1, 2, 0, 0, 0, '3', 8, '56 m²', '', '', '4 m', 0, 0, 0, 0, 'https://img.dothi.net/2017/04/15/20170415134819-9cb0_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-42-3-phuong-binh-trung-dong/can-ban-gap-nha-o-duong-42-binh-trung-dong-cap-4-co-gac-lung-huong-tay-pr7771695.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:25', '2017-05-05 18:27:22'),
(10, 'Cấn bán gấp căn nhà Nguyễn Tuyển. 50m2 giá 1.9 tỷ', 'can-ban-gap-can-nha-nguyen-tuyen-50m2-gia-19-ty', 'Diện tích 50m2.<br>Nhà 1 lầu 1 trệt, hẻm rộng, khu yên tĩnh. An tinh tốt.<br>Gần trường học 1, 2, 3.<br>Bệnh viện Q. 2. Chợ, giao thông di lại thuận tiện.<br>Đi Q. 1. Q. 9. Q. 7 chỉ khoảng 10 - 15pphút đi xe máy.', 1, 25, 2, 1, 2, 0, 0, 0, '2', 8, '50 m²', '', '', '4 m', 2, 3, 0, 0, 'https://img.dothi.net/2017/04/17/20170417134419-7fc9_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-nguyen-tuyen-phuong-binh-trung-tay/can-ban-gap-can-nha-nguyen-tuyen-50m2-gia-19-ty-pr7780535.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:25', '2017-05-05 18:27:22'),
(11, 'Cần bán nhà Bình Trưng Tây, DT 52m2, giá 2,3 tỷ hướng Nam', 'can-ban-nha-binh-trung-tay-dt-52m2-gia-23-ty-huong-nam', 'Diện tích 52m2.<br>Nhà cấp 4 có gác lửng. 2 phòng ngủ, 1WC.<br>Hẻm 4m ô tô chạy vô được.<br>Giao thông thuận tiện, đi lại dễ dàng.<br>Gần bệnh viện Q. 2, trường học, chợ.<br>Giá chốt 2,3 tỷ.', 1, 26, 2, 1, 2, 0, 0, 0, '2', 8, '52 m²', '', '', '4 m', 0, 2, 0, 1, 'https://img.dothi.net/2017/04/15/20170415154852-546a_wm.jpg', NULL, 'Đỗ Thành Đạt', 'Quận 9 - Hồ Chí Minh', '01264711623', '01676160368', '', 'https://dothi.net/ban-nha-rieng-duong-14-1-phuong-binh-trung-tay/can-ban-nha-binh-trung-tay-dt-52m2-gia-23-ty-huong-nam-pr7772114.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:26', '2017-05-05 18:27:22'),
(17, 'Bán nhà 1 hầm 1 trệt 3 lầu An Phú, Quận 2', 'ban-nha-1-ham-1-tret-3-lau-an-phu-quan-2', 'Bán nhà 1 hầm 1 trệt 3 lầu 5pn, 6wc, đường rộng thênh thang, thương lượng người thiện chí. Nội thất cơ bản.', 1, 28, 2, 1, 2, 0, 0, 0, '17', 8, '100 m²', '', '', '20 m', 4, 5, 0, 6, 'https://img.dothi.net/2017/04/25/20170425085110-5c16_wm.jpg', NULL, 'Hồ Thanh Trạng', 'Gò Vấp - Hồ Chí Minh', '', '0935003839', '', 'https://dothi.net/ban-nha-rieng-pho-vu-tong-phan-phuong-an-phu/ban-nha-1-ham-1-tret-3-lau-an-phu-quan-2-pr7813148.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:40:30', '2017-05-05 18:27:22'),
(20, 'Cần bán gấp nhà đường Lê Hữu Kiều, gần UB Q2, đường số xe hơi 7 chỗ, giá rẻ 21 tr/m2', 'can-ban-gap-nha-duong-le-huu-kieu-gan-ub-q2-duong-so-xe-hoi-7-cho-gia-re-21-tr-m2', '<p>Cần b&aacute;n gấp nh&agrave; đường L&ecirc; Hữu Kiều, gần UB Q2, đường số xe hơi 7 chỗ, gi&aacute; rẻ 21 tr/m2.<br />\r\nGia đ&igrave;nh cần tiền đầu tư dự &aacute;n định cư MB tại Mỹ b&aacute;n căn nh&agrave; 1 trệt 143m2, ngang 6m, nở hậu đều 15m, DTSD: 430m2, b&aacute;n cho ai c&oacute; nhu cầu x&acirc;y BT, chia l&ocirc; x&acirc;y khu li&ecirc;n kế, vị tr&iacute; ok, gần s&ocirc;ng giồng tho&aacute;ng m&aacute;t, gần trường học cấp 1,2,3. Gần đường Nguyễn thị Định đủ tiện &iacute;ch. Sii&ecirc;u thị, chợ, ng&acirc;n h&agrave;ng...Li&ecirc;n hệ 0919143383 A Sơn.</p>\r\n', 1, 29, 2, 1, 2, 0, 1, 0, '21', 11, '143 m²', '', '', '', 0, 0, 1, 0, 'https://img.dothi.net/2017/04/04/20170404085658-1561.jpg', NULL, 'Lê Chí Sơn', 'Đường Lê Hữu Kiều, Quận 2, Hồ Chí Minh', '0919143383', '0919143383', '', 'https://dothi.net/ban-nha-rieng-duong-le-huu-kieu-phuong-binh-trung-tay/can-ban-gap-nha-duong-le-huu-kieu-gan-ub-q2-duong-so-xe-hoi-7-cho-gia-re-21tm2-pr7832872.htm', 0, 0, '106.69894636165463', '10.791196608339426', 1, 0, 0, 1, 3, NULL, NULL, 0, '2017-05-05 13:40:32', '2017-05-21 09:32:08'),
(22, 'Bán gấp nhà hẻm 339,phước long b,q9 chỉ 2,4 tỷ/60m2/ 3pn lh 0901 404055', 'ban-gap-nha-hem-339phuoc-long-bq9-chi-24-ty-60m2-3pn-lh-0901-404055', 'trí cao, an ninh tốt, yên tĩnh, gần chợ 339, thích hợp ở lâu dài.nhà hẻm ô tô đường 339,plb,q9. nhà cấp 4 mới , kiến trúc hiện đại, khu dân \r<br>dt 4*15= 60m2 \r<br>hướng đông bắc\r<br>giá 2,4 tỷ\r<br>lh 0901 4040 55 - 0166.550.4682\r<br>', 1, 30, 2, 1, 9, 0, 0, 0, '2', 8, '60 m²', '', '', '', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/05/20170505095303-e492_wm.jpg', NULL, 'hiền', 'Quận 9 - Hồ Chí Minh', '', '0901404055', '', 'https://dothi.net/ban-nha-rieng-duong-339-phuong-phuoc-long-b/ban-gap-nha-hem-339phuoc-long-bq9-chi-24-ty60m2-3pn-lh-0901-404055-pr7847183.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:31', '2017-05-05 18:27:22'),
(23, 'Chỉ còn duy nhất 1 căn dự án khu dân cư Hiệp Phú ,nằm ngay trung tâm quận 9.', 'chi-con-duy-nhat-1-can-du-an-khu-dan-cu-hiep-phu-nam-ngay-trung-tam-quan-9', 'Chính chủ bán nhà cấp 4 cách Lê Văn Việt và ngã 4 Thủ Đức 300m\r<br>DT: 70m2 \r<br>Giá 2.4 tỷ thương lượng khách thiện chí\r<br>Sổ hồng riêng chính chủ, công chứng sang tên ngay.\r<br>2pn, 1pk, 1 bếp, 1 vs,có sân vườn trước vào sau \r<br>Giao thông thuận tiện đi về các quận 1, quận 2, quận 3, quận Thủ Đức...\r<br>Mọi chi tiết xem đất xin liên hệ : 0932505004 gặp Đình ÂN\r<br>Xem đất bất cứ lúc nào anh chị cần', 1, 31, 2, 1, 9, 0, 0, 0, '2', 8, '70 m²', '', '', '5 m', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/05/20170505090106-340d_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-duong-tan-lap-phuong-hiep-phu/chi-con-duy-nhat-1-can-du-an-khu-dan-cu-hiep-phu-nam-ngay-trung-tam-quan-9-pr7846789.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:31', '2017-05-05 18:27:22'),
(24, 'Bán nhà cấp 4 kiểu biệt thự mini trung tâm Quận 9', 'ban-nha-cap-4-kieu-biet-thu-mini-trung-tam-quan-9', 'Bán nhà cấp 4 kiểu biệt thự mini trung tâm Quận 9 cách ngã tư Thủ Đức và Lê Văn Việt 200m, ngay cạnh Coopmart Q9, Vincom Q9, công an Q9, bệnh viện Quân Dân Miền Đông, và các hệ thống ngân hàng, trạm dừng chân tuyến ga Metro Suối Tiên, Bến Thành.<br>Diện tích: 10*17.4m, 174m2 thổ cư 100% có nhà cấp 4 trên đất đường trước nhà 12m trải nhựa sạch sẽ.<br>Nằm trong khu dân trí, an ninh, sạch sẽ.<br>Giá: 6.15 tỷ có thương lượng.<br>Thuận tiện kinh doanh nhà hàng khách sạn nhà nghỉ, quán cafe...<br>Liên hệ để xem đất và sổ: 0932505004 Đình Ân.', 1, 32, 2, 1, 9, 0, 0, 0, '6', 8, '174 m²', '', '', '12 m', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/05/20170505084639-a216_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-phuong-hiep-phu/ban-dat-va-nha-cap-4-kieu-biet-thu-mini-trung-tam-quan-9-pr7846663.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:32', '2017-05-05 18:27:22'),
(25, 'Bán nhà kinh doanh đường Tân Lập 1 - phường Hiệp Phú - Q9 giá tốt', 'ban-nha-kinh-doanh-duong-tan-lap-1-phuong-hiep-phu-q9-gia-tot', 'Bán nhà đất nhà cấp 4 kiểu biệt thự mini trung tâm Quận 9 cách ngã tư Thủ Đức và Lê Văn Việt 200m, ngay cạnh Coop Mart Q9, Vincom Q9, công an Q9, bệnh viện quân dân Miền Đông, và các hệ thống ngân hàng, trạm dừng chân tuyến ga Metro Suối Tiên, Bến Thành.<br>Diện tích: 10*17.4m, 174m2 thổ cư 100% có nhà cấp 4 trên đất đường trước nhà 12m trải nhựa sạch sẽ.<br>Nằm trong khu dân trí, an ninh, sạch sẽ.<br>Giá: 6.2 tỷ có thương lượng.<br>Thuận tiện kinh doanh nhà hàng khách sạn nhà nghỉ, quán cafe, biệt thự mini.<br>Đặc biệt đối với khách mua đầu tư có thể phân thành 2 lô, 5*17.4m cam kết lời 300tr đến 400tr 1 lô.<br>Liên hệ để xem đất và sổ: 0932505004 Đình Ân.', 1, 33, 2, 1, 9, 0, 0, 0, '6', 8, '174 m²', '', '', '12 m', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/05/20170505084319-08f5_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-duong-tan-lap-1-phuong-hiep-phu/ban-dat-va-nha-kinh-doanh-duong-tan-lap-1-phuong-hiep-phu-q9-gia-tot-pr7846645.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:33', '2017-05-05 18:27:22'),
(27, 'Bán gấp nhà cấp 4, DT: 76.2m2, đường Làng Tăng Phú, giá: 2 tỷ, SH riêng', 'ban-gap-nha-cap-4-dt-762m2-duong-lang-tang-phu-gia-2-ty-sh-rieng', '- Lưu thông đi Lê Văn Việt, ngã tư Thủ Đức, Đình Phong Phú, Dương Đình Hội, Tăng Nhơn Phú.<br>- Gần Vicom quận 9, gần bệnh viện Quân Dân, trường ĐH Sư Phạm Kỹ Thuật HCM, gần cao đẳng Công Thương.<br>Đường trước nhà 10m.<br>Rất thích hợp để ở và an cư lập nghiệp.', 1, 34, 2, 1, 9, 0, 0, 0, '2', 8, '76.2 m²', '', '', '10 m', 1, 0, 0, 0, 'https://img.dothi.net/2017/05/04/20170504145441-5a84_wm.jpg', NULL, 'levantroi', 'Quận 9 - Hồ Chí Minh', '', '0934130248', '', 'https://dothi.net/ban-nha-rieng-duong-lang-tang-phu-phuong-tang-nhon-phu-b/ban-gap-nha-cap-dt-4762m2duong-lang-tang-phugia2-tyshr-pr7844849.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:35', '2017-05-05 18:27:23'),
(28, 'Bán gấp nhà cấp 4 Quận 9, 1,45 tỷ, đang cho thuê 3,5 tr/tháng, ngay đường số 6, Nguyễn Duy Trinh', 'ban-gap-nha-cap-4-quan-9-145-ty-dang-cho-thue-35-tr-thang-ngay-duong-so-6-nguyen-duy-trinh', '- Nhà cấp 4 quận 9.<br><br>+ Tại: Đường số 6, Nguyễn Duy Trinh, Quận 9, TP HCM.<br>+ Diện tích: 59m2.<br>+ Chỉ với: 1,45 tỷ - nhà mới - đang cho thuê 3,5 tr/tháng.<br><br>+ Liên kết vùng:<br>Chỉ 1Km duy chuyển tới chợ Long Trường, UBND Long Trường.<br>Chỉ 4 km di chuyển ra vòng xoay Phú Hữu, cao tốc Long Thành Dầu Giây.<br><br>- Liên hệ ngay Ms Oanh: 0909,474,164.<br>- Trân trọng!', 1, 35, 2, 1, 9, 0, 0, 0, '1', 8, '59 m²', '', '', '5 m', 1, 2, 0, 1, 'https://img.dothi.net/2017/05/04/20170504144008-ab40_wm.jpg', NULL, 'Nguyễn Thúy Oanh', 'Thủ Đức - Hồ Chí Minh', '', '0909474164', '', 'https://dothi.net/ban-nha-rieng-duong-so-6-phuong-long-truong/ban-gap-nha-cap-4-quan-9-1450-ty-dang-cho-thue-35trthang-ngay-duong-so-6-nguyen-duy-trinh-pr7844738.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:35', '2017-05-05 18:27:23'),
(29, 'Bán nhà riêng tại đường Nguyễn Duy Trinh, Phường Phú Hữu, Quận 9, giá 2,2 tỷ, 0965029590', 'ban-nha-rieng-tai-duong-nguyen-duy-trinh-phuong-phu-huu-quan-9-gia-22-ty-0965029590', 'Cần bán căn nhà phố mới xây, đẹp kiên cố, đường Nguyễn Duy Trinh, Quận 9.<br>- DT: 50m2, 150m2 sàn (4x12.5m).<br>- Nhà đúc 3 tấm, thiết kế kiểu dáng hiện đại, phương Tây.<br>- Khách, bếp, 3 PN, 3 WC, 1 phòng thờ, 1 sân thượng.<br>- Gần trường mẫu giáo, cấp 1,2,3 Long Trường, cách chợ 300m.<br>- Khu dân cư hiện hữu, sầm uất, gần đường cao tốc, khu công nghệ cao, nhà máy Sam Sung...<br>- Giao thông thuận tiện đi quận 2, quận 1, quận 7, đi Đồng Nai, Bình Dương...<br>- Hẻm xe hơi.<br>- Sổ hồng riêng.<br>Giá: 2.2 tỷ (có bớt lộc cho người thiện chí mua).<br>Liên hệ: 0965029590 (để được tư vấn và xem nhà).', 1, 36, 2, 1, 9, 0, 0, 0, '2', 8, '150 m²', '', '', '', 3, 3, 0, 3, 'https://img.dothi.net/2017/05/04/20170504105031-00a7_wm.jpg', NULL, 'Trần Dức Vương', '', '', '0965029590', '', 'https://dothi.net/ban-nha-rieng-duong-nguyen-duy-trinh-phuong-phu-huu-2/ban-nha-rieng-tai-duong-nguyen-duy-trinh-phuong-phu-huu-quan-9-gia-22-ty-0965029590-pr7843775.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:36', '2017-05-05 18:27:23'),
(37, 'Bán nhà cấp 4, hẻm xe hơi đường 6, Tăng Nhơn Phú B, Q. 9 chỉ 2,1 tỷ/56m2', 'ban-nha-cap-4-hem-xe-hoi-duong-6-tang-nhon-phu-b-q-9-chi-21-ty-56m2', 'Khu dân cư hiện hữu.<br>DT 4x15 = 55,7m2 CN.<br>Giá 2,1 tỷ.<br>Hướng Đông Nam.<br>LH 0901 404055- 0166 550 4682.', 1, 37, 2, 1, 9, 0, 0, 0, '2', 8, '55.7 m²', '', '', '', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503150713-bc64_wm.jpg', NULL, 'Hiền', 'Quận 9 - Hồ Chí Minh', '', '0901404055', '', 'https://dothi.net/ban-nha-rieng-duong-6-4-phuong-tang-nhon-phu-b/ban-nha-cap-4hem-xe-hoi-duong-6tnp-bq9-chi-21-ty56m2-kdc-hien-huu-lh-ngay-0901404055-pr7841096.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:43', '2017-05-05 18:27:23'),
(38, 'Bán nhà cấp 4, Tây Hòa, Phước Long A, Q. 9 chỉ 1,7 tỷ/51m2, nhà đẹp, xung quanh tiện ích đầy đủ', 'ban-nha-cap-4-tay-hoa-phuoc-long-a-q-9-chi-17-ty-51m2-nha-dep-xung-quanh-tien-ich-day-du', 'Nhà cấp 4, đẹp, mới sửa lại nên có thể dọn vào ở ngay, hẻm 2,5 m.<br>DT 4.6*11 = 40,8m2 CN.<br>Giá 1,69 tỷ.<br>LH 0901 4040 55.', 1, 38, 2, 1, 9, 0, 0, 0, '2', 8, '40.8 m²', '', '', '', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503150457-835d_wm.jpg', NULL, 'Hiền', 'Quận 9 - Hồ Chí Minh', '', '0901404055', '', 'https://dothi.net/ban-nha-rieng-duong-tay-hoa-phuong-phuoc-long-a/ban-nha-cap-4tay-hoapl-aq9-chi-17-ty51m2-nha-dep-xung-quanh-tien-ich-day-du-so-rieng-pr7841078.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:43', '2017-05-05 18:27:23'),
(39, 'Nhà nhỏ hẻm 48 đường Tây Hòa, Phước Long A, Q. 9 chỉ 1,45 tỷ/40m2, tiện xây mới, kế bên chợ Tây Hòa', 'nha-nho-hem-48-duong-tay-hoa-phuoc-long-a-q-9-chi-145-ty-40m2-tien-xay-moi-ke-ben-cho-tay-hoa', 'DT 3,65* 8 = CN 39,5 m2, nở hậu 6,5m.<br>Hướng Đông Nam.<br>Giá 1,45 tỷ có thương lượng.<br>LH ngay 0901 4040 55 - 0166 550 4682 Hiền.', 1, 39, 2, 1, 9, 0, 0, 0, '1', 8, '39.5 m²', '', '', '', 0, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503150232-b1a2_wm.jpg', NULL, 'Hiền', 'Quận 9 - Hồ Chí Minh', '', '0901404055', '', 'https://dothi.net/ban-nha-rieng-duong-tay-hoa-phuong-phuoc-long-a/nha-nho-hem-48-duong-tay-hoapl-aq9-chi-145-ty40m2tien-xay-moi-ke-ben-cho-tay-hoa-pr7841055.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:44', '2017-05-05 18:27:23'),
(40, 'Hẻm xe hơi đường 6, Tăng Nhơn Phú B, Q. 9, chỉ 3 tỷ (có thương lượng), ngân hàng hỗ trợ', 'hem-xe-hoi-duong-6-tang-nhon-phu-b-q-9-chi-3-ty-co-thuong-luong-ngan-hang-ho-tro', 'Nhà 1 trệt 2 lầu.<br>Hẻm ô tô, cách đường 6 40m.<br>Diện tích: 4 x 13 = 52m2.<br>Hướng: Đông Nam.<br>Giá bán: 3 tỷ thương lượng.<br>LH Hiền 0901 4040 55.', 1, 40, 2, 1, 9, 0, 0, 0, '3', 8, '52 m²', '', '', '', 3, 0, 0, 0, 'https://img.dothi.net/2017/05/03/20170503150016-6be0_wm.jpg', NULL, 'Hiền', 'Quận 9 - Hồ Chí Minh', '', '0901404055', '', 'https://dothi.net/ban-nha-rieng-duong-6-4-phuong-phuoc-long-b/ban-nha-1t2l-dep-hem-xe-hoi-duong-6tnp-bq9-chi-31-ty-co-thuong-luong-ngan-hang-ho-tro-pr7841040.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:42:44', '2017-05-05 18:27:23'),
(42, 'Chỉ còn 1 căn nhà giá tốt cuối cùng KDC Sông Đà - Hiệp Bình Chánh - Thủ Đức', 'chi-con-1-can-nha-gia-tot-cuoi-cung-kdc-song-da-hiep-binh-chanh-thu-duc', 'Nhà 2 lầu khá mới nằm trên đường 18, khu dân cư Sông Đà - phường Hiệp Bình Chánh - Thủ Đức.<br>Diện tích 5x17m, hợp đồng mua bán của chủ đầu tư Sông Đà, đang có văn bản ra sổ. Nhà hướng Nam.<br>Đường trước nhà 5m, khu phố rất nhiều người ở, an ninh, yên tĩnh.<br>Nằm cuối khu dân cư, tuy nhiên sẽ là vị trí đắc địa khi ga Bình Triệu hoàn công, nằm sát ga và đường lớn.<br>Ra đường Phạm Văn Đồng 800m, QL 13 2km. Vào trung tâm TP 15 phút.<br>Gía nhà 3,55 tỷ, trong khi các nhà đã có sổ giá 4.1-4,6 tỷ. Vấn đề là thời gian chờ đợi hơn 6 tháng.<br>Căn nhà thích hợp cho các hộ gia đình mua để ở, hoặc đầu tư lâu dài chờ sổ, có nguồn tiền cho thuê nên rất ổn.<br>Để biết thêm thông tin ra sổ hay giá thị trường hiện tại vui lòng liên hệ Qúy, sđt bên, xin cảm ơn!', 1, 41, 2, 1, 19, 0, 0, 0, '4', 8, '85 m²', '', '', '5 m', 3, 4, 0, 0, 'https://img.dothi.net/2017/04/29/20170429110605-d84c_wm.jpg', NULL, 'Nguyễn Văn Qúy', 'Quận 2 - Hồ Chí Minh', '', '0971506456', '', 'https://dothi.net/ban-nha-rieng-du-an-song-da/chi-con-1-can-nha-gia-tot-cuoi-cung-kdc-song-da-hiep-binh-chanh-thu-duc-pr7836660.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:20', '2017-05-05 18:27:23'),
(43, 'Nhà phố cao cấp, sát MT Phạm Văn Đồng, 3 lầu, 5PN, 6WC, gần chợ Thủ Đức. LH 0938878982', 'nha-pho-cao-cap-sat-mt-pham-van-dong-3-lau-5pn-6wc-gan-cho-thu-duc-lh-0938878982', 'Vị trí: Ngay UBND phường Linh Đông, cách đường Phạm Văn Đồng 300m, đường nhựa xe hơi, Thủ Đức.<br>Nhà kiến trúc sư thiết kế, nhà 1 trệt 3 lầu, có ga ra để ô tô. Nhà thiết kế gồm 5PN, 6WC, phòng Master có phòng tắm đứng, sân phơi, phòng giặt.<br><br>Nội thất:<br>Sử dụng nội thất cao cấp như thiết bị vệ sinh Kohler - Mỹ, tủ âm tường căm xe, cầu thang kính cường lực, tay vịn gỗ căm xe.<br>Tặng máy hút mùi bếp, cửa cuốn, mái che hiên di động, vách trang trí CNC, 1 bộ hệ thống trồng rau sạch tự động.<br><br>DT: 4x16m = 64m2, hướng Đông Nam.<br>Giá bán: 3,45 tỷ.<br>Sổ hồng riêng chính chủ, công chứng sang tên ngay.<br>Xem nhà gọi anh Hoàng 0938 878 982.', 1, 42, 2, 1, 19, 0, 0, 0, '3', 8, '64 m²', '', '', '', 4, 5, 0, 6, 'https://img.dothi.net/2016/11/30/20161130081008-3319_wm.jpg', NULL, 'Anh Hoàng', 'Bình Thạnh - Hồ Chí Minh', '', '0938878982', '', 'https://dothi.net/ban-nha-rieng-duong-22-phuong-linh-dong/nha-pho-cao-cap-sat-mt-pham-van-dong-3-lau-5pn-6wc-gan-cho-thu-duc-lh-0938878982-pr6879586.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:21', '2017-05-05 18:27:23'),
(44, 'Nhà 1 trệt 2 lầu cách đường Linh Đông 50m,kế bên chung cư 4s,đường thông', 'nha-1-tret-2-lau-cach-duong-linh-dong-50mke-ben-chung-cu-4sduong-thong', 'Cần bán nhà ở đường 30, P. Linh Đông, Thủ Đức, HCM.\r<br>Diện tích đất: 4.2x18.3m = 76.8m2 diện tích sàn 230m2, đường nhựa 6m đường thông\r<br>Nhà 1 trệt 2 lầu mới xây kiên cố, có 4PN, 4WC, 1PK, phòng thờ, phòng bếp, sân để xe hơi , giếng trời. Nhà mới đẹp, được xây kiên cố.\r<br>Vị trí từ nhà trong khu dân cư, an ninh, ra chợ Phạm Văn Đồng chỉ 1 phút , gần trường học, siêu thị, ra Phạm Văn Đồng 1 phút, ngã tư Bình Triệu 2km.\r<br>Nhà sổ hồng riêng, chính chủ sang tên ngay.\r<br>Giá: 3.8 tỷ.có thương lượng cho khách thiện chí\r<br>Liên hệ : 0932505004 Đình Ân', 1, 43, 2, 1, 19, 0, 0, 0, '4', 8, '230 m²', '', '', '6 m', 2, 4, 0, 4, 'https://img.dothi.net/2017/05/05/20170505090716-7f2a_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-duong-linh-dong-phuong-linh-dong/nha-1-tret-2-lau-cach-duong-linh-dong-50mke-ben-chung-cu-4sduong-thong-pr7846835.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:22', '2017-05-05 18:27:23'),
(45, 'Nhà 1 trệt 2 lầu,đường 30 Linh Đông,đường thông 6m', 'nha-1-tret-2-lauduong-30-linh-dongduong-thong-6m', 'Nhà mặt tiền hẻm thông rộng 6m đường 30 Linh Đông, cách vòng xoay Phạm Văn Đồng vs Kha Vạn Cân 100m\r<br>Kiểu nhà 1 trệt 2 lầu nhà mới xây ,mới hoàn công.\r<br>Diện tích đất: 76.8m2 diện tích sàn 230m2\r<br>Giá: 3.8 tỷ có thương lượng cho khách thiện chí.\r<br>Nhà xây kiên cố,sạch sẽ, thoáng mát.\r<br>Nhà bao gồm: 4PN, 1PK, 4VS,1 bếp, 1 sân thượng, giếng trời ,có sân để ô tô và sân phơi quần áo\r<br>Nằm trong khu dân cư hiện hữu, hiện đại, an ninh tri thức, khu vực không ngập nước.\r<br>Nằm gần chung cư 4s, view sông, gần trung tâm mua sắp, chợ, trường học\r<br>Bán nhà tặng lại 1 số nội thất cần thiết.\r<br>Liên hệ : 0932505004 Đình Ân', 1, 44, 2, 1, 19, 0, 0, 0, '4', 8, '230 m²', '', '', '6 m', 2, 4, 0, 4, 'https://img.dothi.net/2017/05/05/20170505090535-9917_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-duong-30-1-phuong-linh-dong/nha-1-tret-2-lauduong-30-linh-dongduong-thong-6m-pr7846821.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:22', '2017-05-05 18:27:23'),
(47, 'Bán nhà 1 trệt 2 lầu đường 22, phường Linh Đông, Thủ Đức,diện tích 165m2 giá 2.7 tỷ', 'ban-nha-1-tret-2-lau-duong-22-phuong-linh-dong-thu-ducdien-tich-165m2-gia-27-ty', '*Bán nhà: Đường 22, Phường Linh Đông, Thủ Đức\r<br>* Diện tích đất: 55m2 \r<br>* Diện tích sàn: 165m2.\r<br>* Cách đường 22 30m, đường rộng 5.5m thông \r<br>* Vị trí: Thuận lợi giao thông, xung quanh nhiều tiện ích.\r<br>* Hiện trạng: Nhà 1 trệt 2 lầu mới đẹp, xem sẽ thích ngay.\r<br>* 1 phòng khách, 1 bếp, 3 phòng ngủ, 3 vệ sinh, có chỗ để ô tô\r<br>* Pháp lý: Sổ hồng.\r<br>* Giá: 2.7 tỷ \r<br>Liên hệ xem sổ và nhà bất cứ lúc naò: 0932505004 Đình Ân', 1, 45, 2, 1, 19, 0, 0, 0, '3', 8, '165 m²', '', '', '5 m', 2, 3, 0, 3, 'https://img.dothi.net/2017/05/05/20170505085329-d6e1_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-phuong-linh-dong/ban-nha-1-tret-2-lau-duong-22-phuong-linh-dong-thu-ducdien-tich-165m2-gia-27-ty-pr7846725.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:24', '2017-05-05 18:27:23'),
(48, 'Bán nhà 1 trệt 2 lầu đường 22, Linh Đông, Quận Thủ Đức giá 2,7 tỷ/165m2', 'ban-nha-1-tret-2-lau-duong-22-linh-dong-quan-thu-duc-gia-27-ty-165m2', 'Thông tin căn bản về căn nhà: Đường trước nhà 6m, ô tô đi lại được, cách đường 22 30m, đường thông thoáng, thuận tiện cho việc đi lại, khu dân cư hiện hữu, đông đúc, có dân trí cao, khu vực an ninh. Gần các tiện ích xung quanh như trường học, bệnh viện, ngân hàng và chợ...\r<br>Hiện trạng: Nhà 1 trệt 2 lầu, mua về dọn vào ở ngay, thích hợp cho các gia đình định cư lâu dài.\r<br>Diện tích: 55m2 diện tích sàn 165m2\r<br>Giá: 2,7 tỷ\r<br>Liên hệ: 0932505004 Đình Ân biết thêm chi tiết', 1, 46, 2, 1, 19, 0, 0, 0, '3', 8, '165 m²', '', '', '5 m', 2, 3, 0, 3, 'https://img.dothi.net/2017/05/05/20170505085208-7978_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-phuong-linh-dong/ban-nha-1-tret-2-lau-duong-22-linh-dong-quan-thu-duc-gia-27-ty165m2-pr7846713.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:25', '2017-05-05 18:27:23'),
(49, 'Chuyển công tác, chính chủ bán gấp nhà 1 trệt 2 lầu đường 22 linh đông, giá 2.7 tỷ', 'chuyen-cong-tac-chinh-chu-ban-gap-nha-1-tret-2-lau-duong-22-linh-dong-gia-27-ty', 'Cần bán gấp nhà đường 22, Linh Đông, Thủ Đức.<br>Diện tích đất: 55m2 diện tích sàn sử dụng 165m2.<br>Nhà 1 trệt, 2 lầu còn mới, kiên cố, nhìn là thích ngay.<br>Nhà gồm: 3 phòng ngủ, 3 vệ sinh, bếp, phòng khách, có chỗ để ô tô...<br>Nằm trong khu dân cư an ninh tri thức, thoáng mát sạch sẽ.<br>Đường trước nhà 6m, ô tô đi lại được, đường thông thoáng, thuận tiện cho việc đi lại.<br>Giá: 2.7 tỷ.<br>Liên hệ: 0932505004 Đình Ân.', 1, 47, 2, 1, 19, 0, 0, 0, '3', 8, '55 m²', '', '', '6 m', 2, 3, 0, 3, 'https://img.dothi.net/2017/05/05/20170505085058-5209_wm.jpg', NULL, 'Nguyễn Đình Ân', 'Thủ Đức - Hồ Chí Minh', '', '0932505004', '', 'https://dothi.net/ban-nha-rieng-phuong-linh-dong/chuyen-cong-tac-chinh-chu-ban-gap-nha-1-tret-2-lau-duong-22-linh-dong-gia-27-ty-pr7846706.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:26', '2017-05-05 18:27:23'),
(50, 'Bán nhà mới nguyên căn-3 lầu tại đường Einstein- P.Bình Thọ- Thủ Đức', 'baan-nha-moi-nguyen-can-3-laau-tai-duong-einstein-pbinh-tho-thu-duc', 'Bán nhà nguyên căn đầy đủ tiện nghi rất thuận tiện để ở ngang 8m dài 6.5m, 3 lầu, 2 phòng ngủ, 1 nhà bếp, 1 phòng khách,1 phòng thờ, sân phơi tại số 25Q, đường Einstein,KP4, P.Bình Thọ,Q.Thủ Đức, TP.HCM. Nhà mới xây có đầy đủ giường ngủ, bàn ghế Sopha Chilai, bộ bàn ăn,kệ bếp trên dưới bằng gỗ,bếp gas Rinnai,tủ đựng giày,tủ quần áo âm tường, máy hút khói,quầy bar,Ti Vi,Tủ Lạnh, Máy Giặt, Máy Lạnh Daikin, internet , truyền hình cáp, nước máy, nước nóng năng lượng mặt trời,bồn cầu +lababo Linax, vòi sen nóng lạnh  đầy đủ....Khu dân cư xung quanh là biệt thự làng đại học Thủ Đức, dân trí cao và gần CA.Phường nên rất an toàn. Tọa lạc vị trí thuận tiện gần trạm xe cao tốc Suối Tiên- Bến Thành, chợ, trường học,TT y tế,trung tâm hành chính Q.Thủ Đức, gần trung tâm mua sắm Nguyễn Kim, Vincom...đường thoáng rộng thuận tiện việc đi lại và đi làm vào TT TP.HCM hay KCN Bình Dương, Đồng Nai. Dể thương lượng tuyệt vời để ở thuận lợi cho con cái xin nhập học các trường điểm của quận,...ĐT LHệ 0909,874,984 Gặp Mr.Vi-Chính Chủ. Đặc biệt ưu tiên cho giáo viên,công nhân viên chức có nhu cầu thiện chí mua.\r<br>Ưu tiên cho người liên hệ trước.Giá đề nghị 3.160.000 VND.\r<br>Hiện tại đang cho thuê 10tr/tháng.', 1, 48, 2, 1, 19, 0, 0, 0, '3', 8, 'Không xác định', '', '', '5 m', 3, 2, 0, 2, 'https://img.dothi.net/2017/05/04/20170504202510-0e8f_wm.jpg', NULL, 'Mr.Vi', '', '', '0909874984', '', 'https://dothi.net/ban-nha-rieng-duong-einstein-phuong-binh-tho/ban-nha-moi-nguyen-can3-lau-tai-duong-einstein-pbinh-tho-thu-duc-pr7845971.htm', NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 0, '2017-05-05 13:43:26', '2017-05-05 18:27:23'),
(52, 'Nhà gần chợ Bình Triệu, Thủ Đức đúc 3 tầng, sân thượng, có sân để xe hơi 7 chỗ', 'nha-gan-cho-binh-trieu-thu-duc-duc-3-tang-san-thuong-co-san-de-xe-hoi-7-cho', 'Nh&agrave; b&aacute;n Quốc Lộ 13, Quận Thủ Đức. Nh&agrave; mới x&acirc;y, thiết kế đẹp, nội thất cao cấp, sang trọng.<br />\r\nDiện t&iacute;ch 4x21m.<br />\r\n(X&acirc;y dựng 4x14m, c&oacute; s&acirc;n để xe hơi), Đ&uacute;c một trệt, hai lầu, s&acirc;n thượng. Gồm s&acirc;n để xe hơi 7 chỗ, 1 PK, 4 PN, ph&ograve;ng ăn, bếp rộng, 4 nh&agrave; tắm, WC, s&acirc;n thượng trước sau rộng. Khu d&acirc;n cư an ninh, y&ecirc;n tĩnh, đường trước nh&agrave; 8 m&eacute;t, xe &ocirc; t&ocirc; đỗ cửa. Gồm:<br />\r\nTầng 1: S&acirc;n để xe hơi 7 chỗ, 1 PK, ph&ograve;ng ăn, bếp, nh&agrave; tắm, WC, giếng trời.<br />\r\nTầng 2: Hai ph&ograve;ng ngủ, nh&agrave; tắm, WC, banconl.<br />\r\nTầng 3: Hai ph&ograve;ng ngủ, nh&agrave; tắm, WC, banconl.<br />\r\nTầng thượng: Chuồng cu, nh&agrave; Tắm, WC, S&acirc;n thượng rộng trước sau.<br />\r\n<br />\r\nVị tr&iacute;: Nh&agrave; gần Quốc Lộ 13(Đang chuẩn bị mở rộng), gần chợ, trường học, Vincom, Coop Max B&igrave;nh Triệu, bến xe Miền Đ&ocirc;ng, gần khu đ&ocirc; thị Vạn Ph&uacute;c, c&ocirc;ng vi&ecirc;n lớn nhất đang x&acirc;y ven s&ocirc;ng S&agrave;i G&ograve;n.<br />\r\nNh&agrave; c&aacute;ch trường Đại Học Luật, chợ B&igrave;nh triệu gần 1 Km, gi&aacute;p ranh B&igrave;nh Thạnh, c&aacute;ch trung T&acirc;m Quận 1 chỉ 15 ph&uacute;t xe m&aacute;y, thuận tiện lưu th&ocirc;ng v&agrave;o Quận 9, Q2, Ph&uacute; Nhuận, G&ograve; Vấp, Q3&hellip;v&agrave; đi khu vực B&igrave;nh Dương.<br />\r\nDT 4x21m (Đ&uacute;c một trệt, hai lầu, s&acirc;n thượng. DTSD hơn 200 m&eacute;t vu&ocirc;ng).<br />\r\nPh&aacute;p l&yacute; sổ hồng ri&ecirc;ng, bao c&ocirc;ng chứng sang t&ecirc;n (hỗ trợ vay vốn ng&acirc;n h&agrave;ng đến 70 %).<br />\r\nGi&aacute;: 3,15 tỷ.<br />\r\n(Chương tr&igrave;nh khuyến m&atilde;i v&agrave; chiết khấu trong th&aacute;ng n&agrave;y: Tặng tủ bếp, kệ bếp, m&aacute;y năng lượng mặt trời. Chiết khấu l&ecirc;n đến 3 % cho kh&aacute;ch h&agrave;ng, tổng gi&aacute; trị hơn 30 triệu).<br />\r\nLi&ecirc;n hệ chủ đầu tư: 0909685597.', 1, 64, 2, 1, 19, 0, 848, 0, '3', 8, '84 m²', '', '', '8 m', 0, 4, 1, 4, 'https://img.dothi.net/2017/04/02/20170402201354-4d8f_wm.jpg', NULL, 'Vũ Văn Luyện', 'Bình Chánh - Hồ Chí Minh', '', '0988715847', '', 'https://dothi.net/ban-nha-rieng-duong-quoc-lo-13-phuong-hiep-binh-phuoc/nha-gan-cho-binh-trieu-thu-duc-duc-3-tang-san-thuong-co-san-de-xe-hoi-7-cho-pr7692609.htm', 0, 0, '', '', 1, 0, 0, 1, 22, NULL, NULL, 0, '2017-05-05 13:43:28', '2017-05-21 15:45:59'),
(70, 'dsgd fshdfsh', 'dsgd-fshdfsh', '', 1, 0, 8, 1, 2, 2, 3, 2, '12412412', 10, '', '124124124124cv gdf hdf', '', '', 0, 0, 6, 0, NULL, NULL, 'sdgasgwegwe', '', '', 'tewtqewtw', '', '', NULL, NULL, NULL, NULL, 2, 0, 0, 1, 0, NULL, NULL, NULL, '2017-05-13 13:43:51', '2017-05-13 13:43:51'),
(71, 'df dà sdf', 'df-da-sdf', '', 1, 0, 2, 1, 2, 9, 11, 11, '111', 2, '11', '11 sầ sff', '12', '12', 22, 3, 7, 0, NULL, NULL, ' gádgdfsdfhdfsh', '', '', '0987643421', '', '', NULL, NULL, NULL, NULL, 2, 0, 0, 1, 0, NULL, NULL, NULL, '2017-05-14 20:27:53', '2017-05-14 20:27:53'),
(72, 'df dà sdf', 'df-da-sdf', '', 1, 0, 2, 1, 2, 9, 11, 11, '111', 2, '11', '11 sầ sff', '12', '12', 22, 3, 7, 0, NULL, NULL, ' gádgdfsdfhdfsh', '', '', '0987643421', '', '', NULL, NULL, NULL, NULL, 2, 0, 0, 1, 0, NULL, NULL, NULL, '2017-05-14 20:29:00', '2017-05-14 20:29:00'),
(73, 'df dà sdf', 'df-da-sdf', '', 1, 0, 2, 1, 2, 9, 11, 11, '111', 2, '11', '11 sầ sff', '12', '12', 22, 3, 7, 0, NULL, NULL, ' gádgdfsdfhdfsh', '', '', '0987643421', '', '', NULL, NULL, NULL, NULL, 2, 0, 0, 1, 0, NULL, NULL, NULL, '2017-05-14 20:29:17', '2017-05-14 20:29:17'),
(74, 'df dà sdf', 'df-da-sdf', '', 1, 0, 2, 1, 2, 9, 11, 11, '111', 2, '11', '11 sầ sff', '12', '12', 22, 3, 7, 0, NULL, NULL, ' gádgdfsdfhdfsh', '', '', '0987643421', '', '', NULL, NULL, NULL, NULL, 2, 0, 0, 1, 0, NULL, NULL, NULL, '2017-05-14 20:29:46', '2017-05-14 20:29:46'),
(76, 'Bán nhà đường số 6 phường Tăng Nhơn Phú B giá 1,7 tỷ', 'ban-nha-duong-so-6-phuong-tang-nhon-phu-b-quan-9-17-ty', '<br />\r\nGi&aacute;:<br />\r\n1.700.000.000 đ<br />\r\nLi&ecirc;n hệ:<br />\r\nAnh Ba<br />\r\nĐiện thoại:<br />\r\n0919010246<br />\r\nCh&iacute;nh chủ cần b&aacute;n gấp căn nh&agrave; 1 trệt 1 lầu đường số 6 phường Tăng Nhơn Ph&uacute; B Quận 9&nbsp;<br />\r\nDiện t&iacute;ch: 60m2<br />\r\nNh&agrave; 1 trệt 1 lầu.<br />\r\nNh&agrave; t&ocirc;i hướng Đ&ocirc;ng Nam n&ecirc;n rất m&aacute;t.<br />\r\nSổ hồng ri&ecirc;ng mua b&aacute;n c&ocirc;ng chứng trong ng&agrave;y.<br />\r\nGần chợ ,si&ecirc;u thị Vincom, Corpmart, C&aacute;ch ng&atilde; 4 Thủ Đức 1km, khu h&agrave;nh ch&iacute;nh, KDC hiện hữu, th&iacute;ch hợp gia đ&igrave;nh ở, hoặc cho thu&ecirc;,giao th&ocirc;ng rất thuận lợi.<br />\r\nNh&agrave; x&acirc;y để ở l&agrave;m rất kỹ, kết cấu ki&ecirc;n cố. Điện nước đầy đủ, mua l&agrave; v&agrave;o ở ngay.<br />\r\nGi&aacute;: 1,7 tỷ (70%)<br />\r\nNg&acirc;n h&agrave;ng c&oacute; hỗ trợ cho vay từ 50 đến 70 %<br />\r\nLi&ecirc;n hệ ch&iacute;nh chủ: 0919.010.246 Anh Ba để xem nh&agrave;.', 1, 61, 2, 1, 9, 23, 373, 0, '1,7', 8, '60', '', '3', '', 1, 2, 2, 1, NULL, NULL, 'Phan Anh Phương', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', 8, 3, '106.77313452513113', '10.817313847239411', 1, 0, 0, 1, 20, NULL, NULL, NULL, '2017-05-20 21:09:38', '2017-05-20 21:16:16'),
(78, 'Nhà 177m, 1 trệt 3 lầu mặt tiền đường 109 PLB, 3.7 tỷ', 'nha-177m-1-tret-3-lau-mat-tien-duong-109-plb-37-ty', 'Nh&agrave; 177m, 1 trệt 3 lầu mặt tiền đường 109 PLB, 3.7 tỷ<br />\r\n- Dt: 3.7 x 17m, Dtcn:47m<br />\r\n- Nh&agrave; c&oacute; 5pn, pk bếp, toilet trong ph&ograve;ng, s&acirc;n để xe hơi, ban c&ocirc;ng tầng 3 v&agrave; 4.<br />\r\n- Đường xe hơi trước nh&agrave; 5m ra đường Dương Đ&igrave;nh Hội khoảng 80m<br />\r\n- Giao th&ocirc;ng thuận tiện khi đến c&aacute;c địa điểm: trường học, si&ecirc;u thị, ng&acirc;n h&agrave;ng, &hellip;.<br />\r\n- Khu vực an ninh, y&ecirc;n tĩnh.<br />\r\n- Hướng nh&agrave;: Đ&ocirc;ng-Bắc<br />\r\n- C&oacute; sổ hồng ri&ecirc;ng<br />\r\n- Gi&aacute;: 3.7 tỷ<br />\r\nLH: Nh&agrave; đất Phước Long 23 Tăng Nhơn Ph&uacute;, LUẬT: 0909230777-0946456356.&nbsp;<br />\r\nKh&aacute;ch đi coi thiện ch&iacute;. Li&ecirc;n lạc qua Luật.&nbsp;<br />\r\nNhận nh&agrave; đất gởi b&aacute;n nhanh được gi&aacute;.&nbsp;<br />\r\nDẫn người đi mua trực tiếp, xin lỗi k tiếp trung gian đừng gọi hỏi.&nbsp;', 1, 63, 2, 1, 9, 12, 373, 0, '3.7', 8, '60', 'Nhà đất Phước Long 23 Tăng Nhơn Phú', '4', '4', 1, 1, 6, 1, NULL, NULL, 'Phan', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', 10, 4, '', '', 1, 0, 0, 1, 21, NULL, NULL, NULL, '2017-05-21 15:39:59', '2017-05-21 15:40:56'),
(79, 'Cho thuê nhà tại Quận 7, 5,6x16m, 1 trệt, 3 lầu, đủ nội thất, giá 3,95 tỷ', 'cho-thue-nha-tai-quan-7-56x16m-1-tret-3-lau-du-noi-that-gia-395-ty', 'Cần b&aacute;n nh&agrave; tại Quận 7, diện t&iacute;ch 5,6x16m, nh&agrave; x&acirc;y dựng 1 trệt, 3 lầu, 4 ph&ograve;ng ngủ, 5 WC, nội thất cao cấp, nh&agrave; &eacute;p cừ b&ecirc; t&ocirc;ng, nh&agrave; mới 100%, đường 8m, gi&aacute; b&aacute;n 3,95 tỷ. Vui l&ograve;ng li&ecirc;n hệ: 0933811811.', 2, 66, 11, 1, 9, 23, 386, 0, '2', 7, '40', 'Quận 7', '3', '3', 2, 2, 5, 2, NULL, NULL, 'Phan', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', 2, 2, '', '', 1, 0, 0, 1, 25, NULL, NULL, NULL, '2017-05-21 16:04:29', '2017-05-21 16:04:29'),
(80, 'Nhà bán số 154 Nguyễn Phúc Chu Q.Tân Bình DT: 4mX16m, đúc 4 tấm', 'nha-ban-so-154-nguyen-phuc-chu-qtan-binh-dt-4mx16m-duc-4-tam', 'Nh&agrave; b&aacute;n số 154 Nguyễn Ph&uacute;c Chu F.15 Q. T&acirc;n B&igrave;nh gần chợ T&acirc;n Trụ,gần trường học,khu d&acirc;n tr&iacute; cao,nh&agrave; liền kề,x&acirc;y mới,đ&atilde; ho&agrave;n c&ocirc;ng,sổ hồng đầy đủ,ch&iacute;nh chủ b&aacute;n,c&oacute; hổ trợ vay vốn ng&acirc;n h&agrave;ng. DT: 4mX16m, đ&uacute;c 4 tấm,4 ph&ograve;ng ngủ,1 ph&ograve;ng thờ, s&acirc;n thượng,ph&ograve;ng phơi đồ, nội thất cao cấp,khu biệt lập,đường nội bộ. Gi&aacute;: 5 tỷ 500tr. LH: A Khương 0913675853 - Chị Nhương 0971793209', 1, 67, 2, 1, 9, 12, 381, 0, '3', 8, '50', 'Nhà bè', '1', '3', 3, 3, 4, 1, NULL, NULL, 'Phan', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', 8, 2, '', '', 1, 0, 0, 1, 26, NULL, NULL, NULL, '2017-05-21 16:07:10', '2017-05-21 19:05:36'),
(81, 'Nhà 2 phòng ngủ, 2 lầu Võ Văn Hát, p. Long Trường', 'nha-2-phong-ngu-2-lau-vo-van-hat-p-long-truong', 'Cần bán nhà 1 trệt 2 lầu đường Võ Văn Hát, đường trước nhà 3m, gần chợ, trường học, điện nước đầy đủ\r\n- Diện tích: 35m2\r\n- Sổ riêng', 1, 68, 0, 1, 2, 9, 359, 0, '50', 7, '45', 'quan 9', '3', '3', 3, 2, 1, 1, NULL, NULL, 'Phan', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', NULL, NULL, NULL, NULL, 2, 0, 0, 1, 0, NULL, NULL, NULL, '2017-05-21 19:08:02', '2017-05-21 19:08:02'),
(82, 'Đất Hóc Môn chỉ 250tr/nền,SH riêng, CK 5%, tặng 3 chỉ vàng, góp 0% LS', 'dat-hoc-mon-chi-250tr-nensh-rieng-ck-5-tang-3-chi-vang-gop-0-ls', 'Mở b&aacute;n dự &aacute;n đất nền khu d&acirc;n cư t&aacute;i định cư H&oacute;c M&ocirc;n. Gi&aacute; rẻ chỉ 250 triệu/nền, chiết khấu ngay 5%, tặng 3 chỉ v&agrave;ng cho ng&agrave;y mở b&aacute;n đầu ti&ecirc;n ng&agrave;y 21/5/2017. Dự &aacute;n mang lại cuộc sống phồn vinh-đầu tư sinh lợi. Quy m&ocirc;: 25 hecta tọa lạc ngay mặt tiền Tỉnh Lộ 9 (trục đường Nguyễn Văn Bứa nối d&agrave;i) Diện t&iacute;ch: 4x15m, 5x20m, 10x20m,.. Ph&aacute;p l&yacute;: sổ hồng ri&ecirc;ng từng n&ecirc;n, thể hiện r&otilde; cam kết tr&ecirc;n hợp đồng. Cơ sở hạ tầng: đường trải nhựa 15m, vỉa h&egrave; 3m, điện &acirc;m, nước m&aacute;y. L&agrave; khu kh&eacute;p k&iacute;n, c&oacute; camre an ninh, c&oacute; chốt bảo vệ 24/7. Kết nối với Củ Chi, H&oacute;c M&ocirc;n dễ d&agrave;ng. Gần trường học, bệnh viện, ủy ban nh&acirc;n d&acirc;n, trường đua ngựa Quốc Tế, c&aacute;c cụm KCN,.. L&agrave; nơi l&yacute; tưởng để an cư v&agrave; đầu tư. Kết hợp vui chơi giải tr&iacute; nội khu. C&oacute; xe đưa rước đi tham quan miễn ph&iacute; v&agrave;o mỗi tuần. Li&ecirc;n hệ ngay Chủ Đầu Tư Ms.Hương - 0931.474.174 để đi xem v&agrave; đặt chỗ ngay ng&agrave;y h&ocirc;m nay.', 2, 69, 11, 1, 2, 1, 1, 1, '50', 8, '50', 'an phú', '3', '8', 2, 2, 5, 2, NULL, NULL, 'Phan', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', 0, 0, '', '', 1, 0, 0, 1, 27, NULL, NULL, NULL, '2017-05-22 15:02:29', '2017-05-22 15:03:41'),
(83, 'Cần bán gấp đất biệt thự lô D9 đường TK7, KDC Hoàng Hải, 8x33m', 'can-ban-gap-dat-biet-thu-lo-d9-duong-tk7-kdc-hoang-hai-8x33m', 'Cần b&aacute;n gấp đất biệt thự l&ocirc; D9 đường TK7, Khu d&acirc;n cư Ho&agrave;ng Hải, đất thuộc dự &aacute;n khu d&acirc;n cư, đường nhựa 14m, đ&atilde; x&acirc;y tường bao Diện t&iacute;ch 8x33m, gi&aacute; 3,6 tỷ, Giấy tờ hợp đồng mua b&aacute;n C&ocirc;ng ty Địa chỉ: X&atilde; B&agrave; Điểm, H.H&oacute;c M&ocirc;n, Tp.Hồ Ch&iacute; Minh. Li&ecirc;n hệ : ch&iacute;nh chủ chị Huyền : 098 9999 044', 1, 70, 2, 1, 2, 11, 12, 12, '17', 8, '500', 'an phú', '6', '19', 1, 1, 1, 1, NULL, NULL, 'Phan', '13 Thich Minh Nguyet, Phuong 2, Quan Tan Binh', '938766885', '938766885', 'baoanhco@yahoo.com', '', 11, 13, '', '', 1, 0, 0, 1, 28, NULL, NULL, NULL, '2017-05-22 16:15:03', '2017-05-23 00:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` bigint(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `image_url`, `display_order`) VALUES
(11, 20, '2017/05/05/1339337386492583760-574-574-1493981157.jpg', 1),
(12, 20, '2017/05/05/hinh-anh-teen-girl-9x-10x-sieu-cute-lam-xao-xuyen-long-nguoi-1493981157.jpg', 1),
(13, 53, '2017/05/05/girl-xinh-facebook-tu-suong-1493982126.jpg', 1),
(14, 53, '2017/05/05/1339337386492583760-574-574-1493982126.jpg', 1),
(15, 53, '2017/05/05/hinh-anh-teen-girl-9x-10x-sieu-cute-lam-xao-xuyen-long-nguoi-1493982126.jpg', 1),
(16, 1, 'https://img.dothi.net/2017/05/03/20170503101222-09ec_wm.jpg', 1),
(17, 2, 'https://img.dothi.net/2017/05/03/20170503100502-f074_wm.jpg', 1),
(18, 3, 'https://img.dothi.net/2017/05/03/20170503095155-3db2_wm.jpg', 1),
(19, 4, 'https://img.dothi.net/2017/05/03/20170503094934-d645_wm.jpg', 1),
(20, 5, 'https://img.dothi.net/2017/05/03/20170503093723-e8bb_wm.jpg', 1),
(21, 6, 'https://img.dothi.net/2017/05/03/20170503093124-505e_wm.jpg', 1),
(22, 7, 'https://img.dothi.net/2017/05/03/20170503092554-ba2e_wm.jpg', 1),
(24, 9, 'https://img.dothi.net/2017/04/15/20170415134819-9cb0_wm.jpg', 1),
(25, 10, 'https://img.dothi.net/2017/04/17/20170417134419-7fc9_wm.jpg', 1),
(26, 11, 'https://img.dothi.net/2017/04/15/20170415154852-546a_wm.jpg', 1),
(28, 17, 'https://img.dothi.net/2017/04/25/20170425085110-5c16_wm.jpg', 1),
(29, 20, 'https://img.dothi.net/2017/04/04/20170404085658-1561.jpg', 1),
(30, 22, 'https://img.dothi.net/2017/05/05/20170505095303-e492_wm.jpg', 1),
(31, 23, 'https://img.dothi.net/2017/05/05/20170505090106-340d_wm.jpg', 1),
(32, 24, 'https://img.dothi.net/2017/05/05/20170505084639-a216_wm.jpg', 1),
(33, 25, 'https://img.dothi.net/2017/05/05/20170505084319-08f5_wm.jpg', 1),
(34, 27, 'https://img.dothi.net/2017/05/04/20170504145441-5a84_wm.jpg', 1),
(35, 28, 'https://img.dothi.net/2017/05/04/20170504144008-ab40_wm.jpg', 1),
(36, 29, 'https://img.dothi.net/2017/05/04/20170504105031-00a7_wm.jpg', 1),
(37, 37, 'https://img.dothi.net/2017/05/03/20170503150713-bc64_wm.jpg', 1),
(38, 38, 'https://img.dothi.net/2017/05/03/20170503150457-835d_wm.jpg', 1),
(39, 39, 'https://img.dothi.net/2017/05/03/20170503150232-b1a2_wm.jpg', 1),
(40, 40, 'https://img.dothi.net/2017/05/03/20170503150016-6be0_wm.jpg', 1),
(41, 42, 'https://img.dothi.net/2017/04/29/20170429110605-d84c_wm.jpg', 1),
(42, 43, 'https://img.dothi.net/2016/11/30/20161130081008-3319_wm.jpg', 1),
(43, 44, 'https://img.dothi.net/2017/05/05/20170505090716-7f2a_wm.jpg', 1),
(44, 45, 'https://img.dothi.net/2017/05/05/20170505090535-9917_wm.jpg', 1),
(45, 47, 'https://img.dothi.net/2017/05/05/20170505085329-d6e1_wm.jpg', 1),
(46, 48, 'https://img.dothi.net/2017/05/05/20170505085208-7978_wm.jpg', 1),
(47, 49, 'https://img.dothi.net/2017/05/05/20170505085058-5209_wm.jpg', 1),
(48, 50, 'https://img.dothi.net/2017/05/04/20170504202510-0e8f_wm.jpg', 1),
(51, 55, '2017/05/09/chrysanthemum-1494344815.jpg', 1),
(52, 55, '2017/05/09/desert-1494344815.jpg', 1),
(53, 55, '2017/05/09/hydrangeas-1494344815.jpg', 1),
(54, 56, '2017/05/10/girl-xinh-facebook-tu-suong-1494383410.jpg', 1),
(55, 56, '2017/05/10/1339337386492583760-574-574-1494383410.jpg', 1),
(56, 56, '2017/05/10/hinh-anh-teen-girl-9x-10x-sieu-cute-lam-xao-xuyen-long-nguoi-1494383410.jpg', 1),
(61, 76, '2017/05/20/ban-nha-quan-8-duong-tang-nhon-phu-b-1495289414.jpg', 1),
(63, 78, '2017/05/21/c134a9e60fd64b1891ada8cd6e624701-1495356030.jpg', 1),
(64, 52, '2017/05/21/dffce680d20c446e8caf4da0d0e80e02-1495356357.jpg', 1),
(66, 79, '2017/05/21/nha-cho-thue-1495357467.jpg', 1),
(67, 80, '2017/05/21/1-1495357622.jpg', 1),
(68, 81, '2017/05/21/1-1495368450.jpg', 1),
(69, 82, '2017/05/22/1-1495440139.jpg', 1),
(70, 83, '2017/05/22/1-1495444499.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `longt` varchar(100) NOT NULL,
  `latt` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `id_dothi` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `slug`, `type`, `ward_id`, `district_id`, `city_id`, `address`, `contact`, `phone`, `image_url`, `video_url`, `description`, `content`, `hot`, `longt`, `latt`, `display_order`, `status`, `meta_id`, `id_dothi`, `created_at`, `updated_at`) VALUES
(1, 'Chung cư An Cư', 'chung-cu-an-cu', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.739', '10.79798', 1, 1, NULL, 1744, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(2, 'Chung cư An Hòa', 'chung-cu-an-hoa', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7396', '10.79307', 2, 1, NULL, 680, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(3, 'Cao ốc An Khang', 'cao-oc-an-khang', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7398', '10.79733', 3, 1, NULL, 528, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(4, 'An Lộc  - An Phúc', 'an-loc-an-phuc', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7449', '10.79671', 4, 1, NULL, 1746, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(5, 'An Phú - An Khánh', 'an-phu-an-khanh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7378', '10.79744', 5, 1, NULL, 83, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(6, 'Chung cư An Thịnh', 'chung-cu-an-thinh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7383', '10.79785', 6, 1, NULL, 1864, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(7, 'Biệt thự Hà Đô', 'biet-thu-ha-do', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7647', '10.75836', 7, 1, NULL, 1748, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(8, 'Bình An Pearl', 'bình-an-pearl', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7301', '10.78909', 8, 1, NULL, 2097, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(9, 'Khu biệt thự Bình An Riverside', 'khu-biet-thu-binh-an-riverside', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7309', '10.79522', 9, 1, NULL, 328, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(10, 'Chung cư Bình Minh', 'chung-cu-binh-minh', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7352', '10.78935', 10, 1, NULL, 94, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(11, 'C3 PARCSpring', 'c3-parcspring', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.78874', 11, 1, NULL, 2412, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(12, 'Cantavil An Phú - Cantavil Premier', 'cantavil-an-phu-cantavil-premier', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7474', '10.80049', 12, 1, NULL, 713, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(13, 'Cao ốc Thịnh Vượng', 'cao-oc-thinh-vuong', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7711', '10.7888', 13, 1, NULL, 1314, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(14, 'Khu dân cư Cát Lái Invesco', 'khu-dan-cu-cat-lai-invesco', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7878', '10.7723', 14, 1, NULL, 1023, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(15, 'Centana Thủ Thiêm', 'centana-thu-thiem', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7529', '10.79122', 15, 1, NULL, 2485, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(16, 'Cheery Apartment', 'cheery-apartment', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7671', '10.77402', 16, 1, NULL, 366, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(17, 'Chung cư Bộ Công An', 'chung-cu-bo-cong-an', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7369', '10.79445', 17, 1, NULL, 2099, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(18, 'Citi Bella', 'citi-bella', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7863', '10.76671', 18, 1, NULL, 2238, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(19, 'Citi Bella 2', 'citi-bella-2', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.778', '10.77032', 19, 1, NULL, 2381, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(20, 'Citi Home', 'citi-home', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7841', '10.76732', 20, 1, NULL, 1959, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(21, 'Citi Soho', 'citi-soho', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7844', '10.76785', 21, 1, NULL, 2556, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(22, 'City Horse', 'city-horse', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7485', '10.79786', 22, 1, NULL, 1547, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(23, 'Cityland Bình Trưng Đông', 'cityland-binh-trung-dong', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7782', '10.77609', 23, 1, NULL, 1946, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(24, 'Đại Quang Minh', 'dai-quang-minh', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.7268', '10.77436', 24, 1, NULL, 1583, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(25, 'De Capella', 'de-capella', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.735', '10.78726', 25, 1, NULL, 2345, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(26, 'Detesco Lương Định Của', 'detesco-luong-dinh-cua', 0, 6, 2, 1, '', '', '', '', '', '', '', 0, '106.7314', '10.78597', 26, 1, NULL, 1540, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(27, 'Diamond Island', 'diamond-island', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7472', '10.779', 27, 1, NULL, 547, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(28, 'Khu dân cư  Đông Thủ Thiêm', 'khu-dan-cu-dong-thu-thiem', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7783', '10.79206', 28, 1, NULL, 1046, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(29, 'Dự án Huy Hoàng', 'du-an-huy-hoang', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7545', '10.77858', 29, 1, NULL, 1747, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(30, 'Empire City Thủ Thiêm', 'empire-city-thu-thiem', 0, 11, 2, 1, '', '', '', '', '', '', '', 0, '106.7162', '10.76983', 30, 1, NULL, 2517, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(31, 'Căn hộ Bình Khánh', 'can-ho-binh-khanh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7425', '10.78776', 31, 1, NULL, 1316, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(32, 'Estella Heights', 'estella-heights', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7486', '10.80128', 32, 1, NULL, 2214, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(33, 'Feliz En Vista', 'feliz-en-vista', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7564', '10.77807', 33, 1, NULL, 2532, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(34, 'Fideco Riverview', 'fideco-riverview', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.738', '10.8029', 34, 1, NULL, 88, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(35, 'Gateway Thảo Điền', 'gateway-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7467', '10.80382', 35, 1, NULL, 2131, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(36, 'Hoàng Anh River View', 'hoang-anh-river-view', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7272', '10.80482', 36, 1, NULL, 111, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(37, 'Holm Villas Thảo Điền', 'holm-villas-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7245', '10.81073', 37, 1, NULL, 2154, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(38, 'Homyland', 'homyland', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7666', '10.78806', 38, 1, NULL, 1082, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(39, 'Homyland 2', 'homyland-2', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7657', '10.78848', 39, 1, NULL, 1266, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(40, 'Homyland 3', 'homyland-3', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7632', '10.78769', 40, 1, NULL, 2488, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(41, 'Imperia An Phú', 'imperia-an-phu', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7503', '10.80036', 41, 1, NULL, 787, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(42, 'Khu dân cư Ninh Giang', 'khu-dan-cu-ninh-giang', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7854', '10.77083', 42, 1, NULL, 1969, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(43, 'Khu dân cư Thế kỉ 21', 'khu-dan-cu-the-ki-21', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7521', '10.78168', 43, 1, NULL, 142, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(44, 'Khu dân cư Văn Minh', 'khu-dan-cu-van-minh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7475', '10.78313', 44, 1, NULL, 1593, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(45, 'La Astoria', 'la-astoria', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7631', '10.78792', 45, 1, NULL, 1951, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(46, 'Khu đô thị Lakeview City', 'khu-do-thi-lakeview-city', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7758', '10.79541', 46, 1, NULL, 2361, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(47, 'Lan Anh Village', 'lan-anh-village', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7226', '10.78569', 47, 1, NULL, 1548, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(48, 'Lexington Residence', 'lexington-residence', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7519', '10.79835', 48, 1, NULL, 1020, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(49, 'Marina Bay Thủ Thiêm', 'marina-bay-thu-thiem', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.727', '10.77458', 49, 1, NULL, 2603, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(50, 'Masteri Thảo Điền', 'masteri-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7418', '10.80269', 50, 1, NULL, 1740, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(51, 'Căn hộ May Apartments', 'can-ho-may-apartments', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7308', '10.81027', 51, 1, NULL, 684, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(52, 'Midpoint Villas Thảo Điền', 'midpoint-villas-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7328', '10.80868', 52, 1, NULL, 2115, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(53, 'Palm City', 'palm-city', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7657', '10.79516', 53, 1, NULL, 2611, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(54, 'Palm Heights', 'palm-heights', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7615', '10.79377', 54, 1, NULL, 2617, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(55, 'PARCSpring', 'parcspring', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.78865', 55, 1, NULL, 1119, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(56, 'Parkland Apartments', 'parkland-apartments', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7494', '10.80416', 56, 1, NULL, 1315, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(57, 'Chung cư Petroland Quận 2', 'chung-cu-petroland-quan-2', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.777', '10.79175', 57, 1, NULL, 998, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(58, 'PetroVietnam Landmark', 'petrovietnam-landmark', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7506', '10.79692', 58, 1, NULL, 838, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(59, 'Phố Đông Village', 'pho-dong-village', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7808', '10.76906', 59, 1, NULL, 1870, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(60, 'Preche', 'preche', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7468', '10.80386', 60, 1, NULL, 831, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(61, 'Regency Park', 'regency-park', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7509', '10.794', 61, 1, NULL, 777, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(62, 'River Garden', 'river-garden', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7271', '10.81512', 62, 1, NULL, 131, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(63, 'Safari', 'safari', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7576', '10.77764', 63, 1, NULL, 2579, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(64, 'Saigon Mia', 'saigon-mia', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7382', '10.7943', 64, 1, NULL, 2267, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(65, 'Sarah Thảo Điền', 'sarah-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7318', '10.81619', 65, 1, NULL, 2518, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(66, 'Sarimi Sala', 'sarimi-sala', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.7247', '10.77035', 66, 1, NULL, 2541, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(67, 'Screc II Tower', 'screc-ii-tower', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7405', '10.79157', 67, 1, NULL, 1177, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(68, 'Sensation Thảo Điền', 'sensation-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7311', '10.81034', 68, 1, NULL, 2746, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(69, 'Spring Life', 'spring-life', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7713', '10.78981', 69, 1, NULL, 751, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(70, 'Sunny Thủ Thiêm', 'sunny-thu-thiem', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7222', '10.77494', 70, 1, NULL, 797, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(71, 'Tái định cư Bình Khánh', 'tai-dinh-cu-binh-khanh', 0, 6, 2, 1, '', '', '', '', '', '', '', 0, '106.7367', '10.78305', 71, 1, NULL, 2871, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(72, 'Khu dân cư Thạnh Mỹ Lợi', 'khu-dan-cu-thanh-my-loi', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7671', '10.76987', 72, 1, NULL, 137, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(73, 'Khu dân cư Phú Nhuận 1,2', 'khu-dan-cu-phu-nhuan-12', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7609', '10.76847', 73, 1, NULL, 1839, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(74, 'Thảo Điền Pearl', 'thao-dien-pearl', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7332', '10.80142', 74, 1, NULL, 466, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(75, 'The Ascent', 'the-ascent', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7314', '10.80522', 75, 1, NULL, 1953, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(76, 'The CBD Premium Home', 'the-cbd-premium-home', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7615', '10.77438', 76, 1, NULL, 1575, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(77, 'The Estella', 'the-estella', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7488', '10.80027', 77, 1, NULL, 138, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(78, 'The Krista', 'the-krista', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7703', '10.79044', 78, 1, NULL, 2100, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(79, 'The Nassim Thảo Điền', 'the-nassim-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7444', '10.80465', 79, 1, NULL, 2252, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(80, 'The Sun Avenue', 'the-sun-avenue', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.752', '10.78845', 80, 1, NULL, 2065, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(81, 'The Vista An Phú', 'the-vista-an-phu', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7517', '10.80534', 81, 1, NULL, 141, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(82, 'Thủ Thiêm Lakeview', 'thu-thiem-lakeview', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.723', '10.77267', 82, 1, NULL, 2869, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(83, 'Thủ Thiêm Sky', 'thu-thiem-sky', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7303', '10.81466', 83, 1, NULL, 1765, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(84, 'Thủ Thiêm Star', 'thu-thiem-star', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7774', '10.79211', 84, 1, NULL, 786, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(85, 'Khu Dân cư Thủ Thiêm Villa', 'khu-dan-cu-thu-thiem-villa', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7562', '10.76856', 85, 1, NULL, 1086, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(86, 'Thủ Thiêm Xanh', 'thu-thiem-xanh', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7763', '10.78951', 86, 1, NULL, 1106, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(87, 'Tropic Garden', 'tropic-garden', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7278', '10.81397', 87, 1, NULL, 765, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(88, 'Ventura', 'ventura', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7713', '10.77304', 88, 1, NULL, 993, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(89, 'Veronica Apartments', 'veronica-apartments', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7308', '10.81314', 89, 1, NULL, 675, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(90, 'Victoria Village', 'victoria-village', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7598', '10.77618', 90, 1, NULL, 2858, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(91, 'Villa Riviera', 'villa-riviera', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7493', '10.80757', 91, 1, NULL, 1880, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(92, 'Khu nhà ở Vinaconex Thảo Điền', 'khu-nha-o-vinaconex-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7313', '10.80733', 92, 1, NULL, 359, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(93, 'Vinhomes Thủ Thiêm', 'vinhomes-thu-thiem', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.7264', '10.7632', 93, 1, NULL, 2672, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(94, 'Vista Verde', 'vista-verde', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7578', '10.77768', 94, 1, NULL, 1819, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(95, 'Water Bay Novaland', 'water-bay-novaland', 0, 6, 2, 1, '', '', '', '', '', '', '', 0, '106.7401', '10.78206', 95, 1, NULL, 2826, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(96, 'Waterfront Residences', 'waterfront-residences', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7263', '10.80492', 96, 1, NULL, 331, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(97, 'Xi Riverview Palace', 'xi-riverview-palace', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7307', '10.81699', 97, 1, NULL, 697, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(98, '9 View Apartment', '9-view-apartment', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7736', '10.8292', 1, 1, NULL, 2377, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(99, 'Khu dân cư Bắc Rạch Chiếc', 'khu-dan-cu-bac-rach-chiec', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7656', '10.8132', 2, 1, NULL, 130, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(100, 'Khu dân cư Đại học Bách khoa', 'khu-dan-cu-dai-hoc-bach-khoa', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7864', '10.79326', 3, 1, NULL, 2001, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(101, 'Biệt thự Cielo Island', 'biet-thu-cielo-island', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7754', '10.81361', 4, 1, NULL, 2368, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(102, 'Cao ốc Bình Minh', 'cao-oc-binh-minh', 0, 12, 9, 1, '', '', '', '', '', '', '', 0, '106.7755', '10.84818', 5, 1, NULL, 1371, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(103, 'Camland Garden', 'camland-garden', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.7885', 6, 1, NULL, 2697, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(104, 'Centana Điền Phúc Thành', 'centana-dien-phuc-thanh', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8277', '10.7988', 7, 1, NULL, 2736, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(105, 'Khu phức hợp Centermark', 'khu-phuc-hop-centermark', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8001', '10.78906', 8, 1, NULL, 891, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(106, 'Chung cư Điền Phúc Thành', 'chung-cu-dien-phuc-thanh', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7855', '10.80859', 9, 1, NULL, 647, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(107, 'Khu đô thị mới Đông Tăng Long', 'khu-do-thi-moi-dong-tang-long', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8212', '10.80915', 10, 1, NULL, 989, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(108, 'Ehome 2', 'ehome-2', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7863', '10.81046', 11, 1, NULL, 1329, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(109, 'E-Home', 'e-home', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7794', '10.82007', 12, 1, NULL, 102, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(110, 'Ehome S', 'ehome-s', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7808', '10.79691', 13, 1, NULL, 2701, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(111, 'Khu dân cư Exim Garden', 'khu-dan-cu-exim-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8021', '10.80919', 14, 1, NULL, 1044, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(112, 'Flora Anh Đào', 'flora-anh-dao', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7759', '10.8093', 15, 1, NULL, 2092, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(113, 'Fuji Residence', 'fuji-residence', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7847', '10.81331', 16, 1, NULL, 2502, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(114, 'Khu dân cư Gia Hòa', 'khu-dan-cu-gia-hoa', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7787', '10.81705', 17, 1, NULL, 105, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(115, 'Golf Park', 'golf-park', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8141', '10.86806', 18, 1, NULL, 2064, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(116, 'Green Building', 'green-building', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7638', '10.8279', 19, 1, NULL, 895, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(117, 'Green Home Riverside', 'green-home-riverside', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8133', '10.79525', 20, 1, NULL, 2203, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(118, 'Green Town Quận 9', 'green-town-quan-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7945', '10.79074', 21, 1, NULL, 2763, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(119, 'Happy Home quận 9', 'happy-home-quan-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7995', '10.80463', 22, 1, NULL, 2730, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(120, 'Him Lam Phú An', 'him-lam-phu-an', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7626', '10.81949', 23, 1, NULL, 2679, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(121, 'KDC Hoàng Anh Minh Tuấn', 'kdc-hoang-anh-minh-tuan', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7741', '10.81694', 24, 1, NULL, 1580, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(122, 'Hoja Villa', 'hoja-villa', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7858', '10.81725', 25, 1, NULL, 1035, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(123, 'HTReal 898', 'htreal-898', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7995', '10.78709', 26, 1, NULL, 2406, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(124, 'Hưng Phú 1', 'hung-phu-1', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7896', '10.81019', 27, 1, NULL, 1354, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(125, 'Hưng Phú 2', 'hung-phu-2', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.789', '10.81067', 28, 1, NULL, 1353, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(126, 'Chung cư Hùng Việt', 'chung-cu-hung-viet', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7911', '10.79776', 29, 1, NULL, 648, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(127, 'I-Home Xa Lộ Hà Nội', 'i-home-xa-lo-ha-noi', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7652', '10.83293', 30, 1, NULL, 2458, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(128, 'Jamila Khang Điền', 'jamila-khang-dien', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7477', '10.802', 31, 1, NULL, 2865, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(129, 'Khu dân cư C.T.C', 'khu-dan-cu-ctc', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8204', '10.79723', 32, 1, NULL, 1588, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(130, 'KDC Chợ Long Trường Mới', 'kdc-cho-long-truong-moi', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8223', '10.80619', 33, 1, NULL, 2308, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(131, 'KDC Kiến Á', 'kdc-kien-a', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7829', '10.80609', 34, 1, NULL, 1352, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(132, 'KDC Mỹ Long', 'kdc-my-long', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8308', '10.84194', 35, 1, NULL, 1350, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(133, 'Khu dân cư Nam Long', 'khu-dan-cu-nam-long', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7806', '10.80924', 36, 1, NULL, 120, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(134, 'KDC Phú Nhuận - Phước Long B', 'kdc-phu-nhuan-phuoc-long-b', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7858', '10.8041', 37, 1, NULL, 1349, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(135, 'Khu dân cư Phước Thiện', 'khu-dan-cu-phuoc-thien', 0, 13, 9, 1, '', '', '', '', '', '', '', 0, '106.8377', '10.84896', 38, 1, NULL, 2135, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(136, 'Khu dân cư Thanh Trúc', 'khu-dan-cu-thanh-truc', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8072', '10.81962', 39, 1, NULL, 1656, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(137, 'Khu dân cư Trường Lưu', 'khu-dan-cu-truong-luu', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8234', '10.80405', 40, 1, NULL, 2139, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(138, 'Khu dân cư Khang An', 'khu-dan-cu-khang-an', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8001', '10.78906', 41, 1, NULL, 115, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(139, 'KDC Khang Điền - Intresco', 'kdc-khang-dien-intresco', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.781', '10.81889', 42, 1, NULL, 1820, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(140, 'KDC Khang Điền Long Trường', 'kdc-khang-dien-long-truong', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.827', '10.79349', 43, 1, NULL, 1348, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(141, 'Khu dân cư Long Thạnh Mỹ', 'khu-dan-cu-long-thanh-my', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.83', '10.83591', 44, 1, NULL, 2450, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(142, 'Kikyo Residence', 'kikyo-residence', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7857', '10.79859', 45, 1, NULL, 2631, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(143, 'KDC Long Phước Điền - Long Trường', 'kdc-long-phuoc-dien-long-truong', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8261', '10.79324', 46, 1, NULL, 1975, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(144, 'Lucasta Villa', 'lucasta-villa', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7963', '10.80365', 47, 1, NULL, 750, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(145, 'Lucky Dragon', 'lucky-dragon', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7727', '10.82151', 48, 1, NULL, 1582, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(146, 'Chung cư Man Thiện', 'chung-cu-man-thien', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.7884', '10.85324', 49, 1, NULL, 1249, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(147, 'Mega Residence', 'mega-residence', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7937', '10.79942', 50, 1, NULL, 1388, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(148, 'Mega Ruby', 'mega-ruby', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7974', '10.7992', 51, 1, NULL, 1956, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(149, 'Mega Sapphire', 'mega-sapphire', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8001', '10.78906', 52, 1, NULL, 2090, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(150, 'Mega Village', 'mega-village', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7904', '10.78471', 53, 1, NULL, 2105, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(151, 'Melosa Garden', 'melosa-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7918', '10.78058', 54, 1, NULL, 2261, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(152, 'Monada Khang Điền', 'monada-khang-dien', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7982', '10.79159', 55, 1, NULL, 2880, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(153, 'Nam Khang Residence', 'nam-khang-residence', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.8217', '10.80593', 56, 1, NULL, 2301, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(154, 'Nhân Phú', 'nhan-phu', 0, 23, 9, 1, '', '', '', '', '', '', '', 0, '106.7817', '10.83382', 57, 1, NULL, 1128, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(155, 'Park Riverside Tân Cảng', 'park-riverside-tan-cang', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7999', '10.80709', 58, 1, NULL, 2107, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(156, 'Peach Garden', 'peach-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7901', '10.80283', 59, 1, NULL, 1897, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(157, 'Cao ốc Phố Đông - Hoa Sen', 'cao-oc-pho-dong-hoa-sen', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7853', '10.80904', 60, 1, NULL, 324, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(158, 'Phúc An Viên', 'phuc-an-vien', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.832', '10.85455', 61, 1, NULL, 1327, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(159, 'Phuoc Long Spring Town', 'phuoc-long-spring-town', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7737', '10.82881', 62, 1, NULL, 978, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(160, 'River Park', 'river-park', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7795', '10.81471', 63, 1, NULL, 1019, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(161, 'River Valley', 'river-valley', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7847', '10.81416', 64, 1, NULL, 1005, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(162, 'Riviera Cove', 'riviera-cove', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.7873', '10.81304', 65, 1, NULL, 1268, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(163, 'Sài Gòn Gateway', 'sai-gon-gateway', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.7735', '10.84727', 66, 1, NULL, 2856, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(164, 'Samsung Village', 'samsung-village', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7997', '10.81973', 67, 1, NULL, 2475, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(165, 'Sky 9', 'sky-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7914', '10.80458', 68, 1, NULL, 1998, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(166, 'The Sun City Minh Sơn', 'the-sun-city-minh-son', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7938', '10.8042', 69, 1, NULL, 1215, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(167, 'Tăng Long River View', 'tang-long-river-view', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.8194', '10.81681', 70, 1, NULL, 2376, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(168, 'Tăng Phú House', 'tang-phu-house', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.82518', 71, 1, NULL, 1225, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(169, 'TDH - Phúc Thịnh Đức', 'tdh-phuc-thinh-duc', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7634', '10.8261', 72, 1, NULL, 911, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(170, 'Chung cư TDH – Phước Bình', 'chung-cu-tdh-–-phuoc-binh', 0, 18, 9, 1, '', '', '', '', '', '', '', 0, '106.7696', '10.81568', 73, 1, NULL, 1793, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(171, 'Chung cư TDH - Phước Long', 'chung-cu-tdh-phuoc-long', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7692', '10.83874', 74, 1, NULL, 2128, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(172, 'Chung Cư TDH - Hiệp Phú', 'chung-cu-tdh-hiep-phu', 0, 12, 9, 1, '', '', '', '', '', '', '', 0, '106.7717', '10.84376', 75, 1, NULL, 363, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(173, 'TDL Residence', 'tdl-residence', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8254', '10.79946', 76, 1, NULL, 2615, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(174, 'Thái Dương Luxury', 'thai-duong-luxury', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8147', '10.80209', 77, 1, NULL, 2271, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(175, 'KDC Thái Dương Xanh', 'kdc-thái-duong-xanh', 0, 13, 9, 1, '', '', '', '', '', '', '', 0, '106.8367', '10.85822', 78, 1, NULL, 2310, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(176, 'Khu biệt thự Thảo Nguyên Sài Gòn', 'khu-biet-thu-thao-nguyen-sai-gon', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8171', '10.86649', 79, 1, NULL, 1067, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(177, 'Tháp Mười Merita', 'thap-muoi-merita', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7908', '10.80454', 80, 1, NULL, 2657, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(178, 'The Art', 'the-art', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7752', '10.81399', 81, 1, NULL, 2158, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(179, 'The Boat Club Residences', 'the-boat-club-residences', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8385', '10.80353', 82, 1, NULL, 1179, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(180, 'The Eastern', 'the-eastern', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7966', '10.80545', 83, 1, NULL, 1077, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(181, 'The Garland', 'the-garland', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7859', '10.81595', 84, 1, NULL, 1958, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(182, 'Khu nhà ở Thiên Lý', 'khu-nha-o-thien-ly', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7831', '10.82112', 85, 1, NULL, 905, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(183, 'Thủ Thiêm Garden', 'thu-thiem-garden', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7839', '10.80698', 86, 1, NULL, 2720, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(184, 'Topia Garden', 'topia-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7991', '10.79874', 87, 1, NULL, 753, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(185, 'KDC Trí Kiệt - Long Trường', 'kdc-tri-kiet-long-truong', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8044', '10.8189', 88, 1, NULL, 1974, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(186, 'Dự án Trí Minh', 'du-an-tri-minh', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7921', '10.78517', 89, 1, NULL, 1976, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(187, 'Khu Dân Cư Trường Thạnh 1', 'khu-dan-cu-truong-thanh-1', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8411', '10.80473', 90, 1, NULL, 816, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(188, 'Valencia Riverside quận 9', 'valencia-riverside-quan-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.797', '10.79123', 91, 1, NULL, 2365, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(189, 'Valora Fuji', 'valora-fuji', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7845', '10.81325', 92, 1, NULL, 2686, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(190, 'Việt Nhân Villa Riverside', 'viet-nhan-villa-riverside', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8298', '10.81714', 93, 1, NULL, 2416, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(191, 'Villa Park', 'villa-park', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8007', '10.80348', 94, 1, NULL, 615, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(192, 'Vincity quận 9', 'vincity-quan-9', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8329', '10.84201', 95, 1, NULL, 2711, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(193, 'Vườn Lan', 'vuon-lan', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8143', '10.80111', 96, 1, NULL, 2786, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(194, '4S Riverside Garden Bình Triệu', '4s-riverside-garden-binh-trieu', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7185', '10.82203', 1, 1, NULL, 132, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(195, '4S Riverside Linh Đông', '4s-riverside-linh-dong', 0, 30, 19, 1, '', '', '', '', '', '', '', 0, '106.7405', '10.84437', 2, 1, NULL, 314, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(196, 'Aquila Plaza', 'aquila-plaza', 0, 26, 19, 1, '', '', '', '', '', '', '', 0, '106.7634', '10.84471', 3, 1, NULL, 910, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(197, 'Bình Chiểu Riverside City', 'binh-chieu-riverside-city', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7339', '10.88041', 4, 1, NULL, 2281, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(198, 'Cheery 4 Complex', 'cheery-4-complex', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7392', '10.8615', 5, 1, NULL, 1187, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(199, 'Chương Dương Golden Land', 'chuong-duong-golden-land', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7522', '10.82892', 6, 1, NULL, 2043, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(200, 'Chương Dương Home', 'chuong-duong-home', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7565', '10.83695', 7, 1, NULL, 2538, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(201, 'Đạt Gia Centre Point Thủ Đức', 'dat-gia-centre-point-thu-duc', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7378', '10.8575', 8, 1, NULL, 2619, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(202, 'Đạt Gia Residence Thủ Đức', 'dat-gia-residence-thu-duc', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7392', '10.8598', 9, 1, NULL, 1239, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(203, 'Depot Metro Tower', 'depot-metro-tower', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7743', '10.85555', 10, 1, NULL, 1145, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(204, 'Đồng Khởi Land', 'dong-khoi-land', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.73', '10.86457', 11, 1, NULL, 2798, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(205, 'Dự án Sông Đà', 'du-an-song-da', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.716', '10.82731', 12, 1, NULL, 2793, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(206, 'Fortune Apartment', 'fortune-apartment', 0, 31, 19, 1, '', '', '', '', '', '', '', 0, '106.7596', '10.86566', 13, 1, NULL, 2058, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(207, 'Chung cư Gia Phú Hưng', 'chung-cu-gia-phu-hung', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7812', '10.86404', 14, 1, NULL, 884, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(208, 'Green Home', 'green-home', 0, 30, 19, 1, '', '', '', '', '', '', '', 0, '106.7471', '10.85532', 15, 1, NULL, 2526, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(209, 'PetroVietnam Green House', 'petrovietnam-green-house', 0, 31, 19, 1, '', '', '', '', '', '', '', 0, '106.7586', '10.86185', 16, 1, NULL, 552, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(210, 'Greenview Garden', 'greenview-garden', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7194', '10.84446', 17, 1, NULL, 1503, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(211, 'HTReal Hoàn Cầu', 'htreal-hoan-cau', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7264', '10.88304', 18, 1, NULL, 2784, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(212, 'Jamona Home Resort', 'jamona-home-resort', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7176', '10.87059', 19, 1, NULL, 848, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(213, 'Khu dân cư Bình Chiểu 2', 'khu-dan-cu-bình-chiẻu-2', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7261', '10.87673', 20, 1, NULL, 2279, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(214, 'Khu dân cư Hồng Long', 'khu-dan-cu-hong-long', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.723', '10.8488', 21, 1, NULL, 2015, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(215, 'KDC Nhà Việt', 'kdc-nha-viet', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7261', '10.87683', 22, 1, NULL, 2794, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(216, 'Khu đô thị mới Bình Chiểu', 'khu-do-thi-moi-binh-chieu', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7234', '10.87402', 23, 1, NULL, 1742, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(217, 'Lan Phương MHBR Tower', 'lan-phuong-mhbr-tower', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7545', '10.84705', 24, 1, NULL, 318, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(218, 'Lavita Garden', 'lavita-garden', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7607', '10.83378', 25, 1, NULL, 2285, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(219, 'Căn hộ Linh Tây', 'can-ho-linh-tay', 0, 31, 19, 1, '', '', '', '', '', '', '', 0, '106.7585', '10.8621', 26, 1, NULL, 1383, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(220, 'Căn hộ Linh Trung', 'can-ho-linh-trung', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7805', '10.86091', 27, 1, NULL, 1512, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(221, 'Lotus Apartment', 'lotus-apartment', 0, 0, 19, 1, '', '', '', '', '', '', '', 0, '106.7444', '10.87083', 28, 1, NULL, 1607, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(222, 'Moonlight Residences', 'moonlight-residences', 0, 26, 19, 1, '', '', '', '', '', '', '', 0, '106.763', '10.84284', 29, 1, NULL, 2571, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(223, 'Chung cư Mỹ An - 3G', 'chung-cu-my-an-3g', 0, 0, 19, 1, '', '', '', '', '', '', '', 0, '106.7213', '10.8257', 30, 1, NULL, 1254, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(224, 'Chung cư Mỹ Kim', 'chung-cu-my-kim', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7198', '10.82552', 31, 1, NULL, 1599, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(225, 'Căn hộ Cao cấp Mỹ Long', 'can-ho-cao-cap-my-long', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7192', '10.82551', 32, 1, NULL, 693, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(226, 'Newtown Apartment', 'newtown-apartment', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7196', '10.82401', 33, 1, NULL, 342, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(227, 'Opal Garden', 'opal-garden', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7227', '10.82754', 34, 1, NULL, 2582, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(228, 'Opal Riverside', 'opal-riverside', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7261', '10.82455', 35, 1, NULL, 2129, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(229, 'Opal Skyview', 'opal-skyview', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7275', '10.83301', 36, 1, NULL, 2689, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(230, 'Opal Tower', 'opal-tower', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7274', '10.83315', 37, 1, NULL, 2414, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(231, 'Phú Đông 2', 'phu-dong-2', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7445', '10.86187', 38, 1, NULL, 2505, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(232, 'Sài Gòn Metro Park', 'sai-gon-metro-park', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7531', '10.83831', 39, 1, NULL, 1942, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(233, 'KDC Savico Hiệp Bình Phước - Tam Bình', 'kdc-savico-hiep-binh-phuoc-tam-binh', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.728', '10.86417', 40, 1, NULL, 1169, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(234, 'Sông Đà Riverside', 'song-da-riverside', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7201', '10.85432', 41, 1, NULL, 783, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(235, 'Spring House', 'spring-house', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7157', '10.82526', 42, 1, NULL, 2330, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(236, 'Sunview 1 & 2', 'sunview-1-2', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7394', '10.86151', 43, 1, NULL, 135, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(237, 'Sunview Town', 'sunview-town', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7274', '10.86571', 44, 1, NULL, 1257, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(238, 'T.N.T Building', 'tnt-building', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7408', '10.85752', 45, 1, NULL, 479, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(239, 'Chung cư Cao cấp Tam Bình', 'chung-cu-cao-cap-tam-binh', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.7338', '10.86765', 46, 1, NULL, 699, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(240, 'Cao ốc TDH - Bình Chiểu', 'cao-oc-tdh-binh-chieu', 0, 29, 19, 1, '', '', '', '', '', '', '', 0, '106.7249', '10.87674', 47, 1, NULL, 326, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(241, 'Chung Cư TDH - Trường Thọ', 'chung-cu-tdh-truong-tho', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7627', '10.83981', 48, 1, NULL, 492, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(242, 'TĐV Linh Đông', 'tdv-linh-dong', 0, 30, 19, 1, '', '', '', '', '', '', '', 0, '106.7409', '10.84425', 49, 1, NULL, 2504, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(243, 'TĐV Tam Phú', 'tdv-tam-phu', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7396', '10.86122', 50, 1, NULL, 2483, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(244, 'Tecco tower - Chung Cư Linh Đông', 'tecco-tower-chung-cu-linh-dong', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7472', '10.84903', 51, 1, NULL, 358, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(245, 'Thăng Long Home Hưng Phú', 'thang-long-home-hung-phu', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7444', '10.86191', 52, 1, NULL, 2822, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(246, 'The Navita', 'the-navita', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.7335', '10.86422', 53, 1, NULL, 1728, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(247, 'The Sun City Lan Phương', 'the-sun-city-lan-phuong', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7252', '10.86539', 54, 1, NULL, 1587, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(248, 'The Sun City Riverview', 'the-sun-city-riverview', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7142', '10.84968', 55, 1, NULL, 2010, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(249, 'Thủ Đức Garden Homes', 'thu-duc-garden-homes', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7128', '10.83839', 56, 1, NULL, 1010, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(250, 'Vạn Phúc Riverside City', 'van-phuc-riverside-city', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7122', '10.83815', 57, 1, NULL, 2034, '2017-05-05 03:16:12', '2017-05-05 03:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `project_tab`
--

CREATE TABLE `project_tab` (
  `project_id` int(11) NOT NULL,
  `tab_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_tab`
--

INSERT INTO `project_tab` (`project_id`, `tab_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `project_type_id` int(11) NOT NULL,
  `project_type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `project_type_alias` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`project_type_id`, `project_type_name`, `project_type_alias`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Căn hộ/ Chung cư', 'can-ho-chung-cu', 1, 1, 1417106783, 1417106783),
(2, 'Khu biệt thự', 'khu-biet-thu', 2, 1, 1417106783, 1417106783),
(3, 'Cao ốc văn phòng', 'cao-oc-van-phong', 3, 1, 1417106783, 1417106783),
(4, 'Khu thương mại', 'khu-thuong-mai', 4, 1, 1417106783, 1417106783),
(5, 'Khu dân cư', 'khu-dan-cu', 5, 1, 1417106783, 1417106783),
(6, 'Nhà ở xã hội', 'nha-o-xa-hoi', 6, 1, 1417106783, 1417106783),
(7, 'Khu đô thị mới', 'khu-do-thi-moi', 7, 1, 1417106783, 1417106783);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seo_text` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `page_name`, `meta_title`, `meta_description`, `meta_keyword`, `seo_title`, `seo_text`) VALUES
(1, 'Trang chủ', 'Bất động sản STH', 'Bất động sản STH', 'Bất động sản STH', 'Đồng hồ nam nữ chính hãng', '<div>\r\n	Tự h&agrave;o l&agrave; nh&agrave; cung cấp đồng hồ h&agrave;ng đầu.</div>\r\n'),
(4, 'Tin tức', 'Tin tức', 'Tin tức', 'Tin tức', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'base_url', 'http://nghien.biz', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(2, 'site_title', 'Mua ban nha dat', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(3, 'site_description', 'Chuyen trang mua ban nha dat', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(4, 'site_keywords', 'ban nha, cho thue nha', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(5, 'admin_email', 'nghien.biz@gmail.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'Trang chủ - Nhadat.vn', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(113, 'google_analystic', 'UA-63665479-6', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(114, 'facebook_appid', '282210028789883', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(115, 'google_fanpage', '', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhadatvn', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(117, 'twitter_fanpage', '', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(130, 'logo', '2016/12/28/logo-nam-moi-va-giang-sinh-09-1482923355.png', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(131, 'favicon', '2016/11/29/favicon-1480367931.png', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(141, 'banner', '2016/12/06/icho-vn-mua-online-gia-si-1480992823.jpg', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2017-05-05 15:11:20'),
(143, 'email_cc', 'tundq.ipl@gmail.com; tundq@icare.center; hiepvv.ipl@gmail.com; lamhuong77@gmail.com; muahang@icho.vn; hoangnhonline@gmail.com', '2016-11-11 00:00:00', '2017-05-05 15:11:20'),
(144, 'thong_bao_chung', '<p>Th&ocirc;ng b&aacute;o chung của cty<br />\r\nhttp://dothi9.com/backend/dashboard</p>\r\n', '2017-05-11 00:00:00', '2017-05-21 17:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `display_order` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `id_dothi` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `street`
--

INSERT INTO `street` (`id`, `name`, `slug`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Đường', 1, 2, 1, 3789, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(2, '10', '10', 'Đường', 2, 2, 1, 3780, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(3, '104', '104', 'Đường', 3, 2, 1, 9087, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(4, '104A', '104a', 'Đường', 4, 2, 1, 11957, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(5, '10A', '10a', 'Đường', 5, 2, 1, 5864, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(6, '10F', '10f', 'Đường', 6, 2, 1, 8152, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(7, '10G', '10g', 'Đường', 7, 2, 1, 11084, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(8, '11', '11', 'Đường', 8, 2, 1, 1998, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(9, '12', '12', 'Đường', 9, 2, 1, 1999, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(10, '13', '13', 'Đường', 10, 2, 1, 4781, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(11, '14', '14', 'Đường', 11, 2, 1, 2001, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(12, '15', '15', 'Đường', 12, 2, 1, 2002, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(13, '16', '16', 'Đường', 13, 2, 1, 4187, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(14, '17', '17', 'Đường', 14, 2, 1, 2850, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(15, '17B', '17b', 'Đường', 15, 2, 1, 7978, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(16, '18', '18', 'Đường', 16, 2, 1, 2095, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(17, '18A', '18a', 'Đường', 17, 2, 1, 2852, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(18, '18B', '18b', 'Đường', 18, 2, 1, 7111, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(19, '19', '19', 'Đường', 19, 2, 1, 5707, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(20, '2', '2', 'Đường', 20, 2, 1, 3788, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(21, '2.5A', '25a', 'Đường', 21, 2, 1, 10866, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(22, '20', '20', 'Đường', 22, 2, 1, 4991, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(23, '21', '21', 'Đường', 23, 2, 1, 3631, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(24, '215', '215', 'Đường', 24, 2, 1, 8579, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(25, '21A', '21a', 'Đường', 25, 2, 1, 7069, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(26, '22', '22', 'Đường', 26, 2, 1, 2773, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(27, '23', '23', 'Đường', 27, 2, 1, 709, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(28, '24', '24', 'Phố', 28, 2, 1, 2869, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(29, '24A', '24a', 'Đường', 29, 2, 1, 6829, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(30, '24B', '24b', 'Đường', 30, 2, 1, 8348, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(31, '25', '25', 'Đường', 31, 2, 1, 2870, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(32, '25B', '25b', 'Đường', 32, 2, 1, 10745, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(33, '26', '26', 'Đường', 33, 2, 1, 2354, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(34, '27', '27', 'Đường', 34, 2, 1, 4766, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(35, '27A', '27a', 'Đường', 35, 2, 1, 12037, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(36, '28', '28', 'Đường', 36, 2, 1, 2165, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(37, '29', '29', 'Đường', 37, 2, 1, 2166, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(38, '3', '3', 'Đường', 38, 2, 1, 689, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(39, '30', '30', 'Đường', 39, 2, 1, 4196, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(40, '30B', '30b', 'Đường', 40, 2, 1, 9827, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(41, '31', '31', 'Đường', 41, 2, 1, 4416, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(42, '31A', '31a', 'Đường', 42, 2, 1, 9322, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(43, '31B', '31b', 'Đường', 43, 2, 1, 8065, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(44, '31C', '31c', 'Đường', 44, 2, 1, 7903, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(45, '31D', '31d', 'Đường', 45, 2, 1, 8668, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(46, '31E', '31e', 'Đường', 46, 2, 1, 7698, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(47, '31F', '31f', 'Đường', 47, 2, 1, 7902, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(48, '32', '32', 'Đường', 48, 2, 1, 7772, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(49, '33', '33', 'Đường', 49, 2, 1, 4265, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(50, '34', '34', 'Đường', 50, 2, 1, 2876, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(51, '34A', '34a', 'Đường', 51, 2, 1, 8120, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(52, '34B', '34b', 'Đường', 52, 2, 1, 9064, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(53, '35', '35', 'Đường', 53, 2, 1, 6346, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(54, '36', '36', 'Phố', 54, 2, 1, 2878, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(55, '37', '37', 'Phố', 55, 2, 1, 2879, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(56, '37A', '37a', 'Đường', 56, 2, 1, 8578, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(57, '38', '38', 'Đường', 57, 2, 1, 2167, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(58, '39', '39', 'Đường', 58, 2, 1, 2520, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(59, '3A', '3a', 'Đường', 59, 2, 1, 4413, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(60, '4', '4', 'Đường', 60, 2, 1, 1990, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(61, '40', '40', 'Đường', 61, 2, 1, 4672, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(62, '41', '41', 'Đường', 62, 2, 1, 4211, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(63, '41A', '41a', 'Đường', 63, 2, 1, 12854, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(64, '41B', '41b', 'Đường', 64, 2, 1, 10593, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(65, '42', '42', 'Đường', 65, 2, 1, 2885, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(66, '43', '43', 'Đường', 66, 2, 1, 4213, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(67, '44', '44', 'Đường', 67, 2, 1, 3061, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(68, '45', '45', 'Phố', 68, 2, 1, 2889, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(69, '46', '46', 'Đường', 69, 2, 1, 2262, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(70, '47', '47', 'Đường', 70, 2, 1, 2263, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(71, '48', '48', 'Đường', 71, 2, 1, 2894, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(72, '49', '49', 'Phố', 72, 2, 1, 2895, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(73, '4A', '4a', 'Đường', 73, 2, 1, 5263, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(74, '5', '5', 'Đường', 74, 2, 1, 3786, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(75, '50', '50', 'Đường', 75, 2, 1, 6591, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(76, '51', '51', 'Đường', 76, 2, 1, 6272, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(77, '52', '52', 'Phố', 77, 2, 1, 2898, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(78, '53', '53', 'Đường', 78, 2, 1, 4472, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(79, '54', '54', 'Đường', 79, 2, 1, 2900, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(80, '55', '55', 'Đường', 80, 2, 1, 2572, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(81, '56', '56', 'Phố', 81, 2, 1, 2904, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(82, '58', '58', 'Đường', 82, 2, 1, 2906, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(83, '59', '59', 'Phố', 83, 2, 1, 2908, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(84, '5B', '5b', 'Đường', 84, 2, 1, 7222, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(85, '6', '6', 'Đường', 85, 2, 1, 2840, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(86, '60', '60', 'Đường', 86, 2, 1, 4407, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(87, '61', '61', 'Đường', 87, 2, 1, 2252, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(88, '62', '62', 'Đường', 88, 2, 1, 8036, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(89, '63', '63', 'Đường', 89, 2, 1, 8689, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(90, '64', '64', 'Phố', 90, 2, 1, 2914, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(91, '65', '65', 'Phố', 91, 2, 1, 2915, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(92, '66', '66', 'Đường', 92, 2, 1, 2916, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(93, '68', '68', 'Đường', 93, 2, 1, 2918, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(94, '69', '69', 'Đường', 94, 2, 1, 4291, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(95, '7', '7', 'Đường', 95, 2, 1, 1994, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(96, '76', '76', 'Đường', 96, 2, 1, 8797, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(97, '78', '78', 'Đường', 97, 2, 1, 7118, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(98, '7A', '7a', 'Đường', 98, 2, 1, 8220, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(99, '7B', '7b', 'Đường', 99, 2, 1, 2378, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(100, '7C', '7c', 'Đường', 100, 2, 1, 10201, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(101, '8', '8', 'Đường', 101, 2, 1, 2841, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(102, '80', '80', 'Đường', 102, 2, 1, 8820, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(103, '83', '83', 'Đường', 103, 2, 1, 4299, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(104, '86', '86', 'Đường', 104, 2, 1, 11071, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(105, '8A', '8a', 'Đường', 105, 2, 1, 8321, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(106, '8B', '8b', 'Đường', 106, 2, 1, 5243, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(107, '8G', '8g', 'Đường', 107, 2, 1, 9467, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(108, '8K', '8k', 'Đường', 108, 2, 1, 10160, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(109, '9', '9', 'Đường', 109, 2, 1, 2842, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(110, '94', '94', 'Đường', 110, 2, 1, 7074, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(111, '95', '95', 'Đường', 111, 2, 1, 10620, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(112, 'A2', 'a2', 'Đường', 112, 2, 1, 2769, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(113, 'A4', 'a4', 'Đường', 113, 2, 1, 2771, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(114, 'A5', 'a5', 'Đường', 114, 2, 1, 2772, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(115, 'An Dương Vương', 'an-duong-vuong', 'Đường', 115, 2, 1, 6000, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(116, 'An Phú', 'an-phu', 'Đường', 116, 2, 1, 4160, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(117, 'An Phú Đông 27', 'an-phu-dong-27', 'Đường', 117, 2, 1, 6599, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(118, 'An Trang', 'an-trang', 'Đường', 118, 2, 1, 6268, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(119, 'B', 'b', 'Đường', 119, 2, 1, 4135, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(120, 'Bát Nàn', 'bat-nan', 'Đường', 120, 2, 1, 4192, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(121, 'Bình An', 'binh-an', 'Đường', 121, 2, 1, 8701, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(122, 'Bình Trưng', 'binh-trung', 'Đường', 122, 2, 1, 4178, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(123, 'Bùi Tá Hán', 'bui-ta-han', 'Đường', 123, 2, 1, 1483, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(124, 'C10', 'c10', 'Đường', 124, 2, 1, 12790, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(125, 'C3', 'c3', 'Đường', 125, 2, 1, 3073, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(126, 'Cao Đức Lân', 'cao-duc-lan', 'Đường', 126, 2, 1, 4170, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(127, 'Chuông Vàng', 'chuong-vang', 'Đường', 127, 2, 1, 12786, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(128, 'D', 'd', 'Đường', 128, 2, 1, 10501, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(129, 'D10', 'd10', 'Đường', 129, 2, 1, 3220, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(130, 'D11', 'd11', 'Đường', 130, 2, 1, 3222, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(131, 'D15', 'd15', 'Đường', 131, 2, 1, 6582, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(132, 'D16', 'd16', 'Đường', 132, 2, 1, 3223, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(133, 'D18', 'd18', 'Đường', 133, 2, 1, 7454, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(134, 'D19', 'd19', 'Đường', 134, 2, 1, 8759, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(135, 'D2', 'd2', 'Đường', 135, 2, 1, 4601, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(136, 'D20', 'd20', 'Đường', 136, 2, 1, 9037, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(137, 'D3', 'd3', 'Đường', 137, 2, 1, 4602, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(138, 'D4', 'd4', 'Đường', 138, 2, 1, 2599, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(139, 'D6', 'd6', 'Đường', 139, 2, 1, 8159, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(140, 'D64', 'd64', 'Đường', 140, 2, 1, 12553, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(141, 'D7', 'd7', 'Đường', 141, 2, 1, 6799, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(142, 'D8', 'd8', 'Đường', 142, 2, 1, 1775, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(143, 'Đại Lộ Đông Tây', 'dai-lo-dong-tay', 'Đường', 143, 2, 1, 5638, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(144, 'Đàm Văn Lễ', 'dam-van-le', 'Đường', 144, 2, 1, 2065, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(145, 'Đặng Hữu Phổ', 'dang-huu-pho', 'Đường', 145, 2, 1, 4140, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(146, 'Đặng Như Mai', 'dang-nhu-mai', 'Đường', 146, 2, 1, 2074, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(147, 'Đặng Tiến Đông', 'dang-tien-dong', 'Đường', 147, 2, 1, 408, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(148, 'Đỗ Pháp Thuận', 'do-phap-thuan', 'Đường', 148, 2, 1, 4249, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(149, 'Đỗ Quang', 'do-quang', 'Phố', 149, 2, 1, 5615, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(150, 'Đỗ Xuân Hợp', 'do-xuan-hop', 'Đường', 150, 2, 1, 1416, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(151, 'Đoàn Hữu Trưng', 'doan-huu-trung', 'Đường', 151, 2, 1, 3383, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(152, 'Đông Hưng Thuận 6', 'dong-hung-thuan-6', 'Đường', 152, 2, 1, 6598, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(153, 'Đồng Quốc Bình', 'dong-quoc-binh', 'Đường', 153, 2, 1, 6267, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(154, 'Đồng Văn Cống', 'dong-van-cong', 'Đường', 154, 2, 1, 4190, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(155, 'Dư Hàng Kênh', 'du-hang-kenh', 'Đường', 155, 2, 1, 6266, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(156, 'Đường A', 'duong-a', 'Đường', 156, 2, 1, 4134, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(157, 'Đường C', 'duong-c', 'Đường', 157, 2, 1, 4128, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(158, 'Dương Văn An', 'duong-van-an', 'Đường', 158, 2, 1, 2031, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(159, 'Dương Văn Dương', 'duong-van-duong', 'Đường', 159, 2, 1, 3230, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(160, 'E', 'e', 'Đường', 160, 2, 1, 4889, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(161, 'G1', 'g1', 'Đường', 161, 2, 1, 7901, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(162, 'G2', 'g2', 'Đường', 162, 2, 1, 12347, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(163, 'Giáng Hương', 'giang-huong', 'Đường', 163, 2, 1, 12413, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(164, 'Giang Văn Minh', 'giang-van-minh', 'Đường', 164, 2, 1, 776, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(165, 'Gò Nổi', 'go-noi', 'Đường', 165, 2, 1, 11338, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(166, 'H', 'h', 'Đường', 166, 2, 1, 4130, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(167, 'Hà Quang', 'ha-quang', 'Đường', 167, 2, 1, 8390, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(168, 'Hàn Giang', 'han-giang', 'Đường', 168, 2, 1, 6592, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(169, 'Hậu Lân', 'hau-lan', 'Đường', 169, 2, 1, 6604, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(170, 'Hiệp Thành 13', 'hiep-thanh-13', 'Đường', 170, 2, 1, 6606, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(171, 'Hồ Trung Tâm', 'ho-trung-tam', 'Đường', 171, 2, 1, 11663, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(172, 'Hương lộ 62', 'huong-lo-62', 'Đường', 172, 2, 1, 2524, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(173, 'JD12', 'jd12', 'Đường', 173, 2, 1, 12275, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(174, 'K', 'k', 'Đường', 174, 2, 1, 6743, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(175, 'K1', 'k1', 'Đường', 175, 2, 1, 647, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(176, 'K3', 'k3', 'Đường', 176, 2, 1, 632, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(177, 'KP3', 'kp3', 'Đường', 177, 2, 1, 9011, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(178, 'L25', 'l25', 'Đường', 178, 2, 1, 12867, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(179, 'Lâm Quang Ky', 'lam-quang-ky', 'Đường', 179, 2, 1, 1612, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(180, 'Lê Đình Quản', 'le-dinh-quan', 'Đường', 180, 2, 1, 5706, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(181, 'Lê Đức Thọ', 'le-duc-tho', 'Đường', 181, 2, 1, 650, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(182, 'Lê Hiến Mai', 'le-hien-mai', 'Đường', 182, 2, 1, 4209, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(183, 'Lê Hồng Phong', 'le-hong-phong', 'Đường', 183, 2, 1, 361, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(184, 'Lê Hữu Kiều', 'le-huu-kieu', 'Đường', 184, 2, 1, 2229, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(185, 'Lê Phụng Hiểu', 'le-phung-hieu', 'Phố', 185, 2, 1, 155, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(186, 'Lê Thước', 'le-thuoc', 'Đường', 186, 2, 1, 4146, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(187, 'Lê Văn Hiến', 'le-van-hien', 'Đường', 187, 2, 1, 1480, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(188, 'Lê Văn Miến', 'le-van-mien', 'Đường', 188, 2, 1, 4039, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(189, 'Lê Văn Thịnh', 'le-van-thinh', 'Đường', 189, 2, 1, 4181, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(190, 'Lộc Hòa', 'loc-hoa', 'Đường', 190, 2, 1, 6602, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(191, 'Lương Định Của', 'luong-dinh-cua', 'Phố', 191, 2, 1, 396, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(192, 'Lý Ông Trọng', 'ly-ong-trong', 'Đường', 192, 2, 1, 6609, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(193, 'Mai Chí Thọ', 'mai-chi-tho', 'Đường', 193, 2, 1, 4163, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(194, 'Mương Khai', 'muong-khai', 'Đường', 194, 2, 1, 6596, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(195, 'N1', 'n1', 'Đường', 195, 2, 1, 3599, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(196, 'N11', 'n11', 'Đường', 196, 2, 1, 7328, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(197, 'N13', 'n13', 'Đường', 197, 2, 1, 9958, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(198, 'N17', 'n17', 'Đường', 198, 2, 1, 8151, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(199, 'N2', 'n2', 'Đường', 199, 2, 1, 1984, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(200, 'NE', 'ne', 'Đường', 200, 2, 1, 12323, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(201, 'Ngô Quang Huy', 'ngo-quang-huy', 'Đường', 201, 2, 1, 4137, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(202, 'Nguyễn Án', 'nguyen-an', 'Đường', 202, 2, 1, 1192, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(203, 'Nguyễn Bá Huân', 'nguyen-ba-huan', 'Đường', 203, 2, 1, 3621, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(204, 'Nguyễn Bá Lân', 'nguyen-ba-lan', 'Đường', 204, 2, 1, 2296, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(205, 'Nguyễn Cơ Thạch', 'nguyen-co-thach', 'Đường', 205, 2, 1, 636, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(206, 'Nguyễn Cừ', 'nguyen-cu', 'Phố', 206, 2, 1, 3722, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(207, 'Nguyễn Đăng Đạo', 'nguyen-dang-dao', 'Đường', 207, 2, 1, 2398, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(208, 'Nguyễn Đăng Giai', 'nguyen-dang-giai', 'Đường', 208, 2, 1, 2257, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(209, 'Nguyễn Địa Lô', 'nguyen-dia-lo', 'Đường', 209, 2, 1, 4230, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(210, 'Nguyễn Đôn Tiết', 'nguyen-don-tiet', 'Đường', 210, 2, 1, 6354, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(211, 'Nguyễn Duy Hiệu', 'nguyen-duy-hieu', 'Đường', 211, 2, 1, 3450, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(212, 'Nguyễn Duy Trinh', 'nguyen-duy-trinh', 'Đường', 212, 2, 1, 449, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(213, 'Nguyễn Hoàng', 'nguyen-hoang', 'Đường', 213, 2, 1, 3476, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(214, 'Nguyễn Hưng', 'nguyen-hung', 'Đường', 214, 2, 1, 12756, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(215, 'Nguyễn Hương', 'nguyen-huong', 'Đường', 215, 2, 1, 7736, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(216, 'Nguyễn Huy Chương', 'nguyen-huy-chuong', 'Đường', 216, 2, 1, 6603, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(217, 'Nguyễn Khanh', 'nguyen-khanh', 'Đường', 217, 2, 1, 6608, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(218, 'Nguyễn Khoa Đăng', 'nguyen-khoa-dang', 'Đường', 218, 2, 1, 3052, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(219, 'Nguyễn Lương Dĩ', 'nguyen-luong-di', 'Đường', 219, 2, 1, 6227, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(220, 'Nguyễn Quang Bật', 'nguyen-quang-bat', 'Đường', 220, 2, 1, 4241, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(221, 'Nguyễn Quý Cảnh', 'nguyen-quy-canh', 'Đường', 221, 2, 1, 4166, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(222, 'Nguyễn Quý Đức', 'nguyen-quy-duc', 'Đường', 222, 2, 1, 4048, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(223, 'Nguyễn Thanh Sơn', 'nguyen-thanh-son', 'Đường', 223, 2, 1, 4219, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(224, 'Nguyễn Thị Định', 'nguyen-thi-dinh', 'Đường', 224, 2, 1, 304, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(225, 'Nguyễn Thị Định 2', 'nguyen-thi-dinh-2', 'Đường', 225, 2, 1, 12301, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(226, 'Nguyễn Trọng Quân', 'nguyen-trong-quan', 'Đường', 226, 2, 1, 3140, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(227, 'Nguyễn Trung Nguyệt', 'nguyen-trung-nguyet', 'Đường', 227, 2, 1, 4184, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(228, 'Nguyễn Tư Nghiêm', 'nguyen-tu-nghiem', 'Đường', 228, 2, 1, 4177, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(229, 'Nguyễn Tuyển', 'nguyen-tuyen', 'Đường', 229, 2, 1, 3720, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(230, 'Nguyễn Ư Dĩ', 'nguyen-u-di', 'Phố', 230, 2, 1, 3729, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(231, 'Nguyễn Văn Giáp', 'nguyen-van-giap', 'Đường', 231, 2, 1, 7139, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(232, 'Nguyễn Văn Hưởng', 'nguyen-van-huong', 'Đường', 232, 2, 1, 3057, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(233, 'Nguyễn Văn Kỉnh', 'nguyen-van-kinh', 'Đường', 233, 2, 1, 4215, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(234, 'Phạm Công Trứ', 'pham-cong-tru', 'Đường', 234, 2, 1, 4232, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(235, 'Phạm Đôn Lễ', 'pham-don-le', 'Đường', 235, 2, 1, 4233, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(236, 'Phạm Hy Lượng', 'pham-hy-luong', 'Đường', 236, 2, 1, 4234, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(237, 'Phạm Thận Duật', 'pham-than-duat', 'Đường', 237, 2, 1, 579, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(238, 'Phan Bá Vành', 'phan-ba-vanh', 'Đường', 238, 2, 1, 3377, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(239, 'Phan Văn Đáng', 'phan-van-dang', 'Đường', 239, 2, 1, 3584, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(240, 'Phượng Vỹ', 'phuong-vy', 'Đường', 240, 2, 1, 10967, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(241, 'Quách Giai', 'quach-giai', 'Đường', 241, 2, 1, 4247, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(242, 'Quốc Hương', 'quoc-huong', 'Đường', 242, 2, 1, 4136, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(243, 'Quốc lộ 1A', 'quoc-lo-1a', 'Đường', 243, 2, 1, 2092, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(244, 'Số 1', 'so-1', 'Đường', 244, 2, 1, 11206, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(245, 'Số 10', 'so-10', 'Đường', 245, 2, 1, 11211, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(246, 'Số 104', 'so-104', 'Đường', 246, 2, 1, 11283, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(247, 'Số 104A', 'so-104a', 'Đường', 247, 2, 1, 12063, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(248, 'Số 10A', 'so-10a', 'Đường', 248, 2, 1, 11626, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(249, 'Số 10G', 'so-10g', 'Đường', 249, 2, 1, 11682, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(250, 'Số 11', 'so-11', 'Đường', 250, 2, 1, 11209, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(251, 'Số 12', 'so-12', 'Đường', 251, 2, 1, 11205, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(252, 'Số 13', 'so-13', 'Đường', 252, 2, 1, 11240, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(253, 'Số 14', 'so-14', 'Đường', 253, 2, 1, 11227, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(254, 'Số 14A', 'so-14a', 'Đường', 254, 2, 1, 11270, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(255, 'Số 15', 'so-15', 'Đường', 255, 2, 1, 11210, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(256, 'Số 16', 'so-16', 'Đường', 256, 2, 1, 11225, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(257, 'Số 17', 'so-17', 'Đường', 257, 2, 1, 11215, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(258, 'Số 18', 'so-18', 'Đường', 258, 2, 1, 11255, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(259, 'Số 19', 'so-19', 'Đường', 259, 2, 1, 11235, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(260, 'Số 19B', 'so-19b', 'Đường', 260, 2, 1, 11991, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(261, 'Số 2', 'so-2', 'Đường', 261, 2, 1, 11223, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(262, 'Số 20', 'so-20', 'Đường', 262, 2, 1, 11221, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(263, 'Số 21', 'so-21', 'Đường', 263, 2, 1, 11277, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(264, 'Số 22', 'so-22', 'Đường', 264, 2, 1, 11228, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(265, 'Số 23', 'so-23', 'Đường', 265, 2, 1, 11245, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(266, 'Số 24', 'so-24', 'Đường', 266, 2, 1, 11317, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(267, 'Số 25', 'so-25', 'Đường', 267, 2, 1, 11279, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(268, 'Số 26', 'so-26', 'Đường', 268, 2, 1, 11262, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(269, 'Số 27', 'so-27', 'Đường', 269, 2, 1, 11216, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(270, 'Số 28', 'so-28', 'Đường', 270, 2, 1, 11237, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(271, 'Số 29', 'so-29', 'Đường', 271, 2, 1, 11304, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(272, 'Số 3', 'so-3', 'Đường', 272, 2, 1, 11219, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(273, 'Số 30', 'so-30', 'Đường', 273, 2, 1, 11289, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(274, 'Số 31', 'so-31', 'Đường', 274, 2, 1, 11272, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(275, 'Số 31A', 'so-31a', 'Đường', 275, 2, 1, 11351, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(276, 'Số 31B', 'so-31b', 'Đường', 276, 2, 1, 11815, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(277, 'Số 31C', 'so-31c', 'Đường', 277, 2, 1, 11400, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(278, 'Số 31D', 'so-31d', 'Đường', 278, 2, 1, 12102, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(279, 'Số 31E', 'so-31e', 'Đường', 279, 2, 1, 12554, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(280, 'Số 32', 'so-32', 'Đường', 280, 2, 1, 11298, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(281, 'Số 33', 'so-33', 'Đường', 281, 2, 1, 11376, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(282, 'Số 34', 'so-34', 'Đường', 282, 2, 1, 11261, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(283, 'Số 34A', 'so-34a', 'Đường', 283, 2, 1, 11580, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(284, 'Số 35', 'so-35', 'Đường', 284, 2, 1, 11296, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(285, 'Số 36', 'so-36', 'Đường', 285, 2, 1, 9396, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(286, 'Số 37', 'so-37', 'Đường', 286, 2, 1, 11280, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(287, 'Số 38', 'so-38', 'Đường', 287, 2, 1, 11212, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(288, 'Số 38B', 'so-38b', 'Đường', 288, 2, 1, 11637, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(289, 'Số 39', 'so-39', 'Đường', 289, 2, 1, 11229, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(290, 'Số 4', 'so-4', 'Đường', 290, 2, 1, 11232, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(291, 'Số 40', 'so-40', 'Đường', 291, 2, 1, 11231, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(292, 'Số 41', 'so-41', 'Đường', 292, 2, 1, 11246, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(293, 'Số 42', 'so-42', 'Đường', 293, 2, 1, 11335, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(294, 'Số 43', 'so-43', 'Đường', 294, 2, 1, 11294, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(295, 'Số 44', 'so-44', 'Đường', 295, 2, 1, 11315, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(296, 'Số 45', 'so-45', 'Đường', 296, 2, 1, 11266, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(297, 'Số 46', 'so-46', 'Đường', 297, 2, 1, 11243, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(298, 'Số 47', 'so-47', 'Đường', 298, 2, 1, 11218, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(299, 'Số 48', 'so-48', 'Đường', 299, 2, 1, 11513, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(300, 'Số 49', 'so-49', 'Đường', 300, 2, 1, 11297, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(301, 'Số 5', 'so-5', 'Đường', 301, 2, 1, 11217, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(302, 'Số 50', 'so-50', 'Đường', 302, 2, 1, 11518, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(303, 'Số 51', 'so-51', 'Đường', 303, 2, 1, 11271, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(304, 'Số 52B', 'so-52b', 'Đường', 304, 2, 1, 12633, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(305, 'Số 54', 'so-54', 'Đường', 305, 2, 1, 11691, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(306, 'Số 56', 'so-56', 'Đường', 306, 2, 1, 11389, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(307, 'Số 58', 'so-58', 'Đường', 307, 2, 1, 11567, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(308, 'Số 59', 'so-59', 'Đường', 308, 2, 1, 11273, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(309, 'Số 6', 'so-6', 'Đường', 309, 2, 1, 11192, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(310, 'Số 60', 'so-60', 'Đường', 310, 2, 1, 11603, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(311, 'Số 61', 'so-61', 'Đường', 311, 2, 1, 11619, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(312, 'Số 63', 'so-63', 'Đường', 312, 2, 1, 11956, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(313, 'Số 64', 'so-64', 'Đường', 313, 2, 1, 11256, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(314, 'Số 65', 'so-65', 'Đường', 314, 2, 1, 11394, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(315, 'Số 66', 'so-66', 'Đường', 315, 2, 1, 11334, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(316, 'Số 69', 'so-69', 'Đường', 316, 2, 1, 11820, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(317, 'Số 7', 'so-7', 'Đường', 317, 2, 1, 11222, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(318, 'Số 7A', 'so-7a', 'Đường', 318, 2, 1, 11427, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(319, 'Số 7B', 'so-7b', 'Đường', 319, 2, 1, 11743, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(320, 'Số 7C', 'so-7c', 'Đường', 320, 2, 1, 12093, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(321, 'Số 8', 'so-8', 'Đường', 321, 2, 1, 11207, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(322, 'Số 8A', 'so-8a', 'Đường', 322, 2, 1, 11557, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(323, 'Số 9', 'so-9', 'Đường', 323, 2, 1, 11233, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(324, 'Số 9A', 'so-9a', 'Đường', 324, 2, 1, 11276, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(325, 'Song Hành', 'song-hanh', 'Đường', 325, 2, 1, 1339, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(326, 'Sử Hy Nhan', 'su-hy-nhan', 'Đường', 326, 2, 1, 4248, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(327, 'T6', 't6', 'Đường', 327, 2, 1, 3207, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(328, 'Tạ Hiện', 'ta-hien', 'Đường', 328, 2, 1, 227, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(329, 'Tân Chánh Hiệp 16', 'tan-chanh-hiep-16', 'Đường', 329, 2, 1, 6607, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(330, 'Tân Lập 2', 'tan-lap-2', 'Đường', 330, 2, 1, 6895, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(331, 'Tân Thới Hiệp 10', 'tan-thoi-hiep-10', 'Đường', 331, 2, 1, 6597, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(332, 'Thái Thuận', 'thai-thuan', 'Đường', 332, 2, 1, 3955, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(333, 'Thân Văn Nhiếp', 'than-van-nhiep', 'Đường', 333, 2, 1, 4094, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(334, 'Thạnh Lộc 27', 'thanh-loc-27', 'Đường', 334, 2, 1, 6605, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(335, 'Thạnh Mỹ Bắc', 'thanh-my-bac', 'Đường', 335, 2, 1, 7806, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(336, 'Thạnh Mỹ Lợi', 'thanh-my-loi', 'Đường', 336, 2, 1, 4188, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(337, 'Thạnh Mỹ Nam', 'thanh-my-nam', 'Đường', 337, 2, 1, 4235, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(338, 'Thạnh Xuân 13', 'thanh-xuan-13', 'Đường', 338, 2, 1, 6590, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(339, 'Thạnh Xuân 21', 'thanh-xuan-21', 'Đường', 339, 2, 1, 6600, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(340, 'Thảo Điền', 'thao-dien', 'Đường', 340, 2, 1, 4138, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(341, 'Thích Mật Thể', 'thich-mat-the', 'Đường', 341, 2, 1, 6265, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(342, 'Tỉnh Lộ 10', 'tinh-lo-10', 'Đường', 342, 2, 1, 7649, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(343, 'Tỉnh lộ 25B', 'tinh-lo-25b', 'Đường', 343, 2, 1, 4582, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(344, 'Tống Hữu Định', 'tong-huu-dinh', 'Đường', 344, 2, 1, 7174, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(345, 'Trại Gà', 'trai-ga', 'Đường', 345, 2, 1, 6610, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(346, 'Trần Khắc Chân', 'tran-khac-chan', 'Đường', 346, 2, 1, 997, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(347, 'Trần Lưu', 'tran-luu', 'Đường', 347, 2, 1, 4169, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(348, 'Trần Lựu', 'tran-luu', 'Đường', 348, 2, 1, 10520, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(349, 'Trần Não', 'tran-nao', 'Đường', 349, 2, 1, 4173, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(350, 'Trần Ngọc Diện', 'tran-ngoc-dien', 'Đường', 350, 2, 1, 4162, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(351, 'Trần Phú', 'tran-phu', 'Đường', 351, 2, 1, 131, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(352, 'Trần Quang Đạo', 'tran-quang-dao', 'Đường', 352, 2, 1, 6593, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(353, 'Trích Sài', 'trich-sai', 'Đường', 353, 2, 1, 6595, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(354, 'Trịnh Khắc Lập', 'trinh-khac-lap', 'Đường', 354, 2, 1, 2345, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(355, 'Trúc Đường', 'truc-duong', 'Đường', 355, 2, 1, 6466, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(356, 'Trương Gia Mô', 'truong-gia-mo', 'Đường', 356, 2, 1, 4083, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(357, 'Trương Văn Bang', 'truong-van-bang', 'Đường', 357, 2, 1, 2736, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(358, 'Trương Văn Đa', 'truong-van-da', 'Đường', 358, 2, 1, 6594, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(359, 'Vạn Kiếp', 'van-kiep', 'Phố', 359, 2, 1, 505, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(360, 'Vành Đai', 'vanh-dai', 'Đường', 360, 2, 1, 1944, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(361, 'Vành Đai 2', 'vanh-dai-2', 'Đường', 361, 2, 1, 8092, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(362, 'Vành Đai Đông', 'vanh-dai-dong', 'Đường', 362, 2, 1, 6331, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(363, 'Vành Đai Trong', 'vanh-dai-trong', 'Đường', 363, 2, 1, 1417, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(364, 'Võ Chí Công', 'vo-chi-cong', 'Đường', 364, 2, 1, 7021, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(365, 'Võ Trường Toản', 'vo-truong-toan', 'Đường', 365, 2, 1, 1234, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(366, 'Võ Văn Kiệt', 'vo-van-kiet', 'Đường', 366, 2, 1, 1001, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(367, 'Vũ Phương Đế', 'vu-phuong-de', 'Đường', 367, 2, 1, 4236, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(368, 'Vũ Tông Phan', 'vu-tong-phan', 'Phố', 368, 2, 1, 3696, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(369, 'Xa Lộ Hà Nội', 'xa-lo-ha-noi', 'Đường', 369, 2, 1, 5820, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(370, 'Xuân Thịnh', 'xuan-thinh', 'Đường', 370, 2, 1, 12416, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(371, 'Xuân Thủy', 'xuan-thuy', 'Đường', 371, 2, 1, 602, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(372, '1', '1', 'Đường', 1, 9, 1, 3789, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(373, '10', '10', 'Đường', 2, 9, 1, 3780, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(374, '100', '100', 'Đường', 3, 9, 1, 9714, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(375, '100A', '100a', 'Đường', 4, 9, 1, 7344, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(376, '102', '102', 'Đường', 5, 9, 1, 5850, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(377, '1021', '1021', 'Đường', 6, 9, 1, 12517, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(378, '103', '103', 'Đường', 7, 9, 1, 12914, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(379, '104', '104', 'Đường', 8, 9, 1, 9087, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(380, '106', '106', 'Đường', 9, 9, 1, 8460, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(381, '108', '108', 'Đường', 10, 9, 1, 12543, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(382, '1088', '1088', 'Đường', 11, 9, 1, 13054, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(383, '109', '109', 'Đường', 12, 9, 1, 6575, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(384, '11', '11', 'Đường', 13, 9, 1, 1998, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(385, '110', '110', 'Đường', 14, 9, 1, 6506, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(386, '112', '112', 'Đường', 15, 9, 1, 5419, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(387, '119', '119', 'Đường', 16, 9, 1, 11982, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(388, '11A', '11a', 'Đường', 17, 9, 1, 7426, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(389, '12', '12', 'Đường', 18, 9, 1, 1999, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(390, '120', '120', 'Đường', 19, 9, 1, 7314, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(391, '123', '123', 'Đường', 20, 9, 1, 12099, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(392, '127D', '127d', 'Đường', 21, 9, 1, 12585, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(393, '128', '128', 'Đường', 22, 9, 1, 8896, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(394, '129', '129', 'Đường', 23, 9, 1, 7381, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(395, '12A', '12a', 'Đường', 24, 9, 1, 4167, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(396, '12B', '12b', 'Đường', 25, 9, 1, 2647, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(397, '12C', '12c', 'Đường', 26, 9, 1, 4168, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(398, '12E', '12e', 'Đường', 27, 9, 1, 7766, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(399, '13', '13', 'Đường', 28, 9, 1, 4781, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(400, '1315', '1315', 'Đường', 29, 9, 1, 11871, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(401, '132', '132', 'Đường', 30, 9, 1, 8033, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(402, '138', '138', 'Đường', 31, 9, 1, 7083, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(403, '14', '14', 'Đường', 32, 9, 1, 2001, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(404, '140', '140', 'Đường', 33, 9, 1, 12993, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(405, '141', '141', 'Đường', 34, 9, 1, 10684, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(406, '144', '144', 'Đường', 35, 9, 1, 8597, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(407, '145', '145', 'Đường', 36, 9, 1, 8237, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(408, '146', '146', 'Đường', 37, 9, 1, 11050, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(409, '147', '147', 'Đường', 38, 9, 1, 6405, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(410, '15', '15', 'Đường', 39, 9, 1, 2002, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(411, '150', '150', 'Đường', 40, 9, 1, 13113, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(412, '154', '154', 'Đường', 41, 9, 1, 7236, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(413, '16', '16', 'Đường', 42, 9, 1, 4187, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(414, '160', '160', 'Đường', 43, 9, 1, 5717, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(415, '167', '167', 'Đường', 44, 9, 1, 11988, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(416, '168', '168', 'Đường', 45, 9, 1, 7233, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(417, '17', '17', 'Đường', 46, 9, 1, 2850, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(418, '175', '175', 'Đường', 47, 9, 1, 10381, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(419, '176', '176', 'Đường', 48, 9, 1, 4931, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(420, '179', '179', 'Đường', 49, 9, 1, 8675, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(421, '17D', '17d', 'Đường', 50, 9, 1, 12586, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(422, '18', '18', 'Đường', 51, 9, 1, 2095, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(423, '182', '182', 'Đường', 52, 9, 1, 3591, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(424, '185', '185', 'Đường', 53, 9, 1, 4915, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(425, '189', '189', 'Đường', 54, 9, 1, 4928, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(426, '18A', '18a', 'Đường', 55, 9, 1, 2852, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(427, '18B', '18b', 'Đường', 56, 9, 1, 7111, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(428, '19', '19', 'Đường', 57, 9, 1, 5707, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(429, '197', '197', 'Đường', 58, 9, 1, 9712, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(430, '198', '198', 'Đường', 59, 9, 1, 7317, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(431, '1A', '1a', 'Đường', 60, 9, 1, 7755, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(432, '2', '2', 'Đường', 61, 9, 1, 3788, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(433, '20', '20', 'Đường', 62, 9, 1, 4991, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(434, '200', '200', 'Đường', 63, 9, 1, 12427, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(435, '202', '202', 'Đường', 64, 9, 1, 8769, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(436, '205A', '205a', 'Đường', 65, 9, 1, 11981, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(437, '207', '207', 'Đường', 66, 9, 1, 7914, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(438, '208', '208', 'Đường', 67, 9, 1, 7749, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(439, '21', '21', 'Đường', 68, 9, 1, 3631, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(440, '210', '210', 'Đường', 69, 9, 1, 8006, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(441, '210A', '210a', 'Đường', 70, 9, 1, 11737, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(442, '211', '211', 'Đường', 71, 9, 1, 10241, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(443, '212', '212', 'Đường', 72, 9, 1, 7361, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(444, '215', '215', 'Đường', 73, 9, 1, 8579, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(445, '22', '22', 'Đường', 74, 9, 1, 2773, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(446, '23', '23', 'Đường', 75, 9, 1, 709, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(447, '231', '231', 'Đường', 76, 9, 1, 12033, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(448, '236', '236', 'Đường', 77, 9, 1, 7112, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(449, '238', '238', 'Đường', 78, 9, 1, 12834, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(450, '239', '239', 'Đường', 79, 9, 1, 8615, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(451, '24', '24', 'Phố', 80, 9, 1, 2869, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(452, '244', '244', 'Đường', 81, 9, 1, 8962, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(453, '245', '245', 'Đường', 82, 9, 1, 9219, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(454, '25', '25', 'Đường', 83, 9, 1, 2870, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(455, '251', '251', 'Đường', 84, 9, 1, 13060, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(456, '26', '26', 'Đường', 85, 9, 1, 2354, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(457, '261', '261', 'Đường', 86, 9, 1, 4252, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(458, '263', '263', 'Đường', 87, 9, 1, 4254, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(459, '265', '265', 'Đường', 88, 9, 1, 8447, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(460, '27', '27', 'Đường', 89, 9, 1, 4766, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(461, '270B', '270b', 'Đường', 90, 9, 1, 11726, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(462, '275', '275', 'Đường', 91, 9, 1, 6231, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(463, '28', '28', 'Đường', 92, 9, 1, 2165, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(464, '29', '29', 'Đường', 93, 9, 1, 2166, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(465, '290', '290', 'Đường', 94, 9, 1, 11792, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(466, '295', '295', 'Đường', 95, 9, 1, 8102, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(467, '297', '297', 'Đường', 96, 9, 1, 6229, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(468, '2A', '2a', 'Đường', 97, 9, 1, 4361, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(469, '2B', '2b', 'Đường', 98, 9, 1, 10382, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(470, '2C', '2c', 'Đường', 99, 9, 1, 9323, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(471, '3', '3', 'Đường', 100, 9, 1, 689, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(472, '30', '30', 'Đường', 101, 9, 1, 4196, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(473, '31', '31', 'Đường', 102, 9, 1, 4416, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(474, '311', '311', 'Đường', 103, 9, 1, 9800, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(475, '316', '316', 'Đường', 104, 9, 1, 8738, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(476, '319', '319', 'Đường', 105, 9, 1, 10534, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(477, '32', '32', 'Đường', 106, 9, 1, 7772, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(478, '32D', '32d', 'Đường', 107, 9, 1, 12587, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(479, '33', '33', 'Đường', 108, 9, 1, 4265, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(480, '339', '339', 'Đường', 109, 9, 1, 5809, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(481, '35', '35', 'Đường', 110, 9, 1, 6346, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(482, '359', '359', 'Đường', 111, 9, 1, 7861, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(483, '36', '36', 'Phố', 112, 9, 1, 2878, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(484, '360', '360', 'Đường', 113, 9, 1, 10451, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(485, '379', '379', 'Đường', 114, 9, 1, 6804, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(486, '385', '385', 'Đường', 115, 9, 1, 6158, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(487, '387', '387', 'Đường', 116, 9, 1, 12296, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(488, '39', '39', 'Đường', 117, 9, 1, 2520, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(489, '397', '397', 'Đường', 118, 9, 1, 10919, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(490, '3B', '3b', 'Đường', 119, 9, 1, 8458, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(491, '4', '4', 'Đường', 120, 9, 1, 1990, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(492, '40', '40', 'Đường', 121, 9, 1, 4672, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(493, '400', '400', 'Đường', 122, 9, 1, 10205, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(494, '41', '41', 'Đường', 123, 9, 1, 4211, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(495, '429', '429', 'Đường', 124, 9, 1, 11687, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(496, '43', '43', 'Đường', 125, 9, 1, 4213, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(497, '44', '44', 'Đường', 126, 9, 1, 3061, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(498, '440', '440', 'Đường', 127, 9, 1, 11151, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(499, '441', '441', 'Đường', 128, 9, 1, 6282, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(500, '442', '442', 'Đường', 129, 9, 1, 6115, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(501, '447', '447', 'Đường', 130, 9, 1, 6842, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(502, '449', '449', 'Đường', 131, 9, 1, 8091, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(503, '455', '455', 'Đường', 132, 9, 1, 7255, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(504, '46', '46', 'Đường', 133, 9, 1, 2262, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(505, '47', '47', 'Đường', 134, 9, 1, 2263, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34');
INSERT INTO `street` (`id`, `name`, `slug`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(506, '475', '475', 'Đường', 135, 9, 1, 5819, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(507, '48', '48', 'Đường', 136, 9, 1, 2894, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(508, '49', '49', 'Phố', 137, 9, 1, 2895, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(509, '491', '491', 'Đường', 138, 9, 1, 12452, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(510, '494', '494', 'Đường', 139, 9, 1, 2665, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(511, '5', '5', 'Đường', 140, 9, 1, 3786, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(512, '50', '50', 'Đường', 141, 9, 1, 6591, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(513, '51', '51', 'Đường', 142, 9, 1, 6272, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(514, '52', '52', 'Phố', 143, 9, 1, 2898, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(515, '539', '539', 'Đường', 144, 9, 1, 8873, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(516, '546', '546', 'Đường', 145, 9, 1, 7153, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(517, '55', '55', 'Đường', 146, 9, 1, 2572, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(518, '58', '58', 'Đường', 147, 9, 1, 2906, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(519, '588', '588', 'Đường', 148, 9, 1, 7050, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(520, '591', '591', 'Đường', 149, 9, 1, 11821, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(521, '5A', '5a', 'Đường', 150, 9, 1, 4359, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(522, '5B', '5b', 'Đường', 151, 9, 1, 7222, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(523, '6', '6', 'Đường', 152, 9, 1, 2840, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(524, '60', '60', 'Đường', 153, 9, 1, 4407, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(525, '61', '61', 'Đường', 154, 9, 1, 2252, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(526, '622', '622', 'Đường', 155, 9, 1, 12343, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(527, '63', '63', 'Đường', 156, 9, 1, 8689, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(528, '65', '65', 'Phố', 157, 9, 1, 2915, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(529, '659', '659', 'Đường', 158, 9, 1, 11857, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(530, '66', '66', 'Đường', 159, 9, 1, 2916, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(531, '671', '671', 'Đường', 160, 9, 1, 8569, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(532, '672', '672', 'Đường', 161, 9, 1, 8183, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(533, '68', '68', 'Đường', 162, 9, 1, 2918, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(534, '680', '680', 'Đường', 163, 9, 1, 10884, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(535, '6A', '6a', 'Đường', 164, 9, 1, 2451, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(536, '6B', '6b', 'Đường', 165, 9, 1, 6421, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(537, '6C', '6c', 'Đường', 166, 9, 1, 7185, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(538, '6D', '6d', 'Đường', 167, 9, 1, 7651, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(539, '7', '7', 'Đường', 168, 9, 1, 1994, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(540, '73', '73', 'Đường', 169, 9, 1, 8680, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(541, '734', '734', 'Đường', 170, 9, 1, 12774, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(542, '74', '74', 'Phố', 171, 9, 1, 2924, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(543, '77', '77', 'Đường', 172, 9, 1, 4294, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(544, '783', '783', 'Đường', 173, 9, 1, 11213, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(545, '79', '79', 'Đường', 174, 9, 1, 4295, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(546, '7A', '7a', 'Đường', 175, 9, 1, 8220, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(547, '8', '8', 'Đường', 176, 9, 1, 2841, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(548, '80', '80', 'Đường', 177, 9, 1, 8820, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(549, '811', '811', 'Đường', 178, 9, 1, 12072, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(550, '816', '816', 'Đường', 179, 9, 1, 7217, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(551, '817', '817', 'Đường', 180, 9, 1, 11886, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(552, '822', '822', 'Đường', 181, 9, 1, 10640, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(553, '826', '826', 'Đường', 182, 9, 1, 11532, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(554, '827', '827', 'Đường', 183, 9, 1, 11464, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(555, '835', '835', 'Đường', 184, 9, 1, 10344, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(556, '836', '836', 'Đường', 185, 9, 1, 7949, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(557, '84', '84', 'Đường', 186, 9, 1, 8713, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(558, '85', '85', 'Đường', 187, 9, 1, 4300, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(559, '86', '86', 'Đường', 188, 9, 1, 11071, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(560, '882', '882', 'Đường', 189, 9, 1, 8349, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(561, '89', '89', 'Đường', 190, 9, 1, 8998, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(562, '898', '898', 'Đường', 191, 9, 1, 8802, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(563, '8A', '8a', 'Đường', 192, 9, 1, 8321, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(564, '9', '9', 'Đường', 193, 9, 1, 2842, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(565, '904', '904', 'Đường', 194, 9, 1, 7055, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(566, '94', '94', 'Đường', 195, 9, 1, 7074, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(567, '96', '96', 'Đường', 196, 9, 1, 7103, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(568, '963', '963', 'Đường', 197, 9, 1, 9123, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(569, '970', '970', 'Đường', 198, 9, 1, 8112, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(570, '976', '976', 'Đường', 199, 9, 1, 12761, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(571, '98', '98', 'Đường', 200, 9, 1, 7989, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(572, '980', '980', 'Đường', 201, 9, 1, 10260, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(573, '99', '99', 'Đường', 202, 9, 1, 7346, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(574, '990', '990', 'Đường', 203, 9, 1, 7033, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(575, '9A', '9a', 'Đường', 204, 9, 1, 5844, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(576, 'A', 'a', 'Đường', 205, 9, 1, 7073, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(577, 'A1', 'a1', 'Đường', 206, 9, 1, 2768, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(578, 'A2', 'a2', 'Đường', 207, 9, 1, 2769, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(579, 'An Phú Đông 27', 'an-phu-dong-27', 'Đường', 208, 9, 1, 6599, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(580, 'B1', 'b1', 'Đường', 209, 9, 1, 3801, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(581, 'Bắc Rạch Chiếc', 'bac-rach-chiec', 'Đường', 210, 9, 1, 8566, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(582, 'Bàu Cát', 'bau-cat', 'Đường', 211, 9, 1, 6066, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(583, 'Bùi Xương Trạch', 'bui-xuong-trach', 'Đường', 212, 9, 1, 309, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(584, 'Bưng Ông Thoàn', 'bung-ong-thoan', 'Đường', 213, 9, 1, 1418, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(585, 'C3', 'c3', 'Đường', 214, 9, 1, 3073, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(586, 'Cầu Đình', 'cau-dinh', 'Đường', 215, 9, 1, 4684, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(587, 'Cầu Xây', 'cau-xay', 'Đường', 216, 9, 1, 6744, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(588, 'Cầu Xây 1', 'cau-xay-1', 'Đường', 217, 9, 1, 6731, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(589, 'Cầu Xây 2', 'cau-xay-2', 'Đường', 218, 9, 1, 6923, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(590, 'Chu Văn An', 'chu-van-an', 'Đường', 219, 9, 1, 802, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(591, 'Cô Giang', 'co-giang', 'Đường', 220, 9, 1, 2014, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(592, 'CT01', 'ct01', 'Đường', 221, 9, 1, 12978, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(593, 'Cù Lao Thượng', 'cu-lao-thuong', 'Đường', 222, 9, 1, 6579, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(594, 'D', 'd', 'Đường', 223, 9, 1, 10501, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(595, 'D1', 'd1', 'Đường', 224, 9, 1, 1985, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(596, 'D100', 'd100', 'Đường', 225, 9, 1, 13140, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(597, 'D11', 'd11', 'Đường', 226, 9, 1, 3222, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(598, 'D13', 'd13', 'Đường', 227, 9, 1, 3221, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(599, 'D15', 'd15', 'Đường', 228, 9, 1, 6582, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(600, 'D16', 'd16', 'Đường', 229, 9, 1, 3223, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(601, 'D17', 'd17', 'Đường', 230, 9, 1, 8996, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(602, 'D19', 'd19', 'Đường', 231, 9, 1, 8759, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(603, 'D2', 'd2', 'Đường', 232, 9, 1, 4601, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(604, 'D21', 'd21', 'Đường', 233, 9, 1, 10494, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(605, 'D3', 'd3', 'Đường', 234, 9, 1, 4602, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(606, 'D3A', 'd3a', 'Đường', 235, 9, 1, 10335, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(607, 'D3B', 'd3b', 'Đường', 236, 9, 1, 11447, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(608, 'D4', 'd4', 'Đường', 237, 9, 1, 2599, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(609, 'D400', 'd400', 'Đường', 238, 9, 1, 12105, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(610, 'D4A', 'd4a', 'Đường', 239, 9, 1, 11431, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(611, 'D5', 'd5', 'Đường', 240, 9, 1, 2600, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(612, 'D5A', 'd5a', 'Đường', 241, 9, 1, 11698, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(613, 'D6', 'd6', 'Đường', 242, 9, 1, 8159, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(614, 'D7', 'd7', 'Đường', 243, 9, 1, 6799, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(615, 'D8', 'd8', 'Đường', 244, 9, 1, 1775, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(616, 'D9', 'd9', 'Đường', 245, 9, 1, 5889, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(617, 'Đại Hiệp', 'dai-hiep', 'Đường', 246, 9, 1, 11742, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(618, 'Đại Lộ 13', 'dai-lo-13', 'Đường', 247, 9, 1, 11475, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(619, 'Đại lộ 2', 'dai-lo-2', 'Đường', 248, 9, 1, 8385, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(620, 'Đại lộ 3', 'dai-lo-3', 'Đường', 249, 9, 1, 8450, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(621, 'Đại lộ 61', 'dai-lo-61', 'Đường', 250, 9, 1, 8878, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(622, 'Đại Lộ Đông Tây', 'dai-lo-dong-tay', 'Đường', 251, 9, 1, 5638, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(623, 'Dân Chủ', 'dan-chu', 'Đường', 252, 9, 1, 2944, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(624, 'Đặng Nghiêm', 'dang-nghiem', 'Đường', 253, 9, 1, 1405, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(625, 'Diệp Minh Tuyền', 'diep-minh-tuyen', 'Đường', 254, 9, 1, 12055, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(626, 'Đinh Củng Viên', 'dinh-cung-vien', 'Đường', 255, 9, 1, 6740, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(627, 'Đình Phong Phú', 'dinh-phong-phu', 'Đường', 256, 9, 1, 7305, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(628, 'Đỗ Thế Diên', 'do-the-dien', 'Đường', 257, 9, 1, 10389, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(629, 'Đỗ Xuân Hợp', 'do-xuan-hop', 'Đường', 258, 9, 1, 1416, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(630, 'Đông Hưng Thuận 6', 'dong-hung-thuan-6', 'Đường', 259, 9, 1, 6598, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(631, 'ĐT 741', 'dt-741', 'Đường', 260, 9, 1, 6581, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(632, 'ĐT 747', 'dt-747', 'Đường', 261, 9, 1, 6580, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(633, 'Dương Đình Hội', 'duong-dinh-hoi', 'Đường', 262, 9, 1, 5618, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(634, 'F', 'f', 'Đường', 263, 9, 1, 10537, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(635, 'Gò Cát', 'go-cat', 'Đường', 264, 9, 1, 1413, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(636, 'Gò Công', 'go-cong', 'Đường', 265, 9, 1, 1197, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(637, 'Gò Đồi', 'go-doi', 'Đường', 266, 9, 1, 1415, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(638, 'Gò Lu', 'go-lu', 'Đường', 267, 9, 1, 5685, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(639, 'Gò Nổi', 'go-noi', 'Đường', 268, 9, 1, 11338, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(640, 'Hai Bà Trưng', 'hai-ba-trung', 'Phố', 269, 9, 1, 102, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(641, 'Hàn Giang', 'han-giang', 'Đường', 270, 9, 1, 6592, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(642, 'Hàng Tre', 'hang-tre', 'Phố', 271, 9, 1, 199, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(643, 'Hậu Lân', 'hau-lan', 'Đường', 272, 9, 1, 6604, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(644, 'Hi - Tech Park', 'hi-tech-park', 'Đường', 273, 9, 1, 1424, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(645, 'Hiền Vương', 'hien-vuong', 'Đường', 274, 9, 1, 3246, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(646, 'Hiệp Thành 13', 'hiep-thanh-13', 'Đường', 275, 9, 1, 6606, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(647, 'Hiệp Thành 18', 'hiep-thanh-18', 'Đường', 276, 9, 1, 6576, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(648, 'Hồ Bá Phấn', 'ho-ba-phan', 'Đường', 277, 9, 1, 5559, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(649, 'Hồ Biểu Chánh', 'ho-bieu-chanh', 'Đường', 278, 9, 1, 3361, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(650, 'Hồ Ngọc Lãm', 'ho-ngoc-lam', 'Đường', 279, 9, 1, 6484, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(651, 'Hoàng Hữu Nam', 'hoang-huu-nam', 'Đường', 280, 9, 1, 1398, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(652, 'Hồng Sến', 'hong-sen', 'Đường', 281, 9, 1, 8517, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(653, 'Huy Cận', 'huy-cạn', 'Đường', 282, 9, 1, 6491, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(654, 'Huỳnh Thúc Kháng', 'huynh-thuc-khang', 'Đường', 283, 9, 1, 78, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(655, 'Ích Thạnh', 'ich-thanh', 'Đường', 284, 9, 1, 1422, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(656, 'Ích Thạnh 16', 'ich-thanh-16', 'Đường', 285, 9, 1, 12261, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(657, 'Khởi Nghĩa Bắc Sơn', 'khoi-nghia-bac-son', 'Đường', 286, 9, 1, 6583, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(658, 'Khổng Tử', 'khong-tu', 'Đường', 287, 9, 1, 3583, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(659, 'Khổng Tử', 'khỏng-tu', 'Đường', 288, 9, 1, 7385, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(660, 'Ký Con', 'ky-con', 'Đường', 289, 9, 1, 963, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(661, 'Lã Xuân Oai', 'la-xuan-oai', 'Đường', 290, 9, 1, 5686, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(662, 'Lạc Thiên', 'lac-thien', 'Đường', 291, 9, 1, 12887, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(663, 'Lâm Viên', 'lam-vien', 'Đường', 292, 9, 1, 1399, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(664, 'Làng Tăng Phú', 'lang-tang-phu', 'Đường', 293, 9, 1, 5834, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(665, 'Lê Duẩn', 'le-duan', 'Đường', 294, 9, 1, 89, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(666, 'Lê Lợi', 'le-loi', 'Đường', 295, 9, 1, 338, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(667, 'Lê Thánh Tôn', 'le-thanh-ton', 'Đường', 296, 9, 1, 895, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(668, 'Lê Văn Thứ', 'le-van-thu', 'Đường', 297, 9, 1, 5923, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(669, 'Lê Văn Việt', 'le-van-viet', 'Đường', 298, 9, 1, 1423, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(670, 'Lê Xuân Oai', 'le-xuan-oai', 'Đường', 299, 9, 1, 1421, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(671, 'Liên Phường', 'lien-phuong', 'Đường', 300, 9, 1, 6114, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(672, 'Lò Lu', 'lo-lu', 'Đường', 301, 9, 1, 1420, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(673, 'Lộc Hòa', 'loc-hoa', 'Đường', 302, 9, 1, 6602, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(674, 'Long Hòa', 'long-hoa', 'Đường', 303, 9, 1, 12054, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(675, 'Long Phước', 'long-phuoc', 'Đường', 304, 9, 1, 1408, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(676, 'Long Sơn', 'long-son', 'Đường', 305, 9, 1, 1401, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(677, 'Long Thành - Dầu Giây', 'long-thanh-dau-giay', 'Đường', 306, 9, 1, 1412, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(678, 'Long Thuận', 'long-thuan', 'Đường', 307, 9, 1, 1409, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(679, 'Lý Ông Trọng', 'ly-ong-trong', 'Đường', 308, 9, 1, 6609, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(680, 'Lý Thái Tổ', 'ly-thai-to', 'Đường', 309, 9, 1, 237, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(681, 'M4', 'm4', 'Đường', 310, 9, 1, 4365, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(682, 'M50', 'm50', 'Đường', 311, 9, 1, 13129, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(683, 'Mã Lò', 'ma-lo', 'Đường', 312, 9, 1, 897, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(684, 'Mạc Hiền Tích', 'mac-hien-tich', 'Đường', 313, 9, 1, 1400, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(685, 'Man Thiện', 'man-thien', 'Đường', 314, 9, 1, 5950, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(686, 'Mương Khai', 'muong-khai', 'Đường', 315, 9, 1, 6596, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(687, 'N1', 'n1', 'Đường', 316, 9, 1, 3599, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(688, 'N10', 'n10', 'Đường', 317, 9, 1, 10396, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(689, 'N11', 'n11', 'Đường', 318, 9, 1, 7328, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(690, 'N5', 'n5', 'Đường', 319, 9, 1, 6732, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(691, 'N6', 'n6', 'Đường', 320, 9, 1, 3020, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(692, 'N7', 'n7', 'Đường', 321, 9, 1, 7258, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(693, 'N8', 'n8', 'Đường', 322, 9, 1, 7145, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(694, 'N9', 'n9', 'Đường', 323, 9, 1, 7138, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(695, 'Nam Cao', 'nam-cao', 'Phố', 324, 9, 1, 722, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(696, 'Nam Hòa', 'nam-hoa', 'Phố', 325, 9, 1, 1760, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(697, 'Ngô Quyền', 'ngo-quyen', 'Đường', 326, 9, 1, 120, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(698, 'Nguyễn Công Trứ', 'nguyen-cong-tru', 'Đường', 327, 9, 1, 517, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(699, 'Nguyễn Đình Thi', 'nguyen-dinh-thi', 'Đường', 328, 9, 1, 3348, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(700, 'Nguyễn Duy Trinh', 'nguyen-duy-trinh', 'Đường', 329, 9, 1, 449, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(701, 'Nguyễn Huy Chương', 'nguyen-huy-chuong', 'Đường', 330, 9, 1, 6603, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(702, 'Nguyễn Khanh', 'nguyen-khanh', 'Đường', 331, 9, 1, 6608, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(703, 'Nguyễn Khoái', 'nguyen-khoai', 'Đường', 332, 9, 1, 468, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(704, 'Nguyễn Thị Sóc', 'nguyen-thi-soc', 'Đường', 333, 9, 1, 5560, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(705, 'Nguyễn Trãi', 'nguyen-trai', 'Đường', 334, 9, 1, 65, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(706, 'Nguyễn Tri Phương', 'nguyen-tri-phuong', 'Đường', 335, 9, 1, 1140, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(707, 'Nguyễn Văn Tăng', 'nguyen-van-tang', 'Đường', 336, 9, 1, 1407, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(708, 'Nguyễn Văn Thành', 'nguyen-van-thanh', 'Đường', 337, 9, 1, 1406, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(709, 'Nguyễn Xiển', 'nguyen-xien', 'Đường', 338, 9, 1, 316, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(710, 'Nguyễn Xiểu', 'nguyen-xieu', 'Đường', 339, 9, 1, 1397, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(711, 'Núi Một', 'nui-mot', 'Đường', 340, 9, 1, 6587, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(712, 'Phạm Hồng Thái', 'pham-hong-thai', 'Đường', 341, 9, 1, 751, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(713, 'Phạm Trọng Cầu', 'pham-trong-cau', 'Đường', 342, 9, 1, 10184, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(714, 'Phan Bội Châu', 'phan-boi-chau', 'Đường', 343, 9, 1, 126, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(715, 'Phan Chu Trinh', 'phan-chu-trinh', 'Đường', 344, 9, 1, 907, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(716, 'Phan Đặng Đức', 'phan-dang-duc', 'Đường', 345, 9, 1, 1404, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(717, 'Phan Đạt Đức', 'phan-dat-duc', 'Đường', 346, 9, 1, 7316, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(718, 'Phan Đình Phùng', 'phan-dinh-phung', 'Đường', 347, 9, 1, 213, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(719, 'Phong Phú', 'phong-phu', 'Đường', 348, 9, 1, 5716, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(720, 'Phú Trung', 'phu-trung', 'Đường', 349, 9, 1, 6588, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(721, 'Phước Bình', 'phuoc-binh', 'Đường', 350, 9, 1, 7791, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(722, 'Phước Hậu', 'phuoc-hau', 'Đường', 351, 9, 1, 5138, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(723, 'Phước Hữu', 'phuoc-huu', 'Đường', 352, 9, 1, 11311, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(724, 'Phước Thiện', 'phuoc-thien', 'Đường', 353, 9, 1, 5558, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(725, 'Quang Trung', 'quang-trung', 'Đường', 354, 9, 1, 366, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(726, 'Quốc Lộ 1', 'quoc-lo-1', 'Đường', 355, 9, 1, 7834, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(727, 'Quốc lộ 106', 'quoc-lo-106', 'Đường', 356, 9, 1, 5438, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(728, 'Quốc lộ 1A', 'quoc-lo-1a', 'Đường', 357, 9, 1, 2092, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(729, 'Quốc Lộ 51', 'quoc-lo-51', 'Đường', 358, 9, 1, 7693, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(730, 'Quốc Lộ 52', 'quoc-lo-52', 'Đường', 359, 9, 1, 12722, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(731, 'Số 1', 'so-1', 'Đường', 360, 9, 1, 11206, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(732, 'Số 10', 'so-10', 'Đường', 361, 9, 1, 11211, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(733, 'Số 100', 'so-100', 'Đường', 362, 9, 1, 11840, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(734, 'Số 102', 'so-102', 'Đường', 363, 9, 1, 11302, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(735, 'Số 11', 'so-11', 'Đường', 364, 9, 1, 11209, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(736, 'Số 110', 'so-110', 'Đường', 365, 9, 1, 12197, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(737, 'Số 12', 'so-12', 'Đường', 366, 9, 1, 11205, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(738, 'Số 123', 'so-123', 'Đường', 367, 9, 1, 12068, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(739, 'Số 13', 'so-13', 'Đường', 368, 9, 1, 11240, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(740, 'Số 14', 'so-14', 'Đường', 369, 9, 1, 11227, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(741, 'Số 15', 'so-15', 'Đường', 370, 9, 1, 11210, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(742, 'Số 16', 'so-16', 'Đường', 371, 9, 1, 11225, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(743, 'Số 160', 'so-160', 'Đường', 372, 9, 1, 12444, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(744, 'Số 17', 'so-17', 'Đường', 373, 9, 1, 11215, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(745, 'Số 18', 'so-18', 'Đường', 374, 9, 1, 11255, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(746, 'Số 182', 'so-182', 'Đường', 375, 9, 1, 12908, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(747, 'Số 185', 'so-185', 'Đường', 376, 9, 1, 12044, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(748, 'Số 18A', 'so-18a', 'Đường', 377, 9, 1, 11828, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(749, 'Số 19', 'so-19', 'Đường', 378, 9, 1, 11235, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(750, 'Số 19A', 'so-19a', 'Đường', 379, 9, 1, 11521, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(751, 'Số 1A', 'so-1a', 'Đường', 380, 9, 1, 11432, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(752, 'Số 2', 'so-2', 'Đường', 381, 9, 1, 11223, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(753, 'Số 20', 'so-20', 'Đường', 382, 9, 1, 11221, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(754, 'Số 200', 'so-200', 'Đường', 383, 9, 1, 12071, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(755, 'Số 21', 'so-21', 'Đường', 384, 9, 1, 11277, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(756, 'Số 215', 'so-215', 'Đường', 385, 9, 1, 11554, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(757, 'Số 22', 'so-22', 'Đường', 386, 9, 1, 11228, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(758, 'Số 23', 'so-23', 'Đường', 387, 9, 1, 11245, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(759, 'Số 24', 'so-24', 'Đường', 388, 9, 1, 11317, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(760, 'Số 25', 'so-25', 'Đường', 389, 9, 1, 11279, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(761, 'Số 26', 'so-26', 'Đường', 390, 9, 1, 11262, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(762, 'Số 27', 'so-27', 'Đường', 391, 9, 1, 11216, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(763, 'Số 28', 'so-28', 'Đường', 392, 9, 1, 11237, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(764, 'Số 29', 'so-29', 'Đường', 393, 9, 1, 11304, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(765, 'Số 295', 'so-295', 'Đường', 394, 9, 1, 12490, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(766, 'Số 297', 'so-297', 'Đường', 395, 9, 1, 12680, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(767, 'Số 2A', 'so-2a', 'Đường', 396, 9, 1, 11247, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(768, 'Số 3', 'so-3', 'Đường', 397, 9, 1, 11219, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(769, 'Số 30', 'so-30', 'Đường', 398, 9, 1, 11289, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(770, 'Số 31', 'so-31', 'Đường', 399, 9, 1, 11272, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(771, 'Số 33', 'so-33', 'Đường', 400, 9, 1, 11376, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(772, 'Số 339', 'so-339', 'Đường', 401, 9, 1, 11497, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(773, 'Số 359', 'so-359', 'Đường', 402, 9, 1, 13057, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(774, 'Số 4', 'so-4', 'Đường', 403, 9, 1, 11232, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(775, 'Số 44', 'so-44', 'Đường', 404, 9, 1, 11315, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(776, 'Số 448', 'so-448', 'Đường', 405, 9, 1, 13008, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(777, 'Số 46', 'so-46', 'Đường', 406, 9, 1, 11243, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(778, 'Số 494', 'so-494', 'Đường', 407, 9, 1, 13011, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(779, 'Số 5', 'so-5', 'Đường', 408, 9, 1, 11217, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(780, 'Số 5A', 'so-5a', 'Đường', 409, 9, 1, 11293, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(781, 'Số 6', 'so-6', 'Đường', 410, 9, 1, 11192, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(782, 'Số 61', 'so-61', 'Đường', 411, 9, 1, 11619, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(783, 'Số 61B', 'so-61b', 'Đường', 412, 9, 1, 12113, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(784, 'Số 68', 'so-68', 'Đường', 413, 9, 1, 11396, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(785, 'Số 6A', 'so-6a', 'Đường', 414, 9, 1, 11220, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(786, 'Số 7', 'so-7', 'Đường', 415, 9, 1, 11222, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(787, 'Số 73', 'so-73', 'Đường', 416, 9, 1, 11496, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(788, 'Số 74', 'so-74', 'Đường', 417, 9, 1, 12015, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(789, 'Số 79', 'so-79', 'Đường', 418, 9, 1, 11264, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(790, 'Số 8', 'so-8', 'Đường', 419, 9, 1, 11207, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(791, 'Số 827', 'so-827', 'Đường', 420, 9, 1, 13052, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(792, 'Số 882', 'so-882', 'Đường', 421, 9, 1, 12833, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(793, 'Số 9', 'so-9', 'Đường', 422, 9, 1, 11233, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(794, 'Số 91', 'so-91', 'Đường', 423, 9, 1, 12721, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(795, 'Số 9B', 'so-9b', 'Đường', 424, 9, 1, 12127, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(796, 'Song Hành', 'song-hanh', 'Đường', 425, 9, 1, 1339, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(797, 'Tam Đa', 'tam-da', 'Đường', 426, 9, 1, 5849, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(798, 'Tân Chánh Hiệp 16', 'tan-chanh-hiep-16', 'Đường', 427, 9, 1, 6607, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(799, 'Tân Chánh Hiệp 2', 'tan-chanh-hiep-2', 'Đường', 428, 9, 1, 6584, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(800, 'Tân Hóa', 'tan-hoa', 'Đường', 429, 9, 1, 4258, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(801, 'Tân Hòa', 'tan-hoa', 'Đường', 430, 9, 1, 6816, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(802, 'Tân Hòa 2', 'tan-hoa-2', 'Đường', 431, 9, 1, 7009, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(803, 'Tân Lập', 'tan-lap', 'Đường', 432, 9, 1, 2927, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(804, 'Tân Lập 1', 'tan-lap-1', 'Đường', 433, 9, 1, 5845, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(805, 'Tân Lập 2', 'tan-lap-2', 'Đường', 434, 9, 1, 6895, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(806, 'Tân Thới Hiệp 10', 'tan-thoi-hiep-10', 'Đường', 435, 9, 1, 6597, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(807, 'Tăng Nhơn Phú', 'tang-nhon-phu', 'Đường', 436, 9, 1, 6409, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(808, 'Tây Hòa', 'tay-hoa', 'Đường', 437, 9, 1, 5906, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(809, 'Tây Hòa 2', 'tay-hoa-2', 'Đường', 438, 9, 1, 7825, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(810, 'Thạnh Lộc 27', 'thanh-loc-27', 'Đường', 439, 9, 1, 6605, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(811, 'Thanh Nga', 'thanh-nga', 'Đường', 440, 9, 1, 11350, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(812, 'Thạnh Xuân 13', 'thanh-xuan-13', 'Đường', 441, 9, 1, 6590, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(813, 'Thạnh Xuân 21', 'thanh-xuan-21', 'Đường', 442, 9, 1, 6600, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(814, 'Thích Bửu Đăng', 'thich-buu-dang', 'Đường', 443, 9, 1, 6585, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(815, 'Thủy Lợi', 'thuy-loi', 'Đường', 444, 9, 1, 6745, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(816, 'Tỉnh lộ 179', 'tinh-lo-179', 'Đường', 445, 9, 1, 742, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(817, 'Tỉnh lộ 359', 'tinh-lo-359', 'Đường', 446, 9, 1, 7062, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(818, 'Trại Gà', 'trai-ga', 'Đường', 447, 9, 1, 6610, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(819, 'Trần Cao Vân', 'tran-cao-van', 'Đường', 448, 9, 1, 544, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(820, 'Trần Hưng Đạo', 'tran-hung-dao', 'Đường', 449, 9, 1, 502, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(821, 'Trần Kế Xương', 'tran-ke-xuong', 'Đường', 450, 9, 1, 4528, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(822, 'Trần Quang Đạo', 'tran-quang-dao', 'Đường', 451, 9, 1, 6593, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(823, 'Trần Quang Khải', 'tran-quang-khai', 'Đường', 452, 9, 1, 138, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(824, 'Trần Quốc Toản', 'tran-quoc-toan', 'Đường', 453, 9, 1, 219, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(825, 'Trần Trọng Khiêm', 'tran-trong-khiem', 'Đường', 454, 9, 1, 1402, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(826, 'Trích Sài', 'trich-sai', 'Đường', 455, 9, 1, 6595, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(827, 'Trịnh Hoài Đức', 'trinh-hoai-duc', 'Đường', 456, 9, 1, 390, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(828, 'Trường Khánh', 'truong-khanh', 'Đường', 457, 9, 1, 1410, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(829, 'Trường Lưu', 'truong-luu', 'Đường', 458, 9, 1, 1425, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(830, 'Trương Minh Giảng', 'truong-minh-giang', 'Đường', 459, 9, 1, 5903, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(831, 'Trường Thạnh', 'truong-thanh', 'Đường', 460, 9, 1, 1411, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(832, 'Trương Văn Đa', 'truong-van-da', 'Đường', 461, 9, 1, 6594, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(833, 'Trương Văn Hải', 'truong-van-hai', 'Đường', 462, 9, 1, 5940, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(834, 'Trương Văn Thành', 'truong-van-thanh', 'Đường', 463, 9, 1, 5922, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(835, 'Tự Do', 'tu-do', 'Đường', 464, 9, 1, 1972, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(836, 'Tú Xương', 'tu-xuong', 'Đường', 465, 9, 1, 1534, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(837, 'Út Trà Ôn', 'ut-tra-on', 'Đường', 466, 9, 1, 10784, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(838, 'Vành Đai 2', 'vanh-dai-2', 'Đường', 467, 9, 1, 8092, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(839, 'Vành Đai 3', 'vanh-dai-3', 'Đường', 468, 9, 1, 8005, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(840, 'Vành Đai Đông', 'vanh-dai-dong', 'Đường', 469, 9, 1, 6331, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(841, 'Vành Đai Trong', 'vanh-dai-trong', 'Đường', 470, 9, 1, 1417, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(842, 'Võ Chí Công', 'vo-chi-cong', 'Đường', 471, 9, 1, 7021, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(843, 'Võ Quảng', 'vo-quang', 'Đường', 472, 9, 1, 6577, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(844, 'Võ Văn Hát', 'vo-van-hat', 'Đường', 473, 9, 1, 1419, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(845, 'Xa La', 'xa-la', 'Đường', 474, 9, 1, 6586, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(846, 'Xa Lộ Hà Nội', 'xa-lo-ha-noi', 'Đường', 475, 9, 1, 5820, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(847, 'Xuân Quỳnh', 'xuan-quynh', 'Đường', 476, 9, 1, 11761, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(848, '1', '1', 'Đường', 1, 19, 1, 3789, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(849, '10', '10', 'Đường', 2, 19, 1, 3780, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(850, '11', '11', 'Đường', 3, 19, 1, 1998, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(851, '12', '12', 'Đường', 4, 19, 1, 1999, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(852, '13', '13', 'Đường', 5, 19, 1, 4781, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(853, '14', '14', 'Đường', 6, 19, 1, 2001, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(854, '15', '15', 'Đường', 7, 19, 1, 2002, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(855, '16', '16', 'Đường', 8, 19, 1, 4187, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(856, '17', '17', 'Đường', 9, 19, 1, 2850, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(857, '18', '18', 'Đường', 10, 19, 1, 2095, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(858, '182', '182', 'Đường', 11, 19, 1, 3591, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(859, '19', '19', 'Đường', 12, 19, 1, 5707, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(860, '2', '2', 'Đường', 13, 19, 1, 3788, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(861, '20', '20', 'Đường', 14, 19, 1, 4991, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(862, '21', '21', 'Đường', 15, 19, 1, 3631, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(863, '22', '22', 'Đường', 16, 19, 1, 2773, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(864, '23', '23', 'Đường', 17, 19, 1, 709, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(865, '24', '24', 'Phố', 18, 19, 1, 2869, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(866, '25', '25', 'Đường', 19, 19, 1, 2870, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(867, '26', '26', 'Đường', 20, 19, 1, 2354, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(868, '27', '27', 'Đường', 21, 19, 1, 4766, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(869, '28', '28', 'Đường', 22, 19, 1, 2165, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(870, '29', '29', 'Đường', 23, 19, 1, 2166, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(871, '3', '3', 'Đường', 24, 19, 1, 689, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(872, '3/2', '3-2', 'Đường', 25, 19, 1, 1000, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(873, '30', '30', 'Đường', 26, 19, 1, 4196, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(874, '31', '31', 'Đường', 27, 19, 1, 4416, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(875, '32', '32', 'Đường', 28, 19, 1, 7772, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(876, '33', '33', 'Đường', 29, 19, 1, 4265, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(877, '34', '34', 'Đường', 30, 19, 1, 2876, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(878, '35', '35', 'Đường', 31, 19, 1, 6346, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(879, '36', '36', 'Phố', 32, 19, 1, 2878, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(880, '37', '37', 'Phố', 33, 19, 1, 2879, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(881, '38', '38', 'Đường', 34, 19, 1, 2167, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(882, '389', '389', 'Đường', 35, 19, 1, 11633, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(883, '39', '39', 'Đường', 36, 19, 1, 2520, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(884, '4', '4', 'Đường', 37, 19, 1, 1990, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(885, '40', '40', 'Đường', 38, 19, 1, 4672, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(886, '41', '41', 'Đường', 39, 19, 1, 4211, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(887, '42', '42', 'Đường', 40, 19, 1, 2885, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(888, '43', '43', 'Đường', 41, 19, 1, 4213, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(889, '44', '44', 'Đường', 42, 19, 1, 3061, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(890, '45', '45', 'Phố', 43, 19, 1, 2889, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(891, '46', '46', 'Đường', 44, 19, 1, 2262, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(892, '47', '47', 'Đường', 45, 19, 1, 2263, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(893, '48', '48', 'Đường', 46, 19, 1, 2894, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(894, '49', '49', 'Phố', 47, 19, 1, 2895, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(895, '5', '5', 'Đường', 48, 19, 1, 3786, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(896, '50', '50', 'Đường', 49, 19, 1, 6591, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(897, '50/27', '50-27', 'Đường', 50, 19, 1, 10630, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(898, '51', '51', 'Đường', 51, 19, 1, 6272, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(899, '52', '52', 'Phố', 52, 19, 1, 2898, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(900, '520', '520', 'Đường', 53, 19, 1, 8861, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(901, '53', '53', 'Đường', 54, 19, 1, 4472, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(902, '54', '54', 'Đường', 55, 19, 1, 2900, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(903, '57', '57', 'Đường', 56, 19, 1, 6015, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(904, '6', '6', 'Đường', 57, 19, 1, 2840, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(905, '606', '606', 'Đường', 58, 19, 1, 10331, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(906, '63', '63', 'Đường', 59, 19, 1, 8689, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(907, '635', '635', 'Đường', 60, 19, 1, 11002, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(908, '647', '647', 'Đường', 61, 19, 1, 11395, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(909, '652', '652', 'Đường', 62, 19, 1, 10719, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(910, '66', '66', 'Đường', 63, 19, 1, 2916, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(911, '668', '668', 'Đường', 64, 19, 1, 11068, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(912, '7', '7', 'Đường', 65, 19, 1, 1994, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(913, '70', '70', 'Đường', 66, 19, 1, 631, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(914, '7L', '7l', 'Đường', 67, 19, 1, 4309, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(915, '8', '8', 'Đường', 68, 19, 1, 2841, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(916, '808', '808', 'Đường', 69, 19, 1, 9845, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(917, '833', '833', 'Đường', 70, 19, 1, 12250, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(918, '866', '866', 'Đường', 71, 19, 1, 12153, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(919, '9', '9', 'Đường', 72, 19, 1, 2842, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(920, '96', '96', 'Đường', 73, 19, 1, 7103, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(921, 'A', 'a', 'Đường', 74, 19, 1, 7073, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(922, 'An Phú Đông 27', 'an-phu-dong-27', 'Đường', 75, 19, 1, 6599, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(923, 'B', 'b', 'Đường', 76, 19, 1, 4135, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(924, 'B2', 'b2', 'Đường', 77, 19, 1, 3145, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(925, 'Bắc Ái', 'bac-ai', 'Đường', 78, 19, 1, 3065, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(926, 'Bến Đò', 'ben-do', 'Đường', 79, 19, 1, 2586, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(927, 'Bình Chiểu', 'binh-chieu', 'Đường', 80, 19, 1, 6760, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(928, 'Bình Đường', 'binh-duong', 'Đường', 81, 19, 1, 2090, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(929, 'Bình Đường 2', 'binh-duong-2', 'Đường', 82, 19, 1, 7165, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(930, 'Bình Đường 3', 'binh-duong-3', 'Đường', 83, 19, 1, 6380, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(931, 'Bình Phú', 'binh-phu', 'Đường', 84, 19, 1, 4272, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(932, 'Bình Triệu', 'binh-trieu', 'Đường', 85, 19, 1, 10643, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(933, 'Bình Trưng Trắc', 'binh-trung-trac', 'Đường', 86, 19, 1, 11620, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(934, 'Cân Nhơn Hòa', 'can-nhon-hoa', 'Đường', 87, 19, 1, 6759, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(935, 'Cao tốc Bình Lợi - Linh Tây', 'cao-toc-binh-loi-linh-tay', 'Đường', 88, 19, 1, 8468, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(936, 'Cây Keo', 'cay-keo', 'Đường', 89, 19, 1, 2132, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(937, 'Chân Lý', 'chan-ly', 'Đường', 90, 19, 1, 5009, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(938, 'Chu Mạnh Trinh', 'chu-manh-trinh', 'Đường', 91, 19, 1, 2011, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(939, 'Chu Văn An', 'chu-van-an', 'Đường', 92, 19, 1, 802, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(940, 'Chương Dương', 'chuong-duong', 'Đường', 93, 19, 1, 184, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(941, 'Công Lý', 'cong-ly', 'Đường', 94, 19, 1, 2350, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(942, 'Cù Lao Thượng', 'cu-lao-thuong', 'Đường', 95, 19, 1, 6579, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(943, 'D1', 'd1', 'Đường', 96, 19, 1, 1985, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(944, 'D11', 'd11', 'Đường', 97, 19, 1, 3222, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(945, 'D12', 'd12', 'Đường', 98, 19, 1, 6872, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(946, 'D15', 'd15', 'Đường', 99, 19, 1, 6582, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(947, 'D2', 'd2', 'Đường', 100, 19, 1, 4601, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(948, 'D23', 'd23', 'Đường', 101, 19, 1, 11265, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(949, 'D3', 'd3', 'Đường', 102, 19, 1, 4602, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(950, 'D52', 'd52', 'Đường', 103, 19, 1, 7506, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(951, 'D5B', 'd5b', 'Đường', 104, 19, 1, 7337, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(952, 'D6', 'd6', 'Đường', 105, 19, 1, 8159, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(953, 'D9', 'd9', 'Đường', 106, 19, 1, 5889, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(954, 'Dân Chủ', 'dan-chu', 'Đường', 107, 19, 1, 2944, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(955, 'Đặng Thị Rành', 'dang-thi-ranh', 'Đường', 108, 19, 1, 9410, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(956, 'Đặng Văn Bi', 'dang-van-bi', 'Đường', 109, 19, 1, 4996, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(957, 'Đào Trinh Nhất', 'dao-trinh-nhat', 'Đường', 110, 19, 1, 2089, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(958, 'Đỗ Xuân Hợp', 'do-xuan-hop', 'Đường', 111, 19, 1, 1416, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(959, 'Đoàn Công Hớn', 'doan-cong-hon', 'Đường', 112, 19, 1, 9286, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(960, 'Đoàn Kết', 'doan-ket', 'Đường', 113, 19, 1, 474, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(961, 'Độc Lập', 'doc-lap', 'Đường', 114, 19, 1, 797, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(962, 'Đồng Bông', 'dong-bong', 'Đường', 115, 19, 1, 6013, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(963, 'Đông Hưng Thuận 42', 'dong-hung-thuan-42', 'Đường', 116, 19, 1, 6271, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(964, 'Đông Hưng Thuận 6', 'dong-hung-thuan-6', 'Đường', 117, 19, 1, 6598, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(965, 'ĐT 741', 'dt-741', 'Đường', 118, 19, 1, 6581, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(966, 'ĐT 747', 'dt-747', 'Đường', 119, 19, 1, 6580, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(967, 'Dương Văn Cam', 'duong-van-cam', 'Đường', 120, 19, 1, 6879, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(968, 'Einstein', 'einstein', 'Đường', 121, 19, 1, 5004, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(969, 'Gò Dưa', 'go-dua', 'Đường', 122, 19, 1, 6699, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(970, 'Hàn Giang', 'han-giang', 'Đường', 123, 19, 1, 6592, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(971, 'Hàn Thuyên', 'han-thuyen', 'Đường', 124, 19, 1, 939, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(972, 'Hậu Lân', 'hau-lan', 'Đường', 125, 19, 1, 6604, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(973, 'Hiệp Bình', 'hiep-binh', 'Đường', 126, 19, 1, 6198, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(974, 'Hiệp Thành 13', 'hiep-thanh-13', 'Đường', 127, 19, 1, 6606, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(975, 'Hiệp Thành 18', 'hiep-thanh-18', 'Đường', 128, 19, 1, 6576, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(976, 'Hồ Biểu Chánh', 'ho-bieu-chanh', 'Đường', 129, 19, 1, 3361, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(977, 'Hồ Văn Tư', 'ho-van-tu', 'Đường', 130, 19, 1, 4150, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(978, 'Hòa Bình', 'hoa-binh', 'Đường', 131, 19, 1, 965, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(979, 'Hoàng Diệu', 'hoang-dieu', 'Đường', 132, 19, 1, 360, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(980, 'Hoàng Diệu 2', 'hoang-dieu-2', 'Đường', 133, 19, 1, 5015, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(981, 'Hồng Đức', 'hong-duc', 'Đường', 134, 19, 1, 5001, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(982, 'Hữu Nghị', 'huu-nghi', 'Đường', 135, 19, 1, 1973, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(983, 'Kênh Ba Bò', 'kenh-ba-bo', 'Đường', 136, 19, 1, 11748, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(984, 'Kha Vạn Cân', 'kha-van-can', 'Đường', 137, 19, 1, 2638, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(985, 'Khởi Nghĩa Bắc Sơn', 'khoi-nghia-bac-son', 'Đường', 138, 19, 1, 6583, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(986, 'Khổng Tử', 'khong-tu', 'Đường', 139, 19, 1, 3583, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(987, 'Lam Sơn', 'lam-son', 'Đường', 140, 19, 1, 1600, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(988, 'Lê Quý Đôn', 'le-quy-don', 'Đường', 141, 19, 1, 348, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(989, 'Lê Thị Hoa', 'le-thi-hoa', 'Đường', 142, 19, 1, 5119, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(990, 'Lê Văn Chí', 'le-van-chi', 'Đường', 143, 19, 1, 5013, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(991, 'Lê Văn Ninh', 'le-van-ninh', 'Đường', 144, 19, 1, 8822, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(992, 'Lê Văn Tách', 'le-van-tach', 'Đường', 145, 19, 1, 7038, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(993, 'Linh Chiểu', 'linh-chieu', 'Đường', 146, 19, 1, 5705, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(994, 'Linh Đông', 'linh-dong', 'Đường', 147, 19, 1, 5971, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(995, 'Linh Tây', 'linh-tay', 'Đường', 148, 19, 1, 5736, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(996, 'Linh Trung', 'linh-trung', 'Đường', 149, 19, 1, 5014, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49');
INSERT INTO `street` (`id`, `name`, `slug`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(997, 'Linh Xuân', 'linh-xuan', 'Đường', 150, 19, 1, 6993, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(998, 'Lộc Hòa', 'loc-hoa', 'Đường', 151, 19, 1, 6602, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(999, 'Lương Khải Siêu', 'luong-khai-sieu', 'Đường', 152, 19, 1, 5005, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1000, 'Lý Ông Trọng', 'ly-ong-trong', 'Đường', 153, 19, 1, 6609, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1001, 'Lý Tế Xuyên', 'ly-te-xuyen', 'Đường', 154, 19, 1, 5554, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1002, 'Mương Khai', 'muong-khai', 'Đường', 155, 19, 1, 6596, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1003, 'Nam Thọ 1', 'nam-tho-1', 'Đường', 156, 19, 1, 6455, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1004, 'Ngô Chí Quốc', 'ngo-chi-quoc', 'Đường', 157, 19, 1, 1836, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1005, 'Ngọc Lan', 'ngoc-lan', 'Đường', 158, 19, 1, 7814, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1006, 'Nguyễn An Ninh', 'nguyen-an-ninh', 'Đường', 159, 19, 1, 457, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1007, 'Nguyễn Bá Luật', 'nguyen-ba-luat', 'Đường', 160, 19, 1, 5010, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1008, 'Nguyễn Bỉnh Khiêm', 'nguyen-binh-khiem', 'Đường', 161, 19, 1, 560, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1009, 'Nguyễn Cửu Đàm', 'nguyen-cuu-dam', 'Đường', 162, 19, 1, 3311, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1010, 'Nguyễn Huy Chương', 'nguyen-huy-chuong', 'Đường', 163, 19, 1, 6603, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1011, 'Nguyễn Khanh', 'nguyen-khanh', 'Đường', 164, 19, 1, 6608, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1012, 'Nguyễn Khuyến', 'nguyen-khuyen', 'Đường', 165, 19, 1, 381, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1013, 'Nguyễn Trường Tộ', 'nguyen-truong-to', 'Đường', 166, 19, 1, 752, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1014, 'Nguyễn Văn Bá', 'nguyen-van-ba', 'Đường', 167, 19, 1, 4993, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1015, 'Nguyễn Văn Lịch', 'nguyen-van-lich', 'Đường', 168, 19, 1, 7997, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1016, 'Nguyễn Viết Xuân', 'nguyen-viet-xuan', 'Đường', 169, 19, 1, 351, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1017, 'Núi Một', 'nui-mot', 'Đường', 170, 19, 1, 6587, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1018, 'Pasteur', 'pasteur', 'Đường', 171, 19, 1, 1045, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1019, 'Phạm Văn Bạch', 'pham-van-bach', 'Đường', 172, 19, 1, 827, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1020, 'Phạm Văn Chiêu', 'pham-van-chieu', 'Đường', 173, 19, 1, 837, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1021, 'Phạm Văn Đồng', 'pham-van-dong', 'Đường', 174, 19, 1, 1433, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1022, 'Phạm Văn Sáng', 'pham-van-sang', 'Đường', 175, 19, 1, 6095, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1023, 'Phan Huy Chú', 'phan-huy-chu', 'Đường', 176, 19, 1, 229, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1024, 'Phú Châu', 'phu-chau', 'Đường', 177, 19, 1, 6962, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1025, 'Phú Trung', 'phu-trung', 'Đường', 178, 19, 1, 6588, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1026, 'Quốc Lộ 13', 'quoc-lo-13', 'Đường', 179, 19, 1, 7634, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1027, 'Quốc Lộ 13A', 'quoc-lo-13a', 'Đường', 180, 19, 1, 12768, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1028, 'Quốc lộ 1A', 'quoc-lo-1a', 'Đường', 181, 19, 1, 2092, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1029, 'Quốc lộ 1K', 'quoc-lo-1k', 'Đường', 182, 19, 1, 2145, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1030, 'Quốc lộ 32', 'quoc-lo-32', 'Đường', 183, 19, 1, 6006, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1031, 'Rạch Lùng', 'rach-lung', 'Đường', 184, 19, 1, 10480, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1032, 'Số 1', 'so-1', 'Đường', 185, 19, 1, 11206, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1033, 'Số 10', 'so-10', 'Đường', 186, 19, 1, 11211, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1034, 'Số 11', 'so-11', 'Đường', 187, 19, 1, 11209, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1035, 'Số 12', 'so-12', 'Đường', 188, 19, 1, 11205, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1036, 'Số 13', 'so-13', 'Đường', 189, 19, 1, 11240, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1037, 'Số 14', 'so-14', 'Đường', 190, 19, 1, 11227, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1038, 'Số 15', 'so-15', 'Đường', 191, 19, 1, 11210, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1039, 'Số 16', 'so-16', 'Đường', 192, 19, 1, 11225, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1040, 'Số 17', 'so-17', 'Đường', 193, 19, 1, 11215, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1041, 'Số 18', 'so-18', 'Đường', 194, 19, 1, 11255, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1042, 'Số 19', 'so-19', 'Đường', 195, 19, 1, 11235, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1043, 'Số 2', 'so-2', 'Đường', 196, 19, 1, 11223, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1044, 'Số 20', 'so-20', 'Đường', 197, 19, 1, 11221, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1045, 'Số 21', 'so-21', 'Đường', 198, 19, 1, 11277, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1046, 'Số 22', 'so-22', 'Đường', 199, 19, 1, 11228, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1047, 'Số 23', 'so-23', 'Đường', 200, 19, 1, 11245, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1048, 'Số 24', 'so-24', 'Đường', 201, 19, 1, 11317, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1049, 'Số 25', 'so-25', 'Đường', 202, 19, 1, 11279, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1050, 'Số 26', 'so-26', 'Đường', 203, 19, 1, 11262, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1051, 'Số 27', 'so-27', 'Đường', 204, 19, 1, 11216, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1052, 'Số 28', 'so-28', 'Đường', 205, 19, 1, 11237, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1053, 'Số 3', 'so-3', 'Đường', 206, 19, 1, 11219, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1054, 'Số 30', 'so-30', 'Đường', 207, 19, 1, 11289, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1055, 'Số 32', 'so-32', 'Đường', 208, 19, 1, 11298, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1056, 'Số 34', 'so-34', 'Đường', 209, 19, 1, 11261, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1057, 'Số 35', 'so-35', 'Đường', 210, 19, 1, 11296, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1058, 'Số 36', 'so-36', 'Đường', 211, 19, 1, 9396, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1059, 'Số 37', 'so-37', 'Đường', 212, 19, 1, 11280, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1060, 'Số 38', 'so-38', 'Đường', 213, 19, 1, 11212, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1061, 'Số 39', 'so-39', 'Đường', 214, 19, 1, 11229, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1062, 'Số 4', 'so-4', 'Đường', 215, 19, 1, 11232, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1063, 'Số 40', 'so-40', 'Đường', 216, 19, 1, 11231, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1064, 'Số 41', 'so-41', 'Đường', 217, 19, 1, 11246, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1065, 'Số 42', 'so-42', 'Đường', 218, 19, 1, 11335, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1066, 'Số 44', 'so-44', 'Đường', 219, 19, 1, 11315, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1067, 'Số 45', 'so-45', 'Đường', 220, 19, 1, 11266, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1068, 'Số 46', 'so-46', 'Đường', 221, 19, 1, 11243, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1069, 'Số 47', 'so-47', 'Đường', 222, 19, 1, 11218, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1070, 'Số 48', 'so-48', 'Đường', 223, 19, 1, 11513, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1071, 'Số 49', 'so-49', 'Đường', 224, 19, 1, 11297, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1072, 'Số 5', 'so-5', 'Đường', 225, 19, 1, 11217, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1073, 'Số 50', 'so-50', 'Đường', 226, 19, 1, 11518, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1074, 'Số 51', 'so-51', 'Đường', 227, 19, 1, 11271, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1075, 'Số 52', 'so-52', 'Đường', 228, 19, 1, 11632, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1076, 'Số 520', 'so-520', 'Đường', 229, 19, 1, 13025, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1077, 'Số 53', 'so-53', 'Đường', 230, 19, 1, 11314, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1078, 'Số 54', 'so-54', 'Đường', 231, 19, 1, 11691, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1079, 'Số 6', 'so-6', 'Đường', 232, 19, 1, 11192, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1080, 'Số 647', 'so-647', 'Đường', 233, 19, 1, 11498, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1081, 'Số 652', 'so-652', 'Đường', 234, 19, 1, 11439, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1082, 'Số 668', 'so-668', 'Đường', 235, 19, 1, 11313, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1083, 'Số 7', 'so-7', 'Đường', 236, 19, 1, 11222, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1084, 'Số 8', 'so-8', 'Đường', 237, 19, 1, 11207, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1085, 'Số 808', 'so-808', 'Đường', 238, 19, 1, 11507, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1086, 'Số 9', 'so-9', 'Đường', 239, 19, 1, 11233, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1087, 'Sông Đà', 'song-da', 'Đường', 240, 19, 1, 6949, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1088, 'Tam Bình', 'tam-binh', 'Đường', 241, 19, 1, 5667, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1089, 'Tam Châu', 'tam-chau', 'Đường', 242, 19, 1, 7158, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1090, 'Tam Hà', 'tam-ha', 'Đường', 243, 19, 1, 7008, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1091, 'Tâm Tâm Xã', 'tam-tam-xa', 'Đường', 244, 19, 1, 6865, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1092, 'Tân Chánh Hiệp 16', 'tan-chanh-hiep-16', 'Đường', 245, 19, 1, 6607, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1093, 'Tân Chánh Hiệp 2', 'tan-chanh-hiep-2', 'Đường', 246, 19, 1, 6584, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1094, 'Tân Lập', 'tan-lap', 'Đường', 247, 19, 1, 2927, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1095, 'Tân Sơn Nhất', 'tan-son-nhat', 'Đường', 248, 19, 1, 7081, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1096, 'Tân Thảo', 'tan-thao', 'Đường', 249, 19, 1, 11281, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1097, 'Tân Thới Hiệp 10', 'tan-thoi-hiep-10', 'Đường', 250, 19, 1, 6597, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1098, 'Thạnh Lộc 27', 'thanh-loc-27', 'Đường', 251, 19, 1, 6605, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1099, 'Thạnh Xuân 13', 'thanh-xuan-13', 'Đường', 252, 19, 1, 6590, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1100, 'Thạnh Xuân 21', 'thanh-xuan-21', 'Đường', 253, 19, 1, 6600, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1101, 'Thích Bửu Đăng', 'thich-buu-dang', 'Đường', 254, 19, 1, 6585, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1102, 'Thống Nhất', 'thong-nhat', 'Đường', 255, 19, 1, 2097, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1103, 'Tỉnh lộ 43', 'tinh-lo-43', 'Đường', 256, 19, 1, 7815, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1104, 'Tô Ngọc Vân', 'to-ngoc-van', 'Đường', 257, 19, 1, 795, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1105, 'Tô Vĩnh Diện', 'to-vinh-dien', 'Đường', 258, 19, 1, 328, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1106, 'Trại Gà', 'trai-ga', 'Đường', 259, 19, 1, 6610, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1107, 'Trần Quang Đạo', 'tran-quang-dao', 'Đường', 260, 19, 1, 6593, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1108, 'Trần Văn Nữa', 'tran-van-nua', 'Đường', 261, 19, 1, 6707, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1109, 'Trích Sài', 'trich-sai', 'Đường', 262, 19, 1, 6595, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1110, 'Trịnh Phong Đáng', 'trinh-phong-dang', 'Đường', 263, 19, 1, 2091, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1111, 'Trưng Nhị', 'trung-nhi', 'Đường', 264, 19, 1, 2225, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1112, 'Trưng Trắc', 'trung-trac', 'Đường', 265, 19, 1, 356, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1113, 'Trưng Trắc B', 'trung-trac-b', 'Đường', 266, 19, 1, 10675, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1114, 'Trường Sơn', 'truong-son', 'Đường', 267, 19, 1, 1094, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1115, 'Trường Thọ', 'truong-tho', 'Đường', 268, 19, 1, 8575, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1116, 'Truông Tre', 'truong-tre', 'Đường', 269, 19, 1, 2098, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1117, 'Trương Văn Đa', 'truong-van-da', 'Đường', 270, 19, 1, 6594, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1118, 'Trương Văn Ngư', 'truong-van-ngu', 'Đường', 271, 19, 1, 9754, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1119, 'Ụ Ghe', 'u-ghe', 'Đường', 272, 19, 1, 5737, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1120, 'Vành Đai 2', 'vanh-dai-2', 'Đường', 273, 19, 1, 8092, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1121, 'Vành Đai Đông', 'vanh-dai-dong', 'Đường', 274, 19, 1, 6331, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1122, 'Võ Nguyên Giáp', 'vo-nguyen-giap', 'Đường', 275, 19, 1, 7209, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1123, 'Võ Quảng', 'vo-quang', 'Đường', 276, 19, 1, 6577, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1124, 'Võ Tiên Sư', 'vo-tien-su', 'Đường', 277, 19, 1, 6404, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1125, 'Võ Văn Ngân', 'vo-van-ngan', 'Đường', 278, 19, 1, 5011, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1126, 'Xa La', 'xa-la', 'Đường', 279, 19, 1, 6586, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1127, 'Xa lộ Đại Hàn', 'xa-lo-dai-han', 'Đường', 280, 19, 1, 8136, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1128, 'Xa Lộ Hà Nội', 'xa-lo-ha-noi', 'Đường', 281, 19, 1, 5820, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1129, 'Xô Viết Nghệ Tĩnh', 'xo-viet-nghe-tinh', 'Đường', 282, 19, 1, 2070, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1130, 'Xuyên Á', 'xuyen-a', 'Đường', 283, 19, 1, 4795, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `tab`
--

CREATE TABLE `tab` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab`
--

INSERT INTO `tab` (`id`, `name`, `slug`) VALUES
(1, 'Giới thiệu', 'gioi-thieu'),
(2, 'Vị trí', 'vi-tri'),
(3, 'Tiện ích', 'tien-ich'),
(4, 'Thiết kế', 'thiet-ke'),
(5, 'Phương thức thanh toán', 'phuong-thuc-thanh-toan'),
(6, 'Brochure', 'brochure'),
(7, 'Liên hệ', 'lien-he');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 bds 2 tin tuc 3 tien ich',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL COMMENT 'danh cho tien ich',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `meta_id`, `slug`, `type`, `name`, `alias`, `description`, `district_id`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 'nha-dat-quan-9', 1, 'Nha dat quan 9', NULL, NULL, NULL, 1, 1, '2017-05-21 15:38:17', '2017-05-21 15:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `tag_objects`
--

CREATE TABLE `tag_objects` (
  `object_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : product, 2 : tin tuc',
  `object_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 : product, 2 : album, 3 : video , 4 : tin tức'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_objects`
--

INSERT INTO `tag_objects` (`object_id`, `tag_id`, `type`, `object_type`) VALUES
(78, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `text`) VALUES
(1, '0968 11 1080'),
(2, '0938 211 114'),
(3, 'vietsth1.11@gmail.com'),
(4, 'vietsth1.11@gmail.com'),
(5, 'CÔNG TY TNHH XD SỬA CHỮA CÔNG TRÌNH STH'),
(6, '54/2/19 Bạch Đằng, Phường 2, Q.Tân Bình, TP.HCM'),
(7, '08.6250 9292'),
(8, '0312996932'),
(9, 'sthsg.vn@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `display_order`, `creation_time`, `update_time`) VALUES
(1, 'Cần bán', 1, 1417106448, 1417106448),
(2, 'Cho thuê', 2, 1417106448, 1417106448);

-- --------------------------------------------------------

--
-- Table structure for table `type_bds`
--

CREATE TABLE `type_bds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `display_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_bds`
--

INSERT INTO `type_bds` (`id`, `name`, `alias`, `type`, `display_order`) VALUES
(3, 'Văn phòng', 'cho-thue-van-phong', 1, 1),
(4, 'Phòng', 'cho-thue-phong', 1, 2),
(5, 'Nhà nguyên căn', 'cho-thue-nha-nguyen-can', 1, 3),
(6, 'Căn hộ', 'ban-can-ho', 2, 1),
(7, 'Nhà phố', 'ban-nha-pho', 2, 2),
(8, 'Nhà riêng', 'ban-nha-rieng', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `changed_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `leader_id`, `status`, `changed_password`, `remember_token`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@nhadat.vn', '$2y$10$/GRNt83hk4DTh/LE3BsxEeXKoZaiOXsmVVYiwuJxccK5yHlYp0M4G', 3, NULL, 1, 0, 'a358XyBfvRCZZRWfKwGRF7Pq5UP2oNsQY9wsQgVg4RQcLGRuGOIxaf66uCOo', 1, 1, '2016-08-27 05:26:18', '2017-05-13 09:03:43'),
(2, 'Hoang', 'hoangnhpublic@gmail.com', '$2y$10$/GRNt83hk4DTh/LE3BsxEeXKoZaiOXsmVVYiwuJxccK5yHlYp0M4G', 2, NULL, 1, 0, 'ZCVmRNhDn2s7Eod6rx7jzouqpWIDWMLuh4S8nWr38UjDDqdP89R6qB8lFzsx', 1, 1, '2017-05-13 05:48:37', '2017-05-13 07:23:03'),
(3, 'Editor 1 - Hoang', 'editor1@gmail.com', '$2y$10$/GRNt83hk4DTh/LE3BsxEeXKoZaiOXsmVVYiwuJxccK5yHlYp0M4G', 1, 2, 1, 0, '90Rq4HLndgzcBaiBprO0ZnaNFq1rwKkHKOBwsEPETRPyQGzpDWrq8tqhfncm', 2, 2, '2017-05-13 07:04:34', '2017-05-13 09:40:20'),
(4, 'Editor 2 - Hoang', 'editor2@gmail.com', '$2y$10$/GRNt83hk4DTh/LE3BsxEeXKoZaiOXsmVVYiwuJxccK5yHlYp0M4G', 1, 2, 1, 0, '', 2, 2, '2017-05-13 07:08:59', '2017-05-13 07:08:59'),
(5, 'Mod 2', 'mod2@gmail.com', '$2y$10$/GRNt83hk4DTh/LE3BsxEeXKoZaiOXsmVVYiwuJxccK5yHlYp0M4G', 2, 0, 1, 0, '38SmaJJGZWe1WIMFoHDNLxWERKiwEtgtoMg5s8TzOtobxN3tdqaDoFySPNja', 1, 1, '2017-05-13 07:53:29', '2017-05-13 10:27:46'),
(6, 'editor 1 - Mod 2', 'e1mod2@gmail.com', '$2y$10$QqDIjq3EPOopgyV7eCIvWeCG8KF/lP8GUuBOi3COvZNyukvytCU1W', 1, 5, 1, 0, 'Ztt6bbNdzrj4vWioiiivJ4MoO12ZnTokyJlrB66l7xanccpSqAAA564sWSCy', 5, 5, '2017-05-13 07:55:30', '2017-05-13 09:40:05'),
(7, 'phuong', 'baoanhco@yahoo.com', '$2y$10$2JVa9gZdeFHkXGKRKLsPI.nJpsUnYYRUNdRE9bhxmc1au4dX.aMPK', 1, 2, 1, 0, '', 1, 1, '2017-05-21 19:15:00', '2017-05-21 19:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `user_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`user_id`, `cart_id`) VALUES
(3, 10),
(4, 10),
(4, 11),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_work`
--

CREATE TABLE `user_work` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `group_id` smallint(6) NOT NULL,
  `work_content` text NOT NULL,
  `work_date` date NOT NULL,
  `leader_comment` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `leader_id` int(11) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_work`
--

INSERT INTO `user_work` (`id`, `description`, `group_id`, `work_content`, `work_date`, `leader_comment`, `status`, `is_hot`, `leader_id`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, '', 0, '<p>dgfads gd gdsag sdg dsgsd g</p>\r\n', '2017-05-13', '<p>dga dsgasd gdsg s dfadgf sa</p>\r\n', 2, 0, 5, 6, 6, '2017-05-13 09:07:36', '2017-05-13 09:22:34'),
(2, '', 0, '<p>dsgasdgdsgs</p>\r\n', '2017-05-14', NULL, 1, 0, 5, 6, 6, '2017-05-13 09:25:21', '2017-05-13 09:25:21'),
(3, '', 0, '<p>dgad sgd asdg dsg asgs</p>\r\n', '2017-05-12', NULL, 1, 0, 5, 6, 6, '2017-05-13 09:27:57', '2017-05-13 09:27:57'),
(4, '', 0, '- gọi 50 kh&aacute;ch.<br />\r\n- đăng 50 tin.', '2017-05-21', '&nbsp;tot', 1, 0, NULL, 1, 1, '2017-05-21 16:12:12', '2017-05-21 17:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_id` int(11) DEFAULT NULL,
  `prefix` varchar(20) NOT NULL,
  `display_order` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `id_dothi` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`id`, `name`, `slug`, `meta_id`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(1, ' Thạnh Mỹ Lợi', 'thanh-my-loi', NULL, 'Phường', 1, 2, 1, 121, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(2, 'An Khánh', 'an-khanh', NULL, 'Phường', 2, 2, 1, 116, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(3, 'An Lợi Đông', 'an-loi-dong', NULL, 'Phường', 3, 2, 1, 119, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(4, 'An Phú', 'an-phu', NULL, 'Phường', 4, 2, 1, 118, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(5, 'Bình An', 'binh-an', NULL, 'Phường', 5, 2, 1, 112, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(6, 'Bình Khánh', 'binh-khanh', NULL, 'Phường', 6, 2, 1, 113, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(7, 'Bình Trưng Đông', 'binh-trung-dong', NULL, 'Phường', 7, 2, 1, 115, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(8, 'Bình Trưng Tây', 'binh-trung-tay', NULL, 'Phường', 8, 2, 1, 114, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(9, 'Cát Lái', 'cat-lai', NULL, 'Phường', 9, 2, 1, 120, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(10, 'Thảo Điền', 'thao-dien', NULL, 'Phường', 10, 2, 1, 111, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(11, 'Thủ Thiêm', 'thu-thiem', NULL, 'Phường', 11, 2, 1, 117, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(12, 'Hiệp Phú', 'hiep-phu', NULL, 'Phường', 1, 9, 1, 5848, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(13, 'Long Bình', 'long-binh', NULL, 'Phường', 2, 9, 1, 5850, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(14, 'Long Phước', 'long-phuoc', NULL, 'Phường', 3, 9, 1, 5852, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(15, 'Long Thạnh Mỹ', 'long-thanh-my', NULL, 'Phường', 4, 9, 1, 5849, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(16, 'Long Trường', 'long-truong', NULL, 'Phường', 5, 9, 1, 5842, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(17, 'Phú Hữu', 'phu-huu', NULL, 'Phường', 6, 9, 1, 5853, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(18, 'Phước Bình', 'phuoc-binh', NULL, 'Phường', 7, 9, 1, 5845, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(19, 'Phước Long A', 'phuoc-long-a', NULL, 'Phường', 8, 9, 1, 5837, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(20, 'Phước Long B', 'phuoc-long-b', NULL, 'Phường', 9, 9, 1, 5838, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(21, 'Tân Phú', 'tan-phu', NULL, 'Phường', 10, 9, 1, 5846, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(22, 'Tăng Nhơn Phú A', 'tang-nhon-phu-a', NULL, 'Phường', 11, 9, 1, 5840, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(23, 'Tăng Nhơn Phú B', 'tang-nhon-phu-b', NULL, 'Phường', 12, 9, 1, 5841, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(24, 'Trường Thạnh', 'truong-thanh', NULL, 'Phường', 13, 9, 1, 5844, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(25, 'Bình Chiểu', 'binh-chieu', NULL, 'Phường', 1, 19, 1, 11895, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(26, 'Bình Thọ', 'binh-tho', NULL, 'Phường', 2, 19, 1, 11953, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(27, 'Hiệp Bình Chánh', 'hiep-binh-chanh', NULL, 'Phường', 3, 19, 1, 133, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(28, 'Hiệp Bình Phước', 'hiep-binh-phuoc', NULL, 'Phường', 4, 19, 1, 134, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(29, 'Linh Chiểu', 'linh-chieu', NULL, 'Phường', 5, 19, 1, 11916, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(30, 'Linh Đông', 'linh-dong', NULL, 'Phường', 6, 19, 1, 135, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(31, 'Linh Tây', 'linh-tay', NULL, 'Phường', 7, 19, 1, 11915, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(32, 'Linh Trung', 'linh-trung', NULL, 'Phường', 8, 19, 1, 136, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(33, 'Linh Xuân', 'linh-xuan', NULL, 'Phường', 9, 19, 1, 137, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(34, 'Tam Bình', 'tam-binh', NULL, 'Phường', 10, 19, 1, 138, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(35, 'Tam Phú', 'tam-phu', NULL, 'Phường', 11, 19, 1, 139, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(36, 'Trường Thọ', 'truong-tho', NULL, 'Phường', 12, 19, 1, 11845, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `work_group`
--

CREATE TABLE `work_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_group`
--

INSERT INTO `work_group` (`id`, `name`, `description`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Link Forum', '', 1, 8, 8, '2017-05-22 11:12:59', '2017-05-22 11:12:59'),
(2, 'Vệ tinh', '', 1, 8, 8, '2017-05-22 11:13:06', '2017-05-22 11:13:06'),
(3, 'Marketing', '', 1, 8, 8, '2017-05-22 11:13:15', '2017-05-22 11:13:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_cate`
--
ALTER TABLE `articles_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date_auto` (`date_auto`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_link`
--
ALTER TABLE `custom_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estate_type`
--
ALTER TABLE `estate_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_seo`
--
ALTER TABLE `info_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `landing_projects`
--
ALTER TABLE `landing_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal`
--
ALTER TABLE `legal`
  ADD PRIMARY KEY (`legal_id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objects_info`
--
ALTER TABLE `objects_info`
  ADD PRIMARY KEY (`object_id`,`info_id`,`type`);

--
-- Indexes for table `object_tag`
--
ALTER TABLE `object_tag`
  ADD UNIQUE KEY `object_id` (`object_id`,`tag_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_unit`
--
ALTER TABLE `price_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_url` (`image_url`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tab`
--
ALTER TABLE `project_tab`
  ADD PRIMARY KEY (`project_id`,`tab_id`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`project_type_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_objects`
--
ALTER TABLE `tag_objects`
  ADD PRIMARY KEY (`object_id`,`tag_id`,`type`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `type_bds`
--
ALTER TABLE `type_bds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`user_id`,`cart_id`);

--
-- Indexes for table `user_work`
--
ALTER TABLE `user_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_group`
--
ALTER TABLE `work_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `custom_link`
--
ALTER TABLE `custom_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `direction`
--
ALTER TABLE `direction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;
--
-- AUTO_INCREMENT for table `estate_type`
--
ALTER TABLE `estate_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info_seo`
--
ALTER TABLE `info_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `landing_projects`
--
ALTER TABLE `landing_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `legal`
--
ALTER TABLE `legal`
  MODIFY `legal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `price_unit`
--
ALTER TABLE `price_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `project_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;
--
-- AUTO_INCREMENT for table `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type_bds`
--
ALTER TABLE `type_bds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_work`
--
ALTER TABLE `user_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `work_group`
--
ALTER TABLE `work_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
