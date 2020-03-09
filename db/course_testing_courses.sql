-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: course_testing
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `is_level_override` tinyint(4) DEFAULT NULL,
  `available_for` tinyint(3) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `meta_key` varchar(50) DEFAULT NULL,
  `meta_desc` varchar(2000) DEFAULT NULL,
  `course_icon` blob,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_on` timestamp(3) NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `enrollment_activity_pts` int(11) DEFAULT NULL,
  `completion_activity_pts` int(11) DEFAULT NULL,
  `mode` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `level_id_idx` (`level_id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `level_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'python','y','y',1,1,'dfgfdggh','python','yhdfgjkk',NULL,'admin','2020-02-01 00:00:01','sona','2020-02-01 08:30:01.000',0,1,1,10,8,'d'),(2,'java','fg','hyj',0,1,'rt','fgh','ghh',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,0,2,3,45,40,'p'),(3,'angular','meta,tag','revature',0,1,'eisueiouihfjkhdzgjkhfjkhgjkhjkg','rwefgfd','sdafsggffdddadf',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,1,6,9,23,20,'p'),(4,'aws','core,java','aws',1,2,'this course is purely for students','fdgfdg','ewtfdgfgdg',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,1,5,3,67,66,'p'),(5,'c','operator','tutorial',1,1,'procedural computer programming language supporting structured programming, lexical variable scope, and recursion, while a static type system prevents unintended operations.','programming','procedural computer programming language supporting structured programming, lexical variable scope, and recursion, while a static type system prevents unintended operations.',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,0,8,4,34,56,'p'),(6,'.net','language','dotnet',0,2,'it is a software framework developed by Microsoft that runs primarily on Microsoft Windows','programming','it is a software framework developed by Microsoft that runs primarily on Microsoft Windows',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,1,11,7,66,45,'p'),(7,'jsp','lang','javaservlet',1,0,'here tags are used to insert JAVA code into HTML pages. It is an advanced version of Servlet Technology.','ldkjfjdfhg','here tags are used to insert JAVA code into HTML pages. It is an advanced version of Servlet Technology.',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,0,9,5,76,76,'d'),(8,'hibernate','hql','hql',0,1,'it is a Java framework that simplifies the development of Java application to interact with the database. It is an open source, lightweight, ORM (Object Relational Mapping) tool.','hibernate','it is a Java framework that simplifies the development of Java application to interact with the database. It is an open source, lightweight, ORM (Object Relational Mapping) tool.',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,1,4,2,456,234,'d'),(9,'sql','mysql','dbms',1,0,'it  is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS)','sql','it  is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS)',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,1,7,4,45,67,'d'),(10,'java8','java','java',1,1,'it  is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.','java','it  is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.',NULL,'admin','2020-02-01 00:00:01',NULL,NULL,1,3,10,77,33,'d');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-04 15:21:38
