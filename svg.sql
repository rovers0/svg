-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 06:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `svg`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Câu chuyện '),
(2, 'Phòng chống'),
(3, 'Hoạt động');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_date` date NOT NULL,
  `total_like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `images`, `content`, `posted_date`, `total_like`) VALUES
(1, 'Gò Vấp: Đoàn viên, thanh niên P.17 may hơn 2000 khẩu trang tặng người dân', 'p1.jpg', 'Trước tình hình diễn biến phức tạp của dịch Covid-19, bạn Hà Linh Chi - Bí thư Đoàn phường 17 phát động các bạn đoàn viên, thanh niên phường mình cùng thực hiện hoạt động tự may khẩu trang để tặng miễn phí cho người dân. Từ ngày 10/3/2020 đến ngày 20/4/2020, bằng tất cả tình cảm của tuổi trẻ tình nguyện, tự tay “vẽ vẽ, cắt cắt, may may” các bạn đoàn viên, thanh niên chưa từng học qua một khóa cắt may nào của phường 17 đã cho ra đời hơn 2000 chiếc khẩu trang vải để trao tặng cho người dân trong tình hình dịch bệnh đang diễn biến phức tạp. Các bạn đoàn viên, thanh niên chia sẻ rằng: “Lúc đầu mới làm thì khó, sợ hư, mà giờ tụi em làm quen rồi nè. Lúc gửi tặng mọi người nhận được lời cảm ơn từ các cô, chú làm tụi em càng thêm động lục cho ra đời nhiều chiếc khẩu trang nữa. À, mà có cô, chú còn khen tụi em làm đẹp nữa đó...”. Với một đội ngũ “chưa chuyên” trong câu chuyện căt, may, vá, ráp nhưng các bạn đoàn viên, thanh niên Phường 17 đã làm được điều kỳ diệu trong “mùa chống dịch” này.', '2020-04-27', 0),
(2, 'Chống dịch Covid-19, không quên hiến máu cứu người', 'p2.jpg', 'Trong bối cảnh dịch bệnh Covid-19 vẫn diễn biến phức tạp, khó lường tại nhiều quốc gia trên thế giới, trong đó có Việt Nam, khiến cho ngân hàng máu đối diện với nguy cơ cạn kiệt, hoạt động Hiến máu tình nguyện là một trong những hoạt động thiết thực thể hiện tấm lòng sẻ chia, tinh thần nhân văn cao đẹp của mỗi cán bộ, viên chức, người lao động và đặc biệt là đoàn viên, thanh niên đối với các hoạt động thiện nguyện; góp phần đảm bảo nguồn máu cung cấp cho cấp cứu và điều trị. Có mặt trong buổi hiến máu bạn Võ Nữ Bình Sơn (người hiến máu) chia sẻ: “Mình rất vui khi được đóng góp một phần nào đó vào ngân hàng máu. Đây thực sự là một  hoạt động thiết thực, mọi người nếu như có sức khỏe đảm bảo thì cũng có thể tham gia để chúng ta cùng với đất nước phòng chống dịch covid 19.” Hoạt động hiến máu đã thu hút đông đảo các cán bộ công nhân viên của bệnh viện, thân nhân bệnh nhân và học viên tại bệnh viện và sinh viên trong thành phố. Với chỉ tiêu đặt ra là thu về 150 - 160 đơn vị máu, nhưng sau khi kết thúc buổi hiến máu con số đã lên đến 219 đơn vị máu vượt hơn cả so với chỉ tiêu ban đầu. Hiến máu tình nguyện thể hiện tinh thần tương thân tương ái của dân tộc ta, đồng thời góp phần vào công tác chăm sóc sức khỏe nhân dân và tăng cường lượng máu dự phòng quốc gia, kịp thời phục vụ và cấp cứu điều trị cho người bệnh..', '2020-08-17', 0),
(3, 'Chiến sĩ Hoa Phượng Đỏ chung tay phòng, chống dịch Covid - 19', 'p3.jpg', 'Trước tình hình diễn biến phức tạp của dịch bệnh Covid - 19, Ban Chỉ huy chiến dịch tình nguyện Hoa Phượng Đỏ năm 2020 đã triển khai đợt hoạt động cao điểm online “Chiến sĩ tình nguyện hoa phượng đỏ chung tay phòng, chống dịch Covid 19”. Chặng 1 của đợt hoạt động diễn ra từ ngày 03/8 đến ngày 08/8/2020 với các hoạt động như Thực hiện khai báo y tế trên ứng dụng NCOVI hoặc tokhaiyte.vn, cài đặt và sử dụng ứng dụng Bluezone; Hỗ trợ ít nhất 02 người thân trong gia đình thực hiện khai báo y tế trên ứng dụng NCOVI hoặc tokhaiyte.vn cài đặt và sử dụng ứng dụng Bluezone; Dọn dẹp vệ sinh nhà, nơi ở; Chia sẻ trên trang mạng xã hội facebook một bài viết về việc phòng, chống dịch COVID-19 từ các trang thông tin chính thống; Hát, múa, nhảy, … cover vũ điệu rửa tay “Ghen Cô Vy”; Tập luyện thể dục hoặc chơi môn thể thao. Kết quả chặng 1, đã có 3.223 chiến sĩ tình nguyện Hoa Phượng Đỏ tham gia.Chặng 2 diễn ra từ ngày 10/8 đến ngày 15/8/2020 bao gồm các nội dung như vận động, quyên góp ít nhất một bộ sách giáo khoa cũ (từ lớp 1 đến lớp 12) hoặc ít nhất 10 cuốn tập trắng; Thực hiện chương trình share ảnh tặng 10.000 đồng vào quỹ bảo vệ y bác sĩ”; Mở ứng dụng NCOVID hoặc BLUEZONE  đã cài đặt trong điện thoại để tiến hành khai báo sức khỏe cá nhân và theo dõi lịch sử tiếp xúc; Tự viết hoặc chia sẻ trên trang mạng xã hội facebook từ các thông tin chính thống một bài viết về một tin tốt, một câu chuyện đẹp trong các hoạt động tình nguyện và công tác phòng chống dịch COVID – 19; Đi bộ và ghi nhận quá trình đi bộ trong chương trình đi bộ đồng hành “Tiếp sức đến trường” năm 2020 trên ứng dụng ví điện tử Momo; Thực hiện một đoạn video âm nhạc ngắn, hát hoặc múa hoặc nhảy hoặc ghép hình ảnh hoạt động CDTN Hoa Phượng Đỏ các năm…  trên nền nhạc bài hát “Bài ca hoa phượng đỏ”. Chặng 2 đã thu hút tổng số chiến sĩ tham gia là 2.730 chiến sĩ...', '2020-08-18', 1),
(4, 'Mùa tình nguyện đặc biệt: Vừa phòng dịch, vừa hoàn thành chiến dịch', 'p4.jpg', '\"Hoạt động tình nguyện gắn với điều kiện cụ thể, luôn chủ động giúp cho màu áo tình nguyện lan tỏa, trở thành hình ảnh đẹp với người dân và xã hội\" - Anh NGÔ MINH HẢI (Phó bí thư Thành đoàn TP.HCM) cho biết. Phó bí thư Thành đoàn TP.HCM Ngô Minh Hải nói có lẽ đây là mùa hè tình nguyện thật sự đặc biệt của tuổi trẻ TP khi thực hiện nhiệm vụ kép: hoàn thành chiến dịch với phương châm đảm bảo an toàn phòng chống dịch và góp kết quả trong đợt thi đua 200 ngày chào mừng đại hội Đảng các cấp, tiến tới Đại hội Đảng bộ TP.HCM.Lần đầu tiên chương trình Tiếp sức mùa thi cùng bốn chiến dịch tình nguyện: Mùa hè xanh, Hoa phượng đỏ, Hành quân xanh và Kỳ nghỉ hồng xuất quân cùng một thời điểm. Tuy khí thế và sắc màu nhưng cũng nhiều nỗi lo bởi dịch COVID-19 tạm lắng thì bệnh bạch hầu lại xuất hiện. \"Mọi việc trong tâm thế phải làm tốt nhất để những ngày hè sôi nổi, trọn vẹn và đảm bảo an toàn cho những ai tham gia\" trở thành mệnh lệnh cao nhất khi bước vào chiến dịch.COVID-19 bùng phát trở lại, ngay lập tức các đơn vị chưa thể ra quân nhận lệnh dừng xuất quân, ngừng chiến dịch. Ngay các đơn vị đang đóng quân tại năm huyện ngoại thành TP.HCM và các tỉnh cũng phải rút quân! \"Khi lãnh đạo TP chỉ đạo tạm dừng, hoãn tổ chức hoạt động hè ngoài địa bàn TP, chúng tôi đã làm việc với các trường và chiến sĩ đi mặt trận tỉnh đã rút về sớm hơn dự định 10 ngày\" - anh Ngô Minh Hải cho biết. Vì dự báo dịch còn diễn biến phức tạp nên tại các nơi, chiến sĩ bắt tay làm ngay các công trình. Thế nên khi nhận lệnh rút quân, phần lớn các công trình đều hoàn thành, có những công trình chỉ còn lại phần nhỏ được chuyển lại cho địa phương hoàn thiện…', '2020-08-17', 0),
(5, 'Đoàn Thanh niên chung tay phòng, chống dịch Covid-19', 'p5.jpg', 'Nhằm chung tay cùng tuyến đầu chống dịch Covid-19, ngày 21/3/2020 vừa qua, đoàn công tác của Thành Đoàn TP. Hồ Chí Minh do đồng chí Ngô Minh Hải, Phó Bí thư Thành đoàn, Chủ tịch Hội LHTN Việt Nam TPHCM phối hợp với Hội Thầy thuốc trẻ TP.HCM cùng với đại diện Đoàn Sở Y tế Tp. HCM đã đến thăm, trao tặng vật tư y tế và nhu yếu phẩm cho cán bộ, y bác sĩ Bệnh viện dã chiến Củ Chi. Tiếp đón đoàn có bác sĩ chuyên khoa 1 Trần Chánh Xuân, Phó Giám đốc Bệnh viện dã chiến Củ Chi và các y bác sĩ trẻ đang công tác tại đây. Bác sĩ Trần Chánh Xuân đã thông tin với đoàn về tình hình hoạt động của bệnh viện và tinh thần xung kích tình nguyện của đoàn viên là y bác sĩ trẻ xung phong tham gia công tác tại bệnh viện trong thời gian qua. Trong buổi đến thăm, đoàn đã trao tặng vật tư y tế và nhu yếu phẩm trị giá 400 triệu đồng, bao gồm 1.000 bộ đồ bảo hộ, 4.500 khẩu trang y tế, 200 khẩu trang N95, 10.000 trứng gà, 500kg gạo. Phó Bí thư Thành đoàn Ngô Minh Hải cũng đã thông tin đến bệnh viện về hoạt động các Đội hình thanh niên hỗ trợ công tác nhập liệu tại các Khu cách ly do Trung tâm Kiểm soát bệnh tật TP quản lý cũng như tinh thần sẵn sàng tham gia hỗ trợ chống dịch của đoàn viên thanh niên thành phố nói chung và đoàn viên thanh niên Đoàn Sở Y tế nói riêng.', '2020-03-03', 0),
(6, 'Hội thảo phổ biến các hướng dẫn phòng, chống dịch COVID-19', 'p6.jpg', 'Ngày 06/9/2020, tại Thanh Hóa, dưới sự chủ trì của đồng chí Đỗ Xuân Tuyên, Thứ trưởng Bộ Y tế, Cục Quản lý môi trường - Bộ Y tế đã phối hợp với Quỹ Nhi đồng Liên hiệp quốc ở Việt Nam tổ chức Hội thảo phổ biến các hướng dẫn phòng, chống dịch COVID-19 cho các Trung tâm Y tế dự phòng, Trung tâm kiểm soát bệnh tật các tỉnh/thành phố từ Thừa Thiên – Huế trở ra. Tham dự Hội thảo, có lãnh đạo Cục Y tế dự phòng, Cục Quản lý Khám chữa bệnh, Vụ Truyền thông và Thi đua, khen thưởng, Vụ Kế hoạch tài chính, Trung tâm Truyền thông Giáo dục sức khỏe Trung ương (Bộ Y tế), Tổng liên đoàn lao động Việt Nam, Công đoàn Y tế Việt Nam. Phát biểu tại Hội thảo, Thứ trưởng Bộ Y tế Đỗ Xuân Tuyên đề nghị các đại biểu tập trung thảo luận và chỉ ra các khó khăn, vướng mắc đã gặp phải khi triển khai các hướng dẫn nói trên tại địa phương, đồng thời đề nghị các Cục, Vụ liên quan của Bộ Y tế nghiên cứu, tiếp thu và có hướng chỉnh sửa, bổ sung để hoàn thiện các Hướng dẫn phòng, chống dịch COVID-19. Thứ trưởng cũng yêu cầu ngành Y tế các địa phương phải tập trung kiểm tra, giám sát công tác phòng, chống dịch COVID-19 tại các cơ sở y tế đóng trên địa bàn mình phụ trách, đảm bảo các cơ sở y tế thực hiện nghiêm chỉnh các hướng dẫn phòng, chống dịch của Bộ Y tế, trong đó, cần thực hiện tốt công tác phân luồng khám, chữa bệnh; tập trung phát hiện các dấu hiệu mắc bệnh để chỉ định xét nghiệm kịp thời; trong công tác cách ly cần lưu ý người thuộc diện cách ly phải được cách ly tập trung đủ 14 ngày và có đủ 2 lần xét nghiệm SARS-CoV-2 âm tính mới đủ điều kiện rời khu cách ly tập trung tại các địa phương.', '2020-09-07', 3),
(7, 'Sở Y tế kích hoạt Bệnh viện điều trị COVID-19 Cần Giờ hoạt động trở lại', 'p7.jpg', 'Bên cạnh Bệnh viện dã chiến Củ Chi vẫn hoạt động liên tục từ đầu mùa dịch đến giờ (10/2/2020 – nay), Sở Y tế đã cho kích hoạt Bệnh viện điều trị COVID-19 Cần Giờ hoạt động trở lại kể từ 9g ngày 1/8/2020. Cả 2 bệnh viện này sẽ tiếp nhận cách ly những bệnh nhân có triệu chứng (sốt, viêm đường hô hấp, hoặc giống cảm cúm) và có tiền sử đến Đà Nẵng (từ ngày 1/7/2020 trở lại đây) đang được cách ly theo dõi và điều trị tại các khu cách ly của các bệnh viện thành phố và bệnh viện quận, huyện. Với tổng công suất lên đến 800 giường của 2 bệnh viện này (300 giường/BV dã chiến Củ Chi và 500 giường/BV điều trị COVID-19 Cần Giờ), việc tiếp nhận cách ly những bệnh nhân có triệu chứng và yếu tố dịch tễ từ các bệnh viện thành phố và bệnh viện quận, huyện chuyển đến sẽ giúp giải áp cho những bệnh viện này và chắc chắn làm giảm rủi ro lây chéo tại các bệnh viện đa khoa vốn có nhiều bệnh nhân khác. Để Bệnh viện dã chiến Củ Chi và Bệnh viện điều trị COVID-19 Cần Giờ hoạt động, Sở Y tế phải huy động sự hỗ trợ và chia sẽ nguồn nhân lực của chính các bệnh viện thành phố và bệnh viện quận, huyện. Riêng Bệnh viện điều trị COVID-19 Cần Giờ, Sở Y tế giao Bệnh viện quận Thủ Đức (hạng 1) chịu trách nhiệm luân phiên bác sĩ, điều dưỡng đến công tác và phối hợp Bệnh viện Bệnh Nhiệt đới hỗ trợ chuyên môn khi cần thiết. Ngoài ra, còn có các y, bác sĩ của Trung tâm y tế Cần Giờ cũng tham gia chăm sóc bệnh nhân.', '2020-07-31', 0),
(8, 'TP HCM: Mỗi người dân là một chiến sĩ tham gia chống dịch', 'p8.jpg', 'UBND TP HCM vừa chỉ đạo các sở, ngành và UBND các quận, huyện, phường, xã, thị trấn tuyệt đối không chủ quan, mất cảnh giác trong phòng chống dịch COVID-19; tiếp tục kiên trì thực hiện theo nguyên tắc “ngăn chặn - phát hiện - cách ly - khoanh vùng - dập dịch” trong đó chú trọng khâu “phát hiện” với phương châm trong tình hình mới là “phòng dịch sớm - phát hiện kịp thời - cách ly triệt để”; đồng thời phát huy tinh thần \"mỗi người dân là một chiến sĩ tham gia chống dịch\", tự giác bảo vệ chính bản thân và gia đình trước nguy cơ dịch bệnh. Theo đó, Sở Y tế TP HCM tiếp tục tăng cường giám sát, lấy mẫu và xét nghiệm tất cả các trường hợp có triệu chứng mắc bệnh đường hô hấp hoặc viêm phổi trong cơ sở y tế cũng như các trường hợp nghi ngờ mắc COVID-19 trong cộng đồng; tổ chức giám sát trên diện rộng để phát hiện nguồn lây, đặc biệt khi ghi nhận chùm ca có triệu chứng viêm đường hô hấp cấp trong khu dân cư; chuẩn bị sẵn sàng đáp ứng với các tình huống dịch bệnh xảy ra; sẵn sàng các cơ sở cách ly tập trung tại quận, huyện. Các cơ sở bán lẻ thuốc cần nhắc nhở người đến mua thuốc có triệu chứng viêm hô hấp cấp đến cơ sở y tế khai báo và kiểm tra sức khỏe; đồng thời ghi nhận thông tin và báo cho phòng y tế và trung tâm y tế địa phương…', '2020-07-29', 1),
(9, 'TP.HCM phê bình các quận, huyện lơ là trong công tác phòng chống dịch', 'p9.jpg', 'Chiều nay (3/8), tại buổi Họp giao ban trực tuyến Ban Chỉ đạo phòng chống dịch Covid-19 TP. HCM, Giám đốc Sở Y tế thành phố Nguyễn Tấn Bỉnh cho biết, ngành y tế đang tiếp tục triển khai các biện pháp phòng chống dịch Covid-19 trên địa bàn, trong đó tập trung giám sát y tế với người từng đến Đà Nẵng. Theo ông Nguyễn Tấn Bỉnh, Giám đốc Sở Y tế TP.HCM, đến 11h ngày 3/8, thành phố có 237 trường hợp viêm đường hô hấp đang theo dõi cách ly, không có ai diễn biến nặng, 152 ca âm tính, 82 ca đang chờ kết quả. Thành phố đang cách ly tập trung 1.479 trường hợp, trong đó tại các cơ sở là 754 trường hợp, cách ly tại quận huyện 367 trường hợp, đang cách ly tại nhà, nơi lưu trú 8.994 trường hợp… Đến ngày 3/8, thành phố đã tổ chức xét nghiệm Covid-19 hơn 83.300 trường hợp. Về giám sát người đi đến Đà Nẵng, đã có 36.754 người đến Đà Nẵng từ ngày 1 – 28/7, trong có có gần 24.000 người lấy mẫu xét nghiệm và đã xét nghiệm hơn 5.600 mẫu, phát hiện 6 trường hợp dương tính. Về xét nghiệm điều tra những người có liên quan đến 8 ca bệnh mới thì phát hiện 848 trường hợp, trong đó F1 là 298 người và F2 là 550 người; đã lấy mẫu 744 trường hợp, trong đó ưu tiên các trường hợp F1. Các địa phương tiếp tục khoanh vùng, truy vết người tiếp xúc để cách ly y tế…', '2020-08-03', 0),
(10, 'TP.HCM: Kiến nghị hướng dẫn phòng chống Covid-19 đối với cơ sở sản xuất', 'p10.jpg', 'UBND TPHCM vừa có văn bản gửi Thủ tướng Chính phủ cho hay, thực hiện Chỉ thị số 15/CT-TTg của Thủ tướng, TP.HCM đang quyết liệt triển khai các giải pháp phòng chống dịch bệnh trên địa bàn như chỉ đạo. Hiện tất cả cơ sở kinh doanh dịch vụ không cần thiết đã được yêu cầu đóng cửa, các phương tiện giao thông công cộng đã tạm dừng, cắt giảm số chuyến, tần suất vận tải hành khách đường bộ và đường thủy, tạm dừng mọi hoạt động xe buýt công cộng trên địa bàn TP đến hết ngày 15/4. Tuy nhiên, UBND TP.HCM cho rằng trong chỉ thị trên chưa quy định đối với hoạt động của các cơ sở sản xuất. Cụ thể các cơ sở sản xuất có số lượng công nhân đông là nơi tiềm ẩn nhiều nguy cơ lây nhiễm dịch Covid-19, vì đa số là hoạt động theo dây chuyền sản xuất cố định, khó đáp ứng yêu cầu “không quá 20 người trong một phòng, yêu cầu thực hiện giữ khoảng cách tối thiểu 2m giữa người với người”. Bên cạnh đó, việc đưa đón công nhân làm việc tại các cơ sở sản xuất chủ yếu sử dụng phương tiện xe buýt, đưa đón qua lại giữa các địa phương giáp ranh như Long An, Tiền Giang, Bình Dương…', '2020-04-04', 0),
(11, 'Thành đoàn TPHCM ra mắt đội tình nguyện phòng chống Covid-19', 'p11.jpg', 'Đội hình gồm 200 y bác sĩ trẻ, nhân viên các phòng khám, bệnh viện trực thuộc các trường đại học, hội viên Hội Thầy thuốc trẻ thành phố cùng sinh viên năm thứ 4, 5, 6 của các trường có đào tạo về ngành y phát huy tinh thần xung kích của tuổi trẻ thành phố, thực hiện nhiệm vụ chuyên môn, chung tay cùng chính quyền và nhân dân phòng chống hiệu quả dịch bệnh COVID-19. Theo Phó Bí thư thường trực Thành đoàn Phan Thị Thanh Phương, nhiệm vụ trọng tâm của các chiến sĩ là tập trung tuyên truyền nâng cao nhận thức cho học sinh, sinh viên, giáo viên, giảng viên, cán bộ, nhân viên, phụ huynh học sinh tại các trường học, các khu lưu trú công nhân trên địa bàn thành phố về diễn biến của dịch bệnh; nguyên nhân, hậu quả và các biện pháp phòng, chống dịch bệnh COVID-19. Đặc biệt, từ những bài học trên giảng đường, kinh nghiệm thực tập và quá trình làm việc thực tiễn tại đơn vị, các chiến sĩ tình nguyện sẽ hướng dẫn thanh thiếu niên, người dân địa phương nâng cao khả năng tự bảo vệ sức khỏe cộng đồng, hạn chế những tác động tâm lý, sinh hoạt, học tập của phụ huynh, học sinh do dịch bệnh gây ra.', '2020-03-23', 0),
(12, 'Chống dịch COVID-19 là một cuộc chiến trường kỳ', 'p11.jpg', 'Thủ tướng nhấn mạnh điều này khi kết luận cuộc họp Thường trực Chính phủ về phòng chống COVID-19 vào chiều nay, 21/8/2020. Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Mạnh Hùng cho biết, đến nay, có hơn 20 triệu cài đặt ứng dụng Bluezone, trong đó, 10 tỉnh, thành phố đạt tỉ lệ cài đặt chiếm 20-45% dân số, bắt đầu truy vết có hiệu quả, phát hiện 1.400 trường hợp F1, F2 nhanh, chính xác. Ở Hải Dương, ứng dụng giúp truy vết 730 trường hợp một cách chính xác. Báo cáo tại cuộc họp, Chủ tịch UBND TP. Đà Nẵng Huỳnh Đức Thơ cho biết tuần vừa qua, mỗi ngày Thành phố ghi nhận 2-6 ca nhiễm COVID-19, đa số trong đó nằm trong sự kiểm soát. Hằng ngày, có 5-10 ca xuất viện, giảm tải được áp lực tại các bệnh viện. TP. Đà Nẵng đã triển khai các biện pháp đúng đắn, đồng bộ, kịp thời, tiến tới sẽ khống chế được dịch vào cuối tháng 8, lãnh đạo TP. Đà Nẵng nêu rõ. Về năng lực xét nghiệm, hiện công suất xét nghiệm của ngành Y tế Thành phố đạt khoảng 13.000 mẫu/ngày. Đến nay, đã xét nghiệm 171.000 mẫu, xấp xỉ 1/3 số xét nghiệm cả nước nhờ tăng số lượng các cơ sở xét nghiệm và áp dụng phương pháp xét nghiệm gộp nhóm. Năng lực xét nghiệm chính là \"chìa khóa\" giúp TP. Đà Nẵng \"đón đầu\", \"ngăn chặn\" việc lây nhiễm dịch. Bên cạnh đó, Thành phố đề nghị Bộ Giáo dục và Đào tạo phối hợp lên phương án thực hiện kỳ thi tốt nghiệp cho hơn 10.000 học sinh.', '2020-08-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 3, 2),
(4, 3, 3),
(5, 1, 4),
(6, 3, 4),
(7, 2, 4),
(8, 3, 5),
(9, 3, 6),
(10, 2, 6),
(11, 3, 7),
(12, 2, 8),
(13, 2, 9),
(14, 2, 10),
(15, 3, 11),
(16, 2, 11),
(17, 2, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `post_id` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
