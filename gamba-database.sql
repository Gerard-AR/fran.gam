-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2024 at 06:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamba-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `alertID` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alertDesc` varchar(50) NOT NULL DEFAULT '"Normal"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`alertID`, `alertDesc`) VALUES
(0, 'Normal'),
(1, 'Cuidado'),
(2, 'Alerta'),
(3, 'Peligro');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billID` int(11) NOT NULL,
  `billDate` date NOT NULL,
  `billVendor` int(11) NOT NULL,
  `billClient` int(11) NOT NULL,
  `billPrice` float NOT NULL,
  `billNote` varchar(300) NOT NULL,
  `billStatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_to_order`
--

CREATE TABLE `bill_to_order` (
  `btoID` int(11) NOT NULL,
  `billID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `caracteristicas_tecnicas`
--

CREATE TABLE `caracteristicas_tecnicas` (
  `id` int(11) NOT NULL,
  `peso_operaciones` varchar(255) DEFAULT NULL,
  `neumaticos` varchar(255) DEFAULT NULL,
  `modelo_motor` varchar(255) DEFAULT NULL,
  `transmision` varchar(255) DEFAULT NULL,
  `revoluciones_motor` varchar(255) DEFAULT NULL,
  `combustible` varchar(255) DEFAULT NULL,
  `potencia_neta` varchar(255) DEFAULT NULL,
  `peso_bruto_trabajo` varchar(255) DEFAULT NULL,
  `torque_neto` varchar(255) DEFAULT NULL,
  `voltaje` varchar(255) DEFAULT NULL,
  `sistema_alimentacion` varchar(255) DEFAULT NULL,
  `cilindros` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caracteristicas_tecnicas`
--

INSERT INTO `caracteristicas_tecnicas` (`id`, `peso_operaciones`, `neumaticos`, `modelo_motor`, `transmision`, `revoluciones_motor`, `combustible`, `potencia_neta`, `peso_bruto_trabajo`, `torque_neto`, `voltaje`, `sistema_alimentacion`, `cilindros`) VALUES
(1, 'PesoOp1', 'Neumaticos1', 'ModeloMotor1', 'Transmision1', 'RevMotor1', 'Combustible1', 'PotenciaNeta1', 'PesoBruto1', 'TorqueNeto1', 'Voltaje1', 'SistemaAlimentacion1', 'Cilindros1'),
(2, 'PesoOp2', 'Neumaticos2', 'ModeloMotor2', 'Transmision2', 'RevMotor2', 'Combustible2', 'PotenciaNeta2', 'PesoBruto2', 'TorqueNeto2', 'Voltaje2', 'SistemaAlimentacion2', 'Cilindros2'),
(3, 'PesoOp3', 'Neumaticos3', 'ModeloMotor3', 'Transmision3', 'RevMotor3', 'Combustible3', 'PotenciaNeta3', 'PesoBruto3', 'TorqueNeto3', 'Voltaje3', 'SistemaAlimentacion3', 'Cilindros3'),
(4, 'PesoOp4', 'Neumaticos4', 'ModeloMotor4', 'Transmision4', 'RevMotor4', 'Combustible4', 'PotenciaNeta4', 'PesoBruto4', 'TorqueNeto4', 'Voltaje4', 'SistemaAlimentacion4', 'Cilindros4'),
(5, 'PesoOp5', 'Neumaticos5', 'ModeloMotor5', 'Transmision5', 'RevMotor5', 'Combustible5', 'PotenciaNeta5', 'PesoBruto5', 'TorqueNeto5', 'Voltaje5', 'SistemaAlimentacion5', 'Cilindros5'),
(6, 'PesoOp6', 'Neumaticos6', 'ModeloMotor6', 'Transmision6', 'RevMotor6', 'Combustible6', 'PotenciaNeta6', 'PesoBruto6', 'TorqueNeto6', 'Voltaje6', 'SistemaAlimentacion6', 'Cilindros6'),
(7, 'PesoOp7', 'Neumaticos7', 'ModeloMotor7', 'Transmision7', 'RevMotor7', 'Combustible7', 'PotenciaNeta7', 'PesoBruto7', 'TorqueNeto7', 'Voltaje7', 'SistemaAlimentacion7', 'Cilindros7'),
(8, 'PesoOp8', 'Neumaticos8', 'ModeloMotor8', 'Transmision8', 'RevMotor8', 'Combustible8', 'PotenciaNeta8', 'PesoBruto8', 'TorqueNeto8', 'Voltaje8', 'SistemaAlimentacion8', 'Cilindros8'),
(9, 'PesoOp9', 'Neumaticos9', 'ModeloMotor9', 'Transmision9', 'RevMotor9', 'Combustible9', 'PotenciaNeta9', 'PesoBruto9', 'TorqueNeto9', 'Voltaje9', 'SistemaAlimentacion9', 'Cilindros9'),
(10, 'PesoOp10', 'Neumaticos10', 'ModeloMotor10', 'Transmision10', 'RevMotor10', 'Combustible10', 'PotenciaNeta10', 'PesoBruto10', 'TorqueNeto10', 'Voltaje10', 'SistemaAlimentacion10', 'Cilindros10'),
(11, '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '1000 kg', 'Neumáticos ABC', 'Modelo Motor XYZ', 'Transmisión Automática', '3000 RPM', 'Gasolina', '150 HP', '2000 kg', '300 Nm', '220V', 'Inyección Directa', '4 cilindros'),
(16, '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '', '', '', '', '', '', '', '', '', '', '', ''),
(22, '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `codigo`) VALUES
(1, 'Mecánica', 'M1'),
(2, 'Eléctrica', 'E1'),
(3, 'Soldadura', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `checkselection`
--

CREATE TABLE `checkselection` (
  `chkSel` int(11) NOT NULL,
  `chkDesc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkselection`
--

INSERT INTO `checkselection` (`chkSel`, `chkDesc`) VALUES
(1, 'Buena'),
(2, 'Mala'),
(3, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `chklist`
--

CREATE TABLE `chklist` (
  `orderID` int(11) NOT NULL,
  `optCod` int(11) NOT NULL,
  `chkSel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chklist`
--

INSERT INTO `chklist` (`orderID`, `optCod`, `chkSel`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 3),
(1, 6, 2),
(1, 7, 1),
(1, 8, 1),
(1, 9, 3),
(1, 10, 2),
(1, 11, 1),
(1, 12, 1),
(1, 13, 3),
(1, 14, 2),
(1, 15, 1),
(1, 16, 2),
(1, 17, 3),
(1, 18, 2),
(1, 19, 1),
(1, 20, 3),
(1, 21, 1),
(1, 22, 2),
(1, 23, 3),
(1, 24, 1),
(2, 1, 3),
(2, 2, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(2, 7, 3),
(2, 8, 1),
(2, 9, 2),
(2, 10, 3),
(2, 11, 1),
(2, 12, 3),
(2, 13, 2),
(2, 14, 1),
(2, 15, 3),
(2, 16, 1),
(2, 17, 3),
(2, 18, 2),
(2, 19, 1),
(2, 20, 3),
(2, 21, 1),
(2, 22, 2),
(2, 23, 3),
(2, 24, 1),
(17, 1, 3),
(17, 2, 1),
(17, 3, 3),
(17, 4, 1),
(17, 5, 2),
(17, 6, 1),
(17, 7, 1),
(17, 8, 3),
(17, 9, 1),
(17, 10, 3),
(17, 11, 1),
(17, 12, 3),
(17, 13, 1),
(17, 14, 1),
(17, 15, 3),
(17, 16, 1),
(17, 17, 3),
(17, 18, 1),
(17, 19, 3),
(17, 20, 1),
(17, 21, 3),
(17, 22, 1),
(17, 23, 1),
(17, 24, 3),
(18, 1, 1),
(18, 2, 1),
(18, 3, 2),
(18, 4, 3),
(18, 5, 1),
(18, 6, 3),
(18, 7, 3),
(18, 8, 3),
(18, 9, 1),
(18, 10, 3),
(18, 11, 1),
(18, 12, 3),
(18, 13, 1),
(18, 14, 3),
(18, 15, 1),
(18, 16, 3),
(18, 17, 1),
(18, 18, 3),
(18, 19, 3),
(18, 20, 1),
(18, 21, 1),
(18, 22, 3),
(18, 23, 1),
(18, 24, 2),
(19, 1, 3),
(19, 2, 1),
(19, 3, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 3),
(19, 7, 1),
(19, 8, 2),
(19, 9, 2),
(19, 10, 1),
(19, 11, 3),
(19, 12, 1),
(19, 13, 3),
(19, 14, 2),
(19, 15, 1),
(19, 16, 1),
(19, 17, 3),
(19, 18, 3),
(19, 19, 2),
(19, 20, 1),
(19, 21, 1),
(19, 22, 3),
(19, 23, 3),
(19, 24, 3),
(32, 1, 1),
(32, 2, 2),
(32, 3, 1),
(32, 4, 1),
(32, 5, 3),
(32, 6, 1),
(32, 7, 3),
(32, 8, 1),
(32, 9, 1),
(32, 10, 3),
(32, 11, 1),
(32, 12, 3),
(32, 13, 1),
(32, 14, 3),
(32, 15, 1),
(32, 16, 1),
(32, 17, 3),
(32, 18, 3),
(32, 19, 1),
(32, 20, 3),
(32, 21, 1),
(32, 22, 2),
(32, 23, 3),
(32, 24, 1),
(33, 1, 1),
(33, 2, 1),
(33, 3, 3),
(33, 4, 2),
(33, 5, 3),
(33, 6, 1),
(33, 7, 3),
(33, 8, 1),
(33, 9, 3),
(33, 10, 1),
(33, 11, 3),
(33, 12, 3),
(33, 13, 3),
(33, 14, 1),
(33, 15, 3),
(33, 16, 3),
(33, 17, 1),
(33, 18, 1),
(33, 19, 3),
(33, 20, 3),
(33, 21, 1),
(33, 22, 3),
(33, 23, 1),
(33, 24, 3),
(34, 1, 3),
(34, 2, 1),
(34, 3, 1),
(34, 4, 2),
(34, 5, 1),
(34, 6, 2),
(34, 7, 3),
(34, 8, 1),
(34, 9, 3),
(34, 10, 2),
(34, 11, 1),
(34, 12, 3),
(34, 13, 1),
(34, 14, 2),
(34, 15, 3),
(34, 16, 2),
(34, 17, 1),
(34, 18, 3),
(34, 19, 1),
(34, 20, 2),
(34, 21, 3),
(34, 22, 1),
(34, 23, 1),
(34, 24, 2),
(35, 1, 2),
(35, 2, 3),
(35, 3, 1),
(35, 4, 3),
(35, 5, 3),
(35, 6, 1),
(35, 7, 2),
(35, 8, 3),
(35, 9, 3),
(35, 10, 1),
(35, 11, 3),
(35, 12, 1),
(35, 13, 3),
(35, 14, 1),
(35, 15, 3),
(35, 16, 1),
(35, 17, 3),
(35, 18, 3),
(35, 19, 1),
(35, 20, 3),
(35, 21, 3),
(35, 22, 1),
(35, 23, 3),
(35, 24, 1),
(41, 1, 1),
(41, 2, 2),
(41, 3, 3),
(41, 4, 1),
(41, 5, 1),
(41, 6, 2),
(41, 7, 1),
(41, 8, 1),
(41, 9, 2),
(41, 10, 3),
(41, 11, 1),
(41, 12, 3),
(41, 13, 1),
(41, 14, 2),
(41, 15, 1),
(41, 16, 2),
(41, 17, 3),
(41, 18, 1),
(41, 19, 1),
(41, 20, 1),
(41, 21, 1),
(41, 22, 1),
(41, 23, 3),
(41, 24, 1),
(42, 1, 1),
(42, 2, 2),
(42, 3, 2),
(42, 4, 1),
(42, 5, 3),
(42, 6, 1),
(42, 7, 1),
(42, 8, 3),
(42, 9, 1),
(42, 10, 1),
(42, 11, 3),
(42, 12, 3),
(42, 13, 2),
(42, 14, 2),
(42, 15, 3),
(42, 16, 3),
(42, 17, 1),
(42, 18, 1),
(42, 19, 1),
(42, 20, 1),
(42, 21, 1),
(42, 22, 1),
(42, 23, 1),
(42, 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `empresa`, `cargo`, `role`) VALUES
(1, 'Gerardo', 'Acuña', 'Dapango', 'Customers Sucsess', 0),
(2, 'Ricardo', 'Ros', 'Dapango', 'Customers Sucsess', 0),
(3, 'Frederman', 'Villamizar', 'Geredvics', 'Gerente', 0),
(4, 'Edgar', 'Sayago', 'Komppa', 'Encargado', 0),
(5, 'Victor', 'Sayago', 'Komppa', 'Sub Encargado', 0),
(6, 'Robert', 'Sanchez', 'Test', 'Jefe de  Mantenimiento', 0),
(7, 'Cristian', 'Chavez', 'Dapango', 'Jefe de  Mantenimiento', 0),
(8, 'Mathias', 'Acuña', 'Technologies', 'Sub Encargado', 0),
(10, 'Jose', 'Vargas', 'CasaOfertas', 'Sub Encargado', 0),
(11, 'test', 'test', 'test', 'test', 0),
(12, 'test1', 'test1', 'test1', 'test1', 0),
(13, 'test2', 'test2', 'test2', 'test2', 0),
(14, 'user', 'user', 'user', 'user', 0),
(15, 'test 4', 'test4', 'test4', 'test4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datos_tecnicos`
--

CREATE TABLE `datos_tecnicos` (
  `id` int(11) NOT NULL,
  `equipo` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `fabricante` varchar(255) DEFAULT NULL,
  `serial_carroceria` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `serial_motor` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datos_tecnicos`
--

INSERT INTO `datos_tecnicos` (`id`, `equipo`, `referencia`, `modelo`, `fabricante`, `serial_carroceria`, `marca`, `ubicacion`, `serie`, `serial_motor`, `color`) VALUES
(1, 'Equipo1', 'Ref1', 'Mod1', 'Fab1', 'SerialCar1', 'Marca1', 'Ubicacion1', 'Serie1', 'SerialMotor1', 'Color1'),
(2, 'Equipo2', 'Ref2', 'Mod2', 'Fab2', 'SerialCar2', 'Marca2', 'Ubicacion2', 'Serie2', 'SerialMotor2', 'Color2'),
(3, 'Equipo3', 'Ref3', 'Mod3', 'Fab3', 'SerialCar3', 'Marca3', 'Ubicacion3', 'Serie3', 'SerialMotor3', 'Color3'),
(4, 'Equipo4', 'Ref4', 'Mod4', 'Fab4', 'SerialCar4', 'Marca4', 'Ubicacion4', 'Serie4', 'SerialMotor4', 'Color4'),
(5, 'Equipo5', 'Ref5', 'Mod5', 'Fab5', 'SerialCar5', 'Marca5', 'Ubicacion5', 'Serie5', 'SerialMotor5', 'Color5'),
(6, 'Equipo6', 'Ref6', 'Mod6', 'Fab6', 'SerialCar6', 'Marca6', 'Ubicacion6', 'Serie6', 'SerialMotor6', 'Color6'),
(7, 'Equipo7', 'Ref7', 'Mod7', 'Fab7', 'SerialCar7', 'Marca7', 'Ubicacion7', 'Serie7', 'SerialMotor7', 'Color7'),
(8, 'Equipo8', 'Ref8', 'Mod8', 'Fab8', 'SerialCar8', 'Marca8', 'Ubicacion8', 'Serie8', 'SerialMotor8', 'Color8'),
(9, 'Equipo9', 'Ref9', 'Mod9', 'Fab9', 'SerialCar9', 'Marca9', 'Ubicacion9', 'Serie9', 'SerialMotor9', 'Color9'),
(10, 'Equipo10', 'Ref10', 'Mod10', 'Fab10', 'SerialCar10', 'Marca10', 'Ubicacion10', 'Serie10', 'SerialMotor10', 'Color10'),
(11, '', '', '', '', '', '', '', '', '', ''),
(12, '', '', '', '', '', '', '', '', '', ''),
(13, '', '', '', '', '', '', '', '', '', ''),
(14, '', '', '', '', '', '', '', '', '', ''),
(15, '', '', '', '', '', '', '', '', '', ''),
(16, '', '', '', '', '', '', '', '', '', ''),
(17, 'Excavadora', 'EX123', 'Modelo ABC', 'Fabricante XYZ', 'SC123', 'Marca A', 'Ubicación 1', 'S123', 'SM456', 'Rojo'),
(18, '', '', '', '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', '', '', '', ''),
(21, '', '', '', '', '', '', '', '', '', ''),
(22, '', '', '', '', '', '', '', '', '', ''),
(23, '', '', '', '', '', '', '', '', '', ''),
(24, '', '', '', '', '', '', '', '', '', ''),
(25, '', '', '', '', '', '', '', '', '', ''),
(26, '', '', '', '', '', '', '', '', '', ''),
(27, '', '', '', '', '', '', '', '', '', ''),
(28, '', '', '', '', '', '', '', '', '', ''),
(29, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `encargados`
--

CREATE TABLE `encargados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `encargados`
--

INSERT INTO `encargados` (`id`, `nombre`, `categoria_id`) VALUES
(1, 'Victor Sayago', 1),
(2, 'Juan Arias', 2),
(3, 'Gerardo Acuña', 3);

-- --------------------------------------------------------

--
-- Table structure for table `firms`
--

CREATE TABLE `firms` (
  `firmsID` int(11) NOT NULL,
  `firmsCode` varchar(50) NOT NULL,
  `firms_name` varchar(50) NOT NULL,
  `firmsPhone` int(11) NOT NULL,
  `firms_mail` varchar(50) NOT NULL,
  `firms_address` varchar(200) NOT NULL,
  `firms_city` varchar(50) NOT NULL,
  `firms_st` varchar(3) NOT NULL,
  `firms_zip` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `firms`
--

INSERT INTO `firms` (`firmsID`, `firmsCode`, `firms_name`, `firmsPhone`, `firms_mail`, `firms_address`, `firms_city`, `firms_st`, `firms_zip`) VALUES
(1, '01', 'Dapango', 3559525, 'contacto@dapango.tech', '6502 NW 105th PL', 'Doral', 'FL', '33178');

-- --------------------------------------------------------

--
-- Table structure for table `historial_equipo`
--

CREATE TABLE `historial_equipo` (
  `id` int(11) NOT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `fecha_en_obra` date DEFAULT NULL,
  `tiempo_funcionamiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historial_equipo`
--

INSERT INTO `historial_equipo` (`id`, `fecha_fabricacion`, `fecha_en_obra`, `tiempo_funcionamiento`) VALUES
(1, '2020-01-01', '2020-06-01', '1000 horas'),
(2, '2020-02-01', '2020-07-01', '2000 horas'),
(3, '2020-03-01', '2020-08-01', '3000 horas'),
(4, '2020-04-01', '2020-09-01', '4000 horas'),
(5, '2020-05-01', '2020-10-01', '5000 horas'),
(6, '2020-06-01', '2020-11-01', '6000 horas'),
(7, '2020-07-01', '2020-12-01', '7000 horas'),
(8, '2020-08-01', '2021-01-01', '8000 horas'),
(9, '2020-09-01', '2021-02-01', '9000 horas'),
(10, '2020-10-01', '2021-03-01', '10000 horas'),
(11, '2023-01-15', '2021-03-01', '500 horas'),
(12, '0000-00-00', '0000-00-00', ''),
(13, '0000-00-00', '0000-00-00', ''),
(14, '0000-00-00', '0000-00-00', ''),
(15, '0000-00-00', '0000-00-00', ''),
(16, '0000-00-00', '0000-00-00', ''),
(17, '0000-00-00', '0000-00-00', ''),
(18, '0000-00-00', '0000-00-00', ''),
(19, '0000-00-00', '0000-00-00', ''),
(20, '0000-00-00', '0000-00-00', ''),
(21, '0000-00-00', '0000-00-00', ''),
(22, '0000-00-00', '0000-00-00', ''),
(23, '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `logID` int(11) NOT NULL,
  `codUser` int(11) NOT NULL,
  `macID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `logDesc` varchar(200) NOT NULL,
  `logDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `macID` varchar(50) NOT NULL,
  `macDesc` varchar(200) NOT NULL,
  `macModel` varchar(50) NOT NULL,
  `macBrand` varchar(50) NOT NULL,
  `macMaker` varchar(50) NOT NULL,
  `macType` varchar(50) DEFAULT NULL,
  `macColor` varchar(50) DEFAULT NULL,
  `macImg_src` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`macID`, `macDesc`, `macModel`, `macBrand`, `macMaker`, `macType`, `macColor`, `macImg_src`) VALUES
('1', 'CAMIONES PARA MINERÍA SUBTERRÁNEA', 'AD30', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('10', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '299D3 XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('100', 'MINIEXCAVADORAS', '317 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('101', 'EXCAVADORAS MEDIANAS', '320 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('102', 'MINIEXCAVADORAS', '320 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('103', 'EXCAVADORAS MEDIANAS', '320 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('104', 'MINIEXCAVADORAS', '320 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('105', 'EXCAVADORAS MEDIANAS', '323 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('106', 'MINIEXCAVADORAS', '323 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('107', 'EXCAVADORAS MEDIANAS', '325', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('108', 'EXCAVADORAS MEDIANAS', '326 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('109', 'MINIEXCAVADORAS', '326 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('11', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '216B3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('110', 'EXCAVADORAS MEDIANAS', '330 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('111', 'MINIEXCAVADORAS', '330 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('112', 'EXCAVADORAS MEDIANAS', '330 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('113', 'MINIEXCAVADORAS', '330 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('114', 'EXCAVADORAS MEDIANAS', '335', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('115', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'AP355F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('116', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'AP355', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('117', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'AP455', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('118', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'CADENA DE ACERO AP455', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('119', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'AP555', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('12', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '226D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('120', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'CADENA DE ACERO AP555', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('121', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'AP655', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('122', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'EXTENDEDORA DE CADENAS DE ACERO AP655', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('123', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'AP655F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('124', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE CADENAS', 'CADENA DE ACERP AP655F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('125', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE RUEDAS', 'AP300', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('126', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE RUEDAS', 'AP300F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('127', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE RUEDAS', 'AP400', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('128', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE RUEDAS', 'AP500', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('129', 'EXTENDEDORAS DE AGLOMERADO ASFÁLTICO DE RUEDAS', 'AP600', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('13', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '232D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('130', 'FRESADORAS', 'TREN DE RODAJE CON CADENA DE LA PM310', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('131', 'FRESADORAS', 'TREN DE RODAJE CON CADENA DE LA PM312', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('132', 'FRESADORAS', 'TREN DE RODAJE CON CADENA DE LA PM313', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('133', 'FRESADORAS', 'TREN DE RODAJE DE RUEDAS DE LA PM310', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('134', 'FRESADORAS', 'TREN DE RODAJE DE RUEDAS DE LA PM312', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('135', 'FRESADORAS', 'TREN DE RODAJE DE RUEDAS DE LA PM313', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('136', 'FRESADORAS', 'PM620', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('137', 'FRESADORAS', 'PM622', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('138', 'FRESADORAS', 'PM820', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('139', 'FRESADORAS', 'PM822', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('14', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '236D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('140', 'FRESADORAS', 'PM825', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('141', 'HOJAS DE EMPUJE GRANDES', 'D9', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('142', 'HOJAS DE EMPUJE GRANDES', 'D10', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('143', 'HOJAS DE EMPUJE GRANDES', 'D11/D11 CD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('144', 'HOJAS DE EMPUJE MEDIANAS', 'D4', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('145', 'HOJAS DE EMPUJE MEDIANAS', 'D5', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('146', 'HOJAS DE EMPUJE MEDIANAS', 'D6', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('147', 'HOJAS DE EMPUJE MEDIANAS', 'D6 XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('148', 'HOJAS DE EMPUJE MEDIANAS', 'D7', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('149', 'HOJAS DE EMPUJE MEDIANAS', 'D8', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('15', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '242D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('150', 'HOJAS DE EMPUJE PEQUEÑAS', 'D2', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('151', 'HOJAS DE EMPUJE PEQUEÑAS', 'D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('152', 'MANIPULADORAS DE MATERIALES DE CADENAS', 'MH3250', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('153', 'MANIPULADORAS DE MATERIALES DE CADENAS', 'MH3260', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('154', 'MANIPULADORAS DE MATERIALES DE RUEDAS', 'MH3022', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('155', 'MANIPULADORAS DE MATERIALES DE RUEDAS', 'MH3024', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('156', 'MANIPULADORAS DE MATERIALES DE RUEDAS', 'MH3026', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('157', 'MANIPULADORAS DE MATERIALES DE RUEDAS', 'MH3040', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('158', 'MANIPULADORAS DE MATERIALES DE RUEDAS', 'MH3050', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('159', 'MINIEXCAVADORAS', '300.9D', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('16', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '246D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('160', 'MINIEXCAVADORAS', 'HUP 300', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('161', 'MINIEXCAVADORAS', '301.5', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('162', 'MINIEXCAVADORAS', '301.6', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('163', 'MINIEXCAVADORAS', '301.7CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('164', 'MINIEXCAVADORAS', '301.8', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('165', 'MINIEXCAVADORAS', '302CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('166', 'MINIEXCAVADORAS', '302.7 CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('167', 'MINIEXCAVADORAS', '303 CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('168', 'MINIEXCAVADORAS', '303.5 CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('169', 'MINIEXCAVADORAS', '304', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('17', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '262D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('170', 'MINIEXCAVADORAS', '305 CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('171', 'MINIEXCAVADORAS', '306CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('172', 'MINIEXCAVADORAS', '306 CR VAB', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('173', 'MINIEXCAVADORAS', '307.5', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('174', 'MINIEXCAVADORAS', '308 CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('175', 'MINIEXCAVADORAS', '308 CR (PLUMA FIJA)', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('176', 'MINIEXCAVADORAS', '308 CR VAB', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('177', 'MINIEXCAVADORAS', '309 CR', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('178', 'MINIEXCAVADORAS', '309 CR VAB', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('179', 'MINIEXCAVADORAS', '310', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('18', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '272D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('180', 'EXCAVADORAS GRANDES', '336', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('181', 'EXCAVADORAS GRANDES', '340', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('182', 'EXCAVADORAS DE DEMOLICIÓN', '340 CON PLUMA RECTA', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('183', 'MINIEXCAVADORAS', '340 CON PLUMA RECTA', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('184', 'EXCAVACIÓN DE LARGO ALCANCE', '340 DE LARGO ALCANCE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('185', 'MINIEXCAVADORAS', '340 DE LARGO ALCANCE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('186', 'EXCAVADORAS DE DEMOLICIÓN', '340 UHD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('187', 'MINIEXCAVADORAS', '340 UHD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('188', 'EXCAVADORAS GRANDES', '350', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('189', 'EXCAVADORAS GRANDES', '352', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('19', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '272D3 XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('190', 'EXCAVADORAS DE DEMOLICIÓN', '352 CON PLUMA RECTA', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('191', 'MINIEXCAVADORAS', '352 CON PLUMA RECTA', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('192', 'EXCAVACIÓN DE LARGO ALCANCE', '352 LRE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('193', 'MINIEXCAVADORAS', '352 LRE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('194', 'EXCAVADORAS DE DEMOLICIÓN', '352 UHD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('195', 'MINIEXCAVADORAS', '352 UHD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('196', 'EXCAVADORAS GRANDES', '395 -TIER 4', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('197', 'MINIEXCAVADORAS', '395 -TIER 4', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('198', 'MINIEXCAVADORAS', '374 - TIER 4', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('199', 'CAMIÓN DE VOLTEO ARTICULADO', '410 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('2', 'CAMIONES PARA MINERÍA SUBTERRÁNEA', 'AD45', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('20', 'COMPACTADORES DE SUELOS', '825K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('200', 'RETROEXCAVADORAS', '410 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('201', 'MOTOTRAÍLLAS CON CAJA PARA CARBÓN', '637K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('202', 'MOTOTRAÍLLAS DE CAJA ABIERTA', '637K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('203', 'DUMPERES PARA MINERIA', '770G', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('204', 'MOTONIVELADORAS', '770G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('205', 'EXCAVADORAS DE RUEDAS', 'M314', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('206', 'MINIEXCAVADORAS', 'M314', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('207', 'EXCAVADORAS DE RUEDAS', 'M315', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('208', 'MINIEXCAVADORAS', 'M315', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('209', 'EXCAVADORAS DE RUEDAS', 'M316', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('21', 'COMPACTADORES DE SUELOS', 'CB1.1', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('210', 'MINIEXCAVADORAS', 'M316', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('211', 'EXCAVADORAS DE RUEDAS', 'M317', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('212', 'MINIEXCAVADORAS', 'M317', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('213', 'EXCAVADORAS DE RUEDAS', 'M318', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('214', 'MOTONIVELADORAS', '120 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('215', 'MOTONIVELADORAS', '120/120 AWD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('216', 'MOTONIVELADORAS', '140/140 AWD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('217', 'MOTONIVELADORAS', '140 GC/140 GC AWD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('218', 'MOTONIVELADORAS', '150/150 AWD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('219', 'MOTONIVELADORAS', '160/160 AWD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('22', 'COMPACTADORES DE SUELOS', 'CB1.8', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('220', 'MOTONIVELADORAS', '14', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('221', 'MOTONIVELADORAS', '16', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('222', 'MOTONIVELADORAS', '18', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('223', 'MOTONIVELADORAS', '24', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('224', 'MINIEXCAVADORAS', 'M318', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('225', 'MOTOTRAÍLLAS CON CAJA PARA CARBÓN', '657G', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('226', 'MOTOTRAÍLLAS DE CAJA ABIERTA', '621K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('227', 'MOTOTRAÍLLAS DE CAJA ABIERTA', '651', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('228', 'MOTOTRAÍLLAS DE CAJA ABIERTA', '631K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('229', 'EXCAVADORAS DE RUEDAS', 'M319', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('23', 'COMPACTADORES DE SUELOS', 'CB2.5', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('230', 'MOTOTRAÍLLAS DE CAJA ABIERTA', '657', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('231', 'PALAS DE CADENAS', '953', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('232', 'PALAS DE CADENAS', '963', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('233', 'PALAS DE CADENAS', '973K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('234', 'PALAS DE RUEDAS COMPACTAS', '906', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('235', 'PALAS DE RUEDAS COMPACTAS', '907', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('236', 'PALAS DE RUEDAS COMPACTAS', '908', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('237', 'PALAS DE RUEDAS COMPACTAS', '910', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('238', 'PALAS DE RUEDAS COMPACTAS', '914', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('239', 'PALAS DE RUEDAS COMPACTAS', '920', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('24', 'COMPACTADORES DE SUELOS', 'CB2.5 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('240', 'PALAS DE RUEDAS GRANDES', '986K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('241', 'PALAS DE RUEDAS GRANDES', '988K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('242', 'PALAS DE RUEDAS GRANDES', '988K XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('243', 'PALAS DE RUEDAS GRANDES', '990K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('244', 'PALAS DE RUEDAS GRANDES', '992', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('245', 'PALAS DE RUEDAS GRANDES', '993', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('246', 'PALAS DE RUEDAS GRANDES', '994K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('247', 'PALAS DE RUEDAS GRANDES', '995', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('248', 'PALAS DE RUEDAS MEDIANAS', '950', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('249', 'PALAS DE RUEDAS MEDIANAS', '950GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('25', 'COMPACTADORES DE SUELOS', 'CB2.7', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('250', 'PALAS DE RUEDAS MEDIANAS', '950M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('251', 'PALAS DE RUEDAS MEDIANAS', '962', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('252', 'PALAS DE RUEDAS MEDIANAS', '962M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('253', 'PALAS DE RUEDAS MEDIANAS', '966', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('254', 'PALAS DE RUEDAS MEDIANAS', '966 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('255', 'PALAS DE RUEDAS MEDIANAS', '966 XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('256', 'PALAS DE RUEDAS MEDIANAS', '972', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('257', 'PALAS DE RUEDAS MEDIANAS', '972 XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('258', 'PALAS DE RUEDAS MEDIANAS', '980', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('259', 'PALAS DE RUEDAS MEDIANAS', '980 XE', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('26', 'COMPACTADORES DE SUELOS', 'CB2.7 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('260', 'PALAS DE RUEDAS PEQUEÑAS', '926M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('261', 'PALAS DE RUEDAS PEQUEÑAS', 'MANIPULADORA AGRICOLA 926M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('262', 'PALAS DE RUEDAS PEQUEÑAS', 'MANIPULADOR DE ARIDOS 926M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('263', 'PALAS DE RUEDAS PEQUEÑAS', '930M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('264', 'PALAS DE RUEDAS PEQUEÑAS', 'MANIPILADOR DE ARIDOS 930M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('265', 'PALAS DE RUEDAS PEQUEÑAS', 'MANIPULADOR DE RESIDUOS 930M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('266', 'PALAS DE RUEDAS PEQUEÑAS', '938M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('267', 'PALAS DE RUEDAS PEQUEÑAS', 'MANIPILADOR DE ARIDOS 938M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('268', 'PALAS DE RUEDAS PEQUEÑAS', 'MANUPULADOR DE RESIDUOS 938M', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('269', 'PERFORADORAS GIRATORIAS', 'MD6200', 'CAT', 'DEFAULT', 'MINERIA', 'NO INDICA', 'NO INDICA'),
('27', 'COMPACTADORES DE SUELOS', 'CC2.7', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('270', 'PERFORADORAS GIRATORIAS', 'MD6250', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('271', 'PERFORADORAS GIRATORIAS', 'MD6310', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('272', 'RECICLADORAS DE PAVIMENTOS', 'RM400', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('273', 'RECICLADORAS DE PAVIMENTOS', 'RM500B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('274', 'RECICLADORAS DE PAVIMENTOS', 'RM600 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('275', 'RECICLADORAS DE PAVIMENTOS', '3RM800 -TIER 4F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('276', 'REGLONES', 'REGLA VIBRATORIA SE50 V', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('277', 'REGLONES', 'REGLA CON BARRA DE APISONADO SE50 VT', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('278', 'REGLONES', 'REGLA CON BARRA DE APISONADO SE56 VT XW', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('279', 'RETROPALAS', '428', 'CAT', 'DEFAULT', 'DESPLAZAMIENTO LATERAL', 'NO INDICA', 'NO INDICA'),
('28', 'COMPACTADORES DE SUELOS', 'CC2.7 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('280', 'RETROPALAS', '432', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('281', 'RETROPALAS', '434', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('282', 'RETROPALAS', '444', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('283', 'TIENDETUBOS', 'PL61', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('284', 'TIENDETUBOS', 'PL72', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('285', 'TIENDETUBOS', 'PL83', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('286', 'TIENDETUBOS', 'PL87', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('287', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R1300G', 'CAT', 'DEFAULT', 'CARGADORAS DE TRANSPORTE Y DESCARGA (LHD', ' LOAD-HAUL-DUMP) DE MINERÍA SUBTERRÁNEA,NO INDICA', 'NO INDICA'),
('288', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R1600H', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('289', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R1700', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('29', 'COMPACTADORES DE SUELOS', 'CB2.9', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('290', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R2900G', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('291', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R3000H', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('292', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R1700 XE (BATERIA ELECTRICA)', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('293', 'TRABAJOS SUBTERRÁNEOS: ROCA DURA', 'R2900 XE (DIESEL- ELECTRICA)', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('294', 'TRACTORES DE RUEDAS', '824K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('295', 'TRACTORES DE RUEDAS', '834K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('296', 'TRACTORES DE RUEDAS', 'CUBOS PARA CARBON Y VIRUTAS 834K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('297', 'TRACTORES DE RUEDAS', '844K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('298', 'TRACTORES DE RUEDAS', '854K', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('299', 'CAMIÓN ARTICULADO', 'HM300-2 KOMATSU', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('3', 'CAMIONES PARA MINERÍA SUBTERRÁNEA', 'AD63', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('30', 'COMPACTADORES DE SUELOS', 'CB4.0', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('300', 'CAMIÓN ARTICULADO', 'HM400-2 KOMATSU', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('301', 'CAMION CON TRACCION', '730E-AC SS', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('302', 'CAMION DE TRACCION', 'SS 730E-DC', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('303', 'CAMION DE TRACCION', '830E-AC', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('304', 'CAMION DE TRACCION', '860E-1K', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('305', 'CAMION DE TRACCION', '930E-4SE', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('306', 'CAMION DE TRACCION', 'SS 960E-2K', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('307', 'CAMION DE TRACCION', 'HD785-7', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('308', 'CAMION DE TRACCION', 'HD1500-7-EV-2', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('309', 'CAMION DE TRACCION', '960E-2 SS', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('31', 'COMPACTADORES DE SUELOS', 'CB4.4', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('310', 'CAMIÓN RÍGIDO', 'HD605-7EO SALES BROUCHURES 2009', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('311', 'CAMIÓN RÍGIDO', 'HD465-7EO SALES BROUCHURES 2009', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('312', 'CAMIONES', '9.30E-02', 'KOMAT\'SU', 'DEFAULT', 'MINERIA', 'NO INDICA', 'NO INDICA'),
('313', 'CARGADOR SOBRE RUEDAS', 'WA900-3 W-TIER 2', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('314', 'CARGADOR SOBRE RUEDAS', 'WA800-3 CON MOTOR TIER SS', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('315', 'CARGADOR SOBRE RUEDAS', 'WA1200-6SS-EV-4', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('316', 'CARGADOR SOBRE RUEDAS', 'CARGADOR FRONTAL KOMATSU WA200-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('317', 'CARGADOR SOBRE RUEDAS', 'WA320-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('318', 'CARGADOR SOBRE RUEDAS', 'WA380-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('319', 'CARGADOR SOBRE RUEDAS', 'WA500-6-TIER-3', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('32', 'COMPACTADORES DE SUELOS', 'CC4.0', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('320', 'CARGADOR SOBRE RUEDAS', 'WA600-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('321', 'CARGADOR SOBRE RUEDAS', 'WA430-6-TIER-3', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('322', 'CARGADOR SOBRE RUEDAS', 'WA470-6A', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('323', 'EXCAVADORAS', 'PC220LC-8', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('324', 'EXCAVADORAS', 'PC350LC-8', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('325', 'EXCAVADORAS', 'PC450LC-8', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('326', 'EXCAVADORAS', 'PC600LC-8', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('327', 'EXCAVADORAS', 'PC800SE-8', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('328', 'EXCAVADORAS', 'PC1250LC-8 NIVEL 3', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('329', 'MOTONIVELADORA', 'GD825A-2', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('33', 'COMPACTADORES DE SUELOS', 'CB34B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('330', 'MOTONIVELADORA', 'GD511A-1', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('331', 'MOTONIVELADORA', 'GD555-5', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('332', 'MOTONIVELADORA', 'GD675-5', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('333', 'PALAS HIDRAULICAS DIESEL FS', 'PC3000-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('334', 'PALAS HIDRAULICAS DIESEL FS', 'PC5500-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('335', 'PALAS HIDRAULICAS DIESEL FS', 'PC8000', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('336', 'PALAS HIDRAULICAS DIESEL FS', 'PC2000-8', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('337', 'TRACTOR DE ORUGAS', 'D375A-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('338', 'TRACTOR DE ORUGAS', 'D475A-5E0', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('339', 'TRACTOR DE ORUGAS', 'D575A-3SD SPEC SHEET', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('34', 'COMPACTADORES DE SUELOS', 'CB36B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('340', 'TRACTOR DE ORUGAS', 'D375A-6R', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('341', 'TRACTOR DE ORUGAS', 'D37EX PX-22', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('342', 'TRACTOR DE ORUGAS', 'D51EX PX-22', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('343', 'TRACTOR DE ORUGAS', 'D61EX-PX-15E0', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('344', 'TRACTOR DE ORUGAS', 'D65EX-16', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('345', 'TRACTOR DE ORUGAS', 'D275', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('346', 'TRACTOR DE ORUGAS', 'D155AX-6', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('347', 'TRACTOR DE ORUGAS', 'D39EX-PX-22', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('348', 'TRACTOR DE ORUGAS', 'D85EX-15E0', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('349', 'TRACTOR SOBRE RUEDAS', 'WD600-6 WHEEL DOZER SPEC SHEET', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('35', 'COMPACTADORES DE SUELOS', 'CB10', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('350', 'TRACTOR SOBRE RUEDAS', 'WD900-3', 'KOMAT\'SU', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('351', 'APLICADORES DE SÓLIDO', 'MAF 5000', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('352', 'ASPERSORAS INTEGRALES GREENSYSTEM™', 'PV1002', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('353', 'ASPERSORAS INTEGRALES GREENSYSTEM™', 'PV1004', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('354', 'ASPERSORAS INTEGRALES GREENSYSTEM™', 'PV1006', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('355', 'ASPERSORAS INTEGRALES GREENSYSTEM™', 'PV1020', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('356', 'ASPERSORAS INTEGRALES GREENSYSTEM™', 'PV1008', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('357', 'CAMIÓN DE VOLTEO ARTICULADO', '260 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('358', 'MINIEXCAVADORAS', 'M319', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('359', 'EXCAVADORAS DE RUEDAS', 'M320', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('36', 'COMPACTADORES DE SUELOS', 'CP11 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('360', 'CAMIÓN DE VOLTEO ARTICULADO', '460 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('361', 'CARGADOR CON RUEDAS', '524K-II', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('362', 'CARGADOR CON RUEDAS', '544K-II', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('363', 'CARGADOR CON RUEDAS', '624K-II', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('364', 'CARGADOR CON RUEDAS', '644K', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('365', 'CARGADOR CON RUEDAS', '724K', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('366', 'CARGADOR CON RUEDAS', '744L', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('367', 'CARGADOR CON RUEDAS', '824L', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('368', 'CARGADOR CON RUEDAS', '844L', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('369', 'CARGADOR CON RUEDAS', 'WL56', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('37', 'COMPACTADORES DE SUELOS', 'CS11 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('370', 'CARGADORA CON RUEDAS DE TAMAÑO MEDIANO', '444 G-TIER', 'JHON DEERE', 'DEFAULT', 'CONSTRUCCION', 'NO INDICA', 'NO INDICA'),
('371', 'CARGADORA DE RUEDAS DE TAMAÑO MEDIANO', '644 G-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('372', 'CARGADORES', '512', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('373', 'CARGADORES', '520M NSL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('374', 'CARGADORES', '520M MSL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('375', 'CARGADORES', '540M MSL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('376', 'CARGADORES', '741', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('377', 'CARGADORES', 'H310 MSL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('378', 'COSECHADORAS DE ALGODÓN', 'CP770', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('379', 'COSECHADORAS DE ALGODÓN', 'CS770', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('38', 'COMPACTADORES DE SUELOS', 'CS10 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('380', 'COSECHADORAS DE CAÑA', 'CH570', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('381', 'COSECHADORAS DE CAÑA', 'CH950', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('382', 'COSECHADORAS DE CAÑA', 'CH960', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('383', 'COSECHADORAS DE GRANOS', 'COSECHADORA DE GRANOS C230', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('384', 'COSECHADORAS DE GRANOS', 'S430', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('385', 'COSECHADORAS DE GRANOS', 'S440', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('386', 'COSECHADORAS DE GRANOS', 'S550', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('387', 'COSECHADORAS DE GRANOS', 'S760', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('388', 'COSECHADORAS DE GRANOS', 'S770', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('389', 'COSECHADORAS DE GRANOS', 'S780', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('39', 'COMPACTADORES DE SUELOS', 'CS12 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('390', 'COSECHADORAS DE GRANOS', 'S790', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('391', 'DESVARADORAS ROTATIVAS', 'MX7', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('392', 'DESVARADORAS ROTATIVAS', 'MX5', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('393', 'DESVARADORAS ROTATIVAS', 'MX6', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('394', 'DESVARADORAS ROTATIVAS', 'MX8', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('395', 'DESVARADORAS ROTATIVAS', 'MX10', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('396', 'DESVARADORAS ROTATIVAS', 'MX15', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('397', 'EQUIPO FORRAJERO', 'PICADORA 8100', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('398', 'EQUIPO FORRAJERO', 'PICADORA 8200', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('399', 'EQUIPO FORRAJERO', 'PICADORA 8300', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('4', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '239D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('40', 'COMPACTADORES DE SUELOS', 'CP12 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('400', 'EQUIPO FORRAJERO', 'PICADORA 8400', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('401', 'EQUIPO FORRAJERO', 'PICADORA 8500', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('402', 'EXCAVADORA', '17G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('403', 'EXCAVADORA', '26G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('404', 'EXCAVADORA', '30G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('405', 'EXCAVADORA', '35G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('406', 'EXCAVADORA', '130G LC', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('407', 'EXCAVADORA', '160G LC', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('408', 'EXCAVADORA', '200G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('409', 'EXCAVADORA', '210G LC', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('41', 'COMPACTADORES DE SUELOS', 'CP56B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('410', 'EXCAVADORA', '250G LC', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('411', 'EXCAVADORA', '350G LC', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('412', 'EXCAVADORA', '470G LC TIER 2', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('413', 'EXCAVADORA', '470G LC TIER 3', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('414', 'MINICARGADOR', '316GR IT4', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('415', 'MINICARGADOR', '318G IT4', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('416', 'MINICARGADOR', '320G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('417', 'MINICARGADOR', '324G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('418', 'MINICARGADOR DE ORUGAS', '325G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('419', 'MOTONIVELADORAS', '620G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('42', 'COMPACTADORES DE SUELOS', 'CS56B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('420', 'MOTONIVELADORAS', '620GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('421', 'MOTONIVELADORAS', '622G/GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('422', 'MOTONIVELADORAS', '670G', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('423', 'MOTONIVELADORAS', '672G/GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('424', 'MINIEXCAVADORAS', 'M320', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('425', 'MOTONIVELADORAS', '770GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('426', 'MOTONIVELADORAS', '772G/GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('427', 'MOTONIVELADORAS', '870G/GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('428', 'MOTONIVELADORAS', '872G/GP', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('429', 'PULVERIZADORAS', 'M4025', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('43', 'COMPACTADORES DE SUELOS', 'CS66B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('430', 'PULVERIZADORAS', '4630', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('431', 'PULVERIZADORAS', 'M4030', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('432', 'PULVERIZADORAS', 'M4040', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('433', 'PULVERIZADORAS AUTOPROPULSADAS', 'PULVERIZADOR PLA 120J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('434', 'PULVERIZADORAS AUTOPROPULSADAS', 'PULVERIZADOR PLA 125J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('435', 'PULVERIZADORAS AUTOPROPULSADAS', '2900', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('436', 'PULVERIZADORAS AUTOPROPULSADAS', '3300', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('437', 'PULVERIZADORAS AUTOPROPULSADAS', '3300 GD', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('438', 'PULVERIZADORAS AUTOPROPULSADAS', '3300 MD', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('439', 'PULVERIZADORAS AUTOPROPULSADAS', '3600 MD', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('44', 'COMPACTADORES DE SUELOS', 'CP68B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('440', 'PULVERIZADORAS DE ARRASTRE', 'MLP 3000 F', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('441', 'RASTRAS', 'RASTRA 680', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('442', 'RASTRAS', 'RASTRA 660', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('443', 'RASTRAS', 'RASTRA 670', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('444', 'RASTRAS', 'RASTRA MX225', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('445', 'RASTRAS', 'RASTRA MX425', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('446', 'EXCAVADORAS DE RUEDAS', 'M322', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('447', 'RETROEXCAVADORAS', '320 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('448', 'MINIEXCAVADORAS', 'M322', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('449', 'SEMBRADORAS', 'AGP 3 G EMERGE', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('45', 'COMPACTADORES DE SUELOS', 'CS68B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('450', 'SEMBRADORAS', 'AGP 3 F', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('451', 'SEMBRADORAS', 'STP G EMERGE', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('452', 'SEMBRADORAS', 'STP F', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('453', 'SEMBRADORAS', 'STP G TECH', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('454', 'SEMBRADORAS Y PLANTADORAS', 'SEMBRADORA 1890 / CARRO TOLVA 1910', 'JHON DEERE', 'DEFAULT', 'SEMBRADORAS DE GRANO FINO', 'NO INDICA', 'NO INDICA'),
('455', 'SEMBRADORAS Y PLANTADORAS', 'SEMBRADORA 1590', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('456', 'SEMBRADORAS Y PLANTADORAS', 'SEMBRADORAS BD11', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('457', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA GRANO GRUESO 1745', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('458', 'SEMBRADORAS Y PLANTADORAS', 'SEMBRADORA 1010', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('459', 'SEMBRADORAS Y PLANTADORAS', 'SEMBRADORA 1015', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('46', 'COMPACTADORES DE SUELOS', 'CP74B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('460', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 1107', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('461', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 1109', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('462', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 1111', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('463', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 1113', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('464', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 2113', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('465', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 2115', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('466', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 2122', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('467', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA 2130', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('468', 'SEMBRADORAS Y PLANTADORAS', 'SEMBRADORA 1035', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('469', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA GRANO GRUESO DB60', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('47', 'COMPACTADORES DE SUELOS', 'CS74B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('470', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA DB40', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('471', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA DB50', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('472', 'SEMBRADORAS Y PLANTADORAS', 'PLANTADORA DB90', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('473', 'TRACTOR', '5415', 'JHON DEERE', 'DEFAULT', 'AGRICULTURA', 'NO INDICA', 'NO INDICA'),
('474', 'TRACTOR', '5615', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('475', 'TRACTOR', '5715', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('476', 'TRACTOR', '5036C', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('477', 'TRACTOR', '5045D TS/DT', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('478', 'TRACTOR', '5055E', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('479', 'TRACTOR', '5065E', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('48', 'COMPACTADORES DE SUELOS', 'CS76B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('480', 'TRACTOR', '5075E', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('481', 'TRACTOR', '5076E OOS', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('482', 'TRACTOR', '5082E OOS/CAB', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('483', 'TRACTOR', '5090E OOS/CAB', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('484', 'TRACTOR', '6125M', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('485', 'TRACTOR', '6170M', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('486', 'TRACTOR', '6115J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('487', 'TRACTOR', '6135J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('488', 'TRACTOR', '6150J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('489', 'TRACTOR', '6170J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('49', 'COMPACTADORES DE SUELOS', 'CS78B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('490', 'TRACTOR', '6190J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('491', 'TRACTOR', '6140M', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('492', 'TRACTOR', '7210R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('493', 'TRACTOR', '7230R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('494', 'TRACTOR', '9570R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('495', 'TRACTOR', '9520R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('496', 'TRACTOR', '9470R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('497', 'TRACTOR', '9420R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('498', 'TRACTOR', '9370R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('499', 'TRACTOR', '9570R SCRAPER ESPECIAL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('5', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '249D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('50', 'DRAGALINAS', '8000', 'CAT', 'DEFAULT', 'MINERIA', 'NO INDICA', 'NO INDICA'),
('500', 'TRACTOR', '9570RT', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('501', 'TRACTOR', '9520R SCRAPER ESPECIAL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('502', 'TRACTOR', '9470R SCRAPER ESPECIAL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('503', 'TRACTOR', '9520RT', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('504', 'TRACTOR', '9470RT', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('505', 'TRACTOR', '9570RT SCRAPER ESPECIAL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('506', 'TRACTOR', '9520RT SCRAPER ESPECIAL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('507', 'TRACTOR', '9470RT SCRAPER ESPECIAL', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('508', 'TRACTOR', '6105J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('509', 'TRACTOR', '6140J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('51', 'DRAGALINAS', '8200', 'CAT', 'DEFAULT', 'MINERIA', 'NO INDICA', 'NO INDICA'),
('510', 'TRACTOR', '6155J', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('511', 'TRACTOR', '1025R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('512', 'TRACTOR', '2025R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('513', 'TRACTOR', '3038R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('514', 'TRACTOR', '4049M', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('515', 'TRACTOR', '4049R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('516', 'TRACTOR', '1026R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('517', 'TRACTOR', '2032R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('518', 'TRACTOR', '3033R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('519', 'TRACTOR', '3045R', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('52', 'DRAGALINAS', '8750', 'CAT', 'DEFAULT', 'MINERIA', 'NO INDICA', 'NO INDICA'),
('520', 'TRACTORES TOPADORES', '450 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('521', 'TRACTORES TOPADORES', '550 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('522', 'TRACTORES TOPADORES', '650 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('523', 'TRACTORES TOPADORES', '700J-II', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('524', 'TRACTORES TOPADORES', '850J-II', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('525', 'TRACTORES TOPADORES', '1050K', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('526', 'CAMIONES ARTICULADOS', 'A60H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('527', 'CAMIONES ARTICULADOS', 'A45GFS', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('528', 'CAMIONES ARTICULADOS', 'A45G', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('529', 'CAMIONES ARTICULADOS', 'A30G', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('53', 'DÚMPERES ARTICULADOS', '725', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('530', 'CAMIONES ARTICULADOS', 'A25G', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA');
INSERT INTO `machine` (`macID`, `macDesc`, `macModel`, `macBrand`, `macMaker`, `macType`, `macColor`, `macImg_src`) VALUES
('531', 'CAMIONES RÍGIDOS', 'R100E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('532', 'CAMIONES RÍGIDOS', 'R70D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('533', 'CAMIONES RÍGIDOS', 'R60', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('534', 'CARGADORAS DE RUEDAS', 'L350H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('535', 'CARGADORAS DE RUEDAS', 'L260H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('536', 'CARGADORAS DE RUEDAS', 'L200H HIGH LIFT', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('537', 'CARGADORAS DE RUEDAS', 'L180H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('538', 'CARGADORAS DE RUEDAS', 'L150H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('539', 'CARGADORAS DE RUEDAS', 'L120F', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('54', 'DÚMPERES ARTICULADOS', '730', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('540', 'CARGADORAS DE RUEDAS', 'L110F', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('541', 'CARGADORAS DE RUEDAS', 'L90F', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('542', 'CARGADORAS DE RUEDAS', 'L70F', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('543', 'CARGADORAS DE RUEDAS', 'L60F', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('544', 'CARGADORAS DE RUEDAS', 'L220H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('545', 'CARGADORAS DE RUEDAS', 'L120H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('546', 'CARGADORAS DE RUEDAS', 'L110H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('547', 'CARGADORAS DE RUEDAS', 'L90H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('548', 'CARGADORAS DE RUEDAS', 'L70H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('549', 'CARGADORAS DE RUEDAS', 'L60H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('55', 'DÚMPERES ARTICULADOS', '730 EJ', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('550', 'COMPACTADORES', 'SD110B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('551', 'COMPACTADORES', 'SD45B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('552', 'COMPACTADORES', 'SD160B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('553', 'COMPACTADORES', 'SD135B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('554', 'COMPACTADORES', 'SD115B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('555', 'COMPACTADORES', 'SD75B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('556', 'COMPACTADORES DE ASFALTO', 'PT220', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('557', 'COMPACTADORES DE ASFALTO', 'DD100', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('558', 'COMPACTADORES DE ASFALTO', 'DD38HF', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('559', 'COMPACTADORES DE ASFALTO', 'CR30', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('56', 'DÚMPERES ARTICULADOS', '735', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('560', 'COMPACTADORES DE ASFALTO', 'DD25B', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('561', 'COMPACTADORES DE ASFALTO', 'DD15', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('562', 'EQUIPO PARA DEMOLICIÓN', 'EC750EHR', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('563', 'EQUIPO PARA DEMOLICIÓN', 'EC480EHR', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('564', 'EQUIPO PARA DEMOLICIÓN', 'EC380E STRAIGHT BOOM', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('565', 'EQUIPO PARA DEMOLICIÓN', 'EC380EHR', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('566', 'EQUIPO PARA DEMOLICIÓN', 'EC300E STRAIGHT BOOM', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('567', 'EXCAVADORAS', 'EC950E', 'VOLVO', 'DEFAULT', 'EXCAVADORA DE ORUGAS GRANDES', 'NO INDICA', 'NO INDICA'),
('568', 'EXCAVADORAS', 'EC750D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('569', 'EXCAVADORAS', 'EC480D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('57', 'DÚMPERES ARTICULADOS', '740 EJ', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('570', 'EXCAVADORAS', 'EC380D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('571', 'EXCAVADORAS', 'EC350D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('572', 'EXCAVADORAS', 'EC300D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('573', 'EXCAVADORAS', 'EC250D', 'VOLVO', 'DEFAULT', 'EXCAVADORA DE ORUGAS MEDIANAS', 'NO INDICA', 'NO INDICA'),
('574', 'EXCAVADORAS', 'EC220DL FORESTRY', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('575', 'EXCAVADORAS', 'EC220D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('576', 'EXCAVADORAS', 'EC210D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('577', 'EXCAVADORAS', 'EC200D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('578', 'EXCAVADORAS', 'EC140D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('579', 'EXCAVADORAS', 'EW205D', 'VOLVO', 'DEFAULT', 'EXCAVADORAS DE RUEDAS MEDIANAS', 'NO INDICA', 'NO INDICA'),
('58', 'DÚMPERES ARTICULADOS', '740 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('580', 'EXCAVADORAS', 'EW60C', 'VOLVO', 'DEFAULT', 'EXCAVADORAS COMPACTAS', 'NO INDICA', 'NO INDICA'),
('581', 'EXCAVADORAS', 'EC55D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('582', 'EXCAVADORAS', 'ECR35D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('583', 'EXCAVADORAS', 'EC35D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('584', 'EXCAVADORAS', 'EC27D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('585', 'EXCAVADORAS', 'ECR25D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('586', 'EXCAVADORAS DE CADENAS GRANDES', 'EC950F', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('587', 'EXCAVADORAS DE CADENAS GRANDES', 'EC750E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('588', 'EXCAVADORAS DE CADENAS GRANDES', 'EC550E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('589', 'EXCAVADORAS DE CADENAS GRANDES', 'EC530E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('59', 'DÚMPERES ARTICULADOS', '745', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('590', 'EXCAVADORAS DE CADENAS GRANDES', 'EC480E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('591', 'EXCAVADORAS DE CADENAS GRANDES', 'EC380E HYBRID', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('592', 'EXCAVADORAS DE CADENAS GRANDES', 'EC380E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('593', 'EXCAVADORAS DE CADENAS GRANDES', 'ECR355E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('594', 'EXCAVADORAS DE CADENAS GRANDES', 'EC350E HYBRID', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('595', 'EXCAVADORAS DE CADENAS GRANDES', 'EC350E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('596', 'EXCAVADORAS DE CADENAS GRANDES', 'EC300E HYBRID', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('597', 'EXCAVADORAS DE CADENAS GRANDES', 'EC300E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('598', 'EXCAVADORAS DE CADENAS GRANDES', 'EC250E HYBRID', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('599', 'EXCAVADORAS DE CADENAS GRANDES', 'EC250E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('6', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '259D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('60', 'DUMPERES RIGIDOS', '775G', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('600', 'EXCAVADORAS DE CADENAS GRANDES', 'ECR235E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('601', 'EXCAVADORAS DE CADENAS GRANDES', 'EC220E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('602', 'EXCAVADORAS DE CADENAS GRANDES', 'EC200E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('603', 'EXCAVADORAS DE CADENAS GRANDES', 'EC180E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('604', 'EXCAVADORAS DE CADENAS GRANDES', 'EC160E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('605', 'EXCAVADORAS DE CADENAS GRANDES', 'ECR145E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('606', 'EXCAVADORAS DE CADENAS GRANDES', 'EC140E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('607', 'EXCAVADORAS DE CADENAS GRANDES', 'EW240E MH', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('608', 'EXCAVADORAS DE CADENAS GRANDES', 'EW220E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('609', 'EXCAVADORAS DE CADENAS GRANDES', 'EW200E MH', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('61', 'DUMPERES PARA MINERIA', '785', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('610', 'EXCAVADORAS DE CADENAS GRANDES', 'EW180E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('611', 'EXCAVADORAS DE CADENAS GRANDES', 'EWR170E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('612', 'EXCAVADORAS DE CADENAS GRANDES', 'EW160E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('613', 'EXCAVADORAS DE CADENAS GRANDES', 'EWR150E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('614', 'EXCAVADORAS DE CADENAS GRANDES', 'EWR130E', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('615', 'EXTENDEDORAS DE ORUGAS VOLVO ABG', 'P8820D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('616', 'EXTENDEDORAS DE ORUGAS VOLVO ABG', 'P7820D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('617', 'EXTENDEDORAS DE ORUGAS VOLVO ABG', 'P6820D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('618', 'EXTENDEDORAS DE ORUGAS VOLVO ABG', 'P2820D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('619', 'EXTENDEDORAS DE RUEDAS VOLVO ABG', 'P6870D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('62', 'DUMPERES PARA MINERIA', '789', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('620', 'EXTENDEDORAS DE RUEDAS VOLVO ABG', 'P2870D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('621', 'MINICARGADORA DE RUEDAS', 'L50H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('622', 'MINICARGADORA DE RUEDAS', 'L45H', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('623', 'MINICARGADORA DE RUEDAS', 'L35G', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('624', 'MINICARGADORA DE RUEDAS', 'L30G', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('625', 'PAVIMENTADORAS Y REGLAS DE ASFALTO', 'P5320B ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('626', 'PAVIMENTADORAS Y REGLAS DE ASFALTO', 'P4820D ABG', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('627', 'TIENDETUBOS', 'PL4809D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('628', 'TIENDETUBOS', 'PL3005D', 'VOLVO', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('629', 'CARGADORAS', '921G', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('63', 'DUMPERES PARA MINERIA', '793', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('630', 'CARGADORAS', '821E', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('631', 'EXCAVADORAS GRANDES', 'CX220C S2', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('632', 'EXCAVADORAS GRANDES', 'CX130C', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('633', 'EXCAVADORAS GRANDES', 'CX350C', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('634', 'MINI-CARGADORAS', 'SV300', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('635', 'MINI-CARGADORAS', 'SR250', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('636', 'MINI-CARGADORAS', 'SR200', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('637', 'MONIVELADORAS', '885B', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('638', 'MONIVELADORAS', '865B', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('639', 'MONIVELADORAS', '845B', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('64', 'DUMPERES PARA MINERIA', '793F', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('640', 'RETROEXCAVADORAS', '590 SUPER N', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('641', 'RETROEXCAVADORAS', '580 SUPER N', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('642', 'RETROEXCAVADORAS', '580 N', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('643', 'RODILLOS COMPACTADORES', '1107EX', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('644', 'RODILLOS COMPACTADORES', 'SV208', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('645', 'RODILLOS COMPACTADORES', 'SV210', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('646', 'RODILLOS COMPACTADORES', 'SV211', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('647', 'RODILLOS COMPACTADORES', 'SV212', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('648', 'RODILLOS COMPACTADORES', 'SV216', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('649', 'RODILLOS COMPACTADORES', 'DV23', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('65', 'DUMPERES PARA MINERIA', '794 AC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('650', 'RODILLOS COMPACTADORES', 'DV26', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('651', 'RODILLOS COMPACTADORES', 'DV36', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('652', 'RODILLOS COMPACTADORES', 'DV45', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('653', 'RODILLOS COMPACTADORES', 'DV207', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('654', 'RODILLOS COMPACTADORES', 'DV210', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('655', 'RODILLOS COMPACTADORES', 'DV213', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('656', 'RODILLOS COMPACTADORES', 'PT240', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('657', 'TRACTORES DE ORUGA', '2050M', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('658', 'TRACTORES DE ORUGA', '1650M', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('659', 'TRACTORES DE ORUGA', '1150M', 'CASE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('66', 'DUMPERES PARA MINERIA', '796 AC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('660', 'CARGADORAS FRONTALES', '12D EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('661', 'CARGADORAS FRONTALES', 'W130B', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('662', 'CARGADORAS FRONTALES', 'W170B', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('663', 'CARGADORAS FRONTALES', 'W190B', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('664', 'COMPACT TRACK LOADERS', 'C338', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('665', 'EXCAVADORAS', 'E145C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('666', 'EXCAVADORAS', 'E175C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('667', 'EXCAVADORAS', 'E215C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('668', 'EXCAVADORAS', 'E245C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('669', 'EXCAVADORAS', 'E385C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('67', 'DUMPERES PARA MINERIA', '798 AC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('670', 'EXCAVADORAS', 'E405C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('671', 'EXCAVADORAS', 'E485C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('672', 'EXCAVADORAS', 'E505C EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('673', 'MINICARGADORAS', 'L315', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('674', 'MINICARGADORAS', 'L318', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('675', 'MINICARGADORAS', 'L320', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('676', 'MINICARGADORAS', 'L323', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('677', 'MINICARGADORAS', 'L325', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('678', 'MINICARGADORAS', 'L330', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('679', 'MOTONIVELADORAS', 'RG140.B EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('68', 'MINIEXCAVADORAS', '313', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('680', 'MOTONIVELADORAS', 'RG170.B EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('681', 'MOTONIVELADORAS', 'RG200.B EVO', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('682', 'RETROEXCAVADORAS', 'B80C', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('683', 'RETROEXCAVADORAS', 'B90C-ITALIA', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('684', 'RETROEXCAVADORAS', 'B95B-BRAZIL', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('685', 'RETROEXCAVADORAS', 'B95C-ITALIA', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('686', 'RETROEXCAVADORAS', 'B110B-BRAZIL', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('687', 'RETROEXCAVADORAS', 'B110C-ITALIA', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('688', 'RETROEXCAVADORAS', 'B115C', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('689', 'RODILLO COMPACTADOR', 'V110PD', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('69', 'DUMPERES PARA MINERIA', '772G', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('690', 'TRACTORES DE ORUGAS', 'D140B', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('691', 'TRACTORES DE ORUGAS', 'D150B', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('692', 'TRACTORES DE ORUGAS', 'D180C', 'NEW HOLLAND', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('7', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '279D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('70', 'MINIEXCAVADORAS', '315', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('71', 'MINIEXCAVADORAS', '317', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('72', 'EXCAVADORAS DE ATAQUE FRONTAL ELÉCTRICAS CON CABLE', '7495 CON EMPUJE DE CUERDA', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('73', 'EXCAVADORAS DE ATAQUE FRONTAL ELÉCTRICAS CON CABLE', '7495 CON HYDRACROWD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('74', 'EXCAVADORAS DE ATAQUE FRONTAL ELÉCTRICAS CON CABLE', '7495 HD', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('75', 'EXCAVADORAS DE ATAQUE FRONTAL ELÉCTRICAS CON CABLE', '7395', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('76', 'EXCAVADORAS DE ATAQUE FRONTAL ELÉCTRICAS CON CABLE', '7295', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('77', 'MINIEXCAVADORAS', '325', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('78', 'MINIEXCAVADORAS', '335', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('79', 'MINIEXCAVADORAS', '336', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('8', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '289D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('80', 'MINIEXCAVADORAS', '340', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('81', 'EXCAVADORAS DE MINERÍA HIDRÁULICAS', '6015', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('82', 'EXCAVADORAS DE MINERÍA HIDRÁULICAS', '6020B', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('83', 'EXCAVADORAS DE MINERÍA HIDRÁULICAS', '6030', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('84', 'EXCAVADORAS DE MINERÍA HIDRÁULICAS', '6040', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('85', 'EXCAVADORAS DE MINERÍA HIDRÁULICAS', '6060', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('86', 'MINIEXCAVADORAS', '350', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('87', 'MINIEXCAVADORAS', '352', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('88', 'CAMIÓN DE VOLTEO ARTICULADO', '310 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('89', 'RETROEXCAVADORAS', '310 P-TIER', 'JHON DEERE', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('9', 'CARGADORAS COMPACTAS Y PALAS DE CADENAS COMPACTAS', '299D3', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('90', 'EXCAVADORAS PEQUEÑAS', '313', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('91', 'EXCAVADORAS PEQUEÑAS', '313 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('92', 'MINIEXCAVADORAS', '313 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('93', 'EXCAVADORAS DE RUEDAS', 'M321', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('94', 'EXCAVADORAS PEQUEÑAS', '315', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('95', 'EXCAVADORAS PEQUEÑAS', '315 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('96', 'MINIEXCAVADORAS', '315 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('97', 'EXCAVADORAS PEQUEÑAS', '317', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('98', 'EXCAVADORAS PEQUEÑAS', '317 GC', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA'),
('99', 'EXCAVADORAS GRANDES', '374 -TIER 4', 'CAT', 'DEFAULT', 'NO INDICA', 'NO INDICA', 'NO INDICA');

-- --------------------------------------------------------

--
-- Table structure for table `machine_parts`
--

CREATE TABLE `machine_parts` (
  `macpartID` int(11) NOT NULL,
  `macModel` varchar(50) NOT NULL,
  `partID` int(11) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maquinas`
--

CREATE TABLE `maquinas` (
  `id` int(11) NOT NULL,
  `equipo` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `fabricante` varchar(255) DEFAULT NULL,
  `serial_carroceria` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `serial_motor` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `peso_operaciones` varchar(255) DEFAULT NULL,
  `neumaticos` varchar(255) DEFAULT NULL,
  `modelo_motor` varchar(255) DEFAULT NULL,
  `transmision` varchar(255) DEFAULT NULL,
  `revoluciones_motor` varchar(255) DEFAULT NULL,
  `combustible` varchar(255) DEFAULT NULL,
  `potencia_neta` varchar(255) DEFAULT NULL,
  `peso_bruto_trabajo` varchar(255) DEFAULT NULL,
  `torque_neto` varchar(255) DEFAULT NULL,
  `voltaje` varchar(255) DEFAULT NULL,
  `sistema_alimentacion` varchar(255) DEFAULT NULL,
  `cilindros` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `fecha_en_obra` date DEFAULT NULL,
  `tiempo_funcionamiento` varchar(255) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maquinas`
--

INSERT INTO `maquinas` (`id`, `equipo`, `referencia`, `modelo`, `fabricante`, `serial_carroceria`, `marca`, `ubicacion`, `serie`, `serial_motor`, `color`, `peso_operaciones`, `neumaticos`, `modelo_motor`, `transmision`, `revoluciones_motor`, `combustible`, `potencia_neta`, `peso_bruto_trabajo`, `torque_neto`, `voltaje`, `sistema_alimentacion`, `cilindros`, `codigo`, `denominacion`, `cantidad`, `fecha_fabricacion`, `fecha_en_obra`, `tiempo_funcionamiento`, `cliente_id`) VALUES
(1, 'Equipo1', 'Ref1', 'Mod1', 'Fab1', 'SerialCar1', 'Marca1', 'Ubicacion1', 'Serie1', 'SerialMotor1', 'Color1', 'PesoOp1', 'Neumaticos1', 'ModeloMotor1', 'Transmision1', 'RevMotor1', 'Combustible1', 'PotenciaNeta1', 'PesoBruto1', 'TorqueNeto1', 'Voltaje1', 'SistemaAlimentacion1', 'Cilindros1', 'Cod1', 'Denom1', 1, '2020-01-01', '2020-06-01', '160', 1),
(2, 'Equipo2', 'Ref2', 'Mod2', 'Fab2', 'SerialCar2', 'Marca2', 'Ubicacion2', 'Serie2', 'SerialMotor2', 'Color2', 'PesoOp2', 'Neumaticos2', 'ModeloMotor2', 'Transmision2', 'RevMotor2', 'Combustible2', 'PotenciaNeta2', 'PesoBruto2', 'TorqueNeto2', 'Voltaje2', 'SistemaAlimentacion2', 'Cilindros2', 'Cod2', 'Denom2', 2, '2020-02-01', '2020-07-01', '110', 2),
(3, 'Equipo3', 'Ref3', 'Mod3', 'Fab3', 'SerialCar3', 'Marca3', 'Ubicacion3', 'Serie3', 'SerialMotor3', 'Color3', 'PesoOp3', 'Neumaticos3', 'ModeloMotor3', 'Transmision3', 'RevMotor3', 'Combustible3', 'PotenciaNeta3', 'PesoBruto3', 'TorqueNeto3', 'Voltaje3', 'SistemaAlimentacion3', 'Cilindros3', 'Cod3', 'Denom3', 3, '2020-03-01', '2020-08-01', '130', 3),
(4, 'Equipo4', 'Ref4', 'Mod4', 'Fab4', 'SerialCar4', 'Marca4', 'Ubicacion4', 'Serie4', 'SerialMotor4', 'Color4', 'PesoOp4', 'Neumaticos4', 'ModeloMotor4', 'Transmision4', 'RevMotor4', 'Combustible4', 'PotenciaNeta4', 'PesoBruto4', 'TorqueNeto4', 'Voltaje4', 'SistemaAlimentacion4', 'Cilindros4', 'Cod4', 'Denom4', 4, '2020-04-01', '2020-09-01', '205', 4),
(5, 'Equipo5', 'Ref5', 'Mod5', 'Fab5', 'SerialCar5', 'Marca5', 'Ubicacion5', 'Serie5', 'SerialMotor5', 'Color5', 'PesoOp5', 'Neumaticos5', 'ModeloMotor5', 'Transmision5', 'RevMotor5', 'Combustible5', 'PotenciaNeta5', 'PesoBruto5', 'TorqueNeto5', 'Voltaje5', 'SistemaAlimentacion5', 'Cilindros5', 'Cod5', 'Denom5', 5, '2020-05-01', '2020-10-01', '210', 5),
(6, 'Equipo6', 'Ref6', 'Mod6', 'Fab6', 'SerialCar6', 'Marca6', 'Ubicacion6', 'Serie6', 'SerialMotor6', 'Color6', 'PesoOp6', 'Neumaticos6', 'ModeloMotor6', 'Transmision6', 'RevMotor6', 'Combustible6', 'PotenciaNeta6', 'PesoBruto6', 'TorqueNeto6', 'Voltaje6', 'SistemaAlimentacion6', 'Cilindros6', 'Cod6', 'Denom6', 6, '2020-06-01', '2020-11-01', '233', 6),
(7, 'Equipo7', 'Ref7', 'Mod7', 'Fab7', 'SerialCar7', 'Marca7', 'Ubicacion7', 'Serie7', 'SerialMotor7', 'Color7', 'PesoOp7', 'Neumaticos7', 'ModeloMotor7', 'Transmision7', 'RevMotor7', 'Combustible7', 'PotenciaNeta7', 'PesoBruto7', 'TorqueNeto7', 'Voltaje7', 'SistemaAlimentacion7', 'Cilindros7', 'Cod7', 'Denom7', 7, '2020-07-01', '2020-12-01', '248', 7),
(8, 'Equipo8', 'Ref8', 'Mod8', 'Fab8', 'SerialCar8', 'Marca8', 'Ubicacion8', 'Serie8', 'SerialMotor8', 'Color8', 'PesoOp8', 'Neumaticos8', 'ModeloMotor8', 'Transmision8', 'RevMotor8', 'Combustible8', 'PotenciaNeta8', 'PesoBruto8', 'TorqueNeto8', 'Voltaje8', 'SistemaAlimentacion8', 'Cilindros8', 'Cod8', 'Denom8', 8, '2020-08-01', '2021-01-01', '238', 8),
(9, 'Equipo9', 'Ref9', 'Mod9', 'Fab9', 'SerialCar9', 'Marca9', 'Ubicacion9', 'Serie9', 'SerialMotor9', 'Color9', 'PesoOp9', 'Neumaticos9', 'ModeloMotor9', 'Transmision9', 'RevMotor9', 'Combustible9', 'PotenciaNeta9', 'PesoBruto9', 'TorqueNeto9', 'Voltaje9', 'SistemaAlimentacion9', 'Cilindros9', 'Cod9', 'Denom9', 9, '2020-09-01', '2021-02-01', '159', 10),
(10, 'Equipo10', 'Ref10', 'Mod10', 'Fab10', 'SerialCar10', 'Marca10', 'Ubicacion10', 'Serie10', 'SerialMotor10', 'Color10', 'PesoOp10', 'Neumaticos10', 'ModeloMotor10', 'Transmision10', 'RevMotor10', 'Combustible10', 'PotenciaNeta10', 'PesoBruto10', 'TorqueNeto10', 'Voltaje10', 'SistemaAlimentacion10', 'Cilindros10', 'Cod10', 'Denom10', 10, '2020-10-01', '2021-03-01', '265', 11);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `optCod` int(11) NOT NULL,
  `optDesc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`optCod`, `optDesc`) VALUES
(1, 'INSPECCIONAR ALREDEDOR DE LA MAQUINA'),
(2, 'VERIFICAR FUGA DE ACEITE POR CILINDROS'),
(3, 'VERIFICAR ESTADOS DE FILTROS\r\n'),
(4, 'NIVEL DE ACEITE DE MOTOR. (COMPROBAR)\r\n'),
(5, 'NIVEL DE ACEITE DE TRANSMISION'),
(6, 'NIVEL DE ACEITE DE IMPLEMENTO'),
(7, 'NIVEL DE ACEITE DE SISTEMA DE DIRECCION. (COMPROBAR)'),
(8, 'NIVEL DEL ACEITE DEL TANQUE DE FRENOS. (COMPROBAR)'),
(9, 'NIVEL DE ACEITE HIDRAULICO DEL ENFRIADOR DE FRENO'),
(10, 'COMPROBAR NIVEL DE REFRIGERANTE'),
(11, 'VERIFICAR TAPA DE RADIADOR/TANQUES'),
(12, 'NIVEL DE HUMEDAD Y SEDIMENTOS EN FILTROS DE AIRE'),
(13, 'PUNTOS DE ENGRACE'),
(14, 'FRENOS, INDICADORES Y MEDIDORES (COMPROBAR)'),
(15, 'PROBAR ALARMA DE RETROCESO'),
(16, 'PROBAR LUCES DE TRABAJO'),
(17, 'PROBAR LIMPIA PARABRISAS'),
(18, 'VERIFICAR PASADORES'),
(19, 'BATERIA / SISTEMA DE ENCENDIDO / ALTERNADOR /CORREAS'),
(20, 'CAUCHO/PRESION DE AIRE/TUERCA\r\n'),
(21, 'SISTEMA DE ESCAPE'),
(22, 'AREA DE ARTICULACION/SUCIEDAD/FUGA'),
(23, 'ACOPLAMIENTO DE CUCHILLA/CUCHILLA'),
(24, 'MANGUERA /CLAN /SELLOS');

-- --------------------------------------------------------

--
-- Table structure for table `ordenes`
--

CREATE TABLE `ordenes` (
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
  `maquina_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordenes`
--

INSERT INTO `ordenes` (`id`, `cliente_id`, `equipo`, `marca`, `modelo`, `serie`, `nro_bien`, `ano`, `serial_motor`, `serial_carroceria`, `color`, `tipo_uso`, `ubicacion`, `objetivo`, `tipo_trabajo`, `fecha_inicio`, `fecha_culminacion`, `duracion`, `periodo`, `solicita`, `autoriza`, `ejecuta`, `supervisa`, `descripcion_tarea`, `tiempo_estimado`, `tiempo_real`, `codigo_repuesto`, `descripcion_repuesto`, `cantidad_planificada`, `cantidad_utilizada`, `categoria`, `nombre_personal`, `horas_requeridas`, `horas_normales`, `horas_extras`, `codigo_epp`, `descripcion_epp`, `cantidad_planificada_epp`, `cantidad_utilizada_epp`, `observacion`, `observacion_general`, `categoria_id`, `maquina_id`, `status`) VALUES
(81, 1, 'Excavadora', 'Caterpillar', '320D', 'SER001', 'NB001', 2021, 'SM001', 'SC001', 'Amarillo', 'Construcción', 'Sitio A', 'Excavación', 'Mantenimiento', '2023-01-01', '2023-01-10', '10', 'Días', 'Juan Pérez', 'Ana Gómez', 'Carlos López', 'Luis Martínez', 'Reemplazo de bomba de agua', 5, 4, 'R001', 'Bomba de agua', 1, 1, 'Mecánica', 'José Ramírez', 4, 3, 1, 'EPP001', 'Casco de seguridad', 1, 1, 'Sin observaciones', 'Bomba de agua reemplazada', NULL, 3, 1),
(82, 2, 'Bulldozer', 'Komatsu', 'D65', 'SER002', 'NB002', 2020, 'SM002', 'SC002', 'Verde', 'Construcción', 'Sitio B', 'Nivelación de terreno', 'Reparación', '2023-02-05', '2023-02-15', '10', 'Días', 'Pedro Gómez', 'Luis Ramírez', 'Ana Martínez', 'Carlos García', 'Cambio de aceite del motor', 3, 2, 'R002', 'Aceite de motor', 2, 2, 'Eléctrico', 'José Pérez', 2, 2, 0, 'EPP002', 'Guantes de trabajo', 5, 5, 'Sin observaciones', 'Aceite cambiado', NULL, 4, 1),
(84, 4, 'Retroexcavadora', 'JCB', '3CX', 'SER004', 'NB004', 2018, 'SM004', 'SC004', 'Amarillo', 'Construcción', 'Sitio D', 'Excavación', 'Reparación', '2023-04-15', '2023-04-25', '10', 'Días', 'Luis Martínez', 'Ana Gómez', 'Pedro López', 'Carlos García', 'Reemplazo de alternador', 4, 3, 'R004', 'Alternador', 1, 1, 'Eléctrico', 'José Pérez', 4, 3, 1, 'EPP004', 'Gafas de seguridad', 1, 1, 'Sin observaciones', 'Alternador reemplazado', NULL, 5, 1),
(85, 5, 'Grúa', 'Liebherr', 'LTM 1050', 'SER005', 'NB005', 2022, 'SM005', 'SC005', 'Rojo', 'Construcción', 'Sitio E', 'Levantamiento de cargas', 'Mantenimiento', '2023-05-01', '2023-05-10', '10', 'Días', 'Pedro Gómez', 'Luis Ramírez', 'Ana Martínez', 'Carlos García', 'Cambio de cables de elevación', 7, 6, 'R005', 'Cables de elevación', 2, 2, 'Mecánica', 'José Pérez', 5, 5, 0, 'EPP005', 'Arnés de seguridad', 1, 1, 'Sin observaciones', 'Cables reemplazados', NULL, 6, 1),
(86, 6, 'Camión', 'Mercedes-Benz', 'Actros', 'SER006', 'NB006', 2021, 'SM006', 'SC006', 'Gris', 'Transporte', 'Sitio F', 'Transporte de mercancía', 'Reparación', '2023-06-01', '2023-06-10', '10', 'Días', 'Ana Gómez', 'Luis Ramírez', 'Carlos López', 'Pedro Martínez', 'Reemplazo de suspensión', 5, 4, 'R006', 'Suspensión', 2, 2, 'Eléctrico', 'José Pérez', 5, 4, 1, 'EPP006', 'Protector de oído', 1, 1, 'Sin observaciones', 'Suspensión reemplazada', NULL, 7, 1),
(87, 5, 'Excavadora', 'Hitachi', 'ZX350', 'SER007', 'NB007', 2020, 'SM007', 'SC007', 'Naranja', 'Construcción', 'Sitio G', 'Excavación', 'Mantenimiento', '2023-07-01', '2023-07-10', '10', 'Días', 'Luis Martínez', 'Ana Gómez', 'Pedro López', 'Carlos García', 'Cambio de bomba hidráulica', 6, 5, 'R007', 'Bomba hidráulica', 1, 1, 'Mecánica', 'José Pérez', 6, 5, 1, 'EPP007', 'Guantes de protección', 1, 1, 'Sin observaciones', 'Bomba hidráulica reemplazada', NULL, 8, 1),
(88, 4, 'Bulldozer', 'Case', '570N', 'SER008', 'NB008', 2022, 'SM008', 'SC008', 'Amarillo', 'Construcción', 'Sitio H', 'Nivelación de terreno', 'Reparación', '2023-08-01', '2023-08-05', '5', 'Días', 'Pedro Gómez', 'Luis Ramírez', 'Ana Martínez', 'Carlos García', 'Cambio de aceite', 3, 3, 'R008', 'Aceite', 2, 2, 'Mecánica', 'José Pérez', 2, 2, 0, 'EPP008', 'Gafas de protección', 1, 1, 'Sin observaciones', 'Aceite cambiado', NULL, 9, 1),
(89, 3, 'Camión', 'Scania', 'R500', 'SER009', 'NB009', 2023, 'SM009', 'SC009', 'Blanco', 'Transporte', 'Sitio I', 'Transporte de mercancía', 'Mantenimiento', '2023-09-01', '2023-09-10', '10', 'Días', 'Luis Ramírez', 'Ana Gómez', 'Carlos López', 'Pedro Martínez', 'Cambio de frenos', 8, 7, 'R009', 'Kit de frenos', 4, 4, 'Mecánica', 'José Pérez', 6, 5, 1, 'EPP009', 'Casco de seguridad', 1, 1, 'Sin observaciones', 'Frenos reemplazados', NULL, 10, 1),
(90, 2, 'Retroexcavadora', 'Volvo', 'EC950', 'SER010', 'NB010', 2022, 'SM010', 'SC010', 'Amarillo', 'Construcción', 'Sitio J', 'Excavación', 'Mantenimiento', '2023-10-01', '2023-10-10', '10', 'Días', 'Ana Gómez', 'Luis Ramírez', 'Carlos López', 'Pedro Martínez', 'Reemplazo de sistema hidráulico', 5, 4, 'R010', 'Sistema hidráulico', 1, 1, 'Mecánica', 'José Pérez', 4, 3, 1, 'EPP010', 'Guantes de protección', 1, 1, 'Sin observaciones', 'Sistema hidráulico reemplazado', NULL, 3, 1),
(101, 1, 'Excavadora', 'Kobelco', 'SK200', 'SER011', 'NB011', 2021, 'SM011', 'SC011', 'Gris', 'Construcción', 'Sitio K', 'Excavación', 'Mantenimiento', '2023-11-01', '2023-11-10', '10', 'Días', 'Pedro Gómez', 'Ana Gómez', 'Carlos López', 'Luis Martínez', 'Reemplazo de bomba de aceite', 5, 4, 'R011', 'Bomba de aceite', 1, 1, 'Mecánica', 'José Pérez', 4, 3, 1, 'EPP011', 'Gafas de seguridad', 1, 1, 'Sin observaciones', 'Bomba de aceite reemplazada', NULL, 6, 1),
(102, 4, 'Bulldozer', 'CAT', 'D6R', 'SER012', 'NB012', 2020, 'SM012', 'SC012', 'Amarillo', 'Construcción', 'Sitio L', 'Nivelación de terreno', 'Reparación', '2023-12-01', '2023-12-10', '10', 'Días', 'Luis Ramírez', 'Ana Martínez', 'Pedro López', 'Carlos García', 'Cambio de rodillos', 6, 5, 'R012', 'Rodillos', 3, 3, 'Mecánica', 'José Pérez', 6, 5, 1, 'EPP012', 'Casco de seguridad', 2, 2, 'Sin observaciones', 'Rodillos reemplazados', NULL, 8, 1),
(103, 7, 'Camión', 'Kenworth', 'T800', 'SER013', 'NB013', 2019, 'SM013', 'SC013', 'Blanco', 'Transporte', 'Sitio M', 'Transporte de mercancía', 'Mantenimiento', '2023-01-15', '2023-01-20', '5', 'Días', 'Ana Gómez', 'Luis Ramírez', 'Carlos López', 'Pedro Martínez', 'Reemplazo de filtros', 3, 2, 'R013', 'Filtros', 4, 4, 'Eléctrico', 'José Pérez', 3, 2, 1, 'EPP013', 'Guantes de trabajo', 1, 1, 'Sin observaciones', 'Filtros reemplazados', NULL, 2, 1),
(104, 8, 'Retroexcavadora', 'Komatsu', 'PC210', 'SER014', 'NB014', 2021, 'SM014', 'SC014', 'Verde', 'Construcción', 'Sitio N', 'Excavación', 'Reparación', '2023-02-01', '2023-02-10', '10', 'Días', 'Pedro Gómez', 'Ana Gómez', 'Luis Martínez', 'Carlos García', 'Reemplazo de cilindros hidráulicos', 4, 3, 'R014', 'Cilindros hidráulicos', 1, 1, 'Mecánica', 'José Pérez', 4, 3, 1, 'EPP014', 'Guantes de protección', 1, 1, 'Sin observaciones', 'Cilindros reemplazados', NULL, 4, 1),
(105, 2, 'Grúa', 'Terex', 'RT780', 'SER015', 'NB015', 2022, 'SM015', 'SC015', 'Amarillo', 'Construcción', 'Sitio O', 'Levantamiento de cargas', 'Mantenimiento', '2023-03-01', '2023-03-10', '10', 'Días', 'Ana Martínez', 'Luis Ramírez', 'Carlos López', 'Pedro Gómez', 'Cambio de bomba de frenos', 6, 5, 'R015', 'Bomba de frenos', 2, 2, 'Mecánica', 'José Pérez', 6, 5, 1, 'EPP015', 'Arnés de seguridad', 1, 1, 'Sin observaciones', 'Bomba de frenos reemplazada', NULL, 9, 1),
(106, 4, 'Camión', 'Freightliner', 'Cascadia', 'SER016', 'NB016', 2023, 'SM016', 'SC016', 'Gris', 'Transporte', 'Sitio P', 'Transporte de carga', 'Reparación', '2023-04-01', '2023-04-10', '10', 'Días', 'Pedro Gómez', 'Ana Gómez', 'Luis Martínez', 'Carlos García', 'Cambio de sistema de escape', 7, 6, 'R016', 'Sistema de escape', 3, 3, 'Eléctrico', 'José Pérez', 7, 6, 1, 'EPP016', 'Protector de oído', 2, 2, 'Sin observaciones', 'Sistema de escape reemplazado', NULL, 7, 1),
(107, 8, 'Excavadora', 'Doosan', 'DX140', 'SER017', 'NB017', 2021, 'SM017', 'SC017', 'Rojo', 'Construcción', 'Sitio Q', 'Excavación', 'Mantenimiento', '2023-05-01', '2023-05-10', '10', 'Días', 'Luis Martínez', 'Pedro Gómez', 'Ana Gómez', 'Carlos García', 'Reemplazo de mangueras hidráulicas', 5, 4, 'R017', 'Mangueras hidráulicas', 2, 2, 'Mecánica', 'José Pérez', 5, 4, 1, 'EPP017', 'Guantes de protección', 1, 1, 'Sin observaciones', 'Mangueras reemplazadas', NULL, 2, 1),
(108, 6, 'Bulldozer', 'Volvo', 'EC950', 'SER018', 'NB018', 2022, 'SM018', 'SC018', 'Amarillo', 'Construcción', 'Sitio R', 'Nivelación de terreno', 'Reparación', '2023-06-01', '2023-06-10', '10', 'Días', 'Ana Gómez', 'Luis Ramírez', 'Carlos López', 'Pedro Martínez', 'Cambio de aceite hidráulico', 4, 4, 'R018', 'Aceite hidráulico', 2, 2, 'Mecánica', 'José Pérez', 4, 4, 0, 'EPP018', 'Gafas de protección', 1, 1, 'Sin observaciones', 'Aceite hidráulico cambiado', NULL, 1, 1),
(109, 5, 'Camión', 'Mack', 'Granite', 'SER019', 'NB019', 2023, 'SM019', 'SC019', 'Azul', 'Transporte', 'Sitio S', 'Transporte de mercancía', 'Mantenimiento', '2023-07-01', '2023-07-10', '10', 'Días', 'Pedro Gómez', 'Ana Gómez', 'Luis Martínez', 'Carlos García', 'Cambio de batería', 3, 2, 'R019', 'Batería', 2, 2, 'Eléctrico', 'José Pérez', 3, 2, 1, 'EPP019', 'Guantes de protección', 1, 1, 'Sin observaciones', 'Batería reemplazada', NULL, 6, 1),
(110, 1, 'Retroexcavadora', 'Caterpillar', '420F', 'SER020', 'NB020', 2022, 'SM020', 'SC020', 'Amarillo', 'Construcción', 'Sitio T', 'Excavación', 'Mantenimiento', '2023-08-01', '2023-08-10', '10', 'Días', 'Ana Gómez', 'Luis Ramírez', 'Carlos López', 'Pedro Martínez', 'Reemplazo de bomba de aceite hidráulico', 6, 5, 'R020', 'Bomba de aceite hidráulico', 1, 1, 'Mecánica', 'José Pérez', 6, 5, 1, 'EPP020', 'Guantes de protección', 1, 1, 'Sin observaciones', 'Bomba de aceite hidráulico reemplazada', NULL, 9, 1),
(130, 10, 'Equipo10', 'Marca10', 'Mod10', 'Serie10', NULL, NULL, 'SerialMotor10', 'SerialCar10', 'Color10', NULL, 'Ubicacion10', 'Mantenimiento preventivo', 'Cambio de aceite y filtro', '2024-09-06', '2024-09-07', NULL, NULL, 'Automático', 'Gerardo acuña', 'Victor Sayago', 'Jeans Alba', 'Descripción del trabajo a realizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Técnico responsable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Observaciones adicionales', NULL, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orden_mantenimiento`
--

CREATE TABLE `orden_mantenimiento` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `maquina_id` int(11) NOT NULL,
  `equipo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `nro_bien` varchar(100) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `serial_motor` varchar(100) DEFAULT NULL,
  `serial_carroceria` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `tipo_uso` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `objetivo` varchar(255) DEFAULT NULL,
  `tipo_trabajo` varchar(255) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_culminacion` date DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `solicita` varchar(100) DEFAULT NULL,
  `autoriza` varchar(100) DEFAULT NULL,
  `ejecuta` varchar(100) DEFAULT NULL,
  `supervisa` varchar(100) DEFAULT NULL,
  `descripcion_tarea` text DEFAULT NULL,
  `tiempo_estimado` int(11) DEFAULT NULL,
  `tiempo_real` int(11) DEFAULT NULL,
  `codigo_repuesto` varchar(100) DEFAULT NULL,
  `descripcion_repuesto` text DEFAULT NULL,
  `cantidad_planificada` int(11) DEFAULT NULL,
  `cantidad_utilizada` int(11) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `nombre_personal` varchar(100) DEFAULT NULL,
  `horas_requeridas` int(11) DEFAULT NULL,
  `horas_normales` int(11) DEFAULT NULL,
  `horas_extras` int(11) DEFAULT NULL,
  `codigo_epp` varchar(100) DEFAULT NULL,
  `descripcion_epp` text DEFAULT NULL,
  `cantidad_planificada_epp` int(11) DEFAULT NULL,
  `cantidad_utilizada_epp` int(11) DEFAULT NULL,
  `observacion_general` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orden_mantenimiento`
--

INSERT INTO `orden_mantenimiento` (`id`, `cliente_id`, `maquina_id`, `equipo`, `marca`, `modelo`, `serie`, `nro_bien`, `ano`, `serial_motor`, `serial_carroceria`, `color`, `tipo_uso`, `ubicacion`, `objetivo`, `tipo_trabajo`, `fecha_inicio`, `fecha_culminacion`, `duracion`, `periodo`, `solicita`, `autoriza`, `ejecuta`, `supervisa`, `descripcion_tarea`, `tiempo_estimado`, `tiempo_real`, `codigo_repuesto`, `descripcion_repuesto`, `cantidad_planificada`, `cantidad_utilizada`, `categoria`, `nombre_personal`, `horas_requeridas`, `horas_normales`, `horas_extras`, `codigo_epp`, `descripcion_epp`, `cantidad_planificada_epp`, `cantidad_utilizada_epp`, `observacion_general`, `status`) VALUES
(4, 10, 10, 'Equipo10', 'Marca10', 'Mod10', 'Serie10', NULL, NULL, 'SerialMotor10', 'SerialCar10', 'Color10', NULL, 'Ubicacion10', 'Mantenimiento preventivo', 'Cambio de aceite y filtro', '2024-09-27', '2024-09-28', NULL, NULL, 'Automático', 'Gerardo Acuña', 'Victor Sayago', 'Jeans Alba', 'Descripción del trabajo a realizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Técnico responsable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Observaciones adicionales', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `codUser` int(11) NOT NULL,
  `ownerID` int(11) NOT NULL,
  `orderDateIn` datetime NOT NULL,
  `orderDateOut` datetime NOT NULL,
  `orderImg_src1` varchar(200) NOT NULL,
  `orderImg_src2` varchar(200) NOT NULL,
  `orderType` varchar(10) NOT NULL,
  `orderStatus` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `codUser`, `ownerID`, `orderDateIn`, `orderDateOut`, `orderImg_src1`, `orderImg_src2`, `orderType`, `orderStatus`) VALUES
(1, 1, 1, '2023-07-01 00:00:00', '0000-00-00 00:00:00', '', '', 'I', 10),
(2, 1, 2, '2023-07-12 00:00:00', '2023-07-18 00:00:00', '', '', 'MP', 100),
(17, 1, 1, '2023-07-28 03:33:30', '0000-00-00 00:00:00', '', '', 'MP', 1),
(18, 1, 1, '2023-07-28 05:53:01', '0000-00-00 00:00:00', '', '', 'MP', 15),
(19, 1, 1, '2023-07-28 05:54:43', '0000-00-00 00:00:00', '', '', 'MP', 1),
(32, 1, 1, '2023-08-11 04:33:48', '0000-00-00 00:00:00', '', '', 'MC', 1),
(33, 1, 2, '2023-08-13 06:52:10', '0000-00-00 00:00:00', '', '', 'I', 5),
(34, 1, 4, '2023-10-18 11:46:08', '0000-00-00 00:00:00', '', '', 'I', 1),
(35, 1, 4, '2023-10-18 11:50:46', '0000-00-00 00:00:00', '', '', 'I', 1),
(36, 1, 6, '2023-10-23 07:37:36', '0000-00-00 00:00:00', '', '', 'I', 1),
(41, 1, 1, '2023-10-23 07:51:16', '0000-00-00 00:00:00', '', '', 'I', 1),
(42, 1, 3, '2023-10-24 04:42:08', '0000-00-00 00:00:00', '', '', 'I', 90);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ownerID` int(11) NOT NULL,
  `macID` varchar(50) NOT NULL,
  `codUser` int(11) NOT NULL,
  `timeMac` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Posee el tiempo de trabajo de la maquina',
  `serial` varchar(50) NOT NULL,
  `alertID` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`ownerID`, `macID`, `codUser`, `timeMac`, `serial`, `alertID`) VALUES
(1, '6', 3, 3000, '0DKFLAKSDPWE', 3),
(2, '78', 3, 2930, 'HMDKOR84229346', 1),
(3, '643', 3, 9, 'MK1', 0),
(4, '525', 4, 8, 'NSFT', 0),
(5, '525', 3, 340, 'LLL', 0),
(6, '525', 3, 2980, '0DKFLAKSEEE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `partID` int(11) NOT NULL,
  `partCode` varchar(50) NOT NULL,
  `partDesc` varchar(200) NOT NULL,
  `partImg_src` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remplazo_elementos`
--

CREATE TABLE `remplazo_elementos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remplazo_elementos`
--

INSERT INTO `remplazo_elementos` (`id`, `codigo`, `denominacion`, `cantidad`) VALUES
(1, 'Cod1', 'Denom1', 1),
(2, 'Cod2', 'Denom2', 2),
(3, 'Cod3', 'Denom3', 3),
(4, 'Cod4', 'Denom4', 4),
(5, 'Cod5', 'Denom5', 5),
(6, 'Cod6', 'Denom6', 6),
(7, 'Cod7', 'Denom7', 7),
(8, 'Cod8', 'Denom8', 8),
(9, 'Cod9', 'Denom9', 9),
(10, 'Cod10', 'Denom10', 10),
(11, '', '', 0),
(12, '', '', 0),
(13, '', '', 0),
(14, '', '', 0),
(15, 'COD001', 'Filtro de aire', 5),
(16, '', '', 0),
(17, '', '', 0),
(18, '', '', 0),
(19, '', '', 0),
(20, '', '', 0),
(21, '', '', 0),
(22, '', '', 0),
(23, '', '', 0),
(24, '', '', 0),
(25, '', '', 0),
(26, '', '', 0),
(27, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `billID` int(11) NOT NULL,
  `partCode` varchar(50) NOT NULL,
  `salePriceUnit` float NOT NULL,
  `saleQty` int(11) NOT NULL,
  `salePrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_mantenance`
--

CREATE TABLE `type_mantenance` (
  `manCode` varchar(10) NOT NULL,
  `manName` varchar(50) NOT NULL,
  `manDesc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_mantenance`
--

INSERT INTO `type_mantenance` (`manCode`, `manName`, `manDesc`) VALUES
('I', 'Inspeccion', ''),
('MC', 'Mantenimiento Correctivo', ''),
('MP', 'Mantenimiento Preventivo', ''),
('SU', 'Satisfaccion de Usuario', '');

-- --------------------------------------------------------

--
-- Table structure for table `type_reports`
--

CREATE TABLE `type_reports` (
  `codRep` int(4) NOT NULL,
  `nameRep` varchar(50) NOT NULL,
  `descRep` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_reports`
--

INSERT INTO `type_reports` (`codRep`, `nameRep`, `descRep`) VALUES
(1, 'Nuevo', ''),
(5, 'Ejecucion', ''),
(10, 'Orden Simple', ''),
(15, 'Orden con Recambio', ''),
(20, 'Planificacion', ''),
(25, 'Planificacion Carga Respuesta', ''),
(30, 'Mantenimiento', ''),
(50, 'Revision', ''),
(90, 'Aprobado', ''),
(99, 'Ejecutado', ''),
(100, 'Cerrado', '');

-- --------------------------------------------------------

--
-- Table structure for table `type_user`
--

CREATE TABLE `type_user` (
  `codigotu` int(11) NOT NULL,
  `definicion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_user`
--

INSERT INTO `type_user` (`codigotu`, `definicion`) VALUES
(1, 'Master'),
(2, 'CEO'),
(3, 'Director'),
(4, 'Administrador'),
(5, 'Jefe'),
(6, 'Supervisor'),
(7, 'Inspector'),
(8, 'Cliente');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `codUser` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_st` varchar(3) NOT NULL,
  `user_zip` varchar(10) NOT NULL,
  `codigotu` int(11) NOT NULL,
  `firmsID` int(11) NOT NULL,
  `userImg_src` varchar(200) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`codUser`, `user_name`, `user_lastname`, `user_email`, `user_phone`, `user_address`, `user_city`, `user_st`, `user_zip`, `codigotu`, `firmsID`, `userImg_src`, `login`, `pass`) VALUES
(1, 'Ricardo', 'Ros', 'ricardo@dapango.tech', 3559525, 'Blablabla', 'Caracas', 'Pro', '1030', 1, 1, NULL, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(3, 'Pepito', 'Perez', 'pepitoperez@gmail.com', 2147483647, '6502 NW 105 PL', '', '', '33178', 8, 1, NULL, 'pepito', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(4, 'Alberto', 'Davila', 'alberto@dapango.tech', 355101010, '6502 NW 105 PL', '', '', '33178', 8, 1, NULL, 'alberto', '8cb2237d0679ca88db6464eac60da96345513964'),
(5, 'Mi', 'Compadre', 'elbbdor@bolivar.com', 2128780516, 'La Vuelta del cacho', '', '', '33178', 8, 1, NULL, 'micompa', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` int(11) NOT NULL,
  `tecnician` varchar(50) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `telefono`, `password`, `created_at`, `role`, `tecnician`) VALUES
(1, 'Gerardo', 'gerardo@dapango.tech', '3227588480', '$2y$10$VYY5JdD4UBDFDjAFI/w6Ge0MOXpMRHdFwni7tNZuVjBDWBXKvPdG6', '2024-07-01 00:52:36', 0, 'NA'),
(2, 'Edgar', 'edgar@test.com', '12344321', '$2y$10$FZoZyO/Z28LpVk.76adJGOhMsNWTuvWBrypMAA2tMkMMSeUJqe6Ea', '2024-07-01 00:56:51', 0, 'NA'),
(3, 'Steffy', 'steffy@test.com', '123654', '$2y$10$3MLpsj88MGJ0PM3uxwJO1OK9QA9d3ElkHkvk.ap.k8RpVneZ..dtq', '2024-07-01 00:58:49', 0, 'NA'),
(4, 'Danessa', 'danessa@dapango.tech', '1234321', '$2y$10$vBBOvyOjFJG.KnSM6xUMv.Iy7./v/DLY58H1Nzfm8gd8A3YXV3a6C', '2024-07-01 13:25:19', 0, 'NA'),
(5, 'Cristian', 'cristian@dapango.tech', '1234321', '$2y$10$/WP.1vkQzJAVXVXdosCsteSD7XC7q47qf3zS2SdOtKEQl1mx3xoCa', '2024-07-02 20:55:59', 0, 'NA'),
(6, 'Mathias', 'matias@test.com', '12346543', '$2y$10$XamHTj7KCb9j7qMAFVv3ZeFmfauy4O4idg9xdGT765mqaw1GePrFS', '2024-07-03 14:44:47', 0, 'NA'),
(17, 'admin', 'gerardo@test.com', '3118971951', '$2y$10$aiTk7WNbf2TtdJkpzcpJCOrKbl/Ka68xweJI65mEjJawfLGJoZqRK', '2024-10-28 20:58:10', 0, 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`alertID`) USING BTREE;

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billID`);

--
-- Indexes for table `bill_to_order`
--
ALTER TABLE `bill_to_order`
  ADD PRIMARY KEY (`btoID`),
  ADD KEY `billID` (`billID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `caracteristicas_tecnicas`
--
ALTER TABLE `caracteristicas_tecnicas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkselection`
--
ALTER TABLE `checkselection`
  ADD PRIMARY KEY (`chkSel`);

--
-- Indexes for table `chklist`
--
ALTER TABLE `chklist`
  ADD UNIQUE KEY `orderID_2` (`orderID`,`optCod`,`chkSel`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `optCod` (`optCod`),
  ADD KEY `chkSel` (`chkSel`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datos_tecnicos`
--
ALTER TABLE `datos_tecnicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indexes for table `firms`
--
ALTER TABLE `firms`
  ADD PRIMARY KEY (`firmsID`);

--
-- Indexes for table `historial_equipo`
--
ALTER TABLE `historial_equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `codUser` (`codUser`),
  ADD KEY `macID` (`macID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`macID`),
  ADD UNIQUE KEY `macModel` (`macModel`,`macDesc`) USING BTREE;

--
-- Indexes for table `machine_parts`
--
ALTER TABLE `machine_parts`
  ADD KEY `partCode` (`partID`),
  ADD KEY `macModel` (`macModel`);

--
-- Indexes for table `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`cliente_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`optCod`);

--
-- Indexes for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `fk_maquina_id` (`maquina_id`);

--
-- Indexes for table `orden_mantenimiento`
--
ALTER TABLE `orden_mantenimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `orderStatus` (`orderStatus`),
  ADD KEY `orderType` (`orderType`),
  ADD KEY `codUser` (`codUser`),
  ADD KEY `ownerID` (`ownerID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`ownerID`),
  ADD UNIQUE KEY `usr_alone` (`serial`,`codUser`) USING BTREE,
  ADD KEY `macID` (`macID`),
  ADD KEY `codUser` (`codUser`),
  ADD KEY `alertID` (`alertID`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`partID`),
  ADD UNIQUE KEY `partCode` (`partCode`),
  ADD KEY `partCode_2` (`partCode`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remplazo_elementos`
--
ALTER TABLE `remplazo_elementos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD KEY `billID` (`billID`),
  ADD KEY `partCode` (`partCode`);

--
-- Indexes for table `type_mantenance`
--
ALTER TABLE `type_mantenance`
  ADD PRIMARY KEY (`manCode`);

--
-- Indexes for table `type_reports`
--
ALTER TABLE `type_reports`
  ADD PRIMARY KEY (`codRep`);

--
-- Indexes for table `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`codigotu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`codUser`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `codigotu` (`codigotu`),
  ADD KEY `firmsID` (`firmsID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caracteristicas_tecnicas`
--
ALTER TABLE `caracteristicas_tecnicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `checkselection`
--
ALTER TABLE `checkselection`
  MODIFY `chkSel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `datos_tecnicos`
--
ALTER TABLE `datos_tecnicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `encargados`
--
ALTER TABLE `encargados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `historial_equipo`
--
ALTER TABLE `historial_equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maquinas`
--
ALTER TABLE `maquinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `optCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `orden_mantenimiento`
--
ALTER TABLE `orden_mantenimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `ownerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `partID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remplazo_elementos`
--
ALTER TABLE `remplazo_elementos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_user`
--
ALTER TABLE `type_user`
  MODIFY `codigotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `codUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_to_order`
--
ALTER TABLE `bill_to_order`
  ADD CONSTRAINT `bill_to_order_ibfk_1` FOREIGN KEY (`billID`) REFERENCES `bill` (`billID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_to_order_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `chklist`
--
ALTER TABLE `chklist`
  ADD CONSTRAINT `chklist_ibfk_1` FOREIGN KEY (`chkSel`) REFERENCES `checkselection` (`chkSel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chklist_ibfk_3` FOREIGN KEY (`optCod`) REFERENCES `options` (`optCod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chklist_ibfk_4` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `encargados`
--
ALTER TABLE `encargados`
  ADD CONSTRAINT `encargados_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Constraints for table `machine_parts`
--
ALTER TABLE `machine_parts`
  ADD CONSTRAINT `machine_parts_ibfk_1` FOREIGN KEY (`macModel`) REFERENCES `machine` (`macModel`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `maquinas`
--
ALTER TABLE `maquinas`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Constraints for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `fk_maquina_id` FOREIGN KEY (`maquina_id`) REFERENCES `maquinas` (`id`),
  ADD CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`codUser`) REFERENCES `user` (`codUser`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ownerID`) REFERENCES `owner` (`ownerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_mantenance_ibfk_1` FOREIGN KEY (`orderType`) REFERENCES `type_mantenance` (`manCode`),
  ADD CONSTRAINT `type_reports_ibfk_1` FOREIGN KEY (`orderStatus`) REFERENCES `type_reports` (`codRep`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`alertID`) REFERENCES `alerts` (`alertID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_ibfk_2` FOREIGN KEY (`codUser`) REFERENCES `user` (`codUser`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_ibfk_3` FOREIGN KEY (`macID`) REFERENCES `machine` (`macID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`billID`) REFERENCES `bill` (`billID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`partCode`) REFERENCES `parts` (`partCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`codigotu`) REFERENCES `type_user` (`codigotu`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`firmsID`) REFERENCES `firms` (`firmsID`) ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
