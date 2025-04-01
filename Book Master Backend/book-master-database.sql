-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2025 at 01:52 PM
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
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `author`, `book_price`, `book_quantity`, `book_title`, `genre`, `publish_date`, `user_id`) VALUES
(1, 'Lucas Walton', 10.9, 5, 'africas most', 'romance', '2025-03-27 20:00:00.000000', 2),
(2, 'Kwame Alexander', 10.9, 5, 'crossover', 'fiction', '2016-05-13 20:00:00.000000', 1),
(4, 'Matthew Palmer', 13.99, 18, 'American Mission', 'political thriller ', '2014-06-23 20:00:00.000000', 1),
(5, 'Angie Thomas', 14.99, 25, 'Concrete Rose', 'Urban Fiction ', '2021-01-11 19:00:00.000000', 1),
(6, 'Angie Thomas', 14.99, 25, 'Concrete Rose', 'Urban Fiction ', '2021-01-11 19:00:00.000000', 1),
(7, 'Angie Thomas', 14.99, 25, 'Concrete Rose', 'Urban Fiction ', '2021-01-11 19:00:00.000000', 1),
(9, 'Lucas Walton', 10.9, 5, 'africas most wanted', 'romance', '2025-03-27 20:00:00.000000', 3),
(10, 'Lucas Walton', 10.9, 5, 'africas most wanted', 'romance', '2025-03-27 20:00:00.000000', 2);

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

--
-- Dumping data for table `fines`
--

INSERT INTO `fines` (`fine_id`, `date_made`, `fine_amount`, `fine_desc`, `book_id`, `user_id`) VALUES
(7, '2021-02-13', 76.99, '63 Torn Pages', 6, 3),
(8, '2021-01-14', 26.99, '63 Torn Pages', 4, 3),
(9, '2021-01-14', 36.99, '63 Torn Pages', 6, 3),
(11, '2025-03-30', 21.99, '25 Torn Pages', 6, 3);

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
(1, 4, '2021-02-13 00:00:00.000000', 6, 2, 20.5, 1),
(2, 4, '2021-02-13 00:00:00.000000', 6, 2, 20.5, 1),
(3, 4, '2021-02-13 00:00:00.000000', 70, 2, 20.5, 1),
(4, 4, '2021-02-13 00:00:00.000000', 70, 2, 20.5, 1);

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
(3, '2021-02-13 00:00:00.000000', 'I agree with you broski', 2, 3);

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
(2, 6, '2025-03-27 00:00:00.000000', 5, 'it was good', 'Charles Walton', 3);

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
(1, '2025-03-31 00:00:00.000000', '1 Year', '2026-03-31 00:00:00.000000', 'Active', 2);

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
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `name`, `password`, `set_type`, `username`) VALUES
(1, 'kayembewalton@gmail.com', 'Lucas Walton', 'LucasisDrip8', 'Buyer', 'Drip God'),
(2, 'kwalton@gmail.com', 'Kayembe Walton', 'LucasisDrip8', 'Buyer', 'Drip God'),
(3, 'kaywal@gmail.com', 'Lucas Kayembe', 'LucasisDrip8', 'Admin', 'LucasisaG');

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
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fine_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `FKapyyxlgntertu5okpkr685ir9` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKru7hindlj6cyx4jhr0a3f19l0` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
