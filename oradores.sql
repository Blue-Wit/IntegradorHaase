-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2023 a las 21:31:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oradores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logueo`
--

CREATE TABLE `logueo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `contrasenia` varchar(10) NOT NULL,
  `mail` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `logueo`
--

INSERT INTO `logueo` (`id`, `nombre`, `apellido`, `dni`, `contrasenia`, `mail`) VALUES
(1, 'alumno', 'lopez', '36111111', '1234', 'alumno@alumno.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `cantidad` int(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `reserva` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id`, `nombre`, `apellido`, `email`, `cantidad`, `categoria`, `fecha`, `reserva`) VALUES
(1, 'Pepe', 'Rodriguez', 'alumno@alumno.com', 1, '2', '2023-12-18', 1),
(2, 'Pepe', 'Rodriguez', 'alumno@alumno.com', 1, '2', '2023-12-18', 1),
(3, 'Juan', 'Perez', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(4, 'Pepe', 'Perez', 'alumno@alumno.com', 3, '3', '2023-12-18', 1),
(5, 'Pepe', 'Perez', 'alumno@alumno.com', 3, '3', '2023-12-18', 1),
(6, 'Juan', 'Perez', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(7, 'Juan', 'Perez', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(8, 'Juan', 'Perez', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(9, 'Juan', 'Perez', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(10, 'Juan', 'Perez', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(11, 'Juan', 'Gomez', 'alumno@alumno.com', 3, '1', '2023-12-18', 1),
(12, 'Juan', 'Gomez', 'alumno@alumno.com', 3, '1', '2023-12-18', 1),
(14, 'monica', 'argento', 'alumno@alumno.com', 2, '1', '2023-12-18', 1),
(18, 'Maria', 'Sosa', 'alumno@alumno.com', 1, '1', '2023-12-18', 1),
(19, 'Maria', 'Sosa', 'alumno@alumno.com', 1, '1', '2023-12-19', 1),
(20, 'Maria', 'Sosa', 'alumno@alumno.com', 1, '1', '2023-12-19', 1),
(21, 'Maria', 'Sosa', 'alumno@alumno.com', 1, '1', '2023-12-19', 1),
(22, 'juan', 'gomez', 'alumno@alumno.com', 2, '0', '2023-12-19', 1),
(23, 'roque', 'pereyra', 'alumno@alumno.com', 2, '0', '2023-12-19', 1),
(26, 'rosa', 'asdad', 'alumno@alumno.com', 2, '0', '2023-12-19', 1),
(51, 'Pepe', 'Argento', 'w@w.com', 2, '0', '2023-12-19', 0),
(52, 'a', 'a', 'w@w.com', 2, '0', '2023-12-19', 0),
(53, 'a', 'a', 'w@w.com', 2, '0', '2023-12-19', 1),
(54, 'null', 'null', 'w@w.com', 4, '--Seleccione--', '2023-12-19', 0),
(55, 'a', 'a', 'w@w.com', 4, '0', '2023-12-19', 1),
(56, 'a', 'a', 'w@w.com', 2, '0', '2023-12-19', 0),
(57, 'a', 'a', 'w@w.com', 2, '0', '2023-12-19', 0),
(58, 'a', 'a', 'w@w.com', 2, '1', '2023-12-19', 1),
(59, 'a', 'a', 'w@w.com', 2, '1', '2023-12-19', 1),
(60, 'a', 'a', 'w@w.com', 2, '1', '2023-12-19', 1),
(61, 'a', 'a', 'w@w.com', 2, '1', '2023-12-19', 1),
(62, 'B', 'B', 'w@w.com', 2, '1', '2023-12-19', 1),
(63, 'a', 'a', 'alumno@alumno.com', 1, '2', '2023-12-21', 0),
(64, 'a', 'a', 'w@w.com', 4, '3', '2023-12-21', 0),
(65, 'pepe', 'argento', 'w@w.com', 3, '1', '2023-12-21', 0),
(66, 'Ayrton', 'Haase', 'w@w.com', 3, '3', '2023-12-21', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logueo`
--
ALTER TABLE `logueo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `logueo`
--
ALTER TABLE `logueo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
