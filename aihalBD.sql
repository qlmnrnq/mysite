-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2019 г., 03:16
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aihal_pn_9`
--
CREATE DATABASE IF NOT EXISTS `aihal_pn_9` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `aihal_pn_9`;

-- --------------------------------------------------------

--
-- Структура таблицы `actual`
--

CREATE TABLE `actual` (
  `title` varchar(355) NOT NULL,
  `teg` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actual`
--

INSERT INTO `actual` (`title`, `teg`) VALUES
('Актуальные темы', '#tag #-hash + tag');

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `author_name` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`author_name`, `name`) VALUES
('имя автора', 'имя');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `text` varchar(355) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pin_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `pin_id`) VALUES
(10, 'jjjjjj', 8, 11),
(13, 'ggtgtgtgtg', 8, 11),
(14, 'comment', 8, 14),
(16, 'comm', 9, 11),
(27, 'dffffffdfdf', 0, 15),
(28, 'ssfsfsfs', 8, 15),
(29, 'privet', 8, 15),
(30, 'poka', 9, 15),
(31, 'привет какашка', 8, 14),
(32, 'bye', 17, 22),
(33, 'privet', 11, 22),
(34, 'naa', 11, 17),
(35, 'idi v zhopu', 17, 17),
(36, 'nickelodeon', 17, 18),
(37, 'Kruto', 18, 23),
(38, 'круто', 19, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `instagram`
--

CREATE TABLE `instagram` (
  `email` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `nickname` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `avatar` varchar(355) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instagram`
--

INSERT INTO `instagram` (`email`, `name`, `nickname`, `password`, `avatar`, `user_id`) VALUES
('aihal1337@gmail.com', 'айхал', 'test', '111', 'images.jpg', 1),
('mail@mail.ru', 'rtrtrt', 'gavno', '666', '', 2),
('aihal1337@gmail.com', 'rtrtrt', 'test', '222', '', 3),
('fsfsf', 'sfsfsf', 'sfsfsf', '2222', '', 4),
('aihal1337@gmail.com', 'rtrtrt', 'test', '777', '', 5),
('aihal1337@gmail.com', 'uuuuuuu', 'ggggg', '666', 'images.jpg', 6),
('SSSS@MAIL.RU', 'wssfsfs', 'dddd', '444', 'images.jpg', 9),
('2', '2', '2', '2', '', 10),
('aihal1337@gmail.com', '1', '1', '1', '', 11),
('2', '2', '2', '2', '', 12),
('3', '3', '3', '3', '', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `journal`
--

CREATE TABLE `journal` (
  `surname` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `19_november` varchar(355) NOT NULL,
  `20_november` varchar(355) NOT NULL,
  `21_november` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `journal`
--

INSERT INTO `journal` (`surname`, `name`, `19_november`, `20_november`, `21_november`, `id`) VALUES
('Фамилия', 'Имя', '19 ноября', '20 ноября', '21 ноября', 1),
('Фомин', 'Артем', '5', 'н', '4', 2),
('Кычкин', 'Андрей', '4', '5', 'н', 3),
('Семенов', 'Айхал', '4', '4', 'н', 4),
('Скрябин', 'Владислав', '5', '5', '5', 5),
('Яковлев', 'Иван', '4', 'н', 'н', 6),
('Румянцева', 'Дайаана', '5', '5', '4', 7),
('Тихомиров', 'Данил', '4', '4', '4', 8),
('Неустроев', 'Андрей', '5', '4', '5', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `name` varchar(355) NOT NULL,
  `subjects` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`name`, `subjects`, `id`) VALUES
('lena', 'biology', 2),
('sveta', 'biology', 3),
('nastya', 'physics', 4),
('olya', 'geography', 5),
('lucya', 'geography', 6),
('olga', 'geography', 7),
('olga', 'geography', 8),
('Nastya', '23456', 9),
('olga', 'geography', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `pin`
--

CREATE TABLE `pin` (
  `pin_id` int(255) NOT NULL,
  `img` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pin`
--

INSERT INTO `pin` (`pin_id`, `img`, `text`, `user_id`) VALUES
(16, 'IMAGES/guccipost.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 11),
(17, 'IMAGES/hz.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 12),
(18, 'IMAGES/gumball.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 13),
(19, 'IMAGES/postphoto.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 14),
(20, 'IMAGES/wallp.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 15),
(21, 'IMAGES/postttt.jpg', 'Lorem ipsum privet ti cho afigell dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 16),
(22, 'IMAGES/dmc.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 17),
(23, 'IMAGES/3.jpg', '', 18),
(24, 'IMAGES/1.jpg', 'гггг', 19),
(25, 'IMAGES/1.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate tempora, cum sed saepe sint labore assumenda dignissimos obcaecati quidem, quaerat cumque dolor ad molestias eveniet repellendus perspiciatis nihil! Dolorum, odio.', 20),
(26, 'IMAGES/', '', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `img` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `post_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`img`, `text`, `post_id`) VALUES
('6.png', 'ffff', 1),
('3.png', '4444', 2),
('google.png', '9999', 3),
('5.jpg', '666666666', 4),
('instagram.jpg', 'tttttttttttttttttttttt', 5),
('instagram.jpg', 'gavnj', 6),
('7.jpg', 'gedqb', 7),
('5.jpg', 'bye', 8),
('1.jpg', 'ffff', 9),
('4.jpg', 'gg', 10),
('4.jpg', 'gg', 11),
('4.jpg', 'gg', 12),
('4.jpg', 'bye', 13),
('4.jpg', 'naa', 14),
('4.jpg', 'naa', 15),
('4.jpg', 'lll', 16),
('1.png', 'ffffefefefef', 17);

-- --------------------------------------------------------

--
-- Структура таблицы `store`
--

CREATE TABLE `store` (
  `img` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `price` varchar(355) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `store`
--

INSERT INTO `store` (`img`, `text`, `price`, `id`) VALUES
('1.jpg', 'Just Cause', '1999', 1),
('2.jpg', 'Far Cry: New Dawn', '1999', 11),
('14.jpg', 'minecraft', '999', 21),
('4.jpg', 'game', '100', 23);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(355) NOT NULL,
  `surname` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `surname`) VALUES
('Нил', 'Армстронг'),
('Майкл', 'Джексон'),
('Селена', 'Гомез');

-- --------------------------------------------------------

--
-- Структура таблицы `students2`
--

CREATE TABLE `students2` (
  `name` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `lesson_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students2`
--

INSERT INTO `students2` (`name`, `id`, `lesson_id`) VALUES
('egor', 1, 7),
('georgy', 2, 3),
('vanya', 3, 2),
('liuba', 4, 5),
('beka', 5, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `tweet`
--

CREATE TABLE `tweet` (
  `logo` varchar(355) NOT NULL,
  `title` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tweet`
--

INSERT INTO `tweet` (`logo`, `title`, `text`, `img`, `id`) VALUES
('post1.jpg', 'Habr@habr_com', 'ufgfhjfjh', 'habr.jpg', 1),
('post2.png', 'Вести.Hi-tech@vestihitech', 'Lorem ipsum — классическая панграмма, условный, зачастую бессмысленный текст-заполнитель, вставляемый в макет страницы.', 'vesti_hi_tech.jpg', 2),
('avatar.jpg', 'привет', 'hello world', 'background.jpg', 19);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `avatar` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `avatar`) VALUES
(8, 'username', 'name', 'password', 'IMAGES/titanfall2.jpeg'),
(9, 'asdasd', 'ssss', '111', 'IMAGES/3.jpg'),
(10, 'user', 'nameee', '222', 'IMAGES/6831.jpg'),
(11, 'GUCCI', 'Gucci Gucciano', '111', 'IMAGES/gucci.jpg'),
(12, 'somebody', 'once told me', '111', 'IMAGES/shrek.jpg'),
(13, 'cartoonnetwork', 'cartoon network', '111', 'IMAGES/cartoonnet.png'),
(14, 'photomaker', 'photo', '111', 'IMAGES/photomaker.jpg'),
(15, 'killmepls', '111', '111', 'IMAGES/gavno.jpeg'),
(16, 'shingis', '111', '111', 'IMAGES/shingis.jpg'),
(17, 'asd', 'asd', '111', 'IMAGES/dmc.jpg'),
(18, '1', '1', '1', 'IMAGES/1.jpg'),
(19, '7', '2', '2', 'IMAGES/2.jpg'),
(20, '123', '123', 'password', 'IMAGES/2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `wish`
--

CREATE TABLE `wish` (
  `id` int(10) NOT NULL,
  `text` varchar(355) NOT NULL,
  `data` date NOT NULL,
  `img` varchar(355) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `instagram`
--
ALTER TABLE `instagram`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`pin_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students2`
--
ALTER TABLE `students2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wish`
--
ALTER TABLE `wish`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `instagram`
--
ALTER TABLE `instagram`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `pin`
--
ALTER TABLE `pin`
  MODIFY `pin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `store`
--
ALTER TABLE `store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `students2`
--
ALTER TABLE `students2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wish`
--
ALTER TABLE `wish`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
