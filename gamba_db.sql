-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gamba_db
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES
(1,'Gerardo','Acuna','$2y$10$Ys80PIsDDRZCtnqzBoF7ceyIO5g2AdkO9LY0p7RhDg9/3YDmhsr6m','gerardo@dapango.tech','2024-10-31 07:18:36','2024-10-31 07:22:39'),
(2,'Mathias','Cruz','$2y$10$klCL9WeByLaP1OxKaKCjfet5lfifG5E61iAzv2FDo4oi8cSLaB/ke','mathi@test.com','2024-10-31 07:16:18','2024-10-31 07:16:18');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES
(1,'Electrónica','E1'),
(2,'Mecánica','M1'),
(3,'Soldadura','S1');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES
(7,'Ricardo','Ros','ricardo@dapango.tech','Dapango','Customers Sucsess',1),
(8,'Frederman','Villamizar','freder@test.com','Komppa','test',1),
(11,'Edgar','sayago','edgar@test.com','test','test',2),
(12,'Steffy','Cruz','steffy@test.com','test','test',1),
(13,'Cristian','Chavez','cristian@dapango.tech','NetGT','test',2),
(14,'Alejandro','Rivas','arivas@gmail.com','NUT','Director',1),
(15,'Carlos','Ordonez','cordo@gmail.com','Gamba','IT',1),
(16,'User','Test','user@test.com','test','test',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `machines_ibfk_1` (`cliente_id`),
  CONSTRAINT `machines_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `machines_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES
(20,'Excavadora','EX123','ModeloX','Caterpillar','SC456789','CAT','Sitio A','Serie987','SM12345','Amarillo','15000','Radiales','MX2020','Automática','2200','Diesel','180','20000','400','24','Inyección directa','6','CAT2020','Excavadora hidráulica',5,'2020-05-15','2020-06-01','500',7,1),
(26,'X1','ADF','300F','Micro','VRF1112','Huyndai','Cart','RM1','3FHN','Rojo','5ww','Michelin','4f','3fT','1599','Gas','1900BTU','1600 BTU','5000','240','Electric','6F','5551267AF','RJSNN4',29,'2020-11-20','2024-11-20','15000',7,1),
(27,'X1','Mazda','R5','Mazda','1XF1','Mazda','Cartanal','XX1','1F2F3F','Beige','1500','4L','1Xengine','Trasmision','123','gas','15000','3000','15000','360','electric','4','X8X9','FFGGHH',6,'2020-11-20','2024-11-20','15000',7,1),
(28,'Aplanadora','R15','300f','Caterpilar','1xf1','Cat','test','test','0002','negro','3000','no aqplica','15000','Automatica','6000','gas','8000','20000','20000','30','|test','4','001','001',1,'1999-06-03','2000-06-03','240',7,1),
(29,'X2','RR1','Nissan','Nissan','1245s','Nissan','25asd','3','12587946','rojo','1000','6','15','145sd','1500','Gas','16000','1200','15800','320','Electric','6','1739','15941',10,'2020-11-20','2024-11-20','15000',12,1),
(30,'Excavadora','testwre','testtvb','test','3344','test','Malaga','test3344','tt5567','Blanco','6000','No Aplica','tg5678','Idraulica','60000','Gas','7000','790','7000','5000','test','8','112233','test123',5,'1999-06-03','2000-06-03','240',7,1);
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_mantenimiento`
--

DROP TABLE IF EXISTS `ordenes_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_mantenimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `observacion_general` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maquina_id` (`maquina_id`),
  KEY `ordenes_mantenimiento_ibfk_1` (`cliente_id`),
  CONSTRAINT `ordenes_mantenimiento_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ordenes_mantenimiento_ibfk_2` FOREIGN KEY (`maquina_id`) REFERENCES `machines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_mantenimiento`
--

LOCK TABLES `ordenes_mantenimiento` WRITE;
/*!40000 ALTER TABLE `ordenes_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes_trabajo`
--

DROP TABLE IF EXISTS `ordenes_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_trabajo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `admin_id` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maquina_id` (`maquina_id`),
  KEY `ordenes_trabajo_ibfk_1` (`cliente_id`),
  CONSTRAINT `ordenes_trabajo_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ordenes_trabajo_ibfk_2` FOREIGN KEY (`maquina_id`) REFERENCES `machines` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes_trabajo`
--

LOCK TABLES `ordenes_trabajo` WRITE;
/*!40000 ALTER TABLE `ordenes_trabajo` DISABLE KEYS */;
INSERT INTO `ordenes_trabajo` VALUES
(5,7,'Excavadora','Caterpillar','320D','ABC123','NB12345',2020,'SM56789','SC98765','Amarillo','Industrial','Obra Norte','Construcción de edificio','Mantenimiento preventivo','2024-11-01','2024-11-10','10 días','Mensual','Juan Pérez','María López','Carlos Gómez','Pedro Hernández','Revisión y ajuste de motor',8,7,'REP001','Filtro de aire',2,2,'Mecánica','Luis Martínez',10,8,2,'EPP001','Casco de seguridad',1,1,'Sin observaciones','Tarea completada sin novedades',1,27,1,1);
/*!40000 ALTER TABLE `ordenes_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicos`
--

DROP TABLE IF EXISTS `tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecnicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `empresa` varchar(255) NOT NULL DEFAULT 'Sin especificar',
  `categoria_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `tecnicos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tecnicos_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicos`
--

LOCK TABLES `tecnicos` WRITE;
/*!40000 ALTER TABLE `tecnicos` DISABLE KEYS */;
INSERT INTO `tecnicos` VALUES
(1,'Juan','Pérez','test1',1,1),
(2,'María','Gómez','test5',2,1),
(3,'Pedro','Hernandez','test10',3,1),
(4,'Rey','Leon','NUT',1,1),
(5,'Aron','Ordonez','Hit',2,1),
(6,'Luis','Hernandez','Komppa',1,1);
/*!40000 ALTER TABLE `tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `tipo` enum('admin','cliente') NOT NULL DEFAULT 'cliente',
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`email`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'Mathias','Acuna','mathias@test.com','123456$$','cliente','2024-10-31 06:08:49',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorders`
--

DROP TABLE IF EXISTS `workorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `maquina_id` int(11) DEFAULT NULL,
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
  `admin_id` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maquina_id` (`maquina_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `workorders_ibfk_1` FOREIGN KEY (`maquina_id`) REFERENCES `machines` (`id`),
  CONSTRAINT `workorders_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorders`
--

LOCK TABLES `workorders` WRITE;
/*!40000 ALTER TABLE `workorders` DISABLE KEYS */;
INSERT INTO `workorders` VALUES
(1,7,26,'obj','t1','2024-11-25','2024-11-26','24','23','Aron','Aria','Scott','Alex','desctask',24,23,'0102','desc2',10,8,'cat1','Pedro perez',24,20,4,'7878','desc4',12,13,NULL,NULL,1,NULL),
(2,7,26,'test','mantenimiento ','2024-11-25','2024-11-29','3 dias','2','Jeans ','Cristian','ricardo','jeans','test',4,5,'01','test',4,5,'M1','Test',4,3,4,'01','test',45,55,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `workorders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 21:55:25
