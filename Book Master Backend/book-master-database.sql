-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2025 at 11:29 PM
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
