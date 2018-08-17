-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2018 at 08:42 PM
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
(5, '16gb'),
(16, '18gb'),
(9, '1gb'),
(17, '20gb'),
(2, '256gb'),
(8, '2gb'),
(12, '2gb'),
(4, '32gb'),
(13, '3gb'),
(7, '4gb'),
(14, '4gb'),
(11, '52gb'),
(15, '5gb'),
(1, '64gb'),
(10, '6gb'),
(6, '8gb');

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
(13, 'Amarillo'),
(2, 'Azul'),
(10, 'Beige'),
(7, 'Blanco'),
(9, 'Dorado'),
(4, 'Gris'),
(14, 'Naranja'),
(1, 'Negro'),
(3, 'Purpura'),
(5, 'Rojo\r\n'),
(8, 'Rosa'),
(11, 'Turquesa'),
(6, 'Verde');

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
(5, '1,5gb'),
(3, '1gb'),
(2, '3gb'),
(1, '4gb'),
(4, '512mb');

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
(1, 1, 'Samsung Galaxy S9+', '2960 x 1440', '146.5mm / 143.3 mm', '163g', '147.7 x 68.7 x 8.5 mm', '3000 (mAh)'),
(2, 2, 'Apple iPhone X', '2436x1125', '5.8', '174g', '143.6 x 70.9 x 7.7 mm', '2716 (mAh)'),
(3, 6, 'Huawei Y5', '46.5 x 70.9 ', '1440 x 720. ', '142 g', '144 x 129 x 70.9mm ', '3.020 (mAh)'),
(4, 13, 'Nokia 7 Plus', '2.160 x 1.080 ', '400', '183 g', '158,38 x 75,64 x 9,55 ', '3.800 (mAh)'),
(5, 7, 'LG K10', '1,280x720', '5.3', '142g', '148.7x75.3x7.9mm', '2,800mAh'),
(6, 14, 'BlackBerry Key2', '1080 x 1620 ', '4.5', '168 g', '151.4 x 71.8 x 8.5 mm', '3500 mAh'),
(7, 15, 'Lenovo A5', '20 x 1440 ', '5.45', '160 g', '146.2 x 70.9 x 9.8 mm', ' 4000 mAh'),
(8, 16, 'Sony Xperia Z5', ' 1080 x 1920 ', '5.2', '154g', '146 x 72 x 7.3 mm', '2900 mAh'),
(9, 17, 'Motorola Moto z3', '1080 x 2160 ', '6.01', '156g', '156.5 x 76.5 x 6.8 mm', '3000 mAh'),
(10, 18, 'Blu R2 Plus ', ' 1080 x 1920', '5.5', '167 g', '155.7 x 77 x 9.2 mm', '3000 mAh'),
(11, 1, 'Galaxy Note 3', '1920 x 1080', '5.7 pulgadas', '168 gr', '151.2 mm (alto) x 79.2 mm (ancho) x 8.3 mm (grosor)', '3200mAh'),
(12, 1, 'Galaxy s2', '800 x 480', '4.3 pulgadas', '121 gr', '125.3 mm (alto) x 66.1 mm (ancho) x 8.5 mm (grosor)', 'Li-Ion 1650mAh'),
(13, 1, 'Galaxy note8', '1280 x 800', '8 pulgadas', ' 338 gr', '135.9 mm (alto) x 210.8 mm (ancho) x 8 mm (grosor)', '1200mAh'),
(14, 1, 'Galaxy young ', '480 x 320', '3.2 pulgadas', ' 112 gr', '109.4 mm (alto) x 58.6 mm (ancho) x 12.5 mm (grosor)', 'Li-Ion 1300mAh'),
(15, 1, 'Galaxy A3', '960 x 540', '4.5 pulgadas', ' 110 gr', '130.1 mm (alto) x 65.5 mm (ancho) x 6.9 mm (grosor)', 'Li-Ion 1900mAh'),
(16, 1, 'Galaxy A5', '1280 x 720', '5 pulgadas', '123 gr', '139.3 mm (alto) x 69.7 mm (ancho) x 6.7 mm (grosor)', 'Li-Ion 2300mAh'),
(17, 1, 'Galaxy s6', '2560 x 1440', '5.1 pulgadas', '138 gr', '143.4 mm (alto) x 70.5 mm (ancho) x 6.8 mm (grosor)', 'Li-Ion 2550mAh'),
(18, 1, 'Galaxy s6 edge', '2560 x 1440', ' 5.1 pulgadas', '132 gr', '142.1 mm (alto) x 70.1 mm (ancho) x 7 mm (grosor)', 'Li-Ion 2600mAh'),
(19, 1, 'Galaxy j7', '1280 x 720', '5.5 pulgadas', '171 gr', '152.4 mm (alto) x 78.6 mm (ancho) x 7.5 mm (grosor)', 'Li-Ion 3000mAh'),
(20, 1, 'Galaxy s7', '2560 x 1440', '5.1 pulgadas', '152 gr', '142.4 mm (alto) x 69.6 mm (ancho) x 7.9 mm (grosor)', 'Li-Ion 3000mAh'),
(21, 1, 'Galaxy j5 2016', '1280 x 720', '5.2 pulgadas', '159 gr', '145.8 mm (alto) x 72.3 mm (ancho) x 8.1 mm (grosor)', 'Li-Ion 3100mAh'),
(22, 1, 'Galaxy j7pro ', '1920 x 1080', '5.5 pulgadas', '152 gr', '152.4 mm (alto) x 74.4 mm (ancho) x 7.9 mm (grosor)', 'Li-Ion 3600mAh'),
(23, 1, 'Galaxy j5 pro', '1280 x 720', '5.2 pulgadas', '123 gr', '146.3 mm (alto) x 71.3 mm (ancho) x 7.9 mm (grosor)', '3000mAh'),
(24, 1, 'Galaxy s8', '2560 x 1440', ' 5.8 pulgadas', ' 207 gr', ' 152.14 mm (alto) x 74.9 mm (ancho) x 9.9 mm (grosor)', 'Li-Po 4000mAh'),
(25, 1, 'Galaxy s9', '2960 x 1440', '5.8 pulgadas', '163 gr', '147.7 mm (alto) x 68.7 mm (ancho) x 8.5 mm (grosor)', 'Li-Po 3000mAh'),
(26, 1, 'Galaxy A9 Star lite ', '2220 x 1080', '6 pulgadas', '191 gr', '160.2 mm (alto) x 75.7 mm (ancho) x 7.9 mm (grosor)', 'Litio 3500mAh'),
(27, 1, 'Galaxy j6', '1480 x 720', ' 5.6 pulgadas', '154 gr', '149.3 mm (alto) x 70.2 mm (ancho) x 8.2 mm (grosor)', 'Li-Ion 3000mAh'),
(28, 1, 'Galaxy s ligth luxury', '2220 x 1080', '5.8 pulgadas', '150 gr', '148.9 mm (alto) x 68.1 mm (ancho) x 8 mm (grosor)', 'Li-Ion 3000mAh'),
(29, 1, 'Galaxy j3 2018', 'Resolución 1280 x 720', '5 pulgadas', '152 gr', '142.7 mm (alto) x 70.1 mm (ancho) x 8.9 mm (grosor)', 'Litio 2600mAh'),
(30, 1, 'Galaxy A6', '1480 x 720', ' 5.6 pulgadas', '162 gr', '149.9 mm (alto) x 70.8 mm (ancho) x 7.7 mm (grosor)', 'Li-Ion 3000mAh'),
(31, 1, 'Galaxy A8 2018', '2220 x 1080', '5.6 pulgadas', ' 172 gr', '149.2 mm (alto) x 70.6 mm (ancho) x 8.4 mm (grosor)', 'Li-Po 3000mAh'),
(32, 1, 'Galaxy z4', '800 x 480', '4.5 pulgadas', '143 gr', '132.9 mm (alto) x 69.2 mm (ancho) x 10.3 mm (grosor)', 'Li-Ion 2050mAh'),
(33, 1, 'Galaxy c9 Pro ', '1920 x 1080', '6 pulgadas', '189 gr', ' 162.9 mm (alto) x 80.7 mm (ancho) x 6.9 mm (grosor)', 'Li-Po 4000mAh'),
(34, 1, 'Galaxy Z2', '800 x 480', '4 pulgadas', '127 gr', '121.5 mm (alto) x 63 mm (ancho) x 10.8 mm (grosor)', 'Li-Ion 1500mAh'),
(35, 1, 'Galaxy c5', '1920 x 1080', '5.2 pulgadas', '143 gr', '145.9 mm (alto) x 72 mm (ancho) x 6.7 mm (grosor)', 'Li-Ion 2600mAh'),
(36, 1, 'Galaxy c7', '1920 x 1077', '5.7 pulgadas', '165 gr', '156.6 mm (alto) x 77.2 mm (ancho) x 6.7 mm (grosor)', 'Li-Ion 3301mAh'),
(37, 1, 'Galaxy S5', '1920 x 1080', '5.1 pulgadas', '145 gr', '142 mm (alto) x 72.5 mm (ancho) x 8.1 mm (grosor)', 'Li-Ion 2800mAh'),
(38, 1, 'Galaxy s4', '1920 x 1080', ' 5 pulgadas', '130 gr', '136.6 mm (alto) x 69.8 mm (ancho) x 7.9 mm (grosor)', 'Li-Ion 2600mAh'),
(39, 1, 'Galaxy core', '800 x 480', '4.3 pulgadas', '124 gr', '129.3 mm (alto) x 67.6 mm (ancho) x 8.95 mm (grosor)', '1800mAh'),
(40, 1, 'Galaxy core advance', '800 x 480', ' 4.7 pulgadas', '145 gr', 'DIMENSIONES 133.3 mm (alto) x 70.5 mm (ancho) x 9.7 mm (grosor)', 'Li-Ion 2000mAh'),
(41, 1, 'Galaxy j7 duo', '1280 x 720', '5.5 pulgadas', ' 174 gr', '153.5 mm (alto) x 77.2 mm (ancho) x 8.2 mm (grosor)', 'Li-Po 3000mAh'),
(42, 2, 'Apple iPhone 4S', '640 x 960', '3.5 pulgadas', '140 gr', '58.6 mm (alto) x 115.2 mm (ancho) x 9.3 mm (grosor)', '1432mAh'),
(43, 2, 'Apple iPhone 5', '640 x 1136', '4 pulgadas', '112 gr', '58.6 mm (alto) x 123.8 mm (ancho) x 7.6 mm (grosor)', '1440mAh'),
(44, 2, 'Apple iPhone 5C', '1136 x 640', '4 pulgadas', '132 gr', '124.4 mm (alto) x 59.2 mm (ancho) x 8.97 mm (grosor)', '1510mAh'),
(45, 14, 'BlackBerry Bold 9700', '480 x 360', '2.6 pulgadas', '120 g', '109 x 60 x 14 mm ', 'Li-Ion 1500 mAh'),
(46, 14, 'BlackBerry Aurora', '720 x 1280', '5.5 pulgadas', '178 g', '152 x 76.8 x 8.5 mm ', '3000 mAh'),
(47, 18, 'Blu Vivo One Plus', '720 x 1440 pixels', '6.0 pulgadas', '173 g', '164.8 x 76.7 x 8.6 mm', '3000 mAh'),
(48, 18, 'Blu Dash L4', '480 x 800 pixels', '4.0 pulgadas', '119 g', '126.8 x 64.1 x 10.5 mm', '1700 mAh'),
(49, 6, 'Huawei Y3  2018', '480 x 854 pixels', '5.0 pulgadas', '175 g', '145.1 x 73.7 x 9.5 mm', '2280 mAh'),
(50, 6, 'Huawei nova 3', '1080 x 2340 pixels', '6.3 pulgadas', '166 g', '157 x 73.7 x 7.3 mm', '3750 mAh'),
(51, 15, 'Lenovo K5 Note', '720 x 1440 pixels', '6.0 pulgadas', ' 	176 g', '158.3 x 76.7 x 8.5 mm', '3760 mAh'),
(52, 15, 'Lenovo Phab 2 Plus', '1080 x 1920 pixels', '6.4 pulgadas', '218 g', '173.9 x 88.3 x 9.6 mm', '4050 mAh'),
(53, 7, 'LG K11', '720 x 1280 pixels', '5.3 pulgadas', '143 gr', '720 x 1280 pixels', '3000 mAh'),
(54, 7, 'LG X style', '720 x 1280 pixels', ' 5.0 pulgadas', '121 g', '144.8 x 71.4 x 6.9 mm ', '2100 mAh'),
(55, 17, 'Motorola P30', '1080 x 2246 pixels', '6.2 pulgadas ', '170 g', '155.5 x 76.0 x 7.7 mm', '3000 mAh'),
(56, 17, 'Motorola Moto G5S Plus', ' 1080 x 1920 pixels', '5.5 pulgadas', '168 g', '153.5 x 76.2 x 8 mm ', '3000 mAh'),
(57, 13, 'Nokia 5.1', '800 x 480', ' 5.5 pulgadas', '191 gr', '109 x 60 x 14 mm', 'Li-Ion 2050mAh'),
(58, 13, 'Nokia 8', '1440 x 2560 pixels', '5.3 pulgadas', '143 gr', '151.5 x 73.7 x 7.9 mm', '3090 mAh'),
(59, 16, 'Sony Xperia XZ', '1080 x 1920 pixels', '5.0 pulgadas', '161 g', '146 x 72 x 8.1 mm', '3200mAh'),
(60, 16, 'Sony Xperia X', '1080 x 1920 pixels,', '5.0 pulgadas', '153 g', '142.7 x 69.4 x 7.9 mm', '2620 mAh');

