-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ontoy_db
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aristas`
--

DROP TABLE IF EXISTS `aristas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aristas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `peso` float NOT NULL,
  `id_nodo_origen` int NOT NULL,
  `id_nodo_destino` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_asociacion_nodo_origen_idx` (`id_nodo_origen`),
  KEY `id_asociacion_nodo_destino_idx` (`id_nodo_destino`),
  CONSTRAINT `id_asociacion_nodo_destino` FOREIGN KEY (`id_nodo_destino`) REFERENCES `nodos` (`id`),
  CONSTRAINT `id_asociacion_nodo_origen` FOREIGN KEY (`id_nodo_origen`) REFERENCES `nodos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aristas`
--

LOCK TABLES `aristas` WRITE;
/*!40000 ALTER TABLE `aristas` DISABLE KEYS */;
INSERT INTO `aristas` VALUES (21,'pasillo',7,65,64),(22,'pasillo',26.5,64,63),(23,'pasillo',44.1814,63,9),(24,'pasillo',13,9,70),(25,'pasillo',11,70,8),(26,'pasillo',64.5,70,73),(27,'pasillo',24,8,7),(28,'pasillo',9,7,10),(29,'pasillo',30.3356,10,12),(30,'pasillo',38.5,10,6),(31,'pasillo',24.5,6,5),(32,'pasillo',24,5,4),(33,'pasillo',4,4,3),(34,'pasillo',26.5,3,195),(35,'pasillo',43.1,195,2),(36,'pasillo',64.5,195,190),(37,'pasillo',24.1,2,1),(38,'pasillo',23.8,1,38),(39,'pasillo',18.5,38,53),(40,'pasillo',27.5,53,41),(41,'pasillo',24,41,44),(42,'pasillo',9,44,193),(43,'pasillo',15,193,47),(44,'pasillo',105,193,239),(45,'pasillo',4,47,50),(46,'pasillo',14.8661,12,11),(47,'pasillo',22.6055,11,13),(48,'pasillo',18,13,14),(49,'pasillo',12,14,24),(50,'pasillo',30.3356,24,26),(51,'pasillo',9,24,21),(52,'pasillo',24,21,22),(53,'pasillo',13,71,23),(54,'pasillo',11,22,71),(55,'pasillo',44,23,199),(56,'pasillo',22.5,199,66),(57,'pasillo',29.5,199,67),(58,'pasillo',26.5,14,20),(59,'pasillo',24.5,20,19),(60,'pasillo',24,19,18),(61,'pasillo',4,18,17),(62,'pasillo',26.5,17,196),(63,'pasillo',43.1,196,16),(64,'pasillo',64.5,196,191),(65,'pasillo',24.1,16,15),(66,'pasillo',23.8,15,39),(67,'pasillo',30.3356,53,54),(68,'pasillo',14.8661,54,55),(69,'pasillo',19.6726,55,56),(70,'pasillo',21,56,57),(71,'pasillo',7.5,39,57),(72,'pasillo',11,57,58),(73,'pasillo',40.2523,58,59),(74,'pasillo',14.8661,59,60),(75,'pasillo',22.5834,60,61),(76,'pasillo',18,61,62),(77,'pasillo',27.5,58,42),(78,'pasillo',24,42,45),(79,'pasillo',17.5855,239,240),(80,'pasillo',14.2127,240,241),(81,'pasillo',19.6726,241,242),(82,'pasillo',7,242,243),(83,'pasillo',9,45,194),(84,'pasillo',111,194,243),(85,'pasillo',15,194,48),(86,'pasillo',4,48,51),(87,'pasillo',64.5,71,74),(88,'pasillo',14.8661,26,25),(89,'pasillo',22.6055,25,27),(90,'pasillo',18,27,28),(91,'pasillo',26.5,28,34),(92,'pasillo',21,28,35),(93,'pasillo',24.5,34,33),(94,'pasillo',24,33,32),(95,'pasillo',4,32,31),(96,'pasillo',26.5,31,197),(97,'pasillo',43.1,197,30),(98,'pasillo',24.1,30,29),(99,'pasillo',23.8,29,40),(100,'pasillo',7.5,40,62),(101,'pasillo',38.5,62,43),(102,'pasillo',24,43,46),(103,'pasillo',24,46,49),(104,'pasillo',4,49,52),(105,'pasillo',39.5,73,94),(106,'pasillo',23,94,95),(107,'pasillo',23,95,96),(108,'pasillo',23,96,97),(109,'pasillo',23,97,98),(110,'pasillo',23,98,99),(111,'pasillo',7,99,190),(112,'pasillo',59,73,76),(113,'pasillo',23,76,77),(114,'pasillo',23,77,78),(115,'pasillo',23,78,79),(116,'pasillo',23,79,80),(117,'pasillo',23,80,81),(118,'pasillo',25.5,81,200),(119,'pasillo',5,200,201),(120,'pasillo',7.5,201,204),(121,'pasillo',47.5184,204,238),(122,'pasillo',43,204,207),(123,'pasillo',20.2237,207,238),(124,'pasillo',23.5372,207,209),(125,'pasillo',8.5,209,212),(127,'pasillo',8.13941,212,215),(128,'pasillo',30.5,212,135),(129,'pasillo',23,135,134),(130,'pasillo',23,134,133),(131,'pasillo',23,133,132),(132,'pasillo',23,132,131),(133,'pasillo',23,131,130),(134,'pasillo',59,130,216),(135,'pasillo',51,216,244),(136,'pasillo',31,73,244),(137,'pasillo',46.5,225,190),(138,'pasillo',35.5,225,222),(139,'pasillo',24,222,117),(140,'pasillo',23,117,116),(141,'pasillo',23,116,115),(142,'pasillo',23,115,114),(143,'pasillo',23,113,114),(144,'pasillo',23,112,113),(145,'pasillo',45.5,216,113),(146,'pasillo',63.5,216,219),(147,'pasillo',92.0217,238,237),(148,'pasillo',86.5,237,236),(149,'pasillo',81.5552,236,227),(150,'pasillo',39.5,74,100),(151,'pasillo',23,100,101),(152,'pasillo',23,101,102),(153,'pasillo',23,102,103);
/*!40000 ALTER TABLE `aristas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `profesor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (3,'Algebra LIneal','Lule'),(4,'Analisis Vectorial','Carballo'),(5,'Algebra Lineal','Brito'),(6,'Avanzadas','Nuño');
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes') NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `id_clase` int NOT NULL,
  `id_nodo` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_asociasion_clases_idx` (`id_clase`),
  KEY `id_asociasion_nodos_idx` (`id_nodo`),
  CONSTRAINT `id_asociasion_clases` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`),
  CONSTRAINT `id_asociasion_nodos` FOREIGN KEY (`id_nodo`) REFERENCES `nodos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (3,'Lunes','08:30:00','10:00:00',3,1),(4,'Martes','10:30:00','12:00:00',3,1),(5,'Lunes','01:30:00','03:00:00',4,2),(6,'Jueves','03:00:00','04:30:00',5,4),(7,'Lunes','07:30:00','20:30:00',5,1);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodos`
--

DROP TABLE IF EXISTS `nodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nodos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `coordenadaX` float NOT NULL,
  `coordenadaY` float NOT NULL,
  `coordenadaZ` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodos`
--

LOCK TABLES `nodos` WRITE;
/*!40000 ALTER TABLE `nodos` DISABLE KEYS */;
INSERT INTO `nodos` VALUES (1,'1006','salon',272.7,0,-105),(2,'1007','salon',248.6,0,-105),(3,'1008','salon',179,0,-105),(4,'1009','salon',175,0,-105),(5,'1010','salon',151,0,-105),(6,'1011','salon',126.5,0,-105),(7,'1012','salon',79,0,-105),(8,'1013','salon',55,0,-105),(9,'1014','salon',31,0,-105),(10,'escalera_inicio','escalera',88,0,-105),(11,'escalera_inicio','escalera',99,4.5,-145),(12,'escalera_final','escalera',88,4.5,-135),(13,'escalera_final','escalera',100,9.6,-123),(14,'aux','aux',100,9.6,-105),(15,'1106','salon',272.7,9.6,-105),(16,'1107','salon',248.6,9.6,-105),(17,'1108','salon',179,9.6,-105),(18,'1109','salon',175,9.6,-105),(19,'1110','salon',151,9.6,-105),(20,'1111','salon',126.5,9.6,-105),(21,'1112','salon',79,9.6,-105),(22,'1113','salon',55,9.6,-105),(23,'1114','salon',31,9.6,-105),(24,'escalera_inicio','escalera',88,9.6,-105),(25,'escalera_inicio','escalera',99,14.1,-145),(26,'escalera_final','escalera',88,14.1,-135),(27,'escalera_final','escalera',100,19.2,-123),(28,'aux','aux',100,19.2,-105),(29,'1206','salon',272.7,19.2,-105),(30,'1207','salon',248.6,19.2,-105),(31,'1208','salon',179,19.2,-105),(32,'1209','salon',175,19.2,-105),(33,'1210','salon',151,19.2,-105),(34,'1211','salon',126.5,19.2,-105),(35,'1212','salon',79,19.2,-105),(36,'1213','salon',55,19.2,-105),(37,'1214','salon',31,19.2,-105),(38,'1005','salon',296.5,0,-105),(39,'1105','salon',296.5,9.6,-105),(40,'1205','salon',296.5,19.2,-105),(41,'1004','salon',342.5,0,-105),(42,'1104','salon',342.5,9.6,-105),(43,'1204','salon',342.5,19.2,-105),(44,'1003','salon',366.5,0,-105),(45,'1103','salon',366.5,9.6,-105),(46,'1203','salon',366.5,19.2,-105),(47,'1002','salon',390.5,0,-105),(48,'1102','salon',390.5,9.6,-105),(49,'1202','salon',390.5,19.2,-105),(50,'1001','salon',394.5,0,-105),(51,'1101','salon',394.5,9.6,-105),(52,'1201','salon',394.5,19.2,-105),(53,'escalera_inicio','escalera',315,0,-105),(54,'escalera_final','escalera',315,4.5,-135),(55,'escalera_inicio','escalera',304,4.5,-145),(56,'escalera_final','escalera',304,9.6,-126),(57,'aux','aux',304,9.6,-105),(58,'escalera_iniicio','escalera',315,9.6,-105),(59,'escalera_final','escalera',315,14.1,-135),(60,'escalera_inicio','escalera',304,14.1,-145),(61,'escalera_final','escalera',304,19.2,-123),(62,'aux','aux',304,19.2,-105),(63,'aux','aux',-13,0,-101),(64,'banos_mujeres_entrada','banos',-13,0,-127.5),(65,'banos_hombres_entrada','banos',-13,0,-134.5),(66,'banos_mujeres_entrada','banos',-13,9.6,-127.5),(67,'banos_hombres_entrada','banos',-13,9.6,-134.5),(68,'banos_mujeres_entrada','banos',-13,19.2,-127.5),(69,'banos_hombres_entrada','banos',-13,19.2,-134.5),(70,'aux','aux',44,0,-105),(71,'aux','aux',44,9.6,-105),(72,'aux','aux',44,19.2,-105),(73,'aux','aux',44,0,-40.5),(74,'aux','aux',44,9.6,-40.5),(75,'aux','aux',44,19.2,-40.5),(76,'3007','salon',-15,0,-40.5),(77,'3008','salon',-38,0,-40.5),(78,'3009','salon',-61,0,-40.5),(79,'3010','salon',-84,0,-40.5),(80,'3011','salon',-107,0,-40.5),(81,'3012','salon',-130,0,-40.5),(82,'3107','salon',-15,9.6,-40.5),(83,'3108','salon',-38,9.6,-40.5),(84,'3109','salon',-61,9.6,-40.5),(85,'3110','salon',-84,9.6,-40.5),(86,'3111','salon',-107,9.6,-40.5),(87,'3112','salon',-130,9.6,-40.5),(88,'3007','salon',-15,19.2,-40.5),(89,'3008','salon',-38,19.2,-40.5),(90,'3009','salon',-61,19.2,-40.5),(91,'3010','salon',-84,19.2,-40.5),(92,'3011','salon',-107,19.2,-40.5),(93,'3012','salon',-130,19.2,-40.5),(94,'3006','salon',83.5,0,-40.5),(95,'3005','salon',106.5,0,-40.5),(96,'3004','salon',129.5,0,-40.5),(97,'3003','salon',152.5,0,-40.5),(98,'3002','salon',175.5,0,-40.5),(99,'3001','salon',198.5,0,-40.5),(100,'3106','salon',83.5,9.6,-40.5),(101,'3105','salon',106.5,9.6,-40.5),(102,'3104','salon',129.5,9.6,-40.5),(103,'3103','salon',152.5,9.6,-40.5),(104,'3102','salon',175.5,9.6,-40.5),(105,'3101','salon',198.5,9.6,-40.5),(106,'3206','salon',83.5,19.2,-40.5),(107,'3205','salon',106.5,19.2,-40.5),(108,'3204','salon',129.5,19.2,-40.5),(109,'3203','salon',152.5,19.2,-40.5),(110,'3202','salon',175.5,19.2,-40.5),(111,'3201','salon',198.5,19.2,-40.5),(112,'4006','salon',66.5,0,41.5),(113,'4005','salon',89.5,0,41.5),(114,'4004','salon',112.5,0,41.5),(115,'4003','salon',135.5,0,41.5),(116,'4002','salon',158.5,0,41.5),(117,'4001','salon',181.5,0,41.5),(118,'4106','salon',66.5,9.6,41.5),(119,'4105','salon',89.5,9.6,41.5),(120,'4104','salon',112.5,9.6,41.5),(121,'4103','salon',135.5,9.6,41.5),(122,'4102','salon',158.5,9.6,41.5),(123,'4101','salon',181.5,19.2,41.5),(124,'4206','salon',66.5,19.2,41.5),(125,'4205','salon',89.5,19.2,41.5),(126,'4204','salon',112.5,19.2,41.5),(127,'4203','salon',135.5,19.2,41.5),(128,'4202','salon',158.5,19.2,41.5),(129,'4201','salon',181.5,19.2,41.5),(130,'4007','salon',-15,0,41.5),(131,'4008','salon',-38,0,41.5),(132,'4009','salon',-61,0,41.5),(133,'4010','salon',-84,0,41.5),(134,'4011','salon',-107,0,41.5),(135,'4012','salon',-130,0,41.5),(136,'4107','salon',-15,9.6,41.5),(137,'4108','salon',-38,9.6,41.5),(138,'4109','salon',-61,9.6,41.5),(139,'4110','salon',-84,9.6,41.5),(140,'4111','salon',-107,9.6,41.5),(141,'4112','salon',-130,9.6,41.5),(142,'4207','salon',-15,19.2,41.5),(143,'4208','salon',-38,19.2,41.5),(144,'4209','salon',-61,19.2,41.5),(145,'4210','salon',-84,19.2,41.5),(146,'4211','salon',-107,19.2,41.5),(147,'4212','salon',-130,19.2,41.5),(148,'2001','salon',394.5,0,105),(149,'2002','salon',390.5,0,105),(150,'2003','salon',366.5,0,105),(151,'2004','salon',342.5,0,105),(152,'2005','salon',296.5,0,105),(153,'2006','salon',272.5,0,105),(154,'2007','salon',248.6,0,105),(155,'2008','salon',178.5,0,105),(156,'2009','salon',174.5,0,105),(157,'2010','salon',150.5,0,105),(158,'2011','salon',126.5,0,105),(159,'2012','salon',78.5,0,105),(161,'2013','salon',30.5,0,105),(162,'2101','salon',394.5,9.6,105),(163,'2102','salon',390.5,9.6,105),(164,'2103','salon',366.5,9.6,105),(165,'2104','salon',342.5,9.6,105),(166,'2105','salon',296.5,9.6,105),(167,'2106','salon',272.5,9.6,105),(168,'2107','salon',248.6,9.6,105),(169,'2108','salon',178.5,9.6,105),(170,'2109','salon',174.5,9.6,105),(171,'2110','salon',150.5,9.6,105),(172,'2111','salon',126.5,9.6,105),(173,'2112','salon',78.5,9.6,105),(174,'2113','salon',54.5,9.6,105),(175,'2114','salon',30.5,9.6,105),(176,'2201','salon',394.5,19.2,105),(177,'2202','salon',390.5,19.2,105),(178,'2203','salon',366.5,19.2,105),(179,'2204','salon',342.5,19.2,105),(180,'2205','salon',296.5,19.2,105),(181,'2206','salon',272.5,19.2,105),(182,'2207','salon',248.6,19.2,105),(183,'2208','salon',178.5,19.2,105),(184,'2209','salon',174.5,19.2,105),(185,'2210','salon',150.5,19.2,105),(186,'2211','salon',126.5,19.2,105),(187,'2212','salon',78.5,19.2,105),(188,'2213','salon',54.5,19.2,105),(189,'2214','salon',30.5,19.2,105),(190,'aux','aux',205.5,0,-40.5),(191,'aux','aux',205.5,9.6,-40.5),(192,'aux','aux',205.5,19.2,-40.5),(193,'aux','aux',375.5,0,-105),(194,'aux','aux',375.5,9.6,-105),(195,'2114','aux',205.5,0,-105),(196,'2114','aux',205.5,9.6,-105),(197,'2114','aux',205.5,19.2,-105),(198,'2114','aux',-13,19.2,-105),(199,'2114','aux',-13,9.6,-105),(200,'papeleria','servicio',-155.5,0,-40.5),(201,'papeleria','aux',-160.5,0,-40.5),(202,'papeleria','aux',-160.5,9.6,-40.5),(203,'papeleria','aux',-160.5,19.2,-40.5),(204,'Baños hombres','Baños',-160.5,0,-33),(205,'Baños hombres','Baños',-160.5,9.6,-33),(206,'Baños hombres','Baños',-160.5,19.2,-33),(207,'Escaleras_inicio','Escaleras',-165.5,0,10),(208,'Escaleras_inicio','Escaleras',-160.5,9.6,10),(209,'baños_mujeres','Baños',-160.5,0,33),(210,'baños_mujeres','Baños',-160.5,9.6,33),(211,'baños_mujeres','Baños',-160.5,19.2,33),(212,'aux','aux',-160.5,0,41.5),(213,'aux','aux',-160.5,9.6,41.5),(214,'aux','aux',-160.5,19.2,41.5),(215,'Cafeteria','Servicio',-154.5,0,47),(216,'aux','aux',44,0,41.5),(217,'aux','aux',44,9.6,41.5),(218,'aux','aux',44,19.2,41.5),(219,'aux','aux',44,0,105),(220,'aux','aux',44,9.6,105),(221,'aux','aux',44,19.2,105),(222,'aux','aux',205.5,0,41.5),(223,'aux','aux',205.5,9.6,41.5),(224,'aux','aux',205.5,19.2,41.5),(225,'Escalera inicio','Escalera',205.5,0,6),(226,'Escalera inicio','Escalera',205.5,9.6,6),(227,'aux','aux',-12.5,0,102),(228,'aux','aux',-12.5,9.6,105),(229,'aux','aux',-12.5,19.2,105),(230,'Baños hombres','Baños',-12.5,0,127),(231,'Baños hombres','Baños',-12.5,9.6,127),(232,'Baños hombres','Baños',-12.5,19.2,127),(233,'Baños mujeres','Baños',-12.5,0,134.5),(234,'Baños mujeres','Baños',-12.5,9.6,134.5),(235,'Baños mujeres','Baños',-12.5,19.2,134.5),(236,'Palapas IA','Palapas',-94,-3,102),(237,'aux','aux',-180.5,-3,102),(238,'aux','aux',-182.5,-3,10),(239,'aux','aux',375.5,0,-5),(240,'aux','aux',392.5,4.5,-5),(241,'aux','aux',401.5,4.5,6),(242,'aux','aux',382.5,9.6,6),(243,'aux','aux',375.5,9.6,6),(244,'aux','aux',44,0,-9.5),(245,'aux','aux',44,9.6,-9.5),(246,'aux','aux',44,19.2,-9.5);
/*!40000 ALTER TABLE `nodos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `appat` varchar(45) DEFAULT NULL,
  `apmat` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `boleta` varchar(10) NOT NULL,
  `rol` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Josue','Nájera','Jiménez','cuenta@cuenta.com','$2b$10$qp0MJEBHaJsD.sCYLkAPwOkrcyTvKuT0TMF.GwRyA.jhNkFWcu3RC','2022630231',0),(2,'Josue','Nájera','Jiménez','cuenta@cuenta2.com','$2b$10$9bKLbzoMThIAtSSxCFLZzOfIhpzOWIFs7xJ6jh.LI4uyFjalm7SFS','2022630232',0),(3,'Armando','Martinez','Hernandez','armando@armando.com','$2b$10$o7XsGPRwTx6TorNCwlCzQe3ov5YNqrp7KqGVUSqaw/sndblzANdWi','2022315231',0),(4,'Armando','Martinez','Hernandez','armando@armando.com','$2b$10$55o1UdA12k.BT.tMS5SON.s1C.msvjykRKqwyNZluxAVZhcYTlJgi','2022315235',0),(5,'Armando','Martinez','Hernandez','armando@armando.com','$2b$10$3B4k82jHt5E1HUfjYo2DU.K1L8hPcIIjTjNqQq3tX5Xx9NpFNLat2','2032315235',0),(6,'Josue','Nájera','Jiménez','armando@armando.com','$2b$10$3tqZeVmPe2RwyD21T4/7IOA5r4OcwuHfcmfUGUVwOBu8a7x.sxMny','2022630234',0),(7,'Joshua','Algo','Algo','algo@algo.com','$2b$10$JNx2lgkrogYzHFb1g7FKj.W1uNAkzXRY5QdIiTrPKHNh3ZhV63dDW','2022121212',0),(8,'Joshua','Algo','Algo','algo@algo.com','$2b$10$ol3wpbKB3ZjomRUI.OoZwubcAgdYuodaTCB4ic4XYub8dOAKH7qRe','2022123123',0),(9,'Luis','Algo','Algo2','cuenta@cuenta.com','$2b$10$tJC7NiRepFNx59EvWdSWJON0s92qXt71pI3wg27129G6MFEBh9Lv.','2022123124',0),(10,'dasdas','Martinez','Jiménez','algo@algo.com','$2b$10$ZN6awrEzsj1TLJ0lNKSGAul3qtGlIBC2UM1Dp0tCzjxuTKW1AYOni','213214321',0),(11,'Joshua','Algo','Algo','cuenta@cuenta.com','$2b$10$DwI/aUzYj/mW6n7bIA8fVuRZw.uUmLH1c5ApzMGM4WfyMiKL7pHw2','202212312',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_clases`
--

DROP TABLE IF EXISTS `usuarios_clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_clases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_clase` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_asociasion_usuario_idx` (`id_usuario`),
  KEY `id_asociasion_clase_idx` (`id_clase`),
  CONSTRAINT `id_asociasion_clase` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`),
  CONSTRAINT `id_asociasion_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_clases`
--

LOCK TABLES `usuarios_clases` WRITE;
/*!40000 ALTER TABLE `usuarios_clases` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_clases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 22:59:34
