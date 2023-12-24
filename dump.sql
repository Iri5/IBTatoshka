-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: vetbd
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `click`
--

DROP TABLE IF EXISTS `click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `click` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ser_id` int DEFAULT NULL,
  `dat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ser_id` (`ser_id`),
  CONSTRAINT `click_ibfk_2` FOREIGN KEY (`ser_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `click`
--

LOCK TABLES `click` WRITE;
/*!40000 ALTER TABLE `click` DISABLE KEYS */;
INSERT INTO `click` VALUES (1,33,'2023-04-13 00:00:00'),(2,9,'2023-04-16 00:00:00'),(3,10,'2023-04-16 00:00:00'),(4,37,'2023-04-16 00:00:00'),(5,1,'2023-04-27 02:44:18'),(6,9,'2023-04-26 23:45:00'),(7,34,'2023-04-27 00:13:39'),(8,18,'2023-04-27 00:13:42'),(9,38,'2023-04-27 00:13:48'),(10,36,'2023-04-27 00:13:52'),(11,9,'2023-04-27 00:13:59'),(12,15,'2023-04-27 00:14:04'),(13,3,'2023-04-27 00:14:08'),(14,25,'2023-04-27 00:14:13'),(15,26,'2023-04-27 00:14:17'),(16,22,'2023-04-27 00:14:22'),(17,30,'2023-04-27 00:14:31'),(18,21,'2023-04-27 01:10:41'),(19,24,'2023-04-27 01:11:01'),(20,24,'2023-04-27 01:11:03'),(21,24,'2023-04-27 01:11:04'),(22,24,'2023-04-27 01:11:04'),(23,11,'2023-04-27 02:19:55'),(24,11,'2023-04-27 02:19:58'),(25,37,'2023-04-27 14:46:42'),(26,33,'2023-04-27 14:46:56'),(27,2,'2023-04-27 14:47:37'),(28,2,'2023-04-27 14:47:45'),(29,17,'2023-04-27 18:54:56'),(30,17,'2023-04-27 18:54:57'),(31,17,'2023-05-08 16:53:42'),(32,18,'2023-05-08 16:53:50'),(33,19,'2023-05-08 16:53:55'),(34,38,'2023-05-08 16:54:17'),(35,11,'2023-05-08 16:54:47'),(36,15,'2023-05-08 16:55:04'),(37,37,'2023-07-26 23:31:11'),(38,38,'2023-07-26 23:31:15'),(39,1,'2023-07-26 23:31:22'),(40,33,'2023-12-19 14:08:18'),(41,37,'2023-12-24 19:18:48'),(42,33,'2023-12-24 19:21:40'),(43,33,'2023-12-24 19:21:41');
/*!40000 ALTER TABLE `click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `img` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Анна','Ветеринар Анна, стаж работы более 15 лет. -Ветеринарная клиника на ул. Ударников, д. 23 -Лечение и выхаживание животных с заболеваниями органов дыхания, пищеварения, глаз, мочеполовой системы. При необходимости, вызов ветеринарного врача на дом. В нашей клинике работают опытные, квалифицированные врачи, которые проконсультируют Вас по телефону и при необходимости назначат лечение. Наши врачи постоянно проходят курсы повышения квалификации, посещают специализированные выставки.',NULL),(2,'Андрей','Ветеринар Андрей, стаж работы более 20 лет. Ветеринарный врач-консультант. Врач-ветеринар высшей категории. Квалифицированная помощь в области ветеринарии. Лечение домашних животных, собак, кошек, хорьков, птиц, грызунов. Диагностика заболеваний, вакцинация. Кастрация котов, стерилизация кошек. Хирургия (удаление зубов, купирование ушей, хвоста). Травматология.',NULL),(3,'Лариса','Ветеринар Лариса, стаж работы более 5 лет. Порода: цвергшнауцер. Оказываю услуги по лечению и профилактике заболеваний у собак. Провожу осмотр и вакцинацию собак в любой день недели. Выезд к клиенту на дом. Возможен выезд на своей машине. Есть возможность провести консультации по телефону/вайберу, если нет возможности приехать.',NULL),(4,'Ольга','Ветеринар Ольга, стаж работы более 25 лет. Ветеринарный врач-терапевт с большим опытом, специалист по лечению и профилактике инфекционных заболеваний у животных. Проводит осмотр животных, диагностику, лечение, вакцинирование. Выполняет хирургические операции: кастрация, стерилизация, удаление камней из мочевого пузыря и т.д. В работе использует только сертифицированные препараты и расходные материалы, стерильные инструменты. Также выполняет УЗИ диагностику на современном аппарате для животных.',NULL),(5,'Анастасия','Ветеринар Анастасия, стаж работы более 15 лет. -Ветеринарная клиника на ул. Ударников, д. 23 -Лечение и выхаживание животных с заболеваниями органов дыхания, пищеварения, глаз, мочеполовой системы. При необходимости, вызов ветеринарного врача на дом. В нашей клинике работают опытные, квалифицированные врачи, которые проконсультируют Вас по телефону и при необходимости назначат лечение. Наши врачи постоянно проходят курсы повышения квалификации, посещают специализированные выставки.',NULL),(6,'Вера','Ветеринар Вера, стаж работы более 20 лет. Ветеринарный врач-консультант. Врач-ветеринар высшей категории. Квалифицированная помощь в области ветеринарии. Лечение домашних животных, собак, кошек, хорьков, птиц, грызунов. Диагностика заболеваний, вакцинация. Кастрация котов, стерилизация кошек. Хирургия (удаление зубов, купирование ушей, хвоста). Травматология.',NULL),(7,'Виталий','Ветеринар Виталий, стаж работы более 5 лет. Порода: цвергшнауцер. Оказываю услуги по лечению и профилактике заболеваний у собак. Провожу осмотр и вакцинацию собак в любой день недели. Выезд к клиенту на дом. Возможен выезд на своей машине. Есть возможность провести консультации по телефону/вайберу, если нет возможности приехать.',NULL),(8,'Дмитрий','Ветеринар Дмитрий, стаж работы более 25 лет. Ветеринарный врач-терапевт с большим опытом, специалист по лечению и профилактике инфекционных заболеваний у животных. Проводит осмотр животных, диагностику, лечение, вакцинирование. Выполняет хирургические операции: кастрация, стерилизация, удаление камней из мочевого пузыря и т.д. В работе использует только сертифицированные препараты и расходные материалы, стерильные инструменты. Также выполняет УЗИ диагностику на современном аппарате для животных.',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sec_title` varchar(260) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sec_title` (`sec_title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (3,'Вакцинация и чипирование'),(8,'Груминг'),(7,'Диагностика'),(2,'Кастрация и стерилизация'),(1,'Прием врачей'),(5,'Стационар'),(4,'Терапия'),(6,'Хирургия');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ser_title` varchar(260) NOT NULL,
  `price` double DEFAULT NULL,
  `sec_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ser_title` (`ser_title`),
  KEY `sec_id` (`sec_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`sec_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Первичный прием ветеринарного врача - терапевта',1100,1),(2,'Первичный прием ветеринарного врача - хирурга',1200,1),(3,'Первичный прием ветеринарного врача - дерматолога',1400,1),(4,'Первичный прием ветеринарного врача - кардиолога',1400,1),(5,'Первичный прием ветеринарного врача - стоматолога',1400,1),(6,'Первичный прием ветеринарного врача - невролога',1400,1),(7,'Первичный прием ветеринарного врача - ортопеда/травматолога',1400,1),(8,'Первичный прием ветеринарного врача - репродуктолога',1400,1),(9,'Кастрация кота',2500,2),(10,'Кастрация кобеля до 9 кг',8000,2),(11,'Кастрация кобеля 10-29 кг',12000,2),(12,'Кастрация кобеля от 30 кг',14500,2),(13,'Стерилизация кошки',6500,2),(14,'ОГЭ суки до 9 кг',13000,2),(15,'ОГЭ суки 10 -19 кг',15000,2),(16,'ОГЭ суки от 20-39 кг',17000,2),(17,'Комплексная вакцинация(с осмотром) для кошек',1600,3),(18,'Комплексная вакцинация(с осмотром) для собак',1600,3),(19,'Чипирование и регистрация чипа в интернет-базе данных',1300,3),(20,'Инъекция подкожная или внутримышечная',90,4),(21,'Наружное нанесение лекарственных препаратов',100,4),(22,'Капельница (с использованием современной аппаратуры)',600,4),(23,'Катетеризация мочевого пузыря у кота',1250,4),(24,'Тёплый бокс с непрерывной подачей кислорода',250,4),(25,'Лечение кошек в стационаре',400,5),(26,'Лечение собак в стационаре',600,5),(27,'Ортопедия',6000,6),(28,'Операции на позвоночнике',20000,6),(29,'Операция при вывихе коленной чашки',8000,6),(30,'Общая хирургия',1000,6),(31,'Эндоскопия',3800,6),(32,'Ингаляционный (газовый) наркоз',1000,6),(33,'УЗИ',1000,7),(34,'Рентген диагностика',950,7),(35,'ЭКГ',1100,7),(36,'Лабораторные исследования',800,7),(37,'Кошки',1800,8),(38,'Собаки',1800,8);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `secret` varchar(45) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Иван','ivan','ivan1','1','Я не люблю свою работу','b74401f560c4df460af0f247dfff76fc0ce62cd79ecbb8a0ace991d0a9fbe68c'),(2,'Николай','admin','admin','2',NULL,'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),(3,'Петр','petr','123456','1','Я верю в деда Мороза','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-24 20:08:37
