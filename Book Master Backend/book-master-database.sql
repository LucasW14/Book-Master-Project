-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2025 at 05:34 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book-master-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `book_price` double NOT NULL,
  `book_quantity` int NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `about` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `book_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `book_picture_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `author`, `book_price`, `book_quantity`, `book_title`, `genre`, `publish_date`, `user_id`, `about`, `book_picture`, `book_picture_path`) VALUES
(2, 'Kwame Alexander', 10.9, 5, 'crossover', 'fiction', '2016-05-13 20:00:00.000000', 1, '', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(7, 'Angie Thomas', 14.99, 25, 'Concrete Rose', 'Urban Fiction ', '2021-01-11 19:00:00.000000', 1, '', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(10, 'Lucas Walton', 10.9, 5, 'africas most wanted', 'romance', '2025-03-27 20:00:00.000000', 2, '', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(20, 'Leo Zeilig', 21.99, 45, 'Lucas', 'romance', '1955-05-13 00:00:00.000000', 4, 'a book about a dumb negro', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(22, 'Lucas Walton', 21.99, 6, 'Lucas', 'romance', '2025-04-16 00:00:00.000000', 1, 'a book about Lucas Walton', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(24, 'Lucas Walton', 10.95, 56, 'africas most', 'Biography ', '2025-04-12 00:00:00.000000', 20, 'It is about a girl who falls in love', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(25, 'Suzanne collins ', 25.99, 67, 'The Hunger Games ', 'Adventure Fiction', '2025-04-21 00:00:00.000000', 10, 'a girl who goes on an adventrue', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(27, 'Suzanne collins ', 25.99, 45, 'The Hunger Games ', 'Adventure Fiction', '2025-04-24 00:00:00.000000', 10, 'a dystopian novel by Suzanne Collins that follows 16-year-old Katniss Everdeen in the post-apocalyptic nation of Panem, where the Capitol forces each district to send a boy and a girl to participate in a televised battle royale called the Hunger Games as a punishment for a past rebellion', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(28, 'Suzanne collins ', 25.99, 65, 'The Hunger Games ', 'Adventure Fiction', '2025-04-23 00:00:00.000000', 10, 'a dystopian novel by Suzanne Collins that follows 16-year-old Katniss Everdeen in the post-apocalyptic nation of Panem, where the Capitol forces each district to send a boy and a girl to participate in a televised battle royale called the Hunger Games as a punishment for a past rebellion', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(29, 'Lucas Walton', 12.99, 45, 'africas most', 'Urban Fiction ', '2025-04-01 00:00:00.000000', 22, 'A description is a statement or account that details the characteristics, qualities, or features of something, such as a person, place, thing, or event. It\'s essentially a way of putting something in words, making it come alive for the reader. \r\n', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(30, 'kyler romanstoff', 30.99, 54, 'Cobra Kai', 'Adventure Fiction', '2025-04-24 00:00:00.000000', 23, 'the cobra kai fight miyagi do for the all valley championship ', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(31, 'Suzanne collins ', 34.99, 3, 'The Hunger Games ', 'Adventure Fiction', '2025-04-24 00:00:00.000000', 24, 'a dystopian novel set in the post-apocalyptic nation of Panem, where the Capitol forces twelve districts to send tributes to compete in a televised battle to the death as a punishment for a past rebellion', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(33, 'Suzanne collins ', 10.95, 4, 'The Hunger Games ', 'Adventure Fiction', '2025-04-29 00:00:00.000000', 12, 'a girl who shoots arrows ', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(38, 'Lucas Walton', 21.99, 2, 'The Hunger Games ', 'Adventure Fiction', '2025-05-06 00:00:00.000000', 1, 'tyyr vyrk', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL),
(39, 'Lucas Walton', 30.99, 2, 'africas most', 'Adventure Fiction', '2025-05-07 00:00:00.000000', 1, 'tgfuty yehdu', 'https://prodimage.images-bn.com/pimages/9780545586177_p0_v2_s1200x630.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fine_id` int NOT NULL,
  `date_made` date NOT NULL,
  `fine_amount` double NOT NULL,
  `fine_desc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `book_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int NOT NULL,
  `book_id` int NOT NULL,
  `date_purchased` datetime(6) DEFAULT NULL,
  `quantity` int NOT NULL,
  `seller_id` int NOT NULL,
  `total_price` double NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `book_id`, `date_purchased`, `quantity`, `seller_id`, `total_price`, `user_id`) VALUES
(1, 2, '2025-05-06 14:30:00.000000', 5, 2, 50.99, 2),
(3, 2, '2023-07-06 14:30:00.000000', 5, 2, 65.99, 2);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int NOT NULL,
  `purchase_date` datetime(6) NOT NULL,
  `quantity` int NOT NULL,
  `seller_id` int NOT NULL,
  `total_price` double NOT NULL,
  `book_id` int NOT NULL,
  `buyer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `purchase_date`, `quantity`, `seller_id`, `total_price`, `book_id`, `buyer_id`) VALUES
(1, '2025-05-07 13:30:00.000000', 3, 4, 59.97, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int NOT NULL,
  `date_made` datetime(6) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `review_id` bigint DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `date_made`, `description`, `review_id`, `user_id`) VALUES
(2, '2021-02-13 00:00:00.000000', 'I disagree with you brodie', 2, 3),
(3, '2021-02-13 00:00:00.000000', 'I agree with you broski', 2, 3),
(4, '2021-02-13 00:00:00.000000', 'I disagree with you it was bad', 2, 3),
(5, '2021-02-13 00:00:00.000000', 'I disagree with you brodie', 2, 3),
(6, '2021-02-13 00:00:00.000000', 'I disagree with you brodie', 2, 3),
(9, '2021-02-13 00:00:00.000000', 'I disagree with you it was bad', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint NOT NULL,
  `book_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `rating` int NOT NULL,
  `review_text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `created_at`, `rating`, `review_text`, `reviewer_name`, `user_id`) VALUES
(1, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(2, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Charles Walton', 3),
(3, 6, '2025-04-01 11:27:14.547256', 2, 'it was Bad', 'Grume Fikre', 3),
(4, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(5, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(6, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(8, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(10, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(11, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Lucas Walton', 3),
(13, 6, '2025-04-03 11:30:13.695560', 2, 'it was great ', 'Grume Fikre', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint NOT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `end_date`, `plan`, `start_date`, `status`, `user_id`) VALUES
(1, '2025-03-31 00:00:00.000000', '1 Year', '2026-03-31 00:00:00.000000', 'Active', 2),
(2, '2025-03-31 00:00:00.000000', '1 Year', '2026-03-31 00:00:00.000000', 'Active', 4),
(3, '2025-03-31 00:00:00.000000', '1 Year', '2026-03-31 00:00:00.000000', 'Active', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `set_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `name`, `password`, `set_type`, `username`, `profile_pic`, `profile_image`) VALUES
(1, 'LaquanC@gmail.com', 'Laquan Crawforder', 'quannyisDrip8', 'customer', 'OT7 quanny', NULL, NULL),
(2, 'kwalton@gmail.com', 'Jarius Walton', 'LucasisDrip8', 'Buyer', 'block God', NULL, NULL),
(3, 'kaywal@gmail.com', 'Lucas Kayembe', 'LucasisDrip8', 'Admin', 'LucasisaG', NULL, NULL),
(4, 'LaquanC@gmail.com', 'Laquan Crawford', 'quannyisDrip8', 'seller', 'OT7 quanny', NULL, NULL),
(5, 'LaquanC@gmail.com', 'Laquan Crawford', 'quannyisDrip8', 'Buyer', 'OT7 quanny', NULL, NULL),
(6, 'LaquanC@gmail.com', 'Laquan Crawford', 'quannyisDrip8', 'Buyer', 'OT7 quanny', NULL, NULL),
(7, 'Kaywal@gmail.com', 'Lucas Kayembe', 'lucasisDrip8', 'Seller', 'DripisLucas', NULL, NULL),
(8, 'LaquanC@gmail.com', 'Laquan Crawford', 'quannyisDrip8', 'Buyer', 'OT7 quanny', NULL, NULL),
(9, 'Kaywal@gmail.com', 'Lucas Kayembe', 'lucasisDrip8', 'Seller', 'DripisLucas', NULL, NULL),
(10, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(11, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(12, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'seller', 'LucasKaye_69', NULL, NULL),
(13, 'kayembewalton12@gmail.com', 'lonnie1', 'LucasisDrip28', 'seller', 'LucsIsBig', NULL, NULL),
(14, 'kayembewalton@gmail.com', 'lonnie1', 'LucasisDrip28', 'customer', 'LucasKaye_6', NULL, NULL),
(15, 'kayembewalton@gmail.com', 'lonnie1', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(16, 'kayembewalton@gmail.com', 'lonnie1', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(17, 'kayembewalton@gmail.com', 'lonnie1', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(18, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'seller', 'kayembewalton1', NULL, NULL),
(19, 'kayembewalton@gmail.com', 'Lucas Walton', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(20, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'customer', 'LucasKaye_7', NULL, NULL),
(21, 'kayembewalton@gmail.com', 'lonnie1', 'LucasisDrip28', 'seller', 'LucasKaye_69', NULL, NULL),
(22, 'kaywalC@gmail.com', 'Lucas Kayembe', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(23, 'jlaw21@gmail.com', 'Johnny lawrence ', 'jlaw21454', 'seller', 'LayDownTheLaw', NULL, NULL),
(24, 'lonnie1@gmail.com', 'lonnie walker ', 'jlaw21454', 'seller', 'lonnie123', NULL, NULL),
(25, 'kayembewalton@gmail.com', 'Lucas Walton ', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, NULL),
(26, 'kayembewalton@gmail.com', 'Lucas Kayembe', 'jlaw21454', 'customer', 'LucasKaye_6', 'https://static.wikia.nocookie.net/crashban/images/0/03/Crash_1_Crash_Bandicoot.png/revision/latest?cb=20230516213125', NULL),
(27, 'kayembewalton@gmail.com', 'Jhase Lynear', 'jlaw21454', 'seller', 'LucasKaye_6', 'https://static.wikia.nocookie.net/crashban/images/0/03/Crash_1_Crash_Bandicoot.png/revision/latest?cb=20230516213125', NULL),
(28, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'seller', 'LucasKaye_6', 'https://static.wikia.nocookie.net/crashban/images/0/03/Crash_1_Crash_Bandicoot.png/revision/latest?cb=20230516213125', NULL),
(29, 'kayembewalton@gmail.com', 'Lucas', 'jlaw21454', 'seller', 'LucasKaye_6', NULL, 'https://static.wikia.nocookie.net/crashban/images/0/03/Crash_1_Crash_Bandicoot.png/revision/latest?cb=20230516213125'),
(30, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'customer', 'LucasKaye_6', NULL, 'https://static.wikia.nocookie.net/crashban/images/0/03/Crash_1_Crash_Bandicoot.png/revision/latest?cb=20230516213125'),
(31, 'kayembewalton@gmail.com', 'Lucas', 'LucasisDrip28', 'seller', 'LucasKaye_6', NULL, 'https://static.wikia.nocookie.net/crashban/images/0/03/Crash_1_Crash_Bandicoot.png/revision/latest?cb=20230516213125');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `FKm07mu8i7gn4aontilkbcbyqit` (`user_id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fine_id`),
  ADD KEY `FKfptqakm37mcdtrbudlbodwxha` (`book_id`),
  ADD KEY `FK2cvlty8wk8q4sf6wauri0hb2j` (`user_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `FKltir9y8er2uk8rpq0g8prlchg` (`book_id`),
  ADD KEY `FK86i0stm7cqsglqptdvjij1k3m` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `FK4wsc9h3nuk217sy5lp4bg2888` (`book_id`),
  ADD KEY `FK348yig6trhrwl6dtxgvxn9jwq` (`buyer_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `FKru7hindlj6cyx4jhr0a3f19l0` (`review_id`),
  ADD KEY `FKapyyxlgntertu5okpkr685ir9` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fine_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FKm07mu8i7gn4aontilkbcbyqit` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `FK2cvlty8wk8q4sf6wauri0hb2j` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKfptqakm37mcdtrbudlbodwxha` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK86i0stm7cqsglqptdvjij1k3m` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKltir9y8er2uk8rpq0g8prlchg` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `FK348yig6trhrwl6dtxgvxn9jwq` FOREIGN KEY (`buyer_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK4wsc9h3nuk217sy5lp4bg2888` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `FKapyyxlgntertu5okpkr685ir9` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKru7hindlj6cyx4jhr0a3f19l0` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
