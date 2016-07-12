-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Лип 10 2016 р., 17:11
-- Версія сервера: 10.1.8-MariaDB
-- Версія PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `upsaleso_bus`
--

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_03_175308_manager', 1),
('2016_07_05_130312_create_scripts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `scripts`
--

CREATE TABLE `scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `scripts`
--

INSERT INTO `scripts` (`id`, `parent_id`, `users_id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(14, 0, 4, 'Блок1', 'Описание 1', '2016-07-06 12:57:57', '2016-07-06 12:57:57'),
(15, 14, 4, 'Блок2', 'Описание2', '2016-07-06 12:58:13', '2016-07-06 12:58:13'),
(18, 15, 4, 'Блок4', 'Блок4', '2016-07-06 12:59:42', '2016-07-06 12:59:42'),
(19, 0, 4, 'аааа', 'ааааааа', '2016-07-06 13:01:33', '2016-07-06 13:01:33'),
(20, 14, 4, 'sdsdfsdf', 'sdfsdfsdfdsf', '2016-07-06 13:45:56', '2016-07-06 13:45:56'),
(21, 15, 4, 'fsfdsf', 'sdfsdfsdf', '2016-07-06 13:53:14', '2016-07-06 13:53:14'),
(22, 0, 8, 'Блок 1', 'ывыа ывываыв ываываыва ывыв ывываыв ыва!', '2016-07-10 11:19:46', '2016-07-10 11:19:46'),
(23, 22, 8, 'Блок 2', 'ОПИСАНИЕ 2', '2016-07-10 11:20:00', '2016-07-10 11:20:00'),
(24, 23, 8, 'Блок 3', 'описание 3!', '2016-07-10 11:20:13', '2016-07-10 11:20:13'),
(25, 23, 8, 'Блок 2.1', 'ОПИСАНИЕ 2.1', '2016-07-10 12:04:06', '2016-07-10 12:04:06'),
(26, 22, 8, 'Блок еще', 'Описание еще!', '2016-07-10 12:04:29', '2016-07-10 12:04:29'),
(27, 0, 1, 'ваіваів', 'іваівавіа івіва іваів іва ів іаів і віаіва іва віаіва', '2016-07-10 12:16:36', '2016-07-10 12:16:36'),
(28, 0, 1, 'апвапвап', 'вапапвап ап вп вап вап вапвапавп', '2016-07-10 12:16:43', '2016-07-10 12:16:43'),
(29, 27, 1, 'авпавпвп', 'вапвапвапвап', '2016-07-10 12:16:53', '2016-07-10 12:16:53'),
(30, 28, 1, 'ывывфыв', 'фывфывыфв', '2016-07-10 13:49:04', '2016-07-10 13:49:04');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `login` varchar(128) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(4) DEFAULT NULL,
  `access` tinyint(4) DEFAULT NULL,
  `hash` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`, `remember_token`, `created_at`, `updated_at`, `active`, `access`, `hash`, `parent_id`) VALUES
(1, 'название', 'bog@ram.ru', NULL, '$2y$10$6OnDYg72WZSqi7eFJgkdre9PcCXvovKLuQeYLOFgxIj5IqjHWTyle', 'jh6WNagcT2sAUyzOAMmi5IxHxKTcUCaRoMmt0dPm0VnymhJIFEPfAV68ccld', '2016-07-05 19:10:17', '2016-07-10 13:49:11', 1, 2, '$2y$10$JXFMVUctFm4GefmM3j79P.wZu4Yz/P2CbsDqK42JDbYec5Yq89sIq', NULL),
(3, 'НОВОЕ НАЗВАНИЕ', 'bogbog@ram.ru', NULL, '$2y$10$2fv5GkO45CWjIM8ybQGUnOx/dlzfmJn6276YSffJoLgId0hH/zwYC', 'iTi5UrixI9I3lczBEdM5lIGoAzW4Tqs91vvnB74VqFt09JK0ZA3VDmisPorw', '2016-07-05 19:13:25', '2016-07-05 19:18:01', 1, 2, '$2y$10$SvnQgjK56ZRrx7ZCwFv8jOIu/kqbVo0Y1IghKxBMAE5WD8/braATC', NULL),
(4, 'название', 'bog@111ram.ru', NULL, '$2y$10$CjM6YyfVtJQjjnjn7isB..vs7QNLnasmY1Us2rVCbB7njDVWiNZYK', 'm8Vjod4MMiQhbih32vlQuQbbOhO3bgOjFfgzgUI6LB0rnJkDDmnhJ251AGvo', '2016-07-06 09:53:51', '2016-07-06 10:09:01', 1, 2, '$2y$10$bI6O3glKdF7Nnjp8C5C9reBiSWpS7UVNpyFRi0fH1owqvc6/YFuRu', NULL),
(7, 'Богдан', NULL, '73748225', '$2y$10$.IjSruaXYYb1N2Ax3YbtT.6yLaCDE7vmafa9LgW4cHfKwL.kK8Aa.', 'UhqcmhVD5LgSKqKwWNJzRohcYgDcbexo8Y1XvKd8gap9nONx68ZaM5knLx07', '2016-07-06 10:02:53', '2016-07-06 10:04:42', 1, 1, '$2y$10$.a2hsa9A2iDb0IeZQUBRDOU2EGMPw58RHyZhaMEnq3tXo3USAgrFq', 4),
(8, 'название', 'bogdan.dvinin@rambler.ru', NULL, '$2y$10$KfDjHFTXXMl5fbBMEKw/J.DwqmvAC5eGhUAOcYnftg2rMaXkoTK3.', 's39L70hQ2JoINAOWSeWHheHUvbbhWKlSJ3k4AWaJb5XxGY11PICFmKjc9VSb', '2016-07-10 11:18:13', '2016-07-10 12:04:36', 1, 2, '$2y$10$xdNRN0s8SlMZbBwnQ1xjD.ZH.2OecTPOlkJHeP0LUbKeUpzgtGqwS', NULL),
(9, 'sdfdsfdsf', NULL, '93787124', '$2y$10$y/sJyDkr3JiUr7whJSs9eux3vXy6zovASU7oZLYJqXikVsOx94c6e', 'qNEOeyiWtqlGCBnZTWJbqNytvZYH8Az4MgcrKkIyv1BALzG7oEESrKSfJNmP', '2016-07-10 11:19:26', '2016-07-10 12:11:34', 1, 1, '$2y$10$Ek4C3PAhrptBqW7XENnAfepzKxRK/hFLso3VOb.8pobeE/hF1m/Nq', 8),
(12, 'Иван Яков', NULL, '24724214', '$2y$10$nUd6EqNrmGQsl4YQSgeoiOtDvcVYKlWDRvVWRLA9buwunk/00PUR.', NULL, '2016-07-10 13:48:48', '2016-07-10 13:48:48', 1, 1, '$2y$10$x1s284LFej033HYaakXDAOmIlmnzk6xIS7mX/Co/JMHo40dvkHGAC', 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Індекси таблиці `scripts`
--
ALTER TABLE `scripts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scripts_users_id_foreign` (`users_id`),
  ADD KEY `scripts_parent_id_index` (`parent_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_parent_id_index` (`parent_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `scripts`
--
ALTER TABLE `scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `scripts`
--
ALTER TABLE `scripts`
  ADD CONSTRAINT `scripts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
