-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2018 at 10:18 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cellshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `Almacenamiento`
--

CREATE TABLE `Almacenamiento` (
  `almacen_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Almacenamiento`
--

INSERT INTO `Almacenamiento` (`almacen_id`, `descripcion`) VALUES
(2, '256gb'),
(4, '32gb'),
(1, '64gb');

-- --------------------------------------------------------

--
-- Table structure for table `Carrito`
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
-- Table structure for table `Colores`
--

CREATE TABLE `Colores` (
  `color_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Colores`
--

INSERT INTO `Colores` (`color_id`, `nombre`) VALUES
(2, 'Azul'),
(4, 'Gris'),
(1, 'Negro'),
(3, 'Purpura');

-- --------------------------------------------------------

--
-- Table structure for table `Marcas`
--

CREATE TABLE `Marcas` (
  `marca_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Marcas`
--

INSERT INTO `Marcas` (`marca_id`, `descripcion`) VALUES
(2, 'Apple'),
(6, 'Huawei'),
(7, 'LG'),
(1, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `Memram`
--

CREATE TABLE `Memram` (
  `mem_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Memram`
--

INSERT INTO `Memram` (`mem_id`, `descripcion`) VALUES
(2, '3gb'),
(1, '4gb');

-- --------------------------------------------------------

--
-- Table structure for table `Modelo`
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
-- Dumping data for table `Modelo`
--

INSERT INTO `Modelo` (`model_id`, `marca_id`, `nombre`, `resolucion`, `pantalla`, `peso`, `dimensiones`, `bateria`) VALUES
(1, 1, 'Samsung Galaxy S9+', '2960 x 1440 (Quad HD+)', '146.5mm / 143.3 mm', '163g', '147.7 x 68.7 x 8.5 mm', '3000 (mAh)'),
(2, 2, 'Apple iPhone X', '2436x1125', '5.8', '174g', '143.6 x 70.9 x 7.7 mm', '2716 (mAh)');

-- --------------------------------------------------------

--
-- Table structure for table `Pedidos`
--

CREATE TABLE `Pedidos` (
  `pedido_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pedidos_Detalle`
--

CREATE TABLE `Pedidos_Detalle` (
  `peddet_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Productos`
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
-- Dumping data for table `Productos`
--

INSERT INTO `Productos` (`prod_id`, `almacen_id`, `color_id`, `mem_id`, `model_id`, `descripcion`, `imagen`, `stock`, `precio`) VALUES
(2, 1, 1, 1, 1, '<b>Velocidad CPU:</b> 2.7GHz, 1.7GHz.<br>\r\n<b>Tipo CPU:</b> Octa-Core.<br> \r\n<b>Cámara principal:</b> 12.0 MP<br> \r\n<b>Cámara frontal:</b> 8.0 MP.<br>\r\n<b>Sistema Operativo:</b> Android', 'samsungs9plus.jpg', 6, 4800000),
(3, 1, 4, 2, 2, '<b>Velocidad CPU:</b> 2.1 GHZ.<br>\r\n<b>Tipo CPU:</b> Six-Core.<br> \r\n<b>Cámara principal:</b> 12.0 MP<br> \r\n<b>Cámara frontal:</b> 8.0 MP.<br>\r\n<b>Sistema Operativo:</b> iOS 11', 'iphonex.png', 1, 6900000);

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
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
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` (`usuario_id`, `perfil`, `apellidos`, `nombre`, `fechanac`, `docunum`, `direccion`, `ciudad`, `pais`, `telefono`, `email`, `usuario`, `contrasena`) VALUES
(1, 'cliente', 'fesfse', 'fsefse', '0015-10-09', '435453', 'fsfes', 'esfesf', 'sefsef', '3245235', 'e564ro@gmail.com', 'afwf', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'cliente', 'Krauwezuk Powszuk}', 'Esteban', '0011-05-21', '4364888', 'CapitÃ¡n Miranda Calle \"C\" 12', 'CapitÃ¡n Miranda', 'Paraguay', '0983813404', 'esteban98alejandro@gmail.com', 'estebank98', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'cliente', 'Rodriguez', 'Fernando', '0008-12-08', '3214341', 'Encarnacion', 'Encarnacion', 'Paraguay', '0987685766', 'rodri45@gmail.com', 'rodri12', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'cliente', 'htrh', 'hrthrt', '0010-12-15', '354534', 'grg', 'gdrg', 'drgrdg', '3545', 'fesfsef@gmail.com', 'awfdwaf', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'cliente', 'grgreg', 'rgergre', '2016-12-09', '354543', 'fesrfe', 'esfgsef', 'esff', '3255', 'daeda@gmail.com', 'eaff', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'cliente', 'dawdwa', 'wawdad', '2018-07-03', '2352', 'adwd', 'dawd', 'dwad', '3243423', 'e56o@gmail.com', 'e56o@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'cliente', 'regr', 'ergerg', '2018-07-03', '4354', 'rgr', 'srgr', 'sgrsg', '654645', 'esto@gmail.com', 'esto@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'cliente', 'qrr', 'qrqwr', '2018-06-25', '234523', 'wdada', 'wadwad', 'dwada', '4324', 'es@gmail.com', 'awd', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Almacenamiento`
--
ALTER TABLE `Almacenamiento`
  ADD PRIMARY KEY (`almacen_id`),
  ADD KEY `ALMA_IDX` (`descripcion`);

--
-- Indexes for table `Carrito`
--
ALTER TABLE `Carrito`
  ADD PRIMARY KEY (`carrito_id`),
  ADD KEY `CARR_IDX` (`usuario_id`),
  ADD KEY `FK_REFERENCE_7` (`prod_id`);

--
-- Indexes for table `Colores`
--
ALTER TABLE `Colores`
  ADD PRIMARY KEY (`color_id`),
  ADD UNIQUE KEY `COLOR_IDX` (`nombre`);

--
-- Indexes for table `Marcas`
--
ALTER TABLE `Marcas`
  ADD PRIMARY KEY (`marca_id`),
  ADD UNIQUE KEY `MARCA_IDX` (`descripcion`);

--
-- Indexes for table `Memram`
--
ALTER TABLE `Memram`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `MED_IDX` (`descripcion`);

--
-- Indexes for table `Modelo`
--
ALTER TABLE `Modelo`
  ADD PRIMARY KEY (`model_id`),
  ADD UNIQUE KEY `DISE_IDX` (`nombre`),
  ADD KEY `FK_REFERENCE_15` (`marca_id`);

--
-- Indexes for table `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`pedido_id`),
  ADD KEY `PEDI_IDX` (`usuario_id`);

--
-- Indexes for table `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  ADD PRIMARY KEY (`peddet_id`),
  ADD KEY `DPED_IDX` (`prod_id`),
  ADD KEY `FK_REFERENCE_9` (`pedido_id`);

--
-- Indexes for table `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `PROD_IDX` (`descripcion`),
  ADD KEY `FK_REFERENCE_11` (`almacen_id`),
  ADD KEY `FK_REFERENCE_12` (`color_id`),
  ADD KEY `FK_REFERENCE_13` (`mem_id`),
  ADD KEY `FK_REFERENCE_14` (`model_id`);

--
-- Indexes for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `UNAME` (`usuario`),
  ADD UNIQUE KEY `EMAIL_IDX` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Almacenamiento`
--
ALTER TABLE `Almacenamiento`
  MODIFY `almacen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Carrito`
--
ALTER TABLE `Carrito`
  MODIFY `carrito_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Colores`
--
ALTER TABLE `Colores`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Memram`
--
ALTER TABLE `Memram`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Modelo`
--
ALTER TABLE `Modelo`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `pedido_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  MODIFY `peddet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Productos`
--
ALTER TABLE `Productos`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Carrito`
--
ALTER TABLE `Carrito`
  ADD CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`usuario_id`),
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`prod_id`) REFERENCES `Productos` (`prod_id`);

--
-- Constraints for table `Modelo`
--
ALTER TABLE `Modelo`
  ADD CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`marca_id`) REFERENCES `Marcas` (`marca_id`);

--
-- Constraints for table `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`usuario_id`);

--
-- Constraints for table `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`prod_id`) REFERENCES `Productos` (`prod_id`),
  ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`pedido_id`) REFERENCES `Pedidos` (`pedido_id`);

--
-- Constraints for table `Productos`
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
