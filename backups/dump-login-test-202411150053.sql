-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: login-test
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Apell_paterno` varchar(30) NOT NULL,
  `Apell_materno` varchar(30) NOT NULL,
  `Contrasena` varchar(40) NOT NULL,
  `Tipo_usuario` varchar(100) NOT NULL,
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_usuario_unique` (`usuario`),
  UNIQUE KEY `usuarios_correo_unique` (`Correo`),
  CONSTRAINT `usuarios_email_check` CHECK (regexp_like(`Correo`,_utf8mb4'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$'))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'UserUpdated1','test@gmail.com','Santiago','User','Changed','test','user','2024-11-11 00:58:04',NULL),(2,'Usuario2','test2@gmail.com','Rodrigo','Perez','Sanchez','contraseña1','User','2024-11-11 01:29:46',NULL),(3,'Usuario3','test3@gmail.com','Alejandra','Perez','Sanchez','contraseña2','User','2024-11-11 01:36:50',NULL),(4,'Usuario4','test4@gmail.com','Alejandro','Perez','Sanchez','contraseña3','User','2024-11-12 07:11:31',NULL),(5,'Usuario5','test5@gmail.com','Alexandra','Perez','Sanchez','contraseña4','User','2024-11-12 09:05:22',NULL),(6,'Usuario6','test6@gmail.com','Alexandro','Perez','Sanchez','contraseña5','User','2024-11-12 09:06:08',NULL),(7,'Usuario7','test7@gmail.com','Alexia','Perez','Sanchez','contraseña6','User','2024-11-12 09:06:35',NULL),(10,'Usuario10','test10@gmail.com','Abelinda','Perez','Sanchez','contraseña9','User','2024-11-12 09:08:42',NULL),(11,'Usuario11','test11@gmail.com','Tieri Henry','Perez','Sanchez','contraseña10','User','2024-11-12 09:11:53',NULL),(12,'Usuario12','test12@gmail.com','Cristiano','Testing','Testing','test','user','2024-11-12 09:11:53',NULL),(13,'Usuario13','test13@gmail.com','Leonel','Perez','Sanchez','contraseña1','User','2024-11-12 09:11:53',NULL),(14,'Usuario14','test14@gmail.com','Modric','Perez','Sanchez','contraseña2','User','2024-11-12 09:11:53',NULL),(15,'Usuario15','test15@gmail.com','Xavi','Perez','Sanchez','contraseña3','User','2024-11-12 09:11:53',NULL),(16,'Usuario16','test16@gmail.com','Van Persi','Perez','Sanchez','contraseña4','User','2024-11-12 09:11:53',NULL),(17,'Usuario17','test17@gmail.com','James','Perez','Sanchez','contraseña5','User','2024-11-12 09:11:53',NULL),(18,'Usuario18','test18@gmail.com','Paolo','Perez','Sanchez','contraseña6','User','2024-11-12 09:11:53',NULL),(19,'Usuario19','test19@gmail.com','Claudio','Perez','Sanchez','contraseña8','User','2024-11-12 09:11:53',NULL),(20,'Usuario20','test20@gmail.com','Claudia','Perez','Sanchez','contraseña9','User','2024-11-12 09:11:53',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'login-test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15  0:53:22
