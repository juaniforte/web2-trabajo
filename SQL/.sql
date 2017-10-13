-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:8889
-- Tiempo de generación: 13-10-2017 a las 16:37:12
-- Versión del servidor: 5.5.42
-- Versión de PHP: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `track_day`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`, `nombre`) VALUES
(22, 'A1', 'Tracción delantera, motor aspirado, ruedas legales en calle'),
(23, 'A2', 'Tracción delantera, motor sobrealimentado, ruedas legales en calle'),
(25, 'B1', 'Tracción trasera, ruedas legales en calle'),
(28, 'B2', 'Tracción trasera, ruedas slicks'),
(29, 'C1', 'Tracción integral, ruedas legales en calle'),
(30, 'C2', ' Tracción integral, ruedas slicks');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `permiso` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `password`, `nombre`, `apellido`, `permiso`) VALUES
(4, 'nacho', '$2y$10$EG6rO7zPbnS5qnB6keiZdeyX7caAoC1r/xX/JYxNcKGNH8.6mVyY6', 'ignacio', 'jonas', 1),
(6, 'admin', '$2y$10$lNUpWtLQjypr450y6kbpnu29rmgd7J1SBNLoivdqxE1jP9nNuIzfu', 'admin', 'admin', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `potencia` int(11) NOT NULL,
  `fk_id_categoria` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `nombre`, `potencia`, `fk_id_categoria`) VALUES
(45, 'Ford Focus', 145, 22),
(46, 'VW Vento', 211, 23),
(47, 'Bmw M3', 420, 25),
(48, 'Toyota 86', 328, 28),
(49, 'Audi RS5', 450, 29),
(50, 'Nissan GT-R', 565, 30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `fk_id_categoria` (`fk_id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `Categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;
