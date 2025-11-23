-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2025 at 08:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(80) NOT NULL,
  `created_at` datetime NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `created_at`, `slug`) VALUES
(19, 'Tunde Kebab', '<p>Originating from the streets of Lucknow, Tunde <a href=\"https://www.swiggy.com/kebabs-restaurants-near-me\">Kebabs</a> are a proof of the rich culinary heritage of the <a href=\"https://www.swiggy.com/awadhi-restaurants-near-me\">Awadhi cuisine</a>. These are made from finely minced meat mixed with various spices, including cloves, cinnamon, cardamom, and saffron. Traditionally cooked on a large iron griddle, Tunde Kebabs are a true delicacy that exemplifies the finesse of Mughal-inspired cuisine.</p>', 'Image-1_Tunde-kebab-1024x538.png', '2025-11-16 00:00:00', 'Tunde-Kebab'),
(20, 'Rogan Josh', '<p>Hailing from the Kashmir Valley, Rogan Josh is a flavorful and aromatic curry made with tender lamb or goat pieces. “<a href=\"https://www.swiggy.com/rogan-josh-dish-restaurants-near-me\">Rogan Josh</a>” translates to “red heat,” which refers to its vibrant red colour and spicy nature. Adding Kashmiri red chillies gives it its signature colour and mild heat, making Rogan Josh a must-try for those who appreciate a well-balanced and aromatic curry.</p>', 'Image-2_Rogan-Josh-1024x538.png', '2025-11-16 00:00:00', 'Rogan-Josh'),
(21, 'Hyderabadi Biryani', '<p><a href=\"https://www.swiggy.com/hyderabadi-biryani-dish-restaurants-near-me\">Hyderabadi Biryani</a> is a regal <strong>non-vegetarian dish</strong> that epitomizes the rich culinary traditions of the Nizams of Hyderabad. This amazing piece of art is made with basmati rice, marinated meat (usually chicken or mutton), and a mix of add-ons such as saffron, cardamom, cloves, and bay leaves. The meat and rice are layered and cooked in a sealed pot, allowing the flavours to meld and infuse.</p>', 'Image7_Hyderabadi-Biryani-768x403.png', '2025-11-16 00:00:00', 'Hyderabadi-Biryani'),
(22, 'Chicken Tikka Masala', '<p><a href=\"https://www.swiggy.com/chicken-tikka-masala-dish-restaurants-near-me\">Chicken tikka masala</a> consists of marinated chicken pieces that are grilled or roasted before being simmered in a rich and creamy tomato-based sauce. The masala, or spice mix, used in this dish includes cumin, coriander, turmeric, and garam masala, which imparts a complex and delightful flavor.&nbsp;</p>', 'Image-4_Chicken-Tikka-Masala-1-768x403.png', '2025-11-16 00:00:00', 'Chicken-Tikka-Masala');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(4, 9),
(2, 10),
(2, 13),
(1, 14),
(4, 15),
(5, 15),
(5, 16),
(1, 17),
(1, 18),
(4, 18),
(5, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'veg'),
(2, 'non-veg'),
(3, 'fast-food'),
(4, 'dairy'),
(5, 'grains');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'ravi', 'ravi', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
