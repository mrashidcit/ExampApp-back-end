-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 08:17 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`) VALUES
(1, 'Lahore'),
(2, 'Faisalabad'),
(3, 'Gujrawala'),
(4, 'Bahawalpur'),
(5, 'Multan'),
(6, 'Rawalpindi'),
(7, 'Sahiwal'),
(8, 'Sargodha'),
(9, 'DG Khan'),
(10, NULL),
(11, NULL),
(12, NULL),
(13, 'Islamabad');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
(1, '9th'),
(2, '10th');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2017_03_27_053727_create_classes_table', 1),
(19, '2017_03_27_054000_create_subjects_table', 1),
(20, '2017_03_27_055111_create_questions_table', 1),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(24, '2016_06_01_000004_create_oauth_clients_table', 2),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(30, '2017_07_13_085644_boards', 3),
(32, '2017_07_13_085750_years', 4),
(33, '2017_07_14_004751_UpdateQuestionsTable', 5),
(34, '2017_07_17_173555_create_old_exams_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'uqR3neXI05HIw3mrtIwgUiOnG6mXFXIDqmkVDCE8', 'http://localhost', 1, 0, 0, '2017-06-21 13:52:06', '2017-06-21 13:52:06'),
(2, NULL, 'Laravel Password Grant Client', 'AK7xAFAwFxt2RJljbVfQUEge7omd47U3rXPklbiY', 'http://localhost', 0, 1, 0, '2017-06-21 13:52:06', '2017-06-21 13:52:06'),
(3, 12345, 'rashid', 'JoWE9vRRxyVGTLQNS09yyUKIroc5Muz1FP0atAcG', 'http://localhost:4200', 0, 0, 0, '2017-06-22 02:53:09', '2017-06-22 02:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-06-21 13:52:06', '2017-06-21 13:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_exams`
--

CREATE TABLE `old_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `board_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `old_exams`
--

