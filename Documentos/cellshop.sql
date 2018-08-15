-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-08-2018 a las 20:20:54
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

--
-- Volcado de datos para la tabla `Almacenamiento`
--

INSERT INTO `Almacenamiento` (`almacen_id`, `descripcion`) VALUES
(5, '16gb'),
(9, '1gb'),
(2, '256gb'),
(8, '2gb'),
(4, '32gb'),
(7, '4gb'),
(1, '64gb'),
(6, '8gb');

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

--
-- Volcado de datos para la tabla `Colores`
--

INSERT INTO `Colores` (`color_id`, `nombre`) VALUES
(2, 'Azul'),
(7, 'Blanco'),
(4, 'Gris'),
(1, 'Negro'),
(3, 'Purpura'),
(5, 'Rojo\r\n'),
(8, 'Rosa'),
(6, 'Verde');

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
(14, 'BlackBerry'),
(18, 'Blu'),
(6, 'Huawei'),
(15, 'Lenovo'),
(7, 'LG'),
(17, 'Motorola'),
(13, 'Nokia'),
(1, 'Samsung'),
(16, 'Sony');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Memram`
--

CREATE TABLE `Memram` (
  `mem_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Memram`
--

INSERT INTO `Memram` (`mem_id`, `descripcion`) VALUES
(5, '1,5gb'),
(3, '1gb'),
(2, '3gb'),
(1, '4gb'),
(4, '512mb');

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

--
-- Volcado de datos para la tabla `Modelo`
--

INSERT INTO `Modelo` (`model_id`, `marca_id`, `nombre`, `resolucion`, `pantalla`, `peso`, `dimensiones`, `bateria`) VALUES
(1, 1, 'Samsung Galaxy S9+', '2960 x 1440', '146.5mm / 143.3 mm', '163g', '147.7 x 68.7 x 8.5 mm', '3000 (mAh)'),
(2, 2, 'Apple iPhone X', '2436x1125', '5.8', '174g', '143.6 x 70.9 x 7.7 mm', '2716 (mAh)'),
(3, 6, 'Huawei Y5', '46.5 x 70.9 ', '1440 x 720. ', '142 g', '144 x 129 x 70.9mm ', '3.020 (mAh)'),
(4, 13, 'Nokia 7 Plus', '2.160 x 1.080 ', '400', '183 g', '158,38 x 75,64 x 9,55 ', '3.800 (mAh)'),
(5, 7, 'LG K10', '1,280x720', '5.3', '142g', '148.7x75.3x7.9mm', '2,800mAh'),
(6, 14, 'BlackBerry Key2', '1080 x 1620 ', '4.5', '168 g', '151.4 x 71.8 x 8.5 mm', '3500 mAh'),
(7, 15, 'Lenovo A5', '20 x 1440 ', '5.45', '160 g', '146.2 x 70.9 x 9.8 mm', ' 4000 mAh'),
(8, 16, 'Sony Xperia Z5', ' 1080 x 1920 ', '5.2', '154g', '146 x 72 x 7.3 mm', '2900 mAh'),
(9, 17, 'Motorola Moto z3', '1080 x 2160 ', '6.01', '156g', '156.5 x 76.5 x 6.8 mm', '3000 mAh'),
(10, 18, 'Blu R2 Plus ', ' 1080 x 1920', '5.5', '167 g', '155.7 x 77 x 9.2 mm', '3000 mAh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `pedido_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Pedidos`
--

INSERT INTO `Pedidos` (`pedido_id`, `usuario_id`, `fecha`, `monto`, `fecha_entrega`) VALUES
(2, 5, '2018-08-15', 6728000, '2018-08-15'),
(7, 5, '2018-08-15', 6900000, NULL);

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

--
-- Volcado de datos para la tabla `Pedidos_Detalle`
--

INSERT INTO `Pedidos_Detalle` (`peddet_id`, `pedido_id`, `prod_id`, `precio`) VALUES
(2, 2, 11, 2500000),
(4, 7, 3, 6900000);

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

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`prod_id`, `almacen_id`, `color_id`, `mem_id`, `model_id`, `descripcion`, `imagen`, `stock`, `precio`) VALUES
(2, 1, 1, 1, 1, '<b>Velocidad CPU:</b> 2.7GHz, 1.7GHz.<br>\r\n<b>Tipo CPU:</b> Octa-Core.<br> \r\n<b>Cámara principal:</b> 12.0 MP<br> \r\n<b>Cámara frontal:</b> 8.0 MP.<br>\r\n<b>Sistema Operativo:</b> Android', 'samsungs9plus.jpg', 0, 4800000),
(3, 1, 4, 2, 2, '<b>Velocidad CPU:</b> 2.1 GHZ.<br>\r\n<b>Tipo CPU:</b> Six-Core.<br> \r\n<b>Cámara principal:</b> 12.0 MP<br> \r\n<b>Cámara frontal:</b> 8.0 MP.<br>\r\n<b>Sistema Operativo:</b> iOS 11', 'iphonex.png', 0, 6900000),
(4, 1, 1, 1, 4, '<b>Velocidad CPU: </b>1.8GHz.<br>\r\n<b>Tipo CPU:</b> Octa-Core.<br> \r\n<b>Cámara principal:</b> 12 MP</br>\r\n<b>Cámara frontal:</b>16 MP.<br>\r\n<b>Sistema Operativo:</b> Android\r\n', 'Nokia-7-Plus.jpg', 10, 2376670),
(5, 1, 2, 1, 3, '<b>Velocidad CPU:</b> 2.35GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b>12 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'huawei-y5.jpg', 6, 1000000),
(6, 4, 2, 2, 5, '<b>Velocidad CPU:</b> 2.35GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b>12 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'Lg.jpeg', 10, 1750000),
(7, 1, 4, 1, 6, '<b>Velocidad CPU:</b> 2.35GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b>12 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'blackBerry.jpeg', 15, 3600000),
(8, 4, 8, 2, 7, '<b>Velocidad CPU:</b> 2.35GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b>12 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'lenovo.jpeg', 5, 650000),
(9, 4, 7, 2, 8, '<b>Velocidad CPU:</b> 2.35GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b>12 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'sony.jpeg', 20, 4378000),
(10, 1, 1, 1, 9, '<b>Velocidad CPU:</b> 2.35GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b>12 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'motorola.jpeg', 20, 1500000),
(11, 4, 1, 2, 10, '<b>Velocidad CPU:</b>1.3GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b> 13 MP<br> <b>Cámara frontal:</b> 13 MP.<br><b>Sistema Operativo:</b> Android 7.0', 'Blu R2 Plus.jpeg', 10, 1700000),
(12, 5, 1, 2, 1, '<b>Velocidad CPU:</b> 2.7GHz, 1.7GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b> 12.0 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'samsungs9plus.jpg', 0, 3000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `usuario_id` int(11) NOT NULL,
  `perfil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`usuario_id`, `perfil`, `apellidos`, `nombre`, `fechanac`, `docunum`, `direccion`, `ciudad`, `pais`, `telefono`, `email`, `usuario`, `contrasena`) VALUES
