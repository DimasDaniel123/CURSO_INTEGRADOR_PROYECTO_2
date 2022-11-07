-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2022 a las 05:12:01
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyeclinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `consultorio` varchar(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `analisis` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtrar`
--

CREATE TABLE `filtrar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apaterno` varchar(100) NOT NULL,
  `amaterno` varchar(100) NOT NULL,
  `edad` int(100) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `lugar` varchar(200) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `dni` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apaterno`, `amaterno`, `edad`, `sexo`, `lugar`, `direccion`, `telefono`, `dni`) VALUES
(2, 'Juan', 'Diaz', 'Torres', 25, 'Hombre', 'miraflores', 'av brazil 159', '987456321', 966332563),
(3, 'Ibeth', 'Yeraldine', 'Torres', 20, 'Mujer', 'Lima', 'Lima', '99999', 96633212),
(4, 'Fabrizio', 'Calderón', 'Sánchez', 20, 'Hombre', 'Lima', 'Lima', '9632163', 966332),
(5, 'Dimas', 'Coñez', 'Flores', 20, 'Hombre', 'Lima', 'Lima', '963213693', 96633285),
(7, 'Anthony', 'Luis', 'Perez', 23, 'Hombre', 'Daniel', 'Daniel', '963213693', 716181222),
(8, 'Dimas', 'Daniel', 'Flores', 20, 'Hombre', 'Dimas', 'Dimas', '9632153', 485585),
(9, 'Munares', 'Torres', 'Romero', 20, 'Hombre', 'Lima', 'Lima', '9632123', 414141),
(10, 'admin', 'admin', 'admin', 20, 'Hombre', 'admin', 'admin', '9293939', 45145151),
(11, 'Favian', 'Favian', 'Favian', 20, 'Hombre', 'Favian', 'Favian', '63969696', 110101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nreceta` int(100) NOT NULL,
  `ncitas` int(100) NOT NULL,
  `recetario` varchar(1000) NOT NULL,
  `alergias` varchar(100) NOT NULL,
  `estatura` float NOT NULL,
  `peso` float NOT NULL,
  `tiposangre` varchar(10) NOT NULL,
  `presion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`) VALUES
(1, 'anthony', 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `filtrar`
--
ALTER TABLE `filtrar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `filtrar`
--
ALTER TABLE `filtrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
