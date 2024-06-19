-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.18 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para concesionario
CREATE DATABASE IF NOT EXISTS `concesionario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `concesionario`;

-- Volcando datos para la tabla concesionario.clientes: ~6 rows (aproximadamente)
INSERT IGNORE INTO `clientes` (`DNI`, `Nombre`, `Apellido`, `Ciudad`) VALUES
	('1', 'Luis', 'Garcia', 'Madrid'),
	('2', 'Antonio', 'Lopez', 'Valencia'),
	('3', 'Juan', 'Martin', 'Madrid'),
	('4', 'Maria', 'Garcia', 'Madrid'),
	('5', 'Javier', 'Gonzalez', 'Barcelona'),
	('6', 'Ana', 'Lopez', 'Barcelona');

-- Volcando datos para la tabla concesionario.coches: ~18 rows (aproximadamente)
INSERT IGNORE INTO `coches` (`CodCoche`, `Nombre`, `modelo`) VALUES
	(1, 'IBIZA', 'GLX'),
	(2, 'IBIZA', 'GTI'),
	(3, 'IBIZA', 'GTD'),
	(4, 'TOLEDO', 'GTD'),
	(5, 'cordoba', 'GTI'),
	(6, 'MEGANE', '1.6'),
	(7, 'MEGANE', 'GTI'),
	(8, 'LAGUNA', 'GTD'),
	(9, 'LAGUNA', 'TD'),
	(10, 'ZX', '16V'),
	(11, 'ZX', 'TD'),
	(12, 'XANTIA', 'GTD'),
	(13, 'A4', '1.8'),
	(14, 'A4', '2.8'),
	(15, 'ASTRA', 'CARAVAN'),
	(16, 'ASTRA', 'GTI'),
	(17, 'CORSA', '1.4'),
	(18, '300', '316.i'),
	(19, '500', '525i'),
	(20, '700', '750i');

-- Volcando datos para la tabla concesionario.concesionarios: ~6 rows (aproximadamente)
INSERT IGNORE INTO `concesionarios` (`cifc`, `nombre`, `ciudad`) VALUES
	(1, 'ACAR', 'MADRID'),
	(2, 'BCAR', 'MADRID'),
	(3, 'CCAR', 'BARCELONA'),
	(4, 'DCAR', 'VALENCIA'),
	(5, 'ECAR', 'BILBAO');

-- Volcando datos para la tabla concesionario.distribucion: ~14 rows (aproximadamente)
INSERT IGNORE INTO `distribucion` (`cifc`, `codcoche`, `cantidad`) VALUES
	(1, 1, 3),
	(1, 5, 7),
	(1, 6, 7),
	(2, 6, 5),
	(2, 8, 10),
	(2, 9, 10),
	(3, 10, 5),
	(3, 11, 3),
	(3, 12, 5),
	(4, 13, 10),
	(4, 14, 5),
	(5, 15, 10),
	(5, 16, 20),
	(5, 17, 8);

-- Volcando datos para la tabla concesionario.marcas: ~6 rows (aproximadamente)
INSERT IGNORE INTO `marcas` (`cifm`, `nombre`, `ciudad`) VALUES
	(1, 'SEAT', 'MADRID'),
	(2, 'RENAULT', 'BARCELONA'),
	(3, 'CITROEN', 'VALENCIA'),
	(4, 'AUDI', 'MADRID'),
	(5, 'OPEL', 'BILBAO'),
	(6, 'BMW', 'BARCELONA');

-- Volcando datos para la tabla concesionario.marco: ~17 rows (aproximadamente)
INSERT IGNORE INTO `marco` (`cifm`, `codcoche`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 9),
	(3, 10),
	(3, 11),
	(3, 12),
	(4, 13),
	(4, 14),
	(5, 15),
	(5, 16),
	(5, 17),
	(6, 18),
	(6, 19),
	(6, 20);

-- Volcando datos para la tabla concesionario.ventas: ~6 rows (aproximadamente)
INSERT IGNORE INTO `ventas` (`cifc`, `dni`, `codcoche`, `color`) VALUES
	(1, '1', 1, 'Blanco'),
	(1, '2', 5, 'Rojo'),
	(2, '1', 6, 'Rojo'),
	(2, '3', 8, 'Blanco'),
	(3, '4', 11, 'Rojo'),
	(4, '5', 14, 'verde');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;