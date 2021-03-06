-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2019 a las 17:16:56
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
DROP SCHEMA IF EXISTS `test_php`;
CREATE SCHEMA IF NOT EXISTS `test_php` DEFAULT CHARACTER SET  utf8 COLLATE utf8_spanish2_ci;
USE `test_php`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `nombre_usuario` text NOT NULL,
  `carrera` text NOT NULL,
  `no_cuenta` int(10) NOT NULL,
  `direcion` text NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(8) NOT NULL,
  `FechaRegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Permisos` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- engine el tiepo de motor de base de datos 
--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nombre_usuario`, `carrera`, `no_cuenta`, `direcion`, `telefono`, `email`, `password`, `FechaRegistro`, `Permisos`) VALUES
('Alberto Gonzalez Ledesm', 'ICO', 8411868, 'Enrique Torres Calderon #37', '5539554880', 'gonzalez_alberto@hotmail.com', '123456', '2018-10-30 20:22:01', 2),
('Fernando Sánchez Beristain', 'ICO', 413010836, 'Calle Monterrey #11 Col Jardines de Guadalupe C.P. 57140 Cd. Nezahualcoyotl Estado de México', '5539229638', 'fernandoberistain2@hotmail.com', '123456', '2018-10-30 20:05:40', 2),
('Aaron Velazco Agustin', 'ICO', 413112576, 'Nube 8 Col. La peñas', '5539229638', 'fernandoberistain2@hotmail.com', '123456', '2018-10-30 20:05:26', 1),
('David Mendoza Calette', 'ico', 1234567890, 'carmen no 186', '56406718', 'calette50@hotmail.com', 'citlali', '2018-10-26 15:25:33', 2), 
('Diego Amor Taboada', 'ICO', 419888777, 'Palomas #8', '5567899901', 'Diego@gmail.com','4906159', '2017-9-11 19:00:09', 2), 
('Raul Estrada Zermeño', 'Derecho ', 413976127, 'Extensión Douglas', '5567766901', 'Raul-estrada@gmail.com','121212', '2019-07-29 15:55:55', 3),
('Arturo Becerra Muñoz ', 'Medicina ', 41546227, 'AVENIDA NIÑOS HEROES NO. 3', '5557439423 ', 'Becerra@gmail.com','94382984', '2015-01-12 13:45:55', 2),
('Luis Jesus Angeles ', 'Medicina ', 41345678, 'AV. LIC. VICENTE AGUIRRE', '5518628903 ', 'Luicillo@gmail.com','94234233', '2018-08-12 11:55:23', 1),
('Josue Demian Avila  ', 'Derecho ', 41322999, 'VILLA DE GUADALUPE', '5556678923 ', 'Demiancin@gmail.com','345435984', '2019-12-12 14:33:22', 1),
('Alan Daniel Arredondo ', 'Medicina ', 41877297, 'IGNACIO ALLENDE NO.20', '5589650823', 'alan_daniel@gmail.com','438543754', '2020-11-17 11:25:15', 1);


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`no_cuenta`);
COMMIT;

-- COMMIT confirma la transacción actual, haciendo que sus cambios sean permanentes.

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

