-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2022 г., 05:41
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `computer_case`
--

CREATE TABLE `computer_case` (
  `id_computer_case` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type_computer_case` varchar(15) NOT NULL,
  `Max_length_power` int NOT NULL,
  `Max_length_videocard` int NOT NULL,
  `Max_height_cooler` int NOT NULL,
  `Max_size_water_cooling` varchar(5) NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `computer_case`
--

INSERT INTO `computer_case` (`id_computer_case`, `Name`, `Type_computer_case`, `Max_length_power`, `Max_length_videocard`, `Max_height_cooler`, `Max_size_water_cooling`, `Price`) VALUES
(1, 'Fractal Design Meshify S2', 'Mid-Tower', 300, 440, 185, '360', 13500),
(2, 'DEEPCOOL MATREXX 70 3F', 'Mid-Tower', 200, 380, 170, '360', 9000),
(3, 'AeroCool AirHawk Duo', 'Mid-Tower', 180, 358, 168, '360', 6000),
(4, 'ZALMAN i3 Edge', 'Mid-Tower', 180, 360, 156, '240', 3800),
(5, 'AeroCool Aero One Frost', 'Mid-Tower', 165, 327, 161, '360', 4800),
(6, 'DEEPCOOL MATREXX 55 MESH ADD-RGB 4F', 'Mid-Tower', 170, 370, 168, '360', 7000),
(7, 'Cougar MX330-F', 'Mid-Tower', 235, 350, 155, '240', 4500),
(8, 'Cougar PANZER MAX-G', 'Full-Tower', 220, 390, 170, '360', 12000),
(9, 'AeroCool Tor Pro', 'Full-Tower', 220, 420, 180, '480', 16000),
(10, 'ZALMAN N5 MF', 'Mid-Tower', 160, 365, 158, '360', 4600),
(11, 'AeroCool Cylon Mini', 'Mini-Tower', 180, 300, 147, 'нет', 2500),
(12, 'Corsair Crystal Series 280X RGB', 'Mini-Tower', 180, 300, 150, '240', 13000),
(13, 'Thermaltake Versa H18', 'Mini-Tower', 220, 350, 155, '280', 4000),
(14, 'Cooler Master MasterBox', 'Mini-Tower', 160, 360, 159, '240', 3500),
(15, 'AeroCool Aero One Mini', 'Mini-Tower', 160, 327, 161, '240', 4000);

-- --------------------------------------------------------

--
-- Структура таблицы `computer_case_name_form_factor`
--

CREATE TABLE `computer_case_name_form_factor` (
  `id` int NOT NULL,
  `id_computer_case` int NOT NULL,
  `id_name_form_factor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `computer_case_name_form_factor`
--

INSERT INTO `computer_case_name_form_factor` (`id`, `id_computer_case`, `id_name_form_factor`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 2, 4),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3),
(12, 3, 4),
(13, 4, 2),
(14, 4, 3),
(15, 4, 4),
(16, 5, 2),
(17, 5, 3),
(18, 5, 4),
(19, 6, 1),
(20, 6, 2),
(21, 6, 3),
(22, 6, 4),
(23, 7, 2),
(24, 7, 3),
(25, 7, 4),
(26, 8, 1),
(27, 8, 2),
(28, 8, 3),
(29, 8, 4),
(30, 9, 2),
(31, 9, 3),
(32, 9, 4),
(33, 10, 2),
(34, 10, 3),
(35, 10, 4),
(36, 11, 3),
(37, 11, 4),
(38, 12, 3),
(39, 12, 4),
(40, 13, 3),
(41, 13, 4),
(42, 14, 3),
(43, 14, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `cooler`
--

CREATE TABLE `cooler` (
  `id_cooler` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `TDP` int NOT NULL,
  `Max_noise_leve` float NOT NULL,
  `Height` float NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `cooler`
--

INSERT INTO `cooler` (`id_cooler`, `Name`, `TDP`, `Max_noise_leve`, `Height`, `Price`) VALUES
(1, 'be quiet! DARK ROCK 4', 200, 21.4, 159.4, 6000),
(2, 'AeroCool Verkho 5 Dark', 150, 27, 156.5, 3000),
(3, 'ZALMAN CNPS10X Optima', 130, 28, 152, 2000),
(4, 'AeroCool Cylon 4', 145, 26, 160, 250),
(5, 'ZALMAN CNPS5X Performa', 105, 32, 134, 1400),
(6, 'Arctic Cooling Freezer 34 eSports DUO', 210, 28, 157, 5000),
(7, 'Thermalright Le GRAND Macho RT', 300, 20, 159, 5500),
(8, 'ID-COOLING SE-213V2', 130, 20.2, 140, 1000),
(9, 'be quiet! DARK ROCK PRO TR4', 250, 24.3, 162.8, 7500),
(10, 'Iceberg Thermal IceSLEET X9', 280, 38, 166, 12000),
(11, 'DEEPCOOL AK620', 260, 28, 160, 6000),
(12, 'ID-COOLING SE-214-XT', 180, 26.6, 150, 2000),
(13, 'DEEPCOOL AS500', 220, 26, 164, 5500),
(14, 'Montech AIR COOLER 210', 210, 27, 152.7, 5000),
(15, 'DEEPCOOL REDHAT', 250, 31.1, 168, 4500);

-- --------------------------------------------------------

--
-- Структура таблицы `cooler_name_soket`
--

CREATE TABLE `cooler_name_soket` (
  `id` int NOT NULL,
  `id_cooler` int NOT NULL,
  `id_name_soket` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `cooler_name_soket`
--

INSERT INTO `cooler_name_soket` (`id`, `id_cooler`, `id_name_soket`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 6),
(4, 2, 3),
(5, 2, 6),
(6, 3, 2),
(7, 3, 3),
(8, 4, 2),
(9, 4, 3),
(10, 4, 6),
(11, 5, 2),
(12, 5, 3),
(13, 6, 2),
(14, 6, 3),
(15, 6, 6),
(16, 7, 2),
(17, 7, 3),
(18, 7, 6),
(19, 8, 2),
(20, 8, 3),
(21, 8, 6),
(22, 9, 4),
(23, 9, 5),
(24, 10, 4),
(25, 10, 5),
(26, 11, 1),
(27, 11, 2),
(28, 11, 6),
(29, 12, 1),
(30, 12, 2),
(31, 12, 3),
(32, 12, 6),
(33, 13, 1),
(34, 13, 2),
(35, 13, 6),
(36, 14, 1),
(37, 14, 2),
(38, 14, 6),
(39, 15, 1),
(40, 15, 2),
(41, 15, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `cooling`
--

CREATE TABLE `cooling` (
  `id_cooling` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `TDP` int NOT NULL,
  `Max_noise_level` float NOT NULL,
  `Cooling_system` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leakage_protection` varchar(5) NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `cooling`
--

INSERT INTO `cooling` (`id_cooling`, `Name`, `TDP`, `Max_noise_level`, `Cooling_system`, `leakage_protection`, `Price`) VALUES
(1, 'be quiet! DARK ROCK 4', 200, 21.4, 'Кулер', '-', 6000),
(2, 'AeroCool Verkho 5 Dark', 150, 27, 'Кулер', '-', 3000),
(3, 'ZALMAN CNPS10X Optima', 130, 28, 'Кулер', '-', 2000),
(4, 'AeroCool Cylon 4', 145, 26, 'Кулер', '-', 2500),
(5, 'ZALMAN CNPS5X Performa', 105, 32, 'Кулер', '-', 1500),
(6, 'Arctic Cooling Freezer 34 eSports DUO', 210, 28, 'Кулер', '-', 5000),
(7, 'Thermalright Le GRAND Macho RT', 300, 20, 'Кулер', '-', 5500),
(8, 'ID-COOLING SE-213V2', 130, 20.2, 'Кулер', '-', 1000),
(9, 'be quiet! DARK ROCK PRO TR4', 250, 24.3, 'Кулер', '-', 7500),
(10, 'Iceberg Thermal IceSLEET X9', 280, 38, 'Кулер', '-', 12000),
(11, 'DEEPCOOL AK620', 260, 28, 'Кулер', '-', 6000),
(12, 'ID-COOLING SE-214-XT', 180, 26.6, 'Кулер', '-', 2000),
(13, 'DEEPCOOL AS500', 220, 26, 'Кулер', '-', 5500),
(14, 'Montech AIR COOLER 210', 210, 27, 'Кулер', '-', 5000),
(15, 'DEEPCOOL REDHAT', 250, 31.1, 'Кулер', '-', 4500),
(16, 'Corsair iCUE H150i RGB PRO XT', 400, 37, 'Жидкое', 'нет', 16000),
(17, 'Deepcool GAMMAXX L240 V2', 250, 30, 'Жидкое', 'есть', 5000),
(18, 'MSI MEG CORE LIQUID S360', 305, 22.7, 'Жидкое', 'нет', 25000),
(19, 'DEEPCOOL GAMMAXX L240T BLUE', 200, 30, 'Жидкое', 'нет', 5000),
(20, 'GIGABYTE GP-AORUS WATERFORCE 240', 200, 31, 'Жидкое', 'нет', 13000),
(21, 'Deepcool GAMMAXX L360 A-RGB', 300, 30, 'Жидкое', 'есть', 8000),
(22, 'MSI MAG CORELIQUID 240R V2', 280, 34.3, 'Жидкое', 'нет', 10000),
(23, 'MSI MAG CORELIQUID P360', 300, 34.3, 'Жидкое', 'нет', 12000),
(24, 'NZXT Kraken M22', 200, 36, 'Жидкое', 'нет', 7000),
(25, 'AeroCool Mirage L360', 550, 26.8, 'Жидкое', 'нет', 8000),
(26, 'ID-Cooling PINKFLOW 360', 400, 33.5, 'Жидкое', 'нет', 12000);

-- --------------------------------------------------------

--
-- Структура таблицы `hdd`
--

CREATE TABLE `hdd` (
  `id_hdd` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Memory` int NOT NULL,
  `Cach_memory` int NOT NULL,
  `Data_transfer_rate` int NOT NULL,
  `Raid` varchar(5) NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `hdd`
--

INSERT INTO `hdd` (`id_hdd`, `Name`, `Memory`, `Cach_memory`, `Data_transfer_rate`, `Raid`, `Price`) VALUES
(1, 'WD Ultrastar DC HC530', 14, 512, 267, 'есть', 50000),
(2, 'Seagate Exos X16', 14, 256, 261, 'есть', 44000),
(3, 'Toshiba S300 Surveillance', 10, 256, 248, 'есть', 30000),
(4, 'Seagate BarraCuda', 8, 256, 190, 'нет', 21000),
(5, 'WD Ultrastar DC HC320', 8, 256, 255, 'есть', 30000),
(6, 'Toshiba X300 Performance', 6, 128, 200, 'нет', 15000),
(7, 'WD Ultrastar DC HC310', 6, 256, 255, 'есть', 20000),
(8, 'Seagate BarraCuda', 4, 256, 190, 'нет', 10000),
(9, 'Toshiba X300 Performance', 4, 128, 200, 'нет', 12000),
(10, 'WD Red IntelliPower', 3, 256, 180, 'есть', 10000),
(11, 'Seagate IronWolf', 3, 64, 180, 'есть', 11000),
(12, 'Seagate BarraCuda', 2, 256, 220, 'нет', 5000),
(13, 'WD Black', 2, 64, 164, 'нет', 9000),
(14, 'WD Blue', 1, 64, 150, 'нет', 4000);

-- --------------------------------------------------------

--
-- Структура таблицы `motherboard`
--

CREATE TABLE `motherboard` (
  `id_motherboard` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Soket` varchar(15) NOT NULL,
  `Form_factor` varchar(15) NOT NULL,
  `Type_memory` varchar(10) NOT NULL,
  `Max_memory` int NOT NULL,
  `Slot_memory` int NOT NULL,
  `M2` varchar(5) NOT NULL,
  `Sata` int NOT NULL,
  `PCIe-3` varchar(5) NOT NULL,
  `PCIe-4` varchar(5) NOT NULL,
  `Version_PCI-E` int NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `motherboard`
--

INSERT INTO `motherboard` (`id_motherboard`, `Name`, `Soket`, `Form_factor`, `Type_memory`, `Max_memory`, `Slot_memory`, `M2`, `Sata`, `PCIe-3`, `PCIe-4`, `Version_PCI-E`, `Price`) VALUES
(1, 'ASUS PRIME H610M-A D4', 'LGA1700', 'Micro-ATX', 'DDR4', 64, 2, '2', 4, 'есть', 'нет', 4, 7500),
(2, 'GIGABYTE H610M S2H', 'LGA1700', 'Micro-ATX', 'DDR4', 64, 2, '1', 4, 'есть', 'нет', 4, 7700),
(3, 'ASUS TUF GAMING B660M-PLUS D4', 'LGA1700', 'Micro-ATX', 'DDR4', 128, 4, '2', 4, 'нет', 'есть', 5, 14000),
(4, 'GIGABYTE B660M GAMING X', 'LGA1700', 'Micro-ATX', 'DDR4', 128, 4, '2', 4, 'нет', 'есть', 4, 11500),
(5, 'ASUS ROG STRIX B660-F GAMING', 'LGA1700', 'Standard-ATX', 'DDR5', 128, 4, '3', 4, 'есть', 'есть', 5, 22000),
(6, 'GIGABYTE B660 AORUS MASTER', 'LGA1700', 'Standard-ATX', 'DDR4', 128, 4, '3', 4, 'есть', 'есть', 4, 19000),
(7, 'GIGABYTE Z690 UD', 'LGA1700', 'Standard-ATX', 'DDR5', 128, 4, '3', 6, 'нет', 'есть', 5, 15500),
(8, 'ASUS PRIME Z690M-PLUS', 'LGA1700', 'Micro-ATX', 'DDR4', 128, 4, '3', 4, 'нет', 'есть', 5, 16000),
(9, 'MSI H510M-A PRO', 'LGA1200', 'Micro-ATX', 'DDR4', 64, 2, '1', 4, 'есть', 'нет', 4, 5000),
(10, 'ASRock H510M-HVS', 'LGA1200', 'Micro-ATX', 'DDR4', 64, 2, 'нет', 4, 'нет', 'нет', 4, 4800),
(11, 'ASUS PRIME B560M-A', 'LGA1200', 'Micro-ATX', 'DDR4', 128, 4, '2', 6, 'есть', 'есть', 4, 8000),
(12, 'GIGABYTE B560 HD3', 'LGA1200', 'Standard-ATX', 'DDR4', 128, 4, '2', 6, 'есть', 'есть', 4, 7500),
(13, 'GIGABYTE Z590 GAMING X', 'LGA1200', 'Standard-ATX', 'DDR4', 128, 4, '3', 6, 'есть', 'есть', 4, 13000),
(14, 'ASRock Z590 EXTREME', 'LGA1200', 'Standard-ATX', 'DDR4', 128, 4, '3', 6, 'есть', 'есть', 4, 15000),
(15, 'ASUS PRIME H410M-E', 'LGA1200', 'Micro-ATX', 'DDR4', 64, 2, '1', 4, 'есть', 'нет', 3, 7000),
(16, 'GIGABYTE H410M S2H', 'LGA1200', 'Micro-ATX', 'DDR4', 64, 2, '1', 4, 'есть', 'нет', 3, 6000),
(17, 'MSI MAG B460 TOMAHAWK', 'LGA1200', 'Standard-ATX', 'DDR4', 128, 4, '2', 6, 'есть', 'нет', 3, 10000),
(18, 'ASRock B460M Pro4', 'LGA1200', 'Micro-ATX', 'DDR4', 128, 4, '2', 6, 'есть', 'нет', 3, 8000),
(19, 'MSI Z490-A PRO', 'LGA1200', 'Standard-ATX', 'DDR4', 128, 4, '2', 6, 'есть', 'есть', 3, 12000),
(20, 'GIGABYTE Z490I AORUS ULTRA', 'LGA1200', 'Mini-ITX', 'DDR4', 64, 2, '2', 4, 'есть', 'нет', 3, 16000),
(21, 'ASRock Z390 PRO4', 'LGA1151v2', 'Standard-ATX', 'DDR4', 128, 2, '2', 6, 'есть', 'нет', 3, 10000),
(22, 'ASRock B365 Pro4', 'LGA1151v2', 'Standard-ATX', 'DDR4', 64, 4, '2', 6, 'есть', 'нет', 3, 7000),
(23, 'MSI H310M PRO-VDH PLUS', 'LGA1151v2', 'Micro-ATX', 'DDR4', 32, 2, 'нет', 4, 'нет', 'нет', 3, 3500),
(24, 'GIGABYTE H310M D3H', 'LGA1151v2', 'Micro-ATX', 'DDR4', 64, 4, '1', 4, 'нет', 'нет', 2, 6000),
(25, 'ASRock TRX40 CREATOR', 'sTRX4', 'Standard-ATX', 'DDR4', 256, 8, '3', 8, 'нет', 'есть', 4, 40000),
(26, 'MSI TRX40 PRO', 'sTRX4', 'Standard-ATX', 'DDR4', 256, 8, '2', 8, 'нет', 'есть', 4, 35000),
(27, 'ASRock X399 Taichi', 'sTR4', 'Standard-ATX', 'DDR4', 128, 8, '3', 8, 'нет', 'нет', 3, 25000),
(28, 'ASUS ROG ZENITH EXTREME', 'sTR4', 'E-ATX', 'DDR4', 128, 8, '1', 6, 'есть', 'нет', 3, 40000),
(29, 'MSI MPG X570 GAMING PLUS', 'AM4', 'Standard-ATX', 'DDR4', 128, 4, '2', 4, 'нет', 'есть', 4, 15000),
(30, 'ASRock X570 Pro4', 'AM4', 'Standard-ATX', 'DDR4', 128, 4, '2', 8, 'нет', 'есть', 4, 12500),
(31, 'GIGABYTE B550 AORUS ELITE V2', 'AM4', 'Standard-ATX', 'DDR4', 128, 4, '2', 4, 'есть', 'есть', 4, 10000),
(32, 'ASUS PRIME B550M-A', 'AM4', 'Micro-ATX', 'DDR4', 128, 4, '2', 4, 'есть', 'есть', 4, 9000),
(33, 'GIGABYTE B450M S2H', 'AM4', 'Micro-ATX', 'DDR4', 32, 2, '1', 4, 'есть', 'нет', 3, 4000),
(34, 'MSI B450-A PRO MAX', 'AM4', 'Standard-ATX', 'DDR4', 64, 4, '1', 6, 'есть', 'нет', 3, 7000),
(35, 'ASUS TUF GAMING B550M-PLUS', 'AM4', 'Micro-ATX', 'DDR4', 128, 4, '2', 4, 'есть', 'есть', 4, 6500),
(36, 'GIGABYTE A520M S2H', 'AM4', 'Micro-ATX', 'DDR4', 64, 2, '1', 4, 'есть', 'нет', 3, 4300),
(37, 'GIGABYTE GA-A320M-S2H V2', 'AM4', 'Micro-ATX', 'DDR4', 32, 2, '1', 4, 'есть', 'нет', 3, 3500),
(38, 'ASRock A320M-HDV R4.0', 'AM4', 'Micro-ATX', 'DDR4', 32, 2, '1', 4, 'есть', 'нет', 3, 4000);

-- --------------------------------------------------------

--
-- Структура таблицы `motherboard_name_core`
--

CREATE TABLE `motherboard_name_core` (
  `id` int NOT NULL,
  `id_motherboard` int NOT NULL,
  `id_name_core` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `motherboard_name_core`
--

INSERT INTO `motherboard_name_core` (`id`, `id_motherboard`, `id_name_core`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 2),
(10, 9, 3),
(11, 10, 2),
(12, 10, 3),
(13, 11, 2),
(14, 11, 3),
(15, 12, 2),
(16, 12, 3),
(17, 13, 2),
(18, 13, 3),
(19, 14, 2),
(20, 14, 3),
(21, 15, 3),
(22, 16, 3),
(23, 17, 3),
(24, 18, 3),
(25, 19, 2),
(26, 19, 3),
(27, 20, 2),
(28, 20, 3),
(29, 21, 4),
(30, 22, 4),
(31, 23, 4),
(32, 24, 4),
(33, 25, 5),
(34, 26, 5),
(35, 27, 6),
(36, 27, 7),
(37, 28, 6),
(38, 28, 7),
(39, 29, 8),
(40, 29, 9),
(41, 29, 10),
(42, 30, 6),
(43, 30, 8),
(44, 30, 9),
(45, 30, 10),
(46, 31, 8),
(47, 31, 9),
(48, 32, 8),
(49, 32, 9),
(50, 33, 6),
(51, 33, 7),
(52, 33, 8),
(53, 33, 9),
(54, 33, 10),
(55, 34, 6),
(56, 34, 7),
(57, 34, 8),
(58, 34, 9),
(59, 34, 10),
(60, 35, 8),
(61, 35, 9),
(62, 36, 8),
(63, 36, 9),
(64, 37, 6),
(65, 37, 7),
(66, 37, 9),
(67, 37, 10),
(68, 38, 6),
(69, 38, 7),
(70, 38, 9),
(71, 38, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `name_core`
--

CREATE TABLE `name_core` (
  `id_name_core` int NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_core`
--

INSERT INTO `name_core` (`id_name_core`, `Name`) VALUES
(1, 'Alder'),
(2, 'Rocket'),
(3, 'Comet'),
(4, 'Coffee'),
(5, 'Castle Peak'),
(6, 'Raven Ridge'),
(7, 'Summit Ridge'),
(8, 'Vermeer'),
(9, 'Matisse'),
(10, 'Pinnacle Ridge');

-- --------------------------------------------------------

--
-- Структура таблицы `name_form_factor`
--

CREATE TABLE `name_form_factor` (
  `id_name_from_factor` int NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_form_factor`
--

INSERT INTO `name_form_factor` (`id_name_from_factor`, `Name`) VALUES
(1, 'E-ATX'),
(2, 'Standard-ATX'),
(3, 'Micro-ATX'),
(4, 'Mini-ITX');

-- --------------------------------------------------------

--
-- Структура таблицы `name_soket`
--

CREATE TABLE `name_soket` (
  `id_name_soket` int NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_soket`
--

INSERT INTO `name_soket` (`id_name_soket`, `Name`) VALUES
(1, 'LGA1700'),
(2, 'LGA1200'),
(3, 'LGA1151v2'),
(4, 'sTRX4'),
(5, 'sTR4'),
(6, 'AM4');

-- --------------------------------------------------------

--
-- Структура таблицы `power_supply`
--

CREATE TABLE `power_supply` (
  `id_power_supply` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `TDP` int NOT NULL,
  `80PLUS` varchar(10) NOT NULL,
  `Length` int NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `power_supply`
--

INSERT INTO `power_supply` (`id_power_supply`, `Name`, `TDP`, `80PLUS`, `Length`, `Price`) VALUES
(1, 'be quiet! DARK POWER PRO 12', 1500, 'Titanium', 200, 50000),
(2, 'Thermaltake АМУР', 1200, 'Gold', 180, 20000),
(3, 'GIGABYTE P1000GM', 1000, 'Gold', 140, 12000),
(4, 'ZALMAN ARX', 1000, 'Platinum', 180, 13000),
(5, 'GIGABYTE P850GM', 850, 'Gold', 140, 7500),
(6, 'Thermaltake Smart PRO RGB', 850, 'Bronze', 170, 9000),
(7, 'be quiet! SYSTEM POWER 9', 600, 'Bronze', 140, 4500),
(8, 'AeroCool AERO BRONZE', 650, 'Bronze', 140, 4500),
(9, 'Chieftec ECO', 600, 'нет', 140, 3500),
(10, 'Thermaltake Smart BX1 RGB', 550, 'Bronze', 140, 4000),
(11, 'Chieftec ECO', 500, 'нет', 140, 3000),
(12, 'AeroCool Cylon', 500, 'Standard', 140, 3500),
(13, 'Thermaltake TR2 S', 450, 'Standard', 140, 3500),
(14, 'be quiet! SYSTEM POWER 9', 400, 'Bronze', 140, 3300),
(15, 'AeroCool VX PLUS', 400, 'нет', 140, 2000),
(16, 'AeroCool KCAS PLUS', 400, 'Bronze', 140, 3000);

-- --------------------------------------------------------

--
-- Структура таблицы `processor`
--

CREATE TABLE `processor` (
  `id_processor` int NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Base_GHz` float NOT NULL,
  `Max_GHz` float NOT NULL,
  `TDP` int NOT NULL,
  `Cores` int NOT NULL,
  `Soket` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Graphics_Core` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Cache_memory` int NOT NULL,
  `Price` int NOT NULL,
  `Name_core` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `processor`
--

INSERT INTO `processor` (`id_processor`, `Name`, `Base_GHz`, `Max_GHz`, `TDP`, `Cores`, `Soket`, `Graphics_Core`, `Cache_memory`, `Price`, `Name_core`) VALUES
(1, 'Intel Core i9-12900', 2.4, 5.1, 202, 16, 'LGA1700', 'есть', 30, 74000, 'Alder'),
(2, 'Intel Core i9-12900K', 3.2, 5.2, 241, 16, 'LGA1700', 'есть', 30, 63000, 'Alder'),
(3, 'Intel Core i9-12900F', 2.4, 5.1, 202, 16, 'LGA1700', 'нет', 30, 54000, 'Alder'),
(4, 'Intel Core i9-11900', 2.5, 5.2, 65, 8, 'LGA1200', 'есть', 16, 35000, 'Rocket'),
(5, 'Intel Core i9-11900K', 3.5, 5.3, 125, 8, 'LGA1200', 'есть', 16, 40000, 'Rocket'),
(6, 'Intel Core i9-11900F', 2.5, 5.2, 65, 8, 'LGA1200', 'нет', 16, 32000, 'Rocket'),
(7, 'Intel Core i9-10900', 2.8, 5.2, 65, 10, 'LGA1200', 'есть', 20, 30000, 'Comet'),
(8, 'Intel Core i9-10900K', 3.7, 5.3, 125, 10, 'LGA1200', 'есть', 20, 37000, 'Comet'),
(9, 'Intel Core i9-10900F', 2.8, 5.2, 65, 10, 'LGA1200', 'нет', 20, 29000, 'Comet'),
(10, 'Intel Core i7-12700', 2.1, 4.9, 180, 12, 'LGA1700', 'есть', 25, 40000, 'Alder'),
(11, 'Intel Core i7-12700K', 3.6, 5, 190, 12, 'LGA1700', 'есть', 25, 45000, 'Alder'),
(12, 'Intel Core i7-12700F', 2.1, 4.9, 180, 12, 'LGA1700', 'нет', 25, 39000, 'Alder'),
(13, 'Intel Core i7-11700', 2.5, 4.9, 65, 8, 'LGA1200', 'есть', 16, 28000, 'Rocket'),
(14, 'Intel Core i7-11700K', 3.6, 5, 125, 8, 'LGA1200', 'есть', 16, 34000, 'Rocket'),
(15, 'Intel Core i7-11700F', 2.5, 4.9, 65, 8, 'LGA1200', 'нет', 16, 28000, 'Rocket'),
(16, 'Intel Core i7-10700', 2.9, 4.8, 65, 8, 'LGA1200', 'есть', 16, 27000, 'Comet'),
(17, 'Intel Core i7-10700K', 3.8, 5.1, 125, 8, 'LGA1200', 'есть', 16, 27000, 'Comet'),
(18, 'Intel Core i7-10700F', 2.9, 4.8, 65, 8, 'LGA1200', 'нет', 16, 24000, 'Comet'),
(19, 'Intel Core i7-9700', 3, 4.7, 65, 8, 'LGA1151v2', 'есть', 12, 25000, 'Coffee'),
(20, 'Intel Core i7-9700K', 3.6, 4.9, 95, 8, 'LGA1151v2', 'есть', 12, 26000, 'Coffee'),
(21, 'Intel Core i7-9700', 3, 4.7, 65, 8, 'LGA1151v2', 'нет', 12, 23000, 'Coffee'),
(22, 'Intel Core i7-8700', 3.2, 4.6, 65, 6, 'LGA1151v2', 'есть', 12, 20000, 'Coffee'),
(23, 'Intel Core i7-8700K', 3.7, 4.7, 95, 6, 'LGA1151v2', 'есть', 12, 25000, 'Coffee'),
(24, 'Intel Core i5-12600', 3.3, 4.8, 117, 6, 'LGA1700', 'есть', 18, 29000, 'Alder'),
(25, 'Intel Core i5-12600K', 3.7, 4.9, 150, 10, 'LGA1700', 'есть', 20, 35000, 'Alder'),
(26, 'Intel Core i5-12500', 3, 4.6, 117, 6, 'LGA1700', 'есть', 18, 25000, 'Alder'),
(27, 'Intel Core i5-12400', 2.5, 4.4, 117, 6, 'LGA1700', 'есть', 18, 20000, 'Alder'),
(28, 'Intel Core i5-12400F', 2.5, 4.4, 117, 6, 'LGA1700', 'нет', 18, 18000, 'Alder'),
(29, 'Intel Core i5-11600', 2.8, 4.8, 65, 6, 'LGA1200', 'есть', 12, 20000, 'Rocket'),
(30, 'Intel Core i5-11600K', 3.9, 4.9, 125, 6, 'LGA1200', 'есть', 12, 26000, 'Rocket'),
(31, 'Intel Core i5-11500', 2.7, 4.6, 65, 6, 'LGA1200', 'есть', 12, 20000, 'Rocket'),
(32, 'Intel Core i5-11400', 2.6, 4.4, 65, 6, 'LGA1200', 'есть', 12, 18000, 'Rocket'),
(33, 'Intel Core i5-11400F', 2.6, 4.4, 65, 6, 'LGA1200', 'нет', 12, 13000, 'Rocket'),
(34, 'Intel Core i5-10600', 3.3, 4.8, 65, 6, 'LGA1200', 'есть', 12, 25000, 'Comet'),
(35, 'Intel Core i5-10600K', 4.1, 4.8, 125, 6, 'LGA1200', 'есть', 12, 24000, 'Comet'),
(36, 'Intel Core i5-10500', 3.1, 4.5, 65, 6, 'LGA1200', 'есть', 12, 18000, 'Comet'),
(37, 'Intel Core i5-10400', 2.9, 4.3, 65, 6, 'LGA1200', 'есть', 12, 15000, 'Comet'),
(38, 'Intel Core i5-10400F', 2.9, 4.3, 65, 6, 'LGA1200', 'нет', 12, 13000, 'Comet'),
(39, 'Intel Core i5-9600', 3.1, 4.6, 65, 6, 'LGA1151v2', 'есть', 9, 18000, 'Coffee'),
(40, 'Intel Core i5-9600K', 3.7, 4.6, 95, 6, 'LGA1151v2', 'есть', 9, 20000, 'Coffee'),
(41, 'Intel Core i5-9500', 3, 4.4, 65, 6, 'LGA1151v2', 'есть', 9, 17000, 'Coffee'),
(42, 'Intel Core i5-9400', 2.9, 4.1, 65, 6, 'LGA1151v2', 'есть', 9, 16000, 'Coffee'),
(43, 'Intel Core i5-9400F', 2.9, 4.1, 65, 6, 'LGA1151v2', 'нет', 9, 15000, 'Coffee'),
(44, 'Intel Core i3-12300', 3.5, 4.4, 89, 4, 'LGA1700', 'есть', 12, 18000, 'Alder'),
(45, 'Intel Core i3-12100', 3.3, 4.3, 89, 4, 'LGA1700', 'есть', 12, 14000, 'Alder'),
(46, 'Intel Core i3-12100F', 3.3, 4.3, 89, 6, 'LGA1700', 'нет', 12, 12000, 'Alder'),
(47, 'Intel Core i3-10300', 3.7, 4.4, 65, 4, 'LGA1200', 'есть', 8, 14000, 'Comet'),
(48, 'Intel Core i3-10100', 3.6, 4.3, 65, 4, 'LGA1200', 'есть', 6, 11000, 'Comet'),
(49, 'Intel Core i3-10100F', 3.6, 4.3, 65, 4, 'LGA1200', 'нет', 6, 8500, 'Comet'),
(50, 'Intel Core i3-9100F', 3.6, 4.2, 65, 4, 'LGA1151v2', 'нет', 6, 8500, 'Coffee'),
(51, 'AMD Ryzen Threadripper 3990X', 2.9, 4.3, 280, 64, 'sTRX4', 'нет', 256, 600000, 'Castle Peak'),
(52, 'AMD Ryzen Threadripper 3970X', 3.7, 4.5, 280, 32, 'sTRX4', 'нет', 128, 200000, 'Castle Peak'),
(53, 'AMD Ryzen Threadripper 3960X', 3.8, 4.5, 280, 24, 'sTRX4', 'нет', 128, 160000, 'Castle Peak'),
(54, 'AMD Ryzen Threadripper 2990WX', 3, 4.2, 250, 32, 'sTR4', 'нет', 64, 130000, 'Raven Ridge'),
(55, 'AMD Ryzen Threadripper 2970WX', 3, 4.2, 250, 24, 'sTR4', 'нет', 64, 85000, 'Raven Ridge'),
(56, 'AMD Ryzen Threadripper 2950X', 3.5, 4.4, 180, 16, 'sTR4', 'нет', 32, 62000, 'Raven Ridge'),
(57, 'AMD Ryzen Threadripper 2920X', 3.5, 4.3, 180, 12, 'sTR4', 'нет', 32, 35000, 'Raven Ridge'),
(58, 'AMD Ryzen Threadripper 1950X', 3.4, 4, 180, 16, 'sTR4', 'нет', 32, 45000, 'Summit Ridge'),
(59, 'AMD Ryzen Threadripper 1920X', 3.5, 4, 180, 12, 'sTR4', 'нет', 32, 20000, 'Summit Ridge'),
(60, 'AMD Ryzen Threadripper 1900X', 3.8, 4, 180, 8, 'sTR4', 'нет', 16, 16000, 'Summit Ridge'),
(61, 'AMD Ryzen 9 5950X', 3.4, 4.9, 105, 16, 'AM4', 'нет', 64, 53000, 'Vermeer'),
(62, 'AMD Ryzen 9 5900X', 3.7, 4.8, 105, 12, 'AM4', 'нет', 64, 41000, 'Vermeer'),
(63, 'AMD Ryzen 9 3950X', 3.5, 4.7, 105, 16, 'AM4', 'нет', 64, 50000, 'Matisse'),
(64, 'AMD Ryzen 9 3900X', 3.8, 4.6, 105, 12, 'AM4', 'нет', 64, 41000, 'Matisse'),
(65, 'AMD Ryzen 7 5800X', 3.8, 4.7, 105, 8, 'AM4', 'нет', 32, 31000, 'Vermeer'),
(66, 'AMD Ryzen 7 5700X', 3.4, 4.6, 65, 8, 'AM4', 'нет', 32, 27000, 'Vermeer'),
(67, 'AMD Ryzen 7 3800X', 3.9, 4.5, 105, 8, 'AM4', 'нет', 32, 30000, 'Matisse'),
(68, 'AMD Ryzen 7 3700X', 3.6, 4.4, 65, 8, 'AM4', 'нет', 32, 24000, 'Matisse'),
(69, 'AMD Ryzen 7 2700X', 3.7, 4.3, 105, 8, 'AM4', 'нет', 16, 17000, 'Pinnacle Ridge'),
(70, 'AMD Ryzen 7 2700', 3.2, 4.1, 65, 8, 'AM4', 'нет', 16, 14000, 'Pinnacle Ridge'),
(71, 'AMD Ryzen 7 1800X', 3.6, 4, 95, 8, 'AM4', 'нет', 16, 14000, 'Summit Ridge'),
(72, 'AMD Ryzen 7 1700X', 3.4, 3.8, 95, 8, 'AM4', 'нет', 16, 12000, 'Summit Ridge'),
(73, 'AMD Ryzen 5 5600X', 3.7, 4.6, 65, 6, 'AM4', 'нет', 32, 19000, 'Vermeer'),
(74, 'AMD Ryzen 5 5600', 3.6, 4.4, 65, 6, 'AM4', 'нет', 32, 18500, 'Vermeer'),
(75, 'AMD Ryzen 5 3600X', 3.8, 4.4, 95, 6, 'AM4', 'нет', 32, 20000, 'Matisse'),
(76, 'AMD Ryzen 5 3600', 3.6, 4.2, 65, 6, 'AM4', 'нет', 32, 16000, 'Matisse'),
(77, 'AMD Ryzen 5 2600X', 3.6, 4.2, 95, 6, 'AM4', 'нет', 16, 13000, 'Pinnacle Ridge'),
(78, 'AMD Ryzen 5 2600', 3.4, 3.9, 65, 6, 'AM4', 'нет', 16, 12000, 'Pinnacle Ridge'),
(79, 'AMD Ryzen 5 2500X', 3.6, 4, 65, 4, 'AM4', 'нет', 8, 8000, 'Pinnacle Ridge'),
(80, 'AMD Ryzen 3 3300X', 3.8, 4.3, 65, 4, 'AM4', 'нет', 16, 11000, 'Matisse'),
(81, 'AMD Ryzen 3 3100', 3.6, 3.9, 65, 4, 'AM4', 'нет', 16, 8000, 'Matisse');

-- --------------------------------------------------------

--
-- Структура таблицы `ram`
--

CREATE TABLE `ram` (
  `id_ram` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Sum_ram` int NOT NULL,
  `Number` int NOT NULL,
  `Type_memory` varchar(10) NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ram`
--

INSERT INTO `ram` (`id_ram`, `Name`, `Sum_ram`, `Number`, `Type_memory`, `Price`) VALUES
(1, 'Corsair Vengeance', 128, 4, 'DDR5', 90000),
(2, 'Crucial', 64, 2, 'DDR5', 48000),
(3, 'Corsair Vengeance', 64, 2, 'DDR5', 45000),
(4, 'HyperX Predator', 128, 4, 'DDR4', 65000),
(5, 'Kingston FURY Beast Black', 64, 2, 'DDR4', 37000),
(6, 'Kingston HyperX FURY Black', 64, 2, 'DDR4', 30000),
(7, 'Kingston FURY Renegade', 32, 2, 'DDR4', 15000),
(8, 'Crucial Ballistix Black', 32, 2, 'DDR4', 17000),
(9, 'Kingston FURY Beast Black', 16, 2, 'DDR4', 8000),
(10, 'Crucial Ballistix Red', 16, 2, 'DDR4', 6500),
(11, 'G.Skill AEGIS', 16, 2, 'DDR4', 6000),
(12, 'Samsung', 16, 2, 'DDR4', 7000),
(13, 'Corsair Vengeance LPX', 16, 2, 'DDR4', 8000),
(14, 'AMD Radeon R7 Performance Series', 8, 2, 'DDR4', 3000),
(15, 'Crucial', 8, 2, 'DDR4', 3600);

-- --------------------------------------------------------

--
-- Структура таблицы `ssd`
--

CREATE TABLE `ssd` (
  `Id_ssd` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Memory` int NOT NULL,
  `Bit` int NOT NULL,
  `Reed_speed` int NOT NULL,
  `Write_speed` int NOT NULL,
  `M2` varchar(5) NOT NULL,
  `PCle` varchar(5) NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `ssd`
--

INSERT INTO `ssd` (`Id_ssd`, `Name`, `Memory`, `Bit`, `Reed_speed`, `Write_speed`, `M2`, `PCle`, `Price`) VALUES
(1, 'Samsung 870 QVO', 2000, 4, 560, 530, 'нет', 'нет', 33000),
(2, 'Crucial BX500', 1000, 3, 540, 500, 'нет', 'нет', 10000),
(3, 'Crucial BX500', 480, 3, 540, 500, 'нет', 'нет', 5000),
(4, 'GIGABYTE', 240, 3, 500, 420, 'нет', 'нет', 2800),
(5, 'A-Data SU800', 256, 3, 560, 520, 'нет', 'нет', 3500),
(6, 'GIGABYTE', 120, 3, 500, 380, 'нет', 'нет', 1700),
(7, 'WD Green', 120, 3, 545, 430, 'нет', 'нет', 2700),
(8, 'A-Data SU650', 120, 3, 520, 320, 'нет', 'нет', 1600),
(9, 'WD Black SN750', 2000, 3, 3400, 2900, 'есть', '3', 38000),
(10, 'Samsung 970 EVO Plus', 2000, 3, 3500, 3300, 'есть', '3', 36000),
(11, 'Samsung 980 PRO', 1000, 3, 7000, 5000, 'есть', '4', 30000),
(12, 'WD Black SN750', 1000, 3, 3470, 3000, 'есть', '3', 18000),
(13, 'Patriot Viper VPN100', 1000, 3, 3450, 3000, 'есть', '3', 14000),
(14, 'Samsung 980', 500, 3, 3500, 2600, 'есть', '3', 10000),
(15, 'Patriot Viper VPN100', 512, 3, 3300, 3200, 'есть', '3', 12000),
(16, 'Samsung 970 EVO Plus', 250, 3, 3500, 2300, 'есть', '3', 7000),
(17, 'Silicon Power P34A80', 256, 3, 3400, 3000, 'есть', '3', 4000),
(18, 'WD Green', 120, 3, 545, 240, 'есть', 'нет', 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `videocard`
--

CREATE TABLE `videocard` (
  `id_videocard` int UNSIGNED NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Memory_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GPU_memory` int NOT NULL,
  `TDP` int NOT NULL,
  `Memory_bandwidth` int NOT NULL,
  `Length` int NOT NULL,
  `Architecture` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Cudo` int NOT NULL,
  `PCI-E` int NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `videocard`
--

INSERT INTO `videocard` (`id_videocard`, `Name`, `Memory_type`, `GPU_memory`, `TDP`, `Memory_bandwidth`, `Length`, `Architecture`, `Cudo`, `PCI-E`, `Price`) VALUES
(1, 'Nvidia quadro RTX A6000', 'DDRR6', 48, 300, 768, 267, 'ampere', 10752, 4, 500000),
(2, 'Nvidia quadro RTX A5000', 'GDDR6', 24, 230, 768, 267, 'ampere', 8192, 4, 220000),
(3, 'Nvidia quadro RTX A4000', 'GDDR6', 16, 140, 448, 241, 'ampere', 6144, 4, 110000),
(4, 'Nvidia quadro RTX A2000', 'GDDR6', 12, 70, 288, 168, 'ampere', 3328, 4, 70000),
(5, 'Nvidia quadro T1000', 'GDDR6', 8, 50, 160, 156, 'ampere', 896, 3, 42000),
(6, 'Nvidia quadro T600', 'GDDR6', 4, 40, 160, 160, 'turing', 640, 3, 38000),
(7, 'Nvidia quadro T400', 'GDDR6', 4, 30, 80, 156, 'turing', 384, 3, 24000),
(8, 'Nvidia RTX 3090ti', 'GDDR6X', 24, 450, 1008, 313, 'ampere', 10754, 4, 260000),
(9, 'Nvidia RTX 3090', 'GDDR6X', 24, 350, 936, 313, 'ampere', 10496, 4, 230000),
(10, 'Nvidia RTX 3080ti', 'GDDR6X', 12, 350, 916, 285, 'ampere', 10240, 4, 160000),
(11, 'Nvidia RTX 3080', 'GDDR6X', 10, 320, 760, 285, 'ampere', 8704, 4, 120000),
(12, 'Nvidia RTX 3070ti', 'GDDR6X', 8, 290, 608, 267, 'ampere', 6144, 4, 100000),
(13, 'Nvidia RTX 3070', 'GDDR6', 8, 220, 448, 242, 'ampere', 5888, 4, 80000),
(14, 'Nvidia RTX 3060ti', 'GDDR6', 8, 200, 448, 242, 'ampere', 4864, 4, 65000),
(15, 'Nvidia RTX 3060', 'GDDR6', 12, 170, 360, 242, 'ampere', 3584, 4, 60000),
(16, 'Nvidia RTX 3050', 'GDDR6', 8, 130, 224, 213, 'ampere', 2560, 4, 44000),
(17, 'Nvidia RTX 2060 super', 'GDDR6', 6, 160, 336, 229, 'turing', 1920, 3, 60000),
(18, 'Nvidia RTX 2060', 'GDDR6', 8, 250, 496, 268, 'turing', 3074, 3, 47000),
(19, 'Nvidia GTX 1660ti', 'GDDR6', 6, 120, 288, 145, 'turing', 1536, 3, 40000),
(20, 'Nvidia GTX 1660', 'GDDR6', 4, 120, 96, 145, 'turing', 1408, 3, 35000),
(21, 'Nvidia GTX 1650', 'GDDR5', 4, 75, 128, 229, 'turing', 896, 3, 25000),
(22, 'Nvidia GTX 1050ti', 'GDDR5', 4, 75, 112, 172, 'Pascal', 768, 3, 21000),
(23, 'AMD Radeon RX 6900XT', 'GDDR6', 16, 300, 512, 267, 'RDNA 2', 5120, 4, 135000),
(24, 'AMD Radeon RX 6800XT', 'GDDR6', 16, 300, 512, 267, 'RDNA 2', 4608, 4, 126000),
(25, 'AMD Radeon RX 6800 ', 'GDDR6', 16, 250, 512, 267, 'RDNA 2', 3840, 4, 115000),
(26, 'AMD Radeon RX 6700XT', 'GDDR6', 12, 230, 384, 267, 'RDNA 2', 2560, 4, 90000),
(27, 'AMD Radeon RX 6600XT', 'GDDR6', 8, 160, 256, 220, 'RDNA 2', 2048, 4, 55000),
(28, 'AMD Radeon RX 6600', 'GDDR6', 8, 132, 224, 200, 'RDNA 2', 1792, 4, 42000);

-- --------------------------------------------------------

--
-- Структура таблицы `water_cooling`
--

CREATE TABLE `water_cooling` (
  `id_water_cooling` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `TDP` int NOT NULL,
  `Size` int NOT NULL,
  `Max_noise_level` float NOT NULL,
  `leakage_protection` varchar(5) NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `water_cooling`
--

INSERT INTO `water_cooling` (`id_water_cooling`, `Name`, `TDP`, `Size`, `Max_noise_level`, `leakage_protection`, `Price`) VALUES
(1, 'Corsair iCUE H150i RGB PRO XT', 400, 360, 37, 'нет', 16000),
(2, 'Deepcool GAMMAXX L240 V2', 250, 240, 30, 'есть', 5000),
(3, 'MSI MEG CORE LIQUID S360', 305, 360, 22.7, 'нет', 25000),
(4, 'DEEPCOOL GAMMAXX L240T BLUE', 200, 240, 30, 'есть', 5000),
(5, 'GIGABYTE GP-AORUS WATERFORCE 240', 200, 240, 31, 'нет', 13000),
(6, 'Deepcool GAMMAXX L360 A-RGB', 300, 360, 30, 'есть', 8000),
(7, 'MSI MAG CORELIQUID 240R V2', 280, 240, 34.3, 'нет', 10000),
(8, 'MSI MAG CORELIQUID P360', 300, 360, 34.3, 'нет', 12000),
(9, 'NZXT Kraken M22', 200, 120, 36, 'нет', 7000),
(10, 'AeroCool Mirage L360', 550, 360, 26.8, 'нет', 8000),
(11, 'ID-Cooling PINKFLOW 360', 400, 360, 33.5, 'нет', 12000);

-- --------------------------------------------------------

--
-- Структура таблицы `water_cooling_name_soket`
--

CREATE TABLE `water_cooling_name_soket` (
  `id` int NOT NULL,
  `id_water_cooling` int NOT NULL,
  `id_name_soket` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `water_cooling_name_soket`
--

INSERT INTO `water_cooling_name_soket` (`id`, `id_water_cooling`, `id_name_soket`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 6),
(6, 2, 2),
(7, 2, 3),
(8, 2, 6),
(9, 3, 1),
(10, 3, 2),
(11, 3, 5),
(12, 3, 6),
(13, 4, 2),
(14, 4, 3),
(15, 4, 6),
(16, 5, 1),
(17, 5, 2),
(18, 5, 4),
(19, 5, 5),
(20, 5, 6),
(21, 6, 1),
(22, 6, 2),
(23, 6, 6),
(24, 7, 1),
(25, 7, 2),
(26, 7, 5),
(27, 7, 6),
(28, 8, 1),
(29, 8, 2),
(30, 8, 5),
(31, 8, 6),
(32, 9, 2),
(33, 9, 3),
(34, 9, 4),
(35, 9, 5),
(36, 9, 6),
(37, 10, 2),
(38, 10, 3),
(39, 10, 6),
(40, 11, 1),
(41, 11, 2),
(42, 11, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `computer_case`
--
ALTER TABLE `computer_case`
  ADD PRIMARY KEY (`id_computer_case`);

--
-- Индексы таблицы `computer_case_name_form_factor`
--
ALTER TABLE `computer_case_name_form_factor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_computer_case` (`id_computer_case`),
  ADD KEY `id_name_form_factor` (`id_name_form_factor`);

--
-- Индексы таблицы `cooler`
--
ALTER TABLE `cooler`
  ADD PRIMARY KEY (`id_cooler`);

--
-- Индексы таблицы `cooler_name_soket`
--
ALTER TABLE `cooler_name_soket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cooler` (`id_cooler`),
  ADD KEY `id_name_soket` (`id_name_soket`);

--
-- Индексы таблицы `cooling`
--
ALTER TABLE `cooling`
  ADD PRIMARY KEY (`id_cooling`);

--
-- Индексы таблицы `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`id_hdd`);

--
-- Индексы таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id_motherboard`);

--
-- Индексы таблицы `motherboard_name_core`
--
ALTER TABLE `motherboard_name_core`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_motherboard` (`id_motherboard`),
  ADD KEY `id_name_core` (`id_name_core`);

--
-- Индексы таблицы `name_core`
--
ALTER TABLE `name_core`
  ADD PRIMARY KEY (`id_name_core`);

--
-- Индексы таблицы `name_form_factor`
--
ALTER TABLE `name_form_factor`
  ADD PRIMARY KEY (`id_name_from_factor`);

--
-- Индексы таблицы `name_soket`
--
ALTER TABLE `name_soket`
  ADD PRIMARY KEY (`id_name_soket`);

--
-- Индексы таблицы `power_supply`
--
ALTER TABLE `power_supply`
  ADD PRIMARY KEY (`id_power_supply`);

--
-- Индексы таблицы `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`id_processor`);

--
-- Индексы таблицы `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id_ram`);

--
-- Индексы таблицы `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`Id_ssd`);

--
-- Индексы таблицы `videocard`
--
ALTER TABLE `videocard`
  ADD PRIMARY KEY (`id_videocard`);

--
-- Индексы таблицы `water_cooling`
--
ALTER TABLE `water_cooling`
  ADD PRIMARY KEY (`id_water_cooling`);

--
-- Индексы таблицы `water_cooling_name_soket`
--
ALTER TABLE `water_cooling_name_soket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_name_soket` (`id_name_soket`),
  ADD KEY `id_water_cooling` (`id_water_cooling`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `computer_case`
--
ALTER TABLE `computer_case`
  MODIFY `id_computer_case` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `computer_case_name_form_factor`
--
ALTER TABLE `computer_case_name_form_factor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `cooler_name_soket`
--
ALTER TABLE `cooler_name_soket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `cooling`
--
ALTER TABLE `cooling`
  MODIFY `id_cooling` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `hdd`
--
ALTER TABLE `hdd`
  MODIFY `id_hdd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id_motherboard` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `motherboard_name_core`
--
ALTER TABLE `motherboard_name_core`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `name_core`
--
ALTER TABLE `name_core`
  MODIFY `id_name_core` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `name_form_factor`
--
ALTER TABLE `name_form_factor`
  MODIFY `id_name_from_factor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `name_soket`
--
ALTER TABLE `name_soket`
  MODIFY `id_name_soket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `power_supply`
--
ALTER TABLE `power_supply`
  MODIFY `id_power_supply` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `processor`
--
ALTER TABLE `processor`
  MODIFY `id_processor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `ram`
--
ALTER TABLE `ram`
  MODIFY `id_ram` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `ssd`
--
ALTER TABLE `ssd`
  MODIFY `Id_ssd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `videocard`
--
ALTER TABLE `videocard`
  MODIFY `id_videocard` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `water_cooling`
--
ALTER TABLE `water_cooling`
  MODIFY `id_water_cooling` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `water_cooling_name_soket`
--
ALTER TABLE `water_cooling_name_soket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `computer_case_name_form_factor`
--
ALTER TABLE `computer_case_name_form_factor`
  ADD CONSTRAINT `computer_case_name_form_factor_ibfk_1` FOREIGN KEY (`id_computer_case`) REFERENCES `computer_case` (`id_computer_case`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `computer_case_name_form_factor_ibfk_2` FOREIGN KEY (`id_name_form_factor`) REFERENCES `name_form_factor` (`id_name_from_factor`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `cooler_name_soket`
--
ALTER TABLE `cooler_name_soket`
  ADD CONSTRAINT `cooler_name_soket_ibfk_1` FOREIGN KEY (`id_cooler`) REFERENCES `cooling` (`id_cooling`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cooler_name_soket_ibfk_2` FOREIGN KEY (`id_name_soket`) REFERENCES `name_soket` (`id_name_soket`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `motherboard_name_core`
--
ALTER TABLE `motherboard_name_core`
  ADD CONSTRAINT `motherboard_name_core_ibfk_1` FOREIGN KEY (`id_motherboard`) REFERENCES `motherboard` (`id_motherboard`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `motherboard_name_core_ibfk_2` FOREIGN KEY (`id_name_core`) REFERENCES `name_core` (`id_name_core`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `water_cooling_name_soket`
--
ALTER TABLE `water_cooling_name_soket`
  ADD CONSTRAINT `water_cooling_name_soket_ibfk_2` FOREIGN KEY (`id_name_soket`) REFERENCES `name_soket` (`id_name_soket`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `water_cooling_name_soket_ibfk_3` FOREIGN KEY (`id_water_cooling`) REFERENCES `water_cooling` (`id_water_cooling`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
