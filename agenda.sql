-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: agenda
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `ag_contacto`
--

DROP TABLE IF EXISTS `ag_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ag_contacto` (
  `id_contacto` bigint NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` bigint NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ag_contacto`
--

LOCK TABLES `ag_contacto` WRITE;
/*!40000 ALTER TABLE `ag_contacto` DISABLE KEYS */;
INSERT INTO `ag_contacto` VALUES (1,'Julio Eduardo','Rosales Vega',67876567,'julio@info.com'),(2,'Fernanda','Cabrera Arana',45673876,'fernanda@info.com'),(3,'Luis','Cardona',78879877,'luis@info.com'),(4,'Marcelo','Solares',45637898,'marcelo@info.com'),(5,'Mariela','Soto',67387678,'mariela@info.com'),(6,'Angel','Rodas',45243678,'angel@info.com'),(7,'Ruben','Aguirre',7654326,'ruben@info.com'),(8,'Rudy','Hernandez',53467287,'rudy@info.com'),(9,'Jorge','Cabrera',98789878,'jorge@info.com'),(10,'Mynor','Alonzo',45536789,'mynor@gmail.com'),(11,'Jose','Maldonado',78987898,'jose@info.com'),(12,'Marta','Contreras',36526873,'marta@info.com');
/*!40000 ALTER TABLE `ag_contacto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-12 11:15:11
