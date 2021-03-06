-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2020 a las 23:08:49
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdhotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`idContacto`, `nombre`, `email`, `telefono`, `mensaje`, `estado`) VALUES
(1, 'jose', 'josejjm@hotmail.com', '03571-15555555', 'Quería consultarles si hay habitaciones stand ar', 'pendiente'),
(2, 'jere', 'jere@gmail.com', '0351-15555555', 'Quería consultarles si hay habitaciones stand con vista al lago', 'contestado'),
(3, 'user1', 'qweqwe@hotmail.com', '5161165', 'queriasdasdqasd', 'contestado'),
(5, 'asdasd', 'qwdqwd', 'qwdqd', 'qwdqwd', 'pendiente'),
(8, 'user1', '123', '1232123', 'Hola asdas asdas das asd asd asd asd asd asd asdasd asd asd asd asd asd asd asd asdasd asd ', 'pendiente'),
(9, 'jose', 'asdqwe@hotmail.com', '241241', 'asdasdzxxc', 'pendiente'),
(10, 'jose2', 'asasd', '123123123', 'asdasdasd', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `idHabitacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`idHabitacion`, `nombre`, `precio`) VALUES
(1, 'Habitacion Standar', 500),
(2, 'Suite de Lujo', 900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res`
--

CREATE TABLE `res` (
  `id` int(11) NOT NULL,
  `fechae` varchar(50) NOT NULL,
  `fechas` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `habitacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `res`
--

INSERT INTO `res` (`id`, `fechae`, `fechas`, `nombre`, `habitacion`) VALUES
(1, '2020-10-09', '2020-10-10', 'jose', 'Habitacion Standar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `idUsu` int(11) NOT NULL,
  `idHab` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idReserva`, `idUsu`, `idHab`, `estado`) VALUES
(1, 1, 0, 'vacia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `direccion`, `email`, `usuario`, `clave`, `nivel`) VALUES
(1, 'juan jose martinez', 'embalse', 'josejjm@hotmail.com', 'jose', '123', 'normal'),
(2, 'jere tardivo', 'cordoba', 'jere@hotmail.com', 'jere', '321', 'admin'),
(40, 'asdad', 'asdad', 'wsdasd', 'asdasd', 'asdasd', 'normal'),
(41, 'asdad', 'asdad', 'wsdasd', 'asdasd', 'asdasd', 'normal'),
(42, 'qwdqwd', 'qwdqwd', 'qwdqwd', 'qwdqwd', 'qwdqwd', 'normal'),
(43, 'prueba', 'asd', 'qwe', 'qwe', '123', 'normal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`idHabitacion`);

--
-- Indices de la tabla `res`
--
ALTER TABLE `res`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idUsu` (`idUsu`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idContacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `idHabitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `res`
--
ALTER TABLE `res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idUsu`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