INSERT INTO `old_exams` (`id`, `board_id`, `year_id`, `class_id`, `subject_id`, `file_name`) VALUES
(1, 1, 4, 1, 8, 'storage/dZ3mTAUBjnwD.jpeg'),
(2, 1, 4, 1, 8, 'storage/sEXj1EtcNgUv.jpeg'),
(3, 1, 4, 1, 8, 'storage/eT4ZeJM8eLog.jpeg'),
(4, 1, 4, 1, 8, 'storage/QvkozFp1cfRT.jpeg'),
(5, 1, 5, 1, 8, 'storage/bd94Ld6mhhaF.jpeg'),
(6, 1, 5, 1, 8, 'storage/f4svKfi4SC5R.jpeg'),
(7, 1, 4, 1, 14, 'storage/YrFUai7ICzY6.jpeg'),
(8, 1, 4, 1, 14, 'storage/E0Aolw9a7AJ8.jpeg'),
(9, 1, 4, 1, 14, 'storage/CVNwCQhVOLLn.jpeg'),
(10, 1, 4, 1, 14, 'storage/mgatB461pARw.jpeg'),
(11, 1, 5, 1, 14, 'storage/cRM98iOjgctm.jpeg'),
(12, 1, 5, 1, 14, 'storage/TVCuzJ6VtJiM.jpeg'),
(13, 1, 4, 1, 10, 'storage/ZNAhnCO2fTDj.jpeg'),
(14, 1, 4, 1, 10, 'storage/kmmQWwOTLD1w.jpeg'),
(15, 1, 4, 1, 10, 'storage/WjZa99CsrK34.jpeg'),
(16, 1, 4, 1, 10, 'storage/TyYnRXIv1RmY.jpeg'),
(17, 1, 5, 1, 10, 'storage/8aJl8XMyxb2v.jpeg'),
(18, 1, 5, 1, 10, 'storage/EgfOStta64Iy.jpeg'),
(19, 1, 4, 1, 12, 'storage/HA0U52edXe7I.jpeg'),
(20, 1, 4, 1, 12, 'storage/1MaF9b989gmA.jpeg'),
(21, 1, 4, 1, 12, 'storage/G9upxAeY8IRQ.jpeg'),
(22, 1, 4, 1, 12, 'storage/AEdL45f1ICip.jpeg'),
(23, 1, 5, 1, 12, 'storage/HWiGeQZrbqPC.jpeg'),
(24, 1, 5, 1, 12, 'storage/kCBpdxLinyAE.jpeg'),
(25, 1, 4, 1, 13, 'storage/CEIPzsfHQ0Wg.jpeg'),
(26, 1, 4, 1, 8, 'storage/PSJNo6hn3Dgu.jpeg'),
(27, 1, 4, 1, 8, 'storage/dz8C6eJz08K6.jpeg'),
(28, 2, 4, 1, 8, 'storage/ThidPYIWJuoy.jpeg'),
(29, 2, 4, 1, 8, 'storage/lW4tvFQPyfG5.jpeg'),
(30, 2, 5, 1, 8, 'storage/W8YkPlsyxGHR.jpeg'),
(31, 2, 4, 1, 9, 'storage/BpI5T0cSWtJ3.jpeg'),
(32, 2, 4, 1, 9, 'storage/gxXilwU6yVoV.jpeg'),
(33, 2, 5, 1, 9, 'storage/NwBFqnEejAXw.jpeg'),
(34, 2, 4, 1, 10, 'storage/eyYk3nNQOCYv.jpeg'),
(35, 2, 4, 1, 10, 'storage/AYnIMOfFX6eC.jpeg'),
(36, 2, 5, 1, 10, 'storage/0jVKubMaFqRe.jpeg'),
(37, 2, 4, 1, 11, 'storage/eYloubKpzFhE.jpeg'),
(38, 2, 4, 1, 11, 'storage/6LX4Vn2M5Ci7.jpeg'),
(39, 2, 5, 1, 11, 'storage/VGnT6zjKeZRh.jpeg'),
(40, 2, 4, 1, 12, 'storage/w2cIjowXEQV0.jpeg'),
(41, 2, 4, 1, 12, 'storage/KS0wafQGmhUy.jpeg'),
(42, 2, 5, 1, 12, 'storage/CaM4pDLsIbeS.jpeg'),
(43, 2, 4, 1, 14, 'storage/Nz6vxBIQaO2x.jpeg'),
(44, 2, 4, 1, 14, 'storage/nkhSkZWSKSaV.jpeg'),
(45, 2, 5, 1, 14, 'storage/aNoE7SAGJrMI.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `b` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `c` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `d` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `correct_option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `board_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `question`, `a`, `b`, `c`, `d`, `correct_option`, `board_id`, `year_id`, `class_id`) VALUES
(5, 1, 'Which of the following can be  subdivided into sub tasks', 'None of given', 'Program', 'Task', 'Project', 'c', 1, 1, 1),
(6, 1, '____ us example of compiled language.', 'HTML', 'JavaScript', 'C++', 'Assembly', 'c', 1, 1, 1),
(7, 8, 'RAM is a ________ memory?\n', 'Volatile', 'Non-volatile', 'Permanent', 'Temporary', 'b', 1, 1, 1),
(8, 8, 'In Boolean Algebra A + 0 is equal to :', '1', '0', 'A', 'A-Compolement', 'c', 1, 4, 1),
(9, 8, 'How many Wild Cards are used in DOS:', '1', '2', '3', '4', 'c', 1, 4, 1),
(10, 8, 'Which action involves positioning a read/write head over a track:', 'Seek', 'Track', 'Sector', 'Data transfer', 'c', 1, 4, 1),
(11, 8, 'Software can be removed or installed through:', 'Control Panel', 'Windows explorer', 'Task bar', 'Title bar', 'a', 1, 4, 1),
(12, 8, 'First electronic digital computer was :', 'VLSI', 'ENIAC', 'UNIVAC-1', 'Mark 1', 'b', 1, 4, 1),
(13, 8, 'Which program converts assembly language code to machine code:', 'System Interface', 'Compiler', 'Assembler', 'Interpreter', 'c', 1, 4, 1),
(14, 8, 'HP 3000 is an example of:', 'Super computer', 'Mini computer', 'Micro computer', 'Pocket computer', 'b', 1, 4, 1),
(15, 8, 'In Hexadecimal system, B is equal to decimal number:', '10', '11', '17', '18', 'b', 1, 4, 1),
(16, 8, 'Arrow keys are also called:', 'Toggle keys', 'Function keys', 'Modifier keys', 'Cursor control keys', 'd', 1, 4, 1),
(17, 8, 'Which option is out-put device :\n', 'Key board', 'Microphone', 'Speaker', 'Scanner', 'c', 1, 4, 1),
(18, 8, 'A program that detects and removes viruses from a computer is called:', 'Virus', 'Anti virus', 'Macintosh', 'Title bar', 'b', 1, 4, 1),
(19, 8, 'How many bits are in a byte:', '1', '2', '4', '8', 'd', 1, 4, 1),
(20, 8, 'Normally, floppy drive is labelled as:', 'A:\\', 'F:\\', 'E:\\', 'C:\\', 'b', 1, 4, 1),
(21, 8, 'Klez is a ______:', 'Games'' name', 'Hardware component', 'Virus name', 'Person''s name', 'c', 1, 4, 1),
(22, 8, 'Which one of the following is Application Software:', 'Windows', 'Linux', 'Microsoft Excel', 'DOS', 'c', 1, 4, 1),
(23, 8, 'Which of these is a low level language:', 'Fortran', 'Machine Language', 'Basic', 'C and C++', 'b', 1, 4, 1),
(24, 8, 'Which of the following device is used to get hard copy output:', 'Speaker', 'Key board', 'Monitor', 'Printer', 'd', 1, 4, 1),
(25, 8, 'Which one is faster:', 'RAM', 'Cash memory', 'Register', 'Hard disk', 'c', 1, 4, 1),
(26, 8, 'Who developed Boolean Algebra:', 'Von-Neumann', 'George Boole', 'Charles Babbage', 'Dennis Ritchie', 'b', 1, 4, 1),
(27, 8, 'How many types of language translators are:', '1', '2', '3', '4', 'b', 1, 4, 1),
(28, 8, 'The third generation computers used:', 'Vacuum tubes', 'Transistors', 'Integrated circuit', 'Micro processor', 'c', 1, 4, 1),
(29, 8, 'The base of Binary Number System is:', '16', '8', '2', '10', 'c', 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `name`) VALUES
(1, 2, 'Computer'),
(2, 2, 'Math'),
(3, 2, 'English'),
(4, 2, 'Bio'),
(5, 2, 'Physics'),
(6, 2, 'Chemistery'),
(7, 2, 'Islamiat'),
(8, 1, 'Computer'),
(9, 1, 'Math'),
(10, 1, 'English'),
(11, 1, 'Bio'),
(12, 1, 'Physics'),
(13, 1, 'Chemistery'),
(14, 1, 'Islamiat');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Rashid Saleem', 'mrashidcit@gmail.com', '$2y$10$qwA3ftngnXuiYmwI.evBbe5CSh0Dd..N6Oyc1ddMgU3SzAJBBtGBG', NULL, '2017-06-22 05:22:18', '2017-06-22 05:22:18'),
(10, 'Chris Sevilleja', 'chris@scotch.io', '$2y$10$X1WNh7di2o9JRRv3qdUIvuKz8KV0TDo5f3Sy56mUoJk57QbrUoFA2', NULL, '2017-06-22 05:22:18', '2017-06-22 05:22:18'),
(11, 'Holly Lloyd', 'holly@scotch.io', '$2y$10$WpzuJUZ.35.Wx3NHUjUWHO1td0/fwoAlfB.DG1LHzfIRwuaGPoiJO', NULL, '2017-06-22 05:22:18', '2017-06-22 05:22:18'),
(12, 'Adnan Kukic', 'adnan@scotch.io', '$2y$10$/P7.B2XnxKOISLupZYxRzuua7Ib1v4y0/xLRocvEWMyRq/A91kBNi', NULL, '2017-06-22 05:22:18', '2017-06-22 05:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`) VALUES
(1, '2012'),
(2, '2013'),
(3, '2014'),
(4, '2015'),
(5, '2016'),
(6, '2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `old_exams`
--
ALTER TABLE `old_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `old_exams`
--
ALTER TABLE `old_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