(1, 'cliente', 'fesfse', 'fsefse', '0015-10-09', '435453', 'fsfes', 'esfesf', 'sefsef', '3245235', 'e564ro@gmail.com', 'afwf', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'admin', 'Krauwezuk Powszuk}', 'Esteban', '0011-05-21', '4364888', 'CapitÃ¡n Miranda Calle \"C\" 12', 'CapitÃ¡n Miranda', 'Paraguay', '0983813404', 'esteban98alejandro@gmail.com', 'estebank98', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'cliente', 'Rodriguez', 'Fernando', '0008-12-08', '3214341', 'Encarnacion', 'Encarnacion', 'Paraguay', '0987685766', 'rodri45@gmail.com', 'rodri12', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'cliente', 'htrh', 'hrthrt', '0010-12-15', '354534', 'grg', 'gdrg', 'drgrdg', '3545', 'fesfsef@gmail.com', 'awfdwaf', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'cliente', 'grgreg', 'rgergre', '2016-12-09', '354543', 'fesrfe', 'esfgsef', 'esff', '3255', 'daeda@gmail.com', 'eaff', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'cliente', 'dawdwa', 'wawdad', '2018-07-03', '2352', 'adwd', 'dawd', 'dwad', '3243423', 'e56o@gmail.com', 'e56o@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'cliente', 'regr', 'ergerg', '2018-07-03', '4354', 'rgr', 'srgr', 'sgrsg', '654645', 'esto@gmail.com', 'esto@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'cliente', 'qrr', 'qrqwr', '2018-06-25', '234523', 'wdada', 'wadwad', 'dwada', '4324', 'es@gmail.com', 'awd', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'cliente', 'gonza', 'lu', '2018-08-15', '123456', 'edrfc', 'sdfcv', 'wsedfc', '23455432', 'wsdfcc@sxdcf', 'lu', '81dc9bdb52d04dc20036dbd8313ed055');

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
  MODIFY `almacen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `Carrito`
--
ALTER TABLE `Carrito`
  MODIFY `carrito_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Colores`
--
ALTER TABLE `Colores`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `Memram`
--
ALTER TABLE `Memram`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Modelo`
--
ALTER TABLE `Modelo`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `pedido_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  MODIFY `peddet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Productos`
--
ALTER TABLE `Productos`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Carrito`
--
ALTER TABLE `Carrito`
  ADD CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`usuario_id`),
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`prod_id`) REFERENCES `Productos` (`prod_id`);

--
-- Filtros para la tabla `Modelo`
--
ALTER TABLE `Modelo`
  ADD CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`marca_id`) REFERENCES `Marcas` (`marca_id`);

--
-- Filtros para la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`usuario_id`);

--
-- Filtros para la tabla `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`prod_id`) REFERENCES `Productos` (`prod_id`),
  ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`pedido_id`) REFERENCES `Pedidos` (`pedido_id`);

--
-- Filtros para la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`almacen_id`) REFERENCES `Almacenamiento` (`almacen_id`),
  ADD CONSTRAINT `FK_REFERENCE_12` FOREIGN KEY (`color_id`) REFERENCES `Colores` (`color_id`),
  ADD CONSTRAINT `FK_REFERENCE_13` FOREIGN KEY (`mem_id`) REFERENCES `Memram` (`mem_id`),
  ADD CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`model_id`) REFERENCES `Modelo` (`model_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
