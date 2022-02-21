-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2022 a las 04:21:23
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lexymel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id` int(11) NOT NULL,
  `titular_invitacion` varchar(255) NOT NULL,
  `no_invitados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id`, `titular_invitacion`, `no_invitados`) VALUES
(1, 'Lizbeth Gonzalez', 2),
(2, 'María Fernanda Huerta & José Pedro Rodelo', 2),
(3, 'Mariandrea Cruz', 2),
(4, 'Rocio Tabakman', 1),
(5, 'Abril Padilla', 2),
(6, 'Alan Chalini', 2),
(7, 'Alberto Molina', 2),
(8, 'Alejandro Lelo de Larrea', 2),
(9, 'Ana Ramírez & Pablo Ávila', 2),
(10, 'Arturo Pedroza', 1),
(11, 'Cinthya Arellano', 2),
(12, 'Cristina Aguilar & Marco Arellano', 2),
(13, 'Cristopher Moscoso & Alejandra Ramírez', 2),
(14, 'Dafne Santillana', 1),
(15, 'Daniela Timal & Juan José Otero', 2),
(16, 'David Piscil', 2),
(17, 'Diana Pérez & Luis Fernando Sanchez', 2),
(18, 'Elvia Mendoza', 2),
(19, 'Evelin Vasquez', 2),
(20, 'Flor Ortiz', 2),
(21, 'Gerley Moscoso', 1),
(22, 'Graciela Ramirez & Daniel Ventura', 2),
(23, 'Guillermo García & Familia', 3),
(24, 'Helena Herrera & Familia', 5),
(25, 'Iván García', 2),
(26, 'José Octavio Luengas Garrido', 2),
(27, 'Juan Carlos Somera', 2),
(28, 'Juanita Arellano & Familia', 4),
(29, 'Leonor Ramirez & Familia', 5),
(30, 'Lili Arellano', 2),
(31, 'Marco Vinicio Blanco Escobar', 2),
(32, 'María del Rosario Arellano & Familia', 4),
(33, 'María Elena Tejeda & Michel Sanchez', 2),
(34, 'Mariana Morales', 2),
(35, 'Mich Rivera', 2),
(36, 'Moisés Ramírez Briones', 2),
(37, 'Nidia Martínez', 2),
(38, 'Octavio Luengas Ramírez', 2),
(39, 'Susana Hernandez', 2),
(40, 'Víctor Valderrabano', 2),
(41, 'Daniela Verona & Emiro Arrieta', 2),
(42, 'Adriana Milena Castro', 2),
(43, 'Adriana Valero & Alejandro Armenta', 2),
(44, 'Belén Ceballos & Ludwin Cuevas', 2),
(45, 'Christian Van Der Henst', 2),
(46, 'Concepción Gallardo', 1),
(47, 'Daniela González & Nicolás Pérez', 2),
(48, 'Daniela Sachioque & Fabian Oloarte', 2),
(49, 'Daniela Valero & Mauricio Díaz', 2),
(50, 'Citlhaly Rodriguez & David Marmolejo', 2),
(51, 'Delia Sánchez & Marco Marmolejo', 2),
(52, 'Diana Reyes & Freddy Vega', 2),
(53, 'Guie Xadani Zetina', 2),
(54, 'Hugues Joubert', 2),
(55, 'Inés Lozano Pérez & Yaret Lozano', 2),
(56, 'Irene Olea y Antonio Guevara', 2),
(57, 'Jorge Torres & Angela', 2),
(58, 'Juan Camilo Alarcón', 1),
(59, 'Juan Pablo Rojas & Paula Becerra', 2),
(60, 'Juanita Marmolejo & Melitón Lozano', 2),
(61, 'Kairi Herrera & Manuel Frausto', 2),
(62, 'Karen Falconi', 2),
(63, 'Kenia Ramirez e Itztani Lozano', 2),
(64, 'Kiara Guevara & Frank Marmolejo', 2),
(65, 'Laura Huerta & Germán Flores', 2),
(66, 'Leslie Marmolejo & Mónica Fortozo', 2),
(67, 'Laura Villa & Hristob Santos', 2),
(68, 'Maria del Rosario Vázquez', 2),
(69, 'Maria del Socorro', 2),
(70, 'María José García', 2),
(71, 'Maribel Gutierrez & César Sánchez', 2),
(72, 'Mirna & Felix Marmolejo', 2),
(73, 'Nancy Santos & Mario Benavides', 4),
(74, 'Natalia Herrera & Oscar Hernández', 2),
(75, 'Nicole Chapaval & Carlos Jiménez', 2),
(76, 'Nimbe Muñoz', 2),
(77, 'Obdulia Sánchez & Félix Marmolejo', 2),
(78, 'Pau Zárate & César Fajardo', 2),
(79, 'Ricardo Celis', 2),
(80, 'Rita Pinzón & Marco Marmolejo', 2),
(81, 'Rocio Martinez', 2),
(82, 'Nicolay Coral', 2),
(83, 'Samantha Reynal Alcocer', 2),
(84, 'Sebastian Serna', 2),
(85, 'Veronica Altamirano', 1),
(86, 'Santiago Santos & Abigail', 2),
(87, 'Alberto Santos & Alondra Nolasco', 2),
(88, 'Zayde Venancio & Familia', 5),
(89, 'Monica Gaona', 1),
(90, 'Alberto Alcocer', 2),
(91, 'Ingrid Zuñiga', 2),
(92, 'Ulises Rayon', 1),
(93, 'Joaquín Loyo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `tipo`) VALUES
(1, 'NO COMERÁ'),
(2, 'MIXTO'),
(3, 'VEGETARIANO'),
(4, 'NO ASISTIRÁ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_invitado`
--

CREATE TABLE `menu_invitado` (
  `id` int(11) NOT NULL,
  `invitado_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_invitado`
--
ALTER TABLE `menu_invitado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu_invitado`
--
ALTER TABLE `menu_invitado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
