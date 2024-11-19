-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2024 a las 21:33:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gamba_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `username`, `apellido`, `password`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Gerardo', 'Acuna', '$2y$10$Ys80PIsDDRZCtnqzBoF7ceyIO5g2AdkO9LY0p7RhDg9/3YDmhsr6m', 'gerardo@dapango.tech', '2024-10-31 07:18:36', '2024-10-31 07:22:39'),
(2, 'Mathias', 'Cruz', '$2y$10$klCL9WeByLaP1OxKaKCjfet5lfifG5E61iAzv2FDo4oi8cSLaB/ke', 'mathi@test.com', '2024-10-31 07:16:18', '2024-10-31 07:16:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `codigo`) VALUES
(1, 'Electrónica', 'E1'),
(2, 'Mecánica', 'M1'),
(3, 'Soldadura', 'S1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `email`, `empresa`, `cargo`, `admin_id`) VALUES
(7, 'Ricardo', 'Ros', 'ricardo@dapango.tech', 'Dapango', 'Customers Sucsess', 1),
(8, 'Frederman', 'Villamizar', 'freder@test.com', 'Komppa', 'test', 1),
(11, 'Edgar', 'sayago', 'edgar@test.com', 'test', 'test', 2),
(12, 'Steffy', 'Cruz', 'steffy@test.com', 'test', 'test', 1),
(13, 'Cristian', 'Chavez', 'cristian@dapango.tech', 'NetGT', 'test', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `machines`
--

CREATE TABLE `machines` (
  `id` int(11) NOT NULL,
  `equipo` varchar(100) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `fabricante` varchar(100) DEFAULT NULL,
  `serial_carroceria` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `serial_motor` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `peso_operaciones` varchar(100) DEFAULT NULL,
  `neumaticos` varchar(100) DEFAULT NULL,
  `modelo_motor` varchar(100) DEFAULT NULL,
  `transmision` varchar(100) DEFAULT NULL,
  `revoluciones_motor` varchar(100) DEFAULT NULL,
  `combustible` varchar(100) DEFAULT NULL,
  `potencia_neta` varchar(100) DEFAULT NULL,
  `peso_bruto_trabajo` varchar(100) DEFAULT NULL,
  `torque_neto` varchar(100) DEFAULT NULL,
  `voltaje` varchar(100) DEFAULT NULL,
  `sistema_alimentacion` varchar(100) DEFAULT NULL,
  `cilindros` varchar(100) DEFAULT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `denominacion` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `fecha_en_obra` date DEFAULT NULL,
  `tiempo_funcionamiento` varchar(100) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `machines`
--

INSERT INTO `machines` (`id`, `equipo`, `referencia`, `modelo`, `fabricante`, `serial_carroceria`, `marca`, `ubicacion`, `serie`, `serial_motor`, `color`, `peso_operaciones`, `neumaticos`, `modelo_motor`, `transmision`, `revoluciones_motor`, `combustible`, `potencia_neta`, `peso_bruto_trabajo`, `torque_neto`, `voltaje`, `sistema_alimentacion`, `cilindros`, `codigo`, `denominacion`, `cantidad`, `fecha_fabricacion`, `fecha_en_obra`, `tiempo_funcionamiento`, `cliente_id`, `admin_id`) VALUES
(20, 'Excavadora', 'EX123', 'ModeloX', 'Caterpillar', 'SC456789', 'CAT', 'Sitio A', 'Serie987', 'SM12345', 'Amarillo', '15000', 'Radiales', 'MX2020', 'Automática', '2200', 'Diesel', '180', '20000', '400', '24', 'Inyección directa', '6', 'CAT2020', 'Excavadora hidráulica', 5, '2020-05-15', '2020-06-01', '500', 7, 1),
(22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', '0000-00-00', '', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_mantenimiento`
--

CREATE TABLE `ordenes_mantenimiento` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `maquina_id` int(11) NOT NULL,
  `tipo_mantenimiento` varchar(255) DEFAULT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `fecha_culminacion` date DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `solicita` varchar(255) DEFAULT NULL,
  `autoriza` varchar(255) DEFAULT NULL,
  `ejecuta` varchar(255) DEFAULT NULL,
  `supervisa` varchar(255) DEFAULT NULL,
  `descripcion_tarea` text DEFAULT NULL,
  `tiempo_estimado` int(11) DEFAULT NULL,
  `tiempo_real` int(11) DEFAULT NULL,
  `codigo_repuesto` varchar(255) DEFAULT NULL,
  `descripcion_repuesto` text DEFAULT NULL,
  `cantidad_planificada` int(11) DEFAULT NULL,
  `cantidad_utilizada` int(11) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `nombre_personal` varchar(255) DEFAULT NULL,
  `horas_requeridas` int(11) DEFAULT NULL,
  `horas_normales` int(11) DEFAULT NULL,
  `horas_extras` int(11) DEFAULT NULL,
  `codigo_epp` varchar(255) DEFAULT NULL,
  `descripcion_epp` text DEFAULT NULL,
  `cantidad_planificada_epp` int(11) DEFAULT NULL,
  `cantidad_utilizada_epp` int(11) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `observacion_general` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_trabajo`
--

CREATE TABLE `ordenes_trabajo` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `equipo` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `nro_bien` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `serial_motor` varchar(255) DEFAULT NULL,
  `serial_carroceria` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `tipo_uso` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `objetivo` text DEFAULT NULL,
  `tipo_trabajo` varchar(255) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_culminacion` date DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `solicita` varchar(255) DEFAULT NULL,
  `autoriza` varchar(255) DEFAULT NULL,
  `ejecuta` varchar(255) DEFAULT NULL,
  `supervisa` varchar(255) DEFAULT NULL,
  `descripcion_tarea` text DEFAULT NULL,
  `tiempo_estimado` int(11) DEFAULT NULL,
  `tiempo_real` int(11) DEFAULT NULL,
  `codigo_repuesto` varchar(255) DEFAULT NULL,
  `descripcion_repuesto` text DEFAULT NULL,
  `cantidad_planificada` int(11) DEFAULT NULL,
  `cantidad_utilizada` int(11) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `nombre_personal` varchar(255) DEFAULT NULL,
  `horas_requeridas` int(11) DEFAULT NULL,
  `horas_normales` int(11) DEFAULT NULL,
  `horas_extras` int(11) DEFAULT NULL,
  `codigo_epp` varchar(255) DEFAULT NULL,
  `descripcion_epp` text DEFAULT NULL,
  `cantidad_planificada_epp` int(11) DEFAULT NULL,
  `cantidad_utilizada_epp` int(11) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `observacion_general` text DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `maquina_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tecnicos`
--

INSERT INTO `tecnicos` (`id`, `nombre`, `apellido`, `categoria_id`, `admin_id`) VALUES
(1, 'Juan', 'Pérez', 1, NULL),
(2, 'María', 'Gómez', 2, NULL),
(3, 'Pedro', 'Hernandez', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `tipo` enum('admin','cliente') NOT NULL DEFAULT 'cliente',
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `contrasena`, `tipo`, `creado_en`, `admin_id`) VALUES
(1, 'Mathias', 'Acuna', 'mathias@test.com', '123456$$', 'cliente', '2024-10-31 06:08:49', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indices de la tabla `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `machines_ibfk_1` (`cliente_id`);

--
-- Indices de la tabla `ordenes_mantenimiento`
--
ALTER TABLE `ordenes_mantenimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maquina_id` (`maquina_id`),
  ADD KEY `ordenes_mantenimiento_ibfk_1` (`cliente_id`);

--
-- Indices de la tabla `ordenes_trabajo`
--
ALTER TABLE `ordenes_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maquina_id` (`maquina_id`),
  ADD KEY `ordenes_trabajo_ibfk_1` (`cliente_id`);

--
-- Indices de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`email`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `machines`
--
ALTER TABLE `machines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `ordenes_mantenimiento`
--
ALTER TABLE `ordenes_mantenimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenes_trabajo`
--
ALTER TABLE `ordenes_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `machines`
--
ALTER TABLE `machines`
  ADD CONSTRAINT `machines_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `machines_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ordenes_mantenimiento`
--
ALTER TABLE `ordenes_mantenimiento`
  ADD CONSTRAINT `ordenes_mantenimiento_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_mantenimiento_ibfk_2` FOREIGN KEY (`maquina_id`) REFERENCES `machines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ordenes_trabajo`
--
ALTER TABLE `ordenes_trabajo`
  ADD CONSTRAINT `ordenes_trabajo_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_trabajo_ibfk_2` FOREIGN KEY (`maquina_id`) REFERENCES `machines` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD CONSTRAINT `tecnicos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tecnicos_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
