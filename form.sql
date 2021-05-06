-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 06 2021 г., 18:19
-- Версия сервера: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `form`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `id` int(8) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `subscribe` varchar(10) NOT NULL,
  `category` char(10) NOT NULL,
  `file` varchar(128) NOT NULL,
  `theme` varchar(16) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `subscribe`, `category`, `file`, `theme`, `message`) VALUES
(1, 'Григорий', 'test@gmail.com', 'yes', 'shoes', '', 'quality', 'Качество отличное, буду рекомендовать вас всем своим друзьям.'),
(2, 'Петр', 'newtest2@mail.ru', 'no', 'jackets', '', 'price', 'Не доволен вашими ценами, можно было и подешевле!'),
(3, 'Егор', 'hr6zdl@yandex.ru', 'no', 'jackets', '', 'quality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(4, 'Евгений', 'kaft93x@outlook.com', 'yes', 'shoes', '', 'refund', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(5, 'Женя', 'dcu@yandex.ru', 'no', 'shoes', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.44'),
(6, 'Аня', '19dn@outlook.com', 'no', 'jackets', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(7, 'Гриша', 'pa5h@mail.ru', 'no', 'jackets', '', 'refund', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(8, 'Саша', '281av0@gmail.com', 'no', 'pants', '', 'refund', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(9, 'Коля', '8edmfh@outlook.com', 'yes', 'shoes', '', 'quality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(10, 'Надежда', 'sfn13i@mail.ru', 'yes', 'shoes', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(11, 'Дарья', 'g0orc3x1@outlook.com', 'no', 'shoes', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(12, 'Максим', 'rv7bp@gmail.com', 'yes', 'jackets', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(13, 'Вадим', '93@outlook.com', 'yes', 'jackets', '', 'refund', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(14, 'Денис', 'er@gmail.com', 'yes', 'jackets', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(15, 'Александр', '715qy08@gmail.com', 'no', 'pants', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(16, 'Егор', 'wnhborq@outlook.com', 'no', 'jackets', 'test1.png', 'quality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(17, 'Яна', 'gq@yandex.ru', 'yes', 'shoes', 'test3.png', 'quality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin.'),
(18, 'Алексей', 'ic0pu@outlook.com', 'yes', 'jackets', '', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis aliquet. Nam malesuada ipsum velit, sed facilisis dui hendrerit sit amet. Nulla ipsum metus, sollicitudin'),
(19, 'Зинаида', 'o7khr@yandex.ru', 'yes', 'pants', 'test4.png', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis'),
(20, 'Эльмира', '2shlaq@outlook.com', 'no', 'shoes', '', 'quality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis'),
(21, 'Аркадий', 'cdbw@yandex.ru', 'yes', 'pants', 'вопросы.txt', 'price', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices erat felis. Nam quis fringilla nulla. Nunc interdum ipsum id tellus varius, sit amet blandit urna venenatis. Nunc semper odio ac nisi mollis rhoncus. Ut nisl massa, faucibus vel eros id, molestie consequat ligula. Donec fringilla velit eu mattis'),
(22, 'Игнат', 'devf54@gmail.com', 'yes', 'shoes', '', 'quality', 'Очень доволен вашей продукцией!'),
(23, 'Андрей', 'final_andrey48@mail.ru', 'yes', 'jackets', '', 'quality', 'хорошее сочетание цены и качества. так держать)'),
(24, 'Иван', 'netopole85@gmail.com', 'yes', 'jackets', '', 'quality', 'в целом нормально'),
(25, 'dev', 'dev666@gmail.com', 'yes', 'jackets', '', 'refund', 'Пушка, гонка'),
(26, 'Наргиз', 'newtest2555@mail.ru', 'no', 'pants', '', 'price', 'Мне очень нравится, между прочим'),
(27, 'Иван', 'ivan_bruhanov33@mail.ru', 'no', 'jackets', '', 'price', 'Отлично , доволен');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
