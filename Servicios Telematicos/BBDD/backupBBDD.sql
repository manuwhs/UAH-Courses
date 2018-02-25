-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: BaseWay
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alarma`
--

DROP TABLE IF EXISTS `alarma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alarma` (
  `id` int(11) NOT NULL,
  `sensorId` int(11) NOT NULL,
  `criticidad` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `texto` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fechaActivacion` varchar(20) NOT NULL,
  `fechaAck` varchar(20) NOT NULL,
  `fechaCese` varchar(20) NOT NULL,
  `tipoCese` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensorId` (`sensorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarma`
--

LOCK TABLES `alarma` WRITE;
/*!40000 ALTER TABLE `alarma` DISABLE KEYS */;
INSERT INTO `alarma` VALUES (4,1,32,'Uno','Hola','Activo','10/12/2014','10/12/2014','10/12/2014','Siempre'),(1,3,43,'Dos','Adios','No activo','10/12/2014','10/12/2014','10/12/2014','Siempre'),(2,4,65,'Tres','Hola','Roto','10/12/2014','10/12/2014','10/12/2014','Siempre'),(3,2,76,'Uno','Hola','Activo','10/12/2014','10/12/2014','10/12/2014','Siempre');
/*!40000 ALTER TABLE `alarma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capturaImagen`
--

DROP TABLE IF EXISTS `capturaImagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capturaImagen` (
  `id` int(11) NOT NULL,
  `imagen` varchar(20) NOT NULL,
  `tamanoX` int(11) DEFAULT NULL,
  `tamanoY` int(11) DEFAULT NULL,
  `resolucion` int(11) DEFAULT NULL,
  `fecha` varchar(20) NOT NULL,
  `sensorId` int(11) DEFAULT NULL,
  `parametroId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parametroId` (`parametroId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capturaImagen`
--

LOCK TABLES `capturaImagen` WRITE;
/*!40000 ALTER TABLE `capturaImagen` DISABLE KEYS */;
INSERT INTO `capturaImagen` VALUES (1,'Algo.jpg',320,240,5,'20/6/2010',1,2),(2,'Algo4.jpg',320,240,5,'13/6/2001',3,4),(3,'Algo6.jpg',320,240,5,'12/1/2007',4,1),(4,'Algo2.jpg',320,240,5,'4/6/2010',2,3);
/*!40000 ALTER TABLE `capturaImagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capturaValor`
--

DROP TABLE IF EXISTS `capturaValor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capturaValor` (
  `id` int(11) NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `sensorId` int(11) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `parametroId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensorId` (`sensorId`),
  KEY `parametroId` (`parametroId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capturaValor`
--

LOCK TABLES `capturaValor` WRITE;
/*!40000 ALTER TABLE `capturaValor` DISABLE KEYS */;
INSERT INTO `capturaValor` VALUES (2,12,1,'10/10/2010',2),(1,12,3,'11/11/2010',3),(4,12,2,'12/5/2010',4),(3,12,4,'13/6/2010',1);
/*!40000 ALTER TABLE `capturaValor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa` (
  `id` int(120) DEFAULT '12'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriaEquipo`
--

DROP TABLE IF EXISTS `categoriaEquipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriaEquipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriaEquipo`
--

LOCK TABLES `categoriaEquipo` WRITE;
/*!40000 ALTER TABLE `categoriaEquipo` DISABLE KEYS */;
INSERT INTO `categoriaEquipo` VALUES (1,'Real Madrid','Mercenarios'),(2,'Barsa','Independentistas'),(3,'Sevilla','Gitanos'),(4,'Flechas negras','Badajoz');
/*!40000 ALTER TABLE `categoriaEquipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concentrador`
--

DROP TABLE IF EXISTS `concentrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concentrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `clave_externa` int(11) NOT NULL,
  `gisLatitud` int(11) NOT NULL,
  `gisLongitud` int(11) NOT NULL,
  `macAddress` int(11) NOT NULL,
  `numeroSerie` int(11) NOT NULL,
  `categoriaEqId` int(11) NOT NULL,
  `macAddress2` int(11) NOT NULL,
  `ipAddress` int(11) NOT NULL,
  `ipPort` int(11) NOT NULL,
  `accessURL` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoriaEqId` (`categoriaEqId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concentrador`
--

LOCK TABLES `concentrador` WRITE;
/*!40000 ALTER TABLE `concentrador` DISABLE KEYS */;
INSERT INTO `concentrador` VALUES (4,'T','Grados',2450,123,1233,5,121235,3,143,1,2,5),(1,'L','Luxes',24075,123,1233,3,121235,4,3143,2,1,2),(2,'P','Atmosferas',24560,123,1233,1,121235,2,4143,3,4,1),(3,'V','km/h',247560,123,1233,12,121235,2,2143,4,3,6);
/*!40000 ALTER TABLE `concentrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametro` (
  `id` int(11) NOT NULL,
  `categoriaEqId` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `periocidad` int(11) NOT NULL,
  `unidades` int(11) NOT NULL,
  `umbralUp1` int(11) DEFAULT NULL,
  `umbralUp2` int(11) DEFAULT NULL,
  `umbralUp3` int(11) DEFAULT NULL,
  `umbralUp4` int(11) DEFAULT NULL,
  `umbralDown1` int(11) DEFAULT NULL,
  `umbralDown2` int(11) DEFAULT NULL,
  `umbralDown3` int(11) DEFAULT NULL,
  `umbralDown4` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoriaEqId` (`categoriaEqId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES (1,3,'hamster','f',5,1,100,100,100,100,50,50,50,50),(2,2,'rata','fa',12,10,10,10,10,10,5,5,5,5),(3,1,'leopardo','faa',32,32,120,120,120,120,20,20,20,20),(5,2,'sierra','faaa',43,12,300,300,300,300,50,50,50,50),(4,4,'leua','faaa',54,13,145,100,14,105,50,20,10,50);
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `clave_externa` int(11) NOT NULL,
  `gisLatitud` int(11) NOT NULL,
  `gisLongitud` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `macAddress` int(11) NOT NULL,
  `numeroSerie` int(11) NOT NULL,
  `concentradorId` int(11) NOT NULL,
  `categoriaEqId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `concentradorId` (`concentradorId`),
  KEY `categoriaEqId` (`categoriaEqId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,'Temperatura','Grados',2450,123,1233,35,121235,143,1,2),(2,'Luz','Luxes',24075,123,1233,3,121235,3143,2,1),(3,'Presion','Atmosferas',24560,123,1233,1,121235,4143,3,4),(4,'Viento','km/h',247560,123,1233,70,121235,2143,4,3);
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-03 10:41:27
