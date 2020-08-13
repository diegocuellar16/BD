-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2020 a las 03:43:08
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catravels`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL,
  `Nombre_Empresa` varchar(250) NOT NULL,
  `Email_Empresa` varchar(50) NOT NULL,
  `Nombre_Representante` varchar(250) NOT NULL,
  `Email_Representante` varchar(50) NOT NULL,
  `Contraseña` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `Nombre_Empresa`, `Email_Empresa`, `Nombre_Representante`, `Email_Representante`, `Contraseña`) VALUES
(1, 'UES', 'sebastian.sasa@gmail.com', 'Diego', 'cuellarmelendez', '0UfkMXdS1kpzjyP5RxHFAA==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `Id_empresa` int(11) NOT NULL,
  `Nombre_empresa` varchar(250) NOT NULL,
  `Ubicacion_Empresa` varchar(15) NOT NULL,
  `Descripcion_empresa` varchar(600) NOT NULL,
  `Promocion_mes` varchar(600) NOT NULL,
  `Telefono_contacto` varchar(15) NOT NULL,
  `Email_contacto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Id_usuarios` int(11) NOT NULL,
  `User_name` varchar(25) NOT NULL,
  `Nombre_Usuario` varchar(25) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Email_usuario` varchar(25) NOT NULL,
  `Numero_telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuarios`, `User_name`, `Nombre_Usuario`, `Password`, `Email_usuario`, `Numero_telefono`) VALUES
(1, '', 'Diego Cuellar', 'sPLgufdyXnVw19B6gWNiPA==', 'cuellarmelendez.diego@gma', '70002290'),
(2, 'CoreCuellar16', 'Roberto', 'AP6v1jMjK1mSDCw0e7AJOA==', 'diego.cuellarmelendez@gma', '77774848'),
(3, 'cuellar34', 'Diego Cuellar', 'sPLgufdyXnVw19B6gWNiPA==', 'manuel.cuellar@gmail.com', '78451296'),
(4, 'Cuellar12', 'Roberto Cuellar', 'sPLgufdyXnVw19B6gWNiPA==', 'diego.cuellarmelendez@gma', '77885623'),
(5, 'cuellar60', 'Estebab', 'GAyp9pMAGk93T+hSLsNlcg==', 'manuel.cuellarrr@gmail.co', '74757875');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`Id_empresa`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `Id_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
