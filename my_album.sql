-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2024 at 10:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_album`
--
CREATE DATABASE IF NOT EXISTS `my_album` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_album`;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `title`, `excerpt`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Happy Moments', 'Good things take time', 'if you live a life of make-believe, your life isn\'t worth anything until you do something that does challenge your reality. ', 'pexels-lilartsy-1721092.jpg', '2024-05-15 23:08:59', '2024-05-15 23:08:59'),
(2, 'About Life', '\"Life is really simple, but we insist on making it complicated.\"', 'One of the things you can always depend on - this is one of the truths of the universe, and you heard it first from here - whatever we decide we want to do is what we do.', 'pexels-prateekkatyal-2740954.jpg', '2024-05-15 23:12:42', '2024-05-15 23:12:42'),
(3, 'Miracles in Life', '\"Life is about creating yourself.\"', 'Life is a series of natural and spontaneous changes. Don\'t resist them - that only creates sorrow. Let reality be reality. Let things flow naturally forward in whatever way they like.', 'pexels-fotios-photos-1485548.jpg', '2024-05-15 23:19:05', '2024-05-15 23:19:05'),
(4, 'Gratitude', 'Gratitude is the memory of heart', 'She carry an aura of appreciation, recognizing the blessings in both big triumphs and small gestures. Her gratitude is not just a passing emotion but a guiding principle, shaping their outlook on life. She express thankfulness effortlessly, finding joy in acknowledging the kindness of others and the beauty of the world around her.', 'image.jpg', '2024-05-16 04:03:19', '2024-05-16 04:03:19'),
(5, 'Kind', '\" Kindness isn’t a tactic. It’s a command. \"', 'For attractive lips, speak words of kindness. For lovely eyes, seek out the good in people. For a slim figure, share your food with the hungry. For beautiful hair, let a child run his fingers through it once a day. For poise, walk with the knowledge you’ll never walk alone.', 'new.jpg', '2024-05-16 04:11:23', '2024-05-16 04:11:23'),
(8, 'LOVE', '“You are the love of my life, and the light of my love”', 'Love is patient, love is kind. It does not envy, it does not boast, it is not proud. Love is the deliberate act of valuing someone more than you value yourself', 'leighann-blackwood-gsQ4uk6cnyw-unsplash.jpg', '2024-05-20 03:11:22', '2024-05-20 03:11:22'),
(9, 'Think Twice', '\"Let your mind alone, and see what happen.\"', 'Try a thing you haven\'t done three times .Once, to get over the fear of doing it .Twice, to learn how to do it. And a third time to figure out whether you like it or not.', '1716352785.png', '2024-05-21 01:19:14', '2024-05-21 23:09:45'),
(10, 'Never Give Up', '\"Quiting is not a option for anything\"', 'Everything that’s broken was beautiful at one time. And our mistakes make us better people', '1716352070.png', '2024-05-21 02:00:08', '2024-05-21 22:57:50'),
(14, 'Growth', '\"Strength and growth come only through continuous effort and struggle\"', 'The journey is never ending. There\'s always gonna be growth, improvement, adversity; you just gotta take it all in and do what\'s right, continue to grow, continue to live in the moment.', 'growth.png', '2024-05-22 00:09:39', '2024-05-22 00:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_14_093206_create_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"my_album\",\"table\":\"details\"},{\"db\":\"task_mgt_db\",\"table\":\"task_old_data\"},{\"db\":\"task_mgt_db\",\"table\":\"tasks\"},{\"db\":\"task_mgt_db\",\"table\":\"task_details\"},{\"db\":\"task_mgt_db\",\"table\":\"roles\"},{\"db\":\"task_mgt_db\",\"table\":\"replies\"},{\"db\":\"task_mgt_db\",\"table\":\"users\"},{\"db\":\"my_album\",\"table\":\"users\"},{\"db\":\"task_mgt_db\",\"table\":\"personal_access_tokens\"},{\"db\":\"task_mgt_db\",\"table\":\"password_reset_tokens\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'my_album', 'details', '[]', '2024-05-15 09:42:53'),
('root', 'task_mgt_db', 'tasks', '{\"sorted_col\":\"`tasks`.`status` DESC\"}', '2024-05-06 08:35:33'),
('root', 'task_mgt_db', 'users', '{\"CREATE_TIME\":\"2024-05-01 16:53:01\",\"col_order\":[0,1,2,3,4,5,6,7,9,8,11,10,12,13,14,15,16],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\"sorted_col\":\"`users`.`password` ASC\"}', '2024-05-10 06:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-22 05:23:06', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `task_mgt_db`
--
CREATE DATABASE IF NOT EXISTS `task_mgt_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `task_mgt_db`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_26_111336_create_roles_table', 1),
(6, '2024_04_27_095903_create_tasks_table', 1),
(7, '2024_04_27_100438_create_task_details_table', 2),
(8, '2024_04_27_112738_create_replies_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `receiver_id` tinyint(11) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comment_reply` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `sender_id`, `receiver_id`, `task_id`, `status`, `comment_reply`, `created_at`, `updated_at`) VALUES
(1, '3', 3, '1', 0, 'i am wesee', '2024-04-29 01:56:49', '2024-04-29 01:56:49'),
(2, '4', 5, '1', 0, 'i am dee', '2024-04-29 03:08:37', '2024-04-29 03:08:37'),
(3, '5', 6, '1', 0, 'i am acom', '2024-04-29 03:09:26', '2024-04-29 03:09:26'),
(4, '5', 2, '2', 0, 'sdwerttyrh', '2024-04-30 03:04:30', '2024-04-30 03:04:30'),
(5, '5', 4, '2', 0, 'rtyhrt', '2024-04-30 03:04:48', '2024-04-30 03:04:48'),
(6, '5', 3, '2', 0, 'i am acom trfrfh', '2024-04-30 03:05:04', '2024-04-30 03:05:04'),
(7, '3', 5, '3', NULL, 'dgsxdtgsdd wegfuf egfdsbf gf dhbfjgdsfhd vfdhvf dmjhdfvhdvf hjdfgdmhbfjdvbfhd dhvfz,dhgf,jgdx, fbd fdhsbf dhgf,jzdbfyv dfhgdvhfjydzgfdhf hjfvkdzygvfhfh vfdsyfv dbnhgfjdhgvfhdg fh xgjfvyhdvfdhgfzhdgvb fnzdhgv fhdmnfvzsdjfv ndzsvh ffvjzdh fvasdfhzsfgbczsdmhfvdhs', '2024-05-02 03:05:04', '2024-05-02 03:05:04'),
(8, '5', 2, '3', NULL, 'dgsxdtgsdd wegfuf egfdsbf gf dhbfjgdsfhd vfdhvf dmjhdfvhdvf hjdfgdmhbfjdvbfhd dhvfz,dhgf,jgdx, fbd fdhsbf dhgf,jzdbfyv dfhgdvhfjydzgfdhf hjfvkdzygvfhfh vfdsyfv dbnhgfjdhgvfhdg fh xgjfvyhdvfdhgfzhdgvb fnzdhgv fhdmnfvzsdjfv ndzsvh ffvjzdh fvasdfhzsfgbczsdmhfvdhs', '2024-05-02 03:05:52', '2024-05-02 03:05:52'),
(9, '2', 6, '3', NULL, 'This code adds a button that, when clicked, increases the number of rows in the textarea by one. You can adjust the increment as needed by changing the value added to currentRows variable in the increaseTextareaRows() function.\r\n\r\n   if ($affected) {\r\n            return redirect()->back()->with(\'success\', \'Information updated successfully\');\r\n        } else {\r\n            // If no record is found with the given task_id, you might want to handle this case accordingly\r\n            return redirect()->back()->withErrors([\'error\' => \'No record found with the given task_id\']);\r\n        }\r\n    }', '2024-05-02 03:07:34', '2024-05-02 03:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'SPONSOR', '2024-04-27 04:45:22', '2024-04-27 04:45:22'),
(2, 'VIEWER', '2024-04-27 04:45:32', '2024-04-27 04:45:32'),
(3, 'COM', '2024-04-27 04:45:40', '2024-04-27 04:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sponsoring_directorate` varchar(255) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `send_to` varchar(255) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `sponsoring_directorate`, `task_name`, `task_description`, `send_to`, `sender_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DWE', 'Design and Development of interface solution between Fregat M2EM and Barak.', '<p>gfger</p>', 'WESEE', '1', 'Approve', '2024-04-29 07:23:30', '2024-04-29 07:23:30'),
(2, 'DWE', 'To format JavaScript code in Visual Studio Code, you can use the built-in formatting options or install extensions for more advanced formatting features. Here\'s how you can do it:', '<p>gfgergtiuewrfgesbufiousegrfbuilegsrfjksdguidrfguirsdbgiludzgtbdrlukjdrf.dfjghvoidruzltgnp98dzrhugdfuhgidrujghdrz;oguihfdkjghdr98gjkfdlerisdfh;gnl.rsdfihgaeri;gnv</p>', 'DND(SDG)', '1', 'Pending', '2024-04-30 08:30:22', '2024-04-30 08:30:22'),
(3, 'DEE', 'garima', '<p>If you want to increase the size of the textarea dynamically without \r\nreloading the page, you can use JavaScript to accomplish this. Here\'s a \r\nsimple example:</p><p>This code adds a button that, when clicked, increases the number of rows\r\n in the textarea by one. You can adjust the increment as needed by \r\nchanging the value added to <code>currentRows</code> variable in the <code>increaseTextareaRows()</code> function.</p>', 'WESEE', '1', 'Pending', '2024-05-02 08:32:27', '2024-05-02 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `task_details`
--

CREATE TABLE `task_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_fk_id` bigint(20) UNSIGNED NOT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_details`
--

INSERT INTO `task_details` (`id`, `task_fk_id`, `upload`, `created_at`, `updated_at`) VALUES
(1, 1, 'TaskingPortal.pdf', '2024-04-29 01:53:30', '2024-04-29 01:53:30'),
(2, 1, 'dd12-13_0.pdf', '2024-04-29 01:53:30', '2024-04-29 01:53:30'),
(3, 2, 'TaskingPortal.pdf', '2024-04-30 03:00:22', '2024-04-30 03:00:22'),
(4, 2, 'dd12-13_0.pdf', '2024-04-30 03:00:22', '2024-04-30 03:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `task_old_data`
--

CREATE TABLE `task_old_data` (
  `id` int(11) NOT NULL,
  `s_no` varchar(14) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `some_column_name_1` varchar(4) DEFAULT NULL,
  `tasking_no` varchar(19) DEFAULT NULL,
  `sponsoring_directorate` varchar(28) DEFAULT NULL,
  `details_of_project` varchar(268) DEFAULT NULL,
  `nature` varchar(7) DEFAULT NULL,
  `CATEGORY OF TASKING` varchar(26) DEFAULT NULL,
  `cost` varchar(19) DEFAULT NULL,
  `wesee_group` varchar(5) DEFAULT NULL,
  `date_of_task` varchar(11) DEFAULT NULL,
  `time_frame` varchar(58) DEFAULT NULL,
  `timeline` varchar(9) DEFAULT NULL,
  `date_of_completion` varchar(10) DEFAULT NULL,
  `Completed_on_Time` varchar(11) DEFAULT NULL,
  `Cost_Implication` varchar(10) DEFAULT NULL,
  `present_status` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `task_old_data`
--

INSERT INTO `task_old_data` (`id`, `s_no`, `year`, `some_column_name_1`, `tasking_no`, `sponsoring_directorate`, `details_of_project`, `nature`, `CATEGORY OF TASKING`, `cost`, `wesee_group`, `date_of_task`, `time_frame`, `timeline`, `date_of_completion`, `Completed_on_Time`, `Cost_Implication`, `present_status`) VALUES
(1, '1             ', 2016, '2016', 'WESEE/DEE/2016/1', 'DEE', 'Design, Development and Commissioning of Navigation data interface Unit(NDIU) with convertor and integration with GPS data available at Rukmani output for Sindhughosh - Jan 16 , sindhukesari - Apr 16, Sindhukirti - Jun 16, Sindhushstra - Jun 16', 'Normal ', 'Integration of Systems', '₹ 25,50,000.00', 'CSI', '15/01/16', '8', '15/09/16', '28/08/19', 'YES', '', 'YES'),
(2, '2             ', 2016, '2016', 'WESEE/DEE/2016/02', 'DNCO', 'Upgradation of one data diode for Merchant Ship Information System (MSIS)', 'Normal ', 'Development of Systems', '₹ 9,75,540.00', 'IT&IW', '11/02/16', '5', '11/07/16', 'NA', 'NA', '', 'YES'),
(3, '3             ', 2017, '2017', 'WESEE/DEE/2017/01', 'DWE', 'Software development of indigensied TFCS for EKM submarines.', 'Normal ', 'Development of Systems', '₹ 77,62,200.00', 'SCS', '11/04/17', '8', '11/12/17', '10/12/17', 'YES', '', 'YES'),
(4, '4             ', 2017, '2017', 'WESEE/DIT/2017/02', 'DIT', 'Design, Development and Security Evolutions Next Generation Firewall (Look Out NG) with advanced features)', 'Normal ', 'Induction of Technology', '₹ 86,00,000.00', 'IT&IW', '20/04/17', '12', '20/04/18', 'NA', 'YES', '', 'YES'),
(5, '5             ', 2017, '2017', 'WESEE/DWE/2017/03', 'DWE', 'Development of host hardware lab set up for conventional submarines.', 'Normal ', 'Development of Systems', '₹ 59,48,190.00', 'SCS', '08/06/17', '9', '08/03/18', 'NA', 'YES', '', 'YES'),
(6, '6             ', 2017, '2017', 'WESEE/DEE/2017/04', 'DEE', 'Design and Development of Interface Unit for providing heading data from INS SA to Alunda in Resolver format onboard INS Sindhudwaj + OBS (Qty - 01)', 'Normal ', 'Integration of Systems', '₹ 6,00,000.00', 'CSI', '08/06/17', '3', '08/09/17', '24/10/19', 'NO', '', 'YES'),
(7, '7             ', 2017, '2017', 'WESEE/DEE/2017/05', 'DEE', 'Design and Development of \'Interface cum Switching Unit\' for providing RLG Sigma 40 and Gyro Std 20M heading data to COTS Radar and ECDIS onboard INS Prabal.', 'Normal ', 'Integration of Systems', '₹ 3,50,000.00', 'CSI', '18/10/17', '3', '18/01/17', '15/12/17', 'NO', '', 'YES'),
(8, '8             ', 2017, '2017', 'WESEE/DSMAQ/2017/06', 'DSMAQ', 'Undertake development of Data Link for P-75 submarines', 'Normal ', 'Development of Systems', '₹ 19,50,000.00', 'TaNCS', '22/12/17', '4', '22/04/18', 'NA', 'NA', '', 'YES'),
(9, '9             ', 2017, '2017', 'WESEE/DEE/2017/07', 'DNCO', 'Development of operational planning and management system (OPMS) as a Proof of Concept', 'Normal ', 'Development of Systems', '₹ 0.00', 'CMS', '07/12/17', '6', '07/06/18', '0706-18', 'NA', '', 'YES'),
(10, '10          ', 2018, '2018', 'WESEE/DWE/2018/01', 'DWE', 'Development of prototype indigenous TFCS for INS Sindhuvir ', 'Normal ', 'Development of Systems', '₹ 99,20,000.00', 'SCS', '12/03/18', '14', '12/07/19', 'NA', 'NA', '', 'YES'),
(11, '11          ', 2018, '2018', 'WESEE/DEE/2018/02', 'DEE', 'Design and Development of Navigation Complex Interface Unit (NCIU) with ruggedised enclosure for INS Sindhuvir', 'Normal ', 'Development of Systems', '₹ 25,00,000.00', 'CSI', '03/04/18', '8', '03/12/18', '04/10/19', 'NO', '', 'YES'),
(12, '12          ', 2018, '2018', 'WESEE/DNSO/2018/03', 'DNSO', 'Undertake design & development of Command Operational Information Exchange & Collaboration Services (CON)', 'Normal ', 'Development of Systems', '₹ 87,80,000.00', 'TaNCS', '09/04/18', '10', '09/02/19', 'NA', 'NA', '', 'YES'),
(13, '13          ', 2018, '2018', 'WESEE/DNS/2018/04', 'DNS', 'Development of application to support INCIS hardware and its integration with 9.6 Kbps MODEM', 'Normal ', 'Integration of Systems', '₹ 54,40,000.00', 'TaNCS', '29/08/18', '6', '28/02/19', 'NA', 'NA', '', 'YES'),
(14, '14          ', 2018, '2018', 'WESEE/DEE/2018/05', 'DNSO', 'Standardisation of MSS-Link II interface', 'Normal ', 'Integration of Systems', '₹ 0.00', 'TaNCS', '18/09/18', '6', '18/03/19', 'NA', 'NA', '', 'YES'),
(15, '15          ', 2018, '2018', 'WESEE/DNSO/2018/06', 'DNSO', 'Modification of Link II software at MOCs to receive and display GPS positions of Coast Guard MSS terminals and support field trials of their ships.', 'Normal ', 'Analysis of Equipment', '₹ 0.00', 'TaNCS', '18/09/18', '6', '18/03/19', 'NA', 'NA', '', 'YES'),
(16, '16          ', 2018, '2018', 'WESEE/DAPM/2018/07', 'DAPM', 'Development, installation and maintenance of Data Link software for 12 new Dornier Aircraft', 'Normal ', 'Development of Systems', '₹ 0.00', 'TaNCS', '18/09/18', '24', '18/09/20', 'NA', 'YES', '', 'YES'),
(17, '17          ', 2018, '2018', 'WESEE/DNS/2018/08', 'DNS', 'Development of web based \'SATCOM solution for INCIS application\'', 'Normal ', 'Development of Systems', '₹ 0.00', 'TaNCS', '19/09/18', '6', '19/03/19', 'NA', 'YES', '', 'YES'),
(18, '18          ', 2018, '2018', 'WESEE/DNSO/2018/09', 'DNSO', 'Develop a security Evaluated High Throughput Data Diode for IMAC', 'Normal ', 'Development of Systems', '₹ 32,00,000.00', 'IT&IW', '08/11/18', '5', '08/04/19', 'NA', 'YES', '', 'YES'),
(19, '19          ', 2018, '2018', 'WESEE/DNCO/2018/10', 'DNCO', 'Development of 06 High Throughput data', 'Normal ', 'Development of Systems', '₹ 25,00,000.00', 'IT&IW', '20/12/18', '4', '20/04/19', 'NA', 'YES', '', 'YES'),
(20, '20          ', 2019, '2019', 'WESEE/DSMAQ/2019/01', 'DSMAQ', 'Undertake development of Data Link for P-75 submarines', 'Normal ', 'Development of Systems', '₹ 19,50,000.00', 'TaNCS', '28/02/19', '4', '28/06/19', 'NA', 'YES', '', 'YES'),
(21, '21          ', 2019, '2019', 'WESEE/DNS/2019/02', 'DNS', 'Interface the newly developed HD-VLF receiver with IBA & Undertake \"On- air\' trials of modified IBA at COMNET (Mbi)', 'Normal ', 'Integration of Systems', '₹ 0.00', 'TaNCS', '05/03/19', '4', '05/07/23', 'NA', 'YES', '', 'YES'),
(22, '22          ', 2019, '2019', 'WESEE/DWE/2019/03', 'DWE', 'Work on PoC to be progressed as per timeline for SCS of P75(I)', 'Normal ', 'Development of Systems', '₹ 5,00,00,000.00', 'SCS', '26/06/19', '36', '26/06/22', 'NA', 'YES', '', 'YES'),
(23, '23          ', 2019, '2019', 'WESEE/DEE/2019/04', 'DEE', 'Develop a security Evaluated High Throughput Data Diode for IMAC', 'Normal ', 'Development of Systems', '₹ 11,84,092.00', 'IT&IW', '25/09/19', '5', '25/02/20', 'NA', 'YES', '', 'YES'),
(24, '24          ', 2019, '2019', 'WESEE/DNSM/2019/05', 'DNSM', 'Design and Development of one in no. \'Bridge repeater interface unit\' for Anchutz make bearing repeater onboard Arihant ', 'Normal ', 'Integration of Systems', '₹ 60,000.00', 'CSI', '15/11/19', '1', '15/12/19', '14/12/19', 'YES', '', 'YES'),
(25, '25          ', 2019, '2019', 'WESEE/DWE/2019/06', 'DWE', 'Design and Development of 03 in no. \'Three Ch INS TA\' Interface unit for integrating INS SA with TA device of Ladoga system onboard TSL. Three in no. INS SA switching units for digital consumers. PLI of INS SA with all consumers of SINS Ladoga onboard TLW class ships.', 'Normal ', 'Platform level Integration', '₹ 25,00,000.00', 'CSI', '10/12/19', '6', '10/06/20', '01/05/21', 'NO', '', 'YES'),
(26, '26          ', 2020, '2020', 'WESEE/DEE/2020/01', 'DEE', 'Design develop and install CMS prototype onboard INS Vikramaditya during ongoing NR', 'Normal ', 'Development of Systems', '₹ 2,60,00,000.00', 'CMS', '18/12/20', '18', '18/06/21', 'NA', 'YES', '', 'YES'),
(27, '27          ', 2021, '2021', 'WESEE/DWE/2021/01', 'DWE', 'Development of D&E version of three indigenous Nav Consoles (for Ladoga of Teg class and VKD)', 'Normal ', 'Development of Systems', '₹ 25,00,000.00', 'CSI', '30/09/21', '3', '30/12/21', '01/05/22', 'NO', '', 'YES'),
(28, '28          ', 2021, '2021', 'WESEE/DWE/2021/63', 'DWE', 'D&D of ‘6 Ch INS SA-TA interface unit’ for integrating INS SA with Ladoga ME onboard Talwar', 'Normal ', 'Integration of Systems', '₹ 25,00,000.00', 'CSI', '07/10/21', '6', '07/04/21', '03/03/23', 'NA', '', 'YES'),
(29, '29          ', 2022, '2022', 'WESEE/DWE/2022/01', 'DEE', 'D&D of Integration Solution for providing SHHD information to legacy Nav Aids in NMEA 0183 Std over RS 422 from ship’s MIL 1553 Nav bus – INS Trishul', 'Normal ', 'Integration of Systems', '₹ 2,30,000.00', 'CSI', '11/03/22', '2', '11/05/22', '24/06/22', 'YES', '', 'YES'),
(30, '30', 2021, '2021', 'WESEE/DEE/2021/02', 'DEE/ DND', 'Undertake PLI onboard IAC as per promulgated timeline', 'OTA', 'Platform level Integration', '₹ 62,11,000.00', 'CSI', '23/07/21', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(31, '31', 2021, '2021', 'WESEE/DEE/2021/03', 'DEE/ DND ', 'PLI for Project 15B', 'OTA', 'Platform level Integration', '₹ 70,79,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(32, '32', 2021, '2021', 'WESEE/DEE/2021/04', 'DEE/ DND ', 'PLI for Project 17A', 'OTA', 'Platform level Integration', '₹ 54,21,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(33, '33', 2021, '2021', 'WESEE/DEE/2021/05', 'DSP', 'PLI for Project LCU-Mk IV', 'OTA', 'Platform level Integration', '₹ 8,92,000.00', 'CSI', '05/05/22', 'NA', '31/12/21', '31/12/21', 'YES', '', 'YES'),
(34, '34', 2021, '2021', 'WESEE/DEE/2021/06', 'DSP ', 'PLI for Project ASW SWC', 'OTA', 'Platform level Integration', '₹ 28,75,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(35, '35', 2021, '2021', 'WESEE/DEE/2021/07', 'WDB', 'PLI for Project Survey Vessel Large', 'OTA', 'Platform level Integration', '₹ 8,92,000.00', 'CSI', '05/05/22', 'NA', '06/05/22', '06/05/22', 'YES', '', 'YES'),
(36, '36', 2021, '2021', 'WESEE/DEE/2021/08', 'DSP', 'PLI for Project Next Gen Missile Vessel (NGMV)', 'OTA', 'Platform level Integration', '₹ 35,64,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(37, '37', 2021, '2021', 'WESEE/DEE/2021/09', 'DSP ', 'PLI for Project 1135.6 AFOS (ex Russia) and 1135.6 AFOS (ex GSL)', 'OTA', 'Platform level Integration', '₹ 77,23,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(38, '38', 2021, '2021', 'WESEE/DEE/2021/10', 'DEE', 'PLI for INS Betwa during MLU', 'OTA', 'Platform level Integration', '₹ 0.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(39, '39', 2021, '2021', 'WESEE/DEE/2021/11', 'DEE', 'PLI for P-15 ships during MLU', 'OTA', 'Platform level Integration', '₹ 75,06,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(40, '40', 2021, '2021', 'WESEE/DEE/2021/12', 'DEE ', 'Implementation of enhanced Time Synchronisation using Single Time Server configuration onboard P15A, P28, P17 ships', 'OTA', 'Induction of Technology', '₹ 30,26,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(41, '41', 2021, '2021', 'WESEE/DEE/2021/13', 'DWE', 'Design ATAS system integration onboard TLW, STP and TBR', 'OTA', 'Integration of Systems', '₹ 11,46,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(42, '42', 2021, '2021', 'WESEE/DEE/2021/14', 'DWE', 'Design retro fitment of Lynx U2 system onboard P-15 class of ships during their refit', 'OTA', 'Development of Systems', '₹ 8,24,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(43, '43', 2021, '2021', 'WESEE/DEE/2021/15', 'DWE', 'Design retro fitment of 32 SSR systems', 'OTA', 'Development of Systems', '₹ 4,09,60,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(44, '44', 2021, '2021', 'WESEE/DEE/2021/16', 'DWE', 'Design retro fitment of 08 NTDS (Ultra Electronics)', 'OTA', 'Development of Systems', '₹ 11,46,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(45, '45', 2021, '2021', 'WESEE/DEE/2021/17', 'DEE', 'Design CMS system integration for Project VC-11184', 'OTA', 'Development of Systems', '₹ 28,75,000.00', 'CSI', '05/05/22', 'NA', '18/03/21', 'NA', 'NA', '', 'YES'),
(46, '46', 2021, '2021', 'WESEE/DEE/2021/18', 'DWE', 'Design retro fitment of SRCG guns on existing and new construction ships', 'OTA', 'Development of Systems', '₹ 15,06,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(47, '47', 2021, '2021', 'WESEE/DEE/2021/19', 'DSR', 'Completion of HATs/SATs of yard 3020 (Kavaratti)', 'OTA', 'Analysis of Equipment', '₹ 6,80,00,000.00', 'CMS', 'NA', 'NA', '01/12/21', 'NA', 'YES', '', 'YES'),
(48, '48', 2021, '2021', 'WESEE/DEE/2021/20', 'DSR', 'Completion of SATs of CMS 16A onboard INS Brahmaputra & Betwa', 'OTA', 'Analysis of Equipment', '₹ 76,00,000.00', 'CMS', 'NA', 'NA', '01/01/22', '14/06/23', 'IN PROGRESS', '', 'IN PROGRESS'),
(49, '49', 2021, '2021', 'WESEE/DEE/2021/21', 'DSR', 'Curtailed ITP/PSATs to be planned for testing simulate Mode, FTS and functions related to new equipment ', 'OTA', 'Induction of Technology', '₹ 14,32,00,000.00', 'CMS', 'NA', 'NA', '01/12/21', 'NA', 'YES', '', 'YES'),
(50, '50', 2021, '2021', 'WESEE/DEE/2021/22', 'DSR', 'Development activity for CMS 15 to be progressed as per project time lines', 'OTA', 'Development of Systems', '₹ 9,36,00,000.00', 'CMS', 'NA', 'NA', 'NA', 'NA', 'YES', '', 'YES'),
(51, '51', 2021, '2021', 'WESEE/DEE/2021/23', 'DSR', 'Development activity for CMS 15B to be progressed as per project time lines', 'OTA', 'Development of Systems', '₹ 10,16,00,000.00', 'CMS', 'NA', 'NA', '01/09/21', '25/01/23', 'YES', '', 'YES'),
(52, '52', 2021, '2021', 'WESEE/DEE/2021/24', 'DEE', 'Hanging issues of CMS 28 & CMS 15A to be resolved', 'OTA', 'Analysis of Equipment', '₹ 1,60,00,000.00', 'CMS', 'NA', 'NA', '01/01/22', 'NA', 'YES', '', 'YES'),
(53, '53', 2021, '2021', 'WESEE/DEE/2021/25', 'DSR', 'Development of Mod CMS 23 & CMS 17A', 'OTA', 'Development of Systems', '₹ 8,40,00,000.00', 'CMS', 'NA', 'NA', '01/07/23', '01/08/23', 'IN PROGRESS', '', 'IN PROGRESS'),
(54, '54', 2021, '2021', 'WESEE/DEE/2021/26', 'DEE', 'Incorporation of ASW Fleet Functionality in CMS 17', 'OTA', 'Integration of Systems', '₹ 12,00,00,000.00', 'CMS', 'NA', 'NA', 'NA', '2017', 'YES', '', 'YES'),
(55, '55', 2021, '2021', 'WESEE/DEE/2021/27', 'DEE', 'Undertake development of indigenous ACAD module for future carriers', 'OTA', 'Development of Systems', '₹ 4,40,00,000.00', 'CMS', 'NA', 'NA', '01/10/22', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(56, '56', 2021, '2021', 'WESEE/DEE/2021/28', 'DSR', 'Undertake development of CMS for ASW SWC', 'OTA', 'Development of Systems', '₹ 1,92,00,000.00', 'CMS', 'NA', 'NA', '01/10/22', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(57, '57', 2021, '2021', 'WESEE/DEE/2021/29', 'DSR', 'Undertake development of CMS for P 1135.6 AFOS (Ex-GSL)', 'OTA', 'Development of Systems', '₹ 5,04,00,000.00', 'CMS', 'NA', 'NA', '01/12/23', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(58, '58', 2021, '2021', 'WESEE/DEE/2021/30', 'DSR', 'Undertake development of DSTS and incorporate DSTs in CMS and future C2 systems', 'OTA', 'Development of Systems', '₹ 3,20,00,000.00', 'CMS', 'NA', 'NA', '01/12/22', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(59, '59', 2021, '2021', 'WESEE/DEE/2021/31', 'DWE', 'Operator training and maintainer training to be undertaken', 'OTA', 'Analysis of Equipment', '₹ 99,20,000.00', 'SCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(60, '60', 2021, '2021', 'WESEE/DEE/2021/32', 'DSMAQ', 'Undertake development of ICS for P76', 'OTA', 'Development of Systems', 'NA', 'SCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(61, '61', 2021, '2021', 'WESEE/DEE/2021/33', 'DAPM/ DNS', 'Undertake development of Data Link Integration onboard EKMs and SSKs', 'OTA', 'Integration of Systems', '₹ 27,48,849.00', 'TaNCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(62, '62', 2021, '2021', 'WESEE/DEE/2021/34', 'DEE ', 'Propose Navy Wide Time Synchronisation and Philosophy', 'OTA', 'Analysis of Equipment', '₹ 44,19,865.00', 'TaNCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(63, '63', 2021, '2021', 'WESEE/DEE/2021/35', 'DNCO ', 'Develop and deploy IFC_IOR Collaboration Service Solution', 'OTA', 'Development of Systems', '₹ 23,69,699.00', 'TaNCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(64, '64', 2021, '2021', 'WESEE/DEE/2021/36', 'DNCO', 'Undertake up gradation of Merchant Ship Information System (MSIS)', 'OTA', 'Development of Systems', '₹ 87,44,942.00', 'TaNCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(65, '65', 2021, '2021', 'WESEE/DEE/2021/37', 'DNSO/DNS', 'Design & deploy two way communication solution on board P81 using INMARSAT', 'OTA', 'Development of Systems', '₹ 10,00,000.00', 'TaNCS', 'NA', 'NA', '01/03/22', 'NA', 'NA', '', 'YES'),
(66, '66', 2021, '2021', 'WESEE/DEE/2021/38', 'PMG CMS ', 'Formulate and approach paper, bringing out the way ahead towards implementation of the \' AI Incubation Cell\'', 'OTA', 'Analysis of Equipment', '₹ 0.00', 'TaNCS', '28/09/18', 'NA', 'NA', '13/01/23', 'NO', '', 'YES'),
(67, '67', 2021, '2021', 'WESEE/DEE/2021/39', 'DAPM/DNS', 'Development of Link II system based on open system architecture and customization and mission computer system for Multi role Helicopter (MRH) platform', 'OTA', 'Development of Systems', '₹ 12,00,000.00', 'TaNCS', 'NA', '18', 'NA', 'NA', 'NA', '', 'YES'),
(68, '68', 2021, '2021', 'WESEE/DEE/2021/40', 'DAPM/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for HALE platform. Multi-role Helicopter (MRH) platform', 'OTA', 'Development of Systems', '₹ 12,00,000.00', 'TaNCS', 'NA', '18', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(69, '69', 2021, '2021', 'WESEE/DEE/2021/41', 'DAPM/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for NCO upgrade of P8I', 'OTA', 'Development of Systems', '₹ 12,00,000.00', 'TaNCS', 'NA', '18', 'NA', 'NA', 'NA', '', 'YES'),
(70, '70', 2021, '2021', 'WESEE/DEE/2021/42', 'DAPM/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for KM-31', 'OTA', 'Development of Systems', '₹ 12,00,000.00', 'TaNCS', 'NA', '18', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(71, '71', 2021, '2021', 'WESEE/DEE/2021/43', 'DAPM/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for KM-28', 'OTA', 'Development of Systems', '₹ 12,00,000.00', 'TaNCS', 'NA', '18', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(72, '72', 2021, '2021', 'WESEE/DEE/2021/44', 'DEE/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for P-1135.6 (7&8 ex-Russia)', 'OTA', 'Development of Systems', '₹ 23,56,543.00', 'TaNCS', 'NA', '2', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(73, '73', 2021, '2021', 'WESEE/DEE/2021/45', 'DEE/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system forP-17A', 'OTA', 'Development of Systems', '₹ 23,56,543.00', 'TaNCS', 'NA', '2', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(74, '74', 2021, '2021', 'WESEE/DEE/2021/46', 'DEE/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for P-15A', 'OTA', 'Development of Systems', '₹ 23,56,543.00', 'TaNCS', 'NA', '2', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(75, '75', 2021, '2021', 'WESEE/DEE/2021/47', 'DEE/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for P-17', 'OTA', 'Development of Systems', '₹ 23,56,543.00', 'TaNCS', 'NA', '2', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(76, '76', 2021, '2021', 'WESEE/DEE/2021/48', 'DEE/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for P-15 B', 'OTA', 'Development of Systems', '₹ 23,56,543.00', 'TaNCS', 'NA', '2', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(77, '77', 2021, '2021', 'WESEE/DEE/2021/49', 'DEE/DNS', 'Development of Link II system based on open system architecture and customization for sensors, system and mission computer system for P-1135.6 (9&10)', 'OTA', 'Development of Systems', '₹ 23,56,543.00', 'TaNCS', 'NA', '2', 'NA', 'NA', 'NO', '', 'IN PROGRESS'),
(78, '78', 2021, '2021', 'WESEE/DEE/2021/50', 'DAP-IDEX', 'development of 4G/LTE based Tactical LAN for high speed information exchange between naval platform', 'OTA', 'Development of Systems', '₹ 10,00,000.00', 'TaNCS', 'NA', 'NA', '01/11/21', 'NA', 'NO', '', 'YES'),
(79, '79', 2021, '2021', 'WESEE/DEE/2021/51', 'DNS ', 'Development of V/UHF 9.6 Kbps, L Band MANET, HF 9.6 Kbps Waveforms and HLNM Testing', 'OTA', 'Development of Systems', '₹ 90,51,408.00', 'TaNCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(80, '80', 2021, '2021', 'WESEE/DEE/2021/52', 'DNSO/DNS', ' Design integration of P81 into IN information grid (POC)', 'OTA', 'Development of Systems', '₹ 28,47,235.00', 'TaNCS', 'NA', 'NA', '01/11/21', 'NA', 'NO', '', 'IN PROGRESS'),
(81, '81', 2021, '2021', 'WESEE/DEE/2021/53', 'DDP-IDEX', 'Undertake 4g LTE- based high data rate communication solution (ship to ship/ship to shore', 'OTA', 'Induction of Technology', '₹ 50,00,000.00', 'TaNCS', 'NA', 'NA', '01/11/21', 'NA', 'NA', '', 'YES'),
(82, '82', 2021, '2021', 'WESEE/DEE/2021/54', 'DNS', 'Development and Deployment of Sanchar 2.0 system', 'OTA', 'Development of Systems', '₹ 45,00,000.00', 'IT&IW', 'NA', 'NA', '01/01/22', 'NA', 'YES', '', 'YES'),
(83, '83', 2021, '2021', 'WESEE/DEE/2021/55', 'DNS', 'Develop Linkryptor system', 'OTA', 'Development of Systems', '₹ 42,00,000.00', 'IT&IW', 'NA', 'NA', '01/11/21', 'NA', 'YES', '', 'YES'),
(84, '84', 2021, '2021', 'WESEE/DEE/2021/56', 'DNS', 'Development of CGCC', 'OTA', 'Development of Systems', '₹ 10,00,000.00', 'CSC', 'NA', 'NA', '01/06/22', 'NA', 'YES', '', 'YES'),
(85, '85', 2021, '2021', 'WESEE/DEE/2021/57', 'DIT', 'Development of SENIC-IV (upgrade of SENIC III Desktop Security Suite)', 'OTA', 'Development of Systems', '₹ 30,00,000.00', 'IT&IW', 'NA', 'NA', '01/11/22', 'NA', 'NA', '', 'IN PROGRESS'),
(86, '86', 2021, '2021', 'WESEE/DEE/2021/58', 'DNOM', 'Design and Development of 02 PoC prototype Data Diodes for MESSIR and PANAROMA systems of INMAC (Kochi)', 'OTA', 'Development of Systems', '₹ 11,84,092.00', 'IT&IW', '01/06/18', 'NA', '01/03/22', '01/01/21', 'YES', '', 'YES'),
(87, '87', 2021, '2021', 'WESEE/DEE/2021/59', 'DNS', 'Design Development and Gradation of SWADESH black box', 'OTA', 'Development of Systems', '₹ 2,33,00,000.00', 'CSC', 'NA', 'NA', '01/07/22', 'NA', 'NO', '', 'IN PROGRESS'),
(88, '88', 2021, '2021', 'WESEE/DEE/2021/60', 'CNS Directive', 'Set up Quantum Lab at WESEE.', 'OTA', 'Development of Systems', '₹ 20,00,000.00', 'IT&IW', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'YES'),
(89, '89', 2021, '2021', 'WESEE/DEE/2021/61', 'CNS Directive', 'Implement Quantum Key based secure video collaboration tool between two Sites (50-80 Kms)', 'OTA', 'Platform level Integration', '₹ 5,00,00,000.00', 'IT&IW', 'NA', 'NA', '01/04/24', 'NA', 'NA', '', 'YES'),
(90, '90', 2021, '2021', 'WESEE/DEE/2021/62', 'CNS Directive', 'Undertake Pilot POC of Net Enabled Capability for IN', 'OTA', 'Induction of Technology', '₹ 2,50,00,000.00', 'TaNCS', 'NA', 'NA', '01/03/22', 'NA', 'NA', '', 'YES'),
(91, '91', 2022, '2022', 'WESEE/DEE/2022/02', 'DSP', 'Platform Level Integration (PLI) of Multi-Purpose Vehicle (MPV)', 'OTA', 'Platform level Integration', '₹ 20,14,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(92, '92', 2022, '2022', 'WESEE/DEE/2022/03', 'DSP', 'Platform Level Integration (PLI) of Fleet Support Ship (FSS)', 'OTA', 'Platform level Integration', '₹ 12,58,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(93, '93', 2022, '2022', 'WESEE/DEE/2022/04', 'DSP', 'Platform Level Integration (PLI) of New Cadet Training Ship (CTS)', 'OTA', 'Platform level Integration', '₹ 15,80,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(94, '94', 2022, '2022', 'WESEE/DEE/2022/05', 'DSP', 'Platform Level Integration (PLI) of NGOPV            (11 in nos.)', 'OTA', 'Platform level Integration', '₹ 15,46,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(95, '95', 2022, '2022', 'WESEE/DEE/2022/06', 'DSP', 'Platform Level Integration (PLI) of Landing Platform Dock (LPD)', 'OTA', 'Platform level Integration', '₹ 12,92,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(96, '96', 2022, '2022', 'WESEE/DEE/2022/07', 'DSP', 'Platform Level Integration (PLI) of NG-FAC', 'OTA', 'Platform level Integration', '₹ 8,65,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(97, '97', 2022, '2022', 'WESEE/DEE/2022/08', 'DSP', 'Platform Level Integration (PLI) of Mine Counter Measure Vessel (MCMV)', 'OTA', 'Platform level Integration', '₹ 28,82,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(98, '98', 2022, '2022', 'WESEE/DEE/2022/09', 'DSP', 'Platform Level Integration (PLI) of Diving Support Vessel (DSV)', 'OTA', 'Platform level Integration', '₹ 24,82,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(99, '99', 2022, '2022', 'WESEE/DEE/2022/10', 'DSP', 'Platform Level Integration (PLI) of STV', 'OTA', 'Platform level Integration', '₹ 12,51,000.00', 'CSI', '05/05/22', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(100, '100', 2022, '2022', 'WESEE/DEE/2022/11', 'DNAS/ DNS', 'Evaluate Feasibility of Integration of HAL (SLRDC) Developed SDR', 'OTA', 'Integration of Systems', '₹ 3,00,000.00', 'TaNCS', 'NA', 'NA', '01/03/22', 'NA', 'NA', '', 'YES'),
(101, '101', 2022, '2022', 'WESEE/DEE/2022/12', 'DDP- IDEX DISC V/ DOI', 'Design and Develop Private 5G network for machine-to-machine communication for Indian Navy.', 'OTA', 'Development of Systems', '₹ 50,00,000.00', 'TaNCS', 'NA', '36', 'NA', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(102, '102', 2022, '2022', 'WESEE/DEE/2022/13', 'DEE/DNAS', 'Undertake Data Link Trials to establish Peer to Peer connectivity onboard KM 31', 'OTA', 'Analysis of Equipment', '₹ 2,50,000.00', 'TaNCS', 'NA', 'NA', '01/05/22', 'NA', 'NA', '', 'YES'),
(103, '103', 2022, '2022', 'WESEE/DEE/2022/14', 'DNS', 'Integration of Link II System with SDR (NC)', 'OTA', 'Integration of Systems', '₹ 10,00,000.00', 'TaNCS', 'NA', 'NA', '01/12/21', 'NA', 'NA', '', 'YES'),
(104, '104', 2022, '2022', 'WESEE/DEE/2022/15', 'DNS', 'Integration of Link II System with SDR (TAC)', 'OTA', 'Integration of Systems', '₹ 10,00,000.00', 'TaNCS', 'NA', 'NA', '01/07/22', 'NA', 'NO', '', 'IN PROGRESS'),
(105, '105', 2022, '2022', 'WESEE/DEE/2022/16', 'WESEE', 'Development of VC Solution (WECOLLAB)', 'OTA', 'Development of Systems', '₹ 32,88,000.00', 'IT&IW', 'NA', 'NA', 'Completed', 'NA', 'YES', '', 'YES'),
(106, '106', 2022, '2022', 'WESEE/DEE/2022/17', '14th DITCC Meeting Directive', 'SAG evaluation of M/s Gajshield Firewall and M/s Nivetti Router (NRP6)', 'OTA', 'Analysis of Equipment', '₹ 0.00', 'TaNCS', 'NA', 'NA', '01/12/22', 'NA', 'NO', '', 'YES'),
(107, '107', 2022, '2022', 'WESEE/DEE/2022/18', 'WESEE', 'Development of Cross Domain Guard (Link 16 - Link II/ Internet - NUD)', 'OTA', 'Development of Systems', '₹ 12,50,000.00', 'IT&IW', 'NA', 'NA', 'Completed', 'NA', 'NA', '', 'YES'),
(108, '108', 2022, '2022', 'WESEE/DEE/2022/19', 'WESEE', 'Development and Integration of Truncated CMS for INS Shivalik ', 'Normal', 'Integration of Systems', '₹ 0.00', 'CMS', '25-05-2022*', '4', 'NA', 'NA', 'YES', '', 'YES'),
(109, '109', 2022, '2022', 'WESEE/DEE/2022/21', 'NHO Dehradun', 'Development of AI based Hydrographic Data analytics tool', 'Normal', 'Development of Systems', '₹ 24,00,000.00', 'CSC', '19/09/22', '9', '19/06/23', '01/04/24', 'NO', '', 'YES'),
(110, '110', 2022, '2022', 'WESEE/DEE/2022/22', 'DSR', 'Fitment of CMS 15B Reference system at INTEG', 'Normal', 'Induction of Technology', '₹ 20,00,000.00', 'CMS', '22/11/22', '1', '22/12/22', '22/12/23', 'YES', '', 'YES'),
(111, '111', 2022, '2022', 'WESEE/DEE/2022/23', 'DSR', 'Incorporation of copy protect and password protect feature on CD/DVD for distribution of classified LOFAR data to units.', 'Normal', 'Integration of Systems', '₹ 6,60,000.00', 'CSC', '12/12/22', '3', '12/03/23', '01/01/23', 'YES', '', 'YES'),
(112, '112', 2023, '2023', 'WESEE/DEE/2023/01', 'DSR', 'WESEE tasking order for integration of IAC MOD C with CMS 24-29', 'Normal', 'Integration of Systems', '₹ 1,10,00,000.00', 'CMS', '03/03/23', '2', '03/09/23', 'NA', 'YES', '', 'YES'),
(113, '113', 2023, '2023', 'WESEE/DEE/2023/02', 'DSR', 'Plan for Integration of BrahMos with CMS 24-29', 'Normal', 'Integration of Systems', '₹ 2,25,00,000.00', 'CMS', '03/03/23', '56', '03/09/23', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(114, '114', 2023, '2023', 'WESEE/DEE/2023/03', 'DSR', 'Development of application for conversion of caf  files of ATAS (Adv) to .rec and .wav files for LDBMS.', 'Normal', 'Development of Systems', '₹ 68,500.00', 'CSC', '03/03/23', '1', '03/04/23', '01/04/23', 'YES', '', 'YES'),
(115, '115', 2023, '2023', 'WESEE/DEE/2023/04', 'DM', 'Migration of Automated Test System (ATS) Software of Club missile on a Contemporary Hardware', 'Normal', 'Analysis of Equipment', '₹ 11,00,000.00', 'ETG', '24/03/23', '1', '24/04/23', 'NA', 'NO', '', 'IN PROGRESS'),
(116, '116', 2023, '2023', 'WESEE/DEE/2023/05', 'DAWFS', 'Tasking development of solution for mission planning and analytics cell', 'Normal', 'Development of Systems', '₹ 25,00,000.00', 'TaNCS', 'NA', '3', '24/07/23', 'NA', 'NO', '', 'IN PROGRESS'),
(117, '117', 2023, '2023', 'WESEE/DEE/2023/06', 'DNS', 'WESEE tasking: Development of high level network management.', 'Normal', 'Development of Systems', '₹ 2,42,00,000.00', 'TaNCS', '03/04/23', '3', '03/07/23', 'NA', 'NO', '', 'IN PROGRESS'),
(118, '118', 2023, '2023', 'WESEE/DEE/2023/07', 'DIT', 'Design & development Senic guard for NAV IOS/BOSS', 'Normal', 'Development of Systems', '₹ 14,07,080.00', 'CSC', '01/05/23', '9', '01/02/24', '16/01/24', 'YES', '', 'YE'),
(119, '119', 2023, '2023', 'WESEE/DEE/2023/08', 'DNAS', 'Design & development of WESEE engineered Transfer Alignment system', 'Normal', 'Development of Systems', '₹ 95,00,000.00', 'CSI', '20/02/23', '10', '20/12/23', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(120, '120', 2023, '2023', 'WESEE/DEE/2023/09', 'DEE', 'Tasking development of orthogonal time frequency space (OFTS) based waveform.', 'Normal', 'Development of Systems', '₹ 40,00,000.00', 'TaNCS', '09/05/23', '36', '09/05/26', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(121, '121', 2023, '2023', 'WESEE/DEE/2023/10', 'NHO Dehradun', 'Development of solution of encryption of additional military layers (AML)', 'Normal', 'Development of Systems', '₹ 6,80,000.00', 'CSC', '25/05/23', '4', '25/09/23', '14/08/23', 'YES', '', 'YES'),
(122, '122', 2023, '2023', 'WESEE/DEE/2023/11', 'DEE', 'Development of V/UHF waveform in SDR-NC for Buran Data link', 'Normal', 'Development of Systems', '₹ 5,00,000.00', 'TaNCS', '10/05/23', '6', '10/11/23', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(123, '123', 2023, '2023', 'WESEE/DEE/2023/12', 'DEE (SM)', 'Integration of INS-SM with NAV complex onboard INS Sindhuvijay', 'Normal', 'Integration of Systems', '₹ 4,00,00,000.00', 'SCS', '03/05/23', '5', '03/10/23', 'NA', 'NO', '', 'IN PROGRESS'),
(124, '124', 2023, '2023', 'WESEE/DEE/2023/13', 'DSR', 'Integration of IMSAS with CMS 15B', 'Normal', 'Integration of Systems', '₹ 0.00', 'CMS', '22/05/23', '1', '22/07/23', '23/07/23', 'YES', '', 'YES'),
(125, '125', 2023, '2023', 'WESEE/DEE/2023/14', 'DSR', 'Integration of spotter with CMS 15B', 'Normal', 'Integration of Systems', '₹ 0.00', 'CMS', '22/05/23', '1', '03/09/23', '03/09/23', 'YES', '', 'YES'),
(126, '126', 2023, '2023', 'WESEE/DEE/2023/15', 'DSR', 'Development of additional function for CMS 15B in centralized mode with Brahmos upgrade for dual polar range extension', 'Normal', 'Development of Systems', '₹ 0.00', 'CMS', '22/05/23', '1', '03/06/23', '03/06/23', 'YES', '', 'YES'),
(127, '127', 2023, '2023', 'WESEE/DEE/2023/16', 'DSR', 'Development of data management and analytics system', 'Normal', 'Development of Systems', '₹ 0.00', 'CMS', '31/05/23', '7', '31/05/25', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(128, '128', 2023, '2023', 'WESEE/DEE/2023/17', 'WESEE', 'Development if indigenous data distribution service (IND-DDS) ', 'Normal', 'Development of Systems', '₹ 6,25,00,000.00', 'CMS', '26/06/23', '24', 'NA', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(129, '129', 2023, '2023', 'WESEE/DEE/2023/18', 'DEE', 'Development of AI based satellite image analytics tool', 'Normal', 'Development of Systems', '₹ 69,55,500.00', 'CSC', 'NA', '7', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(130, '130', 2023, '2023', 'WESEE/DEE/2023/19', 'Self-Tasking', 'Technology demonstration of free space laser communication in 03 phases.', 'Normal', 'Induction of Technology', '₹ 55,00,000.00', 'TaNCS', 'NA', 'NA', '01/06/23', 'NA', 'NO', '', 'IN PROGRESS'),
(131, '131', 2023, '2023', 'WESEE/DEE/2023/20', 'Self-Tasking', 'Development of indigenous torpedo simulator for SUT-266', 'Normal', 'Development of Systems', '₹ 50,00,000.00', 'SCS', '15/06/23', '1', '01/07/23', 'NA', 'NO', '', 'IN PROGRESS'),
(132, '132', 2023, '2023', 'WESEE/DEE/2023/21', 'ATVP', 'Design and development of CICS for S3/S4', 'Normal', 'Development of Systems', '₹ 52,35,00,000.00', 'SCS', '15/06/23', '30', '01/12/25', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(133, '133', 2023, '2023', 'WESEE/DEE/2023/22', 'ATVP', 'Design and development of CICS for S4', 'Normal', 'Development of Systems', '₹ 16,05,00,000.00', 'SCS', '15/06/23', '24', '15/06/25', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(134, '134', 2023, '2023', 'WESEE/DEE/2023/23', 'ATVP', 'Design of ICS for S5', 'Normal', 'Development of Systems', '₹ 21,00,00,000.00', 'SCS', '15/06/23', '18', '15/12/24', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(135, '135', 2023, '2023', 'WESEE/DEE/2023/24', 'DEE', 'Design, development and trials of CMS for P-28 ships', 'Normal', 'Development of Systems', '₹ 0.00', 'CMS', '31-05-23*', '6', 'NA', 'NA', 'YES', '', 'YES'),
(136, '136', 2023, '2023', 'WESEE/DEE/2023/25', 'DEE', 'Blanking interface of FURVNO NAV RADAR with SANKET ‘S’ onboard INS TIHAYU', 'Normal', 'Integration of Systems', '₹ 50,000.00', 'CSI', '15/06/23', '1', '15/07/23', '15/07/23', 'YES', '', 'YES'),
(137, '137', 2023, '2023', 'WESEE/DEE/2023/26', 'DNSO', 'Upgradation of SETROD WESEE tasking', 'Normal', 'Development of Systems', '₹ 20,00,000.00', 'CSC', '26/06/23', '3', '26/09/23', '08/03/24', 'NO', '', 'YES'),
(138, '138', 2023, '2023', 'WESEE/DEE/2023/27', 'DEE', 'Tasking for RETRO fitment of NAYAN on 23 IN platforms', 'Normal', 'Induction of Technology', '₹ 49,40,000.00', 'CSI', '13/06/23', '71', '13/05/29', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(139, '139', 2023, '2023', 'WESEE/DEE/2023/28', 'DEE', 'Development of configuration Radio functionality in I band of SDR-TAC', 'Normal', 'Development of Systems', '₹ 3,00,00,000.00', 'TaNCS', '15/07/23', '18', '15/01/25', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(140, '140', 2023, '2023', 'WESEE/DEE/2023/29', 'DEE', 'Procurement of COTs hardware for CMS Fleet Training Centre at ENC & WNC', 'Normal', 'Induction of Technology', '₹ 22,00,000.00', 'CMS', '17/07/23', '1', '17/08/23', 'ENC-Feb 24', 'IN PROGRESS', '', 'YES-ENC, WNC-IN PROGRESS'),
(141, '141', 2023, '2023', 'WESEE/DEE/2023/30', 'DNCO', 'Development of IFCI-10R Software', 'Normal', 'Development of Systems', '₹ 0.00', 'TaNCS', '29/08/23', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(142, '142', 2023, '2023', 'WESEE/DEE/2023/31', 'DEE', 'Development of three universal Nav console (two for onboard installation and one for lab development for interfacing Koden nav Radar, Bearing Repeater and Satcom, Rukmani onboard INS Arihant.', 'Normal', 'Integration of Systems', '₹ 15,00,000.00', 'CSI', '17/08/23', '4', '17/12/23', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(143, '143', 2023, '2023', 'WESEE/DEE/2023/32', 'DNS', 'Porting of INDE-SDR Waveform on SDR(Fighter Aircraft Hardware)', 'Normal', 'Analysis of Equipment', '₹ 1,29,00,000.00', 'TaNCS', '29/09/23', '12', '29/09/24', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(144, '144', 2023, '2023', 'WESEE/DEE/2023/33', 'DEE', 'Development and trials of CMS software for Rana', 'Normal', 'Development of Systems', '₹ 30,00,000.00', 'CMS', '09-10-', '4', 'NA', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(145, '145', 2023, '2023', 'WESEE/DEE/2023/34', 'DIT', 'Development of Autonomous Navigation and control software (ANCS) suite for A-FIB', 'Normal', 'Development of Systems', '₹ 8,62,00,000.00', 'ETG', '29/09/23', '6', '29/03/24', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(146, '146', 2023, '2023', 'WESEE/DEE/2023/35', 'DNS', 'Development of Airborne Communication relay radio act for UAVS', 'Normal', 'Development of Systems', '₹ 3,00,00,000.00', 'TaNCS', 'NA', '29', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(147, '147', 2023, '2023', 'WESEE/DEE/2023/36', 'DNSO', 'Gaganyaan requirements', 'Normal', 'Development of Systems', '₹ 50,00,000.00', 'TaNCS', '27/09/23', '1', '27/10/23', 'NA', 'NO', '', 'IN PROGRESS'),
(148, '148', 2023, '2023', 'WESEE/DEE/2023/37', 'DEE', 'Design and development of CMS for Rana', 'Normal', 'Development of Systems', '₹ 60,00,000.00', 'CMS', '10-10-2023*', '6', 'NA', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(149, '149', 2023, '2023', 'WESEE/DEE/2023/38', 'DEE', 'Design and development of CMS for Jalashwa', 'Normal', 'Development of Systems', '₹ 12,00,000.00', 'CMS', '29/09/23', '3', '29/12/23', '29/12/23', 'YES', '', 'YES'),
(150, '150', 2023, '2023', 'WESEE/DEE/2023/39', 'DNS', 'Integration of Link II with ATRX 1000', 'Normal', 'Integration of Systems', '₹ 0.00', 'TaNCS', '09/10/23', '3', '09/12/23', 'NA', 'IN PROGRESS', '', 'IN PROGRESS'),
(151, '151', 2023, '2023', 'WESEE/DEE/2023/40', 'DEE', 'Development of Tactical software modules towards interfacing of BrahMos with CMS onboard P-17 Ships', 'Normal', 'Integration of Systems', '₹ 15,00,000.00', 'CMS', '09/10/23', '3', '09/10/24', '09/01/24', 'YES', '', 'YES'),
(152, '152', 2023, '2023', 'WESEE/DEE/2023/41', 'DEE', 'Development of HF waveform of SDR-NC for Buran Data Link', 'Normal', 'Development of Systems', '₹ 0.00', 'TaNCS', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(153, '153', 2023, '2023', 'WESEE/DEE/2023/42', 'DNA', 'Design and development of active thermography based non destructive testing for hulls of IN ships', 'Normal', 'Development of Systems', '₹ 1,31,20,128.00', 'ETG', '-', '12', 'NA', 'NA', 'NA', '', 'IN PROGRESS'),
(154, '154', 2023, '2023', 'WESEE/DEE/2023/43', 'PMG CMS ', 'Design and development of prototype switching cum interface unit (digital to resolver converter on channels) for IN ships Nashak, Vipul, Vidyut to facilitate track transfer from SSR & Mod CMS to Korall \"E\"', 'Normal', 'Integration of Systems', '₹ 20,00,000.00', 'CSI', '24/11/2023', '6', '24/05/24', '24/05/24', 'IN PROGRESS', '', 'IN PROGRESS'),
(155, '155', 2023, '2023', 'WESEE/DEE/2023/44', 'DNAS', '1) Feasibility study of allignment of KM 31 without GUVK & portable Gyro onboard Talwar / Teg class IN ships & INS Vikrant & INS VKD.                                           2) Design and development of prototype system for sea trials. ', 'Normal', 'Development of Systems', '', '', '', '03                                        (EDC end Feb 24)', '', '', '', '', 'IN PROGRESS'),
(156, '156', 2024, '2024', 'WESEE/DEE/2024/01', 'DEE', 'Design, Development and Trials of DDS middleware based CMS for P-15 class of ships', 'Normal', 'Development of Systems', '₹ 10,25,00,000.00', 'CMS', '01/02/24', '8*', '18/10/24', '', 'IN PROGRESS', '', 'IN PROGRESS'),
(157, '157', 2024, '2024', 'WESEE/DEE/2024/02', 'DEE', 'development of tactical software module towards interfacing of CMS with BrahMos in dual role and extended range onboard P-15 class of ships', 'Normal', 'Integration of Systems', '₹ 23,00,000.00', 'CMS', '01/02/24', '2*', '30/12/24', '', 'IN PROGRESS', '', 'IN PROGRESS'),
(158, '158', 2024, '2024', 'WESEE/DEE/2024/03', 'DNS', 'Design and development of IN-ICG Encrypted (ICE) link application ', 'Normal', 'Development of Systems', '₹ 40,00,000.00', 'TaNCS', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(30) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `email_verified_at` varchar(10) DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `forget_pass_otp` int(11) DEFAULT NULL,
  `otp_status` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `phone`, `address`, `gender`, `dob`, `city`, `state`, `email_verified_at`, `password`, `remember_token`, `forget_pass_otp`, `otp_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'SPONSOR', 'sponsor@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(2, '2', 'APSO', 'apso@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(3, '2', 'WESEE', 'wesee@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(4, '2', 'DEE', 'dee@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(5, '2', 'ACOM', 'acom@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(6, '3', 'COM', 'com@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(7, '2', 'DSMAQ', 'dsmaq@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(8, '2', 'DACP', 'dacp@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(9, '2', 'DSP', 'dsp@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(10, '2', 'WDB', 'wdb@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(11, '2', 'DND', 'dnd@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(12, '2', 'DNuSNAQ', 'dnusnaq@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(13, '2', 'NHO', 'nho@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL),
(14, '2', 'DGONA', 'dgona@gmail.com', '9717586279', 'Delhi', 'Male', '03/04/1998', 'Delhi', 'Delhi', '0', '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_details`
--
ALTER TABLE `task_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_details_task_fk_id_foreign` (`task_fk_id`);

--
-- Indexes for table `task_old_data`
--
ALTER TABLE `task_old_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task_details`
--
ALTER TABLE `task_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `task_old_data`
--
ALTER TABLE `task_old_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task_details`
--
ALTER TABLE `task_details`
  ADD CONSTRAINT `task_details_task_fk_id_foreign` FOREIGN KEY (`task_fk_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
