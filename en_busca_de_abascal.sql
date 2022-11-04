-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2022 at 06:58 AM
-- Server version: 10.5.17-MariaDB-1:10.5.17+maria~deb11
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `en_busca_de_abascal`
--

-- --------------------------------------------------------

--
-- Table structure for table `armors`
--

CREATE TABLE `armors` (
  `id_armor` int(10) UNSIGNED NOT NULL,
  `armor` char(24) COLLATE utf8_spanish_ci NOT NULL,
  `weight` float NOT NULL,
  `class` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `magic_defense` float NOT NULL,
  `physich_defense` float NOT NULL,
  `durability` float NOT NULL,
  `level` int(11) NOT NULL,
  `cost` float NOT NULL,
  `quality` int(11) NOT NULL,
  `rarity` int(11) NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `disasamble` tinyint(1) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `notoriety` int(11) NOT NULL,
  `id_armor_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `armors`
--

INSERT INTO `armors` (`id_armor`, `armor`, `weight`, `class`, `magic_defense`, `physich_defense`, `durability`, `level`, `cost`, `quality`, `rarity`, `description`, `disasamble`, `width`, `height`, `notoriety`, `id_armor_type`) VALUES
(1, 'Mementomori', 324, 'fugitivo', 323, 232, 1323420, 2323, 323, 10, 10, 'La vestimenta del guerrero legendario, Chifumi.', 0, 5, 5, 1, 1),
(2, 'capa de Yoshi', 32, 'pandillero', 333, 232, 32323, 45, 234, 9, 8, 'La capa del lider de una pandilla muy poderosa.', 1, 2, 2, 7, 1),
(3, 'Chanclas de Mcqueen', 0.2, 'rapido', 20, 20, 600, 30, 120, 100, 100, 'FIAAAAAAAUUUUUNNNNN', 1, 1, 1, 90, 2);

-- --------------------------------------------------------

--
-- Table structure for table `armors_materials`
--

CREATE TABLE `armors_materials` (
  `id_armor_material` int(10) UNSIGNED NOT NULL,
  `id_armor` int(11) NOT NULL,
  `id_material` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `armors_materials`
--

INSERT INTO `armors_materials` (`id_armor_material`, `id_armor`, `id_material`) VALUES
(1, 1, 2),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `armors_types`
--

CREATE TABLE `armors_types` (
  `id_armor_types` int(10) UNSIGNED NOT NULL,
  `id_armor` int(11) NOT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` varchar(16) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `armors_types`
--

INSERT INTO `armors_types` (`id_armor_types`, `id_armor`, `description`, `icon`) VALUES
(1, 1, 'Cazador', 'fdsagas'),
(2, 2, 'Mercenario.', 'sdga');

-- --------------------------------------------------------

--
-- Table structure for table `armours`
--

CREATE TABLE `armours` (
  `id_armours` int(10) UNSIGNED NOT NULL,
  `armour` char(24) COLLATE utf8_spanish_ci DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `class` char(16) COLLATE utf8_spanish_ci DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `physic_defense` float DEFAULT NULL,
  `durability` float DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `disasamble` tinyint(1) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `notoriety` int(11) DEFAULT NULL,
  `id_armour_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `armours`
--

INSERT INTO `armours` (`id_armours`, `armour`, `weight`, `class`, `magic_defense`, `physic_defense`, `durability`, `lvl`, `cost`, `quality`, `rarity`, `description`, `disasamble`, `width`, `height`, `notoriety`, `id_armour_type`) VALUES
(1, 'Chaleco anti-balas', 40, 'Rockero', 5, 54, 242, 10, 213, 8, 7, 'Chaleco que perteneció a alguien legendario.', 1, 1, 1, 2, 3),
(2, 'Chaleco anti-balas', 40, 'Rockero', 5, 54, 242, 10, 213, 8, 7, 'Chaleco que perteneció a alguien legendario.', 1, 1, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `armours_materials`
--

CREATE TABLE `armours_materials` (
  `id_armour_material` int(10) UNSIGNED NOT NULL,
  `id_armour` int(10) UNSIGNED NOT NULL,
  `id_material` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `armours_materials`
--

INSERT INTO `armours_materials` (`id_armour_material`, `id_armour`, `id_material`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 2, 2),
(4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `armours_types`
--

CREATE TABLE `armours_types` (
  `id_armour_type` int(10) UNSIGNED NOT NULL,
  `type` char(22) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` char(16) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_armour` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `armours_types`
--

INSERT INTO `armours_types` (`id_armour_type`, `type`, `description`, `icon`, `id_armour`) VALUES
(1, 'paladin', 'yeah', 'aladin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `characters_weapons`
--

CREATE TABLE `characters_weapons` (
  `id_character_weapon` int(10) UNSIGNED NOT NULL,
  `id_char` int(10) UNSIGNED DEFAULT NULL,
  `id_weapon` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chars`
--

CREATE TABLE `chars` (
  `id_char` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `age` int(11) NOT NULL,
  `race` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `gender` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `class` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `origin` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chars_armors`
--

CREATE TABLE `chars_armors` (
  `id_char_armors` int(10) UNSIGNED NOT NULL,
  `id_char` int(11) NOT NULL,
  `id_armor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `chars_armors`
--

INSERT INTO `chars_armors` (`id_char_armors`, `id_char`, `id_armor`) VALUES
(1, 1, 2),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chars_items`
--

CREATE TABLE `chars_items` (
  `id_char_weapons` int(10) UNSIGNED NOT NULL,
  `id_char` int(11) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `chars_items`
--

INSERT INTO `chars_items` (`id_char_weapons`, `id_char`, `id_item`) VALUES
(1, 1, 1),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `item` char(24) COLLATE utf8_spanish_ci DEFAULT NULL,
  `consumible` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `clave` tinyint(1) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `uses` int(11) DEFAULT NULL,
  `fusable` tinyint(1) DEFAULT NULL,
  `disasamble` tinyint(1) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `id_item_type` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_item`, `item`, `consumible`, `description`, `cost`, `duration`, `clave`, `weight`, `uses`, `fusable`, `disasamble`, `width`, `height`, `id_item_type`) VALUES
(1, 'Manzana', 1, 'Roja amarilla o verde, como un semáforo', 2, 1, 0, 1, 1, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items_types`
--

CREATE TABLE `items_types` (
  `id_item_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` varchar(16) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `items_types`
--

INSERT INTO `items_types` (`id_item_type`, `type`, `description`, `icon`) VALUES
(1, 'comida', 'se come', 'icono.png');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id_material` int(10) UNSIGNED NOT NULL,
  `material` varchar(16) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color` char(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id_material`, `material`, `color`, `cost`) VALUES
(1, 'Obsidiana', '000000', 40),
(2, 'Madera', 'ddeeaa', 10),
(3, 'Carne', 'ffff00', 5),
(4, 'Pana', 'ffdddd', 50),
(5, 'Goma sagrada', 'ffffff', 999),
(6, 'Piedra', 'cccccc', 1),
(7, 'Cuero', 'ddddaa', 20),
(8, 'Bandera España', 'ESPAÑA', 2030),
(9, 'Plumas de ángel', 'ffffff', 10000),
(10, 'Materia oscura', '000000', 10000),
(11, 'Hueso', 'dddddd', 10),
(12, 'Agua', '0000ff', 1),
(13, 'Lava', 'ff0000', 500);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id_weapon` int(10) UNSIGNED NOT NULL,
  `weapon` char(24) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grip` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `physic_attack` float DEFAULT NULL,
  `physic_defense` float DEFAULT NULL,
  `magic_attack` float DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_weapon_type` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id_weapon`, `weapon`, `grip`, `durability`, `distance`, `quality`, `physic_attack`, `physic_defense`, `magic_attack`, `magic_defense`, `description`, `id_weapon_type`) VALUES
(1, 'Sable GXT', 1, 413, 21, 7, 2424, 242, 213, 231, 'Objeto muy antiguo.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `weapons_materials`
--

CREATE TABLE `weapons_materials` (
  `id_weapon_material` int(10) UNSIGNED NOT NULL,
  `id_weapon` int(10) UNSIGNED NOT NULL,
  `id_material` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `weapons_materials`
--

INSERT INTO `weapons_materials` (`id_weapon_material`, `id_weapon`, `id_material`) VALUES
(1, 2, 1),
(2, 1, 4),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `weapons_types`
--

CREATE TABLE `weapons_types` (
  `id_weapon_type` int(10) UNSIGNED NOT NULL,
  `type` char(22) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` char(16) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_weapon` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `weapons_types`
--

INSERT INTO `weapons_types` (`id_weapon_type`, `type`, `description`, `icon`, `id_weapon`) VALUES
(1, 'melee', 'cuerpo a cuerpo', 'punch.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armors`
--
ALTER TABLE `armors`
  ADD PRIMARY KEY (`id_armor`);

--
-- Indexes for table `armors_materials`
--
ALTER TABLE `armors_materials`
  ADD PRIMARY KEY (`id_armor_material`);

--
-- Indexes for table `armors_types`
--
ALTER TABLE `armors_types`
  ADD PRIMARY KEY (`id_armor_types`);

--
-- Indexes for table `armours`
--
ALTER TABLE `armours`
  ADD PRIMARY KEY (`id_armours`);

--
-- Indexes for table `armours_materials`
--
ALTER TABLE `armours_materials`
  ADD PRIMARY KEY (`id_armour_material`);

--
-- Indexes for table `armours_types`
--
ALTER TABLE `armours_types`
  ADD PRIMARY KEY (`id_armour_type`);

--
-- Indexes for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  ADD PRIMARY KEY (`id_character_weapon`),
  ADD KEY `id_char` (`id_char`),
  ADD KEY `id_weapon` (`id_weapon`);

--
-- Indexes for table `chars`
--
ALTER TABLE `chars`
  ADD PRIMARY KEY (`id_char`);

--
-- Indexes for table `chars_armors`
--
ALTER TABLE `chars_armors`
  ADD PRIMARY KEY (`id_char_armors`);

--
-- Indexes for table `chars_items`
--
ALTER TABLE `chars_items`
  ADD PRIMARY KEY (`id_char_weapons`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_item_type` (`id_item_type`);

--
-- Indexes for table `items_types`
--
ALTER TABLE `items_types`
  ADD PRIMARY KEY (`id_item_type`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id_material`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id_weapon`);

--
-- Indexes for table `weapons_materials`
--
ALTER TABLE `weapons_materials`
  ADD PRIMARY KEY (`id_weapon_material`);

--
-- Indexes for table `weapons_types`
--
ALTER TABLE `weapons_types`
  ADD PRIMARY KEY (`id_weapon_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armors`
--
ALTER TABLE `armors`
  MODIFY `id_armor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `armors_materials`
--
ALTER TABLE `armors_materials`
  MODIFY `id_armor_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `armors_types`
--
ALTER TABLE `armors_types`
  MODIFY `id_armor_types` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `armours`
--
ALTER TABLE `armours`
  MODIFY `id_armours` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `armours_materials`
--
ALTER TABLE `armours_materials`
  MODIFY `id_armour_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `armours_types`
--
ALTER TABLE `armours_types`
  MODIFY `id_armour_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  MODIFY `id_character_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chars`
--
ALTER TABLE `chars`
  MODIFY `id_char` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chars_armors`
--
ALTER TABLE `chars_armors`
  MODIFY `id_char_armors` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chars_items`
--
ALTER TABLE `chars_items`
  MODIFY `id_char_weapons` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items_types`
--
ALTER TABLE `items_types`
  MODIFY `id_item_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weapons_materials`
--
ALTER TABLE `weapons_materials`
  MODIFY `id_weapon_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weapons_types`
--
ALTER TABLE `weapons_types`
  MODIFY `id_weapon_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  ADD CONSTRAINT `characters_weapons_ibfk_1` FOREIGN KEY (`id_char`) REFERENCES `chars` (`id_char`),
  ADD CONSTRAINT `characters_weapons_ibfk_2` FOREIGN KEY (`id_weapon`) REFERENCES `weapons` (`id_weapon`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`id_item_type`) REFERENCES `items_types` (`id_item_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
