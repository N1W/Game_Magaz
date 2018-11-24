-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 25 2018 г., 10:49
-- Версия сервера: 10.2.7-MariaDB
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ecommerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'World of Tanks'),
(2, 'League of Legends'),
(3, 'Dota 2'),
(4, 'World of Warcraft'),
(5, 'CS GO'),
(6, 'CoD Black Ops 4'),
(7, 'Battlefield 5');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `created_at`, `message`, `ip_address`) VALUES
(1, 'test@test.com', '2018-09-22 14:29:03', 'Hello 249', '192.168.000.149'),
(2, 'test@gmail.com', '2018-09-22 19:45:02', 'Test', '127.0.0.1'),
(3, 'test@gmail.com', '2018-09-22 19:49:20', 'Hello', '127.0.0.1'),
(4, 'test@gmail.com', '2018-09-22 19:50:12', 'redirect', '127.0.0.1'),
(5, 'test@gmail.com', '2018-09-22 20:01:28', 'test flash', '127.0.0.1'),
(6, 'test@gmail.com', '2018-09-22 20:02:18', 'test flash', '127.0.0.1'),
(7, 'test@test.com', '2018-09-22 20:10:37', 'Test', '127.0.0.1'),
(8, 'test@test.com', '2018-10-01 12:14:32', 'Test emailing', '127.0.0.1'),
(9, 'test@test.com', '2018-10-01 12:18:21', 'Test emailing', '127.0.0.1'),
(10, 'test@test.com', '2018-10-01 12:20:00', 'Test emailing', '127.0.0.1'),
(11, 'test@test.com', '2018-10-01 12:24:19', 'Test emailing', '127.0.0.1'),
(12, 'test@test.com', '2018-10-01 12:25:37', 'Test emailing', '127.0.0.1'),
(13, 'test@test.com', '2018-10-01 12:30:04', 'Test emailing', '127.0.0.1'),
(14, 'test@gmail.com', '2018-10-01 12:31:39', 'Test mailing', '127.0.0.1'),
(15, 'test@gmail.com', '2018-10-01 12:34:29', 'test emailing 1', '127.0.0.1'),
(16, 'test@gmail.com', '2018-10-01 12:35:58', 'test emailing 2', '127.0.0.1'),
(17, 'test@gmail.com', '2018-10-01 12:43:04', 'test emailing 3', '127.0.0.1'),
(18, 'test@test.com', '2018-10-01 12:44:23', 'test emailing 4', '127.0.0.1'),
(19, 'test@gmail.com', '2018-10-01 12:47:41', 'test mailing 5', '127.0.0.1'),
(20, 'test@gmail.com', '2018-10-01 12:49:10', 'abc last test 6', '127.0.0.1'),
(21, 'test@gmail.com', '2018-10-01 12:54:26', 'test dev', '127.0.0.1'),
(22, 'test@test.com', '2018-10-01 13:20:04', 'test prod 1', '127.0.0.1'),
(23, 'admin@bytevial.com', '2018-10-01 17:28:14', 'Test message from ecommerce.', '127.0.0.1'),
(24, 'admin@bytevial.com', '2018-10-02 15:06:51', 'test mailer service', '127.0.0.1'),
(25, 'admin@bytevial.com', '2018-10-02 15:10:45', 'test mailer setFrom', '127.0.0.1'),
(26, 'test@test.com', '2018-10-02 15:11:56', 'test mailer again', '127.0.0.1'),
(27, 'test@gmail.com', '2018-10-02 15:13:31', 'test result', '127.0.0.1'),
(28, 'test@test.com', '2018-10-02 15:14:12', 'asdasd', '127.0.0.1'),
(29, 'admin@bytevial.com', '2018-10-02 15:14:39', 'test from prod', '127.0.0.1'),
(30, 'admin@bytevial.com', '2018-10-23 17:28:24', 'test', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specifications` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `category_id`, `name`, `specifications`, `price`) VALUES
(129845, 1, 'Продаю личный аккаунт ВоТ, в ангаре 25 танков: 13 топов 9 премов', 'Продаю аккаунт World of Tanks за 100 $ в ангаре 13 топов 9 премов', '2800.00');

-- --------------------------------------------------------

--
-- Структура таблицы `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bulk` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reserve`
--

INSERT INTO `reserve` (`id`, `user_id`, `bulk`) VALUES
(4, 1, '[{\"id\":\"120394\",\"count\":1}]');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `roles` varchar(254) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `is_active`, `roles`) VALUES
(1, 'user', '$2y$12$82HLCcR/xSz7j9XYTsN8qusETLdCV7.tqXzZC7UiyvhdMxAX2upvi', 'user@ecommerce.com', 1, 'ROLE_USER'),
(2, 'admin', '$2y$12$lLNDcdckGg4ylb8bDKe.sO1vcn1pMvA3KSNdvWLAmsIGbwSEeiUTy', 'admin@ecommerce.com', 1, 'ROLE_ADMIN');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_563B92D12469DE2` (`category_id`);

--
-- Индексы таблицы `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1FE0EA22A76ED395` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129847;

--
-- AUTO_INCREMENT для таблицы `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `FK_563B92D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Ограничения внешнего ключа таблицы `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `FK_1FE0EA22A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
