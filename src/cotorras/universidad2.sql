-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2023 a las 15:27:34
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidad2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `fecNac` date NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nombre`, `apellido`, `fecNac`, `activo`) VALUES
(1, 'jose ', 'lucero', '2020-09-20', 1),
(3, 'PEPA', '', '1998-05-11', 1),
(6, 'Josefu', '', '1998-05-14', 1),
(8, 'Josefa', 'Suarez', '1998-05-14', 1),
(10, 'Mariano Sosa', '', '1990-10-19', 0),
(11, 'Martin Romero Gonzalez', '', '1973-11-22', 1),
(12, 'manolito', '', '2022-10-10', 1),
(13, 'Jorge', 'Martinez', '2000-02-03', 1),
(14, 'Bernanrda', 'Quiroga', '2000-02-23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `idInscripcion` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `nota` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`idInscripcion`, `idAlumno`, `idMateria`, `nota`) VALUES
(25, 3, 18, 8),
(26, 8, 21, 5),
(27, 8, 21, 5),
(28, 3, 1, 10),
(31, 10, 23, 7),
(34, 1, 1, 0),
(35, 1, 24, 0),
(36, 1, 23, 0),
(37, 1, 21, 0),
(38, 1, 20, 0),
(39, 1, 19, 0),
(40, 1, 18, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idMateria`, `nombre`) VALUES
(1, 'Laboratorio'),
(18, 'Laboratorio2'),
(19, 'Laboratorio3'),
(20, 'Laboratorio3'),
(21, 'Laboratorio11'),
(23, 'Guitarra'),
(24, 'libre');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`idInscripcion`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `usa` (`idMateria`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idMateria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `idInscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
