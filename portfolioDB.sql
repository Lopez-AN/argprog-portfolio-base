-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para portfolio
CREATE DATABASE IF NOT EXISTS `portfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portfolio`;

-- Volcando estructura para tabla portfolio.educacion
CREATE TABLE IF NOT EXISTS `educacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `subtitulo` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `periodo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_base64` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla portfolio.experiencia
CREATE TABLE IF NOT EXISTS `experiencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `subtitulo` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `periodo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_base64` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla portfolio.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla portfolio.perfil
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ubicacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_base64` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_perfil` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla portfolio.proyectos
CREATE TABLE IF NOT EXISTS `proyectos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_base64` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla portfolio.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `nivel` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
