-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para mibasemoises
CREATE DATABASE IF NOT EXISTS `mibasemoises` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mibasemoises`;

-- Volcando estructura para tabla mibasemoises.nota
CREATE TABLE IF NOT EXISTS `nota` (
  `ci` int(11) DEFAULT NULL,
  `sigla` char(7) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nota1` decimal(10,0) DEFAULT NULL,
  `nota2` decimal(10,0) DEFAULT NULL,
  `nota3` decimal(10,0) DEFAULT NULL,
  `notafinal` decimal(10,0) DEFAULT NULL,
  KEY `FK_nota_persona` (`ci`),
  CONSTRAINT `FK_nota_persona` FOREIGN KEY (`ci`) REFERENCES `persona` (`ci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla mibasemoises.nota: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES
	(9065168, 'INF-111', 30, 20, 15, 65),
	(9065168, 'INF-112', 20, 20, 30, 70),
	(9065168, 'INF-113', 30, 30, 20, 80),
	(9065168, 'INF-114', 20, 20, 15, 55),
	(9065168, 'INF-115', 20, 20, 20, 60),
	(9065168, 'INF-116', 30, 30, 25, 85),
	(9065168, 'LAB-111', 25, 30, 30, 85),
	(7984561, 'INF-111', 20, 25, 20, 65),
	(7984561, 'INF-112', 15, 30, 20, 65),
	(7984561, 'INF-113', 15, 15, 25, 55),
	(7984561, 'INF-114', 20, 25, 30, 75),
	(7984561, 'INF-115', 20, 10, 30, 60),
	(7984561, 'INF-116', 30, 20, 20, 70),
	(7984561, 'LAB-111', 20, 30, 30, 80),
	(4561237, 'INF-111', 20, 25, 25, 70),
	(4561237, 'INF-112', 15, 20, 25, 60),
	(4561237, 'INF-113', 20, 25, 25, 70),
	(4561237, 'INF-114', 20, 25, 30, 75),
	(4561237, 'INF-115', 20, 20, 35, 75),
	(4561237, 'INF-116', 20, 20, 20, 60),
	(4561237, 'LAB-111', 30, 30, 30, 90),
	(5829641, 'INF-111', 20, 20, 20, 60),
	(5829641, 'INF-112', 20, 25, 25, 70),
	(5829641, 'INF-113', 20, 25, 30, 75),
	(5829641, 'INF-114', 25, 20, 20, 65),
	(5829641, 'INF-115', 30, 30, 20, 80),
	(5829641, 'INF-116', 20, 20, 20, 60),
	(5829641, 'LAB-111', 25, 20, 20, 65),
	(9875462, 'INF-111', 20, 10, 25, 55),
	(9875462, 'INF-112', 20, 25, 20, 65),
	(9875462, 'INF-113', 10, 25, 30, 65),
	(9875462, 'INF-114', 25, 20, 20, 65),
	(9875462, 'INF-115', 30, 30, 20, 80),
	(9875462, 'INF-116', 20, 20, 20, 60),
	(9875462, 'LAB-111', 25, 20, 20, 65),
	(6543217, 'INF-111', 30, 20, 25, 75),
	(6543217, 'INF-112', 25, 25, 20, 70),
	(6543217, 'INF-113', 10, 25, 35, 70),
	(6543217, 'INF-114', 25, 20, 20, 65),
	(6543217, 'INF-115', 30, 20, 20, 70),
	(6543217, 'INF-116', 20, 20, 20, 60),
	(6543217, 'LAB-111', 25, 20, 20, 65),
	(14725836, 'INF-111', 30, 30, 20, 90),
	(14725836, 'INF-112', 20, 20, 20, 60),
	(14725836, 'INF-113', 25, 25, 10, 60);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;

-- Volcando estructura para tabla mibasemoises.persona
CREATE TABLE IF NOT EXISTS `persona` (
  `ci` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `paterno` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `materno` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `departamento` char(2) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla mibasemoises.persona: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `materno`, `fechanac`, `departamento`) VALUES
	(1254896, 'Luis Fernando', 'Apaza', 'Ticona', '1996-08-03', '09'),
	(4561237, 'Franz Freddy', 'Larico', 'Luque', '1995-10-19', '01'),
	(5556423, 'Jarol Elio', 'Alanoca', 'Calcinas', '1998-09-14', '04'),
	(5829641, 'Ariel', 'Aruata', 'Quispe', '1998-03-26', '03'),
	(5986123, 'Cristian Turian', 'Castro', 'MAgnani', '1998-07-15', '05'),
	(6543217, 'Yerko Aquiles', 'Luna', 'Chipana', '1994-07-10', '07'),
	(7485962, 'Jorge Manuel', 'Singa', 'Silva', '1998-10-10', '08'),
	(7984561, 'Indrack Asvins', 'Vega', 'Pacheco', '1997-09-10', '01'),
	(9065168, 'Albert Jhonatan', 'Quisbert', 'Mujica', '1996-05-23', '02'),
	(9875462, 'Marlon', 'Cordero', 'Luque', '1992-06-10', '06'),
	(11023654, 'Enrique', 'Apaza', 'Carrillo', '1995-03-26', '02'),
	(12345678, 'Juan', 'Perez', 'Gomez', '1970-02-01', '02'),
	(14725836, 'Rodrigo Moises', 'Machaca', 'Mamani', '1996-05-10', '03');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Volcando estructura para tabla mibasemoises.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ci` int(11) DEFAULT NULL,
  `usuario` varchar(16) DEFAULT NULL,
  `contrasena` varchar(16) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  KEY `FK_usuario_persona` (`ci`),
  CONSTRAINT `FK_usuario_persona` FOREIGN KEY (`ci`) REFERENCES `persona` (`ci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla mibasemoises.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`ci`, `usuario`, `contrasena`, `rol`) VALUES
	(12345678, 'juanpg', 'juan123', 0),
	(9065168, 'albertjhon', 'nickelodeon', 1),
	(7984561, 'indrackvp', 'indrack123', 1),
	(4561237, 'franzll', 'franz123', 1),
	(14725836, 'moisesmm', 'moisesmm', 1),
	(11023654, 'enriqueac', 'enrique123', 1),
	(6543217, 'yerkolc', 'yerko123', 1),
	(9875462, 'marloncl', 'marlon123', 1),
	(5829641, 'arielaq', 'ariel123', 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
