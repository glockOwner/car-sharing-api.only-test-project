-- MySQL dump 10.13  Distrib 8.4.7, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` timestamp NOT NULL,
  `ended_at` timestamp NOT NULL,
  `car_id` bigint unsigned DEFAULT NULL,
  `employee_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_car_id_foreign` (`car_id`),
  KEY `bookings_employee_id_foreign` (`employee_id`),
  CONSTRAINT `bookings_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `bookings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'Destiny Beier PhD','2025-05-22 20:21:56','2025-05-23 01:21:56',2,8,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(2,'Dr. Bradly Rempel','2025-12-18 05:18:08','2025-12-18 10:18:08',2,50,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(3,'Josh Russel','2024-06-10 08:54:54','2024-06-10 13:54:54',7,47,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(4,'Hubert Lubowitz','2024-02-17 05:19:55','2024-02-17 10:19:55',2,47,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(5,'Mr. Pete Davis Sr.','2025-07-10 18:10:54','2025-07-10 23:10:54',4,50,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(6,'Cristopher Frami','2024-09-20 15:20:12','2024-09-20 20:20:12',4,49,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(7,'Jedidiah Gerlach','2025-08-16 05:31:50','2025-08-16 10:31:50',4,48,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(8,'Mrs. Imogene Fisher V','2025-11-10 09:13:52','2025-11-10 14:13:52',1,48,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(9,'Clyde Rogahn','2024-07-04 17:30:14','2024-07-04 22:30:14',6,40,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(10,'Prof. Garth Simonis Jr.','2024-01-05 10:48:49','2024-01-05 15:48:49',6,57,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(11,'Broderick Gleason Sr.','2025-02-02 10:36:54','2025-02-02 15:36:54',2,33,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(12,'Angel Spencer','2024-03-26 23:39:38','2024-03-27 04:39:38',6,52,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(13,'Meggie Schneider','2025-12-25 14:34:22','2025-12-25 19:34:22',4,33,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(14,'Francis Wisoky','2024-04-02 14:28:10','2024-04-02 19:28:10',6,40,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(15,'Chanel McDermott','2024-06-25 03:28:24','2024-06-25 08:28:24',6,30,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(16,'Frederick Emard','2024-06-18 02:07:26','2024-06-18 07:07:26',2,52,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(17,'Crystel Streich Sr.','2024-06-10 10:02:38','2024-06-10 15:02:38',1,38,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(18,'Miss Velma Nicolas Jr.','2025-12-20 19:54:17','2025-12-21 00:54:17',7,20,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(19,'Kennedi Conn DVM','2024-07-24 00:39:33','2024-07-24 05:39:33',1,32,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(20,'Forrest Olson','2025-08-25 01:03:23','2025-08-25 06:03:23',2,19,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(21,'Clint Hills','2024-06-13 11:02:56','2024-06-13 16:02:56',6,56,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(22,'Virginie Cronin','2025-02-06 21:26:22','2025-02-07 02:26:22',6,10,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(23,'Velda Maggio','2024-12-29 13:54:55','2024-12-29 18:54:55',7,38,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(24,'Octavia Feeney','2025-05-26 03:57:49','2025-05-26 08:57:49',4,48,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(25,'Randi Pfannerstill Sr.','2024-12-24 21:55:53','2024-12-25 02:55:53',4,56,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(26,'Ella Hilpert','2025-12-21 20:08:42','2025-12-22 01:08:42',1,33,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(27,'Arnulfo Botsford','2024-02-04 06:41:28','2024-02-04 11:41:28',4,5,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(28,'Gillian Jerde','2025-02-12 19:10:41','2025-02-13 00:10:41',6,1,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(29,'Ms. Samara Trantow','2025-07-24 13:47:44','2025-07-24 18:47:44',1,1,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(30,'Patience Runolfsdottir','2025-02-07 19:18:32','2025-02-08 00:18:32',7,50,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(31,'Santa Hauck','2025-12-03 16:07:22','2025-12-03 21:07:22',2,30,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(32,'Martine Flatley','2024-04-20 04:18:38','2024-04-20 09:18:38',4,39,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(33,'Fay Schuppe','2025-08-04 03:37:04','2025-08-04 08:37:04',4,20,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(34,'Leo Stark DDS','2025-03-05 06:33:58','2025-03-05 11:33:58',2,3,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(35,'Brody Schneider','2025-05-06 05:09:36','2025-05-06 10:09:36',4,53,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(36,'Bo Bernier','2024-02-26 15:47:42','2024-02-26 20:47:42',2,45,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(37,'Ms. Jenifer Tromp Jr.','2025-08-18 03:08:20','2025-08-18 08:08:20',2,10,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(38,'Miss Aimee Ebert','2024-12-11 01:13:02','2024-12-11 06:13:02',1,11,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(39,'Marcelo Skiles','2024-03-10 22:38:40','2024-03-11 03:38:40',7,56,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(40,'Milford Russel','2024-11-19 03:52:19','2024-11-19 08:52:19',6,57,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(41,'Jeffry Aufderhar','2025-05-14 18:32:34','2025-05-14 23:32:34',6,20,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(42,'Prof. Cyrus McLaughlin','2025-04-15 16:45:32','2025-04-15 21:45:32',7,39,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(43,'Dr. Kailey Sporer V','2025-04-25 23:21:35','2025-04-26 04:21:35',2,32,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(44,'Velda Altenwerth','2025-12-25 18:16:03','2025-12-25 23:16:03',7,44,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(45,'Dolores Larson DDS','2024-10-05 04:16:37','2024-10-05 09:16:37',4,28,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(46,'Maci Schaefer','2024-12-18 02:32:17','2024-12-18 07:32:17',7,2,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(47,'Maddison Wiza Jr.','2025-11-27 00:20:03','2025-11-27 05:20:03',2,32,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(48,'Rosemarie Bergstrom','2024-04-23 17:25:41','2024-04-23 22:25:41',2,13,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(49,'Mr. Brenden Stiedemann','2024-12-09 02:34:02','2024-12-09 07:34:02',7,6,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(50,'Carlo Rogahn','2025-04-14 03:21:15','2025-04-14 08:21:15',6,27,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(51,'Andreane Wisozk','2024-10-09 18:18:11','2024-10-09 23:18:11',2,50,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(52,'Theresia Kreiger','2024-01-24 17:39:47','2024-01-24 22:39:47',1,32,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(53,'Dr. Tessie Cole','2025-08-29 19:17:39','2025-08-30 00:17:39',6,53,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(54,'Camylle O\'Conner','2025-02-10 11:52:38','2025-02-10 16:52:38',4,22,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(55,'Dr. Bobby McLaughlin','2024-03-26 03:52:59','2024-03-26 08:52:59',1,3,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(56,'Jacky Durgan','2025-05-03 05:28:42','2025-05-03 10:28:42',6,10,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(57,'Korbin Hayes','2025-03-18 21:52:41','2025-03-19 02:52:41',4,30,'2026-01-19 07:43:38','2026-01-19 07:43:38'),(58,'Frances Volkman','2025-08-26 04:55:57','2025-08-26 09:55:57',6,35,'2026-01-19 07:43:38','2026-01-19 07:43:38');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comfort_category_id` bigint unsigned NOT NULL,
  `driver_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cars_driver_id_unique` (`driver_id`),
  KEY `cars_comfort_category_id_foreign` (`comfort_category_id`),
  CONSTRAINT `cars_comfort_category_id_foreign` FOREIGN KEY (`comfort_category_id`) REFERENCES `comfort_categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cars_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `employees` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Toyota',3,17,'2026-01-19 07:32:38','2026-01-19 07:32:38'),(2,'Kia',5,13,'2026-01-19 07:32:38','2026-01-19 07:32:38'),(4,'Hyundai',2,47,'2026-01-19 07:33:44','2026-01-19 07:33:44'),(6,'Chevrolet',1,35,'2026-01-19 07:34:44','2026-01-19 07:34:44'),(7,'Porshe',5,53,'2026-01-19 07:34:44','2026-01-19 07:34:44');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comfort_categories`