-- --------------------------------------------------------

--
-- Table structure for table `Pedidos`
--

CREATE TABLE `Pedidos` (
  `pedido_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Pedidos`
--

INSERT INTO `Pedidos` (`pedido_id`, `usuario_id`, `fecha`, `monto`, `fecha_entrega`) VALUES
(2, 5, '2018-08-15', 6728000, '2018-08-15'),
(7, 5, '2018-08-15', 6900000, NULL);

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

--
-- Dumping data for table `Pedidos_Detalle`
--

INSERT INTO `Pedidos_Detalle` (`peddet_id`, `pedido_id`, `prod_id`, `precio`) VALUES
(2, 2, 11, 2500000),
(4, 7, 3, 6900000);

-- --------------------------------------------------------

--
-- Table structure for table `Productos`
--

CREATE TABLE `Productos` (
  `prod_id` int(100) NOT NULL,
  `almacen_id` int(100) NOT NULL,
  `color_id` int(100) NOT NULL,
  `mem_id` int(100) NOT NULL,
  `model_id` int(100) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(100) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Productos`
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
(12, 5, 1, 2, 1, '<b>Velocidad CPU:</b> 2.7GHz, 1.7GHz.<br><b>Tipo CPU:</b> Octa-Core.<br> <b>Cámara principal:</b> 12.0 MP<br> <b>Cámara frontal:</b> 8.0 MP.<br><b>Sistema Operativo:</b> Android', 'samsungs9plus.jpg', 0, 3000000),
(13, 5, 7, 2, 11, 'VELOCIDAD CPU Qualcomm Snapdragon 800 MSM8974 TIPO CPU (4 núcleos)CÁMARA TRASERA (PRINCIPAL) 13 MP (4128 x 3096) CÁMARA FRONTAL 2MP (1600 x 1200) SO Android 4.3 Jelly Bean', 'galaxynote3.jpeg', 0, 2500000),
(14, 5, 2, 5, 12, 'CÁMARA TRASERA (PRINCIPAL)  8 MP (3280 x 2464)   CÁMARA FRONTAL  2MP (1600 x 1200) SO Android 4.2 Jelly Bean', 'galaxys2.jpeg', 2, 850000),
(15, 8, 1, 5, 13, 'VELOCIDAD CPU  Samsung Exynos 4 Quad (4412)  TIPO CPU  (4 núcleos)CÁMARA TRASERA (PRINCIPAL)  5 MP (2592 x 1944) CÁMARA FRONTAL  1.3MP (1280 x 1024) SO Android 4.1 Jelly Bean', 'galaxynote8.jpg', 0, 950000),
(16, 9, 1, 5, 14, 'CÁMARA TRASERA (PRINCIPAL)  3.2 MP (2048 x 1536) SO Android 4.1 Jelly Bean', 'galaxyyoung.jpg', 1, 450000),
(17, 8, 7, 2, 15, 'CÁMARA TRASERA (PRINCIPAL)  8 MP (3280 x 2464) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 4.4 KitKat', 'galaxya3.jpg', 2, 1250000),
(18, 7, 4, 2, 16, 'CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 4.4 KitKat', 'galaxya5.jpg', 6, 1800000),
(19, 7, 7, 2, 17, 'CÁMARA TRASERA (PRINCIPAL)  16 MP (3894 x 2988) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 5.0 Lollipop', 'galaxys6.jpg', 5, 250000),
(20, 4, 1, 1, 18, 'CÁMARA TRASERA (PRINCIPAL)  16 MP (3894 x 2988) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 5.0 Lollipop', 'galaxys6edge.jpg', 3, 2800000),
(21, 7, 1, 1, 19, 'CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 5.1 Lollipop', 'galaxyj7.jpg', 8, 1500000),
(22, 1, 8, 1, 20, 'CÁMARA TRASERA (PRINCIPAL)  12 MP (4000 x 3000) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 6.0 Marshmallow', 'galaxys7.jpg', 3, 2800000),
(23, 8, 7, 2, 21, 'VELOCIDAD CPU Qualcomm Snapdragon 410 MSM8916 TIPO CPU  (4 núcleos) MEMORIA 2GB RAMCÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL 5MP (2592 x 1944) SO Android 6.0 Marshmallow', 'galaxyj52016.jpg', 0, 1800000),
(24, 7, 1, 1, 22, 'VELOCIDAD CPU Samsung Exynos 7870  TIPO CPU (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  13MP (4128 x 3096) SO Android 7.0 Nougat', 'galaxyj7pro.jpg', 0, 1550000),
(25, 7, 1, 2, 23, 'VELOCIDAD CPU Samsung Exynos 7870  TIPO CPU (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  13MP (4128 x 3096) SO Android 7.0 Nougat', 'galaxyj5pro.jpg', 0, 1600000),
(26, 7, 8, 2, 24, 'VELOCIDAD CPU Qualcomm Snapdragon 835 TIPO CPU  (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  12 MP (4000 x 3000) CÁMARA FRONTAL  8MP (3280 x 2464) SO Android 7.0 Nougat', 'galaxys8.jpg', 0, 3500000),
(27, 6, 3, 3, 25, 'VELOCIDAD CPU Samsung Exynos 9810 TIPO CPU  (8 núcleos)', 'galaxys9.jpg', 0, 3850000),
(28, 1, 4, 1, 26, 'VELOCIDAD CPU  Qualcomm Snapdragon 450 TIPO CPU  (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  16 MP CÁMARA TRASERA (SECUNDARIA)  5 MP (2592 x 1944) SO Android 8.0 Oreo', 'galaxys9starlite.jpg', 0, 2900000),
(29, 2, 5, 1, 27, 'VELOCIDAD CPU Samsung Exynos 7870  TIPO CPU (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  8MP (3280 x 2464) SO Android 8.0 Oreo', 'galaxyj6.jpg', 0, 2650000),
(30, 8, 5, 2, 28, 'VELOCIDAD CPU Qualcomm Snapdragon 660  TIPO CPU (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  16 MP CÁMARA FRONTAL  8MP (3280 x 2464) SO Android 8.0 Oreo', 'galaxys.jpg', 0, 3650000),
(31, 8, 1, 2, 29, 'VELOCIDAD CPU Samsung Exynos 7570  TIPO CPU (4 núcleos)SO Android 8.0 Oreo 5MP (2592 x 1944)CÁMARA FRONTAL 8 MP (3280 x 2464)CÁMARA TRASERA (PRINCIPAL) 5MP (2592 x 1944) SO Android 8.0 Oreo', 'galaxyj3.jpg', 0, 1960000),
(32, 7, 6, 3, 30, 'VELOCIDAD CPU Samsung Exynos 7870 TIPO CPU  (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  16 MP CÁMARA FRONTAL  16MP SO Android 8.0 Oreo', 'galaxya6.jpg', 0, 1985000),
(33, 7, 5, 2, 31, 'CÁMARA TRASERA (PRINCIPAL)  16 MP (3894 x 2988) CÁMARA FRONTAL  16MP SO Android 7.1 Nougat', 'galaxya8.jpg', 0, 980000),
(34, 1, 6, 1, 34, 'VELOCIDAD CPU Spreadtrum SC9830 TIPO CPU  (4 núcleos)CÁMARA TRASERA (PRINCIPAL)  5 MP (2592 x 1944) CÁMARA FRONTAL  0.3MP (640 x 480) SO Tizen', 'galaxyz2.jpg', 0, 2350000),
(35, 8, 3, 1, 35, 'VELOCIDAD CPU Qualcomm Snapdragon 617  TIPO CPU (8 núcleos)CÁMARA TRASERA (PRINCIPAL) 16 MP (3894 x 2988) CÁMARA FRONTAL 8MP (3280 x 2464) SO Android 6.0 Marshmallow', 'galaxyc5.jpg', 0, 560000),
(36, 4, 7, 2, 36, 'VELOCIDAD CPU Qualcomm Snapdragon 625 TIPO CPU  (8 núcleos)CÁMARA TRASERA (PRINCIPAL)  16 MP (3894 x 2988) CÁMARA FRONTAL  8MP (3280 x 2464) SO Android 6.0 Marshmallow', 'galaxyc7.jpg', 0, 690000),
(37, 8, 4, 2, 37, 'VELOCIDAD CPU Qualcomm Snapdragon 801 8974-AC  TIPO CPU (4 núcleos)CÁMARA TRASERA (PRINCIPAL)  16 MP (3894 x 2988) CÁMARA FRONTAL  2MP (1600 x 1200) SO Android 4.4 KitKat', 'galaxys5.jpg', 6, 1200000),
(38, 7, 6, 2, 38, 'VELOCIDAD CPU Qualcomm Snapdragon 600  TIPO CPU (4 núcleos)CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  2MP (1600 x 1200) SO Android 4.2 Jelly Bean', 'galaxys4.jpg', 0, 1100000),
(39, 9, 6, 2, 39, 'CÁMARA TRASERA (PRINCIPAL)  5 MP (2592 x 1944) CÁMARA FRONTAL  0.3MP (640 x 480) SO Android 4.1 Jelly Bean', 'galaxycore.jpg', 0, 560000),
(40, 9, 1, 3, 40, 'CÁMARA TRASERA (PRINCIPAL)  5 MP (2592 x 1944) CÁMARA FRONTAL 0.3MP (640 x 480) SO Android 4.2 Jelly Bean', 'galaxycoreadvance.jpg', 8, 450000),
(41, 8, 8, 1, 41, 'CÁMARA TRASERA (PRINCIPAL)  13 MP (4128 x 3096) CÁMARA FRONTAL  8MP (3280 x 2464) SO Android 8.0 Oreo', 'galaxyj7duo.jpg', 0, 1965000),
(42, 1, 7, 3, 42, ' CÁMARA CÁMARA TRASERA (PRINCIPAL) Resolución modo foto 8 MP (3280 x 2464) Resolución modo vídeo Full HD1080p (1920 x 1080) FPS máximo de grabación 30 GENERAL Resoluciones de reproducción de vídeo soportadas HD1080p (1920 x 1080)', 'iphone4s.jpg', 3, 1950000),
(43, 1, 7, 1, 43, ' CÁMARA CÁMARA TRASERA (PRINCIPAL) Resolución modo foto 8 MP (3280 x 2464) Resolución modo vídeo Full HD1080p (1920 x 1080) FPS máximo de grabación 30 CÁMARA FRONTAL Resolución modo foto 1.2MP (1280 x 960)', 'iphone5.jpg', 4, 2600000),
(44, 9, 1, 2, 44, 'CÁMARA TRASERA (PRINCIPAL)  16 MP (3894 x 2988) CÁMARA FRONTAL  5MP (2592 x 1944) SO Android 5.0 Lollipop', 'iphone5c.jpg', 1, 1500000),
(45, 9, 9, 3, 45, 'El BlackBerry Bold 9700  es una actualización del Bold original, con soporte 3G, Wi-Fi con UMA, GPS y cámara de 3.2 megapixels con flash. Además, el BB Bold 9700 posee un conector de auriculares de 3.5 mm y ranura microSD para expansión de memoria.', 'black.jpg', 1, 200000),
(46, 1, 8, 3, 46, 'Dentro del Aurora encontramos un procesador Snapdragon 425 1.4GHz, acompañado de 4GB de memoria RAM. También cuenta con 32GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'aurora.jpg', 1, 650000),
(47, 12, 1, 3, 47, 'Dentro del Vivo One Plus encontramos un procesador Mediatek MT6739 1.3GHz, acompañado de 2GB de memoria RAM. También cuenta con 16GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'one.jpg', 1, 300000),
(48, 12, 8, 1, 48, 'Dentro del Dash L4 encontramos un procesador Mediatek MT6570 1.3GHz, acompañado de 512MB de memoria RAM. También cuenta con 8GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'dash.jpg', 1, 580000),
(49, 9, 4, 3, 49, 'Dentro del Y3 (2018) encontramos un procesador MediaTek MT6737M 1.1GHz, acompañado de 1GB de memoria RAM. También cuenta con 8GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'y3.jpg', 1, 250000),
(50, 9, 9, 2, 50, 'Dentro del nova 3 encontramos un procesador Kirin 970 2.36GHz, acompañado de 6GB de memoria RAM. También cuenta con 64GB/128GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'nova.jpg', 1, 985000),
(51, 9, 1, 2, 51, 'Dentro del K5 Note (2018) encontramos un procesador Snapdragon 450 1.8GHz, acompañado de 3GB/4GB de memoria RAM. También cuenta con 32GB/64GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'k5.jpg', 1, 595000),
(52, 12, 11, 3, 52, 'Dentro del Phab 2 Plus encontramos un procesador Mediatek MT8783 1.3GHz, acompañado de 3GB de memoria RAM. También cuenta con 32GB de almacenamiento y la memoria interna puede ser ampliada vía microSD ', '2.jpg', 1, 570000),
(53, 8, 5, 3, 53, 'Dentro del K11 encontramos un procesador Mediatek MT6750 1.5GHz, acompañado de 2GB de memoria RAM. También cuenta con 16GB de almacenamiento y la memoria interna puede ser ampliada vía microSD ', '11.jpg', 1, 890000),
(54, 15, 1, 3, 54, 'Dentro del X style encontramos un procesador Snapdragon 210 1.3GHz, acompañado de 1.5GB de memoria RAM. También cuenta con 16GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'x.jpg', 1, 1850000),
(55, 11, 8, 3, 55, 'Dentro del P30 encontramos un procesador Snapdragon 636 1.8GHz, acompañado de 6GB de memoria RAM. También cuenta con 64GB/128GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', '30.jpg', 1, 785000),
(56, 9, 2, 2, 56, 'Dentro del Moto G5S Plus encontramos un procesador Snapdragon 625 2GHz, acompañado de 3GB/4GB de memoria RAM. También cuenta con 32GB/64GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', '5.jpg', 1, 960000),
(57, 9, 10, 3, 57, 'El Nokia 5.1 llega como el sucesor del Nokia 5, esta vez con una pantalla Full HD+ de 5.5 pulgadas, procesador octa-core a 2GHz con 2GB o 3GB de RAM y 16GB o 32GB de almacenamiento interno expandible', '5.jpg', 1, 850000),
(58, 15, 4, 3, 58, 'Dentro del 8 encontramos un procesador Snapdragon 835 2.45GHz, acompañado de 4GB/6GB de memoria RAM. También cuenta con 64GB/128GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', '8.jpg', 1, 800000),
(59, 1, 1, 3, 59, 'Dentro del Xperia XZ encontramos un procesador Snapdragon 820 2.15GHz, acompañado de 3GB de memoria RAM. También cuenta con 32GB/64GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'xz.jpg', 1, 890000),
(60, 17, 2, 2, 60, 'Dentro del Xperia X encontramos un procesador Snapdragon 650 1.8GHz, acompañado de 3GB de memoria RAM. También cuenta con 32GB/64GB de almacenamiento y la memoria interna puede ser ampliada vía microSD', 'xx.jpg', 1, 458000);

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
(2, 'admin', 'Krauwezuk Powszuk}', 'Esteban', '0011-05-21', '4364888', 'CapitÃ¡n Miranda Calle \"C\" 12', 'CapitÃ¡n Miranda', 'Paraguay', '0983813404', 'esteban98alejandro@gmail.com', 'estebank98', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'cliente', 'Rodriguez', 'Fernando', '0008-12-08', '3214341', 'Encarnacion', 'Encarnacion', 'Paraguay', '0987685766', 'rodri45@gmail.com', 'rodri12', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'cliente', 'htrh', 'hrthrt', '0010-12-15', '354534', 'grg', 'gdrg', 'drgrdg', '3545', 'fesfsef@gmail.com', 'awfdwaf', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'cliente', 'grgreg', 'rgergre', '2016-12-09', '354543', 'fesrfe', 'esfgsef', 'esff', '3255', 'daeda@gmail.com', 'eaff', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'cliente', 'dawdwa', 'wawdad', '2018-07-03', '2352', 'adwd', 'dawd', 'dwad', '3243423', 'e56o@gmail.com', 'e56o@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'cliente', 'regr', 'ergerg', '2018-07-03', '4354', 'rgr', 'srgr', 'sgrsg', '654645', 'esto@gmail.com', 'esto@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'cliente', 'qrr', 'qrqwr', '2018-06-25', '234523', 'wdada', 'wadwad', 'dwada', '4324', 'es@gmail.com', 'awd', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'cliente', 'gonza', 'lu', '2018-08-15', '123456', 'edrfc', 'sdfcv', 'wsedfc', '23455432', 'wsdfcc@sxdcf', 'lu', '81dc9bdb52d04dc20036dbd8313ed055');

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
  MODIFY `almacen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Carrito`
--
ALTER TABLE `Carrito`
  MODIFY `carrito_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Colores`
--
ALTER TABLE `Colores`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Memram`
--
ALTER TABLE `Memram`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Modelo`
--
ALTER TABLE `Modelo`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `pedido_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Pedidos_Detalle`
--
ALTER TABLE `Pedidos_Detalle`
  MODIFY `peddet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Productos`
--
ALTER TABLE `Productos`
  MODIFY `prod_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
