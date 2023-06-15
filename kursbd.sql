-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 15 2023 г., 03:14
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kursbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `agriculturalmachinery`
--

CREATE TABLE `agriculturalmachinery` (
  `products_number` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `model_product` varchar(255) DEFAULT NULL,
  `capacity_engine` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `type_harvest` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `area`
--

CREATE TABLE `area` (
  `area_number` int(11) NOT NULL,
  `boss_area` varchar(255) DEFAULT NULL,
  `number_brigade` int(11) DEFAULT NULL,
  `workshop_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `brigade`
--

CREATE TABLE `brigade` (
  `number_brigade` int(11) NOT NULL,
  `brigadier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bus`
--

CREATE TABLE `bus` (
  `products_number` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `model_product` varchar(255) DEFAULT NULL,
  `capacity_engine` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `products_number` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `model_product` varchar(255) DEFAULT NULL,
  `capacity_engine` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `type_body` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engineeringstaff`
--

CREATE TABLE `engineeringstaff` (
  `id_pers` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `labs`
--

CREATE TABLE `labs` (
  `labs_number` int(11) NOT NULL,
  `workshop_number` int(11) DEFAULT NULL,
  `products_number` int(11) DEFAULT NULL,
  `challenge_true_false_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `motorcycles`
--

CREATE TABLE `motorcycles` (
  `products_number` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `model_product` varchar(255) DEFAULT NULL,
  `capacity_engine` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `type_products` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE `personal` (
  `id_pers` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `number_brigade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `products_number` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roadbuildingmachines`
--

CREATE TABLE `roadbuildingmachines` (
  `products_number` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `model_product` varchar(255) DEFAULT NULL,
  `capacity_engine` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `performance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `trucks`
--

CREATE TABLE `trucks` (
  `products_number` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `model_product` varchar(255) DEFAULT NULL,
  `capacity_engine` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `load_capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `workshop_number` int(11) DEFAULT NULL,
  `area_number` int(11) DEFAULT NULL,
  `products_number` int(11) DEFAULT NULL,
  `type_job` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `workshop`
--

CREATE TABLE `workshop` (
  `workshop_number` int(11) NOT NULL,
  `boss_workshop` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `agriculturalmachinery`
--
ALTER TABLE `agriculturalmachinery`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_number`);

--
-- Индексы таблицы `brigade`
--
ALTER TABLE `brigade`
  ADD PRIMARY KEY (`number_brigade`);

--
-- Индексы таблицы `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `engineeringstaff`
--
ALTER TABLE `engineeringstaff`
  ADD PRIMARY KEY (`id_pers`);

--
-- Индексы таблицы `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`labs_number`);

--
-- Индексы таблицы `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_pers`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `roadbuildingmachines`
--
ALTER TABLE `roadbuildingmachines`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`products_number`);

--
-- Индексы таблицы `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshop_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
