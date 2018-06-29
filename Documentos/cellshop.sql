-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-06-2018 a las 16:17:25
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cellshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Almacenamiento`
--

CREATE TABLE `Almacenamiento` (
  `almacen_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Carrito`
--

CREATE TABLE `Carrito` (
  `carrito_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Colores`
--

CREATE TABLE `Colores` (
  `color_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marcas`
--

CREATE TABLE `Marcas` (
  `marca_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Marcas`
--

INSERT INTO `Marcas` (`marca_id`, `descripcion`) VALUES
(2, 'Apple'),
(6, 'Huawei'),
(7, 'LG'),
(1, 'Samsung'),
(8, 'Sony');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Memram`
--

CREATE TABLE `Memram` (
  `mem_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modelo`
--

CREATE TABLE `Modelo` (
  `model_id` int(11) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resolucion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pantalla` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dimensiones` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bateria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `pedido_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos_Detalle`
--

CREATE TABLE `Pedidos_Detalle` (
  `peddet_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE `Productos` (
  `prod_id` int(11) NOT NULL,
  `almacen_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `usuario_id` int(11) NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechanac` date NOT NULL,
  `docunum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Almacenamiento`
--
ALTER TABLE `Almacenamiento`
  ADD PRIMARY KEY (`almacen_id`),
  ADD KEY `ALMA_IDX` (`descripcion`);

--
-- Indices de la tabla `Carrito`
--
ALTER TABLE `Carrito`
  ADD PRIMARY KEY (`carrito_id`),
  ADD KEY `CARR_IDX` (`usuario_id`),
  ADD KEY `FK_REFERENCE_7` (`prod_id`);

--
-- Indices de la tabla `Colores`
--
ALTER TABLE `Colores`
  ADD PRIMARY KEY (`color_id`),
  ADD UNIQUE KEY `COLOR_IDX` (`nombre`);

--
-- Indices de la tabla `Marcas`
--
ALTER TABLE `Marcas`
  ADD PRIMARY KEY (`marca_id`),
  ADD UNIQUE KEY `MARCA_IDX` (`descripcion`);

--
-- Indices de la tabla `Memram`
--
ALTER TABLE `Memram`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `MED_IDX` (`descripcion`);

--
-- Indices de la tabla `Modelo`
--
ALTER TABLE `Modelo`
  ADD PRIMARY KEY (`model_id`),
  ADD UNIQUE KEY `DISE_IDX` (`nombre`),
  ADD KEY `FK_REFERENCE_15` (`marca_id`);

--
-- Indices de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`pedido_id`),
  ADD KEY `PEDI_IDX` (`usuario_id`);

--
-- Indices de la tabla `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  ADD PRIMARY KEY (`peddet_id`),
  ADD KEY `DPED_IDX` (`prod_id`),
  ADD KEY `FK_REFERENCE_9` (`pedido_id`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `PROD_IDX` (`descripcion`),
  ADD KEY `FK_REFERENCE_11` (`almacen_id`),
  ADD KEY `FK_REFERENCE_12` (`color_id`),
  ADD KEY `FK_REFERENCE_13` (`mem_id`),
  ADD KEY `FK_REFERENCE_14` (`model_id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `UNAME` (`usuario`),
  ADD UNIQUE KEY `EMAIL_IDX` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Almacenamiento`
--
ALTER TABLE `Almacenamiento`
  MODIFY `almacen_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Carrito`
--
ALTER TABLE `Carrito`
  MODIFY `carrito_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Colores`
--
ALTER TABLE `Colores`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Memram`
--
ALTER TABLE `Memram`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Modelo`
--
ALTER TABLE `Modelo`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `pedido_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  MODIFY `peddet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Productos`
--
ALTER TABLE `Productos`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Carrito`
--
ALTER TABLE `Carrito`
  ADD CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`USUARIO_ID`) REFERENCES `Usuarios` (`USUARIO_ID`),
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`PROD_ID`) REFERENCES `Productos` (`PROD_ID`);

--
-- Filtros para la tabla `Modelo`
--
ALTER TABLE `Modelo`
  ADD CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`MARCA_ID`) REFERENCES `Marcas` (`MARCA_ID`);

--
-- Filtros para la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`USUARIO_ID`) REFERENCES `Usuarios` (`USUARIO_ID`);

--
-- Filtros para la tabla `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`PROD_ID`) REFERENCES `Productos` (`PROD_ID`),
  ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`PEDIDO_ID`) REFERENCES `Pedidos` (`PEDIDO_ID`);

--
-- Filtros para la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`almacen_id`) REFERENCES `Almacenamiento` (`almacen_id`),
  ADD CONSTRAINT `FK_REFERENCE_12` FOREIGN KEY (`COLOR_ID`) REFERENCES `Colores` (`COLOR_ID`),
  ADD CONSTRAINT `FK_REFERENCE_13` FOREIGN KEY (`MEM_ID`) REFERENCES `Memram` (`MEM_ID`),
  ADD CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`MODEL_ID`) REFERENCES `Modelo` (`MODEL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
