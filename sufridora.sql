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
-- Database: `sufridora`
--

-- --------------------------------------------------------

--
-- Table structure for table `armours`
--

CREATE TABLE `armours` (
  `id_armour` int(10) UNSIGNED NOT NULL,
  `armour` char(24) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `class` char(16) DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `physic_defense` float DEFAULT NULL,
  `durability` float DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `disasamble` tinyint(1) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `notoriety` int(11) DEFAULT NULL,
  `id_armour_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armours`
--

INSERT INTO `armours` (`id_armour`, `armour`, `weight`, `class`, `magic_defense`, `physic_defense`, `durability`, `lvl`, `cost`, `quality`, `rarity`, `description`, `disasamble`, `width`, `height`, `notoriety`, `id_armour_type`) VALUES
(1, 'Chaleco anti-balas', 40, 'Rockero', 5, 54, 242, 10, 213, 8, 7, 'Chaleco que perteneció a alguien legendario.', 1, 1, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `armours_materials`
--

CREATE TABLE `armours_materials` (
  `id_armour_material` int(10) UNSIGNED NOT NULL,
  `id_armour` int(10) UNSIGNED DEFAULT NULL,
  `id_material` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id_material` int(10) UNSIGNED NOT NULL,
  `material` varchar(16) DEFAULT NULL,
  `color` char(6) DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `weapon` char(24) DEFAULT NULL,
  `grip` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `physic_attack` float DEFAULT NULL,
  `physic_defense` float DEFAULT NULL,
  `magic_attack` float DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_weapon_type` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `id_weapon` int(10) UNSIGNED DEFAULT NULL,
  `id_material` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armours`
--
ALTER TABLE `armours`
  ADD PRIMARY KEY (`id_armour`);

--
-- Indexes for table `armours_materials`
--
ALTER TABLE `armours_materials`
  ADD PRIMARY KEY (`id_armour_material`),
  ADD KEY `id_armour` (`id_armour`),
  ADD KEY `id_material` (`id_material`);

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
  ADD PRIMARY KEY (`id_weapon_material`),
  ADD KEY `id_weapon` (`id_weapon`),
  ADD KEY `id_material` (`id_material`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armours`
--
ALTER TABLE `armours`
  MODIFY `id_armour` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `armours_materials`
--
ALTER TABLE `armours_materials`
  MODIFY `id_armour_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_weapon_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `armours_materials`
--
ALTER TABLE `armours_materials`
  ADD CONSTRAINT `armours_materials_ibfk_1` FOREIGN KEY (`id_armour`) REFERENCES `armours` (`id_armour`),
  ADD CONSTRAINT `armours_materials_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `materials` (`id_material`);

--
-- Constraints for table `weapons_materials`
--
ALTER TABLE `weapons_materials`
  ADD CONSTRAINT `weapons_materials_ibfk_1` FOREIGN KEY (`id_weapon`) REFERENCES `weapons` (`id_weapon`),
  ADD CONSTRAINT `weapons_materials_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `materials` (`id_material`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