--

DROP TABLE IF EXISTS `comfort_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comfort_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comfort_categories`
--

LOCK TABLES `comfort_categories` WRITE;
/*!40000 ALTER TABLE `comfort_categories` DISABLE KEYS */;
INSERT INTO `comfort_categories` VALUES (1,'Business','2026-01-19 07:29:36','2026-01-19 07:29:36'),(2,'Comfort+','2026-01-19 07:29:36','2026-01-19 07:29:36'),(3,'VIP','2026-01-19 07:29:36','2026-01-19 07:29:36'),(4,'Economy','2026-01-19 07:29:36','2026-01-19 07:29:36'),(5,'Comfort','2026-01-19 07:29:36','2026-01-19 07:29:36');
/*!40000 ALTER TABLE `comfort_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comfort_category_employee_role`
--

DROP TABLE IF EXISTS `comfort_category_employee_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comfort_category_employee_role` (
  `employee_role_id` bigint unsigned DEFAULT NULL,
  `comfort_category_id` bigint unsigned DEFAULT NULL,
  KEY `comfort_category_employee_role_employee_role_id_foreign` (`employee_role_id`),
  KEY `comfort_category_employee_role_comfort_category_id_foreign` (`comfort_category_id`),
  CONSTRAINT `comfort_category_employee_role_comfort_category_id_foreign` FOREIGN KEY (`comfort_category_id`) REFERENCES `comfort_categories` (`id`),
  CONSTRAINT `comfort_category_employee_role_employee_role_id_foreign` FOREIGN KEY (`employee_role_id`) REFERENCES `employee_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comfort_category_employee_role`
--

LOCK TABLES `comfort_category_employee_role` WRITE;
/*!40000 ALTER TABLE `comfort_category_employee_role` DISABLE KEYS */;
INSERT INTO `comfort_category_employee_role` VALUES (1,4),(2,3),(3,2),(4,1),(5,5),(5,4),(1,2);
/*!40000 ALTER TABLE `comfort_category_employee_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_roles`
--

DROP TABLE IF EXISTS `employee_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_roles`
--

LOCK TABLES `employee_roles` WRITE;
/*!40000 ALTER TABLE `employee_roles` DISABLE KEYS */;
INSERT INTO `employee_roles` VALUES (1,'Developer','2026-01-19 07:29:36','2026-01-19 07:29:36'),(2,'Driver','2026-01-19 07:29:36','2026-01-19 07:29:36'),(3,'HR','2026-01-19 07:29:36','2026-01-19 07:29:36'),(4,'Manager','2026-01-19 07:29:36','2026-01-19 07:29:36'),(5,'Director','2026-01-19 07:29:36','2026-01-19 07:29:36');
/*!40000 ALTER TABLE `employee_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_employee_role_id_foreign` (`employee_role_id`),
  CONSTRAINT `employees_employee_role_id_foreign` FOREIGN KEY (`employee_role_id`) REFERENCES `employee_roles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Violet Goldner Sr.','tyreek30@yahoo.com',NULL,'$2y$12$5pBm6e4aP.hi/SU3C/Ii/ebj5op6THTAZelZbbLef/EfngIqNxhuy',NULL,3,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(2,'Kim Hettinger','percy59@oberbrunner.com',NULL,'$2y$12$ZEEk8beKv0Z/xsthWTaT9O3BaXPu0Jl25oIyy.kFSnlwdmPC8W1fu',NULL,3,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(3,'Maddison Ritchie','lindsay.koelpin@borer.com',NULL,'$2y$12$kMwpPmGq05Oqpw.9iLsXXOx/0mo/BmGbg77eraBK7xajsQf2bTEAa',NULL,5,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(4,'Cheyanne Purdy Jr.','dooley.freida@goldner.biz',NULL,'$2y$12$YCXFncqHxfftGCGToEfJQ.7kFjr2sVwbzx8GPUJjIcfOXSd1cihQW',NULL,5,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(5,'Julio Mohr','heller.kirstin@johnson.com',NULL,'$2y$12$BAS/RsMSnH7XGTkQBS0DYOOPfm8pDfxhMDiDJECvIQdZSVfBxdGwS',NULL,3,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(6,'Prof. Elwyn Cronin III','ledner.yazmin@beier.com',NULL,'$2y$12$l8KUmJlGuOAnPUsIXaKyRejz/LMcb9VpaXhhSh61PDf58LZT/JTmm',NULL,5,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(7,'Dr. Caleb Morissette','oliver65@wolf.com',NULL,'$2y$12$t5mh5G5got84pHYGxvAdse/2P9QfSqF/CSWQvyjyM//fQupOlWS8C',NULL,4,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(8,'Destin Hegmann','forrest.pacocha@stiedemann.com',NULL,'$2y$12$0roHNdHRokQY3H1sZ0t.Iun5fNIqzJlgkCrI4HMgyDOU9.2xCW59O',NULL,3,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(9,'Prof. Alfonso White Jr.','leatha.crona@gmail.com',NULL,'$2y$12$Zj9bK0iNZRfbXObqnOhfiePZGDx8YhJmouTg.tHHztM9zUClLbn56',NULL,1,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(10,'Mrs. Brittany Kling','hhintz@kilback.com',NULL,'$2y$12$gkRxAw0LHNHL32Zq2C0jX./VwZ4gWiniaqiTXoAJwzlbUBPzyJiJe',NULL,3,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(11,'Maeve Schinner','uvon@nitzsche.com',NULL,'$2y$12$IiETJaDKzluVeRXy1PPeYu/gPrlocH51Z5tBYhfsCAlmb4tbuVXk6',NULL,3,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(12,'Novella Leuschke','pkonopelski@yahoo.com',NULL,'$2y$12$KmdZqEZynOCAgSZVRoidKuQ34og4bIJwb9noCceKPDScd/NGwRczm',NULL,2,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(13,'Dr. Zander Berge','lferry@satterfield.biz',NULL,'$2y$12$xSVQrRBNg42uCzRnukLtWupmDjCgWQIP71IP7Q7hOUv5eG83sANGu',NULL,2,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(14,'Anika Abshire','estevan.steuber@hayes.com',NULL,'$2y$12$MrQPuh/8X5P4Wfhm/D2MZ.sCUJxQJ7WAPWpKAlwUcBYFCmQAR1Fd.',NULL,4,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(15,'Ivy Hickle I','verona.nolan@gmail.com',NULL,'$2y$12$NYNP.S8qMpI5eZkWfsNhxOr84UTsE3PSbqNs4O3Tempn.h4.2hAGu',NULL,5,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(16,'Mr. Ole Runte','travon.will@hand.com',NULL,'$2y$12$7NLH1PUvQ71cCTe3D746TeRTxAgEJcJhdSSAmY5Mxz5fVkaf3QL/C',NULL,5,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(17,'Susan Pollich','pat.zulauf@hammes.com',NULL,'$2y$12$uBXjiAFofQOFPXFuAPPVseHaHmuO05d4VJvD6s5XQiVZPcYMj7C2K',NULL,2,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(18,'Prof. Angel Schinner','keara85@gmail.com',NULL,'$2y$12$3L1IR76bQSwAmO3hNOXtNOsFKgjVSVuizInIgA1hTQSFXPi1ewnAO',NULL,4,'2026-01-19 07:32:22','2026-01-19 07:32:22'),(19,'Hillary Bashirian III','streich.alfred@hotmail.com',NULL,'$2y$12$PjWt2WOUkimt3FTRJIZoou8NlY11C.4fQugCz0Ew.PWF8d8AVO7ZC',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(20,'Caden Tromp','bins.annabel@yahoo.com',NULL,'$2y$12$68paoWUdyYXXNtsfa5Hx7u470ghGI9tYlI1SzBAIJcOtfd/QMwNMi',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(21,'Jevon Schiller','cory.raynor@braun.net',NULL,'$2y$12$RGS4L0HKlnKx6bE7p43Szu5GgN.7irVBFTgV0Uo9B4Y0Ka.GnnYYS',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(22,'Armand Strosin','xgutkowski@gmail.com',NULL,'$2y$12$sBySUfsM.3zA4pbsKC6BuO25bqv6xIWtO0EICiu.X9D8eeRbTTB3e',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(23,'Eulalia McClure','curt.nienow@hotmail.com',NULL,'$2y$12$ZuOv9HoC4jTpBzwQ6AkEBuMLAOb/92oxJDBvQDQNbYv1plR.18SiK',NULL,5,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(24,'Lilla Corkery','dahlia09@harris.com',NULL,'$2y$12$mBOVSxmHHO6jxOP3SMRb6eQ/TqrGwM6zBHosQLZVK6ShO1Uelh9Yq',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(25,'Prof. Mae Labadie IV','maeve.erdman@hotmail.com',NULL,'$2y$12$hBTIjZxUlZk4.6h2QUWk7e4gZVkamT7s.UEs4ZCmBwmMslxdDzMGC',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(26,'Brooke Rippin','jast.norbert@tromp.com',NULL,'$2y$12$TXfCMZEcxznjxMTFS3Jc3OG.cHpqZ613cUAxymTzi4.HmPErkw1dW',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(27,'Jabari Bins','braun.oral@swift.com',NULL,'$2y$12$JGlMbeN4yO/.xoKZ5EL3WOTDd/Jjj.ENPJewTUdTzBNPXAZ4yBpuy',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(28,'Gia Schaden MD','rex.fahey@murazik.info',NULL,'$2y$12$B2riIEuIAL4KMamKLRGdl.GKYGfDhNm8SjtfHgRJjpuA4JD3eo0iK',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(29,'Prof. Kristian Mohr I','bkuphal@gmail.com',NULL,'$2y$12$x876sq79IUHmLrdAFz9LOe0W8KemmFYiUL3MWQQ5mJ7ZvgwC4t6Fq',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(30,'Dayton Predovic','zulauf.cedrick@bernier.net',NULL,'$2y$12$eZnVVZFsBh6J51dOrYfvguMf0dBOSSvdohmJU3lHhN7.v7LsCumhO',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(31,'Daron Armstrong','aufderhar.hanna@schumm.info',NULL,'$2y$12$ExR641WJ6NCZ/m/3wnflTeZP2M7wCjXxGBrm8HkPHIrfowUPuY72y',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(32,'Ms. Amber Tromp III','crooks.willow@rogahn.net',NULL,'$2y$12$EUvHj2sjeyCQC7H7i9b0QOSgFI03pZwqA7YBYtCqGGjYvLdGcJ33y',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(33,'Miss Queen Graham','scotty73@thiel.org',NULL,'$2y$12$XlYsuLJ0X4TgObVmf5UpU.6JCOJhp2mqmsl6F.WcUcr6zycpd.AYe',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(34,'Dr. Oma Turcotte','jerry77@roob.biz',NULL,'$2y$12$ZD.i1fxMhvTF/z0BEj7vleA5X1Ru5VRnsG.qI.lRAmTcIDqo8p3VO',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(35,'Dr. Roman Fay','jharvey@hotmail.com',NULL,'$2y$12$rBg/odiI3nXeqiQub.LNh.mhhddNvWl2CauMvIn/mdd9jH7RS.Tde',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(36,'Edwina Mayert IV','donnelly.emmanuel@mcglynn.org',NULL,'$2y$12$tX7yP3iZ44qOQG7nCsfpDuZVQomKh9LPXr1iVa2wN9RV5pylFHA6y',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(37,'Prof. Stephania Waelchi PhD','halle.kunze@hotmail.com',NULL,'$2y$12$PiPUNak6dJjn/zd0AD.15u9BpQzptmj4YJJm23GUPe70ZBs48SL.G',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(38,'Mr. Monserrate Langworth III','louisa27@gmail.com',NULL,'$2y$12$u4P7olhLrvHVMY3AAGyHGuRxSyhyMChe07G9nQiPCIHSyHU0/UjwW',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(39,'Madison Volkman','dklocko@yahoo.com',NULL,'$2y$12$cEaNSm98HC6cE7jPsB66ue6YZX63NKcthOQjSz3Agbp9n/sQ9/H2C',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(40,'Norris Sawayn','weimann.elmer@yahoo.com',NULL,'$2y$12$pjWSfFEeHMw0.LJdgkYIb.kBrjiD6JPSwNsf0bAvV3h51yvX/Zzhy',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(41,'Marty Leannon','jermey.goyette@stanton.info',NULL,'$2y$12$Y.nbfVUuimnIro4IAYzXde4mSH5soAg7F0KeqwAC4YRcyYQYZ0gaa',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(42,'Abagail Roberts','heather50@gmail.com',NULL,'$2y$12$uqV9tT1yxFkSl0kQ5NqNPuVWXNtYTXrN2suEWzHu0dj97ekXnfl.2',NULL,5,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(43,'Prof. Alene Schneider','bonnie.krajcik@von.com',NULL,'$2y$12$6mOSJksJmC4nKOZSIwaA.OquiNR3JvF1/3L/uwcVwTrYHrDOrYC4m',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(44,'Casey Erdman PhD','little.johnson@hotmail.com',NULL,'$2y$12$QWQTFHKCpSsD6QXY1ND51.CoAZ77TYuFl6J3sV/XaTj27KtYSI3U6',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(45,'Cleve Tromp','candida.schmidt@maggio.biz',NULL,'$2y$12$IYGyWXdC5.i1WYg51HD33e8HijTyURFgK8DSI8DuhsmkwgCHiJgOm',NULL,5,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(46,'Viva Maggio III','boyle.elvie@yahoo.com',NULL,'$2y$12$EYPuewVYcLfGNkWzUwqLHe55SGgJpQ6HuE4eaSwCnjN2sXVBZ46XO',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(47,'Arne Rohan','winona06@beier.info',NULL,'$2y$12$27r0pX3O/c7SoxGdgzWxC.OIgLnm8Y43tNbklHsi49TiIg/GEh2EK',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(48,'Ms. Sydnie Swift','qdibbert@bergnaum.com',NULL,'$2y$12$rNOE/xww7y4iEcBlKC77ceYSwwM58KihOqReTZcGzbJ2HqEWZQZrG',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(49,'Adan Halvorson','jodie42@willms.com',NULL,'$2y$12$7r7gNwvcYnBTovli2iwAUuDjNiOVu9phxnixL64XdjorQN8640keG',NULL,5,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(50,'Lea Fay','hubert.goodwin@kiehn.com',NULL,'$2y$12$6oZUZ.GrzfQagyAU3qxesugbhBDO.D30J9MuVaHAxzyJSS1/OGpOC',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(51,'Sabina Legros','clement.kshlerin@gmail.com',NULL,'$2y$12$uRxIoWB2z.gB9.7hFkktSOR92/myreuO4w.hECfEIRMk9W5ikQutq',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(52,'Jordy Kiehn','barrett48@yahoo.com',NULL,'$2y$12$QnQBanwYV9bguxbvGMjSzeg9IWOq9sjywsgmfgc1727M28MsM65Qu',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(53,'Mrs. Lavada Reichel II','tkoepp@oconner.com',NULL,'$2y$12$hmzCO0fUoz86CS1E4AI18uvg5rWhUpJ7xHqm0L/s1hrFSeNq0NHBW',NULL,2,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(54,'Cassie Denesik','kuhn.hallie@yahoo.com',NULL,'$2y$12$Ro0Y6KjG.4UGQmEWXkoDJuDGqR3SpDKGm1CZ4jfj5KUT8CrGGAgF6',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(55,'Charlene Schulist','dayana58@williamson.com',NULL,'$2y$12$jF9nHjWEfc6cF4N3Le4Ffu.WHCxsZVQrjWaoxAmkJ2cdYjkdfwYNy',NULL,3,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(56,'Ottilie Stoltenberg','stoltenberg.gay@yahoo.com',NULL,'$2y$12$a9AFfIVAHkn40QXdhWqGF.6SXyNgdG32diiclORMPOZpr9d83p03K',NULL,4,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(57,'Leta Hammes','wrunolfsson@gmail.com',NULL,'$2y$12$m3Wa.0R/3V72DLVnfmdsq.4hpHRqPLzKRCwniBB70rurQKpGVUS3.',NULL,1,'2026-01-19 07:32:23','2026-01-19 07:32:23'),(58,'Jaclyn Jerde','jaeden.sawayn@gmail.com',NULL,'$2y$12$V6XHwjlE5qnjb87u/wWEEOf8.IpTmcB.yL7z.suMrQHFC7djimb0.',NULL,5,'2026-01-19 07:32:23','2026-01-19 07:32:23');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (41,'2014_10_12_000000_create_users_table',1),(42,'2014_10_12_100000_create_password_reset_tokens_table',1),(43,'2019_08_19_000000_create_failed_jobs_table',1),(44,'2019_12_14_000001_create_personal_access_tokens_table',1),(45,'2026_01_18_083501_create_comfort_categories_table',1),(46,'2026_01_18_084723_create_employee_roles_table',1),(47,'2026_01_18_085009_create_employees_table',1),(48,'2026_01_18_085116_create_cars_table',1),(49,'2026_01_18_085234_create_bookings_table',1),(50,'2026_01_18_115536_create_employee_role_comfort_category_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\Employee',1,'1','5c2c061d384d634041094aa4cbb8b2da76744398b7f34443b8791779037a556b','[\"*\"]','2026-01-19 09:08:08',NULL,'2026-01-19 08:55:21','2026-01-19 09:08:08');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2026-01-19  9:25:20
