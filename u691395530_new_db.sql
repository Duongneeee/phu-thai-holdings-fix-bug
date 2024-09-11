-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2024 at 08:22 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u691395530_new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'q3OkJgvG2rtG5fgX5kzLAVA26pdw1R2x', 1, '2022-04-02 10:42:41', '2022-04-02 10:42:41', '2022-04-02 10:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức tập đoàn', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 1, 1, '2022-04-02 10:48:52', '2024-03-09 11:04:55'),
(2, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-04-02 10:49:05', '2024-03-09 11:04:55'),
(6, 'Đầu tư', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 4, 1, 0, '2024-03-09 11:03:39', '2024-03-09 11:04:55'),
(4, 'Phân phối & bán lẻ', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 2, 1, 0, '2024-03-09 11:02:34', '2024-03-09 11:04:55'),
(5, 'Sản xuất', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 1, 0, '2024-03-09 11:02:47', '2024-03-09 11:30:05'),
(7, 'Công nghệ - Truyền thông', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 1, 0, '2024-04-17 00:58:25', '2024-04-17 00:58:45'),
(8, 'Technology - Media', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 1, 0, '2024-04-17 00:59:12', '2024-04-17 00:59:12'),
(9, 'Investment', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 4, 1, 0, '2024-04-17 00:59:24', '2024-04-17 00:59:24'),
(10, 'Manufacturing', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 1, 0, '2024-04-17 00:59:48', '2024-04-17 00:59:48'),
(11, 'Distribution & Retail', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 2, 1, 0, '2024-04-17 01:00:03', '2024-04-17 01:00:03'),
(12, 'Giáo dục - Trải nghiệm', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 6, 1, 0, '2024-04-17 01:00:20', '2024-04-17 01:00:20'),
(13, 'Education - Experience', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 6, 1, 0, '2024-04-17 01:00:36', '2024-04-17 01:00:36'),
(14, 'Nông nghiệp', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 7, 1, 0, '2024-04-17 01:00:50', '2024-04-17 01:00:50'),
(15, 'Agriculture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 7, 1, 0, '2024-04-17 01:01:03', '2024-04-17 01:01:03'),
(16, 'Bất động sản', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 8, 1, 0, '2024-04-17 01:01:18', '2024-04-17 01:01:18'),
(17, 'Real estate', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 8, 1, 0, '2024-04-17 01:01:30', '2024-04-17 01:01:30'),
(18, 'Thương mại quốc tế - XNK', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 9, 1, 0, '2024-04-17 01:01:49', '2024-04-17 01:01:49'),
(19, 'International trade - Import and Export', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 9, 1, 0, '2024-04-17 01:02:03', '2024-04-17 01:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `business_category_id` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `business_category_id`, `description`, `image`, `link`, `idx`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phú thái Group', 1, 'Phú Thái Group (tiền thân là Công ty TNHH Phú Thái) được thành lập vào năm 1993, hoạt động cốt lõi trong lĩnh vực phân phối. Sau khi hợp tác với Tập đoàn quốc tế P&G, Phú Thái Group đã xây dựng được mạng lưới phân phối lớn nhất miền Bắc, và nhanh chóng trải dài khắp đất nước.\r\nTrải qua 30 năm không ngừng phát triển và lớn mạnh, Phú Thái Group trở thành nhà phân phối số 1 Việt Nam, top 100 công ty hàng đầu Việt Nam và top 500 công ty lớn nhất, sở hữu chuỗi thương hiệu bán lẻ nổi tiếng với các sản phẩm hàng tiêu dùng phổ biến khắp thị trường trong nước. Doanh nghiệp trở thành chiếc cầu nối uy tín, chất lượng giữa các nhà sản xuất với người tiêu dùng, góp phần không nhỏ vào việc lưu thông hàng hóa cũng như đẩy mạnh thị trường bán lẻ với hệ thống phân phối và hậu cần của mình.', 'cty-con/logo-2.png', 'https://phuthaigroup.com', NULL, 'published', '2024-03-09 10:46:24', '2024-04-16 03:40:07'),
(2, 'Phú thái Cat', 1, 'Công ty TNHH Công Nghiệp Phú Thái (Phu Thai CAT) là đại lý chính thức duy nhất của Caterpillar tại Việt Nam - một tập đoàn sản xuất máy công trình & khai mỏ, máy phát điện, động cơ diesel, động cơ máy thủy và xe nâng hàng… lớn nhất thế giới. Phu Thai CAT không chỉ cung cấp các thiết bị mang thương hiệu CAT® mới 100% mà còn cho thuê và bán các thiết bị đã qua sử dụng. Đồng thời, Phu Thai CAT cung cấp các dịch vụ hỗ trợ sau bán hàng như: lắp đặt, vận hành và đưa ra các khuyến cáo, cung cấp phụ tùng thay thế chính hãng, dịch vụ sửa chữa, dịch vụ đào tạo, thực hiện công việc bảo hành và tư vấn các giải pháp cho các doanh nghiệp.', 'logo-09.jpg', 'https://www.phuthaicat.com.vn/', NULL, 'published', '2024-03-09 10:48:44', '2024-04-16 03:40:51'),
(4, 'Phu Thai Group', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'logo-6.png', 'https://phuthaigroup.com', NULL, 'published', '2024-03-11 21:39:57', '2024-03-11 21:39:57'),
(5, 'Phu Thai Cat', 8, 'Phu Thai Industrial Company Limited is the sole Official Dealer of Caterpillar in Vietnam with the trading name Phu Thai Cat. Caterpillar is the world\'s largest manufacturer of construction and mining machinery, generators, diesel engines, marine engines and forklifts...', 'logo-09.jpg', 'https://www.phuthaicat.com.vn/', NULL, 'published', '2024-03-11 21:41:01', '2024-03-11 21:41:01'),
(6, 'Pon Phu Thai Mobility', 1, 'Pon Phu Thai Mobility được thành lập bởi hai Tập đoàn Pon và Phú Thái vào năm 2019, đặt dấu mốc thương hiệu Phú Thái chính thức lấn sân vào lĩnh vực nhập khẩu và phân phối ô tô. Đón đầu nhu cầu sử dụng ô tô ở thị trường Việt Nam, đặc biệt với các dòng xe sang ngày càng tăng, Phú Thái Mobility định hướng tập trung vào các dòng xe sang, trước mắt là nhà phân phối độc quyền thương hiệu ô tô Jaguar và Land Rover của Anh, bao gồm cả phụ tùng chính hãng tại Việt Nam.\r\n\r\nHiện Phu Thai Mobility đang đẩy mạnh hoạt động đầu tư mạnh mẽ hai dòng xe Jaguar và Land Rover với chuỗi cửa hàng trưng bày sản phẩm và xưởng dịch vụ tại Hà Nội, TP Hồ Chí Minh, cùng hệ thống phân phối trên cả nước.', NULL, '#', NULL, 'published', '2024-03-11 21:41:55', '2024-04-16 03:41:05'),
(7, 'Pon Phu Thai Mobility', 8, 'Phu Thai Mobility Import Company Limited is the sole importer and distributor of the Land Rover brand. After a period of preparation, Phu Thai Mobility Import Company Limited - a member of Phu Thai Group under the advice of Pon Group from the Netherlands has been implementing business and after-sales services for the brand. Land Rover luxury car from England.', NULL, '#', NULL, 'published', '2024-03-11 21:44:16', '2024-03-11 21:44:16'),
(8, 'VMP', 1, 'Công ty Cổ phần Sơn Ô tô Việt Nam (VMP) là nhà nhập khẩu và phân phối sản phẩm sơn phủ của các hãng sơn hàng đầu trên thế giới như Hãng PPG của Mỹ (Tập đoàn sơn phủ số một thế giới). Công ty cung cấp các giải pháp và các sản phẩm sơn ô tô, sơn công nghiệp, sơn tàu biển và các thiết bị, máy móc liên quan đến ngành sơn phủ.\r\nVới sứ mệnh bảo vệ sức khỏe cộng đồng, VMP cam kết đưa ra thị trường những sản phẩm sơn có chất lượng tốt nhất, đảm bảo an toàn, sức khỏe và thân thiện với môi trường với hệ thống phân phối đang ngày càng được mở rộng trên cả nước.', 'logo-06.png', 'https://sonvmp.com.vn', NULL, 'published', '2024-03-12 00:51:40', '2024-04-16 03:41:39'),
(9, 'VMP', 8, 'VMP is an importer and distributor of coating products from leading paint companies in the world such as PPG Company of America - the world\'s number one coating group founded in 1883 and operating in 70 countries. VMP provides solutions and products for Automotive Paint, Industrial Paint, Marine Paint and equipment and machinery related to the Coating industry.', 'logo-06.png', 'https://sonvmp.com.vn', NULL, 'published', '2024-03-12 00:52:39', '2024-03-12 00:52:39'),
(10, 'AZ Petrol', 1, 'Công ty Cổ phần Hoá dầu (AZ Petro) là nhà nhập khẩu và phân phối chiến lược các sản phẩm chính hãng của Tập đoàn PETRONAS Malaysia. AZ Petro cung cấp các giải pháp và các sản phẩm dầu, chất bôi trơn cho thiết bị và động cơ như: dầu động cơ diesel, dầu nhớt công nghiệp, dầu thủy lực, dầu hàng hải, mỡ bôi trơn, dầu truyền động. Công ty đặt mục tiêu hoàn thiện hệ thống phân phối rộng khắp trên toàn quốc và cung cấp cho thị trường sản phẩm dầu, chất bôi trơn hoàn hảo, thân thiện với môi trường.', 'cty-con/logo-00.png', 'https://azpetro.com.vn', NULL, 'published', '2024-03-12 00:54:14', '2024-04-16 03:41:51'),
(11, 'AZ Petrol', 8, 'In the Vietnamese market, AZPetro is proud to be the importer and strategic distributor of genuine products of PETRONAS Malaysia Group with a variety of oil products, lubricants for equipment and engines.', 'cty-con/logo-00.png', 'https://azpetro.com.vn', NULL, 'published', '2024-03-12 00:55:30', '2024-03-12 00:55:30'),
(12, 'Kowil', 1, 'Được ấp ủ và phát triển từ hoạt động kinh doanh phân phối thời trang của Phú Thái Holdings, năm 2009, Công ty Cổ phần Thời trang Kowil được thành lập với nỗ lực tạo ra các giải pháp thời trang thanh lịch dành cho người Việt. Các sản phẩm của Kowil được phát triển trên cơ sở ứng dụng công nghệ tiên tiến vào thời trang tiên tiến. Kowil áp dụng phương pháp quản lý của Tập đoàn Itochu Group (Nhật Bản) – một trong những đối tác chiến lược của công ty.\r\nTrên hành trình 15 năm phát triển, Kowil luôn lọt top thương hiệu dẫn đầu thị trường Thời trang & May mặc Việt Nam, với mạng lưới bán lẻ hàng nghìn cửa hàng trên khắp toàn quốc. Kowil hướng tới tầm nhìn trở thành thương hiệu thời trang số 1 Việt Nam vào năm 2025, tạo dựng một sức mạnh thời trang Việt, một niềm tin chất lượng Việt trong bối cảnh thị trường toàn cầu và nội địa trở nên hòa nhập với áp lực cạnh tranh gia tăng về phía các thương hiệu Việt.', 'cty-con/kowil123.png', 'https://kowil.vn', NULL, 'published', '2024-03-12 00:59:11', '2024-04-17 00:56:03'),
(13, 'Kowil', 8, '456 / 5.000\r\nKết quả dịch\r\nKết quả bản dịch\r\nNurtured and developed from the fashion distribution activities of Phu Thai Group, Kowil Fashion Joint Stock Company was established in an effort to realize the desire to bring elegant and valuable fashion solutions. of Vietnamese people, for Vietnamese people through exploiting superior fashion technologies and management quintessence in the industry gained from international cooperation relationships with strategic partners of corporations such as Itochu Group (Japan)', 'cty-con/kowil123.png', 'https://kowil.vn', NULL, 'published', '2024-03-12 00:59:42', '2024-04-17 00:55:54'),
(14, 'Phú Thái HBC', 1, 'Công ty cổ phần Sức khỏe và Sắc đẹp Phú Thái (Phú Thái HBC) thành lập năm 2014, hoạt động trong lĩnh vực phân phối các thương hiệu mỹ phẩm tóc quốc tế đến người tiêu dùng Việt Nam. Trong gần 10 năm hoạt động, Phú Thái HBC đã xây dựng được hệ thống phân phối rộng khắp 63 tỉnh thành, hơn 2.000 Salon, nhà phân phối và hơn 3.000 khách hàng thân thiết trên toàn quốc. \r\nHiện tại HBC đang là đối tác phân phối độc quyền các thương hiệu Wella Professionals, System Professional, NIOXIN tại Việt Nam. Công ty đang không ngừng mở rộng các hoạt động kinh doanh đa kênh, mục tiêu mang đến cho người tiêu dùng những thương hiệu cao cấp và chất lượng nhất trong lĩnh vực chăm sóc sức khoẻ & sắc đẹp.', NULL, '#', NULL, 'published', '2024-03-12 01:00:58', '2024-04-16 03:42:14'),
(15, 'Phu Thai HBC', 8, 'Phu Thai Health and Beauty Joint Stock Company (Phu Thai HBC) was established in 2014, operating in the field of distributing international hair cosmetic brands to Vietnamese consumers. During nearly 10 years of operation, Phu Thai HBC has built a wide distribution system across 63 provinces and cities, with more than 2,000 Salons, distributors and more than 3,000 loyal customers nationwide. Overcoming challenges and seizing market opportunities, Phu Thai HBC is constantly expanding multi-channel business activities, with the goal of bringing consumers the most premium and quality brands in the field. health & beauty care.', NULL, '#', NULL, 'published', '2024-03-12 01:01:19', '2024-03-12 01:01:19'),
(16, 'Dong Do Pharma', 1, 'Công ty TNHH Dược phẩm Đông Đô được thành lập năm 1996, chuyên nhập khẩu và phân phối thuốc, thực phẩm chức năng và vật tư tiêu hao thông qua mạng lưới đại lý và bệnh viện trong cả nước. Đông Đô Pharma mang đến cho người dân Việt Nam nhiều lựa chọn mới, tiên phong trong việc phòng ngừa và điều trị các bệnh về thận, sản khoa và thần kinh, đáp ứng đầy đủ mọi nhu cầu về các sản phẩm chăm sóc sức khỏe cho người Việt.', NULL, NULL, NULL, 'published', '2024-03-12 01:01:49', '2024-04-16 03:42:24'),
(17, 'Dong Do Pharma', 8, 'Established in 1996\r\nBusiness philosophy: MEDICAL ETHICS, HUMANITY\r\nThe Company has determined for itself the motto: The Company\'s interests always go hand in hand with the interests of patients and the interests of partners. This motto is considered a guideline and a torch that illuminates all paths and fields of operation of the Company.', NULL, NULL, NULL, 'published', '2024-03-12 01:02:05', '2024-03-12 01:02:05'),
(18, 'Green Group', 2, 'Greengroup - tiền thân là Công ty Cổ phần Thú Y Xanh Việt Nam được thành lập năm 2001. Sau hơn 20 năm hoạt động, Greengroup đã khẳng định được vị thế thương hiệu và trở thành một trong những tập đoàn lớn trong ngành chăm sóc sức khỏe động vật Việt Nam. Không ngừng phát triển và củng cố từng ngày, Greengroup sở hữu cho mình mạng lưới thị trường tiêu thụ ổn định trên toàn lãnh thổ Việt Nam và đang mở rộng thị trường sang các nước láng giềng như Campuchia, Lào,...', 'cty-con/logo-01.png', 'https://greengroup.com.vn', NULL, 'published', '2024-03-12 01:39:40', '2024-04-16 03:42:34'),
(19, 'Green Group', 9, 'Formerly Vietnam Green Veterinary Joint Stock Company. Established in 2001, after more than 20 years of operation, Greengroup has affirmed its brand and become one of the largest corporations in the animal health care industry in Vietnam. Continuously developing and consolidating day by day, Greengroup owns a stable consumer market network throughout Vietnam and we have begun to expand the market to neighboring countries such as Cambodia, Laos, etc.', 'cty-con/logo-01.png', 'https://greengroup.com.vn', NULL, 'published', '2024-03-12 02:07:20', '2024-03-12 02:09:34'),
(20, 'Nông nghiệp Phú Thái', 6, 'Nông nghiệp hữu cơ là một trong những lĩnh vực mà Phú Thái Holdings Group đặt kỳ vọng sẽ phát triển đột phá trong tương lai. Hiện tại, Phú Thái Holdings Group đang sở hữu Trang trại Darwin Farm - một trong những trang trại hiếm hoi tại miền Bắc đạt chứng nhận hữu cơ USDA của Hoa Kỳ.\r\nVới hơn 65 dòng sản phẩm rau củ quả tươi ngon, trang trại Darwin không chỉ cung cấp các giống rau quả nội địa quanh năm, mà còn tiên phong gieo trồng các dòng sản phẩm đặc biệt như súp-lơ tím, cà chua trái lớn, và các loại rau củ nhập từ châu  u trong vụ đông. Song song với việc tập trung sản xuất, Darwin cũng là địa điểm tổ chức các tour trải nghiệm trang trại trồng rau kết hợp tìm hiểu thiên nhiên cho khách tham quan ở mọi lứa tuổi.', NULL, NULL, NULL, 'published', '2024-03-12 02:10:52', '2024-04-16 03:42:44'),
(21, 'Phu Thai Agriculture', 13, 'Darwin Farm was deployed in April 2019. By January 2020, all 5 hectares of the farm were certified organic by the US USDA.\r\n\r\nWith more than 65 fresh fruit and vegetable product lines, Darwin Farm not only provides domestic fruit and vegetable varieties all year round, but also pioneers in cultivating special product lines such as purple cauliflower and large tomatoes. , and vegetables imported from Europe in the winter.\r\n\r\nAlong with focusing on production, Darwin also organizes tours to practice vegetable growing combined with learning about nature for visitors of all ages.', NULL, NULL, NULL, 'published', '2024-03-12 02:11:22', '2024-04-15 23:48:13'),
(22, 'Trồng sâm (Sao Đỏ Tây Bắc, Tây Nguyên)', 6, 'Sao Đỏ Tây Nguyên hoạt động chính trong lĩnh vực nghiên cứu, trồng trọt và phân phối cây dược liệu công nghệ cao.\r\nSao Đỏ Tây Nguyên được dẫn dắt bởi Chủ tịch Phạm Đình Đoàn, cùng các cổ đông là các tập đoàn kinh doanh hàng đầu của Việt Nam bao gồm: Tập đoàn Phú Thái Holdings, Tập đoàn Alphanam, Eurowindow, Tập đoàn Trường Sinh và Tập đoàn ATA.', NULL, NULL, NULL, 'published', '2024-03-12 02:12:12', '2024-04-17 00:51:20'),
(23, 'Growing ginseng', 13, 'The main field of activity is research, cultivation and distribution of high-tech medicinal plants.\r\n• Shareholders of Central Highlands Red Star are Vietnam\'s leading business corporations including Phu Thai Holdings Group, Alphanam Group, Eurowindow, Truong Sinh Group and ATA Group.\r\nHeaded by Chairman Pham Dinh Doan', NULL, NULL, NULL, 'published', '2024-03-12 02:13:50', '2024-04-15 23:48:48'),
(24, 'Thinkzone', 3, 'ThinkZone Ventures là Công ty Đầu tư mạo hiểm có nguồn lực địa phương lớn nhất tại Việt Nam, tập trung vào các công ty khởi nghiệp công nghệ Pre-seed đến Series A từ các ngành dọc đa dạng, với quy mô đầu tư lên đến 3 triệu dollar. Công ty cũng hỗ trợ các công ty khởi nghiệp giai đoạn đầu thông qua chương trình ThinkZone Accelerator.', 'cty-con/logo-07.png', 'https://thinkzone.vn/', NULL, 'published', '2024-03-12 02:23:17', '2024-04-16 03:43:20'),
(25, 'Thinkzone', 10, 'BK Fund: BK Fund was built from the Hanoi University of Science and Technology Alumni network with thousands of successful entrepreneurs. BK Fund is a venture capital fund and a provider of a network of advisors and business partners for inventions, inventions and startups from the commercialization stage of ideas. Thinkzone: ThinkZone Ventures is the largest locally resourced Venture Capital firm in Vietnam, focusing on Pre-seed to Series A technology startups from diverse verticals, with investment scale up to 3 million dollars. We also support early-stage startups through the ThinkZone Accelerator program.', 'cty-con/logo-07.png', 'https://thinkzone.vn/', NULL, 'published', '2024-03-12 02:23:47', '2024-04-16 00:01:45'),
(26, 'Colowide Vietnam', 3, 'Trong lĩnh vực dịch vụ, thành viên của Phú Thái Holdings Group là Colowide Việt Nam liên doanh cùng Tập đoàn Colowide Japan - Tập đoàn Đầu tư và Quản lý chuỗi nhà hàng có quy mô đứng đầu tại Nhật Bản đang đầu tư và quản lý chuỗi hơn 4.000 nhà hàng với các thương hiệu khác nhau trên toàn lãnh thổ Nhật Bản, Singapore và Thái Lan.\r\nColowide Việt Nam đang được đẩy mạnh đầu tư để hình thành chuỗi hơn 200 nhà hàng tại các thành phố lớn ở Việt Nam, khởi đầu là Hà Nội và Sài Gòn với các thương hiệu nhà hàng Nijyu Maru và Gyu Gaku.', NULL, NULL, 3, 'published', '2024-03-12 02:25:04', '2024-04-18 21:12:02'),
(27, 'Colowide Vietnam', 10, 'Colowide Japan Group is the leading restaurant corporation in Japan. Colowide Company is headquartered in Yokohama city, investing and managing a chain of more than 4,000 restaurants with different brands throughout Japan, Singapore and Thailand.', NULL, NULL, 3, 'draft', '2024-03-12 02:26:02', '2024-04-18 21:12:12'),
(28, 'Watakyu Việt Nam', 3, 'Trong lĩnh vực dịch vụ, một thành viên khác của Phú Thái là Watakyu Việt Nam - liên doanh cùng Tập đoàn WATAKYU Nhật Bản - được thành lập năm 2014 với cam kết mang đến dịch vụ giặt là và vệ sinh công nghiệp chất lượng, đáng tin cậy và góp phần cải thiện môi trường vệ sinh tại Việt Nam.\r\nWATAKYU là tập đoàn lịch sử lâu đời hơn 150 năm tại Nhật Bản. Tập đoàn có 45 công ty thành viên, 65 nhà máy, cung cấp đa dạng các loại dịch vụ cho bệnh viện, dịch vụ chính là giặt ủi và cho thuê đồ vải y tế, cho thuê đồng phục… Watakyu hiện đang là công ty đứng đầu thị phần với 30% sản lượng trên thị trường.', 'cty-con/logo-1.png', 'https://www.watakyu-vietnam.com/', 4, 'published', '2024-03-12 02:27:21', '2024-04-18 21:12:26'),
(29, 'Watakyu Vietnam', 10, 'WATAKYU Group is a company with a long history of more than 150 years in Japan. Watakyu Group has 45 member companies, 65 factories, providing a variety of services for hospitals, the main services are laundry and medical linen rental, uniform rental... Watakyu is at the top market share of 30%\r\n\r\nWatakyu Vietnam was established with a strong commitment to providing quality, reliable services and contributing to improving the medical hygiene environment in Vietnam.', 'cty-con/logo-1.png', 'https://www.watakyu-vietnam.com/', 4, 'published', '2024-03-12 02:27:44', '2024-04-18 21:12:31'),
(30, 'Olympia School', 5, 'Dưới sự quản lý của Hệ thống Giáo dục Dream House, Trường Phổ thông liên cấp Olympia – đơn vị thành viên Liên kết trong Hệ sinh thái Phú Thái, được thành lập vào năm 2003 mang theo thông điệp kiến tạo một môi trường trải nghiệm hội nhập với việc học tiếng Anh & các vấn đề toàn cầu trong khi vẫn gìn giữ các giá trị Việt Nam.\r\nLà đơn vị tiên phong áp dụng phương pháp và nội dung giảng dạy quốc tế nhưng được bản địa hóa để phù hợp với nhu cầu của người Việt Nam, hệ thống Trường Phổ thông Liên cấp Olympia hàng năm đào tạo và giáo dục hàng nghìn học sinh ở tất cả các cấp học. Phần lớn học sinh của trường có cơ hội nhận học bổng và tiếp tục học lên cao hơn tại Mỹ và các nước tại châu  u. Trường đã được Ủy ban kiểm định trường học ACS-WASC công nhận đạt chuẩn kiểm định toàn diện cho cả 4 cấp học từ Mầm non tới THPT (K-12).', 'cty-con/logo-10.png', 'https://theolympiaschools.edu.vn/', NULL, 'published', '2024-03-12 02:31:02', '2024-04-16 03:43:45'),
(31, 'Olympia School', 12, 'TOS creates a challenging experiential learning environment that motivates all students to grow their global competencies and characters, so that they can co-create the future in a new world.', 'cty-con/logo-10.png', 'https://theolympiaschools.edu.vn/', NULL, 'published', '2024-03-12 02:32:14', '2024-03-12 02:32:14'),
(32, 'Via English', 5, 'Via English Academy là học viện anh ngữ Việt Nam thuộc Tập đoàn Phú Thái Holdings. Với triết lý đào tạo “Khám phá ngôn ngữ để thay đổi hành vi\", VIA xây dựng chân dung học viên có đầy đủ 3 tố chất: Thái độ - Kỹ năng - Kiến thức (Attitude - Skills - Knowledge) để phát triển toàn diện.\r\nVIA không chỉ là trung tâm đào tạo tiếng Anh mà còn giúp các học viên phát triển các kỹ năng cá nhân quan trọng như: kỹ năng sống, độc lập, sáng tạo, tinh thần đồng đội, tự tin, thuyết trình, tranh luận, kiến thức xã hội… VIA trang bị hành trang phát triển năng lực toàn diện cho Học viên, đồng hành cùng các Học viên trong hành trình chinh phục khả năng ngôn ngữ, chinh phục những thử thách trong tương lai - nơi các học viên được trao quyền để nắm bắt các cơ hội khai phóng khả năng của bản thân, tự tin hội nhập quốc tế.', 'cty-con/logo-05.png', 'https://viaenglish.edu.vn/', 1, 'published', '2024-03-12 02:34:35', '2024-04-18 18:33:36'),
(33, 'Via English', 12, 'VIA\'s mission is to focus on training in the fields of: English, mental mathematics, programming, necessary skills, etc. With the desire to contribute to Vietnam\'s Education, based on the training philosophy of A.S.K and With the exclusive S.M.I.L.E training method, VIA provides Vietnamese students with international integration skills, helping them confidently enter a challenging playground with many great opportunities.', 'cty-con/logo-05.png', 'https://viaenglish.edu.vn/', NULL, 'published', '2024-03-12 02:34:59', '2024-03-12 02:34:59'),
(34, 'Phú Thái Land', 7, 'Phú Thái Land tập trung phát triển các khu công nghiệp, khu dân cư, thương mại, bán lẻ và cơ sở hạ tầng phân phối. Bên cạnh đó, Phú Thái Land có kế hoạch triển khai một số dự án đầu tư theo mô hình hoàn toàn mới như: Khu đô thị thông minh, Viện dưỡng lão thế hệ mới, Khách sạn động vật, Khu nghỉ dưỡng dành cho thú cưng và một số dự án khác.\r\nNgoài ra, Phú Thái Land còn là đối tác của Hope E&C trong lĩnh vực xây dựng. Đồng thời, công ty cũng thực hiện đầu tư vào mảng thiết kế kiến trúc và nội thất để thiết lập mạng lưới sản phẩm dịch vụ đồng bộ giúp Phú Thái Land có khả năng cung cấp các giải pháp trọn gói tới khách hàng.', NULL, NULL, NULL, 'published', '2024-03-12 02:35:37', '2024-04-16 03:44:20'),
(35, 'Phu Thai Land', 14, NULL, NULL, NULL, NULL, 'published', '2024-03-12 02:35:44', '2024-04-15 23:49:40'),
(36, 'Phú Thái Trading', 15, NULL, NULL, NULL, NULL, 'published', '2024-03-12 02:36:10', '2024-04-16 00:06:44'),
(37, 'Phu Thai Trading', 16, NULL, NULL, NULL, NULL, 'published', '2024-03-12 02:36:23', '2024-04-16 00:06:50'),
(38, 'Túbsense', 5, NULL, NULL, NULL, NULL, 'published', '2024-04-15 23:54:32', '2024-04-15 23:54:32'),
(39, 'Túbsense', 12, NULL, NULL, NULL, NULL, 'published', '2024-04-15 23:54:43', '2024-04-15 23:54:43'),
(40, 'BKFund', 3, 'BK Fund được xây dựng từ mạng lưới Cựu sinh viên trường Đại học Bách Khoa Hà Nội với hàng nghìn doanh nhân thành đạt. BK Fund là quỹ đầu tư mạo hiểm và là nơi cung cấp mạng lưới các nhà cố vấn và đối tác kinh doanh cho các phát minh, sáng chế và các công ty khởi nghiệp từ giai đoạn thương mại hóa lý tưởng.', 'cty-con/logo-bkf-01-20221013035513-a4ccr.png', 'https://www.bkfund.vn/', 2, 'published', '2024-04-16 00:02:02', '2024-04-18 21:11:29'),
(41, 'BKFund', 10, 'BK Fund: BK Fund was built from the Hanoi University of Science and Technology Alumni network with thousands of successful entrepreneurs. BK Fund is a venture capital fund and a provider of a network of advisors and business partners for inventions, inventions and startups from the commercialization stage of ideas.', 'cty-con/logo-bkf-01-20221013035513-a4ccr.png', 'https://www.bkfund.vn/', 2, 'published', '2024-04-16 00:02:30', '2024-04-18 21:11:52'),
(42, 'Bifrost Investment', 4, 'Bifrost Investment Group được thành lập với tư cách là nhánh nghiên cứu, phát triển và đầu tư của Phú Thái Holdings Group. Với đội ngũ nhân sự giàu kinh nghiệm tập trung vào việc tìm kiếm cơ hội đầu tư cho tập đoàn cũng như các đối tác Việt Nam và quốc tế, nên ngoài đầu tư, Bifrost còn là công ty xử lý khoản đầu tư và lãi vốn thuộc chủ sở hữu của chủ tịch Phạm Đình Đoàn tại hai quỹ Thinkzone và BK Fund.', 'cty-con/logo.png', NULL, NULL, 'published', '2024-04-16 00:05:26', '2024-04-17 00:50:44'),
(43, 'Bifrost Investment', 11, NULL, 'cty-con/logo.png', NULL, NULL, 'published', '2024-04-16 00:05:38', '2024-04-17 00:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `companies_business_categories`
--

CREATE TABLE `companies_business_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies_business_categories`
--

INSERT INTO `companies_business_categories` (`id`, `name`, `idx`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Phân phối & bán lẻ', 1, 'published', '2024-03-09 10:38:50', '2024-03-09 10:38:50', 'company-2.jpg'),
(2, 'Sản xuất', 2, 'published', '2024-03-09 10:38:59', '2024-04-15 23:47:14', '12-1.png'),
(3, 'Đầu tư', 3, 'published', '2024-03-09 10:39:09', '2024-03-12 19:52:18', 'kj.jpg'),
(4, 'Công nghệ - Truyền thông', 4, 'published', '2024-03-10 09:22:55', '2024-04-15 23:22:45', 'media-technology-1.png'),
(5, 'Giáo dục - Trải nghiệm', 5, 'published', '2024-03-10 09:23:09', '2024-04-15 23:06:16', 'gd.png'),
(6, 'Nông nghiệp', 6, 'published', '2024-03-10 09:23:22', '2024-04-15 23:23:18', 'gfs-nong-nghiep-847x330-1.jpg'),
(7, 'Bất động sản', 7, 'published', '2024-03-10 09:23:34', '2024-04-15 23:23:59', 'cty-con/bds.jpg'),
(8, 'Distribution & Retail', 1, 'published', '2024-03-11 20:19:18', '2024-03-11 20:19:18', 'company-2.jpg'),
(9, 'Manufacturing', 2, 'published', '2024-03-11 20:19:52', '2024-04-15 23:47:24', '12-1.png'),
(10, 'Investment', 3, 'published', '2024-03-11 20:23:44', '2024-03-12 19:52:47', 'kj.jpg'),
(11, 'Technology - Media', 4, 'published', '2024-03-11 20:24:08', '2024-04-15 23:22:59', 'media-technology-1.png'),
(12, 'Education - Experience', 5, 'published', '2024-03-11 20:24:29', '2024-04-15 23:06:21', 'gd.png'),
(13, 'Agriculture', 6, 'published', '2024-03-11 20:24:43', '2024-04-15 23:23:28', 'gfs-nong-nghiep-847x330-1.jpg'),
(14, 'Real estate', 7, 'published', '2024-03-11 20:28:25', '2024-04-15 23:24:09', 'cty-con/bds.jpg'),
(15, 'Thương mại quốc tế - XNK', 15, 'published', '2024-04-15 23:07:59', '2024-04-15 23:24:28', 'company-2.jpg'),
(16, 'International trade - Import and Export', 15, 'published', '2024-04-15 23:08:24', '2024-04-15 23:24:42', 'company-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `file` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `file`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trong Nguyen', 'nvtrong393@gmail.com', NULL, NULL, 'Liên hệ từ đối tác', 'Trong Nguyenx Van Test', 'private-files/C23GimD6eoW5KsppHrOX7mvw0n9lwrkwcqdG1pN6.png', 'unread', '2024-03-10 08:08:16', '2024-03-10 08:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(255) NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `use_for`, `use_for_id`, `field_item_id`, `type`, `slug`, `value`) VALUES
(1, 'Botble\\Page\\Models\\Page', 2, 1, 'repeater', 'awards', '[[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Hu\\u00e2n ch\\u01b0\\u01a1ng Lao \\u0111\\u1ed9ng H\\u1ea1ng II, III\"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Gi\\u1ea3i th\\u01b0\\u1edfng th\\u01b0\\u01a1ng hi\\u1ec7u m\\u1ea1nh Vi\\u1ec7t Nam \"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2006\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Gi\\u1ea3i th\\u01b0\\u1edfng top 100 Trade Service\"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2006\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"L\\u00e0 1 trong 100 th\\u01b0\\u01a1ng hi\\u1ec7u h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam \"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Cup v\\u00e0ng v\\u00ec s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ed9ng \\u0111\\u1ed3ng \"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2007\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Gi\\u1ea3i th\\u01b0\\u1eddng Sao v\\u00e0ng \\u0110\\u1ea5t vi\\u1ec7t \"}]]'),
(2, 'Botble\\Page\\Models\\Page', 3, 4, 'repeater', 'milestones', '[[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"1993\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"C\\u00f4ng ty CP T\\u1eadp \\u0111o\\u00e0n Ph\\u00fa Th\\u00e1i (Ph\\u00fa Th\\u00e1i Group) ti\\u1ec1n th\\u00e2n l\\u00e0 C\\u00f4ng ty TNHH Ph\\u00fa Th\\u00e1i \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp t\\u1eeb T10\\/1993, ho\\u1ea1t \\u0111\\u1ed9ng trong l\\u0129nh v\\u1ef1c th\\u01b0\\u01a1ng m\\u1ea1i, kinh doanh v\\u00e0 ph\\u00e2n ph\\u1ed1i c\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u00e0ng ti\\u00eau d\\u00f9ng.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-1.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2001\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"B\\u1eaft ngu\\u1ed3n t\\u1eeb c\\u00e1i n\\u00f4i c\\u1ee7a Ph\\u00fa Th\\u00e1i, Greengroup ra \\u0111\\u1eddi v\\u00e0 ho\\u1ea1t \\u0111\\u1ed9ng ch\\u1ee7 y\\u1ebfu trong c\\u00e1c l\\u0129nh v\\u1ef1c cung c\\u1ea5p c\\u00e1c s\\u1ea3n ph\\u1ea9m thu\\u1ed1c th\\u00fa y d\\u00f9ng trong ch\\u0103n nu\\u00f4i gia s\\u00fac, gia c\\u1ea7m, thu\\u1ed1c th\\u00fa y th\\u1ee7y s\\u1ea3n, c\\u00e1c ph\\u1ee5 gia d\\u00f9ng trong ng\\u00e0nh ch\\u1ebf bi\\u1ebfn th\\u1ee9c \\u0103n gia s\\u00fac, gi\\u1ebft m\\u1ed5 v\\u00e0 ch\\u1ebf bi\\u1ebfn th\\u1ef1c ph\\u1ea9m s\\u1ea1ch, cung \\u1ee9ng c\\u00e1c trang thi\\u1ebft b\\u1ecb d\\u00f9ng trong ch\\u0103n nu\\u00f4i...\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-2.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\\u0110\\u01b0\\u1ee3c \\u1ea5p \\u1ee7 ph\\u00e1t tri\\u1ec3n t\\u1eeb ho\\u1ea1t \\u0111\\u1ed9ng kinh doanh ph\\u00e2n ph\\u1ed1i th\\u1eddi trang c\\u1ee7a Ph\\u00fa Th\\u00e1i Holdings, C\\u00f4ng ty C\\u1ed5 ph\\u1ea7n Th\\u1eddi trang Kowil \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u1edbi n\\u1ed7 l\\u1ef1c t\\u1ea1o ra c\\u00e1c gi\\u1ea3i ph\\u00e1p th\\u1eddi trang thanh l\\u1ecbch b\\u1eaft ngu\\u1ed3n t\\u1eeb gi\\u00e1 tr\\u1ecb c\\u1ee7a ng\\u01b0\\u1eddi Vi\\u1ec7t d\\u00e0nh cho ng\\u01b0\\u1eddi Vi\\u1ec7t b\\u1eb1ng vi\\u1ec7c khai th\\u00e1c c\\u00e1c c\\u00f4ng ngh\\u1ec7 th\\u1eddi trang ti\\u00ean ti\\u1ebfn v\\u00e0 ph\\u01b0\\u01a1ng ph\\u00e1p qu\\u1ea3n l\\u00fd c\\u1ee7a ng\\u00e0nh c\\u00f3 \\u0111\\u01b0\\u1ee3c t\\u1eeb s\\u1ef1 h\\u1ee3p t\\u00e1c qu\\u1ed1c t\\u1ebf. \"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-3.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2010\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Ng\\u00e0y 23\\/05\\/2010 \\u0111\\u00e1nh d\\u1ea5u c\\u1ed9t m\\u1ed1c C\\u00f4ng ty TNHH C\\u00f4ng Nghi\\u1ec7p Ph\\u00fa Th\\u00e1i l\\u00e0 \\u0110\\u1ea1i l\\u00fd Ch\\u00ednh th\\u1ee9c Duy nh\\u1ea5t c\\u1ee7a Caterpillar t\\u1ea1i Vi\\u1ec7t Nam v\\u1edbi t\\u00ean giao d\\u1ecbch l\\u00e0 Phu Thai Cat. Caterpillar l\\u00e0 t\\u1eadp \\u0111o\\u00e0n s\\u1ea3n xu\\u1ea5t m\\u00e1y c\\u00f4ng tr\\u00ecnh & khai m\\u1ecf, m\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n, \\u0111\\u1ed9ng c\\u01a1 diesel, \\u0111\\u1ed9ng c\\u01a1 m\\u00e1y th\\u1ee7y v\\u00e0 xe n\\u00e2ng h\\u00e0ng\\u2026 l\\u1edbn nh\\u1ea5t th\\u1ebf gi\\u1edbi. \"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-5.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2019\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\\u0110\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp d\\u01b0\\u1edbi s\\u1ef1 h\\u1ee3p t\\u00e1c gi\\u1eefa T\\u1eadp \\u0111o\\u00e0n Ph\\u00fa Th\\u00e1i Holdings v\\u00e0 PON - t\\u1eadp \\u0111o\\u00e0n c\\u1ee7a H\\u00e0 Lan v\\u1edbi 70 n\\u0103m kinh nghi\\u1ec7m kinh doanh nhi\\u1ec1u th\\u01b0\\u01a1ng hi\\u1ec7u \\u00f4 t\\u00f4 ch\\u1edf kh\\u00e1ch, du l\\u1ecbch v\\u00e0 \\u00f4 t\\u00f4 cao c\\u1ea5p tr\\u00ean kh\\u1eafp Ch\\u00e2u \\u00c2u v\\u00e0 B\\u1eafc M\\u1ef9, Phu Thai Mobility tr\\u1edf th\\u00e0nh nh\\u00e0 nh\\u1eadp kh\\u1ea9u v\\u00e0 ph\\u00e2n ph\\u1ed1i \\u0111\\u1ed9c quy\\u1ec1n th\\u01b0\\u01a1ng hi\\u1ec7u Jaguar v\\u00e0 Land Rover, bao g\\u1ed3m c\\u1ea3 ph\\u1ee5 t\\u00f9ng ch\\u00ednh h\\u00e3ng t\\u1ea1i Vi\\u1ec7t Nam\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-6.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2020-2021\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Bifrost Investment Group \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u1edbi t\\u01b0 c\\u00e1ch l\\u00e0 nh\\u00e1nh nghi\\u00ean c\\u1ee9u, ph\\u00e1t tri\\u1ec3n v\\u00e0 \\u0111\\u1ea7u t\\u01b0 c\\u1ee7a Phu Thai Holdings. Ngo\\u00e0i vi\\u1ec7c \\u0111\\u1ea7u t\\u01b0 ch\\u00ednh, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 qu\\u1ed1c t\\u1ebf gi\\u00e0u kinh nghi\\u1ec7m t\\u1eadp trung v\\u00e0o vi\\u1ec7c t\\u00ecm ki\\u1ebfm c\\u01a1 h\\u1ed9i \\u0111\\u1ea7u t\\u01b0 cho t\\u1eadp \\u0111o\\u00e0n c\\u0169ng nh\\u01b0 c\\u00e1c \\u0111\\u1ed1i t\\u00e1c Vi\\u1ec7t Nam v\\u00e0 qu\\u1ed1c t\\u1ebf, Bifrost c\\u00f2n l\\u00e0 c\\u00f4ng ty  x\\u1eed l\\u00fd kho\\u1ea3n \\u0111\\u1ea7u t\\u01b0 v\\u00e0 l\\u00e3i v\\u1ed1n thu\\u1ed9c ch\\u1ee7 s\\u1edf h\\u1eefu c\\u1ee7a ch\\u1ee7 t\\u1ecbch Ph\\u1ea1m \\u0110\\u00ecnh \\u0110o\\u00e0n t\\u1ea1i hai qu\\u1ef9 Thinkzone v\\u00e0 BK Fund.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-4.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2022\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"BK Fund: BK Fund \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng t\\u1eeb m\\u1ea1ng l\\u01b0\\u1edbi C\\u1ef1u sinh vi\\u00ean tr\\u01b0\\u1eddng \\u0110\\u1ea1i h\\u1ecdc B\\u00e1ch Khoa H\\u00e0 N\\u1ed9i v\\u1edbi h\\u00e0ng ngh\\u00ecn doanh nh\\u00e2n th\\u00e0nh \\u0111\\u1ea1t. BK Fund l\\u00e0 qu\\u1ef9 \\u0111\\u1ea7u t\\u01b0 m\\u1ea1o hi\\u1ec3m v\\u00e0 l\\u00e0 n\\u01a1i cung c\\u1ea5p m\\u1ea1ng l\\u01b0\\u1edbi c\\u00e1c nh\\u00e0 c\\u1ed1 v\\u1ea5n v\\u00e0 \\u0111\\u1ed1i t\\u00e1c kinh doanh cho c\\u00e1c ph\\u00e1t minh, s\\u00e1ng ch\\u1ebf v\\u00e0 c\\u00e1c c\\u00f4ng ty kh\\u1edfi nghi\\u1ec7p t\\u1eeb giai \\u0111o\\u1ea1n th\\u01b0\\u01a1ng m\\u1ea1i h\\u00f3a \\u00fd t\\u01b0\\u1edfng.\\n\\nThinkzone: ThinkZone Ventures l\\u00e0 c\\u00f4ng ty \\u0110\\u1ea7u t\\u01b0 m\\u1ea1o hi\\u1ec3m c\\u00f3 ngu\\u1ed3n l\\u1ef1c \\u0111\\u1ecba ph\\u01b0\\u01a1ng l\\u1edbn nh\\u1ea5t t\\u1ea1i Vi\\u1ec7t Nam, t\\u1eadp trung v\\u00e0o c\\u00e1c c\\u00f4ng ty kh\\u1edfi nghi\\u1ec7p c\\u00f4ng ngh\\u1ec7 Pre-seed \\u0111\\u1ebfn Series A t\\u1eeb c\\u00e1c ng\\u00e0nh d\\u1ecdc \\u0111a d\\u1ea1ng, v\\u1edbi quy m\\u00f4 \\u0111\\u1ea7u t\\u01b0 l\\u00ean \\u0111\\u1ebfn 3 tri\\u1ec7u dollar. Ch\\u00fang t\\u00f4i c\\u0169ng h\\u1ed7 tr\\u1ee3 c\\u00e1c c\\u00f4ng ty kh\\u1edfi nghi\\u1ec7p giai \\u0111o\\u1ea1n \\u0111\\u1ea7u th\\u00f4ng qua ch\\u01b0\\u01a1ng tr\\u00ecnh ThinkZone Accelerator.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-7.png\"}]]'),
(3, 'Botble\\Page\\Models\\Page', 4, 8, 'repeater', 'sustainables', '[[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"CHI\\u1ebeN L\\u01af\\u1ee2C KINH DOANH\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"11.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-2.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Ph\\u00fa Th\\u00e1i Holdings Group s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn bi\\u1ebft l\\u00e0 m\\u1ed9t t\\u1eadp \\u0111o\\u00e0n ph\\u00e2n ph\\u1ed1i v\\u00e0 \\u0111\\u1ea7u t\\u01b0 \\u0111a ng\\u00e0nh h\\u00e0ng \\u0111\\u1ea7u t\\u1ea1i Vi\\u1ec7t Nam, ho\\u1ea1t \\u0111\\u1ed9ng trong nhi\\u1ec1u l\\u0129nh v\\u1ef1c kinh doanh v\\u1edbi hi\\u1ec7u su\\u1ea5t v\\u00e0 nh\\u1eefng th\\u00e0nh t\\u1ef1u \\u0111\\u00e1ng ch\\u00fa \\u00fd. Kh\\u00f4ng ch\\u1ec9 m\\u1edf r\\u1ed9ng \\u0111a ng\\u00e0nh, \\u0111a l\\u0129nh v\\u1ef1c ho\\u1ea1t \\u0111\\u1ed9ng, m\\u00e0 c\\u00f2n \\u0111\\u1eb7t m\\u1ee5c ti\\u00eau \\u0111\\u1ea1t hi\\u1ec7u qu\\u1ea3 v\\u00e0 v\\u1ecb th\\u1ebf h\\u00e0ng \\u0111\\u1ea7u t\\u1ea1i Vi\\u1ec7t Nam. \\u0110i\\u1ec1u n\\u00e0y th\\u1ec3 hi\\u1ec7n s\\u1ef1 cam k\\u1ebft v\\u00e0 n\\u1ed7 l\\u1ef1c li\\u00ean t\\u1ee5c \\u0111\\u1ec3 ph\\u00e1t tri\\u1ec3n v\\u00e0 duy tr\\u00ec s\\u1ef1 th\\u00e0nh c\\u00f4ng trong m\\u00f4i tr\\u01b0\\u1eddng kinh doanh \\u0111a d\\u1ea1ng v\\u00e0 c\\u1ea1nh tranh.\"}],[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"V\\u0102N HO\\u00c1 DOANH NGHI\\u1ec6P\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"12.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-1.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"V\\u0103n ho\\u00e1 doanh nghi\\u1ec7p, con ng\\u01b0\\u1eddi Ph\\u00fa Th\\u00e1i lu\\u00f4n ti\\u00ean phong, s\\u00e1ng t\\u1ea1o, chuy\\u00ean nghi\\u1ec7p, g\\u1eafn k\\u1ebft, kh\\u00f4ng ng\\u1eebng v\\u01b0\\u01a1n l\\u00ean m\\u1ea1nh m\\u1ebd,... c\\u00f3 s\\u1ef1 t\\u1ef1 h\\u00e0o v\\u00e0 k\\u1ebft n\\u1ed1i m\\u1ea1nh m\\u1ebd gi\\u1eefa c\\u00e1c \\u0111\\u01a1n v\\u1ecb th\\u00e0nh vi\\u00ean, li\\u00ean k\\u1ebft. Ph\\u00fa Th\\u00e1i s\\u1ebd ti\\u1ebfp t\\u1ee5c ph\\u00e1t tri\\u1ec3n v\\u01b0\\u1ee3t b\\u1eadc t\\u1eeb \\u201cT\\u1ed1t\\u201d \\u0111\\u1ebfn \\u201cV\\u0129 \\u0111\\u1ea1i\\\", tr\\u1edf th\\u00e0nh t\\u00ean tu\\u1ed5i h\\u00e0ng \\u0111\\u1ea7u c\\u1ee7a Vi\\u1ec7t Nam. V\\u00e0 theo \\u0111\\u00f3, m\\u1ed7i c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean s\\u1ebd \\u0111\\u1ec1u trau d\\u1ed3i, h\\u01b0\\u1edbng t\\u1edbi tr\\u1edf th\\u00e0nh nh\\u1eefng con ng\\u01b0\\u1eddi v\\u0129 \\u0111\\u1ea1i, \\u0111\\u00f3ng g\\u00f3p nhi\\u1ec1u gi\\u00e1 tr\\u1ecb cho c\\u1ed9ng \\u0111\\u1ed3ng, x\\u00e3 h\\u1ed9i. \"}],[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"TR\\u00c1CH NHI\\u1ec6M X\\u00c3 H\\u1ed8I\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"13.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-2.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"T\\u1ea1i Ph\\u00fa Th\\u00e1i Holdings Groups, ch\\u00fang t\\u00f4i lu\\u00f4n n\\u1ed7 l\\u1ef1c v\\u00ec m\\u00f4i tr\\u01b0\\u1eddng v\\u00e0 x\\u00e3 h\\u1ed9i b\\u1ec1n v\\u1eefng h\\u01a1n. Ph\\u00fa Th\\u00e1i Holdings Group lu\\u00f4n xem nh\\u1eefng ho\\u1ea1t \\u0111\\u1ed9ng \\u0111\\u00f3ng g\\u00f3p cho x\\u00e3 h\\u1ed9i l\\u00e0 m\\u1ed9t ph\\u1ea7n tr\\u00e1ch nhi\\u1ec7m c\\u1ee7a m\\u00ecnh \\u0111\\u1ed1i v\\u1edbi c\\u1ed9ng \\u0111\\u1ed3ng nh\\u1eb1m \\u0111\\u00f3ng g\\u00f3p v\\u00e0o s\\u1ef1 ph\\u00e1t tri\\u1ec3n l\\u00e2u d\\u00e0i,  b\\u1ec1n v\\u1eefng c\\u1ee7a x\\u00e3 h\\u1ed9i Vi\\u1ec7t Nam.Trong nhi\\u1ec1u n\\u0103m qua, Ph\\u00fa Th\\u00e1i Holdings Group \\u0111\\u00e3 \\u0111\\u00e3 n\\u1ed7 l\\u1ef1c kh\\u1edfi x\\u01b0\\u1edbng, t\\u00e0i tr\\u1ee3 v\\u00e0 tham gia nhi\\u1ec1u ch\\u01b0\\u01a1ng tr\\u00ecnh x\\u00e3 h\\u1ed9i \\u00fd ngh\\u0129a v\\u00e0 h\\u1eefu \\u00edch.\"}],[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1ea2O V\\u1ec6 M\\u00d4I TR\\u01af\\u1edcNG\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"14.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-1.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"G\\u00ecn gi\\u1eef v\\u00e0 h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a t\\u00e1c \\u0111\\u1ed9ng t\\u1eeb c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng kinh doanh \\u0111\\u1ebfn m\\u00f4i tr\\u01b0\\u1eddng l\\u00e0 \\u01b0u ti\\u00ean h\\u00e0ng \\u0111\\u1ea7u c\\u1ee7a Ph\\u00fa Th\\u00e1i Group b\\u1edfi ch\\u00fang t\\u00f4i tin ch\\u1eafc r\\u1eb1ng m\\u1ed9t t\\u01b0\\u01a1ng lai t\\u1ed1t \\u0111\\u1eb9p h\\u01a1n b\\u1eaft \\u0111\\u1ea7u t\\u1eeb h\\u00f4m nay. Ph\\u00fa Th\\u00e1i Holdings Group c\\u00f9ng v\\u1edbi c\\u00e1c c\\u00f4ng ty th\\u00e0nh vi\\u00ean t\\u00edch c\\u1ef1c \\u0111\\u1ed3ng h\\u00e0nh c\\u00f9ng c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh n\\u00e2ng cao nh\\u1eadn th\\u1ee9c v\\u00e0 b\\u1ea3o v\\u1ec7 m\\u00f4i tr\\u01b0\\u1eddng b\\u00ean ngo\\u00e0i, c\\u0169ng nh\\u01b0 th\\u1ef1c hi\\u1ec7n t\\u1ed1t c\\u00e1c ch\\u00ednh s\\u00e1ch n\\u1ed9i b\\u1ed9 \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c c\\u00e1c m\\u1ee5c ti\\u00eau ph\\u00e1t tri\\u1ec3n b\\u1ec1n v\\u1eefng.\"}]]'),
(4, 'Botble\\Page\\Models\\Page', 5, 13, 'text', 'title_sec_1', ' HỆ SINH THÁI CỦA CHÚNG TÔI'),
(5, 'Botble\\Page\\Models\\Page', 5, 14, 'textarea', 'desc_sec_1', 'Tiếp cận cột mốc kỷ niệm 30 năm thành lập, Tập đoàn Phú Thái Holdings hiện bao gồm mạng lưới hơn 30 công ty con được dẫn dắt bởi đội ngũ quản lý kỳ cựu và 5.000 nhân viên, tạo ra doanh thu hơn 10.000 tỷ Việt Nam và tốc độ tăng trưởng trung bình 25% hàng năm. Thành công này một phần lớn là nhờ vào mạng lưới các đối tác đáng tin cậy tuyệt vời và một hệ sinh thái kinh doanh được tinh chỉnh trải dài trên toàn quốc với nhiều ngành công nghiệp khác nhau. Nhìn về phía trước trong 30 năm tới, chúng tôi hy vọng sẽ xây dựng thêm nhiều mối quan hệ đối tác lâu dài để thúc đẩy sự phát triển của chúng tôi vượt ra ngoài biên giới Việt Nam.'),
(6, 'Botble\\Page\\Models\\Page', 5, 15, 'repeater', 'sumarys', '[[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"N\\u0103m <br>Ho\\u1ea1t \\u0110\\u1ed9ng\"},{\"field_item_id\":73,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon\\/icon-index-1.svg\"}],[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"\\u0110\\u01a1n v\\u1ecb <br>tr\\u1ef1c thu\\u1ed9c\"},{\"field_item_id\":73,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon\\/icon-index-2.svg\"}],[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"title\",\"value\":\"5000\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Th\\u00e0nh <br> vi\\u00ean\"},{\"field_item_id\":73,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon\\/icon-index-3.svg\"}]]'),
(7, 'Botble\\Page\\Models\\Page', 5, 18, 'repeater', 'list_compaies', '[[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"PH\\u00da TH\\u00c1I CAT\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-1.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"C\\u00f4ng ty TNHH C\\u00f4ng Nghi\\u1ec7p Ph\\u00fa Th\\u00e1i l\\u00e0 \\u0110\\u1ea1i l\\u00fd Ch\\u00ednh th\\u1ee9c Duy nh\\u1ea5t c\\u1ee7a Caterpillar t\\u1ea1i Vi\\u1ec7t Nam v\\u1edbi t\\u00ean giao d\\u1ecbch l\\u00e0 Phu Thai Cat. Caterpillar l\\u00e0 t\\u1eadp \\u0111o\\u00e0n s\\u1ea3n xu\\u1ea5t m\\u00e1y c\\u00f4ng tr\\u00ecnh & khai m\\u1ecf, m\\u00e1y ph\\u00e1t \\u0111i\\u1ec7n, \\u0111\\u1ed9ng c\\u01a1 diesel, \\u0111\\u1ed9ng c\\u01a1 m\\u00e1y th\\u1ee7y v\\u00e0 xe n\\u00e2ng h\\u00e0ng\\u2026 l\\u1edbn nh\\u1ea5t th\\u1ebf gi\\u1edbi.\\n\\nPhu Thai Cat kh\\u00f4ng ch\\u1ec9 cung c\\u1ea5p c\\u00e1c thi\\u1ebft b\\u1ecb mang th\\u01b0\\u01a1ng hi\\u1ec7u Cat\\u00ae m\\u1edbi 100% m\\u00e0 c\\u00f2n cho thu\\u00ea v\\u00e0 b\\u00e1n c\\u00e1c thi\\u1ebft b\\u1ecb \\u0111\\u00e3 qua s\\u1eed d\\u1ee5ng. Phu Thai Cat cung c\\u1ea5p c\\u00e1c d\\u1ecbch v\\u1ee5 h\\u1ed7 tr\\u1ee3 sau b\\u00e1n h\\u00e0ng nh\\u01b0 l\\u1eafp \\u0111\\u1eb7t, v\\u1eadn h\\u00e0nh v\\u00e0 \\u0111\\u01b0a ra c\\u00e1c khuy\\u1ebfn c\\u00e1o, cung c\\u1ea5p ph\\u1ee5 t\\u00f9ng thay th\\u1ebf ch\\u00ednh h\\u00e3ng, d\\u1ecbch v\\u1ee5 s\\u1eeda ch\\u1eefa, d\\u1ecbch v\\u1ee5 \\u0111\\u00e0o t\\u1ea1o, th\\u1ef1c hi\\u1ec7n c\\u00f4ng vi\\u1ec7c b\\u1ea3o h\\u00e0nh v\\u00e0 t\\u01b0 v\\u1ea5n c\\u00e1c gi\\u1ea3i ph\\u00e1p cho c\\u00e1c doanh nghi\\u1ec7p.\\n\\nPhu Thai Cat lu\\u00f4n lu\\u00f4n s\\u1eb5n s\\u00e0ng h\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng 24\\/7 v\\u1edbi \\u0111\\u1ed9i ng\\u0169 h\\u01a1n 400 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m c\\u1ea3 v\\u1ec1 m\\u1eb7t qu\\u1ea3n l\\u00fd c\\u0169ng nh\\u01b0 v\\u1eadn h\\u00e0nh, \\u0111\\u1ed9i ng\\u0169 k\\u1ef9 s\\u01b0 \\u0111\\u01b0\\u1ee3c \\u0111\\u00e0o t\\u1ea1o chuy\\u00ean s\\u00e2u, \\u0111\\u1ed9i ng\\u0169 chuy\\u00ean gia n\\u01b0\\u1edbc ngo\\u00e0i gi\\u00e0u kinh nghi\\u1ec7m t\\u1ea1i tr\\u1ee5 s\\u1edf ch\\u00ednh \\u1edf H\\u00e0 N\\u1ed9i, v\\u0103n ph\\u00f2ng chi nh\\u00e1nh \\u1edf TP H\\u1ed3 Ch\\u00ed Minh, 3 Trung t\\u00e2m h\\u1ed7 tr\\u1ee3 s\\u1ea3n ph\\u1ea9m t\\u1ea1i \\u0110\\u1ed3ng Nai, H\\u01b0ng Y\\u00ean, Qu\\u1ea3ng Ninh v\\u00e0 c\\u00e1c tr\\u1ea1m s\\u1eeda ch\\u1eefa tr\\u00ean to\\u00e0n qu\\u1ed1c.\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"machine-banner.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\" PH\\u00da TH\\u00c1I GROUP\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-2.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Ti\\u1ebfn s\\u0129 \\u0110o\\u00e0n th\\u00e0nh l\\u1eadp T\\u1eadp \\u0111o\\u00e0n Ph\\u00fa Th\\u00e1i (PTG) l\\u1ea7n \\u0111\\u1ea7u ti\\u00ean v\\u00e0o n\\u0103m 1993 v\\u1edbi l\\u0129nh v\\u1ef1c kinh doanh c\\u1ed1t l\\u00f5i ban \\u0111\\u1ea7u l\\u00e0 ph\\u00e2n ph\\u1ed1i, t\\u1eadn d\\u1ee5ng l\\u1ee3i th\\u1ebf c\\u1ee7a s\\u1ef1 h\\u1ed9i nh\\u1eadp c\\u1ee7a Vi\\u1ec7t Nam v\\u00e0o th\\u1ebf gi\\u1edbi to\\u00e0n c\\u1ea7u. H\\u1ee3p t\\u00e1c v\\u1edbi t\\u1eadp \\u0111o\\u00e0n qu\\u1ed1c t\\u1ebf P&G, ch\\u00fang t\\u00f4i \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng m\\u1ea1ng l\\u01b0\\u1edbi ph\\u00e2n ph\\u1ed1i l\\u1edbn nh\\u1ea5t \\u1edf mi\\u1ec1n B\\u1eafc Vi\\u1ec7t Nam tr\\u01b0\\u1edbc khi m\\u1edf r\\u1ed9ng ra to\\u00e0n qu\\u1ed1c. Tr\\u00ean tinh th\\u1ea7n h\\u1ee3p t\\u00e1c v\\u00e0 th\\u00fac \\u0111\\u1ea9y t\\u0103ng tr\\u01b0\\u1edfng, PTG \\u0111\\u00e3 \\u0111\\u01b0a v\\u1ec1 \\u0111\\u1ed1i t\\u00e1c c\\u1ed5 ph\\u1ea7n chi\\u1ebfn l\\u01b0\\u1ee3c t\\u1ea1i Berli Jucker (BJC). Sau li\\u00ean doanh th\\u00e0nh c\\u00f4ng c\\u1ee7a T\\u1eadp \\u0111o\\u00e0n Ph\\u00fa Th\\u00e1i, Ti\\u1ebfn s\\u0129 \\u0110o\\u00e0n sau \\u0111\\u00f3 th\\u00e0nh l\\u1eadp T\\u1eadp \\u0111o\\u00e0n Ph\\u00fa Th\\u00e1i Holdings, n\\u01a1i PTG s\\u1ebd tr\\u1edf th\\u00e0nh c\\u00f4ng ty con. K\\u1ec3 t\\u1eeb \\u0111\\u00f3, ch\\u00fang t\\u00f4i \\u0111\\u00e3 m\\u1edf r\\u1ed9ng v\\u00e0 tr\\u1edf th\\u00e0nh m\\u1ed9t trong nh\\u1eefng c\\u00f4ng ty h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam ph\\u00e2n ph\\u1ed1i m\\u1ef9 ph\\u1ea9m, \\u0111\\u1ed3 d\\u00f9ng gia \\u0111\\u00ecnh, FMCG v\\u00e0 cung c\\u1ea5p d\\u1ecbch v\\u1ee5 kho b\\u00e3i v\\u00e0 h\\u1eadu c\\u1ea7n cho h\\u00e0ng ngh\\u00ecn \\u0111\\u1ea1i l\\u00fd v\\u00e0 c\\u1eeda h\\u00e0ng tr\\u00ean to\\u00e0n qu\\u1ed1c.\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-2.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"MOBILITIES\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-3.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Ph\\u00fa Th\\u00e1i Mobility l\\u00e0 nh\\u00e0 nh\\u1eadp kh\\u1ea9u, ph\\u00e2n ph\\u1ed1i ch\\u00ednh h\\u00e3ng \\u0111\\u1ed9c quy\\u1ec1n v\\u00e0 cung c\\u1ea5p d\\u1ecbch v\\u1ee5 h\\u1eadu m\\u00e3i duy nh\\u1ea5t cho hai th\\u01b0\\u01a1ng hi\\u1ec7u xe sang - Jaguar v\\u00e0 Land Rover - t\\u1ea1i Vi\\u1ec7t Nam. \\nKhi ti\\u1ebfp t\\u1ee5c x\\u00e2y d\\u1ef1ng s\\u1ef1 hi\\u1ec7n di\\u1ec7n c\\u1ee7a hai th\\u01b0\\u01a1ng hi\\u1ec7u hi\\u1ec7n t\\u1ea1i, ch\\u00fang t\\u00f4i \\u0111ang t\\u00ecm ki\\u1ebfm th\\u00eam c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u xe h\\u01a1i kh\\u00e1c \\u0111\\u1ec3 ph\\u00e2n ph\\u1ed1i trong t\\u01b0\\u01a1ng lai. V\\u1edbi th\\u00e0nh c\\u00f4ng c\\u1ee7a m\\u00ecnh, ch\\u00fang t\\u00f4i s\\u1eb5n s\\u00e0ng g\\u00f3p s\\u1ee9c cho s\\u1ef1 ph\\u00e1t tri\\u1ec3n kh\\u00f4ng ng\\u1eebng c\\u1ee7a ng\\u00e0nh c\\u00f4ng nghi\\u1ec7p xe h\\u01a1i Vi\\u1ec7t Nam.\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"mobility-phuthaiholdings1.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"KOWIL\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-4.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\\u0110\\u1ec3 c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u th\\u00e0nh c\\u00f4ng t\\u1ea1i Vi\\u1ec7t Nam, m\\u1ea1ng l\\u01b0\\u1edbi ph\\u00e2n ph\\u1ed1i l\\u00e0 m\\u1ed9t y\\u00eau c\\u1ea7u tuy\\u1ec7t \\u0111\\u1ed1i. V\\u1edbi m\\u1ea1ng l\\u01b0\\u1edbi b\\u00e1n l\\u1ebb r\\u1ed9ng l\\u1edbn tr\\u00ean to\\u00e0n qu\\u1ed1c v\\u1edbi h\\u01a1n 1.000 c\\u1eeda h\\u00e0ng v\\u00e0 h\\u00e0ng ngh\\u00ecn \\u0111\\u1ea1i l\\u00fd ph\\u00e2n ph\\u1ed1i, Kowil Vi\\u1ec7t Nam, \\u0111\\u1ed1i t\\u00e1c tin c\\u1eady \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a Itochu (Nh\\u1eadt B\\u1ea3n), l\\u00e0 m\\u1ed9t trong nh\\u1eefng c\\u00f4ng ty h\\u00e0ng \\u0111\\u1ea7u v\\u1ec1 ph\\u00e2n ph\\u1ed1i th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang t\\u1ea1i Vi\\u1ec7t Nam. Ch\\u00fang t\\u00f4i ph\\u00e2n ph\\u1ed1i m\\u1ed9t lo\\u1ea1t c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u01b0\\u1ee3c nh\\u01b0\\u1ee3ng quy\\u1ec1n ho\\u1eb7c c\\u1ea5p ph\\u00e9p t\\u1eeb c\\u00e1c \\u0111\\u1ed1i t\\u00e1c Nh\\u1eadt B\\u1ea3n c\\u1ee7a ch\\u00fang t\\u00f4i bao g\\u1ed3m c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u uy t\\u00edn nh\\u01b0 Owen, Wine, Ojean v\\u00e0 \\u0111\\u1ed3 th\\u1ec3 thao (Dunlop)\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-4.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"GREEN VET\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-5.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Green Group nghi\\u00ean c\\u1ee9u, \\u1ee9ng d\\u1ee5ng c\\u00e1c s\\u1ea3n ph\\u1ea9m, gi\\u1ea3i ph\\u00e1p ch\\u0103m s\\u00f3c s\\u1ee9c kh\\u1ecfe v\\u00e0 dinh d\\u01b0\\u1ee1ng v\\u1eadt nu\\u00f4i theo xu h\\u01b0\\u1edbng an to\\u00e0n sinh h\\u1ecdc th\\u00f4ng qua m\\u1ea1ng l\\u01b0\\u1edbi r\\u1ed9ng kh\\u1eafp c\\u1ea3 n\\u01b0\\u1edbc v\\u1edbi h\\u00e0ng tr\\u0103m c\\u01a1 quan, trang tr\\u1ea1i, nh\\u00e0 m\\u00e1y, chi c\\u1ee5c th\\u00fa y. C\\u00e1c \\u0111\\u1ed1i t\\u00e1c kh\\u00e1c c\\u1ee7a Green Vet bao g\\u1ed3m Medion (Indonesia), Cipla (\\u1ea4n \\u0110\\u1ed9), CJ (H\\u00e0n Qu\\u1ed1c), MVP (Malaysia), Bovet & Bavetta (S\\u00e9c), Miavit (\\u0110\\u1ee9c).\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-5.jpg\"}]]'),
(8, 'Botble\\Page\\Models\\Page', 6, 23, 'text', 'title_sec_1_page_team', 'PHẠM ĐÌNH ĐOÀN'),
(9, 'Botble\\Page\\Models\\Page', 6, 24, 'text', 'title_2_sec_1_page_team', 'Chủ tịch Tập đoàn Phú Thái Holdings Group'),
(10, 'Botble\\Page\\Models\\Page', 6, 25, 'wysiwyg', 'desc_sec_1_page_team', '<p>Tiến sĩ Phạm Đình Đoàn là người sáng lập và là Chủ tịch của Tập đoàn Phú Thái Holdings Group được thành lập vào năm 1993 trên đỉnh cao hội nhập của Việt Nam vào thế giới toàn cầu. Với tầm nhìn và mục tiêu mong muốn của mình là giúp đất nước tăng tốc phát triển, cải thiện chất lượng cuộc sống, ông đã ký kết hợp tác với đối tác quan trọng của các tập đoàn quốc tế tạo tiền đề trở thành một trong những nhà phân phối hàng đầu của đất nước.&nbsp;</p><p>Dựa trên di sản và những đóng góp của mình cho đất nước, Tiến sĩ Đoàn giữ các chức vụ đáng chú ý như Đại biểu Hội đồng Nhân dân Thành phố Hà Nội, chuyên gia tư vấn ASEAN Bắc, Chủ tịch Hội đồng Doanh nghiệp gia đình Việt Nam, Phó Chủ tịch Trung ương Hiệp hội Doanh nghiệp Việt Nam, Câu lạc bộ Sao Đỏ (Red Star) và những người khác.&nbsp;</p><p>Tiến sĩ Đoàn cũng là một chiến lược gia kinh doanh được đánh giá cao trong khu vực ASEAN với kinh nghiệm và nền tảng học vấn của mình. Ông đã từng là cố vấn đáng tin cậy cho vô số các công ty, tập đoàn quốc tế và trong nước cũng như phục vụ trong Hội đồng của nhiều Trường Đại học và cơ sở đào tạo danh tiếng. Tiến sĩ Đoàn có bằng Tiến sĩ kinh tế, bằng Thạc sĩ Quản trị Kinh doanh của Học viện Công nghệ Châu Á và cũng đã hoàn thành chương trình đào tạo hai năm tại Đại học Stanford.</p>'),
(11, 'Botble\\Page\\Models\\Page', 6, 26, 'image', 'image_sec_1_page_team', 'dr.png'),
(12, 'Botble\\Page\\Models\\Page', 6, 27, 'repeater', 'list_teams', '[]'),
(13, 'Botble\\Page\\Models\\Page', 7, 32, 'text', 'title_sec_1_page_about', 'Thành lập năm 1993 với khởi nguồn từ lĩnh vực phân phối hàng hóa, Phú Thái Holdings Group hiện là một tập đoàn phân phối, đầu tư và kinh doanh đa ngành hàng đầu Việt Nam, hướng tới mục tiêu phát triển toàn cầu.'),
(14, 'Botble\\Page\\Models\\Page', 7, 33, 'wysiwyg', 'desc_sec_1_page_about', '<p>Từ đó, chúng tôi đã trở thành đối tác tin cậy hàng đầu cho các công ty quốc tế tại thị trường Việt Nam. Quan trọng của sự thành công đó là chúng tôi không ngừng nỗ lực xây dựng quan hệ đối tác bền vững với các công ty quốc tế nổi tiếng như P&G, Caterpillar (Mỹ), Jaguar - Landrover (thông qua tập đoàn Hà Lan Pon), Elphinstone (Úc), BJC (Thái Lan), Itochu Group (Nhật Bản), Medion (Indonesia), và các tổ chức khác, mang lại đầu tư và đóng góp vào sự tăng trưởng kinh tế của đất nước.</p>\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	'),
(86, 'Botble\\Page\\Models\\Page', 7, 96, 'image', 'image_sec_1_about', 'about-1.png'),
(87, 'Botble\\Page\\Models\\Page', 7, 97, 'text', 'title_sec_2_ablout', 'CEO - Ông Phạm Đình Đoàn'),
(88, 'Botble\\Page\\Models\\Page', 7, 98, 'image', 'image_sec_2_about', 'leader-1.png'),
(89, 'Botble\\Page\\Models\\Page', 7, 99, 'textarea', 'desc_about_2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(90, 'Botble\\Page\\Models\\Page', 7, 100, 'text', 'title_sec_3_about', 'Tầm nhìn'),
(91, 'Botble\\Page\\Models\\Page', 7, 101, 'text', 'title_2_sec_3_about', 'Trở thành Tập đoàn Phân phối & Đầu tư đa ngành hàng đầu tại Việt Nam với khát vọng phát triển toàn cầu.'),
(92, 'Botble\\Page\\Models\\Page', 7, 102, 'wysiwyg', 'content_sec_3_about', '</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	'),
(135, 'Botble\\Page\\Models\\Page', 12, 123, 'text', 'title_sec_6_about', ''),
(136, 'Botble\\Page\\Models\\Page', 12, 124, 'repeater', 'content_sec_6_about', '[]'),
(93, 'Botble\\Page\\Models\\Page', 7, 103, 'text', 'title_sec_4_about', 'Sứ mệnh'),
(94, 'Botble\\Page\\Models\\Page', 7, 104, 'text', 'title_2_sec_4_about', 'Mang tới những sản phẩm, dịch vụ đẳng cấp quốc tế nhằm nâng tầm chất lượng cuộc sống của người Việt và hướng tới phát triển bền vững.'),
(15, 'Botble\\Page\\Models\\Page', 7, 34, 'repeater', 'sec_2_page_about', '[[{\"field_item_id\":35,\"type\":\"text\",\"slug\":\"title\",\"value\":\"D\\u01b0\\u1edbi s\\u1ef1 l\\u00e3nh \\u0111\\u1ea1o c\\u1ee7a \\u00f4ng Ph\\u1ea1m \\u0110\\u00ecnh \\u0110o\\u00e0n, ch\\u00fang t\\u00f4i \\u0111\\u00e3 gi\\u00fap c\\u00e1c \\u0111\\u1ed1i t\\u00e1c c\\u1ee7a m\\u00ecnh \\u0111i\\u1ec1u h\\u01b0\\u1edbng th\\u00e0nh c\\u00f4ng th\\u1ecb tr\\u01b0\\u1eddng kh\\u00f4ng ng\\u1eebng ph\\u00e1t tri\\u1ec3n c\\u1ee7a Vi\\u1ec7t Nam trong ba th\\u1eadp k\\u1ef7\"},{\"field_item_id\":36,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"C\\u1ed1t l\\u00f5i c\\u1ee7a s\\u1ef1 th\\u00e0nh c\\u00f4ng chung c\\u1ee7a ch\\u00fang t\\u00f4i l\\u00e0 \\u00e1p d\\u1ee5ng tri\\u1ebft l\\u00fd kinh doanh b\\u1ec1n v\\u1eefng, h\\u00e0i h\\u00f2a v\\u00e0 t\\u1ed1i \\u0111a h\\u00f3a gi\\u00e1 tr\\u1ecb cho t\\u1ea5t c\\u1ea3 c\\u00e1c b\\u00ean li\\u00ean quan c\\u1ee7a ch\\u00fang t\\u00f4i: kh\\u00e1ch h\\u00e0ng, \\u0111\\u1ed1i t\\u00e1c, nh\\u00e0 \\u0111\\u1ea7u t\\u01b0, nh\\u00e2n vi\\u00ean v\\u00e0 c\\u1ed9ng \\u0111\\u1ed3ng c\\u1ee7a ch\\u00fang t\\u00f4i.\"},{\"field_item_id\":37,\"type\":\"image\",\"slug\":\"image\",\"value\":\"leader.jpg\"}],[{\"field_item_id\":35,\"type\":\"text\",\"slug\":\"title\",\"value\":\"V\\u1edbi t\\u01b0 c\\u00e1ch l\\u00e0 m\\u1ed9t nh\\u00f3m, ch\\u00fang t\\u00f4i mu\\u1ed1n ti\\u1ebfp t\\u1ee5c \\u0111\\u1ea9y nhanh h\\u00e0nh tr\\u00ecnh c\\u1ee7a m\\u00ecnh b\\u1eb1ng c\\u00e1ch ph\\u00e1t tri\\u1ec3n h\\u01a1n n\\u1eefa quan h\\u1ec7 \\u0111\\u1ed1i t\\u00e1c chi\\u1ebfn l\\u01b0\\u1ee3c\"},{\"field_item_id\":36,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\\u0110\\u1eb7c bi\\u1ec7t trong c\\u00e1c l\\u0129nh v\\u1ef1c ph\\u00e2n ph\\u1ed1i, b\\u1ea5t \\u0111\\u1ed9ng s\\u1ea3n, \\u0111\\u1ea7u t\\u01b0, c\\u00f4ng ngh\\u1ec7 v\\u00e0 kh\\u1edfi nghi\\u1ec7p, v\\u00e0 phong c\\u00e1ch s\\u1ed1ng t\\u1ea1i Vi\\u1ec7t Nam v\\u00e0 tr\\u00ean to\\u00e0n th\\u1ebf gi\\u1edbi khi ch\\u00fang t\\u00f4i h\\u01b0\\u1edbng t\\u1edbi s\\u1ef1 m\\u1edf r\\u1ed9ng to\\u00e0n c\\u1ea7u. Th\\u00e0nh t\\u00edch 30 n\\u0103m c\\u1ee7a ch\\u00fang t\\u00f4i, \\u0111\\u01b0\\u1ee3c \\u0111\\u00e1nh d\\u1ea5u b\\u1eb1ng s\\u1ef1 c\\u1ed1ng hi\\u1ebfn cho s\\u1ef1 xu\\u1ea5t s\\u1eafc, li\\u00eam ch\\u00ednh v\\u00e0 minh b\\u1ea1ch khi\\u1ebfn Ph\\u00fa Th\\u00e1i Holdings tr\\u1edf th\\u00e0nh \\u0111\\u1ed1i t\\u00e1c l\\u00fd t\\u01b0\\u1edfng \\u0111\\u1ec3 \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c nh\\u1eefng t\\u1ea7m cao m\\u1edbi.\"},{\"field_item_id\":37,\"type\":\"image\",\"slug\":\"image\",\"value\":\"group.jpg\"}]]'),
(16, 'Botble\\Page\\Models\\Page', 7, 38, 'text', 'title_sec_3_page_about', 'TRIẾT LÝ KINH DOANH'),
(17, 'Botble\\Page\\Models\\Page', 7, 39, 'text', 'title_1_sec_3_page_about', ' TẦM NHÌN'),
(18, 'Botble\\Page\\Models\\Page', 7, 40, 'text', 'dec_1_sec_3_page_about', ' Trở thành Tập đoàn đầu tư hàng đầu tại Việt Nam với khát vọng phát triển toàn cầu'),
(19, 'Botble\\Page\\Models\\Page', 7, 41, 'text', 'title_2_sec_3_page_about', 'SỨ MỆNH '),
(20, 'Botble\\Page\\Models\\Page', 7, 42, 'text', 'desc_2_sec_3_page_about', 'Đầu tư vào các sản phẩm và dịch vụ nhằm nâng cao chất lượng cuộc sống của người Việt Nam, tiến bộ xã hội và hướng tới phát triển bền vững'),
(21, 'Botble\\Page\\Models\\Page', 7, 43, 'text', 'title_3_sec_3_page_about', 'GIÁ TRỊ CỐT LÕI '),
(22, 'Botble\\Page\\Models\\Page', 7, 44, 'image', 'image_1_sec_3_page_about', 'untitled-2-01-2.png'),
(23, 'Botble\\Page\\Models\\Page', 8, 45, 'repeater', 'contact_list', '[[{\"field_item_id\":46,\"type\":\"image\",\"slug\":\"image\",\"value\":\"icon-contact-1.png\"},{\"field_item_id\":47,\"type\":\"text\",\"slug\":\"title\",\"value\":\"H\\u00ecnh \\u1ea3nh \"},{\"field_item_id\":48,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\\u0110\\u1ed1i v\\u1edbi t\\u1ea5t c\\u1ea3 c\\u00e1c y\\u00eau c\\u1ea7u v\\u1ec1 ph\\u01b0\\u01a1ng ti\\u1ec7n truy\\u1ec1n th\\u00f4ng, vui l\\u00f2ng g\\u1eedi email cho ch\\u00fang t\\u00f4i th\\u00f4ng tin c\\u1ee7a b\\u1ea1n t\\u1ea1i:\"},{\"field_item_id\":49,\"type\":\"text\",\"slug\":\"info\",\"value\":\"contact@email.com.vn\"}],[{\"field_item_id\":46,\"type\":\"image\",\"slug\":\"image\",\"value\":\"icon-contact-2.png\"},{\"field_item_id\":47,\"type\":\"text\",\"slug\":\"title\",\"value\":\" Nh\\u00e0 \\u0111\\u1ea7u t\\u01b0 v\\u00e0 quan h\\u1ec7 \\u0111\\u1ed1i t\\u00e1c\"},{\"field_item_id\":48,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"N\\u1ebfu b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm m\\u1ed9t \\u0111\\u1ed1i t\\u00e1c \\u0111\\u1ecba ph\\u01b0\\u01a1ng m\\u1ea1nh m\\u1ebd ho\\u1eb7c mu\\u1ed1n k\\u1ebft n\\u1ed1i v\\u00e0 t\\u00ecm hi\\u1ec3u th\\u00eam, vui l\\u00f2ng li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i theo \\u0111\\u1ecba ch\\u1ec9:\"},{\"field_item_id\":49,\"type\":\"text\",\"slug\":\"info\",\"value\":\"contact@email.com.vn\"}],[{\"field_item_id\":46,\"type\":\"image\",\"slug\":\"image\",\"value\":\"icon-contact-3.png\"},{\"field_item_id\":47,\"type\":\"text\",\"slug\":\"title\",\"value\":\"C\\u01a1 h\\u1ed9i ngh\\u1ec1 nghi\\u1ec7p\"},{\"field_item_id\":48,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"T\\u00ecm ki\\u1ebfm m\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c m\\u1edbi, b\\u1ed5 \\u00edch vui l\\u00f2ng g\\u1eedi email cho ch\\u00fang t\\u00f4i k\\u00e8m theo th\\u00f4ng tin c\\u1ee7a b\\u1ea1n theo \\u0111\\u1ecba ch\\u1ec9:\\n\"},{\"field_item_id\":49,\"type\":\"text\",\"slug\":\"info\",\"value\":\"contact@email.com.vn\"}]]'),
(24, 'Botble\\Page\\Models\\Page', 8, 50, 'text', 'title_brands', ' Thương hiệu và doanh nghiệp'),
(25, 'Botble\\Page\\Models\\Page', 8, 51, 'textarea', 'desc_brands', 'Nếu bạn quan tâm đến các doanh nghiệp của chúng tôi và muốn biết thêm thông tin hoặc có bất kỳ câu hỏi nào, vui lòng chọn một trong các cách sau:'),
(26, 'Botble\\Page\\Models\\Page', 8, 52, 'repeater', 'list_brands', '[[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-2.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-1.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"https:\\/\\/www.phuthaicat.com.vn\\/\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-6.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"https:\\/\\/www.landrover-vn.com\\/explore-land-rover-articles-phu-thai-new-showroom-opening-in-hochiminh\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-5.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"https:\\/\\/kowil.vn\\/\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-4.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"https:\\/\\/phuthaigroup.com\\/\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-3.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"lgoo.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"https:\\/\\/greenvet.com.vn\\/\"}]]'),
(27, 'Botble\\Page\\Models\\Page', 8, 54, 'text', 'title_location', ' Địa điểm'),
(28, 'Botble\\Page\\Models\\Page', 8, 55, 'text', 'desc_location', ' Ý kiến ​​của bạn rất quan trọng đối với chúng tôi khi chúng tôi cố gắng cung cấp cho bạn, khách hàng, những sản phẩm có giá trị. Chúng tôi đánh giá cao tình yêu và sự quan tâm của bạn.'),
(29, 'Botble\\Page\\Models\\Page', 9, 57, 'repeater', 'banner_home', '[[{\"field_item_id\":58,\"type\":\"text\",\"slug\":\"title\",\"value\":\"T\\u1eacP \\u0110O\\u00c0N PH\\u00c2N PH\\u1ed0I & \\u0110\\u1ea6U T\\u01af \\u0110A NG\\u00c0NH\"},{\"field_item_id\":110,\"type\":\"text\",\"slug\":\"title_2\",\"value\":\"H\\u00c0NG \\u0110\\u1ea6U VI\\u1ec6T NAM\"},{\"field_item_id\":59,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/ve-chung-toi\"},{\"field_item_id\":60,\"type\":\"image\",\"slug\":\"image\",\"value\":\"banner-3.png\"}],[{\"field_item_id\":58,\"type\":\"text\",\"slug\":\"title\",\"value\":\"T\\u1eacP \\u0110O\\u00c0N PH\\u00c2N PH\\u1ed0I & \\u0110\\u1ea6U T\\u01af \\u0110A NG\\u00c0NH\"},{\"field_item_id\":110,\"type\":\"text\",\"slug\":\"title_2\",\"value\":\"H\\u00c0NG \\u0110\\u1ea6U VI\\u1ec6T NAM\"},{\"field_item_id\":59,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/ve-chung-toi\"},{\"field_item_id\":60,\"type\":\"image\",\"slug\":\"image\",\"value\":\"banner-3.png\"}]]'),
(30, 'Botble\\Page\\Models\\Page', 9, 61, 'repeater', 'sumary_home', '[[{\"field_item_id\":62,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":63,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"N\\u0103m <br>Ho\\u1ea1t \\u0110\\u1ed9ng\"},{\"field_item_id\":111,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-1.svg\"}],[{\"field_item_id\":62,\"type\":\"text\",\"slug\":\"title\",\"value\":\"50 \"},{\"field_item_id\":63,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"\\u0110\\u01a1n v\\u1ecb <br>tr\\u1ef1c thu\\u1ed9c\"},{\"field_item_id\":111,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-2.svg\"}],[{\"field_item_id\":62,\"type\":\"text\",\"slug\":\"title\",\"value\":\"5000\"},{\"field_item_id\":63,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Th\\u00e0nh <br> vi\\u00ean\"},{\"field_item_id\":111,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-3.svg\"}]]'),
(31, 'Botble\\Page\\Models\\Page', 9, 64, 'text', 'title_about_page_home', 'VỀ CHÚNG TÔI '),
(32, 'Botble\\Page\\Models\\Page', 9, 65, 'textarea', 'content_about_page_home', 'Dưới sự lãnh đạo của ông Phạm Đình Đoàn, chúng tôi đã giúp các đối tác của mình điều hướng thành công thị trường không ngừng phát triển của Việt Nam trong ba thập kỷ'),
(99, 'Botble\\Page\\Models\\Page', 9, 113, 'textarea', 'video_about_home', 'https://www.youtube.com/embed/gFakBWQmpXo?si=VRwqiNZZfhC-6pp4'),
(33, 'Botble\\Page\\Models\\Page', 9, 66, 'text', 'link_about_page_home', '/ve-chung-toi'),
(34, 'Botble\\Page\\Models\\Page', 9, 67, 'text', 'title_business_page_home', 'LĨNH VỰC KINH DOANH'),
(35, 'Botble\\Page\\Models\\Page', 9, 68, 'repeater', 'business_page_home', '[[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"M\\u00c1Y M\\u00d3C\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/business#business_1\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-1-1.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-1-1.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"PH\\u00c2N PH\\u1ed0I\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/business#business_2\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-2.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-2-1.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"XE H\\u01a0I\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/business#business_3\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-3.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"mobility-phuthaiholdings-home.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"TH\\u1edcI TRANG\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/business#business_4\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-4.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-4-1.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"TH\\u00da Y\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\\/business#business_5\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-5.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-5-1.jpg\"}]]'),
(36, 'Botble\\Page\\Models\\Page', 10, 57, 'repeater', 'banner_home', '[[{\"field_item_id\":58,\"type\":\"text\",\"slug\":\"title\",\"value\":\"a leading multi-disciplinary investment group\"},{\"field_item_id\":110,\"type\":\"text\",\"slug\":\"title_2\",\"value\":\" in Vietnam\"},{\"field_item_id\":59,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/about-us-1\"},{\"field_item_id\":60,\"type\":\"image\",\"slug\":\"image\",\"value\":\"banner-1.jpg\"}],[{\"field_item_id\":58,\"type\":\"text\",\"slug\":\"title\",\"value\":\"a leading multi-disciplinary investment group\"},{\"field_item_id\":110,\"type\":\"text\",\"slug\":\"title_2\",\"value\":\" in Vietnam\"},{\"field_item_id\":59,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/about-us-1\"},{\"field_item_id\":60,\"type\":\"image\",\"slug\":\"image\",\"value\":\"banner-1.jpg\"}]]'),
(37, 'Botble\\Page\\Models\\Page', 10, 61, 'repeater', 'sumary_home', '[[{\"field_item_id\":62,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":63,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"YEARS OF OPERATION\"},{\"field_item_id\":111,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-1.svg\"}],[{\"field_item_id\":62,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":63,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"SUBSIDIARIES\"},{\"field_item_id\":111,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-2.svg\"}],[{\"field_item_id\":62,\"type\":\"text\",\"slug\":\"title\",\"value\":\"5000\"},{\"field_item_id\":63,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"EMPLOYEES\"},{\"field_item_id\":111,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-3.svg\"}]]'),
(38, 'Botble\\Page\\Models\\Page', 10, 64, 'text', 'title_about_page_home', 'ABOUT US'),
(39, 'Botble\\Page\\Models\\Page', 10, 65, 'textarea', 'content_about_page_home', 'Under the leadership of Mr. Pham Dinh Doan, we have helped our partners successfully navigate Vietnam\'s ever-evolving market for three decades'),
(40, 'Botble\\Page\\Models\\Page', 10, 66, 'text', 'link_about_page_home', 'en/about-us-1'),
(41, 'Botble\\Page\\Models\\Page', 10, 67, 'text', 'title_business_page_home', 'BUSINESS STRUCTURE'),
(42, 'Botble\\Page\\Models\\Page', 10, 68, 'repeater', 'business_page_home', '[[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"HEAVY MACHINERY\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/business#business_1\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"ct-logo-1.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-1-1.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"DISTRIBUTION\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/business#business_2\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-2.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-2-1.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"INVESTMENT\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/business#business_3\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-3.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"mobility-phuthaiholdings-home.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"LIFE STYLE\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/business#business_4\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-4.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-4-1.jpg\"}],[{\"field_item_id\":69,\"type\":\"text\",\"slug\":\"title\",\"value\":\"TECHNOLOGY & START-UP\"},{\"field_item_id\":70,\"type\":\"text\",\"slug\":\"link\",\"value\":\"en\\/business#business_5\"},{\"field_item_id\":71,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-5.png\"},{\"field_item_id\":72,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-5-1.jpg\"}]]'),
(43, 'Botble\\Page\\Models\\Page', 11, 45, 'repeater', 'contact_list', '[[{\"field_item_id\":46,\"type\":\"image\",\"slug\":\"image\",\"value\":\"icon-contact-1.png\"},{\"field_item_id\":47,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Media\"},{\"field_item_id\":48,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"For all media inquiries, please email us your information at:\"},{\"field_item_id\":49,\"type\":\"text\",\"slug\":\"info\",\"value\":\"contact@email.com.vn\"}],[{\"field_item_id\":46,\"type\":\"image\",\"slug\":\"image\",\"value\":\"icon-contact-2.png\"},{\"field_item_id\":47,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Investors and Partnership\"},{\"field_item_id\":48,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"If you\\u2019re looking for a strong local partner or are interested in connecting and learning more, please contact us at:\"},{\"field_item_id\":49,\"type\":\"text\",\"slug\":\"info\",\"value\":\"contact@email.com.vn\"}],[{\"field_item_id\":46,\"type\":\"image\",\"slug\":\"image\",\"value\":\"icon-contact-3.png\"},{\"field_item_id\":47,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Career Opportunities\"},{\"field_item_id\":48,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Looking for a new, rewarding work environment please send us an email with your information at:\"},{\"field_item_id\":49,\"type\":\"text\",\"slug\":\"info\",\"value\":\"contact@email.com.vn\"}]]'),
(44, 'Botble\\Page\\Models\\Page', 11, 50, 'text', 'title_brands', 'Brands and business'),
(45, 'Botble\\Page\\Models\\Page', 11, 51, 'textarea', 'desc_brands', 'If you’re interested in our businesses and would like to get more information or have any inquiries please select from one of the following:'),
(46, 'Botble\\Page\\Models\\Page', 11, 52, 'repeater', 'list_brands', '[[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-3.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-1.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-5.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-6.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"logo-1.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}],[{\"field_item_id\":53,\"type\":\"image\",\"slug\":\"image\",\"value\":\"ct-logo-3.png\"},{\"field_item_id\":56,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"}]]'),
(47, 'Botble\\Page\\Models\\Page', 11, 54, 'text', 'title_location', ''),
(48, 'Botble\\Page\\Models\\Page', 11, 55, 'text', 'desc_location', ''),
(49, 'Botble\\Page\\Models\\Page', 12, 32, 'text', 'title_sec_1_page_about', 'Established in 1993, Phu Thai Holdings Group has been a pioneer and leader in bridging Vietnam and the world'),
(50, 'Botble\\Page\\Models\\Page', 12, 33, 'wysiwyg', 'desc_sec_1_page_about', '<p>We have since grown into a top trusted partner for international companies in the Vietnamese market. Critical to that success have been our continued efforts to build sustainable partnerships with well-known international companies such as P&amp;G, Caterpillar (USA), Jaguar - Landrover (via Dutch corporation Pon), Elphinstone(Australia), BJC (Thailand), Itochu Group (Japan), Medion (Indonesia), and others, bringing investment and contributing to the economic growth of the country.</p>');
INSERT INTO `custom_fields` (`id`, `use_for`, `use_for_id`, `field_item_id`, `type`, `slug`, `value`) VALUES
(51, 'Botble\\Page\\Models\\Page', 12, 34, 'repeater', 'sec_2_page_about', '[[{\"field_item_id\":35,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Under the leadership of Dr. Doan Dinh Pham, we\\u2019ve helped our partners successfully navigate Vietnam\\u2019s ever-evolving market for three decades\"},{\"field_item_id\":36,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"At the core of our mutual success has been embracing the philosophy of sustainable, harmonious business and maximizing values for all of our stakeholders; our customers, partners, investors, employees, and our community.\"},{\"field_item_id\":37,\"type\":\"image\",\"slug\":\"image\",\"value\":\"leader.jpg\"}],[{\"field_item_id\":35,\"type\":\"text\",\"slug\":\"title\",\"value\":\"As a group we want to continue to accelerate our journey by further developing strategic partnerships\"},{\"field_item_id\":36,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Particularly in the fields of distribution, real estate, investment, technology and start-up, and lifestyle, in Vietnam and throughout the world as we look further towards global expansion. Our 30 year track record, highlighted by our dedication to excellence, integrity, and transparency make us an ideal partner to achieve new great heights.\"},{\"field_item_id\":37,\"type\":\"image\",\"slug\":\"image\",\"value\":\"group.jpg\"}]]'),
(52, 'Botble\\Page\\Models\\Page', 12, 38, 'text', 'title_sec_3_page_about', 'OUR STATEMENT'),
(53, 'Botble\\Page\\Models\\Page', 12, 39, 'text', 'title_1_sec_3_page_about', 'VISION'),
(54, 'Botble\\Page\\Models\\Page', 12, 40, 'text', 'dec_1_sec_3_page_about', 'To be a leading investment group in Viet Nam with aspiration for global development'),
(55, 'Botble\\Page\\Models\\Page', 12, 41, 'text', 'title_2_sec_3_page_about', 'MISSION'),
(56, 'Botble\\Page\\Models\\Page', 12, 42, 'text', 'desc_2_sec_3_page_about', 'Invest in products and services which improve the quality of Vietnamese people’s life, social progress and towards sustainable development'),
(57, 'Botble\\Page\\Models\\Page', 12, 43, 'text', 'title_3_sec_3_page_about', 'CORE VALUE'),
(58, 'Botble\\Page\\Models\\Page', 12, 44, 'image', 'image_1_sec_3_page_about', 'core-value.png'),
(59, 'Botble\\Page\\Models\\Page', 13, 23, 'text', 'title_sec_1_page_team', 'Dr. PHAM DINH DOAN'),
(60, 'Botble\\Page\\Models\\Page', 13, 24, 'text', 'title_2_sec_1_page_team', 'Chairman of Phu Thai Holdings Group'),
(61, 'Botble\\Page\\Models\\Page', 13, 25, 'wysiwyg', 'desc_sec_1_page_team', '<p><strong>Dr. Doan Dinh Pham is the founder and chairman of Phu Thai Holdings Group which he established in 1993 on the cusp of Vietnam’s integration into the global world. Guided by his vision and driven by his desire to help his country accelerate development and improve quality of life, he signed key partnerships with international conglomerates like P&G on his way to becoming one of the country’s leading distributors.</strong></p>\n	\n	\n	\n	<p><strong>Building on his legacy and his contributions to the country, Dr. Doan holds notable positions such as a people’s council member of Hanoi, ASEAN Bac consultant, Chairman of the Vietnam Council of Family Enterprises, Vice Chairman of the Central Committee of Vietnam Business Associations, Sao Do (Red Star) Club and others.</strong></p>\n	\n	\n	\n	<p><strong>Dr. Doan is also a highly respected business strategist in the ASEAN region given his experience and academic background. He has been a trusted advisor for a multitude of international and domestic corporations and groups as well as served on the councils of many universities and prestigious training institutions. Dr. Doan holds a PhD in economics, a MBA from the Asian Institute of Technology, and also completed a two year training program at Stanford University.</strong></p>\n	\n	\n	\n	</undefined>\n	\n	</undefined>\n	\n	'),
(62, 'Botble\\Page\\Models\\Page', 13, 26, 'image', 'image_sec_1_page_team', 'dr.png'),
(63, 'Botble\\Page\\Models\\Page', 13, 27, 'repeater', 'list_teams', '[]'),
(64, 'Botble\\Page\\Models\\Page', 14, 13, 'text', 'title_sec_1', 'PHU THAI ECOSYSTEM'),
(65, 'Botble\\Page\\Models\\Page', 14, 14, 'textarea', 'desc_sec_1', 'Approaching our 30 years anniversary milestone, Phu Thai Holdings Group now includes a network of over 30 subsidiaries led by teams of veteran managers and 5,000 employees generating revenue of over 10,000 Billion Vietnamese and an average growth rate of 25% annually. This success is due in large part to our great network of trusted partners and a fine-tuned business ecosystem that spans nationwide across diverse industries. Looking forward to the next 30 years, we hope to build more long-lasting partnerships to accelerate our growth beyond the borders of Vietnam.'),
(66, 'Botble\\Page\\Models\\Page', 14, 15, 'repeater', 'sumarys', '[[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"YEARS OF OPERATION\"},{\"field_item_id\":73,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-1.svg\"}],[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"title\",\"value\":\"30\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"SUBSIDIARIES\"},{\"field_item_id\":73,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-2.svg\"}],[{\"field_item_id\":16,\"type\":\"text\",\"slug\":\"title\",\"value\":\"5000\"},{\"field_item_id\":17,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"EMPLOYEES\"},{\"field_item_id\":73,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-index-3.svg\"}]]'),
(67, 'Botble\\Page\\Models\\Page', 14, 18, 'repeater', 'list_compaies', '[[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"PHU THAI CAT\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-1.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Capitalizing on the real estate and development boom in Vietnam, we\\u2019ve partner with the world\\u2019s number one manufacturer of construction equipment and machines. Phu Thai CAT is the exclusive official dealer of Caterpillar in Vietnam, which encompasses the three brands CAT, Perkins, and JLG. We provide construction machines, industrial machines, generators, trucks, forklifts and engines, project management, installation instruction; repair and maintenance services; and after-sales services. In terms of machinery, engines, and generators we are currently number two with 30% of the market share despite fierce competition and many cheaper alternatives.\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-1-1.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"PHU THAI GROUP\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-2.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Dr. Doan first established Phu Thai Group (PTG) in 1993 with an initial core business of distribution, taking advantage of Vietnam\\u2019s integration into the global world. Partnering with international conglomerate P&G, we built the biggest distribution network in Northern Vietnam before expanding nationally. In the spirit of cooperation and to accelerate growth, PTG brought on a strategic equity partner in Berli Jucker (BJC). Following the successful venture of Phu Thai Group, Dr. Doan then established Phu Thai Holdings Group where PTG would become a subsidiary. We\\u2019ve since expanded and become one Vietnam\\u2019s leading companies distributing cosmetics, household utensils, FMCG and providing warehousing and logistics services to thousands of agencies and shops nationwide.\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-2-1.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"MOBILITIES\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-3.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Phu Thai Mobility is the cooperation between Phu Thai Holdings Group and PON \\u2013 a Dutch conglomerate with 70 years of experience in trading many passenger, tourist and luxury automotive brands throughout Europe and North America. Phu Thai Mobility is the exclusive genuine importer, distributor and only after-sales service provider for two luxury car brands \\u2013 Jaguar and Land Rover \\u2013 in Vietnam.\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-3-1.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"KOWIL\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-4.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"In order for brands to be successful in Vietnam, distribution networks are an absolute requirement. With a large national retail network of over 1,000 shops and thousands of distribution dealers, Kowil Vietnam, the exclusive reliable partner of Itochu (Japan), is one of the leading companies for fashion brands distribution in Vietnam. We distribute a wide array of brands franchised or licensed from our Japanese partners including prestigious brands such as Owen, Wine, Ojean and sportswear (Dunlop)\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-4-1.jpg\"}],[{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"name\",\"value\":\"GREEN VET\"},{\"field_item_id\":20,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"logo-busi-5.jpg\"},{\"field_item_id\":21,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Green Group researches, applies products and solutions for animal healthcare and nutrition in the trend of biosecurity through a nationwide network of hundreds of agencies, farms, factories, and veterinary branches. Other partners of Green Vet include Medion (Indonesia), Cipla (India), CJ (RoK), MVP (Malaysia), Bovet & Bavetta (Czech), Miavit (Germany).\"},{\"field_item_id\":22,\"type\":\"image\",\"slug\":\"banner\",\"value\":\"b-5-1.jpg\"}]]'),
(68, 'Botble\\Page\\Models\\Page', 15, 8, 'repeater', 'sustainables', '[[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"BUSINESS STRATEGY\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"11.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-2.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"PTHG will be recognized as a leading multi-industry investment and distribution group in Vietnam, operating in many business fields with notable performance and achievements. Not only expanding multi-industry and multi-field operations, but also aiming to achieve efficiency and leading position in Vietnam. This demonstrates commitment and continuous effort to develop and maintain success in a diverse and competitive business environment.\"}],[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"CORPORATE CULTURE\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"12.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-1.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Phu Thai\'s corporate culture and people are always pioneering, creative, professional, cohesive, constantly growing strong,... there is pride and strong connection between member and affiliated units. . Phu Thai will continue to grow rapidly from \\\"Good\\\" to \\\"Great\\\", becoming a leading name in Vietnam. And accordingly, each employee will cultivate and aim to become good people. great, contributing many values to the community and society.\"}],[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"SOCIAL RESPONSIBILITY\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"13.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-2.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"At PTHG, we always strive for more sustainable environmental and social development. PTHG always considers social contribution activities as part of its responsibility to the community to contribute to the long-term, sustainable development of Vietnamese society. Over the years, PTHG has made efforts Initiate, sponsor and participate in many meaningful and useful social programs.\"}],[{\"field_item_id\":9,\"type\":\"text\",\"slug\":\"title\",\"value\":\"ENVIRONMENTAL PROTECTION\"},{\"field_item_id\":10,\"type\":\"image\",\"slug\":\"image\",\"value\":\"14.png\"},{\"field_item_id\":11,\"type\":\"image\",\"slug\":\"icon\",\"value\":\"icon-sus-1.png\"},{\"field_item_id\":12,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority. Our group along with our member companies sponsor external environmental protection and awareness programs as well implement internal policies to ensure our CSR goals are met. Change must start from within which is why all of our 5,000 employees embrace and support our efforts and further perpetuate the spirit within their own communities.\"}]]'),
(69, 'Botble\\Page\\Models\\Page', 16, 4, 'repeater', 'milestones', '[[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"1993\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Established in 1993, Phu Thai Holdings Group has been a pioneer and leader in bridging Vietnam and the world. We have since grown into a top trusted partner for international companies in the Vietnamese market.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-1.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2001\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"As a subsidiary of Phu Thai, Greengroup commenced operations mainly in the fields of supplying veterinary medicinal products for livestock and poultry, aquatic veterinary medicines, additives used in animal feed processing, slaughtering and fresh food processing, and supplying animal husbandry equipment... \"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-2.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Cultivated from the fashion distribution business of Phu Thai Holdings, Kowil Fashion Joint Stock Company was established in an effort to create elegance fashion solutions from the value of Vietnamese people, for the Vietnamese people by exploiting advance fashion technologies, the industry\'s management quintessence gained from international co-operation.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-3.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2010\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"On 23rd May 2010, Phu Thai Industries Company Limited trading as PHU THAI CAT was appointed by Caterpillar as the Sole Authorized Dealer for all of Vietnam. Caterpillar is the world\\u2019s largest manufacturer of construction and mining equipment, diesel and natural gas engines...\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-5.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2019\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Established under the cooperation between Phu Thai Holdings and PON - a Dutch corporation with 70 years of experience in trading many brands of passenger cars, touring and luxury cars throughout Europe and North America. Phu Thai Mobility becomes the exclusive importer and distributor of Jaguar and Land Rover brands, including genuine spare parts in Vietnam.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-6.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2020-2021\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"BK Fund: BK Fund is built from a network of Alumni of Hanoi University of Science and Technology with thousands of entrepreneurs. BK Fund is a venture capital fund and a place to provide a network of advisors and business partners for inventions, inventions, and startups from the concept stage of commercialization.\\n\\nThinkzone: ThinkZone Ventures is the largest local-resourced VC firm in Vietnam, focusing on Pre-seed to Series A tech startups from diverse verticals, with investment size up to $3 million. We also support early-stage startups through ThinkZone Accelerator program.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-4.png\"}],[{\"field_item_id\":5,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2022\"},{\"field_item_id\":6,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"Bifrost Investment Group was established as the research, development, and investment arm of Phu Thai Holdings Group. In addition to making our own investments, our experienced international team focuses on finding investment opportunities for Phu Thai as well as other Vietnamese and international partners across all industries. Bifrost is also currently handling the investment and equity interest of Dr. Doan in two funds, Thinkzone and BK fund.\"},{\"field_item_id\":7,\"type\":\"image\",\"slug\":\"image\",\"value\":\"mile-7.png\"}]]'),
(70, 'Botble\\Page\\Models\\Page', 17, 1, 'repeater', 'awards', '[[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Second & Third Labor Medal \"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Vietnam Excellent Brand\"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2006\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Top 100 Trade Service Award\"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2006\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Top 100 Vietnam\'s Top Brands\"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2005\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Gold trophy in contributing to Community Development \"}],[{\"field_item_id\":2,\"type\":\"text\",\"slug\":\"year\",\"value\":\"2007\"},{\"field_item_id\":3,\"type\":\"text\",\"slug\":\"name_award\",\"value\":\"Gold Star Award\"}]]'),
(71, 'Botble\\Page\\Models\\Page', 2, 74, 'text', 'title_sec_1_award', 'giải thưởng <br> tập đoàn - Chủ tịch Phạm Đình Toàn'),
(72, 'Botble\\Page\\Models\\Page', 2, 75, 'text', 'rank_award_1', '01'),
(73, 'Botble\\Page\\Models\\Page', 2, 76, 'text', 'title_award_1', 'Huân Chương Lao động hạng Nhì'),
(74, 'Botble\\Page\\Models\\Page', 2, 77, 'text', 'desc_award_1', ''),
(75, 'Botble\\Page\\Models\\Page', 2, 78, 'textarea', 'desc_log_award_1', ''),
(76, 'Botble\\Page\\Models\\Page', 2, 79, 'repeater', 'list_awrad_1', '[[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Hu\\u00e2n Ch\\u01b0\\u01a1ng Lao \\u0111\\u1ed9ng h\\u1ea1ng Nh\\u00ec\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1eb1ng khen c\\u1ee7a Th\\u1ee7 t\\u01b0\\u1edbng Ch\\u00ednh ph\\u1ee7\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1eb1ng khen c\\u1ee7a B\\u1ed9 C\\u00f4ng Th\\u01b0\\u01a1ng\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1eb1ng khen c\\u1ee7a U\\u1ef7 ban Qu\\u1ed1c gia v\\u1ec1 H\\u1ee3p t\\u00e1c Kinh t\\u1ebf qu\\u1ed1c t\\u1ebf\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1eb1ng khen c\\u1ee7a UBND TP H\\u00e0 N\\u1ed9i\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Gi\\u1ea3i th\\u01b0\\u1edfng Sao \\u0110\\u1ecf\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Gi\\u1ea3i \\u201cNh\\u00e0 L\\u00e3nh \\u0110\\u1ea1o Doanh Nghi\\u1ec7p Xu\\u1ea5t S\\u1eafc Vi\\u1ec7t Nam\\u201d\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Top 10 Doanh nh\\u00e2n Vi\\u1ec7t Nam ti\\u00eau bi\\u1ec3u n\\u0103m 2022\"},{\"field_item_id\":81,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"\"},{\"field_item_id\":128,\"type\":\"image\",\"slug\":\"image\",\"value\":\"giai-thuong\\/top-10-doanh-nhan-tieu-bieu.jpg\"},{\"field_item_id\":130,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}]]'),
(77, 'Botble\\Page\\Models\\Page', 2, 82, 'text', 'title_sec_2_award', 'giải thưởng <br> CÔNG TY THÀNH VIÊN'),
(78, 'Botble\\Page\\Models\\Page', 2, 83, 'text', 'rank_award_2', '01'),
(79, 'Botble\\Page\\Models\\Page', 2, 84, 'text', 'title_award_2', 'Top 500 Thương hiệu Tuyển dụng hàng đầu Việt Nam 2023'),
(80, 'Botble\\Page\\Models\\Page', 2, 85, 'text', 'desc_award_2', 'PHUTHAICAT'),
(81, 'Botble\\Page\\Models\\Page', 2, 86, 'textarea', 'desc_log_award_2', ''),
(82, 'Botble\\Page\\Models\\Page', 2, 87, 'repeater', 'list_awrad_2', '[[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Top 500 Th\\u01b0\\u01a1ng hi\\u1ec7u Tuy\\u1ec3n d\\u1ee5ng h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam 2023\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"PHUTHAICAT\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Car of the Year \\u2013 Gi\\u1ea3i Th\\u01b0\\u1edfng Xe C\\u1ee7a N\\u0103m 2022\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"PON Ph\\u00fa Th\\u00e1i Mobility\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"Car of the Year \\u2013 Gi\\u1ea3i Th\\u01b0\\u1edfng Xe C\\u1ee7a N\\u0103m 2022 theo ph\\u00e2n kh\\u00fac xe SUV h\\u1ea1ng sang cho s\\u1ea3n ph\\u1ea9m Land Rover Range Rover m\\u1edbi do T\\u1ea1p ch\\u00ed Robb Report Vi\\u1ec7t Nam B\\u00ecnh Ch\\u1ecdn. \"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Gi\\u1ea3i Sao v\\u00e0ng \\u0110\\u1ea5t Vi\\u1ec7t 2004\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"CTCP Th\\u00fa Y Xanh Vi\\u1ec7t Nam\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"giai-thuong\\/saovangdatviet.jpg\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1eb1ng khen c\\u1ee7a B\\u1ed9 N\\u00f4ng nghi\\u1ec7p v\\u00e0 Ph\\u00e1t tri\\u1ec3n n\\u00f4ng th\\u00f4n\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"CTCP Th\\u00fa Y Xanh Vi\\u1ec7t Nam\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Ch\\u1ee9ng nh\\u1eadn th\\u1ef1c h\\u00e0nh t\\u1ed1t s\\u1ea3n xu\\u1ea5t thu\\u1ed1c c\\u1ee7a C\\u1ee5c th\\u00fa y\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"CTCP Th\\u00fa Y Xanh Vi\\u1ec7t Nam\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Sao v\\u00e0ng th\\u1ee7 \\u0111\\u00f4\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"CTCP Th\\u00fa Y Xanh Vi\\u1ec7t Nam\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"B\\u1eb1ng khen h\\u1ed9i khoa h\\u1ecdc k\\u1ef9 thu\\u1eadt th\\u00fa y Vi\\u1ec7t Nam\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"CTCP Th\\u00fa Y Xanh Vi\\u1ec7t Nam\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"awrad-2.png\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Nh\\u00e0 nh\\u1eadp kh\\u1ea9u v\\u00e0ng khu v\\u1ef1c \\u0110\\u00f4ng Nam \\u00c1 c\\u00e1c n\\u0103m 2018, 2019, 2021\"},{\"field_item_id\":89,\"type\":\"textarea\",\"slug\":\"desc\",\"value\":\"VMP\"},{\"field_item_id\":129,\"type\":\"image\",\"slug\":\"image\",\"value\":\"giai-thuong\\/nha-nhap-khau-vang-nam-2021.jpg\"},{\"field_item_id\":131,\"type\":\"textarea\",\"slug\":\"desc_2\",\"value\":\"\"}]]'),
(83, 'Botble\\Page\\Models\\Page', 19, 90, 'repeater', 'partners', '[[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-3.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-8.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/bjcbk-big-226de847.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/asetuto-1.webp\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/logo-pon.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/images.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/header-logo-b.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/petronas-logosvg.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/b2aca310d79f2bd1c60aa97c497a64a6.jpg\"}]]'),
(84, 'Botble\\Page\\Models\\Page', 19, 94, 'text', 'title_sec_2_partners', 'TẠI SAO NÊN <strong>CHỌN CHÚNG TÔI</strong>'),
(85, 'Botble\\Page\\Models\\Page', 19, 95, 'textarea', 'desc_sec_2_partners', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(95, 'Botble\\Page\\Models\\Page', 7, 105, 'wysiwyg', 'content_sec_4_about', '</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	</undefined>\n	\n	'),
(96, 'Botble\\Page\\Models\\Page', 7, 106, 'text', 'title_sec_5_about', 'GIÁ TRỊ CỐT LÕI'),
(97, 'Botble\\Page\\Models\\Page', 7, 107, 'repeater', 'content_sec_5_about', '[[{\"field_item_id\":108,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Ti\\u00ean phong (Pioneering)\"},{\"field_item_id\":109,\"type\":\"textarea\",\"slug\":\"content\",\"value\":\"T\\u1eadp \\u0111o\\u00e0n ti\\u00ean phong v\\u00e0 d\\u1eabn \\u0111\\u1ea7u trong xu th\\u1ebf h\\u1ed9i nh\\u1eadp kinh t\\u1ebf, k\\u1ebft n\\u1ed1i Vi\\u1ec7t Nam v\\u00e0 th\\u1ebf gi\\u1edbi.\"}],[{\"field_item_id\":108,\"type\":\"text\",\"slug\":\"title\",\"value\":\"H\\u1ee3p t\\u00e1c (Collaboration)\"},{\"field_item_id\":109,\"type\":\"textarea\",\"slug\":\"content\",\"value\":\"T\\u1eadp \\u0111o\\u00e0n coi h\\u1ee3p t\\u00e1c li\\u00ean doanh v\\u1edbi c\\u00e1c \\u0111\\u1ed1i t\\u00e1c qu\\u1ed1c t\\u1ebf l\\u1edbn d\\u1ef1a tr\\u00ean nguy\\u00ean t\\u1eafc \\u0111\\u1ed3ng l\\u1ee3i \\u00edch l\\u00e0 \\u0111\\u00f2n b\\u1ea9y cho s\\u1ef1 ph\\u00e1t tri\\u1ec3n b\\u1ec1n v\\u1eefng.\"}]]'),
(129, 'Botble\\Page\\Models\\Page', 8, 114, 'repeater', 'banner_contact_page', '[[{\"field_item_id\":115,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Banner 1\"},{\"field_item_id\":116,\"type\":\"image\",\"slug\":\"image\",\"value\":\"lhe-2.png\"},{\"field_item_id\":117,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"}],[{\"field_item_id\":115,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Banner 2\"},{\"field_item_id\":116,\"type\":\"image\",\"slug\":\"image\",\"value\":\"lhe-2.png\"},{\"field_item_id\":117,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"}],[{\"field_item_id\":115,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Banner 3\"},{\"field_item_id\":116,\"type\":\"image\",\"slug\":\"image\",\"value\":\"lhe-2.png\"},{\"field_item_id\":117,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"}]]'),
(98, 'Botble\\Page\\Models\\Page', 9, 112, 'textarea', 'content_about_2_page_home', 'Khởi nghiệp trong lĩnh vực phân phối hàng hóa, Phú Thái Holdings Group hiện trở thành Tập đoàn phân phối & đầu tư đa ngành hàng đầu Việt Nam, với khát vọng phát triển toàn cầu'),
(100, 'Botble\\Page\\Models\\Page', 10, 112, 'textarea', 'content_about_2_page_home', 'Starting a business in the field of goods distribution, Phu Thai Holdings Group has now become a leading multi-industry investment and distribution group in Vietnam, with aspirations of global development.'),
(101, 'Botble\\Page\\Models\\Page', 10, 113, 'textarea', 'video_about_home', 'https://www.youtube.com/embed/gFakBWQmpXo?si=VRwqiNZZfhC-6pp4'),
(102, 'Botble\\Page\\Models\\Page', 20, 90, 'repeater', 'partners', '[[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-1.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-2.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-3.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-4.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-5.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-6.jpg\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-7.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-8.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-9.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-10.png\"}],[{\"field_item_id\":91,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":92,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":93,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-11.png\"}]]'),
(103, 'Botble\\Page\\Models\\Page', 20, 94, 'text', 'title_sec_2_partners', 'WHY <strong>CHOOSE US</strong>'),
(104, 'Botble\\Page\\Models\\Page', 20, 95, 'textarea', 'desc_sec_2_partners', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(117, 'Botble\\Page\\Models\\Page', 17, 74, 'text', 'title_sec_1_award', 'corporate <br> awards'),
(105, 'Botble\\Page\\Models\\Page', 12, 96, 'image', 'image_sec_1_about', 'vuong.png'),
(106, 'Botble\\Page\\Models\\Page', 12, 97, 'text', 'title_sec_2_ablout', 'CEO - Mr Phạm Đình Đoàn'),
(107, 'Botble\\Page\\Models\\Page', 12, 98, 'image', 'image_sec_2_about', 'mr.png'),
(108, 'Botble\\Page\\Models\\Page', 12, 99, 'textarea', 'desc_about_2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(109, 'Botble\\Page\\Models\\Page', 12, 100, 'text', 'title_sec_3_about', 'Vision'),
(110, 'Botble\\Page\\Models\\Page', 12, 101, 'text', 'title_2_sec_3_about', 'Becoming a leading multi-industry distribution & investment group in Vietnam.'),
(111, 'Botble\\Page\\Models\\Page', 12, 102, 'wysiwyg', 'content_sec_3_about', '<p>● Not only expanding multi-industry and multi-field operations, but also aiming to achieve efficiency and leading position in Vietnam.</p><p>● This demonstrates commitment and continuous effort to develop and maintain success in a diverse and competitive business environment.</p>'),
(112, 'Botble\\Page\\Models\\Page', 12, 103, 'text', 'title_sec_4_about', 'BUSINESS <br> PHILOSOPHY'),
(113, 'Botble\\Page\\Models\\Page', 12, 104, 'text', 'title_2_sec_4_about', 'Gather resources to successfully invest and do business with the Phu Thai brand, move towards prosperity and accompany the country\'s economy.'),
(114, 'Botble\\Page\\Models\\Page', 12, 105, 'wysiwyg', 'content_sec_4_about', '<p>● This business philosophy demonstrates Phu Thai\'s commitment to using all resources to invest and do business in the most effective way. Phu Thai wishes not only to achieve business success for itself, but also to achieve common prosperity for both partners, customers and society. By acting together, we will together contribute to the overall development and prosperity of the country\'s economy</p><p>● This philosophy demonstrates the positive interaction between individual benefits, collective benefits and the benefits of the entire community.</p>'),
(115, 'Botble\\Page\\Models\\Page', 12, 106, 'text', 'title_sec_5_about', 'CORE VALUES'),
(116, 'Botble\\Page\\Models\\Page', 12, 107, 'repeater', 'content_sec_5_about', '[[{\"field_item_id\":108,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Pioneering\"},{\"field_item_id\":109,\"type\":\"textarea\",\"slug\":\"content\",\"value\":\"The Group positions itself as a pioneer in promoting innovation and development. This includes taking on new challenges and risks to create innovative and differentiated solutions in the business industry.\"}],[{\"field_item_id\":108,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Collaboration\"},{\"field_item_id\":109,\"type\":\"textarea\",\"slug\":\"content\",\"value\":\"The Group positions itself as a pioneer in promoting innovation and development. This includes taking on new challenges and risks to create innovative and differentiated solutions in the business industry.\"}]]'),
(118, 'Botble\\Page\\Models\\Page', 17, 75, 'text', 'rank_award_1', '01'),
(119, 'Botble\\Page\\Models\\Page', 17, 76, 'text', 'title_award_1', 'FIRST PRIZE 2022'),
(120, 'Botble\\Page\\Models\\Page', 17, 77, 'text', 'desc_award_1', 'Distribution and retail sector'),
(121, 'Botble\\Page\\Models\\Page', 17, 78, 'textarea', 'desc_log_award_1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'),
(122, 'Botble\\Page\\Models\\Page', 17, 79, 'repeater', 'list_awrad_1', '[[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":81,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":81,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":81,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}],[{\"field_item_id\":80,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":81,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}]]'),
(123, 'Botble\\Page\\Models\\Page', 17, 82, 'text', 'title_sec_2_award', 'BRANDS <br> awards'),
(124, 'Botble\\Page\\Models\\Page', 17, 83, 'text', 'rank_award_2', '01'),
(125, 'Botble\\Page\\Models\\Page', 17, 84, 'text', 'title_award_2', 'FIRST PRIZE 2022'),
(126, 'Botble\\Page\\Models\\Page', 17, 85, 'text', 'desc_award_2', 'Distribution and retail sector'),
(127, 'Botble\\Page\\Models\\Page', 17, 86, 'textarea', 'desc_log_award_2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'),
(128, 'Botble\\Page\\Models\\Page', 17, 87, 'repeater', 'list_awrad_2', '[[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":89,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":89,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":89,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}],[{\"field_item_id\":88,\"type\":\"text\",\"slug\":\"title\",\"value\":\"FIRST PRIZE 2022\"},{\"field_item_id\":89,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Distribution and retail sector\"}]]'),
(130, 'Botble\\Page\\Models\\Page', 8, 118, 'image', 'banner_2', 'lhe.png'),
(131, 'Botble\\Page\\Models\\Page', 8, 118, 'image', 'banner_2_page_contact', 'lhe.png'),
(132, 'Botble\\Page\\Models\\Page', 19, 119, 'repeater', 'parners_2', '[[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-10.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-11.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-9.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"#\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-7.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-5.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-1.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-6.jpg\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-3.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/metso-outotec-logosvg.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-8.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\\u0110\\u1ed1i t\\u00e1c 2\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"dt-4.png\"}],[{\"field_item_id\":120,\"type\":\"text\",\"slug\":\"title\",\"value\":\"\"},{\"field_item_id\":121,\"type\":\"text\",\"slug\":\"link\",\"value\":\"\"},{\"field_item_id\":122,\"type\":\"image\",\"slug\":\"logo\",\"value\":\"doi-tac\\/b2aca310d79f2bd1c60aa97c497a64a6.jpg\"}]]'),
(133, 'Botble\\Page\\Models\\Page', 7, 123, 'text', 'title_sec_6_about', 'CỘT MỐC PHÁT TRIỂN'),
(134, 'Botble\\Page\\Models\\Page', 7, 124, 'repeater', 'content_sec_6_about', '[[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"1993\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"C\\u00f4ng ty CP T\\u1eadp \\u0111o\\u00e0n Ph\\u00fa Th\\u00e1i (Ph\\u00fa Th\\u00e1i Group)  \"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}],[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"2001\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Green Group\"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}],[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"2005\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"C\\u00f4ng ty C\\u1ed5 ph\\u1ea7n Th\\u1eddi trang Kowil \"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}],[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"2010\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"C\\u00f4ng ty TNHH C\\u00f4ng Nghi\\u1ec7p Ph\\u00fa Th\\u00e1i (Phu Thai Cat)\"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}],[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"2019\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Phu Thai Mobility \"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}],[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"2021\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Bifrost Investment Group \"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}],[{\"field_item_id\":125,\"type\":\"text\",\"slug\":\"title\",\"value\":\"2022\"},{\"field_item_id\":126,\"type\":\"text\",\"slug\":\"desc\",\"value\":\"Qu\\u1ef9 \\u0111\\u1ea7u t\\u01b0 m\\u1ea1o hi\\u1ec3m BK Fund \"},{\"field_item_id\":127,\"type\":\"image\",\"slug\":\"image\",\"value\":\"his.png\"}]]');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(2, 'widget_total_users', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(3, 'widget_total_pages', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(4, 'widget_total_plugins', '2022-04-02 10:43:16', '2022-04-02 10:43:16'),
(5, 'widget_posts_recent', '2022-04-02 10:50:35', '2022-04-02 10:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `rules` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_groups`
--

INSERT INTO `field_groups` (`id`, `title`, `rules`, `order`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giải thưởng', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"award\"}]]', 0, 1, 1, 'published', '2022-06-08 10:19:05', '2022-06-08 10:19:05'),
(2, 'Milestones', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"milestones\"}]]', 0, 1, 1, 'published', '2022-06-08 10:27:53', '2022-06-08 10:27:53'),
(3, 'Sustainable Development', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"sustainable\"}]]', 0, 1, 1, 'published', '2022-06-08 10:37:32', '2022-06-08 10:37:32'),
(4, 'Business', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"business\"}]]', 0, 1, 1, 'published', '2022-06-08 11:00:55', '2022-06-08 11:00:55'),
(5, 'People', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"people\"}]]', 0, 1, 1, 'published', '2022-06-08 11:17:13', '2022-06-08 11:17:13'),
(6, 'About', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"about\"}]]', 0, 1, 1, 'published', '2022-06-08 11:31:22', '2022-06-08 11:31:22'),
(7, 'Contacts', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"contact\"}]]', 0, 1, 1, 'published', '2022-06-08 11:47:10', '2022-06-08 11:47:10'),
(8, 'Home', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"home\"}]]', 0, 1, 1, 'published', '2022-06-08 12:06:20', '2022-06-08 12:06:20'),
(9, 'Đối tác', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"partners\"}]]', 0, 1, 1, 'published', '2024-03-10 07:26:19', '2024-03-10 07:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `instructions` text DEFAULT NULL,
  `options` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_items`
--

INSERT INTO `field_items` (`id`, `field_group_id`, `parent_id`, `order`, `title`, `slug`, `type`, `instructions`, `options`) VALUES
(82, 1, NULL, 7, 'Tiêu đề khối nội dung 2', 'title_sec_2_award', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(2, 1, 1, 1, 'Năm', 'year', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(3, 1, 1, 2, 'Tên giải thưởng', 'name_award', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(4, 2, NULL, 1, 'Milestones', 'milestones', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(5, 2, 4, 1, 'Năm', 'year', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(6, 2, 4, 2, 'Mô tả', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(7, 2, 4, 3, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(8, 3, NULL, 1, 'Sustainables', 'sustainables', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(9, 3, 8, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(10, 3, 8, 2, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(11, 3, 8, 3, 'Icon', 'icon', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(12, 3, 8, 4, 'Mô tả', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(13, 4, NULL, 1, 'Tiêu đề khối 1', 'title_sec_1', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(14, 4, NULL, 2, 'Mô tả khối 1', 'desc_sec_1', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(15, 4, NULL, 3, 'Thông kê', 'sumarys', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(16, 4, 15, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(17, 4, 15, 2, 'Mô tả', 'desc', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(73, 4, 15, 3, 'Icon', 'icon', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(19, 4, 18, 1, 'Tên công ty', 'name', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(20, 4, 18, 2, 'Logo', 'logo', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(21, 4, 18, 3, 'Mô tả', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(22, 4, 18, 4, 'Banner', 'banner', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(23, 5, NULL, 1, 'Tiêu đề khối 1', 'title_sec_1_page_team', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(24, 5, NULL, 2, 'Tiêu đề 2 khối 1', 'title_2_sec_1_page_team', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(25, 5, NULL, 3, 'Mô tả khối 1', 'desc_sec_1_page_team', 'wysiwyg', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(26, 5, NULL, 4, 'Hình ảnh', 'image_sec_1_page_team', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(27, 5, NULL, 5, 'Đội ngũ', 'list_teams', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(28, 5, 27, 1, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(29, 5, 27, 2, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(30, 5, 27, 3, 'Tiêu đề 2', 'sub_title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(31, 5, 27, 4, 'Mô tả', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(32, 6, NULL, 1, 'Tiêu đề khối 1', 'title_sec_1_page_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(33, 6, NULL, 2, 'Mô tả khối 1', 'desc_sec_1_page_about', 'wysiwyg', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(104, 6, NULL, 11, 'Tiêu đề 2 khối 4', 'title_2_sec_4_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(35, 6, 34, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(36, 6, 34, 2, 'Mô tả', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(37, 6, 34, 3, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(103, 6, NULL, 10, 'Tiêu đề khối thứ 4', 'title_sec_4_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(102, 6, NULL, 9, 'Nội dung khối 3', 'content_sec_3_about', 'wysiwyg', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(101, 6, NULL, 8, 'Tiêu đề 2 khối 3', 'title_2_sec_3_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(100, 6, NULL, 7, 'Tiêu đề khối thứ 3', 'title_sec_3_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(99, 6, NULL, 6, 'Nội dung khối 2', 'desc_about_2', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(98, 6, NULL, 5, 'Hình ảnh khối nội dung 2', 'image_sec_2_about', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(97, 6, NULL, 4, 'Tiêu đề khối nội dung 2', 'title_sec_2_ablout', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(45, 7, NULL, 1, 'Liên hệ', 'contact_list', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(46, 7, 45, 1, 'Icon', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(47, 7, 45, 2, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(48, 7, 45, 3, 'Mô tả', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(49, 7, 45, 4, 'Liên hệ', 'info', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(118, 7, NULL, 3, 'Banner 2', 'banner_2_page_contact', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(117, 7, 114, 3, 'Liên kết', 'link', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(116, 7, 114, 2, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(53, 7, 52, 1, 'Logo', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(115, 7, 114, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(114, 7, NULL, 2, 'Banners', 'banner_contact_page', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(56, 7, 52, 2, 'Liên kết', 'link', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(57, 8, NULL, 1, 'Banner', 'banner_home', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(58, 8, 57, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(59, 8, 57, 3, 'Liên kết', 'link', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(60, 8, 57, 4, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(61, 8, NULL, 2, 'Thông kê', 'sumary_home', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(62, 8, 61, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(63, 8, 61, 2, 'Mô tả', 'desc', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(64, 8, NULL, 3, 'Tiêu đề khối giới thiệu', 'title_about_page_home', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(65, 8, NULL, 4, 'Nội dung khối giới thiệu', 'content_about_page_home', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(113, 8, NULL, 6, 'Video khối giới thiệu', 'video_about_home', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(112, 8, NULL, 5, 'Nội dung 2 khối giới thiệu', 'content_about_2_page_home', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(69, 8, 68, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(70, 8, 68, 2, 'Liên kết', 'link', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(71, 8, 68, 3, 'Logo', 'logo', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(72, 8, 68, 4, 'Banner', 'banner', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(74, 1, NULL, 1, 'Tiêu đề khối nội dung 1', 'title_sec_1_award', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(75, 1, NULL, 2, 'Xếp hạng vị trí 1', 'rank_award_1', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(76, 1, NULL, 3, 'Tiêu đề giải thưởng 1', 'title_award_1', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(77, 1, NULL, 4, 'Mô tả ngắn giải thưởng 1', 'desc_award_1', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(78, 1, NULL, 5, 'Mô tả giải thưởng 1', 'desc_log_award_1', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(79, 1, NULL, 6, 'Danh sách giải thưởng 1', 'list_awrad_1', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(80, 1, 79, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(81, 1, 79, 2, 'Lĩnh vực', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(83, 1, NULL, 8, 'Xếp hạng vị trí 2', 'rank_award_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(84, 1, NULL, 9, 'Tiêu đề giải thưởng 2', 'title_award_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(85, 1, NULL, 10, 'Mô tả ngắn giải thưởng 2', 'desc_award_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(86, 1, NULL, 11, 'Mô tả giải thưởng 2', 'desc_log_award_2', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(87, 1, NULL, 12, 'Danh sách giải thưởng 2', 'list_awrad_2', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(88, 1, 87, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(89, 1, 87, 2, 'Lĩnh vực', 'desc', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(90, 9, NULL, 1, 'Đối tác', 'partners', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(91, 9, 90, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(92, 9, 90, 2, 'Liên kết', 'link', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(93, 9, 90, 3, 'Logo', 'logo', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(94, 9, NULL, 2, 'Tiêu đề khối 2', 'title_sec_2_partners', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(95, 9, NULL, 3, 'Mô tả khối 2', 'desc_sec_2_partners', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(96, 6, NULL, 3, 'Hình ảnh khối 1', 'image_sec_1_about', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(105, 6, NULL, 12, 'Nội dung khối 4', 'content_sec_4_about', 'wysiwyg', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(106, 6, NULL, 13, 'Tiều đề khối 5', 'title_sec_5_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(107, 6, NULL, 14, 'Nội dung khối 5', 'content_sec_5_about', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(108, 6, 107, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(109, 6, 107, 2, 'Nội dung', 'content', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(110, 8, 57, 2, 'Tiêu đề 2', 'title_2', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(111, 8, 61, 3, 'Icon', 'icon', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(119, 9, NULL, 4, 'Đối tác 2', 'parners_2', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(120, 9, 119, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(121, 9, 119, 2, 'Liên kết', 'link', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(122, 9, 119, 3, 'Logo', 'logo', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(123, 6, NULL, 15, 'Tiêu đề khối 6', 'title_sec_6_about', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(124, 6, NULL, 16, 'Nội dung khối 6', 'content_sec_6_about', 'repeater', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(125, 6, 124, 1, 'Tiêu đề', 'title', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(126, 6, 124, 2, 'Mô tả', 'desc', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(127, 6, 124, 3, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(128, 1, 79, 3, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(129, 1, 87, 3, 'Hình ảnh', 'image', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(130, 1, 79, 4, 'Mô tả', 'desc_2', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(131, 1, 87, 4, 'Mô tả', 'desc_2', 'textarea', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_apply_jobs`
--

CREATE TABLE `job_apply_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `cv_file` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_companies`
--

CREATE TABLE `job_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `idx` bigint(20) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_companies`
--

INSERT INTO `job_companies` (`id`, `name`, `idx`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', 1, 'published', '2024-05-07 01:30:18', '2024-05-07 01:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `job_fields`
--

CREATE TABLE `job_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `idx` bigint(20) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `idx` bigint(20) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_recruitments`
--

CREATE TABLE `job_recruitments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `job_desc` text DEFAULT NULL COMMENT 'Mô tả công việc',
  `job_requirements` text DEFAULT NULL COMMENT 'Yêu cầu công việc',
  `job_benefits` text DEFAULT NULL COMMENT 'Quyền lợi',
  `job_contact` text DEFAULT NULL COMMENT 'Liên hệ',
  `job_deadline` datetime DEFAULT NULL,
  `job_field_id` bigint(20) DEFAULT NULL,
  `job_location_id` bigint(20) DEFAULT NULL,
  `job_company_id` bigint(20) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0),
(2, 'English', 'en', 'en_US', 'us', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text DEFAULT NULL,
  `lang_meta_origin` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'vi', '2d2414b9da17407e8aa7ec97e3b9251a', 1, 'Botble\\Blog\\Models\\Category'),
(2, 'en_US', '2d2414b9da17407e8aa7ec97e3b9251a', 2, 'Botble\\Blog\\Models\\Category'),
(21, 'vi', 'e476cf8f80328a0aab1c7c8aa99360e6', 8, 'Botble\\Blog\\Models\\Post'),
(22, 'vi', '173b2669290755284297c469ca258890', 9, 'Botble\\Blog\\Models\\Post'),
(23, 'vi', 'fcb013edc728d50391e9802366512d03', 10, 'Botble\\Blog\\Models\\Post'),
(6, 'vi', 'aa8dd5b69c88cefb3c8b79186f42070c', 1, 'Botble\\Page\\Models\\Page'),
(7, 'vi', '98822e0edeab35ecc65eebe07969906c', 2, 'Botble\\Page\\Models\\Page'),
(8, 'vi', 'c09694fa10a60818b8b14ab30faef01d', 3, 'Botble\\Page\\Models\\Page'),
(9, 'vi', '4124ac75f05761a10ac52a2604f655d3', 4, 'Botble\\Page\\Models\\Page'),
(10, 'vi', '85390862e123c3956342cc9085ec08e0', 5, 'Botble\\Page\\Models\\Page'),
(11, 'vi', '92adc66afd564a04a10f1f4584f96d61', 6, 'Botble\\Page\\Models\\Page'),
(12, 'vi', '0b212ff06284a2292ebd0836b1792af8', 7, 'Botble\\Page\\Models\\Page'),
(13, 'vi', 'cbf423c072c21de6e94892a2cd84438c', 8, 'Botble\\Page\\Models\\Page'),
(14, 'vi', '0208742a5a11afec8466094b2fcb440c', 9, 'Botble\\Page\\Models\\Page'),
(15, 'vi', '66d9a2175aadd42b33b29f136d95d7d4', 1, 'Botble\\Menu\\Models\\Menu'),
(16, 'vi', '6203c251f76aef316d40932f217f0e4d', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(24, 'vi', 'e95d282b49cb0e36ef294e167a47c96f', 11, 'Botble\\Blog\\Models\\Post'),
(20, 'vi', 'e03c6b62a1b8df442aaa979cd99ccba5', 7, 'Botble\\Blog\\Models\\Post'),
(25, 'vi', 'ae95f218c10c5c5db3b4729e5654b6aa', 12, 'Botble\\Blog\\Models\\Post'),
(26, 'vi', 'c8d83e8d6a2a7a26948ef0e97baab3f9', 13, 'Botble\\Blog\\Models\\Post'),
(27, 'vi', 'db3f9ef30a9ef57edef667f2d102bdd3', 14, 'Botble\\Blog\\Models\\Post'),
(28, 'vi', '92aec1fabf324d7061eab65595f07d33', 15, 'Botble\\Blog\\Models\\Post'),
(29, 'en_US', '66d9a2175aadd42b33b29f136d95d7d4', 2, 'Botble\\Menu\\Models\\Menu'),
(30, 'en_US', '0208742a5a11afec8466094b2fcb440c', 10, 'Botble\\Page\\Models\\Page'),
(31, 'en_US', 'cbf423c072c21de6e94892a2cd84438c', 11, 'Botble\\Page\\Models\\Page'),
(32, 'en_US', '0b212ff06284a2292ebd0836b1792af8', 12, 'Botble\\Page\\Models\\Page'),
(33, 'en_US', '92adc66afd564a04a10f1f4584f96d61', 13, 'Botble\\Page\\Models\\Page'),
(34, 'en_US', '85390862e123c3956342cc9085ec08e0', 14, 'Botble\\Page\\Models\\Page'),
(35, 'en_US', '4124ac75f05761a10ac52a2604f655d3', 15, 'Botble\\Page\\Models\\Page'),
(36, 'en_US', 'c09694fa10a60818b8b14ab30faef01d', 16, 'Botble\\Page\\Models\\Page'),
(37, 'en_US', '98822e0edeab35ecc65eebe07969906c', 17, 'Botble\\Page\\Models\\Page'),
(38, 'en_US', 'aa8dd5b69c88cefb3c8b79186f42070c', 18, 'Botble\\Page\\Models\\Page'),
(39, 'en_US', 'd270abab2d3a4de20b54254bb417fc6a', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(40, 'en_US', 'c8d83e8d6a2a7a26948ef0e97baab3f9', 16, 'Botble\\Blog\\Models\\Post'),
(41, 'en_US', 'ae95f218c10c5c5db3b4729e5654b6aa', 17, 'Botble\\Blog\\Models\\Post'),
(42, 'en_US', 'e03c6b62a1b8df442aaa979cd99ccba5', 18, 'Botble\\Blog\\Models\\Post'),
(43, 'en_US', 'e476cf8f80328a0aab1c7c8aa99360e6', 19, 'Botble\\Blog\\Models\\Post'),
(44, 'en_US', '173b2669290755284297c469ca258890', 20, 'Botble\\Blog\\Models\\Post'),
(45, 'en_US', 'db3f9ef30a9ef57edef667f2d102bdd3', 21, 'Botble\\Blog\\Models\\Post'),
(46, 'vi', 'bf5cc0f4927dff20815a18f42cbac42c', 1, 'Botble\\Blog\\Models\\Tag'),
(47, 'vi', '40b4aab4c49648118eafff4889feee06', 2, 'Botble\\Blog\\Models\\Tag'),
(48, 'en_US', '92aec1fabf324d7061eab65595f07d33', 22, 'Botble\\Blog\\Models\\Post'),
(49, 'en_US', 'e95d282b49cb0e36ef294e167a47c96f', 23, 'Botble\\Blog\\Models\\Post'),
(50, 'en_US', 'fcb013edc728d50391e9802366512d03', 24, 'Botble\\Blog\\Models\\Post'),
(51, 'vi', '4dc43dd58ca4ef423d646c0cacdd0d8b', 1, 'Botble\\Companies\\Models\\BusinessCategories'),
(52, 'vi', '75d8af4b81e1eaa71a1af8baf7616233', 2, 'Botble\\Companies\\Models\\BusinessCategories'),
(53, 'vi', '9d74d6b4e6de92d21dc7c71c445989db', 3, 'Botble\\Companies\\Models\\BusinessCategories'),
(54, 'vi', 'c2af19e4e72e2c6e0550ed5e116efcd4', 1, 'Botble\\Companies\\Models\\Companies'),
(55, 'vi', '3436685190520307c4e6bee2cdad387d', 2, 'Botble\\Companies\\Models\\Companies'),
(59, 'vi', '05c8f8958815840d9909ee71897448d7', 6, 'Botble\\Blog\\Models\\Category'),
(57, 'vi', '4b36cd2d444bf0801e9278cb73779a1a', 4, 'Botble\\Blog\\Models\\Category'),
(58, 'vi', 'b06b5bd1a4a64391e72a5515277c3cda', 5, 'Botble\\Blog\\Models\\Category'),
(60, 'vi', 'd0f5fffd5831f40b7b56bffe2d83c40f', 19, 'Botble\\Page\\Models\\Page'),
(61, 'vi', 'ec0be9514dd314496a7a32994f05c6d2', 4, 'Botble\\Companies\\Models\\BusinessCategories'),
(62, 'vi', '46e9407fd4b49ff654ec41e7fed0ccdb', 5, 'Botble\\Companies\\Models\\BusinessCategories'),
(63, 'vi', '6ad83af24ee2f0655b1617d2fe07a5ca', 6, 'Botble\\Companies\\Models\\BusinessCategories'),
(64, 'vi', 'ff463238fabd64605dde5bac0e9471e4', 7, 'Botble\\Companies\\Models\\BusinessCategories'),
(65, 'vi', '7fa97e4580cd1264c03ec1b62566a9d8', 3, 'Botble\\Menu\\Models\\Menu'),
(66, 'vi', 'e16a54d5bd3bfce956bee1e1e432944f', 3, 'Botble\\Menu\\Models\\MenuLocation'),
(67, 'vi', '33ccc3e1dff5ce3aad171ef27e974ccd', 4, 'Botble\\Menu\\Models\\Menu'),
(68, 'vi', '8b00cf43684c1839273a842aa893b6c2', 4, 'Botble\\Menu\\Models\\MenuLocation'),
(69, 'en_US', 'd0f5fffd5831f40b7b56bffe2d83c40f', 20, 'Botble\\Page\\Models\\Page'),
(70, 'en_US', '7fa97e4580cd1264c03ec1b62566a9d8', 5, 'Botble\\Menu\\Models\\Menu'),
(71, 'en_US', '33ccc3e1dff5ce3aad171ef27e974ccd', 6, 'Botble\\Menu\\Models\\Menu'),
(72, 'en_US', '4dc43dd58ca4ef423d646c0cacdd0d8b', 8, 'Botble\\Companies\\Models\\BusinessCategories'),
(73, 'en_US', '75d8af4b81e1eaa71a1af8baf7616233', 9, 'Botble\\Companies\\Models\\BusinessCategories'),
(74, 'en_US', '9d74d6b4e6de92d21dc7c71c445989db', 10, 'Botble\\Companies\\Models\\BusinessCategories'),
(75, 'en_US', 'ec0be9514dd314496a7a32994f05c6d2', 11, 'Botble\\Companies\\Models\\BusinessCategories'),
(76, 'en_US', '46e9407fd4b49ff654ec41e7fed0ccdb', 12, 'Botble\\Companies\\Models\\BusinessCategories'),
(77, 'en_US', '6ad83af24ee2f0655b1617d2fe07a5ca', 13, 'Botble\\Companies\\Models\\BusinessCategories'),
(78, 'en_US', 'ff463238fabd64605dde5bac0e9471e4', 14, 'Botble\\Companies\\Models\\BusinessCategories'),
(79, 'en_US', 'ca72c734e5b513835f8ff31cb0eb43dd', 5, 'Botble\\Menu\\Models\\MenuLocation'),
(80, 'en_US', 'e4aa7e5c3fb8ba16d26741eaaae97938', 6, 'Botble\\Menu\\Models\\MenuLocation'),
(83, 'en_US', '3436685190520307c4e6bee2cdad387d', 5, 'Botble\\Companies\\Models\\Companies'),
(82, 'en_US', 'c2af19e4e72e2c6e0550ed5e116efcd4', 4, 'Botble\\Companies\\Models\\Companies'),
(84, 'vi', 'c2b9ea8626a8d86e47f486bdc6569135', 6, 'Botble\\Companies\\Models\\Companies'),
(85, 'en_US', 'c2b9ea8626a8d86e47f486bdc6569135', 7, 'Botble\\Companies\\Models\\Companies'),
(86, 'vi', '15fd7ca0b844acc20d2cb82d9c3c68e4', 8, 'Botble\\Companies\\Models\\Companies'),
(87, 'en_US', '15fd7ca0b844acc20d2cb82d9c3c68e4', 9, 'Botble\\Companies\\Models\\Companies'),
(88, 'vi', '7b88b3396c459f2cb24ada324a0e452d', 10, 'Botble\\Companies\\Models\\Companies'),
(89, 'en_US', '7b88b3396c459f2cb24ada324a0e452d', 11, 'Botble\\Companies\\Models\\Companies'),
(90, 'vi', '4e181705b3be6660a37ec692b2816af5', 12, 'Botble\\Companies\\Models\\Companies'),
(91, 'en_US', '4e181705b3be6660a37ec692b2816af5', 13, 'Botble\\Companies\\Models\\Companies'),
(92, 'vi', '308b2b92f5ab47e4100c5820f725909c', 14, 'Botble\\Companies\\Models\\Companies'),
(93, 'en_US', '308b2b92f5ab47e4100c5820f725909c', 15, 'Botble\\Companies\\Models\\Companies'),
(94, 'vi', '9f1fbe9b0c2ff36d50da003764510087', 16, 'Botble\\Companies\\Models\\Companies'),
(95, 'en_US', '9f1fbe9b0c2ff36d50da003764510087', 17, 'Botble\\Companies\\Models\\Companies'),
(96, 'vi', '98cf418b7a2fb612d99119a0dd7db808', 18, 'Botble\\Companies\\Models\\Companies'),
(97, 'en_US', '98cf418b7a2fb612d99119a0dd7db808', 19, 'Botble\\Companies\\Models\\Companies'),
(98, 'vi', 'addacfd952c52ed9ce743c94516b4e14', 20, 'Botble\\Companies\\Models\\Companies'),
(99, 'en_US', 'addacfd952c52ed9ce743c94516b4e14', 21, 'Botble\\Companies\\Models\\Companies'),
(100, 'vi', '9cd1e1d6946598f97a9ef8bd258d1ee9', 22, 'Botble\\Companies\\Models\\Companies'),
(101, 'en_US', '9cd1e1d6946598f97a9ef8bd258d1ee9', 23, 'Botble\\Companies\\Models\\Companies'),
(102, 'vi', '45560d1f28754493fdd689d6007808c3', 24, 'Botble\\Companies\\Models\\Companies'),
(103, 'en_US', '45560d1f28754493fdd689d6007808c3', 25, 'Botble\\Companies\\Models\\Companies'),
(104, 'vi', 'c17f006052bb1c0c5db8560e69da5d16', 26, 'Botble\\Companies\\Models\\Companies'),
(105, 'en_US', 'c17f006052bb1c0c5db8560e69da5d16', 27, 'Botble\\Companies\\Models\\Companies'),
(106, 'vi', 'cd6a0c83e4d06fddbe736fb6f23f10ee', 28, 'Botble\\Companies\\Models\\Companies'),
(107, 'en_US', 'cd6a0c83e4d06fddbe736fb6f23f10ee', 29, 'Botble\\Companies\\Models\\Companies'),
(108, 'vi', '1fa984103d80ae78f651846d69910c77', 30, 'Botble\\Companies\\Models\\Companies'),
(109, 'en_US', '1fa984103d80ae78f651846d69910c77', 31, 'Botble\\Companies\\Models\\Companies'),
(110, 'vi', 'fd6ab70f7a782ced01c1bccdd1cb12e9', 32, 'Botble\\Companies\\Models\\Companies'),
(111, 'en_US', 'fd6ab70f7a782ced01c1bccdd1cb12e9', 33, 'Botble\\Companies\\Models\\Companies'),
(112, 'vi', 'e17f6ee2646f23551d01df7e154cf703', 34, 'Botble\\Companies\\Models\\Companies'),
(113, 'en_US', 'e17f6ee2646f23551d01df7e154cf703', 35, 'Botble\\Companies\\Models\\Companies'),
(114, 'vi', 'ec404537559853cb070ede801f3886bc', 36, 'Botble\\Companies\\Models\\Companies'),
(115, 'en_US', 'ec404537559853cb070ede801f3886bc', 37, 'Botble\\Companies\\Models\\Companies'),
(116, 'vi', '2f6a161a8f0c441a1650698b1cce708d', 15, 'Botble\\Companies\\Models\\BusinessCategories'),
(117, 'en_US', '2f6a161a8f0c441a1650698b1cce708d', 16, 'Botble\\Companies\\Models\\BusinessCategories'),
(118, 'vi', '1fa7a380bd4d1f6b2a75e516155aec76', 38, 'Botble\\Companies\\Models\\Companies'),
(119, 'en_US', '1fa7a380bd4d1f6b2a75e516155aec76', 39, 'Botble\\Companies\\Models\\Companies'),
(120, 'vi', 'a41ed0103627b2f868feb9039bd76991', 40, 'Botble\\Companies\\Models\\Companies'),
(121, 'en_US', 'a41ed0103627b2f868feb9039bd76991', 41, 'Botble\\Companies\\Models\\Companies'),
(122, 'vi', '6550c38638ac24f73125af41e9938498', 42, 'Botble\\Companies\\Models\\Companies'),
(123, 'en_US', '6550c38638ac24f73125af41e9938498', 43, 'Botble\\Companies\\Models\\Companies'),
(124, 'vi', 'a212b164ed63c72eb397e7376e9e597c', 7, 'Botble\\Blog\\Models\\Category'),
(125, 'en_US', 'a212b164ed63c72eb397e7376e9e597c', 8, 'Botble\\Blog\\Models\\Category'),
(126, 'en_US', '05c8f8958815840d9909ee71897448d7', 9, 'Botble\\Blog\\Models\\Category'),
(127, 'en_US', 'b06b5bd1a4a64391e72a5515277c3cda', 10, 'Botble\\Blog\\Models\\Category'),
(128, 'en_US', '4b36cd2d444bf0801e9278cb73779a1a', 11, 'Botble\\Blog\\Models\\Category'),
(129, 'vi', '86bc6d6cd6b983d243298261d93e990d', 12, 'Botble\\Blog\\Models\\Category'),
(130, 'en_US', '86bc6d6cd6b983d243298261d93e990d', 13, 'Botble\\Blog\\Models\\Category'),
(131, 'vi', '4f056941eee786bfde12f5e4fa085881', 14, 'Botble\\Blog\\Models\\Category'),
(132, 'en_US', '4f056941eee786bfde12f5e4fa085881', 15, 'Botble\\Blog\\Models\\Category'),
(133, 'vi', 'eafe364d229af8ed0d0807592657d690', 16, 'Botble\\Blog\\Models\\Category'),
(134, 'en_US', 'eafe364d229af8ed0d0807592657d690', 17, 'Botble\\Blog\\Models\\Category'),
(135, 'vi', 'e98808a32a795d9d2b16599830eed6af', 18, 'Botble\\Blog\\Models\\Category'),
(136, 'en_US', 'e98808a32a795d9d2b16599830eed6af', 19, 'Botble\\Blog\\Models\\Category'),
(137, 'vi', '22a16332ef4090d0403b3384d326ebf7', 1, 'Botble\\Jobs\\Models\\JobCompanies');

-- --------------------------------------------------------

--
-- Table structure for table `login_otp`
--

CREATE TABLE `login_otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'telegram',
  `otp` varchar(60) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_otp`
--

INSERT INTO `login_otp` (`id`, `type`, `otp`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'telegram', '706085', 1, 1, '2022-08-16 01:38:10', '2022-08-16 01:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'news-dt-1', 0, 'image/jpeg', 388334, 'news-dt-1.jpg', '[]', '2022-06-08 00:02:59', '2022-06-08 09:31:10', '2022-06-08 09:31:10'),
(2, 1, 'news-dt-1-1', 0, 'image/jpeg', 388334, 'news-dt-1-1.jpg', '[]', '2022-06-08 09:31:37', '2022-06-08 09:31:37', NULL),
(3, 1, 'logo', 0, 'image/png', 1961, 'logo.png', '[]', '2022-06-08 09:35:03', '2022-06-08 09:35:03', NULL),
(4, 1, 'icon-award', 0, 'image/png', 1878, 'icon-award.png', '[]', '2022-06-08 09:35:13', '2022-06-08 09:35:13', NULL),
(5, 1, 'logo (1)', 0, 'image/png', 5693, 'logo-1.png', '[]', '2022-06-08 09:35:35', '2022-06-08 09:35:35', NULL),
(6, 1, 'banner-award', 0, 'image/jpeg', 244523, 'banner-award.jpg', '[]', '2022-06-08 10:14:39', '2022-06-08 10:14:39', NULL),
(7, 1, 'banner-mile', 0, 'image/jpeg', 485077, 'banner-mile.jpg', '[]', '2022-06-08 10:22:50', '2022-06-08 10:22:50', NULL),
(8, 1, 'mile-1', 0, 'image/png', 642213, 'mile-1.png', '[]', '2022-06-08 10:28:38', '2022-06-08 10:28:38', NULL),
(9, 1, 'mile-2', 0, 'image/png', 624521, 'mile-2.png', '[]', '2022-06-08 10:29:11', '2022-06-08 10:29:11', NULL),
(10, 1, 'mile-3', 0, 'image/png', 492119, 'mile-3.png', '[]', '2022-06-08 10:29:25', '2022-06-08 10:29:25', NULL),
(11, 1, 'mile-4', 0, 'image/png', 594747, 'mile-4.png', '[]', '2022-06-08 10:29:42', '2022-06-08 10:29:42', NULL),
(12, 1, 'mile-5', 0, 'image/png', 562581, 'mile-5.png', '[]', '2022-06-08 10:29:55', '2022-06-08 10:29:55', NULL),
(13, 1, 'mile-6', 0, 'image/png', 459380, 'mile-6.png', '[]', '2022-06-08 10:30:09', '2022-06-08 10:30:09', NULL),
(14, 1, 'mile-7', 0, 'image/png', 484469, 'mile-7.png', '[]', '2022-06-08 10:30:25', '2022-06-08 10:30:25', NULL),
(15, 1, 'icon-sus-1', 0, 'image/png', 3203, 'icon-sus-1.png', '[]', '2022-06-08 10:37:48', '2022-06-08 10:37:48', NULL),
(16, 1, 'sub-1', 0, 'image/jpeg', 218244, 'sub-1.jpg', '[]', '2022-06-08 10:37:57', '2022-06-08 10:37:57', NULL),
(17, 1, 'sub-2', 0, 'image/jpeg', 571920, 'sub-2.jpg', '[]', '2022-06-08 10:38:43', '2022-06-08 10:38:43', NULL),
(18, 1, 'b-1', 0, 'image/jpeg', 965013, 'b-1.jpg', '[]', '2022-06-08 11:05:52', '2022-06-08 11:05:52', NULL),
(19, 1, 'logo-busi-1', 0, 'image/jpeg', 10981, 'logo-busi-1.jpg', '[]', '2022-06-08 11:05:53', '2022-06-08 11:05:53', NULL),
(20, 1, 'logo-busi-2', 0, 'image/jpeg', 10229, 'logo-busi-2.jpg', '[]', '2022-06-08 11:06:11', '2022-06-08 11:06:11', NULL),
(21, 1, 'b-2', 0, 'image/jpeg', 993908, 'b-2.jpg', '[]', '2022-06-08 11:06:16', '2022-06-08 11:06:16', NULL),
(22, 1, 'logo-busi-3', 0, 'image/jpeg', 8172, 'logo-busi-3.jpg', '[]', '2022-06-08 11:06:41', '2022-06-08 11:06:41', NULL),
(23, 1, 'b-3', 0, 'image/jpeg', 583270, 'b-3.jpg', '[]', '2022-06-08 11:06:46', '2022-06-08 11:06:46', NULL),
(24, 1, 'logo-busi-4', 0, 'image/jpeg', 7181, 'logo-busi-4.jpg', '[]', '2022-06-08 11:07:09', '2022-06-08 11:07:09', NULL),
(25, 1, 'b-4', 0, 'image/jpeg', 681533, 'b-4.jpg', '[]', '2022-06-08 11:07:14', '2022-06-08 11:07:14', NULL),
(26, 1, 'logo-busi-5', 0, 'image/jpeg', 15735, 'logo-busi-5.jpg', '[]', '2022-06-08 11:07:26', '2022-06-08 11:07:26', NULL),
(27, 1, 'b-5', 0, 'image/jpeg', 390406, 'b-5.jpg', '[]', '2022-06-08 11:07:30', '2022-06-08 11:07:30', NULL),
(28, 1, 'dr', 0, 'image/png', 438140, 'dr.png', '[]', '2022-06-08 11:17:49', '2022-06-08 11:17:49', NULL),
(29, 1, 'people-1', 0, 'image/jpeg', 20414, 'people-1.jpg', '[]', '2022-06-08 11:21:31', '2022-06-08 11:21:31', NULL),
(30, 1, 'people-2', 0, 'image/jpeg', 26169, 'people-2.jpg', '[]', '2022-06-08 11:21:32', '2022-06-08 11:21:32', NULL),
(31, 1, 'people-3', 0, 'image/jpeg', 20990, 'people-3.jpg', '[]', '2022-06-08 11:21:32', '2022-06-08 11:21:32', NULL),
(32, 1, 'leader', 0, 'image/jpeg', 350673, 'leader.jpg', '[]', '2022-06-08 11:34:13', '2022-06-08 11:34:13', NULL),
(33, 1, 'group', 0, 'image/jpeg', 200291, 'group.jpg', '[]', '2022-06-08 11:34:27', '2022-06-08 11:34:27', NULL),
(34, 1, 'core-value', 0, 'image/png', 29125, 'core-value.png', '[]', '2022-06-08 11:39:34', '2022-06-08 11:39:34', NULL),
(35, 1, 'icon-contact-1', 0, 'image/png', 2590, 'icon-contact-1.png', '[]', '2022-06-08 11:47:33', '2022-06-08 11:47:33', NULL),
(36, 1, 'icon-contact-2', 0, 'image/png', 3131, 'icon-contact-2.png', '[]', '2022-06-08 11:47:34', '2022-06-08 11:47:34', NULL),
(37, 1, 'icon-contact-3', 0, 'image/png', 2824, 'icon-contact-3.png', '[]', '2022-06-08 11:47:35', '2022-06-08 11:47:35', NULL),
(38, 1, 'ct-logo-1', 0, 'image/png', 7181, 'ct-logo-1.png', '[]', '2022-06-08 11:51:42', '2022-06-08 11:51:42', NULL),
(39, 1, 'ct-logo-2', 0, 'image/png', 8342, 'ct-logo-2.png', '[]', '2022-06-08 11:51:42', '2022-06-08 11:51:42', NULL),
(40, 1, 'ct-logo-3', 0, 'image/png', 6367, 'ct-logo-3.png', '[]', '2022-06-08 11:51:43', '2022-06-08 11:51:43', NULL),
(41, 1, 'ct-logo-4', 0, 'image/png', 15920, 'ct-logo-4.png', '[]', '2022-06-08 11:51:43', '2022-06-08 11:51:43', NULL),
(42, 1, 'ct-logo-5', 0, 'image/png', 9810, 'ct-logo-5.png', '[]', '2022-06-08 11:51:43', '2022-06-08 11:51:43', NULL),
(43, 1, 'ct-logo-6', 0, 'image/png', 10127, 'ct-logo-6.png', '[]', '2022-06-08 11:51:43', '2022-06-08 11:51:43', NULL),
(44, 1, 'banner', 0, 'image/jpeg', 1478326, 'banner.jpg', '[]', '2022-06-08 12:07:04', '2022-06-08 12:07:04', NULL),
(45, 1, 'banner-2', 0, 'image/jpeg', 894609, 'banner-2.jpg', '[]', '2022-06-08 12:07:04', '2022-06-08 12:07:04', NULL),
(46, 1, 'b-1-1', 0, 'image/jpeg', 965013, 'b-1-1.jpg', '[]', '2022-06-08 12:20:50', '2022-06-08 12:20:50', NULL),
(47, 1, 'b-2-1', 0, 'image/jpeg', 993908, 'b-2-1.jpg', '[]', '2022-06-08 12:20:50', '2022-06-08 12:20:50', NULL),
(48, 1, 'b-3-1', 0, 'image/jpeg', 583270, 'b-3-1.jpg', '[]', '2022-06-08 12:20:50', '2022-06-08 12:20:50', NULL),
(49, 1, 'b-4-1', 0, 'image/jpeg', 681533, 'b-4-1.jpg', '[]', '2022-06-08 12:20:51', '2022-06-08 12:20:51', NULL),
(50, 1, 'b-5-1', 0, 'image/jpeg', 390406, 'b-5-1.jpg', '[]', '2022-06-08 12:20:51', '2022-06-08 12:20:51', NULL),
(51, 1, 'logo-11', 0, 'image/png', 5693, 'logo-1.png', '[]', '2022-06-08 12:22:11', '2022-11-24 03:55:50', '2022-11-24 03:55:50'),
(52, 1, 'logo-1-1', 0, 'image/png', 3224, 'logo-1-1.png', '[]', '2022-06-08 12:22:12', '2022-06-08 12:22:12', NULL),
(53, 1, 'logo-2', 0, 'image/png', 8889, 'logo-2.png', '[]', '2022-06-08 12:22:12', '2022-06-08 12:22:12', NULL),
(54, 1, 'logo-3', 0, 'image/png', 10122, 'logo-3.png', '[]', '2022-06-08 12:22:12', '2022-06-08 12:22:12', NULL),
(55, 1, 'logo-4', 0, 'image/png', 9805, 'logo-4.png', '[]', '2022-06-08 12:22:12', '2022-06-08 12:22:12', NULL),
(56, 1, 'logo-5', 0, 'image/png', 4019, 'logo-5.png', '[]', '2022-06-08 12:22:13', '2022-06-08 12:22:13', NULL),
(57, 1, 'phu-thai', 1, 'image/webp', 20214, 'tin-tuc/phu-thai.webp', '[]', '2022-06-08 21:36:23', '2022-06-08 21:36:59', '2022-06-08 21:36:59'),
(58, 1, 'phu-thai-1', 1, 'image/png', 245414, 'tin-tuc/phu-thai-1.png', '[]', '2022-06-08 21:37:05', '2022-06-08 21:37:05', NULL),
(59, 1, 'anh-website', 0, 'image/jpeg', 41191, 'anh-website.jpg', '[]', '2022-06-08 21:37:49', '2022-06-08 21:37:49', NULL),
(60, 1, 'anh-website-1', 0, 'image/jpeg', 41191, 'anh-website-1.jpg', '[]', '2022-06-08 21:41:54', '2022-06-08 21:41:54', NULL),
(61, 1, 'z2503700044136-42b7c7b3a045bb6e6cd8aab9ee1576c91', 0, 'image/jpeg', 1311542, 'z2503700044136-42b7c7b3a045bb6e6cd8aab9ee1576c91.jpg', '[]', '2022-06-08 21:50:55', '2022-06-08 21:50:55', NULL),
(62, 1, '193928541-1881634935328234-9127924091313473817-n-7220-11', 0, 'image/jpeg', 95030, '193928541-1881634935328234-9127924091313473817-n-7220-11.jpg', '[]', '2022-06-08 21:51:04', '2022-06-08 21:51:04', NULL),
(63, 1, '193928541-1881634935328234-9127924091313473817-n-7220-11', 1, 'image/jpeg', 95030, 'tin-tuc/193928541-1881634935328234-9127924091313473817-n-7220-11.jpg', '[]', '2022-06-08 21:51:14', '2022-06-08 21:51:14', NULL),
(64, 1, 'img-2934', 0, 'image/jpeg', 1039287, 'img-2934.jpg', '[]', '2022-06-08 21:54:30', '2022-06-08 21:54:30', NULL),
(65, 1, 'img-2936', 0, 'image/jpeg', 1164200, 'img-2936.jpg', '[]', '2022-06-08 21:54:42', '2022-06-08 21:54:42', NULL),
(66, 1, 'img-2939', 0, 'image/jpeg', 1184911, 'img-2939.jpg', '[]', '2022-06-08 21:54:53', '2022-06-08 21:54:53', NULL),
(67, 1, 'img-2934', 1, 'image/jpeg', 1039287, 'tin-tuc/img-2934.jpg', '[]', '2022-06-08 21:55:39', '2022-06-08 21:55:39', NULL),
(68, 1, 'dhcd2021jpg', 1, 'image/jpeg', 87135, 'tin-tuc/dhcd2021jpg.jpg', '[]', '2022-06-08 22:01:20', '2022-06-08 22:01:20', NULL),
(69, 1, '1', 0, 'image/png', 356172, '1.png', '[]', '2022-06-08 22:10:17', '2022-06-08 22:10:17', NULL),
(70, 1, '2', 0, 'image/png', 447038, '2.png', '[]', '2022-06-08 22:10:29', '2022-06-08 22:10:29', NULL),
(71, 1, '3', 0, 'image/png', 443089, '3.png', '[]', '2022-06-08 22:10:41', '2022-06-08 22:10:41', NULL),
(72, 1, '9', 0, 'image/png', 424513, '9.png', '[]', '2022-06-08 23:36:01', '2022-06-08 23:36:01', NULL),
(73, 1, '8', 0, 'image/png', 391407, '8.png', '[]', '2022-06-08 23:36:11', '2022-06-08 23:36:11', NULL),
(74, 1, '1', 1, 'image/png', 356172, 'tin-tuc/1.png', '[]', '2022-06-08 23:37:22', '2022-06-08 23:37:22', NULL),
(75, 1, 'rs-3', 0, 'image/jpeg', 51933, 'rs-3.jpg', '[]', '2022-06-08 23:39:00', '2022-06-08 23:39:00', NULL),
(76, 1, 'rs-2', 0, 'image/jpeg', 64294, 'rs-2.jpg', '[]', '2022-06-08 23:39:07', '2022-06-08 23:39:07', NULL),
(77, 1, 'rs-1', 0, 'image/jpeg', 55716, 'rs-1.jpg', '[]', '2022-06-08 23:39:15', '2022-06-08 23:39:15', NULL),
(78, 1, 'rs-2', 1, 'image/jpeg', 64294, 'tin-tuc/rs-2.jpg', '[]', '2022-06-08 23:39:41', '2022-06-08 23:39:41', NULL),
(79, 1, 'year-end-party-2019-1', 0, 'image/jpeg', 117434, 'year-end-party-2019-1.jpg', '[]', '2022-06-08 23:41:15', '2022-06-08 23:41:15', NULL),
(80, 1, 'year-end-party-2019', 0, 'image/jpeg', 86207, 'year-end-party-2019.jpg', '[]', '2022-06-08 23:41:24', '2022-06-08 23:41:24', NULL),
(81, 1, 'year-end-party-2019-2', 0, 'image/jpeg', 97354, 'year-end-party-2019-2.jpg', '[]', '2022-06-08 23:41:33', '2022-06-08 23:41:33', NULL),
(82, 1, 'year-end-party-2019', 1, 'image/jpeg', 86207, 'tin-tuc/year-end-party-2019.jpg', '[]', '2022-06-08 23:42:00', '2022-06-08 23:42:00', NULL),
(83, 1, 'ket-noi-yeu-thuong-phu-thai-2019-1', 0, 'image/jpeg', 199266, 'ket-noi-yeu-thuong-phu-thai-2019-1.jpg', '[]', '2022-06-08 23:43:47', '2022-06-08 23:43:47', NULL),
(84, 1, 'ket-noi-yeu-thuong-phu-thai-2019', 0, 'image/jpeg', 194068, 'ket-noi-yeu-thuong-phu-thai-2019.jpg', '[]', '2022-06-08 23:43:55', '2022-06-08 23:43:55', NULL),
(85, 1, 'ket-noi-yeu-thuong-phu-thai-2019-1', 1, 'image/jpeg', 199266, 'tin-tuc/ket-noi-yeu-thuong-phu-thai-2019-1.jpg', '[]', '2022-06-08 23:44:10', '2022-06-08 23:44:10', NULL),
(86, 1, 'einvoice2', 0, 'image/jpeg', 38148, 'einvoice2.jpg', '[]', '2022-06-08 23:48:23', '2022-06-08 23:48:23', NULL),
(87, 1, 'einvoice2', 1, 'image/jpeg', 38148, 'tin-tuc/einvoice2.jpg', '[]', '2022-06-08 23:48:50', '2022-06-08 23:48:50', NULL),
(88, 1, 'logo', 2, 'image/png', 22150, 'test/logo.png', '[]', '2022-06-10 00:41:57', '2022-06-10 00:41:57', NULL),
(89, 1, 'logo-share', 0, 'image/png', 13800, 'logo-share.png', '[]', '2022-07-12 03:00:48', '2022-07-12 03:00:48', NULL),
(90, 1, 'm_merged', 0, 'image/png', 8855, 'm-merged.png', '[]', '2022-08-21 19:58:48', '2022-08-21 19:58:48', NULL),
(91, 1, 'm_merged (1)', 0, 'image/png', 18432, 'm-merged-1.png', '[]', '2022-08-21 20:00:52', '2022-08-21 20:00:52', NULL),
(92, 1, 'BIFROST-Logo ngang đen', 0, 'image/png', 27172, 'bifrost-logo-ngang-den.png', '[]', '2022-08-21 20:04:11', '2022-08-21 20:04:11', NULL),
(93, 1, 'Untitled-2-01 (2)', 0, 'image/png', 86256, 'untitled-2-01-2.png', '[]', '2022-08-22 01:09:51', '2022-08-22 01:09:51', NULL),
(94, 1, 'b-3-1-1', 0, 'image/webp', 44728, '1074x652.webp', '[]', '2022-11-24 03:34:02', '2022-11-24 03:43:05', '2022-11-24 03:43:05'),
(95, 1, '23256', 0, 'image/webp', 189488, '23256.webp', '[]', '2022-11-24 03:43:15', '2022-11-25 02:49:44', '2022-11-25 02:49:44'),
(96, 1, '23256-1', 0, 'image/png', 2326472, '23256-1.png', '[]', '2022-11-24 03:50:02', '2022-11-25 02:49:41', '2022-11-25 02:49:41'),
(97, 1, 'logo-1.png', 0, 'image/jpeg', 44463, '104710171-logo-pthg.jpg', '[]', '2022-11-24 03:52:08', '2022-11-24 04:03:36', '2022-11-24 04:03:36'),
(98, 1, 'logo-1', 0, 'image/png', 5693, 'logo-1.png', '[]', '2022-11-24 04:02:06', '2022-11-24 04:02:06', NULL),
(99, 1, '104710171_logo-PTHG', 0, 'image/jpeg', 5410, '104710171-logo-pthg.jpg', '[]', '2022-11-24 04:03:41', '2022-11-24 04:03:41', NULL),
(100, 1, 'logo-phuthaigroupholdinds', 0, 'image/webp', 15722, 'logo-phuthaigroupholdinds.webp', '[]', '2022-11-24 04:19:05', '2022-11-24 04:19:05', NULL),
(101, 1, 'lgoo', 0, 'image/png', 60764, 'lgoo.png', '[]', '2022-11-24 04:31:57', '2022-11-24 04:31:57', NULL),
(102, 1, 'RRS_Dynamic_SE_P400_23MY_070922_08', 0, 'image/jpeg', 11243360, 'rrs-dynamic-se-p400-23my-070922-08.jpg', '[]', '2022-11-25 02:52:33', '2022-11-25 02:52:33', NULL),
(103, 1, 'RR1', 0, 'image/png', 328213, 'rr1.png', '[]', '2022-11-25 03:00:50', '2022-11-25 03:00:50', NULL),
(104, 1, 'mobility-phuthaiholdings', 0, 'image/jpeg', 667848, 'mobility-phuthaiholdings.jpg', '[]', '2022-11-25 03:17:40', '2022-11-25 03:18:40', '2022-11-25 03:18:40'),
(105, 1, 'mobility-phuthaiholdings1', 0, 'image/jpeg', 337488, 'mobility-phuthaiholdings1.jpg', '[]', '2022-11-25 03:18:46', '2022-11-25 03:18:46', NULL),
(106, 1, 'mobility-phuthaiholdings-home', 0, 'image/jpeg', 466669, 'mobility-phuthaiholdings-home.jpg', '[]', '2022-11-25 03:35:07', '2022-11-25 03:35:07', NULL),
(107, 1, 'machine-banner', 0, 'image/jpeg', 429471, 'machine-banner.jpg', '[]', '2023-12-27 04:44:05', '2023-12-27 04:44:05', NULL),
(108, 1, 'icon-index-1', 3, 'image/svg+xml', 713, 'icon/icon-index-1.svg', '[]', '2024-03-09 10:19:14', '2024-03-09 10:19:14', NULL),
(109, 1, 'icon-index-2', 3, 'image/svg+xml', 12791, 'icon/icon-index-2.svg', '[]', '2024-03-09 10:19:15', '2024-03-09 10:19:15', NULL),
(110, 1, 'icon-index-3', 3, 'image/svg+xml', 7667, 'icon/icon-index-3.svg', '[]', '2024-03-09 10:19:16', '2024-03-09 10:19:16', NULL),
(111, 1, 'logo-6', 0, 'image/png', 6989, 'logo-6.png', '[]', '2024-03-09 10:46:20', '2024-03-09 10:46:20', NULL),
(112, 1, 'logo-09', 0, 'image/jpeg', 606065, 'logo-09.jpg', '[]', '2024-03-09 10:48:40', '2024-03-09 10:48:40', NULL),
(113, 1, 'dt-1', 0, 'image/png', 7912, 'dt-1.png', '[]', '2024-03-10 07:29:51', '2024-03-10 07:29:51', NULL),
(114, 1, 'dt-2', 0, 'image/png', 6940, 'dt-2.png', '[]', '2024-03-10 07:29:52', '2024-03-10 07:29:52', NULL),
(115, 1, 'dt-3', 0, 'image/png', 33189, 'dt-3.png', '[]', '2024-03-10 07:29:53', '2024-03-10 07:29:53', NULL),
(116, 1, 'dt-4', 0, 'image/png', 2923, 'dt-4.png', '[]', '2024-03-10 07:29:54', '2024-03-10 07:29:54', NULL),
(117, 1, 'dt-5', 0, 'image/png', 63955, 'dt-5.png', '[]', '2024-03-10 07:29:56', '2024-03-10 07:29:56', NULL),
(118, 1, 'dt-6', 0, 'image/jpeg', 18932, 'dt-6.jpg', '[]', '2024-03-10 07:29:57', '2024-03-10 07:29:57', NULL),
(119, 1, 'dt-7', 0, 'image/png', 61684, 'dt-7.png', '[]', '2024-03-10 07:29:58', '2024-03-10 07:29:58', NULL),
(120, 1, 'dt-8', 0, 'image/png', 48509, 'dt-8.png', '[]', '2024-03-10 07:29:59', '2024-03-10 07:29:59', NULL),
(121, 1, 'dt-9', 0, 'image/png', 29704, 'dt-9.png', '[]', '2024-03-10 07:30:00', '2024-03-10 07:30:00', NULL),
(122, 1, 'dt-10', 0, 'image/png', 458239, 'dt-10.png', '[]', '2024-03-10 07:30:02', '2024-03-10 07:30:02', NULL),
(123, 1, 'dt-11', 0, 'image/png', 6593, 'dt-11.png', '[]', '2024-03-10 07:30:04', '2024-03-10 07:30:04', NULL),
(124, 1, 'vuong', 0, 'image/png', 4407, 'vuong.png', '[]', '2024-03-10 08:15:32', '2024-03-10 08:15:32', NULL),
(125, 1, 'dr-1', 0, 'image/png', 438140, 'dr-1.png', '[]', '2024-03-10 08:22:33', '2024-03-10 08:22:33', NULL),
(126, 1, 'mr', 0, 'image/png', 2258754, 'mr.png', '[]', '2024-03-10 08:22:42', '2024-03-10 08:22:42', NULL),
(127, 1, 'banner-1', 0, 'image/jpeg', 1038782, 'banner-1.jpg', '[]', '2024-03-10 09:05:09', '2024-03-10 09:05:09', NULL),
(128, 1, 'icon-index-1', 0, 'image/svg+xml', 713, 'icon-index-1.svg', '[]', '2024-03-10 09:08:41', '2024-03-10 09:08:41', NULL),
(129, 1, 'icon-index-2', 0, 'image/svg+xml', 12791, 'icon-index-2.svg', '[]', '2024-03-10 09:08:42', '2024-03-10 09:08:42', NULL),
(130, 1, 'icon-index-3', 0, 'image/svg+xml', 7667, 'icon-index-3.svg', '[]', '2024-03-10 09:08:43', '2024-03-10 09:08:43', NULL),
(131, 1, 'company-2', 0, 'image/jpeg', 1050540, 'company-2.jpg', '[]', '2024-03-10 09:24:01', '2024-03-10 09:24:01', NULL),
(132, 1, '11', 0, 'image/png', 483075, '11.png', '[]', '2024-03-11 21:19:01', '2024-03-11 21:19:01', NULL),
(133, 1, '12', 0, 'image/png', 551239, '12.png', '[]', '2024-03-11 21:19:03', '2024-03-11 21:19:03', NULL),
(134, 1, '13', 0, 'image/png', 381175, '13.png', '[]', '2024-03-11 21:19:06', '2024-03-11 21:19:06', NULL),
(135, 1, '14', 0, 'image/png', 435236, '14.png', '[]', '2024-03-11 21:19:09', '2024-03-11 21:19:09', NULL),
(136, 1, 'icon-sus-2', 0, 'image/png', 2599, 'icon-sus-2.png', '[]', '2024-03-11 21:20:56', '2024-03-11 21:20:56', NULL),
(137, 1, 'logo-06', 0, 'image/png', 33087, 'logo-06.png', '[]', '2024-03-12 00:52:08', '2024-03-12 00:52:08', NULL),
(138, 1, 'logo-00', 4, 'image/png', 433006, 'cty-con/logo-00.png', '[]', '2024-03-12 00:54:09', '2024-03-12 00:54:09', NULL),
(139, 1, 'logo-02', 4, 'image/png', 32962, 'cty-con/logo-02.png', '[]', '2024-03-12 00:59:07', '2024-03-12 00:59:07', NULL),
(140, 1, 'logo-01', 4, 'image/png', 17403, 'cty-con/logo-01.png', '[]', '2024-03-12 01:39:36', '2024-03-12 01:39:36', NULL),
(141, 1, 'logo-07', 4, 'image/png', 44621, 'cty-con/logo-07.png', '[]', '2024-03-12 02:23:10', '2024-03-12 02:23:10', NULL),
(142, 1, 'logo-10', 4, 'image/png', 455266, 'cty-con/logo-10.png', '[]', '2024-03-12 02:30:57', '2024-03-12 02:30:57', NULL),
(143, 1, 'logo-05', 4, 'image/png', 12558, 'cty-con/logo-05.png', '[]', '2024-03-12 02:34:30', '2024-03-12 02:34:30', NULL),
(144, 1, 'gfs-nong-nghiep-847x330', 0, 'image/png', 452013, 'gfs-nong-nghiep-847x330.png', '[]', '2024-03-12 18:55:30', '2024-03-12 19:52:08', '2024-03-12 19:52:08'),
(145, 1, 'gfs-nong-nghiep-847x330-1', 0, 'image/jpeg', 93380, 'gfs-nong-nghiep-847x330-1.jpg', '[]', '2024-03-12 19:38:20', '2024-03-12 19:38:20', NULL),
(146, 1, 'logo-2', 4, 'image/png', 8889, 'cty-con/logo-2.png', '[]', '2024-03-12 19:41:20', '2024-03-12 19:41:20', NULL),
(147, 1, 'bds', 4, 'image/jpeg', 112265, 'cty-con/bds.jpg', '[]', '2024-03-12 19:45:23', '2024-03-12 19:45:23', NULL),
(148, 1, 'inv', 0, 'image/jpeg', 61660, 'inv.jpg', '[]', '2024-03-12 19:48:33', '2024-03-12 19:52:04', '2024-03-12 19:52:04'),
(149, 1, 'kj', 0, 'image/jpeg', 57868, 'kj.jpg', '[]', '2024-03-12 19:52:14', '2024-03-12 19:52:14', NULL),
(150, 1, 'gn', 0, 'image/jpeg', 78844, 'gn.jpg', '[]', '2024-03-12 20:13:35', '2024-03-12 20:13:35', NULL),
(151, 1, 'gd', 0, 'image/png', 328154, 'gd.png', '[]', '2024-03-12 20:26:42', '2024-03-12 20:26:42', NULL),
(152, 1, 'about-1', 0, 'image/png', 426995, 'about-1.png', '[]', '2024-04-07 19:30:57', '2024-04-07 19:30:57', NULL),
(153, 1, 'leader-1', 0, 'image/png', 778943, 'leader-1.png', '[]', '2024-04-07 19:31:12', '2024-04-07 19:31:12', NULL),
(154, 1, 'banner-3', 0, 'image/png', 2208765, 'banner-3.png', '[]', '2024-04-08 00:06:11', '2024-04-08 00:06:11', NULL),
(155, 1, 'lhe', 0, 'image/png', 1094129, 'lhe.png', '[]', '2024-04-09 07:54:37', '2024-04-09 07:54:37', NULL),
(156, 1, 'lhe-2', 0, 'image/png', 420773, 'lhe-2.png', '[]', '2024-04-09 07:54:55', '2024-04-09 07:54:55', NULL),
(157, 1, 'n', 0, 'image/png', 105625, 'n.png', '[]', '2024-04-09 08:40:50', '2024-04-09 08:40:50', NULL),
(158, 1, 'his', 0, 'image/png', 87020, 'his.png', '[]', '2024-04-09 08:46:22', '2024-04-09 08:46:22', NULL),
(159, 1, 'awrad', 0, 'image/png', 495399, 'awrad.png', '[]', '2024-04-09 19:52:04', '2024-04-09 19:52:04', NULL),
(160, 1, 'awrad-2', 0, 'image/png', 192445, 'awrad-2.png', '[]', '2024-04-10 00:52:21', '2024-04-10 00:52:21', NULL),
(161, 1, 'Media-Technology-1', 0, 'image/png', 137974, 'media-technology-1.png', '[]', '2024-04-15 23:22:42', '2024-04-15 23:22:42', NULL),
(162, 1, '12-1', 0, 'image/png', 129633, '12-1.png', '[]', '2024-04-15 23:47:11', '2024-04-15 23:47:11', NULL),
(163, 1, 'BJC.BK_BIG-226de847', 5, 'image/png', 10443, 'doi-tac/bjcbk-big-226de847.png', '[]', '2024-04-16 00:48:15', '2024-04-16 00:48:15', NULL),
(164, 1, 'asetuto_1', 5, 'image/webp', 8058, 'doi-tac/asetuto-1.webp', '[]', '2024-04-16 03:11:04', '2024-04-16 03:11:04', NULL),
(165, 1, 'logo-pon', 5, 'image/png', 1894, 'doi-tac/logo-pon.png', '[]', '2024-04-16 03:13:16', '2024-04-16 03:13:16', NULL),
(166, 1, 'images', 5, 'image/png', 4136, 'doi-tac/images.png', '[]', '2024-04-16 03:14:22', '2024-04-16 03:14:22', NULL),
(167, 1, 'Metso_Outotec_Logo.svg', 5, 'image/png', 15414, 'doi-tac/metso-outotec-logosvg.png', '[]', '2024-04-16 03:18:36', '2024-04-16 03:18:36', NULL),
(168, 1, 'b2aca310d79f2bd1c60aa97c497a64a6', 5, 'image/jpeg', 147865, 'doi-tac/b2aca310d79f2bd1c60aa97c497a64a6.jpg', '[]', '2024-04-16 03:19:35', '2024-04-16 03:19:35', NULL),
(169, 1, 'saovangdatviet', 6, 'image/jpeg', 848985, 'giai-thuong/saovangdatviet.jpg', '[]', '2024-04-16 03:26:39', '2024-04-16 03:26:39', NULL),
(170, 1, 'thanh-tuu-giai-thuong-2', 6, 'image/png', 8066727, 'giai-thuong/thanh-tuu-giai-thuong-2.png', '[]', '2024-04-16 03:27:30', '2024-04-16 03:27:30', NULL),
(171, 1, 'saovangthudo-300x224', 6, 'image/png', 118461, 'giai-thuong/saovangthudo-300x224.png', '[]', '2024-04-16 03:28:41', '2024-04-16 03:28:41', NULL),
(172, 1, 'thanh-tuu-giai-thuong-3-300x213', 6, 'image/png', 101622, 'giai-thuong/thanh-tuu-giai-thuong-3-300x213.png', '[]', '2024-04-16 03:28:41', '2024-04-16 03:28:41', NULL),
(173, 1, 'Nhà nhập khẩu vàng năm 2021', 6, 'image/jpeg', 109275, 'giai-thuong/nha-nhap-khau-vang-nam-2021.jpg', '[]', '2024-04-16 03:30:31', '2024-04-16 03:30:31', NULL),
(174, 1, 'Top 10 Doanh nhân tiêu biểu', 6, 'image/jpeg', 334587, 'giai-thuong/top-10-doanh-nhan-tieu-bieu.jpg', '[]', '2024-04-16 03:32:46', '2024-04-16 03:32:46', NULL),
(175, 1, 'logo-bkf-01-20221013035513-a4ccr', 4, 'image/png', 41990, 'cty-con/logo-bkf-01-20221013035513-a4ccr.png', '[]', '2024-04-17 00:46:55', '2024-04-17 00:46:55', NULL),
(176, 1, 'logo-1', 4, 'image/png', 15666, 'cty-con/logo-1.png', '[]', '2024-04-17 00:48:53', '2024-04-17 00:48:53', NULL),
(177, 1, 'logo', 4, 'image/png', 14300, 'cty-con/logo.png', '[]', '2024-04-17 00:50:40', '2024-04-17 00:50:40', NULL),
(178, 1, 'KOWIL', 4, 'image/png', 42592, 'cty-con/kowil.png', '[]', '2024-04-17 00:52:49', '2024-04-17 00:52:49', NULL),
(179, 1, 'KOWIL123', 4, 'image/png', 24532, 'cty-con/kowil123.png', '[]', '2024-04-17 00:55:50', '2024-04-17 00:55:50', NULL),
(180, 1, 'header_logo_b', 5, 'image/png', 3078, 'doi-tac/header-logo-b.png', '[]', '2024-04-24 22:07:05', '2024-04-24 22:07:05', NULL),
(181, 1, 'Petronas_logo.svg', 5, 'image/png', 101022, 'doi-tac/petronas-logosvg.png', '[]', '2024-04-24 22:07:46', '2024-04-24 22:07:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'tin tuc', 'tin-tuc', 0, '2022-06-08 21:36:19', '2022-06-08 21:36:19', NULL),
(2, 1, 'test', 'test', 0, '2022-06-10 00:41:52', '2022-06-10 00:41:52', NULL),
(3, 1, 'icon', 'icon', 0, '2024-03-09 10:17:31', '2024-03-09 10:17:31', NULL),
(4, 1, 'cty con', 'cty-con', 0, '2024-03-12 00:53:54', '2024-03-12 00:53:54', NULL),
(5, 1, 'doi-tac', 'doi-tac', 0, '2024-04-16 00:48:06', '2024-04-16 00:48:06', NULL),
(6, 1, 'giai-thuong', 'giai-thuong', 0, '2024-04-16 03:26:32', '2024-04-16 03:26:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Menu chính', 'menu-chinh', 'published', '2022-06-08 12:26:56', '2022-06-08 12:26:56'),
(2, 'Menu chính', 'menu-chinh-1', 'published', '2022-06-08 23:56:01', '2022-06-08 23:56:01'),
(3, 'Menu footer 1', 'menu-footer-1', 'published', '2024-03-10 09:37:32', '2024-03-10 09:37:32'),
(4, 'Menu footer 2', 'menu-footer-2', 'published', '2024-03-10 09:38:34', '2024-03-10 09:38:34'),
(5, 'Menu footer 1', 'menu-footer-1-1', 'published', '2024-03-11 01:38:21', '2024-03-11 01:38:21'),
(6, 'Menu footer 2', 'menu-footer-2-1', 'published', '2024-03-11 01:38:53', '2024-03-11 01:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-06-08 12:27:01', '2022-06-08 12:27:01'),
(2, 2, 'main-menu', '2022-06-09 00:28:05', '2022-06-09 00:28:05'),
(3, 3, 'menu-footer-1', '2024-03-10 09:38:19', '2024-03-10 09:38:19'),
(4, 4, 'menu-footer-2', '2024-03-10 09:39:08', '2024-03-10 09:39:08'),
(5, 5, 'menu-footer-1', '2024-03-11 20:35:19', '2024-03-11 20:35:19'),
(6, 6, 'menu-footer-2', '2024-03-11 20:35:56', '2024-03-11 20:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `icon_font` varchar(50) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) DEFAULT NULL,
  `css_class` varchar(120) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(53, 1, 34, 19, 'Botble\\Page\\Models\\Page', '/doi-tac', '', 1, 'Đối tác', '', '_self', 0, '2024-03-10 19:32:32', '2024-03-10 19:33:07'),
(70, 1, 38, 0, NULL, '/business#field-6', '', 5, 'Nông nghiệp', '', '_self', 0, '2024-03-11 19:44:20', '2024-04-16 00:18:15'),
(68, 1, 38, 0, NULL, '/business#field-4', '', 3, 'Công nghệ - Truyền thông', '', '_self', 0, '2024-03-11 19:44:20', '2024-04-16 00:18:15'),
(69, 1, 38, 0, NULL, '/business#field-5', '', 4, 'Giáo dục - Trải nghiệm', '', '_self', 0, '2024-03-11 19:44:20', '2024-04-16 00:18:15'),
(67, 1, 38, 0, NULL, '/business#field-3', '', 2, 'Đầu tư', '', '_self', 0, '2024-03-11 19:44:20', '2024-03-11 20:07:45'),
(66, 1, 38, 0, NULL, '/business#field-2', '', 1, 'Sản xuất', '', '_self', 0, '2024-03-11 19:44:20', '2024-03-11 20:07:45'),
(35, 1, 34, 7, 'Botble\\Page\\Models\\Page', '/ve-chung-toi', '', 0, 'Về chúng tôi', '', '_self', 0, '2022-06-09 03:04:38', '2022-06-09 03:05:00'),
(11, 1, 41, 1, 'Botble\\Page\\Models\\Page', '/tin-tuc', '', 0, 'Tin tức và sự kiện ', '', '_self', 0, '2022-06-08 12:29:01', '2022-06-09 03:08:59'),
(40, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/phat-trien-ben-vung', '', 2, 'Phát triển bền vững', '', '_self', 0, '2022-06-09 03:05:37', '2024-03-10 19:35:07'),
(34, 1, 0, 0, NULL, '/ve-chung-toi', '', 0, 'VỀ CHÚNG TÔI ', '', '_self', 1, '2022-06-09 03:04:38', '2022-06-09 04:24:02'),
(65, 1, 38, 0, NULL, '/business#field-1', '', 0, 'Phân phối và Bán lẻ', '', '_self', 0, '2024-03-11 19:44:20', '2024-03-11 20:07:45'),
(17, 1, 34, 2, 'Botble\\Page\\Models\\Page', '/giai-thuong', '', 2, 'Giải thưởng', '', '_self', 0, '2022-06-08 21:03:01', '2024-03-10 19:33:07'),
(18, 2, 0, 0, NULL, 'https://phuthai.apecsoft.asia/en/about-us-1', '', 0, 'OUR STORY', '', '_self', 1, '2022-06-09 00:28:05', '2022-06-09 03:25:14'),
(19, 2, 18, 12, 'Botble\\Page\\Models\\Page', '/about-us-1', '', 0, 'About us', '', '_self', 0, '2022-06-09 00:28:05', '2022-06-09 03:14:49'),
(56, 2, 18, 20, 'Botble\\Page\\Models\\Page', '/our-partners', '', 1, 'Our partners', '', '_self', 0, '2024-03-10 19:37:16', '2024-03-11 20:45:33'),
(55, 2, 28, 0, NULL, 'en/jobs', '', 1, 'Jobs', '', '_self', 0, '2024-03-10 19:36:07', '2024-03-10 19:36:07'),
(22, 2, 0, 14, 'Botble\\Page\\Models\\Page', '/our-business', '', 1, 'Our Business', '', '_self', 1, '2022-06-09 00:28:05', '2022-06-09 03:14:49'),
(82, 2, 22, 0, NULL, '/en/our-business#field-11', '', 3, 'Technology - Media', '', '_self', 0, '2024-03-11 20:47:31', '2024-04-16 00:21:04'),
(80, 2, 22, 0, NULL, '/en/our-business#field-9', '', 1, 'Manufacturing', '', '_self', 0, '2024-03-11 20:47:31', '2024-03-11 20:47:31'),
(81, 2, 22, 0, NULL, '/en/our-business#field-10', '', 2, 'Investment', '', '_self', 0, '2024-03-11 20:47:31', '2024-03-11 20:47:31'),
(79, 2, 22, 0, NULL, '/en/our-business#field-8', '', 0, 'Distribution & Retail', '', '_self', 0, '2024-03-11 20:45:33', '2024-03-11 20:45:33'),
(28, 2, 0, 0, NULL, 'en/news', '', 3, 'News', '', '_self', 1, '2022-06-09 00:28:05', '2024-03-10 19:36:07'),
(29, 2, 28, 18, 'Botble\\Page\\Models\\Page', '/news', '', 0, 'News', '', '_self', 0, '2022-06-09 00:28:05', '2022-06-09 03:14:49'),
(30, 2, 18, 17, 'Botble\\Page\\Models\\Page', '/awards-and-achievement', '', 2, 'Awards and Achievement', '', '_self', 0, '2022-06-09 00:28:05', '2024-03-10 19:37:16'),
(31, 2, 0, 15, 'Botble\\Page\\Models\\Page', '/sustainable-development', '', 2, 'Sustainable Development', '', '_self', 0, '2022-06-09 00:28:05', '2024-03-10 19:36:07'),
(32, 2, 0, 11, 'Botble\\Page\\Models\\Page', '/contact', '', 4, 'Contact', '', '_self', 0, '2022-06-09 00:28:05', '2022-06-09 04:27:07'),
(41, 1, 0, 1, 'Botble\\Page\\Models\\Page', '/tin-tuc', '', 3, 'Tin tức', '', '_self', 1, '2022-06-09 03:08:59', '2024-03-10 19:35:07'),
(54, 1, 41, 0, NULL, 'jobs', '', 1, 'Tuyển dụng', '', '_self', 0, '2024-03-10 19:34:58', '2024-03-10 19:34:58'),
(38, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/business', '', 1, 'Lĩnh vực hoạt động', '', '_self', 1, '2022-06-09 03:04:38', '2024-03-11 21:23:28'),
(39, 1, 0, 8, 'Botble\\Page\\Models\\Page', '/lien-he', '', 4, 'Liên hệ', '', '_self', 0, '2022-06-09 03:04:38', '2022-06-09 03:05:00'),
(42, 3, 0, 0, NULL, '/business#field-1', '', 0, 'Phân phối và Bán lẻ', '', '_self', 0, '2024-03-10 09:38:19', '2024-03-11 20:09:08'),
(43, 3, 0, 0, NULL, '/business#field-2', '', 1, 'Sản xuất', '', '_self', 0, '2024-03-10 09:38:19', '2024-03-11 20:09:08'),
(44, 3, 0, 0, NULL, '/business#field-3', '', 2, 'Đầu tư', '', '_self', 0, '2024-03-10 09:38:19', '2024-03-11 20:09:08'),
(45, 3, 0, 0, NULL, '/business#field-4', '', 3, 'Công nghệ - Truyền thông', '', '_self', 0, '2024-03-10 09:38:19', '2024-04-16 00:25:29'),
(46, 3, 0, 0, NULL, '/business#field-5', '', 4, 'Giáo dục - Trải nghiệm', '', '_self', 0, '2024-03-10 09:38:19', '2024-04-16 00:25:29'),
(47, 3, 0, 0, NULL, '/business#field-6', '', 5, 'Nông nghiệp', '', '_self', 0, '2024-03-10 09:38:19', '2024-04-16 00:25:29'),
(48, 3, 0, 0, NULL, '/business#field-7', '', 6, 'Bất động sản', '', '_self', 0, '2024-03-10 09:38:19', '2024-04-16 00:25:29'),
(62, 4, 0, 4, 'Botble\\Page\\Models\\Page', '/phat-trien-ben-vung', NULL, 1, 'Phát triển bền vững', NULL, '_self', 0, '2024-03-11 01:39:44', '2024-03-11 01:39:44'),
(61, 4, 0, 7, 'Botble\\Page\\Models\\Page', '/ve-chung-toi', NULL, 0, 'Giới thiệu chung', NULL, '_self', 0, '2024-03-11 01:39:44', '2024-03-11 01:39:44'),
(57, 6, 0, 12, 'Botble\\Page\\Models\\Page', '/about-us-1', '', 0, 'About us', '', '_self', 0, '2024-03-11 01:39:15', '2024-03-11 20:35:56'),
(58, 6, 0, 15, 'Botble\\Page\\Models\\Page', '/sustainable-development', '', 1, 'Sustainable Development', '', '_self', 0, '2024-03-11 01:39:15', '2024-03-11 20:35:56'),
(59, 6, 0, 18, 'Botble\\Page\\Models\\Page', '/news', '', 2, 'News', '', '_self', 0, '2024-03-11 01:39:15', '2024-03-11 20:35:56'),
(60, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/contact', '', 3, 'Contact', '', '_self', 0, '2024-03-11 01:39:15', '2024-03-11 20:35:56'),
(63, 4, 0, 1, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 2, 'Tin tức', NULL, '_self', 0, '2024-03-11 01:39:44', '2024-03-11 01:39:44'),
(64, 4, 0, 8, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 3, 'Liên hệ', NULL, '_self', 0, '2024-03-11 01:39:44', '2024-03-11 01:39:44'),
(71, 1, 38, 0, NULL, '/business#field-7', '', 6, 'Bất động sản', '', '_self', 0, '2024-03-11 19:44:20', '2024-04-16 00:18:15'),
(72, 5, 0, 0, NULL, 'en/our-business#field-8', '', 0, 'Distribution & Retail', '', '_self', 0, '2024-03-11 20:33:43', '2024-03-11 20:33:43'),
(73, 5, 0, 0, NULL, 'en/our-business#field-9', '', 1, 'Manufactoring', '', '_self', 0, '2024-03-11 20:33:43', '2024-03-11 20:35:05'),
(74, 5, 0, 0, NULL, 'en/our-business#field-10', '', 2, 'Investment', '', '_self', 0, '2024-03-11 20:33:43', '2024-03-11 20:35:05'),
(75, 5, 0, 0, NULL, 'en/our-business#field-11', '', 3, 'Technology - Media', '', '_self', 0, '2024-03-11 20:33:43', '2024-04-16 00:27:32'),
(76, 5, 0, 0, NULL, 'en/our-business#field-12', '', 4, 'Education - Experience', '', '_self', 0, '2024-03-11 20:33:43', '2024-04-16 00:27:32'),
(77, 5, 0, 0, NULL, 'en/our-business#field-13', '', 5, 'Agriculture', '', '_self', 0, '2024-03-11 20:33:43', '2024-04-16 00:27:32'),
(78, 5, 0, 0, NULL, 'en/our-business#field-14', '', 6, 'Real estate', '', '_self', 0, '2024-03-11 20:33:43', '2024-04-16 00:27:32'),
(83, 2, 22, 0, NULL, '/en/our-business#field-12', '', 4, 'Education - Experience', '', '_self', 0, '2024-03-11 20:47:31', '2024-04-16 00:21:04'),
(84, 2, 22, 0, NULL, '/en/our-business#field-13', '', 5, 'Agriculture', '', '_self', 0, '2024-03-11 20:47:31', '2024-04-16 00:21:04'),
(85, 2, 22, 0, NULL, '/en/our-business#field-14', '', 6, 'Real estate', '', '_self', 0, '2024-03-11 20:47:31', '2024-04-16 00:21:04'),
(86, 1, 38, 0, NULL, '/business#field-15', '', 7, 'Thương mại quốc tế - XNK', '', '_self', 0, '2024-04-16 00:18:15', '2024-04-16 00:28:28'),
(87, 2, 22, 0, NULL, '/en/our-business#field-16', '', 7, 'International Commerce ', '', '_self', 0, '2024-04-16 00:21:04', '2024-04-16 00:21:04'),
(88, 3, 0, 0, NULL, '/business#field-15', '', 7, 'Thương mại quốc tế - XNK', '', '_self', 0, '2024-04-16 00:25:29', '2024-04-16 00:25:29'),
(89, 5, 0, 0, NULL, 'en/our-business#field-16', '', 7, 'International commerce - Import and Export', '', '_self', 0, '2024-04-16 00:27:32', '2024-04-16 00:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2021_12_26_024330_update_theme_options_social_links', 1),
(22, '2016_06_17_091537_create_contacts_table', 2),
(23, '2015_06_18_033822_create_blog_table', 3),
(24, '2021_02_16_092633_remove_default_value_for_author_type', 3),
(25, '2021_12_03_030600_create_blog_translations', 3),
(26, '2017_03_27_150646_re_create_custom_field_tables', 4),
(27, '2016_10_03_032336_create_languages_table', 5),
(28, '2016_10_07_193005_create_translations_table', 6),
(29, '2022_06_08_171115_add_filed_banner_to_pages', 7),
(30, '2022_03_11_160007_redirects_create_redirects_table', 8),
(31, '2022_08_15_164207_login_sso_create_login_sso_table', 9),
(32, '2024_03_09_155326_companies_create_companies_table', 10),
(33, '2024_03_09_082735_jobs_create_jobs_table', 11),
(34, '2024_03_10_143750_add_field_to_contact', 12),
(35, '2024_03_10_162028_add_field_to_companies_business_categories', 13),
(36, '2017_10_24_154832_create_newsletter_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'www@gmai.com', NULL, 'subscribed', '2024-03-10 09:52:07', '2024-03-10 09:52:07'),
(2, 'trong@gmail.com', NULL, 'subscribed', '2024-03-10 09:53:30', '2024-03-10 09:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `banner`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', '<p>Những thông tin đặc sắc về chúng tôi&nbsp;</p>', 1, NULL, NULL, 'default', 0, 'Những thông tin đặc sắc về chúng tôi', 'published', '2022-06-08 09:32:32', '2022-06-08 20:45:21'),
(2, 'Giải thưởng', '<p>Thông tin nổi bật về chúng tôi</p>', 1, NULL, 'awrad.png', 'award', 0, 'Thông tin nổi bật về chúng tôi', 'published', '2022-06-08 10:14:42', '2024-04-09 19:52:07'),
(3, 'Lịch sử phát triển', '<p>Các mốc thời gian và sự kiện quan trọng của chúng tôi</p>', 1, NULL, 'banner-mile.jpg', 'milestones', 0, 'Các mốc thời gian và sự kiện quan trọng của chúng tôi', 'published', '2022-06-08 10:22:54', '2022-06-09 03:00:49'),
(4, 'Phát triển bền vững', '<p>Chúng tôi tin chắc rằng một tương lai tốt đẹp hơn bắt đầu từ hôm nay</p>', 1, NULL, NULL, 'sustainable', 0, 'Chúng tôi tin chắc rằng một tương lai tốt đẹp hơn bắt đầu từ hôm nay', 'published', '2022-06-08 10:34:16', '2022-06-09 02:59:39'),
(5, 'Lĩnh vực Hoạt động', '<p>Chúng tôi hy vọng sẽ xây dựng thêm nhiều mối quan hệ đối tác lâu dài để thúc đẩy sự phát triển của chúng tôi vượt ra ngoài biên giới Việt Nam</p>', 1, NULL, NULL, 'business', 0, 'Chúng tôi hy vọng sẽ xây dựng thêm nhiều mối quan hệ đối tác lâu dài để thúc đẩy sự phát triển của chúng tôi vượt ra ngoài biên giới Việt Nam', 'published', '2022-06-08 10:58:47', '2024-03-11 21:31:35'),
(6, 'Con người', '<p>Tập đoàn luôn mong muốn phát triển hơn nữa quan hệ đối tác chiến lược trên toàn thế giới</p>', 1, NULL, NULL, 'people', 0, 'Tập đoàn luôn mong muốn phát triển hơn nữa quan hệ đối tác chiến lược trên toàn thế giới', 'published', '2022-06-08 11:13:37', '2022-06-09 02:55:12'),
(7, 'Về chúng tôi', '<p>TẬP ĐOÀN PHÂN PHỐI &amp; ĐẦU TƯ ĐA NGÀNH HÀNG ĐẦU VIỆT NAM</p>', 1, NULL, NULL, 'about', 0, 'TẬP ĐOÀN PHÂN PHỐI & ĐẦU TƯ ĐA NGÀNH HÀNG ĐẦU VIỆT NAM', 'published', '2022-06-08 11:29:40', '2024-01-03 04:30:22'),
(8, 'Liên hệ', '<p>Tập đoàn Phú Thái Holdings luôn lắng nghe</p>', 1, NULL, NULL, 'contact', 0, 'Tập đoàn Phú Thái Holdings luôn lắng nghe', 'published', '2022-06-08 11:45:54', '2022-06-09 02:49:25'),
(9, 'Trang chủ', '<p>Trang chủ</p>', 1, NULL, NULL, 'home', 0, 'Trang chủ', 'published', '2022-06-08 12:02:53', '2022-06-08 12:02:53'),
(10, 'Home', '<p>Home</p>', 1, NULL, NULL, 'home', 0, 'Home', 'published', '2022-06-09 00:00:39', '2022-06-09 00:00:39'),
(11, 'Contact', '<p>Phu Thai Holdings Group always listen</p>', 1, NULL, NULL, 'contact', 0, 'Phu Thai Holdings Group always listen', 'published', '2022-06-09 00:01:05', '2022-06-09 00:01:05'),
(12, 'About us', '<p>To be a leading investment group in Viet Nam with aspiration for global development<br>&nbsp;</p>', 1, NULL, NULL, 'about', 0, 'To be a leading investment group in Viet Nam with aspiration for global development', 'published', '2022-06-09 00:06:22', '2022-06-09 00:06:22'),
(13, 'Our people', '<p>The Group always wants to further develop strategic partnerships throughout the world</p>', 1, NULL, NULL, 'people', 0, 'The Group always wants to further develop strategic partnerships throughout the world', 'published', '2022-06-09 00:08:01', '2022-06-09 00:08:01'),
(14, 'Our Business', '<p>We hope to build more long-lasting partnerships to accelerate our growth beyond the borders of Vietnam</p>', 1, NULL, NULL, 'business', 0, 'We hope to build more long-lasting partnerships to accelerate our growth beyond the borders of Vietnam', 'published', '2022-06-09 00:15:45', '2022-06-09 00:15:45'),
(15, 'Sustainable Development', '<p>We firmly believe that a better future starts today</p>', 1, NULL, NULL, 'sustainable', 0, 'We firmly believe that a better future starts today', 'published', '2022-06-09 00:17:22', '2022-06-09 00:17:22'),
(16, 'Milestones', '<p>Our major milestones &amp; timeline</p>', 1, NULL, 'banner-mile.jpg', 'milestones', 0, 'Our major milestones & timeline', 'published', '2022-06-09 00:19:53', '2022-06-09 00:19:53'),
(17, 'Awards and Achievement', '<p>Featured information about us</p>', 1, NULL, 'banner-award.jpg', 'award', 0, 'Featured information about us', 'published', '2022-06-09 00:22:03', '2022-06-09 03:17:58'),
(18, 'News', '<p>Special information about us</p>', 1, NULL, NULL, 'default', 0, 'Special information about us', 'published', '2022-06-09 00:23:34', '2022-06-09 00:23:34'),
(19, 'Đối tác của chúng tôi', '<p>Chúng tôi hy vọng sẽ xây dựng thêm nhiều mối quan hệ đối tác lâu dài để thúc đẩy sự phát triển của chúng tôi vượt ra ngoài biên giới Việt Nam</p>', 1, NULL, NULL, 'partners', 0, 'Chúng tôi hy vọng sẽ xây dựng thêm nhiều mối quan hệ đối tác lâu dài để thúc đẩy sự phát triển của chúng tôi vượt ra ngoài biên giới Việt Nam', 'published', '2024-03-10 07:23:45', '2024-03-10 07:23:52'),
(20, 'Our partners', '<p>We hope to build more long-term partnerships to promote our growth beyond the borders of Vietnam.</p>', 1, NULL, NULL, 'partners', 0, 'We hope to build more long-term partnerships to promote our growth beyond the borders of Vietnam.', 'published', '2024-03-10 19:36:56', '2024-03-10 19:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(8, 'Tập đoàn Phú Thái chung tay phòng chống dịch Covid-19', 'Hưởng ứng lời kêu gọi của Chính Phủ và MTTQ VN về việc toàn dân đoàn kết, tương thân tương ái cùng chung tay đẩy lùi Dịch Covid – 19, từ khi dịch bùng phát đến nay Phú Thái đã ủng hộ gần 3 tỷ đồng, riêng đợt dịch lần thứ tư là hơn 2 tỷ đồng, như: Ủng hộ Quỹ Vacine của Thành phố Hà Nội – 1 tỷ đồng;', '<p>Hưởng ứng lời kêu gọi của Chính Phủ và MTTQ VN về việc toàn dân đoàn kết, tương thân tương ái cùng chung tay đẩy lùi Dịch Covid – 19, từ khi dịch bùng phát đến nay Phú Thái đã ủng hộ gần 3 tỷ đồng, riêng đợt dịch lần thứ tư là hơn 2 tỷ đồng, như: Ủng hộ Quỹ Vacine của Thành phố Hà Nội – 1 tỷ đồng; Ủng hộ tiền mặt và thực phẩm, vật tư y tế cho các điểm cách ly ở Hà nội, các xã tâm dịch của Bắc Giang, Bắc Ninh … trị giá gần 1 tỷ đồng, đặc biệt Phú Thái đã chung tay với nhóm thiện nguyện TML thử nghiệm thiết kế và lắp đặt 10 buồng lấy mẫu xét nghiệm di động tặng cho các Bác sỹ tuyến đầu của Hà Nội, Bắc Giang và Bắc Ninh…</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/z2503700044136-42b7c7b3a045bb6e6cd8aab9ee1576c91.jpg\" alt=\"z2503700044136-42b7c7b3a045bb6e6cd8aab9ee1576c91.jpg\"></figure><p>Trước diễn biến phức tạp của dịch bệnh Covid-19, Phú Thái xác định công tác phòng, chống dịch bệnh là nhiệm vụ cấp bách và quan trọng phải thực hiện song song với nhiệm vụ kinh doanh. Để thực hiện được cả 2 nhiệm vụ cùng 1 lúc, Ban lãnh đạo Phú Thái đã chỉ đạo tích cực phòng chống dich Covid, triển khai thực hiện nhiều hoạt động thiết thực với mong muốn đạt được mục tiêu không có người lao động mắc bệnh dịch để đảm bảo công việc kinh doanh hiệu quả và an toàn. Các Công ty thành viên trong lĩnh vực kinh doanh phải đảm bảo luôn luôn cung cấp đầy đủ, kịp thời hàng hóa tới khách hàng nhưng vẫn phải tuân thủ đúng quy định của việc phòng, chống dịch của Chính Phủ và các tỉnh, thành</p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/193928541-1881634935328234-9127924091313473817-n-7220-11.jpg\" alt=\"193928541-1881634935328234-9127924091313473817-n-7220-11.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'tin-tuc/193928541-1881634935328234-9127924091313473817-n-7220-11.jpg', 228, NULL, '2021-06-16 00:42:53', '2024-05-08 07:16:59'),
(9, 'Phú Thái Group chung tay vì Miền trung yêu thương', 'Thể hiện tình thần trách nhiệm xã hội, với tinh thần “tương thân tương ái”, “lá lành đùm lá rách” nhằm chia sẻ với những khó khăn, mất mát của người dân các tỉnh miền Trung trọng đợt bão lũ, CBNV Phú Thái Group cùng với CBNV các công ty thành viên thuộc Tập đoàn TCC/BJC đã chung tay ủng hộ 1.000 suất quà là các nhu yếu phẩm trị giá gần 500 triệu đồng cho 1.000 hộ gia đình ở Huế và Quảng Nam.', '<p>Thể hiện tình thần trách nhiệm xã hội, với tinh thần “tương thân tương ái”, “lá lành đùm lá rách” nhằm chia sẻ với những khó khăn, mất mát của người dân các tỉnh miền Trung trọng đợt bão lũ, CBNV Phú Thái Group cùng với CBNV các công ty thành viên thuộc Tập đoàn TCC/BJC đã chung tay ủng hộ 1.000 suất quà là các nhu yếu phẩm trị giá gần 500 triệu đồng cho 1.000 hộ gia đình ở Huế và Quảng Nam.</p><p>Với những tình cảm và tấm lòng sẻ này, chúng tôi mong rằng lũ lụt, thiên tai sẽ qua mau, để người dân sớm ổn định lại tinh thần, cuộc sống.</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/img-2934.jpg\" alt=\"img-2934.jpg\"></figure><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/img-2936.jpg\" alt=\"img-2936.jpg\"></figure><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/img-2939.jpg\" alt=\"img-2939.jpg\"></figure><p style=\"text-align:center;\"><em><i>Hình ảnh CBNV trực tiếp tặng quà tại Hương Trà - Huế ngày 30/10/2020 và tại Duy Xuyên - Quảng Nam ngày 1/11/2020.</i></em></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/img-2934.jpg', 247, NULL, '2020-11-05 01:33:07', '2024-05-08 07:59:18'),
(10, 'Mời họp đại hội đồng cổ đông thường niên 2021', 'Công ty Cổ phần Tập Đoàn Phú Thái trân trọng thông báo và kính mời Quý cổ đông tham dự cuộc họp Đại hội đồng cổ đông thường niên năm 2021, cụ thể như sau:', '<p style=\"text-align:center;\"><strong>THÔNG BÁO MỜI HỌP­</strong></p><p style=\"text-align:center;\"><strong>ĐẠI HỘI ĐỒNG CỔ ĐÔNG THƯỜNG NIÊN 2021</strong></p><p style=\"text-align:center;\"><em><i><strong>INVITATION LETTER</strong></i></em></p><p style=\"text-align:center;\"><em><i><strong>2021 ANNUAL GENERAL MEETING OF SHAREHOLDERS</strong></i></em></p><p style=\"text-align:center;\"><strong>&nbsp;</strong></p><p><strong><u>Kính gửi</u></strong><em><i><strong>:</strong></i></em><strong>&nbsp;QUÝ CỔ ĐÔNG</strong></p><p><em><i><strong><u>Attention</u>: SHAREHOLDERS OF PHU THAI GROUP JOINT STOCK COMPANY</strong></i></em></p><p><em><i>&nbsp;</i></em></p><p>Công ty Cổ phần Tập Đoàn Phú Thái trân trọng thông báo và kính mời Quý cổ đông tham dự cuộc họp Đại hội đồng cổ đông thường niên năm 2021, cụ thể như sau:</p><p><em><i>Phu Thai Group Joint Stock Company would like to inform and invite Shareholders to attend 2021 Annual General Meeting of Shareholders (AGM). Details of the proposed meeting are as follows:</i></em></p><ol><li><br><strong>Thời gian họp:&nbsp;Từ 09h30 đến 12h sáng ngày 25 tháng 06 năm 2021 (Thứ sáu)</strong></li></ol><p><em><i><strong>Time: </strong>From 09.30 AM to 12.00 PM, Friday, 25 June 2021</i></em><br><strong>2. Địa điểm:&nbsp;</strong>Phòng 1803, Toà nhà văn phòng Trung tâm Hà Nội, 44B Lý Thường Kiệt, phường Trần Hưng Đạo, quận Hoàn Kiếm, TP. Hà Nội.</p><p><em><i><strong>Venue:</strong> Room 1803, Hanoi Centre Office building, 44B Ly Thuong Kiet, Tran Hung Dao ward, Hoan Kiem district, Hanoi</i></em><br><strong>3.&nbsp;Nội dung dự kiến tại Đại hội Cổ đông thường niên 2021:</strong></p><p><em><i><strong>Contents and agenda of the AGM2021</strong></i></em></p><ul><li>Báo cáo tình hình hoạt động kinh doanh năm 2020;</li></ul><p><em><i>Report on the results of business activities in 2020</i></em></p><ul><li>Báo cáo của HĐQT, Ban Giám đốc và Ban Kiểm Soát năm 2020;</li></ul><p><em><i>Reports of the Board of Managements, Directors and Inspection Committee 2020</i></em></p><ul><li>Kế hoạch kinh doanh năm 2021;</li></ul><p><em><i>Business plans for 2021</i></em></p><ul><li>Các tờ trình Đại Hội Đồng Cổ Đông.</li></ul><p><em><i>General proposal to the General Shareholder Meeting.</i></em></p><ul><li>Các nội dung khác thuộc thẩm quyền của Đại Hội Đồng Cổ Đông.</li></ul><p><em><i>Others subject to approval of the General Shareholder Meeting</i></em></p><ol><li><strong>Thành phần tham dự đại hội</strong> / <em><i><strong>Participants</strong></i></em></li></ol><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tất cả Cổ đông hiện hữu hoặc Người được ủy quyền đại diện sở hữu cổ phần theo Quy định của pháp luật và Điều lệ công ty. Thông báo mời họp sẽ được gửi tới địa chỉ của từng cổ đông.</p><p><em><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All existing shareholders or their authorized representatives in accordance to the law and the company’s Charter. Invitation letter will be sent to the address of each shareholder</i></em></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cổ đông khi tham dự Đại hội vui lòng mang theo Thông báo mời họp, Sổ cổ đông, giấy CMND hoặc hộ chiếu. Trong trường hợp được ủy quyền tham dự, xin mang theo giấy ủy quyền (bản chính, theo mẫu của công ty), giấy CMND, hoặc hộ chiếu (bản sao) của cổ đông và giấy CMND hoặc hộ chiếu của người được ủy quyền (bản chính).</p><p><em><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The shareholder shall bring the registration of shareholders, and his ID card or passport. In case a shareholder authorizes a person to attend the proposed meeting, the authorized person shall bring the original power of attorney in the company’s standard form, a copy of the shareholder’s ID card or passport, and his original ID card or passport</i></em></p><ol><li><strong>Liên hệ / </strong><em><i><strong>Contacting</strong></i></em></li></ol><p>Mọi thông tin chi tiết xin liên hệ ban Thư ký Ban tổ chức Đại hội:</p><p><em><i>Please contact the secretary of the proposed meeting for further information</i></em></p><p>Điện thoại/Tel: 024 3565 9099 - máy lẻ/ext.: 173&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 024 3565 9080</p><p>Điện thoại di động / Cellphone: 090 210 2621</p><p>Địa chỉ văn phòng: Phòng 1801, Toà nhà văn phòng Trung tâm Hà Nội, 44B Lý Thường Kiệt, phường Trần Hưng Đạo, quận Hoàn Kiếm, TP. Hà Nội</p><p><em><i>Address: Room 1801, Hanoi Centre Office building, 44B Ly Thuong Kiet, Tran Hung Dao ward, Hoan Kiem district, Hanoi</i></em></p><p>­­Rất hân hạnh đón tiếp Quý cổ đông.</p><p><em><i>It\'s very pleased to welcome you shareholders.</i></em><br><br>&nbsp;</p><p><em><i>Trân trọng!</i></em></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/dhcd2021jpg.jpg', 233, NULL, '2020-06-16 01:42:15', '2024-05-05 08:01:29'),
(11, 'Phú Thái cùng “Chung tay vì sức khỏe cộng đồng” trong mùa dịch Covid 2019', 'Nằm trong chuỗi các hoạt động hưởng ứng Tháng Nhân đạo năm 2020 với chủ đề ‘Chung tay vì sức khỏe cộng đồng”, mới đây Công ty Cổ phần Tập đoàn Phú Thái đã cùng phối hợp với Hội Chữ thập đỏ TP. Hà Nội tổ chức chương trình “Chung tay giúp đỡ người có hoàn cảnh khó khăn bị ảnh hưởng bởi dịch Covid-19”, trao 1.000 suất quà g', '<figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/1.png\" alt=\"1.png\"></figure><p>Sau hơn 3 tháng bùng phát, dịch bệnh Covid đã làm ảnh hưởng nặng nề đến nền kinh tế nói chung, đời sống an sinh xã hội của người dân nói riêng. Tình trạng mất việc làm, thu hẹp sản xuất kinh doanh diễn ra trên diện rộng, những nỗi lo về cơm áo gạo tiền và nỗi lo về an toàn sức khỏe cộng đồng luôn thường trực tạo thêm nhiều gánh nặng cho Chính phủ và mỗi doanh nghiệp, mỗi cá nhân.</p><p>Mặc dù chịu nhiều ảnh hưởng bởi dịch bệnh nhưng với tinh thần vì cộng động, lá lành đùm lá rách, tập thể cán bộ, công nhân viên Công ty CP Tập đoàn Phú Thái vẫn hăng hái đóng góp sức mình cho cộng đồng, chung tay đẩy lùi dịch bệnh Covid.</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/2.png\" alt=\"2.png\"></figure><p style=\"text-align:center;\"><em><i>(Chủ tịch Công đoàn Công ty CP Tập đoàn Phú Thái, Bà Kông Thị Thanh Bình trao đại diện 1.000 suất quà trị giá 100 triệu đồng cho Hội Chữ thập đỏ TP.Hà Nội)</i></em></p><p>Cùng đồng hành với chương trình có ông Nguyễn Đức Khải - UVTV, Trưởng ban Kiểm tra TƯ Hội Chữ thập đỏ Việt Nam, đồng chí Nguyễn Kim Hoàng- Phó trưởng ban Dân vận Thành ủy Hà Nội, đồng chí Đào Ngọc Triệu- Chủ tịch Hội Chữ thập đỏ thành phố Hà Nội, Hội Chữ thập đỏ quận Hai Bà Trưng cùng đông đảo cán bộ, nhân viên của Tập đoàn Phú Thái và đội ngũ tình nguyện viên đến từ đoàn thanh niên Quận Hai Bà Trưng.</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/3.png\" alt=\"3.png\"></figure><p style=\"text-align:center;\"><em><i>(Đại diện Hội Chữ thập đỏ Việt Nam, Hội Chữ thập đỏ Hà Nội và Công đoàn Công ty CP Tập đoàn Phú Thái trao quà cho bà con)</i></em></p><p>Chia sẻ tại chương trình, ông Đào Ngọc Triệu - Chủ tịch Hội Chữ thập đỏ thành phố Hà Nội cho biết: “Tháng Nhân đạo năm 2020 với chủ đề “Chung tay vì sức khỏe cộng đồng”, trong bối cảnh dịch bệnh Covid-19 sẽ tập trung vào các hoạt động chăm sóc sức khỏe cộng đồng, hướng tới một cộng đồng khỏe mạnh đẩy lùi dịch bệnh đặc biệt là các hoạt động chăm lo, hỗ trợ những người có hoàn cảnh khó khăn, người yếu thế trong xã hội bị ảnh hưởng bởi dịch bệnh. Bên cạnh đó, các chương trình, hoạt động ý nghĩa, thiết thực như: trao tặng nhà Chữ thập đỏ; trao tặng bò; hỗ trợ sinh kế; hiến máu nhân đạo, hiến mô tạng.... được Hội Chữ thập đỏ từ Thành phố đến cơ sở Hội quan tâm, đẩy mạnh. Phấn đấu trong Tháng Nhân đạo năm nay sẽ trợ giúp được từ 5.000 đến 7.000 lượt người có hoàn cảnh khó khăn”. Ông Đào Ngọc Triệu - Chủ tịch Hội cũng nhấn mạnh: “Đây cũng là dịp truyền thông sâu rộng các giá trị nhân văn, nhân ái của dân tộc ta; Giá trị tư tưởng, đạo đức của Chủ tịch Hồ Chí Minh- Chủ tịch danh dự đầu tiên của Hội Chữ thập đỏ Việt Nam đối với hoạt động nhân đạo. Từ đó thúc đẩy các tầng lớp nhân dân trong xã hội tích cực làm việc thiện, hướng đến một xã hội đầy tính nhân văn, nhân ái. Hình ảnh, vai trò, vị thế của Hội Chữ thập đỏ Thành phố ngày càng được khẳng định, góp phần đảm bảo công tác an sinh xã hội trên địa bàn”.</p><p style=\"text-align:center;\"><em><i>(Ông Đào Ngọc Triệu - Chủ tịch Hội Chữ thập đỏ thành phố Hà Nội)</i></em></p><p>Về phía tập đoàn Phú Thái, gác lại những bộn bề công việc hàng ngày và những áp lực trong sản xuất kinh doanh vì tình hình dịch bệnh, cán bộ nhân viên trong tập đoàn với sự nhiệt tình, ý thức cộng đồng và mong muốn chia sẻ được phần nào gánh nặng với bà con trên địa bàn Quận đã có mặt từ sớm, chuẩn bị những phần quà “của ít lòng nhiều”, mang những yêu thương gửi đến cộng đồng.</p><p>Tuy rằng xứ bắc, xứ đông</p><p>Khắp trong bờ cõi cũng dòng anh em.</p><p>Nhiễu điều phủ lấy giá gương,</p><p>Người trong một nước phải thương nhau cùng.</p><p>Bầu ơi thương lấy bí cùng,</p><p>Tuy rằng khác giống nhưng chung một giàn.</p><p>(Ca dao)</p><p>Cho dù khó khăn còn nhiều, dịch bệnh còn diễn biến phức tạp nhưng với tinh thần đoàn kết một lòng, tương thân tương ái của người dân cả nước, chúng ta sẽ sớm vượt qua được giai đoạn khó khăn này.</p><p>Với tất cả tình cảm của mình, cán bộ, nhân viên Tập đoàn Phú Thái chân thành cảm ơn sự quan tâm, đồng hành của TW Hội Chữ thập đỏ, Hội Chữ thập đỏ TP. Hà Nội cùng các bạn tình nguyện viên đã chung tay cùng Phú Thái. Chúc bà con giữ sức khỏe, tinh thần để cùng nhau đẩy lùi dịch bệnh.</p><p>Một số hình ảnh tại buổi trao quà:</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/9.png\" alt=\"9.png\"></figure><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/8.png\" alt=\"8.png\"></figure>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/1.png', 232, NULL, '2020-04-28 01:40:31', '2024-05-05 19:08:54'),
(7, 'Tập đoàn Phú Thái chính thức trở thành Nhà phân phối độc quyền cho Sản phẩm Rong nho Trường Thọ', 'Ngày 10 tháng 01 năm 2022, Tập đoàn Phú Thái chính thức hợp tác với Công ty TNHH Seagrapes Việt Nam - thương hiệu rong nho Việt Nam duy nhất được đăng ký bảo hộ thương hiệu tại Mỹ (USPTO) - trở thành nhà phân phối độc quyền tại kênh siêu thị và điểm bán lẻ trên toàn quốc.', '<div>Rong nho Trường Thọ là sản phẩm của công ty TNHH Seagrapes Vietnam, đơn vị sở hữu bí quyết công nghệ chế biến sản phẩm rong nho tách nước đạt chất lượng tốt nhất, liên tiếp đạt Top 1 Amazon Hoa Kỳ và Canada. Rong nho rất được ưa chuộng tại các nước Châu Âu, trong các bữa ăn dinh dưỡng của các gia đình. Trong rong nho có chứa các chất Fucoidan và Vitamin có tác dụng ngăn ngừa ung thư và trẻ hóa các tế bào. Rong Nho Trường Thọ được trồng tại vùng biển xanh, sạch đẹp tỉnh Khánh Hòa. Được chế biến và cải tiến từ công nghệ tách nước Okinawa Nhật Bản hơn 10 năm qua nên rong nho có màu xanh tươi tự nhiên, không mùi tanh, rất giòn và ngon và có hạn sử dụng lên đến 12 tháng mà không cần dùng đến hóa chất bảo quản. Đặc biệt, Rong Nho Trường Thọ có chứa hàm lượng chất dinh dưỡng và khoáng chất cao tốt cho sức khỏe như chất xơ, canxi, đạm, kali, magiê, sắt… phù hợp với mọi người dùng. Ngoài ra, đây là dòng sản phẩm có mùi thơm tự nhiên của đại dương và tỉ lệ nở lên tới 1:3 cao nhất hiện nay.&nbsp;</div><div>&nbsp;</div><div>Seagrapes Việt Nam cũng là đơn vị đạt nhiều chứng chỉ uy tín cấp Quốc tế như: FDA Hoa Kỳ, GMP, HACCP đạt chuẩn quốc tế, Top 20 thương hiệu nổi tiếng hàng đầu cả nước. Năm 2021, thương hiệu Rong nho Trường Thọ trở thành thương hiệu Rong nho Việt Nam duy nhất được đăng ký bảo hộ thương hiệu tại Hoa Kỳ (USPTO).&nbsp;&nbsp;</div><div>&nbsp;</div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/tin-tuc/phu-thai-1.png\" alt=\"phu-thai-1\"><br><i>Nguồn ảnh: Seagrapes Việt Nam</i></p><div>Tập đoàn Phú Thái được biết đến là nhà phân phối hàng đầu tại Việt Nam với gần 30 năm kinh nghiệm, đội ngũ nhân sự chuyên nghiệp lành nghề và mạng lưới hơn 100,000 điểm bán hàng khắp cả nước. Một vài thương hiệu lớn trên thế giới do Phú Thái phân phối trong nước phải kể đến như Procter&amp;Gamble, Dutch Lady, Kewpie, Cuckoo, Paloma, Chang Beer và Tong Garden.</div><div>Việc hợp tác này đánh dấu sự khởi đầu của mối quan hệ đối tác lâu dài giữa Seagrapes Việt Nam và Tập đoàn Phú Thái. Sự chuyên nghiệp trong phương thức quản lý và vận hành trong lĩnh vực phân phối của Phú Thái Group sẽ góp phần đưa sản phẩm Việt Nam chất lượng cao đến tận tay người tiêu dùng Việt.</div><div>&nbsp;</div><div>Hiện tại, Rong Nho Trường Thọ đã bắt đầu có mặt tại các điểm bán lẻ trên toàn quốc. Dự kiến sản phẩm sẽ có mặt tại tất cả quầy kệ siêu thị trong Quý 1/2022.</div><p class=\"MsoNormal\">&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'tin-tuc/phu-thai-1.png', 260, NULL, '2022-01-10 00:42:08', '2024-05-08 07:38:57'),
(12, 'Tập đoàn Phú Thái trao hơn 2.000 phần quà Tết với tổng giá trị hơn 1 tỷ đồng', 'Từ 15/01/2022, Tập đoàn Phú Thái bắt đầu triển khai chương trình “Tết trao yêu thương” nhân dịp Xuân Nhâm Dần năm 2022. Theo đó, Phú Thái Group đã tặng 2.000 phần quà Tết cho các hộ gia đình khó khăn với tổng giá trị hơn 1 tỷ đồng.', '<div><p style=\"text-align:center;\">Chương trình “Tết trao yêu thương” được Tập đoàn Phú Thái triển khai từ ngày 15/01/2022 đến 20/01//2022 tại gần 10</p><p>điểm trên khắp địa bàn Thành phố, cụ thể tại Huyện Mê Linh, Huyện Ứng Hòa, Xã Trầm Lộng, Tỉnh Nam Định, Huyện Việt Yên - Bắc Giang, Phường Láng Hạ - Đống Đa, Công đoàn Quận Đống Đa. Đối tượng được nhận quà là các hộ gia đình có hoàn cảnh khó khăn (hộ nghèo, hộ cận nghèo, hộ chính sách, hộ có hoàn cảnh đặc biệt, hộ khó khăn, hộ</p><p>chịu ảnh hưởng nghiêm trọng của dịch Covid-19, các trẻ em mồ côi do cha mẹ không may mất vì Covid-19…). Trị giá bình quân mỗi suất quà là 500.000</p><p>đồng, bao gồm nhu yếu phẩm thiết yếu và bánh kẹo sử dụng trong dịp Tết Nguyên đán nhằm giúp người dân vui Xuân đón Tết Nhâm Dần đầm ấm, ý nghĩa hơn.</p><p>Để tổ chức chương trình này, Tập đoàn Phú Thái đã phối hợp chặt chẽ với P&amp;G và chính quyền địa phương, đồng thời, danh sách nhận quà Tết được các cấp đoàn thể, tổ chức thông báo và xác nhận.</p><p>Trao quà Tết là sự chia sẻ thiết thực của Tập đoàn Phú Thái với những gia đình còn nhiều khó khăn trên cả nước, đặc biệt là tại các khu vực bị ảnh hưởng nghiêm trọng bởi đại dịch Covid -19. Đây cũng là một trong những hoạt động thường niên mà Tập đoàn thực hiện để góp phần hỗ trợ các gia đình ít may mắn có điều kiện đón Tết đầy đủ, đầm ấm hơn.</p><p>Dưới đây là hình ảnh trao quà Tết tại một vài quận/huyện:</p></div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/rs-3.jpg\" alt=\"rs-3\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/rs-2.jpg\" alt=\"rs-2.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/rs-1.jpg\" alt=\"rs-1.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'tin-tuc/rs-2.jpg', 259, NULL, '2022-01-21 00:41:37', '2024-05-05 21:01:14'),
(13, 'Year end Party 2019', 'Chương trình được tổ chức ở Không gian trải nghiệm Nhà Diều (Trầm Lộng - Ứng Hòa - Hà Nội) trong tiết trời những ngày cuối năm với sự tham gia của gần 60 CBCC PTG ở khu vực Hà Nội và Hải Phòng', '<p>Chương trình được tổ chức ở Không gian trải nghiệm Nhà Diều (Trầm Lộng - Ứng Hòa - Hà Nội) trong tiết trời những ngày cuối năm với sự tham gia của gần 60 CBCC PTG ở khu vực Hà Nội và Hải Phòng</p><p>Các hoạt động trải nghiệm như gói bánh chưng, làm giò, chơi các trò chơi dân gian... cũng như Chương trình party buổi tối đã giúp các CBCC sát gần nhau hơn trong không khí ấm cúng của gia đình ngày cuối năm.</p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/year-end-party-2019-1.jpg\" alt=\"year-end-party-2019-1.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/year-end-party-2019.jpg\" alt=\"year-end-party-2019.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/year-end-party-2019-2.jpg\" alt=\"year-end-party-2019-2.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/year-end-party-2019.jpg', 258, NULL, '2020-03-16 02:00:38', '2024-05-01 08:15:48'),
(14, 'Cuộc thi \'Kết nối yêu thương Phú Thái 2019\'', 'Với mục đích nhằm nâng cao đời sống tinh thần cho CBNV, vui vẻ để tăng tốc trong sản xuất kinh doanh. Đồng thời hướng tới kỷ niệm 26 năm ngày thành lập Tập đoàn Phú Thái. Được sự đồng ý của Ban Giám đốc, Ban chấp hành Công đoàn Tập đoàn quyết định và triển khai cuộc thi hát và báo ảnh với chủ đề “Kết nối yêu thương – Phú Thái 2019” giữa các đơn vị trong tập đoàn Phú Thái và các đơn vị thuộc Phú Th', '<div><div>Với mục đích nhằm nâng cao đời sống tinh thần cho CBNV, vui vẻ để tăng tốc trong sản xuất kinh doanh. Đồng thời hướng tới kỷ niệm 26 năm ngày thành lập Tập đoàn Phú Thái. Được sự đồng ý của Ban Giám đốc, Ban chấp hành Công đoàn Tập đoàn quyết định và triển khai cuộc thi hát và báo ảnh với chủ đề “Kết nối yêu thương – Phú Thái 2019” giữa các đơn vị trong tập đoàn Phú Thái và các đơn vị thuộc Phú Thái Holdings.</div></div><div><div>&nbsp;</div><div>Cuộc thi đã thu hút 29 tiết mục tham gia với đa dạng màu sắc đơn ca, song ca, nhảy múa và 9 báo ảnh.</div></div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/ket-noi-yeu-thuong-phu-thai-2019-1.jpg\" alt=\"ket-noi-yeu-thuong-phu-thai-2019-1.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/ket-noi-yeu-thuong-phu-thai-2019.jpg\" alt=\"ket-noi-yeu-thuong-phu-thai-2019.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/ket-noi-yeu-thuong-phu-thai-2019-1.jpg', 226, NULL, '2020-03-17 01:59:14', '2024-05-08 07:16:53'),
(15, 'Thông báo về việc áp dụng hóa đơn điện tử của Công ty CP Tập đoàn Phú Thái', 'Được sự cho phép của Cục Thuế Hà Nội, Công ty cổ phần Tập đoàn Phú Thái (PTG) trân trọng thông báo đến Quý Khách hàng về việc áp dụng song song hóa đơn giá trị gia tăng.', '<div><div>Được sự cho phép của Cục Thuế Hà Nội, Công ty cổ phần Tập đoàn Phú Thái (PTG) trân trọng thông báo đến Quý Khách hàng về việc áp dụng song song hóa đơn giá trị gia tăng.</div></div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/einvoice2.jpg\" alt=\"einvoice2.jpg\"></p><div class=\"s-content cltext mt-3 wow fadeInUp\"><p>Được sự cho phép của Cục Thuế Hà Nội, Công ty cổ phần Tập đoàn Phú Thái (PTG) trân trọng thông báo đến Quý Khách hàng về việc áp dụng song song hóa đơn giá trị gia tăng: Hình thức hóa đơn giấy và hình thức hóa đơn điện tử như sau:</p><p>1.Thời gian dự kiến áp dụng hóa đơn điện tử: từ ngày 10/8/2016.</p><p>2.Đơn vị cung cấp giải pháp: Công ty Cổ phần Công nghệ Phần mềm kế toán VACOM</p><p>3.Nghiệp vụ được áp dụng: hoạt động cung ứng hàng hóa, dịch vụ ….</p><p>4.Thông tin chi tiết về hóa đơn điện tử: Quý khách hàng vui lòng tải hóa đơn điện tử trên http://118.70.187.9:2764 ,Hoặc liên hệ Phòng Tài chính – Kế toán PTG, điện thoại 04.35689099 để được phục vụ kịp thời.</p><p>Hóa đơn điện tử có giá trị như hóa đơn giấy. Việc áp dụng hóa đơn điện tử thuận tiện cho việc thanh toán và công tác quản lý kinh doanh, dễ dàng trong kê khai khấu trừ thuế GTGT đầu vào đối với khách hàng là tổ chức, doanh nghiệp, phù hợp với xu thế phát triển kinh tế xã hội.&nbsp;<br>&nbsp;</p></div>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'tin-tuc/einvoice2.jpg', 203, NULL, '2020-03-18 00:42:29', '2024-05-03 07:16:34'),
(22, 'Announcement on the application of electronic invoices of Phu Thai Group Joint Stock Company', 'With the permission of Hanoi Tax Department, Phu Thai Group Joint Stock Company (PTG) is pleased to inform customers about the parallel application of value-added invoices.', '<div><div>With the permission of Hanoi Tax Department, Phu Thai Group Joint Stock Company (PTG) is pleased to inform customers about the parallel application of value-added invoices.</div></div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/einvoice2.jpg\" alt=\"einvoice2.jpg\"></p><div class=\"s-content cltext mt-3 wow fadeInUp\"><p>With the permission of Hanoi Tax Department, Phu Thai Group Joint Stock Company (PTG) is pleased to inform our customers about the parallel application of value-added invoices: Paper invoice form and paper invoice form. E-invoices are as follows:</p><p>1. Expected time to apply e-invoices: from August 10, 2016.</p><p>2. Solution provider: VACOM Accounting Software Technology Joint Stock Company</p><p>3.Applicable profession: activities of providing goods and services....</p><p>4. Detailed information about e-invoices: Please download e-invoices on http://118.70.187.9:2764 ,Or contact PTG Finance - Accounting Department, phone 04.35689099 for service timely service.</p><p>Electronic invoices have the same value as paper invoices. The application of electronic invoices is convenient for payment and business management, easy in declaring and deducting input VAT for customers who are organizations and enterprises, in line with the development trend. Socioeconomic.</p></div>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/einvoice2.jpg', 135, NULL, '2020-03-18 01:57:53', '2024-04-27 11:04:44'),
(16, 'Year end Party 2019', 'The program was held at the Kite House Experience Space (Tram Long - Ung Hoa - Hanoi) in the last days of the year with the participation of nearly 60 PTG officials in Hanoi and Hai Phong.', '<p>The program was held at the Kite House Experience Space (Tram Long - Ung Hoa - Hanoi) in the last days of the year with the participation of nearly 60 PTG officials in Hanoi and Hai Phong.</p><p>Experiential activities such as making banh chung, making spring rolls, playing folk games... as well as the evening party program have helped civil servants get closer together in the cozy atmosphere of the family at the end of the year.</p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/year-end-party-2019-1.jpg\" alt=\"year-end-party-2019-1.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/year-end-party-2019.jpg\" alt=\"year-end-party-2019.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/year-end-party-2019-2.jpg\" alt=\"year-end-party-2019-2.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/year-end-party-2019.jpg', 92, NULL, '2020-03-16 02:00:49', '2024-04-27 11:05:31'),
(17, 'Phu Thai Group awarded more than 2,000 Tet gifts with a total value of more than 1 billion VND', 'From January 15, 2022, Phu Thai Group started implementing the program \"Tet giving love\" on the occasion of the Lunar New Year in 2022. Accordingly, Phu Thai Group gave 2,000 Tet gifts to disadvantaged households. with a total value of more than 1 billion VND.', '<div><p>The program \"Tet giving love\" is implemented by Phu Thai Group from January 15, 2022 to January 20, 2022 at nearly 10 locations.</p><p>locations throughout the city, specifically in Me Linh District, Ung Hoa District, Tram Long Commune, Nam Dinh Province, Viet Yen District - Bac Giang, Lang Ha Ward - Dong Da, Dong Da District Trade Union. The recipients of gifts are households with difficult circumstances (poor households, near-poor households, policy households, households with special circumstances, disadvantaged households, poor households, etc.).</p><p>severely affected by the Covid-19 epidemic, orphaned children due to the unfortunate death of their parents due to Covid-19 ...). The average value of each gift is 500,000 VND</p><p>dong, including essential necessities and confectionery used during the Lunar New Year to help people enjoy Spring and welcome the warm and meaningful Lunar New Year.</p><p>To organize this program, Phu Thai Group has closely coordinated with P&amp;G and local authorities, and at the same time, the list of receiving Tet gifts has been announced and confirmed by mass organizations and organizations.</p><p>Giving Tet gifts is a practical sharing of Phu Thai Group with families who are still facing many difficulties across the country, especially in areas seriously affected by the Covid-19 pandemic. This is also one of the annual activities that the Group carries out to contribute to supporting less fortunate families to have a fuller and warmer Tet holiday.</p><p>Below are pictures of Tet gifts in some districts:</p></div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/rs-3.jpg\" alt=\"rs-3.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/rs-2.jpg\" alt=\"rs-2.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/rs-1.jpg\" alt=\"rs-1.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/rs-2.jpg', 93, NULL, '2022-01-21 01:54:37', '2024-04-27 13:54:51'),
(18, 'Phu Thai Group has officially become the exclusive distributor for Truong Tho seaweed products', 'On January 10, 2022, Phu Thai Group officially cooperated with Seagrapes Vietnam Co., Ltd - the only Vietnamese grape seaweed brand registered for trademark protection in the US (USPTO) - becoming the exclusive distributor of Vietnam. rights at supermarkets and retail outlets nationwide.', '<p>Truong Tho grape seaweed is a product of Seagrapes Vietnam Co., Ltd., which owns the know-how in processing the best quality dehydrated grape seaweed products, consecutively reaching the Top 1 of Amazon USA and Canada. Grape seaweed is very popular in European countries, in nutritious meals of families. Grape seaweed contains Fucoidan and Vitamin substances that have the effect of preventing cancer and rejuvenating cells. Truong Tho grape seaweed is grown in the clean, blue sea of ​​Khanh Hoa province. Processed and improved from Okinawa Japan\'s water separation technology over the past 10 years, the grape seaweed has a natural fresh green color, no fishy smell, is very crispy and delicious, and has a shelf life of up to 12 months without use. preservatives. In particular, Truong Tho Grape seaweed contains high levels of nutrients and minerals that are good for health such as fiber, calcium, protein, potassium, magnesium, iron, etc., suitable for all users. In addition, this is a product line with the natural scent of the ocean and the highest blooming ratio up to 1:3 today.</p><p>Seagrapes Vietnam is also a unit that has achieved many prestigious international certificates such as: US FDA, GMP, HACCP with international standards, Top 20 famous brands in the country. In 2021, Truong Tho grape seaweed brand becomes the only Vietnamese grape seaweed brand registered for trademark protection in the United States (USPTO).</p><div>&nbsp;</div><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/tin-tuc/phu-thai-1.png\" alt=\"phu-thai-1\"><br><i>Nguồn ảnh: Seagrapes Việt Nam</i></p><p>Phu Thai Group is known as the leading distributor in Vietnam with nearly 30 years of experience, a team of skilled professionals and a network of more than 100,000 sales points across the country. Some of the world\'s major brands distributed domestically by Phu Thai include Procter&amp;Gamble, Dutch Lady, Kewpie, Cuckoo, Paloma, Chang Beer and Tong Garden.</p><p>This cooperation marks the beginning of a long-term partnership between Seagrapes Vietnam and Phu Thai Group. The professionalism in management and operation methods in the distribution field of Phu Thai Group will contribute to bringing high quality Vietnamese products to Vietnamese consumers.</p><p>Currently, Rong Nho Truong Tho has started to be present at retail points nationwide. The product is expected to be available at all supermarket shelves in the first quarter of 2022.</p><p class=\"MsoNormal\">&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/phu-thai-1.png', 105, NULL, '2022-01-10 01:48:09', '2024-04-28 06:02:54'),
(19, 'Phu Thai Group joins hands to prevent Covid-19 epidemic', 'Responding to the call of the Government and the Vietnam Fatherland Front for the whole people to unite, love each other and join hands to fight the Covid-19 epidemic, since the outbreak until now, Phu Thai has donated nearly 3 billion VND. the fourth epidemic is more than 2 billion dong, such as: Support the Vaccine Fund of Hanoi City – 1 billion dong;', '<p>Responding to the call of the Government and the Vietnam Fatherland Front for the whole people to unite, love each other and join hands to fight the Covid-19 epidemic, since the outbreak until now, Phu Thai has donated nearly 3 billion VND. the fourth epidemic is more than 2 billion dong, such as: Support the Vaccine Fund of Hanoi City – 1 billion dong; Donating cash and food, medical supplies to isolation points in Hanoi, the epidemic-hit communes of Bac Giang, Bac Ninh ... worth nearly 1 billion VND, especially Phu Thai has joined hands with a volunteer group TML piloted the design and installation of 10 mobile testing booths to donate to frontline doctors in Hanoi, Bac Giang and Bac Ninh…</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/z2503700044136-42b7c7b3a045bb6e6cd8aab9ee1576c91.jpg\" alt=\"z2503700044136-42b7c7b3a045bb6e6cd8aab9ee1576c91.jpg\"></figure><p>In the face of complicated developments of the Covid-19 epidemic, Phu Thai determined that disease prevention and control is an urgent and important task that must be carried out in parallel with business tasks. In order to perform both tasks at the same time, Phu Thai leadership has actively directed the prevention of the Covid epidemic, implemented many practical activities with the desire to achieve the goal of no workers getting sick. translation to ensure efficient and safe business. Member companies in the field of business must ensure that they always provide adequate and timely goods to customers, but still have to strictly comply with the regulations of the Government and provinces and cities on epidemic prevention and control.</p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/193928541-1881634935328234-9127924091313473817-n-7220-11.jpg\" alt=\"193928541-1881634935328234-9127924091313473817-n-7220-11.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/193928541-1881634935328234-9127924091313473817-n-7220-11.jpg', 85, NULL, '2021-06-16 01:56:04', '2024-04-28 23:49:51'),
(20, 'Phu Thai Group joins hands for the love of the Central region', 'Showing the spirit of social responsibility, with the spirit of \"mutual love and affection\", \"good leaves cover the torn leaves\" in order to share with the difficulties and losses of the people of the central provinces during the flood, Phu\'s employees', '<p>Showing the spirit of social responsibility, with the spirit of \"mutual love and affection\", \"good leaves cover the torn leaves\" in order to share with the difficulties and losses of the people of the central provinces during the flood, Phu\'s employees Thai Group together with employees of member companies of TCC / BJC Group joined hands to support 1,000 gifts of necessities worth nearly 500 million VND for 1,000 households in Hue and Quang Nam.</p><p>With these shared feelings and hearts, we hope that floods and natural disasters will pass quickly, so that people can soon stabilize their spirits and lives.</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/img-2934.jpg\" alt=\"img-2934.jpg\"></figure><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/img-2936.jpg\" alt=\"img-2936.jpg\"></figure><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/img-2939.jpg\" alt=\"img-2939.jpg\"></figure><p style=\"text-align:center;\"><i>Photos of employees directly giving gifts at Huong Tra - Hue on October 30, 2020 and at Duy Xuyen - Quang Nam on November 1, 2020.</i></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/img-2934.jpg', 75, NULL, '2020-11-05 01:35:21', '2024-04-27 19:16:55'),
(21, 'Contest \'Connecting to love Phu Thai 2019\'', 'With the aim to improve the spiritual life of employees, happy to speed up production and business. At the same time, towards the 26th anniversary of the establishment of Phu Thai Group. With the consent of the Board of Directors, the Executive Board of the Group\'s Trade Union decided and implemented a singing and photojournalism contest with the theme \"Love connection - Phu Thai 2019\" between uni', '<p>With the aim to improve the spiritual life of employees, happy to speed up production and business. At the same time, towards the 26th anniversary of the establishment of Phu Thai Group. With the consent of the Board of Directors, the Executive Board of the Group\'s Trade Union decided and implemented a singing and photojournalism contest with the theme \"Love connection - Phu Thai 2019\" between units in Phu Thai Group and Phu Thai Group. units of Phu Thai Holdings.</p><p>The contest attracted 29 entries with diverse colors of solo, duet, dance and 9 photojournalism.</p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/ket-noi-yeu-thuong-phu-thai-2019-1.jpg\" alt=\"ket-noi-yeu-thuong-phu-thai-2019-1.jpg\"></p><p style=\"text-align:center;\"><img src=\"https://phuthai.apecsoft.asia/storage/ket-noi-yeu-thuong-phu-thai-2019.jpg\" alt=\"ket-noi-yeu-thuong-phu-thai-2019.jpg\"></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/ket-noi-yeu-thuong-phu-thai-2019-1.jpg', 96, NULL, '2020-03-17 01:59:28', '2024-04-27 12:13:50'),
(24, 'Invitation to the 2021 Annual General Meeting of Shareholders', 'Phu Thai Group Joint Stock Company would like to announce and invite shareholders to attend the Annual General Meeting of Shareholders in 2021, specifically as follows:', '<p style=\"text-align:center;\"><strong>THÔNG BÁO MỜI HỌP­</strong></p><p style=\"text-align:center;\"><strong>ĐẠI HỘI ĐỒNG CỔ ĐÔNG THƯỜNG NIÊN 2021</strong></p><p style=\"text-align:center;\"><em><i><strong>INVITATION LETTER</strong></i></em></p><p style=\"text-align:center;\"><em><i><strong>2021 ANNUAL GENERAL MEETING OF SHAREHOLDERS</strong></i></em></p><p style=\"text-align:center;\"><strong>&nbsp;</strong></p><p><strong><u>Kính gửi</u></strong><em><i><strong>:</strong></i></em><strong>&nbsp;QUÝ CỔ ĐÔNG</strong></p><p><em><i><strong><u>Attention</u>: SHAREHOLDERS OF PHU THAI GROUP JOINT STOCK COMPANY</strong></i></em></p><p><em><i>&nbsp;</i></em></p><p>Công ty Cổ phần Tập Đoàn Phú Thái trân trọng thông báo và kính mời Quý cổ đông tham dự cuộc họp Đại hội đồng cổ đông thường niên năm 2021, cụ thể như sau:</p><p><em><i>Phu Thai Group Joint Stock Company would like to inform and invite Shareholders to attend 2021 Annual General Meeting of Shareholders (AGM). Details of the proposed meeting are as follows:</i></em></p><ol><li><br><strong>Thời gian họp:&nbsp;Từ 09h30 đến 12h sáng ngày 25 tháng 06 năm 2021 (Thứ sáu)</strong></li></ol><p><em><i><strong>Time: </strong>From 09.30 AM to 12.00 PM, Friday, 25 June 2021</i></em><br><strong>2. Địa điểm:&nbsp;</strong>Phòng 1803, Toà nhà văn phòng Trung tâm Hà Nội, 44B Lý Thường Kiệt, phường Trần Hưng Đạo, quận Hoàn Kiếm, TP. Hà Nội.</p><p><em><i><strong>Venue:</strong> Room 1803, Hanoi Centre Office building, 44B Ly Thuong Kiet, Tran Hung Dao ward, Hoan Kiem district, Hanoi</i></em><br><strong>3.&nbsp;Nội dung dự kiến tại Đại hội Cổ đông thường niên 2021:</strong></p><p><em><i><strong>Contents and agenda of the AGM2021</strong></i></em></p><ul><li>Báo cáo tình hình hoạt động kinh doanh năm 2020;</li></ul><p><em><i>Report on the results of business activities in 2020</i></em></p><ul><li>Báo cáo của HĐQT, Ban Giám đốc và Ban Kiểm Soát năm 2020;</li></ul><p><em><i>Reports of the Board of Managements, Directors and Inspection Committee 2020</i></em></p><ul><li>Kế hoạch kinh doanh năm 2021;</li></ul><p><em><i>Business plans for 2021</i></em></p><ul><li>Các tờ trình Đại Hội Đồng Cổ Đông.</li></ul><p><em><i>General proposal to the General Shareholder Meeting.</i></em></p><ul><li>Các nội dung khác thuộc thẩm quyền của Đại Hội Đồng Cổ Đông.</li></ul><p><em><i>Others subject to approval of the General Shareholder Meeting</i></em></p><ol><li><strong>Thành phần tham dự đại hội</strong> / <em><i><strong>Participants</strong></i></em></li></ol><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tất cả Cổ đông hiện hữu hoặc Người được ủy quyền đại diện sở hữu cổ phần theo Quy định của pháp luật và Điều lệ công ty. Thông báo mời họp sẽ được gửi tới địa chỉ của từng cổ đông.</p><p><em><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All existing shareholders or their authorized representatives in accordance to the law and the company’s Charter. Invitation letter will be sent to the address of each shareholder</i></em></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cổ đông khi tham dự Đại hội vui lòng mang theo Thông báo mời họp, Sổ cổ đông, giấy CMND hoặc hộ chiếu. Trong trường hợp được ủy quyền tham dự, xin mang theo giấy ủy quyền (bản chính, theo mẫu của công ty), giấy CMND, hoặc hộ chiếu (bản sao) của cổ đông và giấy CMND hoặc hộ chiếu của người được ủy quyền (bản chính).</p><p><em><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The shareholder shall bring the registration of shareholders, and his ID card or passport. In case a shareholder authorizes a person to attend the proposed meeting, the authorized person shall bring the original power of attorney in the company’s standard form, a copy of the shareholder’s ID card or passport, and his original ID card or passport</i></em></p><ol><li><strong>Liên hệ / </strong><em><i><strong>Contacting</strong></i></em></li></ol><p>Mọi thông tin chi tiết xin liên hệ ban Thư ký Ban tổ chức Đại hội:</p><p><em><i>Please contact the secretary of the proposed meeting for further information</i></em></p><p>Điện thoại/Tel: 024 3565 9099 - máy lẻ/ext.: 173&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 024 3565 9080</p><p>Điện thoại di động / Cellphone: 090 210 2621</p><p>Địa chỉ văn phòng: Phòng 1801, Toà nhà văn phòng Trung tâm Hà Nội, 44B Lý Thường Kiệt, phường Trần Hưng Đạo, quận Hoàn Kiếm, TP. Hà Nội</p><p><em><i>Address: Room 1801, Hanoi Centre Office building, 44B Ly Thuong Kiet, Tran Hung Dao ward, Hoan Kiem district, Hanoi</i></em></p><p>­­Rất hân hạnh đón tiếp Quý cổ đông.</p><p><em><i>It\'s very pleased to welcome you shareholders.</i></em><br><br>&nbsp;</p><p><em><i>Trân trọng!</i></em></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/dhcd2021jpg.jpg', 96, NULL, '2020-06-06 01:42:13', '2024-04-27 15:51:43'),
(23, 'Phu Thai with \"Joining hands for public health\" during the Covid-19 epidemic season', 'As part of a series of activities to respond to Humanitarian Month 2020 with the theme \"Joining hands for public health\", Phu Thai Group Joint Stock Company recently collaborated with the City Red Cross Society. Hanoi organized the program \"Joining hands to help people in difficult circumstances affected by the Covid-19 epidemic\", giving 1,000 gifts to people in need.', '<figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/1.png\" alt=\"1.png\"></figure><p>After more than 3 months of outbreak, the Covid epidemic has severely affected the economy in general and people\'s social security life in particular. The state of job loss, narrowing of production and business takes place on a large scale, worries about food and money and worries about public health and safety are always constantly creating more burdens for the Government and each business. profession, each individual.</p><p>Despite being heavily affected by the epidemic, but with the spirit of community service, and the good leaves to protect the torn ones, the collective staff of Phu Thai Group Joint Stock Company still enthusiastically contributed their efforts to the community and the community. hand against the Covid epidemic.</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/2.png\" alt=\"2.png\"></figure><p style=\"text-align:center;\"><i>(The President of the Trade Union of Phu Thai Group Joint Stock Company, Ms. Kong Thi Thanh Binh presented 1,000 gifts worth 100 million VND to the Hanoi Red Cross Society)</i></p><p>Accompanying the program were Mr. Nguyen Duc Khai - UVTV, Head of the Central Inspection Committee of the Vietnam Red Cross, Mr. Nguyen Kim Hoang - Deputy Head of the Hanoi City Party Committee\'s Mass Mobilization Department, and Mr. Dao Ngoc Trieu - Chairman. The Hanoi Red Cross Society, the Hai Ba Trung District Red Cross Association, and a large number of officials and employees of Phu Thai Group and a team of volunteers from the Hai Ba Trung District Youth Union.</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/3.png\" alt=\"3.png\"></figure><p style=\"text-align:center;\"><i>(Representatives of Vietnam Red Cross Association, Hanoi Red Cross Association and Trade Union of Phu Thai Group Joint Stock Company give gifts to people)</i></p><p>Sharing at the program, Mr. Dao Ngoc Trieu - Chairman of the Hanoi Red Cross said: \"Humanitarian Month 2020 with the theme \"Joining hands for public health\", in the context of the Covid-19 epidemic. 19 will focus on community health care activities, towards a healthy community to repel the epidemic, especially activities to take care of and support people in difficult circumstances and disadvantaged people in the society. society affected by the epidemic. Besides, meaningful and practical programs and activities such as: giving the Red Cross house; cow donation; livelihood support; Humanitarian blood donation, organ tissue donation... are interested and promoted by the Red Cross from the city to the association\'s facilities. Strive in this year\'s Humanitarian Month to help from 5,000 to 7,000 people in difficult circumstances.\" Mr. Dao Ngoc Trieu - President of the Association also emphasized: “This is also an opportunity to widely communicate the humane and benevolent values ​​of our nation; The ideological and moral values ​​of President Ho Chi Minh - the first honorary President of the Vietnam Red Cross Society for humanitarian activities. From there, it will promote all classes of people in society to actively do good deeds, towards a society full of humanity and compassion. The image, role and position of the City Red Cross has been increasingly affirmed, contributing to ensuring social security work in the area.</p><p style=\"text-align:center;\"><i>(Mr. Dao Ngoc Trieu - Chairman of the Hanoi Red Cross Association)</i></p><p>On the side of Phu Thai Group, putting aside the hustle and bustle of daily work and pressures in production and business because of the epidemic situation, the group\'s staff members with enthusiasm, sense of community and desire to share some of the burden with the people in the District who were present early, preparing gifts \"of less and more\", bringing love to the community.</p><p>Although the land of the north and the land of the east</p><p>Throughout the land are also the line of brothers.</p><p>Government interference that takes the mirror,</p><p>People in a country to trade together.</p><p>Oh get elected trade secrets together,</p><p>Although other varieties but share a rig.</p><p>(Folk)</p><p>Despite many difficulties, the epidemic is still complicated, but with the spirit of solidarity and mutual love of the people of the country, we will soon overcome this difficult period.</p><p>With all their affection, officers and employees of Phu Thai Group sincerely thank for the attention and companionship of the Central Committee of the Red Cross Society, the Red Cross Society of Ho Chi Minh City. Hanoi and volunteers have joined hands with Phu Thai. Wishing you all to stay healthy and mentally to fight the epidemic together.</p><p>Some pictures at the gift giving ceremony:</p><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/9.png\" alt=\"9.png\"></figure><figure class=\"image\"><img src=\"https://phuthai.apecsoft.asia/storage/8.png\" alt=\"8.png\"></figure>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'tin-tuc/1.png', 90, NULL, '2020-04-28 01:40:24', '2024-04-28 16:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(7, 1, 7),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redirects`
--

CREATE TABLE `redirects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `old_url` text NOT NULL,
  `new_url` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', 'news-dt-1.jpg', 'news-dt-1-1.jpg', '2022-06-08 09:31:41', '2022-06-08 09:31:41'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', 'news-dt-1.jpg', 'news-dt-1-1.jpg', '2022-06-08 09:31:50', '2022-06-08 09:31:50'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'news-dt-1.jpg', 'news-dt-1-1.jpg', '2022-06-08 09:32:00', '2022-06-08 09:32:00'),
(4, 'Botble\\Page\\Models\\Page', 2, 1, 'template', 'default', 'award', '2022-06-08 10:17:07', '2022-06-08 10:17:07'),
(5, 'Botble\\Page\\Models\\Page', 3, 1, 'template', 'default', 'milestones', '2022-06-08 10:23:27', '2022-06-08 10:23:27'),
(6, 'Botble\\Page\\Models\\Page', 4, 1, 'template', 'default', 'sustainable', '2022-06-08 10:36:15', '2022-06-08 10:36:15'),
(7, 'Botble\\Page\\Models\\Page', 6, 1, 'name', 'OUR PEOPLE', 'Our people', '2022-06-08 11:14:06', '2022-06-08 11:14:06'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'template', 'default', 'about', '2022-06-08 11:29:48', '2022-06-08 11:29:48'),
(9, 'Botble\\Blog\\Models\\Post', 3, 1, 'created_at', '2022-06-08 10:06:44', '2022-06-08 01:57:47', '2022-06-08 18:57:47', '2022-06-08 18:57:47'),
(10, 'Botble\\Blog\\Models\\Post', 3, 1, 'created_at', '2022-06-08 01:57:47', '2022-06-10 01:57:52', '2022-06-08 18:57:52', '2022-06-08 18:57:52'),
(11, 'Botble\\Page\\Models\\Page', 1, 1, 'description', 'Tin tức', 'Những thông tin đặc sắc về chúng tôi', '2022-06-08 20:45:21', '2022-06-08 20:45:21'),
(12, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:37:10', '2022-01-10 04:38:27', '2022-06-08 21:38:27', '2022-06-08 21:38:27'),
(13, 'Botble\\Blog\\Models\\Post', 7, 1, 'description', NULL, 'Ngày 10 tháng 01 năm 2022, Tập đoàn Phú Thái chính thức hợp tác với Công ty TNHH Seagrapes Việt Nam - thương hiệu rong nho Việt Nam duy nhất được đăng ký bảo hộ thương hiệu tại Mỹ (USPTO) - trở thành nhà phân phối độc quyền tại kênh siêu thị và điểm bán lẻ trên toàn quốc.', '2022-06-08 21:40:19', '2022-06-08 21:40:19'),
(14, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:38:27', '2022-01-10 04:40:19', '2022-06-08 21:40:19', '2022-06-08 21:40:19'),
(15, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:40:19', '2022-01-10 04:40:46', '2022-06-08 21:40:46', '2022-06-08 21:40:46'),
(16, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:40:46', '2022-01-10 04:41:23', '2022-06-08 21:41:24', '2022-06-08 21:41:24'),
(17, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:41:23', '2022-01-10 04:42:08', '2022-06-08 21:42:08', '2022-06-08 21:42:08'),
(18, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:42:08', '2022-01-10 04:43:37', '2022-06-08 21:43:37', '2022-06-08 21:43:37'),
(19, 'Botble\\Page\\Models\\Page', 8, 1, 'name', 'Contact', 'Liên hệ', '2022-06-09 02:49:25', '2022-06-09 02:49:25'),
(20, 'Botble\\Page\\Models\\Page', 8, 1, 'description', 'Phu Thai Holdings Group always listen', 'Tập đoàn Phú Thái Holdings luôn lắng nghe', '2022-06-09 02:49:25', '2022-06-09 02:49:25'),
(21, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'About us', 'Về chúng tôi', '2022-06-09 02:52:31', '2022-06-09 02:52:31'),
(22, 'Botble\\Page\\Models\\Page', 7, 1, 'description', 'To be a leading investment group in Viet Nam with aspiration for global development', 'Trở thành Tập đoàn đầu tư hàng đầu tại Việt Nam với khát vọng phát triển toàn cầu', '2022-06-09 02:52:31', '2022-06-09 02:52:31'),
(23, 'Botble\\Page\\Models\\Page', 6, 1, 'name', 'Our people', 'Con người', '2022-06-09 02:55:12', '2022-06-09 02:55:12'),
(24, 'Botble\\Page\\Models\\Page', 6, 1, 'description', 'The Group always wants to further develop strategic partnerships throughout the world', 'Tập đoàn luôn mong muốn phát triển hơn nữa quan hệ đối tác chiến lược trên toàn thế giới', '2022-06-09 02:55:12', '2022-06-09 02:55:12'),
(25, 'Botble\\Page\\Models\\Page', 5, 1, 'name', 'Our Business', 'Kinh doanh', '2022-06-09 02:58:40', '2022-06-09 02:58:40'),
(26, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'We hope to build more long-lasting partnerships to accelerate our growth beyond the borders of Vietnam', 'Chúng tôi hy vọng sẽ xây dựng thêm nhiều mối quan hệ đối tác lâu dài để thúc đẩy sự phát triển của chúng tôi vượt ra ngoài biên giới Việt Nam', '2022-06-09 02:58:40', '2022-06-09 02:58:40'),
(27, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Sustainable Development', 'Phát triển bền vững', '2022-06-09 02:59:40', '2022-06-09 02:59:40'),
(28, 'Botble\\Page\\Models\\Page', 4, 1, 'description', 'We firmly believe that a better future starts today', 'Chúng tôi tin chắc rằng một tương lai tốt đẹp hơn bắt đầu từ hôm nay', '2022-06-09 02:59:40', '2022-06-09 02:59:40'),
(29, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'Milestones', 'Lịch sử phát triển', '2022-06-09 03:00:49', '2022-06-09 03:00:49'),
(30, 'Botble\\Page\\Models\\Page', 3, 1, 'description', 'Our major milestones & timeline', 'Các mốc thời gian và sự kiện quan trọng của chúng tôi', '2022-06-09 03:00:49', '2022-06-09 03:00:49'),
(31, 'Botble\\Page\\Models\\Page', 17, 1, 'name', 'Giải thưởng', 'Awards and Achievement', '2022-06-09 03:17:58', '2022-06-09 03:17:58'),
(32, 'Botble\\Page\\Models\\Page', 2, 1, 'description', 'Featured information about us', 'Thông tin nổi bật về chúng tôi', '2022-06-09 03:54:52', '2022-06-09 03:54:52'),
(33, 'Botble\\Page\\Models\\Page', 5, 1, 'name', 'Kinh doanh', 'Lĩnh vực Kinh doanh', '2022-06-09 04:11:56', '2022-06-09 04:11:56'),
(34, 'Botble\\Blog\\Models\\Post', 16, 1, 'description', NULL, 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', '2022-06-09 04:29:01', '2022-06-09 04:29:01'),
(35, 'Botble\\Blog\\Models\\Post', 16, 1, 'created_at', '2022-06-09 11:28:26', '2022-06-09 11:29:01', '2022-06-09 04:29:01', '2022-06-09 04:29:01'),
(36, 'Botble\\Blog\\Models\\Post', 17, 1, 'name', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '2022-06-09 04:29:30', '2022-06-09 04:29:30'),
(37, 'Botble\\Blog\\Models\\Post', 17, 1, 'created_at', '2022-06-09 11:28:50', '2022-06-09 11:29:30', '2022-06-09 04:29:30', '2022-06-09 04:29:30'),
(38, 'Botble\\Blog\\Models\\Post', 16, 1, 'description', 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', 'The program was held at the Kite House Experience Space (Tram Long - Ung Hoa - Hanoi) in the last days of the year with the participation of nearly 60 PTG officials in Hanoi and Hai Phong.', '2022-06-24 01:22:48', '2022-06-24 01:22:48'),
(39, 'Botble\\Blog\\Models\\Post', 16, 1, 'created_at', '2022-06-09 11:29:01', '2022-06-09 08:22:48', '2022-06-24 01:22:48', '2022-06-24 01:22:48'),
(40, 'Botble\\Blog\\Models\\Post', 13, 1, 'description', NULL, 'Chương trình được tổ chức ở Không gian trải nghiệm Nhà Diều (Trầm Lộng - Ứng Hòa - Hà Nội) trong tiết trời những ngày cuối năm với sự tham gia của gần 60 CBCC PTG ở khu vực Hà Nội và Hải Phòng', '2022-06-24 01:23:33', '2022-06-24 01:23:33'),
(41, 'Botble\\Blog\\Models\\Post', 13, 1, 'created_at', '2020-03-16 06:42:15', '2020-03-16 08:23:33', '2022-06-24 01:23:33', '2022-06-24 01:23:33'),
(42, 'Botble\\Blog\\Models\\Post', 21, 1, 'description', 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', 'With the aim to improve the spiritual life of employees, happy to speed up production and business. At the same time, towards the 26th anniversary of the establishment of Phu Thai Group. With the consent of the Board of Directors, the Executive Board of the Group\'s Trade Union decided and implemented a singing and photojournalism contest with the theme \"Love connection - Phu Thai 2019\" between uni', '2022-06-24 01:24:54', '2022-06-24 01:24:54'),
(43, 'Botble\\Blog\\Models\\Post', 21, 1, 'created_at', '2022-06-09 11:30:59', '2022-03-17 08:24:54', '2022-06-24 01:24:54', '2022-06-24 01:24:54'),
(44, 'Botble\\Blog\\Models\\Post', 14, 1, 'description', NULL, 'Với mục đích nhằm nâng cao đời sống tinh thần cho CBNV, vui vẻ để tăng tốc trong sản xuất kinh doanh. Đồng thời hướng tới kỷ niệm 26 năm ngày thành lập Tập đoàn Phú Thái. Được sự đồng ý của Ban Giám đốc, Ban chấp hành Công đoàn Tập đoàn quyết định và triển khai cuộc thi hát và báo ảnh với chủ đề “Kết nối yêu thương – Phú Thái 2019” giữa các đơn vị trong tập đoàn Phú Thái và các đơn vị thuộc Phú Th', '2022-06-24 01:25:07', '2022-06-24 01:25:07'),
(45, 'Botble\\Blog\\Models\\Post', 14, 1, 'created_at', '2020-03-16 06:44:25', '2020-03-17 08:25:07', '2022-06-24 01:25:07', '2022-06-24 01:25:07'),
(46, 'Botble\\Blog\\Models\\Post', 21, 1, 'name', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'Contest \'Connecting to love Phu Thai 2019\'', '2022-06-24 01:25:50', '2022-06-24 01:25:50'),
(47, 'Botble\\Blog\\Models\\Post', 21, 1, 'created_at', '2022-03-17 08:24:54', '2022-03-17 08:25:50', '2022-06-24 01:25:50', '2022-06-24 01:25:50'),
(48, 'Botble\\Blog\\Models\\Post', 16, 1, 'created_at', '2022-06-09 08:22:48', '2022-03-16 08:26:27', '2022-06-24 01:26:27', '2022-06-24 01:26:27'),
(49, 'Botble\\Blog\\Models\\Post', 15, 1, 'description', NULL, 'Được sự cho phép của Cục Thuế Hà Nội, Công ty cổ phần Tập đoàn Phú Thái (PTG) trân trọng thông báo đến Quý Khách hàng về việc áp dụng song song hóa đơn giá trị gia tăng.', '2022-06-24 01:30:01', '2022-06-24 01:30:01'),
(50, 'Botble\\Blog\\Models\\Post', 15, 1, 'created_at', '2020-03-16 06:49:01', '2020-03-18 08:30:01', '2022-06-24 01:30:01', '2022-06-24 01:30:01'),
(51, 'Botble\\Blog\\Models\\Post', 22, 1, 'created_at', '2022-06-24 08:31:34', '2022-03-18 08:31:50', '2022-06-24 01:31:50', '2022-06-24 01:31:50'),
(52, 'Botble\\Blog\\Models\\Post', 9, 1, 'name', 'PHÚ THÁI GROUP CHUNG TAY VÌ MIỀN TRUNG YÊU THƯƠNG', 'Phú Thái Group chung tay vì Miền trung yêu thương', '2022-06-24 01:33:07', '2022-06-24 01:33:07'),
(53, 'Botble\\Blog\\Models\\Post', 9, 1, 'description', NULL, 'Thể hiện tình thần trách nhiệm xã hội, với tinh thần “tương thân tương ái”, “lá lành đùm lá rách” nhằm chia sẻ với những khó khăn, mất mát của người dân các tỉnh miền Trung trọng đợt bão lũ, CBNV Phú Thái Group cùng với CBNV các công ty thành viên thuộc Tập đoàn TCC/BJC đã chung tay ủng hộ 1.000 suất quà là các nhu yếu phẩm trị giá gần 500 triệu đồng cho 1.000 hộ gia đình ở Huế và Quảng Nam.', '2022-06-24 01:33:07', '2022-06-24 01:33:07'),
(54, 'Botble\\Blog\\Models\\Post', 9, 1, 'created_at', '2020-11-05 04:55:51', '2020-11-05 08:33:07', '2022-06-24 01:33:07', '2022-06-24 01:33:07'),
(55, 'Botble\\Blog\\Models\\Post', 20, 1, 'name', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'Phu Thai Group joins hands for the love of the Central region', '2022-06-24 01:35:21', '2022-06-24 01:35:21'),
(56, 'Botble\\Blog\\Models\\Post', 20, 1, 'description', 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', 'Showing the spirit of social responsibility, with the spirit of \"mutual love and affection\", \"good leaves cover the torn leaves\" in order to share with the difficulties and losses of the people of the central provinces during the flood, Phu\'s employees', '2022-06-24 01:35:21', '2022-06-24 01:35:21'),
(57, 'Botble\\Blog\\Models\\Post', 20, 1, 'created_at', '2022-06-09 11:30:38', '2020-11-05 08:35:21', '2022-06-24 01:35:21', '2022-06-24 01:35:21'),
(58, 'Botble\\Blog\\Models\\Post', 16, 1, 'created_at', '2022-03-16 08:26:27', '2020-03-16 08:36:23', '2022-06-24 01:36:23', '2022-06-24 01:36:23'),
(59, 'Botble\\Blog\\Models\\Post', 21, 1, 'created_at', '2022-03-17 08:25:50', '2020-03-17 08:36:33', '2022-06-24 01:36:33', '2022-06-24 01:36:33'),
(60, 'Botble\\Blog\\Models\\Post', 22, 1, 'created_at', '2022-03-18 08:31:50', '2020-03-18 08:36:47', '2022-06-24 01:36:47', '2022-06-24 01:36:47'),
(61, 'Botble\\Blog\\Models\\Post', 11, 1, 'created_at', '2020-04-28 06:37:34', '2020-04-28 08:40:31', '2022-06-24 01:40:31', '2022-06-24 01:40:31'),
(62, 'Botble\\Blog\\Models\\Post', 10, 1, 'description', NULL, 'Công ty Cổ phần Tập Đoàn Phú Thái trân trọng thông báo và kính mời Quý cổ đông tham dự cuộc họp Đại hội đồng cổ đông thường niên năm 2021, cụ thể như sau:', '2022-06-24 01:42:15', '2022-06-24 01:42:15'),
(63, 'Botble\\Blog\\Models\\Post', 10, 1, 'created_at', '2020-06-16 05:01:34', '2020-06-16 08:42:15', '2022-06-24 01:42:15', '2022-06-24 01:42:15'),
(64, 'Botble\\Blog\\Models\\Post', 8, 1, 'name', 'TẬP ĐOÀN PHÚ THÁI CHUNG TAY PHÒNG, CHỐNG DỊCH COVID-19', 'Tập đoàn Phú Thái chung tay phòng chống dịch Covid-19', '2022-06-24 01:44:31', '2022-06-24 01:44:31'),
(65, 'Botble\\Blog\\Models\\Post', 8, 1, 'description', NULL, 'Hưởng ứng lời kêu gọi của Chính Phủ và MTTQ VN về việc toàn dân đoàn kết, tương thân tương ái cùng chung tay đẩy lùi Dịch Covid – 19, từ khi dịch bùng phát đến nay Phú Thái đã ủng hộ gần 3 tỷ đồng, riêng đợt dịch lần thứ tư là hơn 2 tỷ đồng, như: Ủng hộ Quỹ Vacine của Thành phố Hà Nội – 1 tỷ đồng;', '2022-06-24 01:44:31', '2022-06-24 01:44:31'),
(66, 'Botble\\Blog\\Models\\Post', 8, 1, 'created_at', '2021-06-16 04:51:28', '2021-06-16 08:44:31', '2022-06-24 01:44:31', '2022-06-24 01:44:31'),
(67, 'Botble\\Blog\\Models\\Post', 19, 1, 'name', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'Phu Thai Group joins hands to prevent Covid-19 epidemic', '2022-06-24 01:45:02', '2022-06-24 01:45:02'),
(68, 'Botble\\Blog\\Models\\Post', 19, 1, 'description', 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', '299 / 5.000\r\nKết quả dịch\r\nResponding to the call of the Government and the Vietnam Fatherland Front for the whole people to unite, love each other and join hands to fight the Covid-19 epidemic, since the outbreak until now, Phu Thai has donated nearly 3 billion VND. the fourth epidemic is more than 2 billion dong, such as: Support the Vaccine Fund of Hanoi City – 1 billion dong;', '2022-06-24 01:45:02', '2022-06-24 01:45:02'),
(69, 'Botble\\Blog\\Models\\Post', 19, 1, 'created_at', '2022-06-09 11:30:19', '2021-06-16 08:45:02', '2022-06-24 01:45:02', '2022-06-24 01:45:02'),
(70, 'Botble\\Blog\\Models\\Post', 19, 1, 'description', '299 / 5.000\r\nKết quả dịch\r\nResponding to the call of the Government and the Vietnam Fatherland Front for the whole people to unite, love each other and join hands to fight the Covid-19 epidemic, since the outbreak until now, Phu Thai has donated nearly 3 billion VND. the fourth epidemic is more than 2 billion dong, such as: Support the Vaccine Fund of Hanoi City – 1 billion dong;', 'Responding to the call of the Government and the Vietnam Fatherland Front for the whole people to unite, love each other and join hands to fight the Covid-19 epidemic, since the outbreak until now, Phu Thai has donated nearly 3 billion VND. the fourth epidemic is more than 2 billion dong, such as: Support the Vaccine Fund of Hanoi City – 1 billion dong;', '2022-06-24 01:45:39', '2022-06-24 01:45:39'),
(71, 'Botble\\Blog\\Models\\Post', 19, 1, 'created_at', '2021-06-16 08:45:02', '2021-06-16 08:45:39', '2022-06-24 01:45:39', '2022-06-24 01:45:39'),
(72, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 04:43:37', '2022-01-10 08:48:04', '2022-06-24 01:48:04', '2022-06-24 01:48:04'),
(73, 'Botble\\Blog\\Models\\Post', 18, 1, 'name', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'Phu Thai Group has officially become the exclusive distributor for Truong Tho seaweed products', '2022-06-24 01:48:09', '2022-06-24 01:48:09'),
(74, 'Botble\\Blog\\Models\\Post', 18, 1, 'description', 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', 'On January 10, 2022, Phu Thai Group officially cooperated with Seagrapes Vietnam Co., Ltd - the only Vietnamese grape seaweed brand registered for trademark protection in the US (USPTO) - becoming the exclusive distributor of Vietnam. rights at supermarkets and retail outlets nationwide.', '2022-06-24 01:48:09', '2022-06-24 01:48:09'),
(75, 'Botble\\Blog\\Models\\Post', 18, 1, 'created_at', '2022-06-09 11:30:00', '2022-01-10 08:48:09', '2022-06-24 01:48:09', '2022-06-24 01:48:09'),
(76, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 06:39:44', '2022-01-21 08:49:51', '2022-06-24 01:49:51', '2022-06-24 01:49:51'),
(77, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:49:51', '2022-01-21 08:50:25', '2022-06-24 01:50:25', '2022-06-24 01:50:25'),
(78, 'Botble\\Blog\\Models\\Post', 17, 1, 'name', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'Phu Thai Group awarded more than 2,000 Tet gifts with a total value of more than 1 billion VND', '2022-06-24 01:50:35', '2022-06-24 01:50:35'),
(79, 'Botble\\Blog\\Models\\Post', 17, 1, 'description', 'We firmly believe that a better future starts today and here at Phu Thai Holdings group preserving and limiting our impact on the environment remains a top priority...', 'From January 15, 2022, Phu Thai Group started implementing the program \"Tet giving love\" on the occasion of the Lunar New Year in 2022. Accordingly, Phu Thai Group gave 2,000 Tet gifts to disadvantaged households. with a total value of more than 1 billion VND.', '2022-06-24 01:50:35', '2022-06-24 01:50:35'),
(80, 'Botble\\Blog\\Models\\Post', 17, 1, 'created_at', '2022-06-09 11:29:30', '2022-01-21 08:50:35', '2022-06-24 01:50:35', '2022-06-24 01:50:35'),
(81, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:50:25', '2022-01-21 08:51:53', '2022-06-24 01:51:53', '2022-06-24 01:51:53'),
(82, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:51:53', '2022-01-21 08:52:47', '2022-06-24 01:52:47', '2022-06-24 01:52:47'),
(83, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:52:47', '2022-01-21 08:52:58', '2022-06-24 01:52:58', '2022-06-24 01:52:58'),
(84, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:52:58', '2022-01-21 08:53:13', '2022-06-24 01:53:13', '2022-06-24 01:53:13'),
(85, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:53:13', '2022-01-21 08:53:47', '2022-06-24 01:53:47', '2022-06-24 01:53:47'),
(86, 'Botble\\Blog\\Models\\Post', 17, 1, 'created_at', '2022-01-21 08:50:35', '2022-01-21 08:54:37', '2022-06-24 01:54:37', '2022-06-24 01:54:37'),
(87, 'Botble\\Blog\\Models\\Post', 8, 1, 'created_at', '2021-06-16 08:44:31', '2021-06-16 08:55:29', '2022-06-24 01:55:29', '2022-06-24 01:55:29'),
(88, 'Botble\\Blog\\Models\\Post', 19, 1, 'created_at', '2021-06-16 08:45:39', '2021-06-16 08:56:04', '2022-06-24 01:56:04', '2022-06-24 01:56:04'),
(89, 'Botble\\Blog\\Models\\Post', 15, 1, 'created_at', '2020-03-18 08:30:01', '2020-03-18 08:57:26', '2022-06-24 01:57:26', '2022-06-24 01:57:26'),
(90, 'Botble\\Blog\\Models\\Post', 22, 1, 'created_at', '2020-03-18 08:36:47', '2020-03-18 08:57:53', '2022-06-24 01:57:53', '2022-06-24 01:57:53'),
(91, 'Botble\\Blog\\Models\\Post', 14, 1, 'created_at', '2020-03-17 08:25:07', '2020-03-17 08:59:14', '2022-06-24 01:59:14', '2022-06-24 01:59:14'),
(92, 'Botble\\Blog\\Models\\Post', 21, 1, 'created_at', '2020-03-17 08:36:33', '2020-03-17 08:59:28', '2022-06-24 01:59:28', '2022-06-24 01:59:28'),
(93, 'Botble\\Blog\\Models\\Post', 13, 1, 'created_at', '2020-03-16 08:23:33', '2020-03-16 09:00:38', '2022-06-24 02:00:38', '2022-06-24 02:00:38'),
(94, 'Botble\\Blog\\Models\\Post', 16, 1, 'created_at', '2020-03-16 08:36:23', '2020-03-16 09:00:49', '2022-06-24 02:00:49', '2022-06-24 02:00:49'),
(95, 'Botble\\Page\\Models\\Page', 7, 1, 'description', 'Trở thành Tập đoàn đầu tư hàng đầu tại Việt Nam với khát vọng phát triển toàn cầu', 'TẬP ĐOÀN PHÂN PHỐI & ĐẦU TƯ ĐA NGÀNH HÀNG ĐẦU VIỆT NAM', '2024-01-03 04:30:22', '2024-01-03 04:30:22'),
(96, 'Botble\\Page\\Models\\Page', 19, 1, 'template', 'default', 'partners', '2024-03-10 07:23:52', '2024-03-10 07:23:52'),
(97, 'Botble\\Page\\Models\\Page', 5, 1, 'name', 'Lĩnh vực Kinh doanh', 'Lĩnh vực Hoạt động', '2024-03-11 21:31:35', '2024-03-11 21:31:35'),
(98, 'Botble\\Page\\Models\\Page', 2, 1, 'banner', 'banner-award.jpg', 'awrad.png', '2024-04-09 19:52:07', '2024-04-09 19:52:07'),
(99, 'Botble\\Blog\\Models\\Post', 12, 1, 'is_featured', '0', '1', '2024-04-16 00:41:37', '2024-04-16 00:41:37'),
(100, 'Botble\\Blog\\Models\\Post', 12, 1, 'created_at', '2022-01-21 08:53:47', '2022-01-21 07:41:37', '2024-04-16 00:41:37', '2024-04-16 00:41:37'),
(101, 'Botble\\Blog\\Models\\Post', 7, 1, 'is_featured', '0', '1', '2024-04-16 00:42:08', '2024-04-16 00:42:08'),
(102, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2022-01-10 08:48:04', '2022-01-10 07:42:08', '2024-04-16 00:42:08', '2024-04-16 00:42:08'),
(103, 'Botble\\Blog\\Models\\Post', 15, 1, 'is_featured', '0', '1', '2024-04-16 00:42:29', '2024-04-16 00:42:29'),
(104, 'Botble\\Blog\\Models\\Post', 15, 1, 'created_at', '2020-03-18 08:57:26', '2020-03-18 07:42:29', '2024-04-16 00:42:29', '2024-04-16 00:42:29'),
(105, 'Botble\\Blog\\Models\\Post', 8, 1, 'is_featured', '0', '1', '2024-04-16 00:42:53', '2024-04-16 00:42:53'),
(106, 'Botble\\Blog\\Models\\Post', 8, 1, 'created_at', '2021-06-16 08:55:29', '2021-06-16 07:42:53', '2024-04-16 00:42:53', '2024-04-16 00:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"blog\",\"custom-field\",\"contact\",\"translation\",\"redirects\",\"login-sso\",\"companies\",\"jobs\",\"newsletter\"]', NULL, NULL),
(2, 'admin_email', '[]', NULL, NULL),
(3, 'time_zone', 'UTC', NULL, NULL),
(4, 'locale_direction', 'ltr', NULL, NULL),
(5, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(6, 'admin_logo', 'logo-1.png', NULL, NULL),
(7, 'admin_favicon', 'icon-award.png', NULL, NULL),
(8, 'login_screen_backgrounds', '[]', NULL, NULL),
(9, 'admin_title', 'Phu Thai Holdings CMS', NULL, NULL),
(10, 'rich_editor', 'ckeditor', NULL, NULL),
(11, 'enable_change_admin_theme', '0', NULL, NULL),
(12, 'enable_cache', '0', NULL, NULL),
(13, 'cache_time', '10', NULL, NULL),
(14, 'cache_admin_menu_enable', '0', NULL, NULL),
(15, 'optimize_page_speed_enable', '0', NULL, NULL),
(16, 'google_site_verification', '', NULL, NULL),
(17, 'cache_time_site_map', '3600', NULL, NULL),
(18, 'show_admin_bar', '0', NULL, NULL),
(19, 'locale', 'vi', NULL, NULL),
(20, 'default_admin_theme', 'default', NULL, NULL),
(21, 'admin_locale_direction', 'ltr', NULL, NULL),
(22, 'language_hide_default', '1', NULL, NULL),
(23, 'language_display', 'flag', NULL, NULL),
(24, 'language_switcher_display', 'list', NULL, NULL),
(25, 'language_hide_languages', '[]', NULL, NULL),
(26, 'language_auto_detect_user_language', '0', NULL, NULL),
(27, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(28, 'theme', 'phuthai', NULL, NULL),
(29, 'permalink-botble-page-models-page', '', NULL, NULL),
(30, 'permalink-botble-blog-models-post', 'post', NULL, NULL),
(31, 'permalink-botble-blog-models-category', 'category', NULL, NULL),
(32, 'permalink-botble-blog-models-tag', 'tag', NULL, NULL),
(33, 'slug_turn_off_automatic_url_translation_into_latin', '0', NULL, NULL),
(34, 'theme-phuthai-site_title', 'Phú Thái Holdings', NULL, NULL),
(35, 'theme-phuthai-show_site_name', '1', NULL, NULL),
(36, 'theme-phuthai-seo_title', 'Phú Thái Holdings', NULL, NULL),
(37, 'theme-phuthai-seo_description', 'Khởi nghiệp trong lĩnh vực phân phối hàng hóa, Phú Thái Holdings Group hiện trở thành một tập đoàn đầu tư và kinh doanh đa ngành hàng đầu Việt Nam, với khát vọng phát triển toàn cầu', NULL, NULL),
(38, 'theme-phuthai-seo_og_image', 'logo-share.png', NULL, NULL),
(39, 'theme-phuthai-copyright', '© 2022 Your Company. All right reserved.', NULL, NULL),
(40, 'theme-phuthai-primary_font', 'Roboto', NULL, NULL),
(41, 'theme-phuthai-primary_color', '#FF2B4A', NULL, NULL),
(42, 'theme-phuthai-favicon', 'logo.png', NULL, NULL),
(43, 'theme-phuthai-logo', 'logo-phuthaigroupholdinds.webp', NULL, NULL),
(44, 'theme-phuthai-blog_page_id', '1', NULL, NULL),
(45, 'theme-phuthai-number_of_posts_in_a_category', '13', NULL, NULL),
(46, 'theme-phuthai-number_of_posts_in_a_tag', '13', NULL, NULL),
(47, 'theme-phuthai-homepage_id', '9', NULL, NULL),
(48, 'theme-phuthai-name_company', 'PHÚ THÁI HOLDINGS GROUP', NULL, NULL),
(49, 'theme-phuthai-address', '18F - Tòa nhà HCO, 44B Lý Thường Kiệt, Quận Hoàn Kiếm, ​​Thành phố Hà Nội, Việt Nam', NULL, NULL),
(50, 'theme-phuthai-phone', '(+84) 24 3565 9099', NULL, NULL),
(51, 'theme-phuthai-email', 'info@phuthaiholdingsgroup.com', NULL, NULL),
(52, 'theme-phuthai-facebook_link', 'https://www.facebook.com/PhuThai27nam', NULL, NULL),
(53, 'theme-phuthai-youtube_link', '#', NULL, NULL),
(54, 'theme-phuthai-mail_link', '#', NULL, NULL),
(55, 'theme-phuthai-en_US-site_title', 'Phu Thai Holdings', NULL, NULL),
(56, 'theme-phuthai-en_US-show_site_name', '1', NULL, NULL),
(57, 'theme-phuthai-en_US-seo_title', 'Phu Thai Holdings', NULL, NULL),
(58, 'theme-phuthai-en_US-seo_description', 'Starting in the field of goods distribution, Phu Thai Holdings Group now becomes a leading multi-disciplinary business and investment group in Vietnam, with the aspiration for global development', NULL, NULL),
(59, 'theme-phuthai-en_US-seo_og_image', 'logo.png', NULL, NULL),
(60, 'theme-phuthai-en_US-favicon', 'logo.png', NULL, NULL),
(61, 'theme-phuthai-en_US-logo', 'logo-phuthaigroupholdinds.webp', NULL, NULL),
(62, 'theme-phuthai-en_US-name_company', 'PHU THAI HOLDINGS GROUP', NULL, NULL),
(63, 'theme-phuthai-en_US-address', '18F - HCO Building, 44B Ly Thuong Kiet Street, Hoan Kiem District, Hanoi, Vietnam', NULL, NULL),
(64, 'theme-phuthai-en_US-phone', '(+84) 24 3565 9099', NULL, NULL),
(65, 'theme-phuthai-en_US-email', 'info@phuthaiholdingsgroup.com', NULL, NULL),
(66, 'theme-phuthai-en_US-facebook_link', 'https://www.facebook.com/PhuThai27nam', NULL, NULL),
(67, 'theme-phuthai-en_US-youtube_link', '#', NULL, NULL),
(68, 'theme-phuthai-en_US-mail_link', '#', NULL, NULL),
(69, 'theme-phuthai-en_US-blog_page_id', '18', NULL, NULL),
(70, 'theme-phuthai-en_US-number_of_posts_in_a_category', '13', NULL, NULL),
(71, 'theme-phuthai-en_US-number_of_posts_in_a_tag', '13', NULL, NULL),
(72, 'theme-phuthai-en_US-homepage_id', '10', NULL, NULL),
(73, 'sso_login_endpoint', 'https://services.nvtrongmedia.com/', NULL, NULL),
(74, 'sso_login_token', '980c5ecd-7740-4de7-a9b4-7201d99bdae8', NULL, NULL),
(75, 'theme-phuthai-title_footer_1', 'Nhận Thông Tin Mới Nhất', NULL, NULL),
(76, 'theme-phuthai-title_footer_2', 'Về tin tức sự kiện, thông tin Về Phú Thái Holdings Group', NULL, NULL),
(77, 'theme-phuthai-en_US-title_footer_1', 'Nhận Thông Tin Mới Nhất', NULL, NULL),
(78, 'theme-phuthai-en_US-title_footer_2', 'About event news, information about Phu Thai Holdings Group', NULL, NULL),
(79, 'theme-phuthai-slogan_1', 'CHIẾN LƯỢC KINH DOANH BỀN VỮNG KHÔNG CHỈ LÀ MỤC TIÊU, MÀ CÒN LÀ CÁCH CHÚNG TA TẠO RA GIÁ TRỊ DÀI HẠN CHO CẢ DOANH NGHIỆP VÀ CỘNG ĐỒNG.', NULL, NULL),
(80, 'theme-phuthai-image_slogan_1', 'n.png', NULL, NULL),
(81, 'theme-phuthai-slogan_2', 'CHIẾN LƯỢC KINH DOANH BỀN VỮNG KHÔNG CHỈ LÀ MỤC TIÊU, MÀ CÒN LÀ CÁCH CHÚNG TA TẠO RA GIÁ TRỊ DÀI HẠN CHO CẢ DOANH NGHIỆP VÀ CỘNG ĐỒNG.', NULL, NULL),
(82, 'theme-phuthai-CHIẾN_LƯỢC_KINH_DOANH_BỀN_VỮNG_KHÔNG_CHỈ_LÀ_MỤC_TIÊU,_MÀ_CÒN_LÀ_CÁCH_CHÚNG_TA_TẠO_RA_GIÁ_TRỊ_DÀI_HẠN_CHO_CẢ_DOANH_NGHIỆP_VÀ_CỘNG_ĐỒNG__x', '86', NULL, NULL),
(83, 'theme-phuthai-CHIẾN_LƯỢC_KINH_DOANH_BỀN_VỮNG_KHÔNG_CHỈ_LÀ_MỤC_TIÊU,_MÀ_CÒN_LÀ_CÁCH_CHÚNG_TA_TẠO_RA_GIÁ_TRỊ_DÀI_HẠN_CHO_CẢ_DOANH_NGHIỆP_VÀ_CỘNG_ĐỒNG__y', '7', NULL, NULL),
(84, 'theme-phuthai-en_US-slogan_1', '', NULL, NULL),
(85, 'theme-phuthai-en_US-image_slogan_1', '', NULL, NULL),
(86, 'theme-phuthai-en_US-slogan_2', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'tin-tuc-tap-doan', 1, 'Botble\\Blog\\Models\\Category', 'category', '2022-04-02 10:48:52', '2024-03-09 11:03:16'),
(2, 'news', 2, 'Botble\\Blog\\Models\\Category', 'category', '2022-04-02 10:49:05', '2022-06-08 00:03:55'),
(19, 'tap-doan-phu-thai-chung-tay-phong-chong-dich-covid-19', 8, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 21:51:28', '2022-06-08 21:51:28'),
(20, 'phu-thai-group-chung-tay-vi-mien-trung-yeu-thuong', 9, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 21:55:51', '2022-06-08 21:55:51'),
(21, 'moi-hop-dai-hoi-dong-co-dong-thuong-nien-2021', 10, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 22:01:34', '2022-06-08 22:01:34'),
(22, 'phu-thai-cung-chung-tay-vi-suc-khoe-cong-dong-trong-mua-dich-covid-2019', 11, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 23:37:34', '2022-06-08 23:37:34'),
(6, 'tin-tuc', 1, 'Botble\\Page\\Models\\Page', '', '2022-06-08 09:32:32', '2022-06-08 09:32:32'),
(7, 'giai-thuong', 2, 'Botble\\Page\\Models\\Page', '', '2022-06-08 10:14:42', '2022-06-08 10:14:42'),
(8, 'lich-su-phat-trien', 3, 'Botble\\Page\\Models\\Page', '', '2022-06-08 10:22:54', '2022-06-09 03:00:49'),
(9, 'phat-trien-ben-vung', 4, 'Botble\\Page\\Models\\Page', '', '2022-06-08 10:34:16', '2022-06-09 03:16:34'),
(10, 'business', 5, 'Botble\\Page\\Models\\Page', '', '2022-06-08 10:58:47', '2022-06-08 10:58:47'),
(11, 'con-nguoi', 6, 'Botble\\Page\\Models\\Page', '', '2022-06-08 11:13:37', '2022-06-09 02:55:12'),
(12, 've-chung-toi', 7, 'Botble\\Page\\Models\\Page', '', '2022-06-08 11:29:40', '2022-06-09 02:52:31'),
(13, 'lien-he', 8, 'Botble\\Page\\Models\\Page', '', '2022-06-08 11:45:54', '2022-06-09 02:49:25'),
(14, 'trang-chu', 9, 'Botble\\Page\\Models\\Page', '', '2022-06-08 12:02:53', '2022-06-08 12:02:53'),
(18, 'tap-doan-phu-thai-chinh-thuc-tro-thanh-nha-phan-phoi-doc-quyen-cho-san-pham-rong-nho-truong-tho', 7, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 21:37:10', '2022-06-08 21:37:10'),
(23, 'tap-doan-phu-thai-trao-hon-2000-phan-qua-tet-voi-tong-gia-tri-hon-1-ty-dong', 12, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 23:39:44', '2022-06-08 23:39:44'),
(24, 'year-end-party-2019', 13, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 23:42:15', '2022-06-08 23:42:15'),
(25, 'cuoc-thi-ket-noi-yeu-thuong-phu-thai-2019', 14, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 23:44:25', '2022-06-08 23:44:25'),
(26, 'thong-bao-ve-viec-ap-dung-hoa-don-dien-tu-cua-cong-ty-cp-tap-doan-phu-thai', 15, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-08 23:49:01', '2022-06-08 23:49:01'),
(27, 'home', 10, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:00:39', '2022-06-09 00:00:39'),
(28, 'contact', 11, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:01:05', '2022-06-09 04:27:07'),
(29, 'about-us-1', 12, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:06:22', '2022-06-09 00:06:22'),
(30, 'our-people', 13, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:08:01', '2022-06-09 00:08:01'),
(31, 'our-business', 14, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:15:45', '2022-06-09 00:15:45'),
(32, 'sustainable-development', 15, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:17:22', '2022-06-09 03:16:49'),
(33, 'milestones', 16, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:19:53', '2022-06-09 03:16:21'),
(34, 'awards-and-achievement', 17, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:22:03', '2022-06-09 03:17:58'),
(35, 'news', 18, 'Botble\\Page\\Models\\Page', '', '2022-06-09 00:23:34', '2022-06-09 00:23:34'),
(36, 'year-end-party-2019-1', 16, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-09 04:28:26', '2022-06-09 04:28:26'),
(37, 'phu-thai-group-awarded-more-than-2000-tet-gifts-with-a-total-value-of-more-than-1-billion-vnd', 17, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-09 04:28:50', '2022-06-24 01:50:35'),
(38, 'phu-thai-group-has-officially-become-the-exclusive-distributor-for-truong-tho-seaweed-products', 18, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-09 04:30:00', '2022-06-24 01:48:09'),
(39, 'phu-thai-group-joins-hands-to-prevent-covid-19-epidemic', 19, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-09 04:30:19', '2022-06-24 01:45:02'),
(40, 'phu-thai-group-joins-hands-for-the-love-of-the-central-region', 20, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-09 04:30:38', '2022-06-24 01:35:21'),
(41, 'contest-connecting-to-love-phu-thai-2019', 21, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-09 04:30:59', '2022-06-24 01:25:50'),
(42, 'phu-thai-group', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-06-09 21:09:39', '2022-06-09 21:09:39'),
(43, 'linh-vuc-kinh-doanh', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-06-09 21:10:04', '2022-06-09 21:10:04'),
(44, 'announcement-on-the-application-of-electric-invoices-of-phu-thai-group-jsc', 22, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-24 01:31:34', '2022-06-24 01:31:34'),
(45, 'phu-thai-with-joining-hands-for-public-health-during-the-covid-19-epidemic-season', 23, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-24 01:40:24', '2022-06-24 01:40:24'),
(46, 'invitation-to-the-2021-annual-general-meeting-of-shareholders', 24, 'Botble\\Blog\\Models\\Post', 'post', '2022-06-24 01:42:13', '2022-06-24 01:42:13'),
(50, 'dau-tu', 6, 'Botble\\Blog\\Models\\Category', 'category', '2024-03-09 11:03:39', '2024-03-09 11:03:39'),
(48, 'phan-phoi-ban-le', 4, 'Botble\\Blog\\Models\\Category', 'category', '2024-03-09 11:02:34', '2024-03-09 11:02:34'),
(49, 'san-xuat', 5, 'Botble\\Blog\\Models\\Category', 'category', '2024-03-09 11:02:47', '2024-03-09 11:02:47'),
(51, 'doi-tac', 19, 'Botble\\Page\\Models\\Page', '', '2024-03-10 07:23:45', '2024-03-10 07:23:45'),
(52, 'our-partners', 20, 'Botble\\Page\\Models\\Page', '', '2024-03-10 19:36:56', '2024-03-10 19:36:56'),
(53, 'cong-nghe-truyen-thong', 7, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 00:58:25', '2024-04-17 00:58:25'),
(54, 'technology-media', 8, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 00:59:12', '2024-04-17 00:59:12'),
(55, 'investment', 9, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 00:59:24', '2024-04-17 00:59:24'),
(56, 'manufacturing', 10, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 00:59:48', '2024-04-17 00:59:48'),
(57, 'distribution-retail', 11, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:00:03', '2024-04-17 01:00:03'),
(58, 'giao-duc-trai-nghiem', 12, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:00:20', '2024-04-17 01:00:20'),
(59, 'education-experience', 13, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:00:36', '2024-04-17 01:00:36'),
(60, 'nong-nghiep', 14, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:00:50', '2024-04-17 01:00:50'),
(61, 'agriculture', 15, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:01:03', '2024-04-17 01:01:03'),
(62, 'bat-dong-san', 16, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:01:18', '2024-04-17 01:01:18'),
(63, 'real-estate', 17, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:01:30', '2024-04-17 01:01:30'),
(64, 'thuong-mai-quoc-te-xnk', 18, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:01:49', '2024-04-17 01:01:49'),
(65, 'international-trade-import-and-export', 19, 'Botble\\Blog\\Models\\Category', 'category', '2024-04-17 01:02:03', '2024-04-17 01:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT '',
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phu thai group', 1, 'Botble\\ACL\\Models\\User', 'phu thai group', 'published', '2022-06-09 21:09:39', '2022-06-09 21:09:39'),
(2, 'lĩnh vực kinh doanh', 1, 'Botble\\ACL\\Models\\User', 'lĩnh vực kinh doanh', 'published', '2022-06-09 21:10:04', '2022-06-09 21:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@admi.com', NULL, '$2y$10$H.b3VAsBpxrf5xlwFOJ4Pu1J/W7KxlqRuC4uvbdSKzCyR77XCzSNS', 'xsKWLMmNShxyGpcnYOHAC4RXbAZdNvJ9AbCdoYEsOOLnU73fMkFfBwWOhX95', '2022-04-02 10:42:41', '2024-05-08 07:17:21', 'Admin', 'Admin', 'admin', NULL, 1, 1, NULL, '2024-05-08 07:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_business_categories`
--
ALTER TABLE `companies_business_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_apply_jobs`
--
ALTER TABLE `job_apply_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_companies`
--
ALTER TABLE `job_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_fields`
--
ALTER TABLE `job_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_recruitments`
--
ALTER TABLE `job_recruitments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `login_otp`
--
ALTER TABLE `login_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redirects`
--
ALTER TABLE `redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `companies_business_categories`
--
ALTER TABLE `companies_business_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_apply_jobs`
--
ALTER TABLE `job_apply_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_companies`
--
ALTER TABLE `job_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_fields`
--
ALTER TABLE `job_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_recruitments`
--
ALTER TABLE `job_recruitments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `login_otp`
--
ALTER TABLE `login_otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirects`
--
ALTER TABLE `redirects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
