-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 06 2023 г., 20:06
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `techno_test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `event_name` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `user_status` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `user_ip` varchar(256) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `event_name`, `user_status`, `timestamp`, `user_ip`) VALUES
(1, 'login', 'authorized', '2023-05-06 09:44:40', '127.0.0.1'),
(2, 'login', 'authorized', '2023-05-06 09:45:11', '127.0.0.1'),
(3, 'login', 'authorized', '2023-05-06 09:45:14', '127.0.0.1'),
(4, 'login', 'authorized', '2023-05-06 09:45:59', '127.0.0.1'),
(5, 'login', 'authorized', '2023-05-06 09:46:07', '127.0.0.1'),
(6, 'login', 'authorized', '2023-05-06 09:58:47', '127.0.0.1'),
(7, 'login', 'authorized', '2023-05-06 09:58:49', '127.0.0.1'),
(8, 'login', 'authorized', '2023-05-06 20:05:06', '127.0.0.1'),
(9, 'login', 'authorized', '2023-05-06 20:05:08', '127.0.0.1'),
(10, 'login', 'authorized', '2023-05-06 20:05:09', '127.0.0.1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
