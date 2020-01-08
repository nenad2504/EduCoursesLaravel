-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 11:00 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edustage`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image_id`) VALUES
(1, 'Welcome to our Institute', 'Subdue whales void god which living don\'t midst lesser yielding over lights whose. Cattle greater brought sixth fly den dry good tree isn\'t seed stars were.\r\n\r\nSubdue whales void god which living don\'t midst lesser yieldi over lights whose. Cattle greater brought sixth fly den dry good tree isn\'t seed stars were the boring. ', 15);

-- --------------------------------------------------------

--
-- Table structure for table `about_contents`
--

CREATE TABLE `about_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awesomefeature`
--

CREATE TABLE `awesomefeature` (
  `id` int(11) NOT NULL,
  `title` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `awesomefeature`
--

INSERT INTO `awesomefeature` (`id`, `title`, `content`, `icon`, `user_id`) VALUES
(1, 'Scholarship Facility', 'One make creepeth, man bearing theira firmament won\'t great heaven ', 'flaticon-student', NULL),
(2, 'Sell Online Course', 'One make creepeth, man bearing theira firmament won\'t great heaven ', 'flaticon-book', NULL),
(3, 'Global Certification', 'One make creepeth, man bearing theira firmament won\'t great heaven ', 'flaticon-earth', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `awesomefeature_image`
--

CREATE TABLE `awesomefeature_image` (
  `id` int(11) NOT NULL,
  `awesomeFeature_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `teacher_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `count_user` int(11) NOT NULL,
  `count_like` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `price`, `create_at`, `teacher_id`, `image_id`, `category_id`, `count_user`, `count_like`, `rating`, `duration`) VALUES
(1, 'Graphic Design', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 25, '2019-12-23 13:28:36', 6, 10, 1, 45, 23, 5, 9),
(2, 'JavaScript for beginners', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 60, '2019-12-23 13:28:36', 7, 6, 3, 65, 12, 4, 14),
(3, 'PHP course for beginner', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 90, '2019-12-23 13:28:36', 5, 7, 5, 65, 29, 5, 12),
(4, 'NET Developer', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 70, '2019-12-23 13:30:32', 8, 11, 4, 34, 12, 3, 7),
(5, 'Full Linux course', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 60, '2019-12-23 13:30:32', 5, 12, 7, 44, 9, 4, 5),
(6, 'Java Programming ', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 45, '2019-12-23 13:32:49', 8, 13, 2, 78, 91, 5, 19),
(7, 'Android Development', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 65, '2019-12-23 13:32:49', 7, 14, 6, 65, 45, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `courses_category`
--

CREATE TABLE `courses_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses_category`
--

INSERT INTO `courses_category` (`id`, `name`) VALUES
(1, 'Graphic Web Designer'),
(2, 'Java Web Developer'),
(3, 'Front-End Web Developer'),
(4, '.NET Developer'),
(5, 'Back-End Web Developer'),
(6, 'Android Developer'),
(7, 'Linux Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `courses_comments`
--

CREATE TABLE `courses_comments` (
  `id` int(11) NOT NULL,
  `content` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_id` datetime NOT NULL,
  `modifed_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses_lessons`
--

CREATE TABLE `courses_lessons` (
  `id` int(11) NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `lessons_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses_users`
--

CREATE TABLE `courses_users` (
  `id` int(11) NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `src` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `src`, `alt`) VALUES
(2, 'https://colorlib.com/preview/theme/edustage/img/trainer/t1.jpg', 'Mated Nithan'),
(3, 'https://colorlib.com/preview/theme/edustage/img/trainer/t2.jpg', 'David Cameron'),
(4, 'https://colorlib.com/preview/theme/edustage/img/trainer/t3.jpg', 'Jain Redmel'),
(5, 'https://colorlib.com/preview/theme/edustage/img/trainer/t4.jpg', 'Nathan Macken'),
(6, 'https://www.techwalls.com/wp-content/uploads/2017/02/Javascript.png', 'Full Javascript Course for beginners'),
(7, 'https://socialnetworking.solutions/wp-content/uploads/2017/04/Upgrade-to-SocialEngine-PHP-7-500x300.png', 'Full PHP Course for beginners'),
(10, 'https://negliadesign.com/wordpress/assets/Website-price-feature-image-500x300.jpg', 'Graphic design'),
(11, 'https://as2.ftcdn.net/jpg/02/31/67/27/500_F_231672761_m1bSBJdU8ypqoh3yXmTRKjp6AdJbxnEa.jpg', 'Net Developer'),
(12, 'https://i.pinimg.com/originals/4e/2c/1c/4e2c1c0a12d249835f11711d14b5b41a.jpg', 'Linux'),
(13, 'https://3.imimg.com/data3/FA/AK/MY-9513142/javaindustrial-training-500x500.jpg', 'Java'),
(14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxThRsFRMzRUXq2dVckGX0ZrIyw22BCEWTr31mCcdtg8tu6TEtOA&s', 'Andorid'),
(15, 'https://colorlib.com/preview/theme/edustage/img/about.png', 'About image for about page');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(90) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons_image`
--

CREATE TABLE `lessons_image` (
  `id` int(11) NOT NULL,
  `lessons_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mainslider`
--

CREATE TABLE `mainslider` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mainslider`
--

INSERT INTO `mainslider` (`id`, `title`, `content`, `user_id`) VALUES
(1, 'Best online education service In the world ', 'One Step Ahead This Season ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_29_181814_create_about_contents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_id` datetime NOT NULL DEFAULT current_timestamp(),
  `modifed_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments`
--

CREATE TABLE `posts_comments` (
  `id` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_id` datetime NOT NULL DEFAULT current_timestamp(),
  `modifed_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(90) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `firstName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `tagName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `biography` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `firstName`, `lastName`, `tagName`, `biography`, `image_id`, `email`) VALUES
(5, 'Mated', 'Nithan', 'Web designer', 'If you are looking at blank cassettes on the web, you may be very confused at the.', 2, 'mated@gmail.com'),
(6, 'David', 'Cameron', 'Front End Developer', 'If you are looking at blank cassettes on the web, you may be very confused at the.\r\n', 3, 'david@gmail.com'),
(7, 'Jain', 'Redmel', 'Back End Developer', 'If you are looking at blank cassettes on the web, you may be very confused at the.\r\n', 4, 'jain@gmail.com'),
(8, 'Nathan', 'Macken', 'SEO ', '\r\nIf you are looking at blank cassettes on the web, you may be very confused at the.\r\n', 5, 'nathan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevents`
--

CREATE TABLE `upcomingevents` (
  `id` int(11) NOT NULL,
  `title` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `lessonTime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `upcomingevents`
--

INSERT INTO `upcomingevents` (`id`, `title`, `content`, `date`, `lessonTime`, `teacher_id`, `image_id`, `user_id`) VALUES
(1, 'Full JavaScript Course for beginners', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n', '2019-12-24', '12:00 - 12:30 ', 6, 6, NULL),
(2, 'Full PHP Course for beginners', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n', '2019-12-26', '11:00 - 13:30', 7, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awesomefeature`
--
ALTER TABLE `awesomefeature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `awesomefeature_image`
--
ALTER TABLE `awesomefeature_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awesomeFeature_id` (`awesomeFeature_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `courses_category`
--
ALTER TABLE `courses_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_comments`
--
ALTER TABLE `courses_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `courses_id` (`courses_id`);

--
-- Indexes for table `courses_lessons`
--
ALTER TABLE `courses_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_id` (`courses_id`),
  ADD KEY `lessons_id` (`lessons_id`);

--
-- Indexes for table `courses_users`
--
ALTER TABLE `courses_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_id` (`courses_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons_image`
--
ALTER TABLE `lessons_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_id` (`lessons_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `mainslider`
--
ALTER TABLE `mainslider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awesomefeature`
--
ALTER TABLE `awesomefeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `awesomefeature_image`
--
ALTER TABLE `awesomefeature_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses_category`
--
ALTER TABLE `courses_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses_comments`
--
ALTER TABLE `courses_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses_lessons`
--
ALTER TABLE `courses_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses_users`
--
ALTER TABLE `courses_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons_image`
--
ALTER TABLE `lessons_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mainslider`
--
ALTER TABLE `mainslider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_comments`
--
ALTER TABLE `posts_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `awesomefeature`
--
ALTER TABLE `awesomefeature`
  ADD CONSTRAINT `awesomefeature_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `awesomefeature_image`
--
ALTER TABLE `awesomefeature_image`
  ADD CONSTRAINT `awesomefeature_image_ibfk_1` FOREIGN KEY (`awesomeFeature_id`) REFERENCES `awesomefeature` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `awesomefeature_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `category_posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `courses_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses_comments`
--
ALTER TABLE `courses_comments`
  ADD CONSTRAINT `courses_comments_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses_lessons`
--
ALTER TABLE `courses_lessons`
  ADD CONSTRAINT `courses_lessons_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_lessons_ibfk_2` FOREIGN KEY (`lessons_id`) REFERENCES `lessons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses_users`
--
ALTER TABLE `courses_users`
  ADD CONSTRAINT `courses_users_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_users_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lessons_image`
--
ALTER TABLE `lessons_image`
  ADD CONSTRAINT `lessons_image_ibfk_1` FOREIGN KEY (`lessons_id`) REFERENCES `lessons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lessons_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mainslider`
--
ALTER TABLE `mainslider`
  ADD CONSTRAINT `mainslider_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD CONSTRAINT `posts_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
  ADD CONSTRAINT `upcomingevents_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `upcomingevents_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `upcomingevents_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
