-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: sandoc
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `schedule` date NOT NULL,
  `doctor_facility_id` bigint NOT NULL,
  `chief_complaints` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_facilities`
--

DROP TABLE IF EXISTS `doctor_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` bigint NOT NULL,
  `facility_id` bigint NOT NULL,
  `room_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_facilities`
--

LOCK TABLES `doctor_facilities` WRITE;
/*!40000 ALTER TABLE `doctor_facilities` DISABLE KEYS */;
INSERT INTO `doctor_facilities` VALUES (1,NULL,28,70,'2C','2021-07-23 00:00:00','2021-03-24 00:00:00'),(2,NULL,11,31,'401','2022-01-20 00:00:00','2021-07-26 00:00:00'),(3,NULL,4,40,'401','2022-03-06 00:00:00','2021-08-03 00:00:00'),(4,NULL,2,48,'103','2021-05-29 00:00:00','2021-10-09 00:00:00'),(5,NULL,58,88,'100','2022-01-17 00:00:00','2021-12-08 00:00:00'),(6,NULL,83,47,'302','2022-01-09 00:00:00','2021-04-05 00:00:00'),(7,NULL,5,46,'2A','2021-12-30 00:00:00','2021-07-01 00:00:00'),(8,NULL,65,11,'200','2021-08-29 00:00:00','2021-06-07 00:00:00'),(9,NULL,48,27,'102','2021-08-06 00:00:00','2021-11-12 00:00:00'),(10,NULL,96,67,'2A','2021-03-31 00:00:00','2022-01-08 00:00:00'),(11,NULL,66,93,'201','2021-07-07 00:00:00','2021-08-17 00:00:00'),(12,NULL,46,100,'304','2021-11-17 00:00:00','2021-11-06 00:00:00'),(13,NULL,22,18,'301','2021-11-26 00:00:00','2022-01-27 00:00:00'),(14,NULL,90,2,'203','2022-01-25 00:00:00','2021-10-08 00:00:00'),(15,NULL,6,57,'2D','2021-06-22 00:00:00','2022-01-30 00:00:00'),(16,NULL,53,32,'202','2021-12-07 00:00:00','2021-11-22 00:00:00'),(17,NULL,15,99,'301','2021-04-29 00:00:00','2022-02-03 00:00:00'),(18,NULL,23,54,'2C','2021-06-13 00:00:00','2021-12-13 00:00:00'),(19,NULL,72,7,'301','2021-11-17 00:00:00','2021-03-27 00:00:00'),(20,NULL,62,74,'101','2022-01-22 00:00:00','2021-11-25 00:00:00'),(21,NULL,68,76,'203','2022-01-04 00:00:00','2021-12-09 00:00:00'),(22,NULL,41,70,'401','2021-08-03 00:00:00','2021-11-14 00:00:00'),(23,NULL,19,84,'100','2022-02-05 00:00:00','2021-05-10 00:00:00'),(24,NULL,36,6,'303','2021-11-05 00:00:00','2021-09-06 00:00:00'),(25,NULL,2,94,'103','2021-10-16 00:00:00','2021-04-08 00:00:00'),(26,NULL,2,9,'101B','2021-04-16 00:00:00','2021-05-21 00:00:00'),(27,NULL,89,51,'2C','2021-06-20 00:00:00','2021-09-06 00:00:00'),(28,NULL,19,59,'401','2021-07-25 00:00:00','2021-08-06 00:00:00'),(29,NULL,89,37,'301','2022-02-03 00:00:00','2021-11-06 00:00:00'),(30,NULL,35,72,'101','2021-07-20 00:00:00','2021-08-26 00:00:00'),(31,NULL,96,53,'301','2021-06-29 00:00:00','2021-08-14 00:00:00'),(32,NULL,91,29,'2A','2021-11-10 00:00:00','2021-10-01 00:00:00'),(33,NULL,98,43,'303','2021-05-24 00:00:00','2021-07-10 00:00:00'),(34,NULL,74,93,'101A','2021-08-18 00:00:00','2021-04-11 00:00:00'),(35,NULL,67,57,'202','2021-05-05 00:00:00','2021-04-20 00:00:00'),(36,NULL,48,20,'404','2021-09-18 00:00:00','2021-06-23 00:00:00'),(37,NULL,12,43,'101B','2021-04-01 00:00:00','2021-07-24 00:00:00'),(38,NULL,11,38,'2D','2021-08-28 00:00:00','2021-04-06 00:00:00'),(39,NULL,100,27,'2B','2021-07-26 00:00:00','2022-01-19 00:00:00'),(40,NULL,54,19,'100','2021-06-09 00:00:00','2021-07-11 00:00:00'),(41,NULL,8,6,'100','2021-10-18 00:00:00','2021-07-26 00:00:00'),(42,NULL,81,33,'202','2021-06-18 00:00:00','2022-01-24 00:00:00'),(43,NULL,66,8,'404','2021-09-18 00:00:00','2021-06-01 00:00:00'),(44,NULL,21,70,'2A','2022-02-18 00:00:00','2021-06-07 00:00:00'),(45,NULL,81,69,'101B','2021-05-09 00:00:00','2021-07-19 00:00:00'),(46,NULL,61,21,'200','2022-01-14 00:00:00','2021-05-16 00:00:00'),(47,NULL,71,31,'100','2021-10-05 00:00:00','2021-06-06 00:00:00'),(48,NULL,93,55,'2B','2021-09-18 00:00:00','2021-05-24 00:00:00'),(49,NULL,44,73,'102','2021-11-21 00:00:00','2021-05-04 00:00:00'),(50,NULL,29,66,'303','2021-09-03 00:00:00','2022-03-07 00:00:00');
/*!40000 ALTER TABLE `doctor_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_specializations`
--

DROP TABLE IF EXISTS `doctor_specializations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_specializations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint NOT NULL,
  `specialization_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_specializations`
--

LOCK TABLES `doctor_specializations` WRITE;
/*!40000 ALTER TABLE `doctor_specializations` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_specializations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Granleese','Stanwood','(417) 4499324','2021-08-31 00:00:00','2021-09-09 00:00:00',NULL),(2,'Shaudfurth','Carlin','(847) 8720356','2021-07-21 00:00:00','2021-10-19 00:00:00',NULL),(3,'Hannay','Shayne','(958) 6972628','2022-01-15 00:00:00','2021-12-21 00:00:00',NULL),(4,'Feldstern','Marie-ann','(289) 6460034','2022-02-05 00:00:00','2021-10-17 00:00:00',NULL),(5,'Bonar','Howey','(718) 2773930','2021-11-09 00:00:00','2021-10-04 00:00:00',NULL),(6,'Gogerty','Blondell','(987) 3612829','2022-01-22 00:00:00','2021-12-07 00:00:00',NULL),(7,'Bloxland','Preston','(851) 4121415','2021-10-07 00:00:00','2021-11-12 00:00:00',NULL),(8,'Wiggam','Aldin','(563) 1999422','2021-10-02 00:00:00','2021-08-01 00:00:00',NULL),(9,'Derricoat','Antonino','(527) 1755356','2021-09-24 00:00:00','2021-09-13 00:00:00',NULL),(10,'Cudde','Modestine','(555) 2657970','2021-08-06 00:00:00','2021-08-04 00:00:00',NULL),(11,'Carding','Panchito','(648) 2791530','2021-03-31 00:00:00','2022-01-10 00:00:00',NULL),(12,'Matasov','Jerrold','(511) 5896547','2022-02-07 00:00:00','2022-01-18 00:00:00',NULL),(13,'Dancer','Vidovik','(810) 9781614','2021-06-27 00:00:00','2021-08-06 00:00:00',NULL),(14,'Ellerbeck','Caresse','(242) 7033411','2021-04-20 00:00:00','2021-10-24 00:00:00',NULL),(15,'Fery','Sheri','(549) 9505249','2021-08-28 00:00:00','2021-05-03 00:00:00',NULL),(16,'Hessle','Faythe','(901) 1195754','2021-08-05 00:00:00','2021-10-07 00:00:00',NULL),(17,'Darque','Emili','(570) 8303004','2021-10-08 00:00:00','2022-01-26 00:00:00',NULL),(18,'Marjoribanks','Alonzo','(478) 5655450','2021-04-01 00:00:00','2022-03-21 00:00:00',NULL),(19,'Hamly','Guido','(402) 5655438','2021-12-09 00:00:00','2021-09-28 00:00:00',NULL),(20,'Ghidelli','Zoe','(527) 6070451','2021-07-10 00:00:00','2021-06-24 00:00:00',NULL),(21,'Refford','Althea','(956) 5174507','2021-07-09 00:00:00','2021-11-13 00:00:00',NULL),(22,'Mintoff','Alexine','(387) 6661890','2022-02-03 00:00:00','2021-08-23 00:00:00',NULL),(23,'Spinke','Aimee','(552) 9684530','2021-04-27 00:00:00','2021-10-16 00:00:00',NULL),(24,'Nerheny','Hewitt','(267) 1006793','2021-12-07 00:00:00','2021-06-16 00:00:00',NULL),(25,'Todari','Harcourt','(975) 2775341','2021-06-22 00:00:00','2021-05-22 00:00:00',NULL),(26,'Boxe','Carson','(399) 5332530','2021-03-26 00:00:00','2021-04-24 00:00:00',NULL),(27,'Preator','Benn','(693) 4629249','2021-08-16 00:00:00','2021-11-18 00:00:00',NULL),(28,'Hosier','Misha','(378) 4152146','2021-08-02 00:00:00','2022-02-24 00:00:00',NULL),(29,'Applegarth','Ddene','(898) 1666436','2021-04-12 00:00:00','2021-09-19 00:00:00',NULL),(30,'Sedgwick','Lora','(996) 4878064','2021-11-05 00:00:00','2021-08-02 00:00:00',NULL),(31,'Gabites','Ravid','(669) 7368416','2021-08-04 00:00:00','2021-11-05 00:00:00',NULL),(32,'Sprade','Bevon','(630) 3146829','2022-01-05 00:00:00','2022-01-02 00:00:00',NULL),(33,'Badcock','Richart','(456) 5001116','2021-05-07 00:00:00','2021-06-06 00:00:00',NULL),(34,'Gianolini','Arleyne','(529) 9295254','2021-04-19 00:00:00','2021-10-27 00:00:00',NULL),(35,'Stogill','Hermina','(799) 8252434','2022-01-05 00:00:00','2021-09-19 00:00:00',NULL),(36,'Brimming','Cullin','(958) 8960955','2021-09-09 00:00:00','2021-11-27 00:00:00',NULL),(37,'Boreham','Chickie','(184) 4885603','2022-03-22 00:00:00','2021-08-13 00:00:00',NULL),(38,'Steward','Raquel','(282) 3748962','2021-10-14 00:00:00','2021-07-12 00:00:00',NULL),(39,'Pashe','Lothario','(859) 1812946','2021-04-20 00:00:00','2021-09-15 00:00:00',NULL),(40,'Deakan','Tricia','(917) 1091839','2021-12-27 00:00:00','2021-10-10 00:00:00',NULL),(41,'Munkton','Colette','(526) 9215013','2021-09-01 00:00:00','2021-08-01 00:00:00',NULL),(42,'Isacke','Sancho','(290) 5084650','2021-07-22 00:00:00','2021-05-16 00:00:00',NULL),(43,'Retchless','Sancho','(426) 3641733','2021-08-02 00:00:00','2021-05-12 00:00:00',NULL),(44,'Aspin','Cyril','(333) 6128358','2021-07-23 00:00:00','2021-11-04 00:00:00',NULL),(45,'Bearman','Jolene','(346) 1416070','2021-08-05 00:00:00','2022-01-22 00:00:00',NULL),(46,'Shera','Rhoda','(489) 9906591','2021-06-18 00:00:00','2021-06-28 00:00:00',NULL),(47,'Flips','Weber','(713) 3266367','2021-11-04 00:00:00','2021-05-10 00:00:00',NULL),(48,'Gauche','Rosalynd','(630) 5725748','2022-03-15 00:00:00','2021-11-16 00:00:00',NULL),(49,'Pavkovic','Faulkner','(798) 8494321','2021-04-04 00:00:00','2021-04-15 00:00:00',NULL),(50,'Pavolillo','Ancell','(904) 7149071','2021-08-25 00:00:00','2021-11-27 00:00:00',NULL),(51,'Skentelbury','Remy','(302) 8828528','2021-06-07 00:00:00','2021-07-07 00:00:00',NULL),(52,'Gainsburgh','Ilse','(868) 3108647','2021-04-27 00:00:00','2021-12-27 00:00:00',NULL),(53,'McRamsey','Pier','(670) 9358555','2021-10-02 00:00:00','2021-04-24 00:00:00',NULL),(54,'Orme','Jenny','(739) 2146959','2022-02-12 00:00:00','2021-06-24 00:00:00',NULL),(55,'Sallowaye','Guinna','(769) 5076069','2021-12-23 00:00:00','2022-03-21 00:00:00',NULL),(56,'Boak','Caroline','(499) 4466437','2021-10-07 00:00:00','2021-12-09 00:00:00',NULL),(57,'Bortoli','Gayel','(823) 4405938','2021-10-22 00:00:00','2021-07-08 00:00:00',NULL),(58,'Durrand','Janaye','(605) 5307212','2022-01-13 00:00:00','2021-05-27 00:00:00',NULL),(59,'Molson','Wally','(898) 5201624','2021-08-24 00:00:00','2021-08-17 00:00:00',NULL),(60,'Kinneir','Electra','(676) 9630527','2021-12-12 00:00:00','2022-02-19 00:00:00',NULL),(61,'Cripin','Lettie','(720) 1618903','2021-12-28 00:00:00','2022-01-03 00:00:00',NULL),(62,'Gonthier','Iormina','(461) 1527739','2021-11-15 00:00:00','2021-07-20 00:00:00',NULL),(63,'Goodbairn','Andromache','(948) 1619554','2021-11-23 00:00:00','2021-09-29 00:00:00',NULL),(64,'Greensite','Donia','(721) 6625415','2022-02-17 00:00:00','2022-02-03 00:00:00',NULL),(65,'Jessope','Shandie','(368) 6638436','2021-03-26 00:00:00','2022-01-26 00:00:00',NULL),(66,'Yglesias','Gusella','(683) 7063396','2021-06-18 00:00:00','2022-02-23 00:00:00',NULL),(67,'Stolz','Sandye','(843) 8643022','2021-10-30 00:00:00','2022-02-17 00:00:00',NULL),(68,'Torvey','Jaquenetta','(687) 2835850','2021-11-07 00:00:00','2021-08-14 00:00:00',NULL),(69,'Payne','Merlina','(136) 9605585','2021-12-18 00:00:00','2021-08-21 00:00:00',NULL),(70,'Vizard','Estel','(706) 4509086','2022-03-14 00:00:00','2021-05-21 00:00:00',NULL),(71,'Elsworth','Winni','(100) 7625171','2021-10-26 00:00:00','2021-12-18 00:00:00',NULL),(72,'Vasilyevski','Kellina','(110) 2058011','2021-03-25 00:00:00','2021-03-28 00:00:00',NULL),(73,'Biggin','Chiarra','(676) 3526875','2022-01-25 00:00:00','2021-12-16 00:00:00',NULL),(74,'Sipson','Phyllis','(127) 9095820','2021-05-27 00:00:00','2022-02-19 00:00:00',NULL),(75,'Gilhoolie','Winona','(191) 2027764','2021-12-01 00:00:00','2021-12-25 00:00:00',NULL),(76,'De Morena','Dulciana','(555) 6492116','2021-12-25 00:00:00','2021-09-14 00:00:00',NULL),(77,'Whewell','Isadora','(861) 9110295','2021-04-15 00:00:00','2022-02-18 00:00:00',NULL),(78,'Crighton','Sissy','(321) 3723352','2021-11-28 00:00:00','2022-01-15 00:00:00',NULL),(79,'Rotherham','Holly','(918) 9268828','2021-12-01 00:00:00','2022-02-02 00:00:00',NULL),(80,'Jacquemet','Candra','(756) 8269144','2021-06-07 00:00:00','2021-07-16 00:00:00',NULL),(81,'Culpan','Maryann','(303) 5832217','2021-07-04 00:00:00','2021-05-18 00:00:00',NULL),(82,'Killingback','Lesly','(732) 2334825','2021-12-11 00:00:00','2021-08-05 00:00:00',NULL),(83,'Enser','Shara','(671) 2405804','2021-12-10 00:00:00','2022-03-19 00:00:00',NULL),(84,'Paulusch','Nerty','(331) 7227330','2021-05-26 00:00:00','2021-07-19 00:00:00',NULL),(85,'Stubbert','Chrysler','(733) 6785552','2021-06-22 00:00:00','2022-01-04 00:00:00',NULL),(86,'Roskell','Maryann','(595) 7045638','2021-07-18 00:00:00','2021-10-09 00:00:00',NULL),(87,'Holdron','Anna','(592) 8303961','2022-02-12 00:00:00','2021-05-07 00:00:00',NULL),(88,'Latty','Chelsae','(903) 3126394','2021-04-24 00:00:00','2021-12-07 00:00:00',NULL),(89,'Whistance','Brooks','(515) 2179186','2021-04-24 00:00:00','2021-07-10 00:00:00',NULL),(90,'Boate','Rodina','(200) 3642979','2021-05-17 00:00:00','2021-09-29 00:00:00',NULL),(91,'Jagiela','Evey','(964) 7161631','2022-02-20 00:00:00','2021-09-26 00:00:00',NULL),(92,'Welbourn','Jasmina','(656) 2552415','2021-08-03 00:00:00','2021-08-23 00:00:00',NULL),(93,'Laughren','Avie','(912) 6949505','2022-01-05 00:00:00','2022-01-29 00:00:00',NULL),(94,'Siddens','Linea','(348) 2650580','2021-05-24 00:00:00','2021-09-12 00:00:00',NULL),(95,'Payn','Cathi','(285) 9964449','2021-06-12 00:00:00','2021-04-14 00:00:00',NULL),(96,'Matteoli','Libby','(599) 6789762','2021-08-17 00:00:00','2021-07-26 00:00:00',NULL),(97,'Adamovitz','Janetta','(221) 1743348','2021-04-05 00:00:00','2021-04-23 00:00:00',NULL),(98,'Probat','Joelle','(542) 2715423','2021-09-10 00:00:00','2021-08-04 00:00:00',NULL),(99,'Vail','Audrie','(322) 3241613','2021-06-12 00:00:00','2021-08-09 00:00:00',NULL),(100,'Duckham','Minette','(647) 2372996','2022-02-15 00:00:00','2022-01-23 00:00:00',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'BP & Steth','2022-03-24 10:24:58','2022-03-24 10:24:58'),(2,'Wound Care','2022-03-24 10:24:58','2022-03-24 10:24:58'),(3,'Body Support','2022-03-24 10:24:58','2022-03-24 10:24:58'),(4,'Glucometer','2022-03-24 10:24:58','2022-03-24 10:24:58'),(5,'Oxygen Support','2022-03-24 10:24:59','2022-03-24 10:24:59'),(6,'Dental Supplies','2022-03-24 10:24:59','2022-03-24 10:24:59'),(7,'Physical Therapy','2022-03-24 10:24:59','2022-03-24 10:24:59'),(8,'Test Kits','2022-03-24 10:24:59','2022-03-24 10:24:59'),(9,'Surgical Instrument','2022-03-24 10:24:59','2022-03-24 10:24:59'),(10,'Mobility Aids','2022-03-24 10:24:59','2022-03-24 10:24:59'),(11,'Bladder Scanner','2022-03-24 10:24:59','2022-03-24 10:24:59'),(12,'Audiometers','2022-03-24 10:24:59','2022-03-24 10:24:59'),(13,'Body Composition Analyzer','2022-03-24 10:24:59','2022-03-24 10:24:59'),(14,'Centrfigures','2022-03-24 10:24:59','2022-03-24 10:24:59'),(15,'Colposcopes','2022-03-24 10:24:59','2022-03-24 10:24:59'),(16,'Defibrillators','2022-03-24 10:24:59','2022-03-24 10:24:59'),(17,'Diagnostic Station','2022-03-24 10:24:59','2022-03-24 10:24:59'),(18,'ECG Monitors and Supplies','2022-03-24 10:24:59','2022-03-24 10:24:59'),(19,'Electrosurgery Accessories','2022-03-24 10:24:59','2022-03-24 10:24:59'),(20,'Endoscope Systems','2022-03-24 10:24:59','2022-03-24 10:24:59'),(21,'ENT Workstation','2022-03-24 10:24:59','2022-03-24 10:24:59'),(22,'Ergometers','2022-03-24 10:24:59','2022-03-24 10:24:59'),(23,'Otoscope & Opthalmoscope','2022-03-24 10:24:59','2022-03-24 10:24:59'),(24,'Stress Tests','2022-03-24 10:24:59','2022-03-24 10:24:59'),(25,'X-ray Medical Equipment','2022-03-24 10:24:59','2022-03-24 10:24:59');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `operating_schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Glyburide Hospital',NULL,NULL,NULL,'(196) 1016018','hbrisset0@stanford.edu','2021-04-16 00:00:00','2021-08-13 00:00:00'),(2,'Escitalopram Hospital',NULL,NULL,NULL,'(531) 3609950','ldowthwaite1@over-blog.com','2021-08-28 00:00:00','2021-11-24 00:00:00'),(3,'Aspirin Hospital',NULL,NULL,NULL,'(711) 5008172','jivoshin2@pbs.org','2022-01-27 00:00:00','2021-05-14 00:00:00'),(4,'Honeydew Melon Hospital',NULL,NULL,NULL,'(133) 9888645','alocksley3@blogtalkradio.com','2021-11-03 00:00:00','2021-09-09 00:00:00'),(5,'Pepper Tree Hospital',NULL,NULL,NULL,'(736) 9879289','gwoan4@amazon.co.jp','2022-03-17 00:00:00','2021-09-04 00:00:00'),(6,'Orange Blossom Antibacterial Foaming Hand Wash Hospital',NULL,NULL,NULL,'(140) 3596229','wrome5@epa.gov','2022-02-07 00:00:00','2021-08-12 00:00:00'),(7,'Aqua Maris Strong Hospital',NULL,NULL,NULL,'(807) 2120779','ldelacey6@posterous.com','2021-11-14 00:00:00','2021-11-21 00:00:00'),(8,'Petroleum Hospital',NULL,NULL,NULL,'(252) 3224741','lespinet7@statcounter.com','2021-07-09 00:00:00','2021-07-20 00:00:00'),(9,'Energize RxS Hospital',NULL,NULL,NULL,'(573) 3294087','blaborde8@si.edu','2021-04-14 00:00:00','2022-01-14 00:00:00'),(10,'Tork Advanced Antimicrobial Hospital',NULL,NULL,NULL,'(454) 8373457','cgallamore9@umich.edu','2021-07-22 00:00:00','2021-05-13 00:00:00'),(11,'Berberis e fruct. 10% Special Order Hospital',NULL,NULL,NULL,'(329) 5293527','askeina@meetup.com','2022-03-22 00:00:00','2021-09-20 00:00:00'),(12,'Immune Support Hospital',NULL,NULL,NULL,'(338) 8228932','ebesteb@bandcamp.com','2021-11-04 00:00:00','2021-12-18 00:00:00'),(13,'Octreotide Acetate Hospital',NULL,NULL,NULL,'(481) 9038592','sjeannequinc@cafepress.com','2022-01-23 00:00:00','2021-05-26 00:00:00'),(14,'Phendimetrazine Tartrate Hospital',NULL,NULL,NULL,'(228) 6771897','rbullocked@noaa.gov','2021-11-27 00:00:00','2022-02-15 00:00:00'),(15,'BIOSOLIS Sun Milk UVA Sunscreen Face and Body Broad Spectrum SPF50 KIDS Hospital',NULL,NULL,NULL,'(454) 2829912','lhewinse@trellian.com','2021-04-24 00:00:00','2021-05-29 00:00:00'),(16,'Bronchitone Hospital',NULL,NULL,NULL,'(188) 5743883','cbeddoesf@posterous.com','2021-05-29 00:00:00','2021-09-25 00:00:00'),(17,'Aspirin Hospital',NULL,NULL,NULL,'(259) 2382812','gbreffittg@lulu.com','2022-02-18 00:00:00','2021-12-12 00:00:00'),(18,'Listerine SmartRinse Anticavity Fluoride Rinse Hospital',NULL,NULL,NULL,'(218) 5128543','jillidgeh@cbslocal.com','2021-08-12 00:00:00','2021-07-07 00:00:00'),(19,'Naproxen Hospital',NULL,NULL,NULL,'(958) 1455303','mglassoni@yellowbook.com','2021-05-13 00:00:00','2021-11-14 00:00:00'),(20,'PREDNISONE Hospital',NULL,NULL,NULL,'(913) 9252998','elerohanj@ucoz.ru','2022-03-16 00:00:00','2021-05-06 00:00:00'),(21,'SuperPlus Beblesh Balm SPF25 PA 2Plus Hospital',NULL,NULL,NULL,'(700) 6751249','tzanottik@seesaa.net','2021-09-13 00:00:00','2021-08-27 00:00:00'),(22,'Childrens Plus Multi-Symptom Grape Hospital',NULL,NULL,NULL,'(879) 9648873','syeowelll@berkeley.edu','2021-09-03 00:00:00','2021-09-19 00:00:00'),(23,'Good Sense Nicotine Hospital',NULL,NULL,NULL,'(927) 6043865','lrubinsaftm@google.es','2021-11-14 00:00:00','2022-01-02 00:00:00'),(24,'Velivet Hospital',NULL,NULL,NULL,'(948) 4281500','sleyn@netlog.com','2021-12-19 00:00:00','2021-07-11 00:00:00'),(25,'Health Mart fexofenadine hydrochloride Hospital',NULL,NULL,NULL,'(607) 3063536','hhedgero@soundcloud.com','2021-03-25 00:00:00','2021-11-01 00:00:00'),(26,'Ribavirin Hospital',NULL,NULL,NULL,'(639) 1375455','aliebmannp@mediafire.com','2021-10-09 00:00:00','2021-12-26 00:00:00'),(27,'Viagra Hospital',NULL,NULL,NULL,'(724) 3297823','jmenaultq@mlb.com','2021-05-30 00:00:00','2021-10-05 00:00:00'),(28,'Helium Oxygen Hospital',NULL,NULL,NULL,'(486) 3432062','froer@tumblr.com','2021-08-05 00:00:00','2021-10-22 00:00:00'),(29,'Cyclobenzaprine Hydrochloride Hospital',NULL,NULL,NULL,'(759) 3768792','lditchs@baidu.com','2021-12-27 00:00:00','2021-05-07 00:00:00'),(30,'PENTOXIFYLLINE Hospital',NULL,NULL,NULL,'(487) 7767581','dcampst@theguardian.com','2021-08-02 00:00:00','2022-02-24 00:00:00'),(31,'LAMISIL AT Hospital',NULL,NULL,NULL,'(838) 7019208','jsagersonu@discuz.net','2021-04-25 00:00:00','2021-07-14 00:00:00'),(32,'SESSION SAVERS SUNSCREEN BROAD SPECTRUM SPF 30 WATER RESISTANT Hospital',NULL,NULL,NULL,'(802) 6775905','wcordyv@mit.edu','2021-09-02 00:00:00','2021-09-17 00:00:00'),(33,'AMARANTHUS TUBERCULATUS POLLEN Hospital',NULL,NULL,NULL,'(534) 8431464','cginglew@t.co','2021-06-15 00:00:00','2021-06-19 00:00:00'),(34,'Octreotide Acetate Hospital',NULL,NULL,NULL,'(552) 9254835','kmillimoex@ted.com','2021-10-13 00:00:00','2021-09-20 00:00:00'),(35,'Saline Laxative Hospital',NULL,NULL,NULL,'(347) 5215538','ksoldany@smh.com.au','2021-11-21 00:00:00','2021-09-11 00:00:00'),(36,'VAQTA Hospital',NULL,NULL,NULL,'(677) 4924853','davrahamianz@over-blog.com','2021-05-17 00:00:00','2022-03-17 00:00:00'),(37,'Psoriaforce Hospital',NULL,NULL,NULL,'(711) 3303161','lgooday10@linkedin.com','2021-12-27 00:00:00','2021-11-02 00:00:00'),(38,'Allergy Relief Hospital',NULL,NULL,NULL,'(798) 8244578','lransom11@discovery.com','2022-01-18 00:00:00','2022-02-17 00:00:00'),(39,'EQUALINE Hospital',NULL,NULL,NULL,'(641) 5657632','mturville12@google.nl','2021-08-28 00:00:00','2022-03-03 00:00:00'),(40,'AllergyEase Mold Hospital',NULL,NULL,NULL,'(907) 2007721','dstoffersen13@google.de','2022-01-18 00:00:00','2021-08-22 00:00:00'),(41,'Rx Act pain relief Hospital',NULL,NULL,NULL,'(326) 9945628','mmacgilrewy14@hubpages.com','2021-06-18 00:00:00','2021-06-09 00:00:00'),(42,'Diltiazem Hydrochloride Hospital',NULL,NULL,NULL,'(403) 6839933','dwhitefoot15@privacy.gov.au','2022-02-26 00:00:00','2021-10-26 00:00:00'),(43,'Liver Tonic Hospital',NULL,NULL,NULL,'(921) 2062037','ghadigate16@un.org','2022-01-31 00:00:00','2021-08-18 00:00:00'),(44,'Benicar Hospital',NULL,NULL,NULL,'(220) 7307790','hhowles17@utexas.edu','2021-04-22 00:00:00','2021-11-08 00:00:00'),(45,'Pramipexole Dihydrochloride Hospital',NULL,NULL,NULL,'(185) 1514971','vjanning18@yale.edu','2021-12-18 00:00:00','2021-09-09 00:00:00'),(46,'Pampers Kandoo Hospital',NULL,NULL,NULL,'(657) 3160556','rvillaret19@drupal.org','2022-03-19 00:00:00','2022-03-08 00:00:00'),(47,'TIMOLOL MALEATE Hospital',NULL,NULL,NULL,'(681) 3934548','gludvigsen1a@shinystat.com','2021-11-10 00:00:00','2021-08-12 00:00:00'),(48,'Etodolac Hospital',NULL,NULL,NULL,'(745) 5947170','mochterlony1b@state.tx.us','2021-04-26 00:00:00','2022-02-15 00:00:00'),(49,'Lyrica Hospital',NULL,NULL,NULL,'(876) 7376272','grollinshaw1c@mozilla.com','2021-10-20 00:00:00','2021-06-01 00:00:00'),(50,'Wegmans Hospital',NULL,NULL,NULL,'(341) 4005186','cprickett1d@deliciousdays.com','2021-05-31 00:00:00','2021-08-05 00:00:00'),(51,'Dr. Saffer Clinic',NULL,NULL,NULL,'(997) 6722327','sdrsafferclinic0@issuu.com','2022-01-16 00:00:00','2021-04-05 00:00:00'),(52,'Dr. Tewkesberry Clinic',NULL,NULL,NULL,'(236) 3706034','adrtewkesberryclinic1@cdbaby.com','2021-07-14 00:00:00','2021-09-19 00:00:00'),(53,'Dr. Affron Clinic',NULL,NULL,NULL,'(263) 3772297','odraffronclinic2@canalblog.com','2022-01-14 00:00:00','2022-03-23 00:00:00'),(54,'Dr. Joss Clinic',NULL,NULL,NULL,'(562) 3267702','pdrjossclinic3@nbcnews.com','2022-01-17 00:00:00','2021-10-15 00:00:00'),(55,'Dr. Paike Clinic',NULL,NULL,NULL,'(809) 9582610','hdrpaikeclinic4@europa.eu','2021-06-25 00:00:00','2021-06-26 00:00:00'),(56,'Dr. Scudamore Clinic',NULL,NULL,NULL,'(841) 6074165','ddrscudamoreclinic5@typepad.com','2022-03-18 00:00:00','2022-03-04 00:00:00'),(57,'Dr. Carl Clinic',NULL,NULL,NULL,'(270) 8473818','gdrcarlclinic6@amazon.co.jp','2022-03-16 00:00:00','2021-04-21 00:00:00'),(58,'Dr. Nail Clinic',NULL,NULL,NULL,'(540) 3603380','mdrnailclinic7@vinaora.com','2021-07-21 00:00:00','2021-05-15 00:00:00'),(59,'Dr. Hamby Clinic',NULL,NULL,NULL,'(356) 5905514','kdrhambyclinic8@gnu.org','2022-03-04 00:00:00','2021-07-04 00:00:00'),(60,'Dr. Gorvette Clinic',NULL,NULL,NULL,'(682) 4256478','ldrgorvetteclinic9@irs.gov','2021-06-28 00:00:00','2021-10-05 00:00:00'),(61,'Dr. Ioselevich Clinic',NULL,NULL,NULL,'(737) 3689658','sdrioselevichclinica@people.com.cn','2021-09-18 00:00:00','2021-08-10 00:00:00'),(62,'Dr. Kensit Clinic',NULL,NULL,NULL,'(560) 6601524','cdrkensitclinicb@nature.com','2021-10-20 00:00:00','2021-05-16 00:00:00'),(63,'Dr. Brabham Clinic',NULL,NULL,NULL,'(299) 3593963','bdrbrabhamclinicc@squidoo.com','2021-08-16 00:00:00','2021-06-26 00:00:00'),(64,'Dr. Bann Clinic',NULL,NULL,NULL,'(852) 1109401','kdrbannclinicd@hugedomains.com','2021-05-21 00:00:00','2022-03-09 00:00:00'),(65,'Dr. Close Clinic',NULL,NULL,NULL,'(661) 9274542','edrcloseclinice@stumbleupon.com','2021-10-24 00:00:00','2021-05-07 00:00:00'),(66,'Dr. Looks Clinic',NULL,NULL,NULL,'(831) 1868365','tdrlooksclinicf@dropbox.com','2022-01-10 00:00:00','2021-10-16 00:00:00'),(67,'Dr. Rojas Clinic',NULL,NULL,NULL,'(685) 5409052','odrrojasclinicg@scribd.com','2021-11-11 00:00:00','2021-07-21 00:00:00'),(68,'Dr. Parysowna Clinic',NULL,NULL,NULL,'(841) 9034893','fdrparysownaclinich@feedburner.com','2021-04-08 00:00:00','2021-06-20 00:00:00'),(69,'Dr. Elt Clinic',NULL,NULL,NULL,'(620) 5394913','idreltclinici@walmart.com','2021-04-06 00:00:00','2021-11-08 00:00:00'),(70,'Dr. Frandsen Clinic',NULL,NULL,NULL,'(604) 8029922','fdrfrandsenclinicj@devhub.com','2021-09-20 00:00:00','2021-11-30 00:00:00'),(71,'Dr. Guare Clinic',NULL,NULL,NULL,'(719) 2561726','tdrguareclinick@blogspot.com','2021-08-08 00:00:00','2021-12-10 00:00:00'),(72,'Dr. Lowensohn Clinic',NULL,NULL,NULL,'(810) 9875067','adrlowensohnclinicl@printfriendly.com','2022-02-09 00:00:00','2021-06-23 00:00:00'),(73,'Dr. Beelby Clinic',NULL,NULL,NULL,'(515) 4015981','odrbeelbyclinicm@senate.gov','2021-05-02 00:00:00','2021-06-28 00:00:00'),(74,'Dr. Normavill Clinic',NULL,NULL,NULL,'(666) 2487637','ddrnormavillclinicn@webeden.co.uk','2021-10-17 00:00:00','2021-11-23 00:00:00'),(75,'Dr. Girodias Clinic',NULL,NULL,NULL,'(506) 2684113','sdrgirodiasclinico@newyorker.com','2021-12-22 00:00:00','2021-09-10 00:00:00'),(76,'Dr. Defty Clinic',NULL,NULL,NULL,'(181) 4461141','tdrdeftyclinicp@goo.gl','2022-02-07 00:00:00','2021-11-22 00:00:00'),(77,'Dr. Welton Clinic',NULL,NULL,NULL,'(376) 7064520','gdrweltonclinicq@zimbio.com','2021-08-07 00:00:00','2021-12-21 00:00:00'),(78,'Dr. Agirre Clinic',NULL,NULL,NULL,'(584) 4099979','jdragirreclinicr@latimes.com','2022-02-18 00:00:00','2021-08-10 00:00:00'),(79,'Dr. Dahlgren Clinic',NULL,NULL,NULL,'(540) 9997303','adrdahlgrenclinics@wikimedia.org','2021-08-07 00:00:00','2022-02-28 00:00:00'),(80,'Dr. Gounot Clinic',NULL,NULL,NULL,'(411) 3946553','sdrgounotclinict@xrea.com','2021-08-30 00:00:00','2021-07-25 00:00:00'),(81,'Dr. Castanaga Clinic',NULL,NULL,NULL,'(996) 6629214','sdrcastanagaclinicu@printfriendly.com','2022-02-22 00:00:00','2021-06-18 00:00:00'),(82,'Dr. Andree Clinic',NULL,NULL,NULL,'(793) 9686227','gdrandreeclinicv@ox.ac.uk','2021-11-14 00:00:00','2021-03-31 00:00:00'),(83,'Dr. Kreber Clinic',NULL,NULL,NULL,'(159) 9064752','ddrkreberclinicw@illinois.edu','2021-04-28 00:00:00','2021-06-23 00:00:00'),(84,'Dr. Bourchier Clinic',NULL,NULL,NULL,'(756) 5802871','ddrbourchierclinicx@nih.gov','2021-06-24 00:00:00','2022-01-28 00:00:00'),(85,'Dr. Scrinage Clinic',NULL,NULL,NULL,'(430) 7164660','bdrscrinageclinicy@bandcamp.com','2021-07-15 00:00:00','2021-07-10 00:00:00'),(86,'Dr. Ilott Clinic',NULL,NULL,NULL,'(806) 4773341','wdrilottclinicz@domainmarket.com','2022-02-16 00:00:00','2021-06-27 00:00:00'),(87,'Dr. Owthwaite Clinic',NULL,NULL,NULL,'(847) 4120950','jdrowthwaiteclinic10@accuweather.com','2022-02-12 00:00:00','2021-10-06 00:00:00'),(88,'Dr. Bertelmot Clinic',NULL,NULL,NULL,'(922) 9251345','ydrbertelmotclinic11@timesonline.co.uk','2022-01-09 00:00:00','2021-07-18 00:00:00'),(89,'Dr. Meade Clinic',NULL,NULL,NULL,'(961) 8251334','rdrmeadeclinic12@flavors.me','2022-01-31 00:00:00','2021-06-27 00:00:00'),(90,'Dr. Sjollema Clinic',NULL,NULL,NULL,'(416) 4637398','adrsjollemaclinic13@youtu.be','2022-01-04 00:00:00','2022-03-03 00:00:00'),(91,'Dr. Kilgrew Clinic',NULL,NULL,NULL,'(202) 7023347','mdrkilgrewclinic14@telegraph.co.uk','2021-09-07 00:00:00','2022-02-04 00:00:00'),(92,'Dr. Beels Clinic',NULL,NULL,NULL,'(723) 8633256','cdrbeelsclinic15@aol.com','2021-05-26 00:00:00','2021-10-17 00:00:00'),(93,'Dr. Heigho Clinic',NULL,NULL,NULL,'(568) 5960020','ddrheighoclinic16@odnoklassniki.ru','2021-12-15 00:00:00','2021-11-01 00:00:00'),(94,'Dr. Denacamp Clinic',NULL,NULL,NULL,'(773) 3211816','kdrdenacampclinic17@facebook.com','2022-03-05 00:00:00','2022-02-04 00:00:00'),(95,'Dr. Clampett Clinic',NULL,NULL,NULL,'(200) 6701039','ldrclampettclinic18@washingtonpost.com','2021-05-26 00:00:00','2021-06-23 00:00:00'),(96,'Dr. Degli Antoni Clinic',NULL,NULL,NULL,'(850) 5908984','gdrdegliantoniclinic19@nhs.uk','2022-03-14 00:00:00','2021-09-21 00:00:00'),(97,'Dr. Hillaby Clinic',NULL,NULL,NULL,'(261) 8824673','gdrhillabyclinic1a@sina.com.cn','2022-03-18 00:00:00','2021-09-15 00:00:00'),(98,'Dr. Beinke Clinic',NULL,NULL,NULL,'(122) 6825895','ldrbeinkeclinic1b@cam.ac.uk','2021-05-03 00:00:00','2021-04-28 00:00:00'),(99,'Dr. Glowach Clinic',NULL,NULL,NULL,'(299) 9070203','ndrglowachclinic1c@google.com.hk','2022-01-06 00:00:00','2021-12-04 00:00:00'),(100,'Dr. Zellmer Clinic',NULL,NULL,NULL,'(812) 8015893','adrzellmerclinic1d@alexa.com','2021-05-27 00:00:00','2021-04-06 00:00:00');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_equipments`
--

DROP TABLE IF EXISTS `facility_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_equipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` bigint NOT NULL,
  `equipment_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_equipments`
--

LOCK TABLES `facility_equipments` WRITE;
/*!40000 ALTER TABLE `facility_equipments` DISABLE KEYS */;
INSERT INTO `facility_equipments` VALUES (1,43,8,'2022-01-28 00:00:00','2021-05-31 00:00:00'),(2,62,18,'2022-01-26 00:00:00','2021-11-17 00:00:00'),(3,84,25,'2021-10-05 00:00:00','2021-11-12 00:00:00'),(4,12,23,'2022-01-07 00:00:00','2021-11-10 00:00:00'),(5,86,9,'2021-07-17 00:00:00','2021-12-24 00:00:00'),(6,44,9,'2021-09-28 00:00:00','2021-05-11 00:00:00'),(7,57,13,'2021-04-01 00:00:00','2021-09-29 00:00:00'),(8,31,6,'2022-03-10 00:00:00','2021-11-19 00:00:00'),(9,37,12,'2021-11-04 00:00:00','2021-10-22 00:00:00'),(10,3,9,'2021-07-13 00:00:00','2021-09-27 00:00:00'),(11,7,1,'2021-08-24 00:00:00','2021-04-23 00:00:00'),(12,21,1,'2021-05-20 00:00:00','2021-10-04 00:00:00'),(13,63,3,'2022-02-24 00:00:00','2022-01-04 00:00:00'),(14,68,4,'2021-10-03 00:00:00','2021-12-19 00:00:00'),(15,42,12,'2021-12-20 00:00:00','2021-06-24 00:00:00'),(16,47,16,'2021-11-26 00:00:00','2021-06-23 00:00:00'),(17,9,4,'2021-08-28 00:00:00','2021-10-10 00:00:00'),(18,68,15,'2021-08-29 00:00:00','2021-11-28 00:00:00'),(19,41,16,'2021-10-25 00:00:00','2021-06-08 00:00:00'),(20,1,12,'2022-01-27 00:00:00','2021-09-27 00:00:00'),(21,85,15,'2021-08-23 00:00:00','2021-06-12 00:00:00'),(22,8,20,'2022-01-29 00:00:00','2021-10-05 00:00:00'),(23,67,1,'2021-11-30 00:00:00','2021-12-21 00:00:00'),(24,95,3,'2021-05-26 00:00:00','2021-08-07 00:00:00'),(25,74,23,'2021-06-18 00:00:00','2021-08-20 00:00:00'),(26,50,18,'2021-10-18 00:00:00','2021-04-12 00:00:00'),(27,30,17,'2021-03-31 00:00:00','2021-05-20 00:00:00'),(28,99,22,'2021-12-10 00:00:00','2021-09-19 00:00:00'),(29,10,22,'2021-10-15 00:00:00','2021-10-22 00:00:00'),(30,18,10,'2021-09-08 00:00:00','2021-07-03 00:00:00'),(31,65,19,'2021-04-22 00:00:00','2021-08-22 00:00:00'),(32,57,22,'2021-04-04 00:00:00','2021-04-09 00:00:00'),(33,84,25,'2022-01-13 00:00:00','2021-07-04 00:00:00'),(34,73,14,'2022-03-20 00:00:00','2021-11-12 00:00:00'),(35,45,22,'2021-07-20 00:00:00','2021-06-27 00:00:00'),(36,62,17,'2022-02-24 00:00:00','2021-12-02 00:00:00'),(37,9,4,'2022-02-28 00:00:00','2021-11-04 00:00:00'),(38,35,13,'2021-08-10 00:00:00','2021-07-25 00:00:00'),(39,76,3,'2021-04-25 00:00:00','2022-01-17 00:00:00'),(40,31,13,'2021-03-27 00:00:00','2021-12-02 00:00:00'),(41,69,16,'2021-08-21 00:00:00','2021-07-19 00:00:00'),(42,80,4,'2021-12-23 00:00:00','2021-12-31 00:00:00'),(43,38,4,'2021-11-25 00:00:00','2021-05-02 00:00:00'),(44,59,6,'2022-01-15 00:00:00','2021-09-08 00:00:00'),(45,35,25,'2021-05-07 00:00:00','2021-12-01 00:00:00'),(46,30,25,'2021-11-14 00:00:00','2022-01-09 00:00:00'),(47,50,12,'2021-04-13 00:00:00','2021-03-26 00:00:00'),(48,33,24,'2021-12-21 00:00:00','2021-06-28 00:00:00'),(49,76,5,'2021-03-25 00:00:00','2021-06-04 00:00:00'),(50,94,21,'2021-10-30 00:00:00','2021-06-17 00:00:00'),(51,64,2,'2021-04-02 00:00:00','2021-10-25 00:00:00'),(52,67,24,'2021-06-05 00:00:00','2021-05-16 00:00:00'),(53,43,15,'2021-04-28 00:00:00','2021-07-26 00:00:00'),(54,88,7,'2021-11-25 00:00:00','2021-06-03 00:00:00'),(55,6,22,'2021-09-26 00:00:00','2021-04-04 00:00:00'),(56,40,1,'2021-05-08 00:00:00','2022-01-04 00:00:00'),(57,19,20,'2022-03-03 00:00:00','2022-03-16 00:00:00'),(58,52,13,'2021-08-03 00:00:00','2021-07-30 00:00:00'),(59,83,23,'2021-07-01 00:00:00','2021-11-04 00:00:00'),(60,3,2,'2021-10-07 00:00:00','2021-11-26 00:00:00'),(61,95,16,'2021-08-02 00:00:00','2021-05-30 00:00:00'),(62,4,15,'2021-08-30 00:00:00','2022-01-08 00:00:00'),(63,34,3,'2022-03-17 00:00:00','2021-05-05 00:00:00'),(64,3,5,'2021-11-21 00:00:00','2021-06-26 00:00:00'),(65,63,8,'2021-07-27 00:00:00','2021-07-06 00:00:00'),(66,64,23,'2021-05-11 00:00:00','2021-05-01 00:00:00'),(67,6,5,'2021-07-01 00:00:00','2022-02-28 00:00:00'),(68,27,25,'2021-06-25 00:00:00','2021-08-17 00:00:00'),(69,24,25,'2021-04-12 00:00:00','2021-05-13 00:00:00'),(70,86,14,'2021-09-09 00:00:00','2021-12-21 00:00:00'),(71,19,1,'2022-03-01 00:00:00','2021-09-05 00:00:00'),(72,78,9,'2021-12-24 00:00:00','2021-12-19 00:00:00'),(73,18,8,'2021-09-07 00:00:00','2021-05-14 00:00:00'),(74,6,5,'2021-06-08 00:00:00','2021-06-03 00:00:00'),(75,44,25,'2021-04-14 00:00:00','2021-10-19 00:00:00'),(76,78,16,'2021-09-12 00:00:00','2021-03-31 00:00:00'),(77,62,1,'2021-11-04 00:00:00','2022-03-09 00:00:00'),(78,58,24,'2021-09-16 00:00:00','2021-10-24 00:00:00'),(79,41,11,'2021-08-10 00:00:00','2022-01-22 00:00:00'),(80,73,5,'2022-01-16 00:00:00','2021-06-16 00:00:00'),(81,45,9,'2021-06-14 00:00:00','2021-05-14 00:00:00'),(82,10,15,'2021-10-11 00:00:00','2022-01-13 00:00:00'),(83,39,9,'2021-06-11 00:00:00','2022-03-14 00:00:00'),(84,63,23,'2021-10-31 00:00:00','2022-01-19 00:00:00'),(85,17,8,'2022-01-21 00:00:00','2021-09-05 00:00:00'),(86,13,22,'2021-05-15 00:00:00','2021-10-11 00:00:00'),(87,71,18,'2022-01-01 00:00:00','2022-03-14 00:00:00'),(88,2,6,'2021-07-18 00:00:00','2021-09-12 00:00:00'),(89,59,10,'2021-07-03 00:00:00','2021-12-07 00:00:00'),(90,69,21,'2022-01-12 00:00:00','2021-03-31 00:00:00'),(91,17,19,'2021-04-16 00:00:00','2021-10-15 00:00:00'),(92,58,8,'2021-10-30 00:00:00','2022-02-02 00:00:00'),(93,95,6,'2022-03-21 00:00:00','2021-04-22 00:00:00'),(94,30,23,'2021-06-28 00:00:00','2021-05-23 00:00:00'),(95,29,1,'2021-05-09 00:00:00','2021-06-09 00:00:00'),(96,50,3,'2022-02-27 00:00:00','2021-07-29 00:00:00'),(97,92,8,'2022-02-25 00:00:00','2021-07-10 00:00:00'),(98,49,1,'2022-02-15 00:00:00','2022-03-10 00:00:00'),(99,78,20,'2021-09-25 00:00:00','2021-06-12 00:00:00'),(100,2,21,'2021-07-28 00:00:00','2022-01-05 00:00:00');
/*!40000 ALTER TABLE `facility_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_hmos`
--

DROP TABLE IF EXISTS `facility_hmos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_hmos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` bigint NOT NULL,
  `hmos_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_hmos`
--

LOCK TABLES `facility_hmos` WRITE;
/*!40000 ALTER TABLE `facility_hmos` DISABLE KEYS */;
INSERT INTO `facility_hmos` VALUES (1,99,10,'2021-05-21 00:00:00','2021-08-03 00:00:00'),(2,66,8,'2021-10-28 00:00:00','2021-03-28 00:00:00'),(3,56,17,'2022-01-25 00:00:00','2021-09-03 00:00:00'),(4,15,17,'2021-05-07 00:00:00','2021-10-16 00:00:00'),(5,28,6,'2021-10-29 00:00:00','2021-08-12 00:00:00'),(6,42,21,'2021-12-23 00:00:00','2021-11-16 00:00:00'),(7,5,1,'2021-12-13 00:00:00','2022-01-29 00:00:00'),(8,22,10,'2021-05-30 00:00:00','2021-06-29 00:00:00'),(9,56,7,'2021-10-19 00:00:00','2021-06-23 00:00:00'),(10,17,5,'2021-09-01 00:00:00','2021-11-14 00:00:00'),(11,58,18,'2021-10-28 00:00:00','2021-06-20 00:00:00'),(12,62,25,'2022-02-04 00:00:00','2021-04-14 00:00:00'),(13,96,15,'2021-10-17 00:00:00','2022-01-22 00:00:00'),(14,76,9,'2022-03-16 00:00:00','2021-04-07 00:00:00'),(15,83,8,'2021-11-28 00:00:00','2021-12-16 00:00:00'),(16,48,10,'2021-08-12 00:00:00','2021-04-23 00:00:00'),(17,69,23,'2021-09-15 00:00:00','2022-03-05 00:00:00'),(18,32,15,'2022-02-11 00:00:00','2021-08-20 00:00:00'),(19,86,14,'2021-09-01 00:00:00','2022-01-29 00:00:00'),(20,92,19,'2021-11-15 00:00:00','2021-11-19 00:00:00'),(21,50,12,'2021-12-11 00:00:00','2021-10-11 00:00:00'),(22,58,2,'2022-02-14 00:00:00','2021-08-07 00:00:00'),(23,16,16,'2021-12-25 00:00:00','2022-01-14 00:00:00'),(24,16,25,'2021-04-03 00:00:00','2022-02-11 00:00:00'),(25,9,9,'2021-07-10 00:00:00','2021-07-24 00:00:00'),(26,16,10,'2021-06-10 00:00:00','2022-03-17 00:00:00'),(27,50,17,'2021-11-02 00:00:00','2022-02-01 00:00:00'),(28,8,2,'2021-06-20 00:00:00','2021-12-01 00:00:00'),(29,82,1,'2021-05-29 00:00:00','2021-12-07 00:00:00'),(30,88,19,'2021-10-08 00:00:00','2021-11-20 00:00:00'),(31,82,14,'2022-01-01 00:00:00','2021-10-03 00:00:00'),(32,8,24,'2021-07-13 00:00:00','2021-04-26 00:00:00'),(33,97,11,'2021-08-13 00:00:00','2021-08-16 00:00:00'),(34,85,8,'2022-03-14 00:00:00','2021-11-16 00:00:00'),(35,59,3,'2022-01-14 00:00:00','2022-02-15 00:00:00'),(36,19,6,'2021-07-26 00:00:00','2021-07-11 00:00:00'),(37,45,3,'2021-07-24 00:00:00','2022-02-14 00:00:00'),(38,51,1,'2021-04-23 00:00:00','2021-07-17 00:00:00'),(39,23,22,'2022-03-15 00:00:00','2021-04-15 00:00:00'),(40,50,24,'2021-11-04 00:00:00','2021-12-16 00:00:00'),(41,27,19,'2021-03-24 00:00:00','2022-02-17 00:00:00'),(42,53,8,'2022-02-21 00:00:00','2022-02-13 00:00:00'),(43,86,22,'2021-10-26 00:00:00','2021-10-22 00:00:00'),(44,29,11,'2021-12-19 00:00:00','2021-09-06 00:00:00'),(45,68,7,'2022-01-06 00:00:00','2021-09-25 00:00:00'),(46,24,2,'2021-12-10 00:00:00','2021-09-23 00:00:00'),(47,27,13,'2022-01-27 00:00:00','2021-04-07 00:00:00'),(48,90,10,'2021-10-22 00:00:00','2022-03-10 00:00:00'),(49,18,9,'2021-09-08 00:00:00','2021-03-25 00:00:00'),(50,77,3,'2021-08-31 00:00:00','2021-11-15 00:00:00'),(51,39,15,'2021-11-06 00:00:00','2021-06-25 00:00:00'),(52,86,10,'2021-09-17 00:00:00','2021-07-21 00:00:00'),(53,14,17,'2021-07-22 00:00:00','2021-12-10 00:00:00'),(54,37,21,'2021-08-03 00:00:00','2021-06-01 00:00:00'),(55,65,9,'2021-06-19 00:00:00','2021-08-25 00:00:00'),(56,16,22,'2022-02-28 00:00:00','2021-10-18 00:00:00'),(57,65,22,'2021-04-18 00:00:00','2021-06-28 00:00:00'),(58,69,1,'2021-05-21 00:00:00','2021-06-06 00:00:00'),(59,66,14,'2021-05-20 00:00:00','2021-07-22 00:00:00'),(60,29,14,'2021-12-13 00:00:00','2022-03-16 00:00:00'),(61,39,16,'2021-07-24 00:00:00','2022-03-05 00:00:00'),(62,71,22,'2021-09-07 00:00:00','2021-12-30 00:00:00'),(63,77,24,'2021-06-22 00:00:00','2021-09-23 00:00:00'),(64,100,7,'2021-05-05 00:00:00','2021-09-23 00:00:00'),(65,93,16,'2021-11-02 00:00:00','2021-06-03 00:00:00'),(66,24,17,'2021-11-07 00:00:00','2022-01-14 00:00:00'),(67,84,7,'2021-06-17 00:00:00','2021-05-16 00:00:00'),(68,66,22,'2021-08-22 00:00:00','2021-10-03 00:00:00'),(69,42,6,'2022-02-02 00:00:00','2021-07-10 00:00:00'),(70,94,3,'2021-11-20 00:00:00','2021-06-13 00:00:00'),(71,3,4,'2021-12-10 00:00:00','2022-03-16 00:00:00'),(72,12,22,'2021-07-03 00:00:00','2021-12-07 00:00:00'),(73,26,5,'2022-01-31 00:00:00','2021-04-17 00:00:00'),(74,27,14,'2021-05-24 00:00:00','2021-04-23 00:00:00'),(75,46,17,'2021-07-27 00:00:00','2021-12-31 00:00:00'),(76,87,16,'2021-11-12 00:00:00','2022-02-27 00:00:00'),(77,91,4,'2021-05-01 00:00:00','2021-08-18 00:00:00'),(78,99,3,'2021-11-11 00:00:00','2021-07-08 00:00:00'),(79,40,17,'2021-09-16 00:00:00','2021-05-18 00:00:00'),(80,15,16,'2021-09-01 00:00:00','2021-08-15 00:00:00'),(81,19,13,'2021-06-13 00:00:00','2021-10-23 00:00:00'),(82,54,4,'2022-01-11 00:00:00','2021-12-23 00:00:00'),(83,34,15,'2021-06-04 00:00:00','2021-07-02 00:00:00'),(84,75,18,'2021-06-07 00:00:00','2021-08-05 00:00:00'),(85,79,15,'2022-02-01 00:00:00','2021-09-29 00:00:00'),(86,57,19,'2022-02-27 00:00:00','2021-07-24 00:00:00'),(87,6,1,'2021-03-31 00:00:00','2021-07-30 00:00:00'),(88,69,8,'2021-09-24 00:00:00','2021-08-01 00:00:00'),(89,61,8,'2021-09-22 00:00:00','2021-12-26 00:00:00'),(90,69,4,'2021-06-19 00:00:00','2021-11-15 00:00:00'),(91,25,11,'2021-04-11 00:00:00','2021-09-28 00:00:00'),(92,61,3,'2021-05-02 00:00:00','2021-06-15 00:00:00'),(93,86,10,'2021-12-17 00:00:00','2022-01-22 00:00:00'),(94,73,12,'2021-12-26 00:00:00','2021-04-17 00:00:00'),(95,34,24,'2021-03-30 00:00:00','2021-07-11 00:00:00'),(96,83,4,'2021-09-26 00:00:00','2021-05-17 00:00:00'),(97,14,2,'2021-03-25 00:00:00','2022-02-18 00:00:00'),(98,15,10,'2022-01-18 00:00:00','2022-01-18 00:00:00'),(99,54,8,'2021-07-15 00:00:00','2021-06-02 00:00:00'),(100,29,17,'2021-11-05 00:00:00','2022-02-06 00:00:00'),(101,99,10,'2021-05-21 00:00:00','2021-08-03 00:00:00'),(102,66,8,'2021-10-28 00:00:00','2021-03-28 00:00:00'),(103,56,17,'2022-01-25 00:00:00','2021-09-03 00:00:00'),(104,15,17,'2021-05-07 00:00:00','2021-10-16 00:00:00'),(105,28,6,'2021-10-29 00:00:00','2021-08-12 00:00:00'),(106,42,21,'2021-12-23 00:00:00','2021-11-16 00:00:00'),(107,5,1,'2021-12-13 00:00:00','2022-01-29 00:00:00'),(108,22,10,'2021-05-30 00:00:00','2021-06-29 00:00:00'),(109,56,7,'2021-10-19 00:00:00','2021-06-23 00:00:00'),(110,17,5,'2021-09-01 00:00:00','2021-11-14 00:00:00'),(111,58,18,'2021-10-28 00:00:00','2021-06-20 00:00:00'),(112,62,25,'2022-02-04 00:00:00','2021-04-14 00:00:00'),(113,96,15,'2021-10-17 00:00:00','2022-01-22 00:00:00'),(114,76,9,'2022-03-16 00:00:00','2021-04-07 00:00:00'),(115,83,8,'2021-11-28 00:00:00','2021-12-16 00:00:00'),(116,48,10,'2021-08-12 00:00:00','2021-04-23 00:00:00'),(117,69,23,'2021-09-15 00:00:00','2022-03-05 00:00:00'),(118,32,15,'2022-02-11 00:00:00','2021-08-20 00:00:00'),(119,86,14,'2021-09-01 00:00:00','2022-01-29 00:00:00'),(120,92,19,'2021-11-15 00:00:00','2021-11-19 00:00:00'),(121,50,12,'2021-12-11 00:00:00','2021-10-11 00:00:00'),(122,58,2,'2022-02-14 00:00:00','2021-08-07 00:00:00'),(123,16,16,'2021-12-25 00:00:00','2022-01-14 00:00:00'),(124,16,25,'2021-04-03 00:00:00','2022-02-11 00:00:00'),(125,9,9,'2021-07-10 00:00:00','2021-07-24 00:00:00'),(126,16,10,'2021-06-10 00:00:00','2022-03-17 00:00:00'),(127,50,17,'2021-11-02 00:00:00','2022-02-01 00:00:00'),(128,8,2,'2021-06-20 00:00:00','2021-12-01 00:00:00'),(129,82,1,'2021-05-29 00:00:00','2021-12-07 00:00:00'),(130,88,19,'2021-10-08 00:00:00','2021-11-20 00:00:00'),(131,82,14,'2022-01-01 00:00:00','2021-10-03 00:00:00'),(132,8,24,'2021-07-13 00:00:00','2021-04-26 00:00:00'),(133,97,11,'2021-08-13 00:00:00','2021-08-16 00:00:00'),(134,85,8,'2022-03-14 00:00:00','2021-11-16 00:00:00'),(135,59,3,'2022-01-14 00:00:00','2022-02-15 00:00:00'),(136,19,6,'2021-07-26 00:00:00','2021-07-11 00:00:00'),(137,45,3,'2021-07-24 00:00:00','2022-02-14 00:00:00'),(138,51,1,'2021-04-23 00:00:00','2021-07-17 00:00:00'),(139,23,22,'2022-03-15 00:00:00','2021-04-15 00:00:00'),(140,50,24,'2021-11-04 00:00:00','2021-12-16 00:00:00'),(141,27,19,'2021-03-24 00:00:00','2022-02-17 00:00:00'),(142,53,8,'2022-02-21 00:00:00','2022-02-13 00:00:00'),(143,86,22,'2021-10-26 00:00:00','2021-10-22 00:00:00'),(144,29,11,'2021-12-19 00:00:00','2021-09-06 00:00:00'),(145,68,7,'2022-01-06 00:00:00','2021-09-25 00:00:00'),(146,24,2,'2021-12-10 00:00:00','2021-09-23 00:00:00'),(147,27,13,'2022-01-27 00:00:00','2021-04-07 00:00:00'),(148,90,10,'2021-10-22 00:00:00','2022-03-10 00:00:00'),(149,18,9,'2021-09-08 00:00:00','2021-03-25 00:00:00'),(150,77,3,'2021-08-31 00:00:00','2021-11-15 00:00:00'),(151,39,15,'2021-11-06 00:00:00','2021-06-25 00:00:00'),(152,86,10,'2021-09-17 00:00:00','2021-07-21 00:00:00'),(153,14,17,'2021-07-22 00:00:00','2021-12-10 00:00:00'),(154,37,21,'2021-08-03 00:00:00','2021-06-01 00:00:00'),(155,65,9,'2021-06-19 00:00:00','2021-08-25 00:00:00'),(156,16,22,'2022-02-28 00:00:00','2021-10-18 00:00:00'),(157,65,22,'2021-04-18 00:00:00','2021-06-28 00:00:00'),(158,69,1,'2021-05-21 00:00:00','2021-06-06 00:00:00'),(159,66,14,'2021-05-20 00:00:00','2021-07-22 00:00:00'),(160,29,14,'2021-12-13 00:00:00','2022-03-16 00:00:00'),(161,39,16,'2021-07-24 00:00:00','2022-03-05 00:00:00'),(162,71,22,'2021-09-07 00:00:00','2021-12-30 00:00:00'),(163,77,24,'2021-06-22 00:00:00','2021-09-23 00:00:00'),(164,100,7,'2021-05-05 00:00:00','2021-09-23 00:00:00'),(165,93,16,'2021-11-02 00:00:00','2021-06-03 00:00:00'),(166,24,17,'2021-11-07 00:00:00','2022-01-14 00:00:00'),(167,84,7,'2021-06-17 00:00:00','2021-05-16 00:00:00'),(168,66,22,'2021-08-22 00:00:00','2021-10-03 00:00:00'),(169,42,6,'2022-02-02 00:00:00','2021-07-10 00:00:00'),(170,94,3,'2021-11-20 00:00:00','2021-06-13 00:00:00'),(171,3,4,'2021-12-10 00:00:00','2022-03-16 00:00:00'),(172,12,22,'2021-07-03 00:00:00','2021-12-07 00:00:00'),(173,26,5,'2022-01-31 00:00:00','2021-04-17 00:00:00'),(174,27,14,'2021-05-24 00:00:00','2021-04-23 00:00:00'),(175,46,17,'2021-07-27 00:00:00','2021-12-31 00:00:00'),(176,87,16,'2021-11-12 00:00:00','2022-02-27 00:00:00'),(177,91,4,'2021-05-01 00:00:00','2021-08-18 00:00:00'),(178,99,3,'2021-11-11 00:00:00','2021-07-08 00:00:00'),(179,40,17,'2021-09-16 00:00:00','2021-05-18 00:00:00'),(180,15,16,'2021-09-01 00:00:00','2021-08-15 00:00:00'),(181,19,13,'2021-06-13 00:00:00','2021-10-23 00:00:00'),(182,54,4,'2022-01-11 00:00:00','2021-12-23 00:00:00'),(183,34,15,'2021-06-04 00:00:00','2021-07-02 00:00:00'),(184,75,18,'2021-06-07 00:00:00','2021-08-05 00:00:00'),(185,79,15,'2022-02-01 00:00:00','2021-09-29 00:00:00'),(186,57,19,'2022-02-27 00:00:00','2021-07-24 00:00:00'),(187,6,1,'2021-03-31 00:00:00','2021-07-30 00:00:00'),(188,69,8,'2021-09-24 00:00:00','2021-08-01 00:00:00'),(189,61,8,'2021-09-22 00:00:00','2021-12-26 00:00:00'),(190,69,4,'2021-06-19 00:00:00','2021-11-15 00:00:00'),(191,25,11,'2021-04-11 00:00:00','2021-09-28 00:00:00'),(192,61,3,'2021-05-02 00:00:00','2021-06-15 00:00:00'),(193,86,10,'2021-12-17 00:00:00','2022-01-22 00:00:00'),(194,73,12,'2021-12-26 00:00:00','2021-04-17 00:00:00'),(195,34,24,'2021-03-30 00:00:00','2021-07-11 00:00:00'),(196,83,4,'2021-09-26 00:00:00','2021-05-17 00:00:00'),(197,14,2,'2021-03-25 00:00:00','2022-02-18 00:00:00'),(198,15,10,'2022-01-18 00:00:00','2022-01-18 00:00:00'),(199,54,8,'2021-07-15 00:00:00','2021-06-02 00:00:00'),(200,29,17,'2021-11-05 00:00:00','2022-02-06 00:00:00');
/*!40000 ALTER TABLE `facility_hmos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_services`
--

DROP TABLE IF EXISTS `facility_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_services`
--

LOCK TABLES `facility_services` WRITE;
/*!40000 ALTER TABLE `facility_services` DISABLE KEYS */;
INSERT INTO `facility_services` VALUES (1,16,1,'2021-07-13 00:00:00','2021-07-28 00:00:00'),(2,19,32,'2021-04-09 00:00:00','2021-10-22 00:00:00'),(3,16,29,'2021-07-16 00:00:00','2021-07-31 00:00:00'),(4,91,31,'2021-07-28 00:00:00','2021-04-02 00:00:00'),(5,42,16,'2021-08-13 00:00:00','2021-10-19 00:00:00'),(6,50,21,'2021-11-21 00:00:00','2021-11-04 00:00:00'),(7,81,3,'2021-09-21 00:00:00','2021-04-28 00:00:00'),(8,33,9,'2021-09-19 00:00:00','2022-03-21 00:00:00'),(9,3,28,'2021-04-10 00:00:00','2022-02-13 00:00:00'),(10,69,7,'2021-04-03 00:00:00','2021-07-05 00:00:00'),(11,94,38,'2021-04-22 00:00:00','2021-10-29 00:00:00'),(12,88,1,'2021-03-30 00:00:00','2021-07-24 00:00:00'),(13,67,22,'2021-09-19 00:00:00','2021-12-11 00:00:00'),(14,92,19,'2022-02-07 00:00:00','2021-10-09 00:00:00'),(15,31,25,'2021-05-17 00:00:00','2021-06-19 00:00:00'),(16,18,10,'2021-10-13 00:00:00','2021-03-26 00:00:00'),(17,1,26,'2021-10-16 00:00:00','2021-05-21 00:00:00'),(18,15,35,'2022-02-20 00:00:00','2021-12-28 00:00:00'),(19,59,31,'2021-11-17 00:00:00','2021-05-06 00:00:00'),(20,48,36,'2021-08-17 00:00:00','2022-03-07 00:00:00'),(21,79,27,'2021-09-15 00:00:00','2021-09-10 00:00:00'),(22,25,6,'2021-05-05 00:00:00','2022-02-13 00:00:00'),(23,12,12,'2022-01-29 00:00:00','2021-08-12 00:00:00'),(24,1,21,'2021-07-04 00:00:00','2022-01-26 00:00:00'),(25,40,34,'2021-08-14 00:00:00','2022-02-13 00:00:00'),(26,48,6,'2021-08-18 00:00:00','2021-12-31 00:00:00'),(27,86,3,'2022-02-19 00:00:00','2021-06-24 00:00:00'),(28,53,17,'2021-06-08 00:00:00','2021-12-28 00:00:00'),(29,74,34,'2021-09-16 00:00:00','2021-05-13 00:00:00'),(30,75,32,'2021-07-13 00:00:00','2021-05-30 00:00:00'),(31,26,24,'2021-09-03 00:00:00','2021-10-13 00:00:00'),(32,4,21,'2021-08-02 00:00:00','2021-12-09 00:00:00'),(33,3,3,'2021-11-09 00:00:00','2021-09-14 00:00:00'),(34,23,30,'2021-11-09 00:00:00','2021-08-25 00:00:00'),(35,38,25,'2021-04-13 00:00:00','2022-01-12 00:00:00'),(36,48,33,'2021-06-17 00:00:00','2021-04-13 00:00:00'),(37,57,15,'2021-04-11 00:00:00','2022-03-12 00:00:00'),(38,46,22,'2021-09-15 00:00:00','2021-10-12 00:00:00'),(39,35,2,'2022-02-23 00:00:00','2021-11-12 00:00:00'),(40,16,17,'2022-03-08 00:00:00','2021-06-08 00:00:00'),(41,50,16,'2021-12-09 00:00:00','2021-03-28 00:00:00'),(42,96,19,'2022-02-19 00:00:00','2021-09-05 00:00:00'),(43,17,6,'2022-03-05 00:00:00','2021-10-11 00:00:00'),(44,86,32,'2021-07-29 00:00:00','2021-11-12 00:00:00'),(45,44,16,'2021-04-21 00:00:00','2022-02-18 00:00:00'),(46,41,30,'2021-10-25 00:00:00','2021-05-13 00:00:00'),(47,95,17,'2021-08-14 00:00:00','2021-10-22 00:00:00'),(48,41,14,'2021-04-01 00:00:00','2021-05-16 00:00:00'),(49,75,5,'2021-05-26 00:00:00','2021-05-06 00:00:00'),(50,15,38,'2022-03-09 00:00:00','2022-02-13 00:00:00'),(51,98,25,'2021-12-18 00:00:00','2021-07-23 00:00:00'),(52,5,15,'2021-12-27 00:00:00','2021-11-16 00:00:00'),(53,37,6,'2021-06-02 00:00:00','2022-03-06 00:00:00'),(54,8,27,'2022-02-27 00:00:00','2022-01-25 00:00:00'),(55,80,14,'2021-04-02 00:00:00','2021-09-09 00:00:00'),(56,71,19,'2021-06-09 00:00:00','2021-10-23 00:00:00'),(57,53,1,'2021-04-28 00:00:00','2022-02-09 00:00:00'),(58,89,6,'2022-02-15 00:00:00','2021-12-22 00:00:00'),(59,73,5,'2021-10-22 00:00:00','2021-10-11 00:00:00'),(60,71,38,'2021-09-29 00:00:00','2021-03-28 00:00:00'),(61,85,33,'2021-10-23 00:00:00','2022-01-31 00:00:00'),(62,88,32,'2021-11-18 00:00:00','2021-04-05 00:00:00'),(63,76,3,'2021-05-23 00:00:00','2021-10-26 00:00:00'),(64,75,29,'2021-10-08 00:00:00','2022-02-16 00:00:00'),(65,83,25,'2022-01-16 00:00:00','2021-10-22 00:00:00'),(66,49,14,'2021-11-08 00:00:00','2022-01-29 00:00:00'),(67,53,5,'2021-12-07 00:00:00','2021-06-09 00:00:00'),(68,15,23,'2022-03-21 00:00:00','2021-11-24 00:00:00'),(69,17,32,'2021-04-15 00:00:00','2021-12-19 00:00:00'),(70,52,5,'2021-04-27 00:00:00','2022-01-05 00:00:00'),(71,62,9,'2022-03-12 00:00:00','2022-03-23 00:00:00'),(72,84,26,'2021-08-31 00:00:00','2021-07-14 00:00:00'),(73,28,8,'2021-07-01 00:00:00','2021-04-15 00:00:00'),(74,99,26,'2022-03-14 00:00:00','2021-07-03 00:00:00'),(75,66,28,'2021-07-18 00:00:00','2021-09-19 00:00:00'),(76,31,35,'2021-08-11 00:00:00','2022-01-14 00:00:00'),(77,87,24,'2021-06-26 00:00:00','2021-10-11 00:00:00'),(78,5,28,'2021-07-22 00:00:00','2022-03-18 00:00:00'),(79,31,6,'2021-09-08 00:00:00','2022-03-22 00:00:00'),(80,28,26,'2021-05-24 00:00:00','2021-10-13 00:00:00'),(81,50,20,'2021-05-25 00:00:00','2021-11-14 00:00:00'),(82,88,28,'2021-06-02 00:00:00','2021-07-20 00:00:00'),(83,74,29,'2022-03-15 00:00:00','2021-08-05 00:00:00'),(84,59,23,'2022-03-22 00:00:00','2021-11-25 00:00:00'),(85,65,7,'2022-02-24 00:00:00','2021-04-18 00:00:00'),(86,1,6,'2021-10-04 00:00:00','2021-05-28 00:00:00'),(87,63,28,'2021-05-30 00:00:00','2021-06-29 00:00:00'),(88,21,38,'2022-01-22 00:00:00','2022-03-18 00:00:00'),(89,45,37,'2021-11-25 00:00:00','2021-05-25 00:00:00'),(90,26,27,'2022-02-13 00:00:00','2021-10-31 00:00:00'),(91,64,7,'2021-10-07 00:00:00','2021-09-02 00:00:00'),(92,84,25,'2021-12-16 00:00:00','2021-07-24 00:00:00'),(93,2,24,'2021-06-26 00:00:00','2021-06-13 00:00:00'),(94,24,17,'2021-11-24 00:00:00','2021-11-02 00:00:00'),(95,53,1,'2021-10-13 00:00:00','2021-04-07 00:00:00'),(96,10,25,'2021-07-17 00:00:00','2022-03-14 00:00:00'),(97,92,20,'2021-05-04 00:00:00','2021-11-12 00:00:00'),(98,28,30,'2021-07-04 00:00:00','2021-09-23 00:00:00'),(99,6,35,'2021-03-29 00:00:00','2021-05-09 00:00:00'),(100,66,1,'2021-07-20 00:00:00','2022-02-04 00:00:00');
/*!40000 ALTER TABLE `facility_services` ENABLE KEYS */;
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
-- Table structure for table `hmos`
--

DROP TABLE IF EXISTS `hmos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hmos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hmos`
--

LOCK TABLES `hmos` WRITE;
/*!40000 ALTER TABLE `hmos` DISABLE KEYS */;
INSERT INTO `hmos` VALUES (1,'MediCard','2022-03-24 10:22:56','2022-03-24 10:22:56'),(2,'COCOLIFE Healthcare','2022-03-24 10:22:56','2022-03-24 10:22:56'),(3,'Etiqa','2022-03-24 10:22:56','2022-03-24 10:22:56'),(4,'Eastwest Healthcare','2022-03-24 10:22:56','2022-03-24 10:22:56'),(5,'HMI','2022-03-24 10:22:56','2022-03-24 10:22:56'),(6,'Pacific Cross','2022-03-24 10:22:56','2022-03-24 10:22:56'),(7,'Insular Health Care','2022-03-24 10:22:56','2022-03-24 10:22:56'),(8,'MedAsia','2022-03-24 10:22:56','2022-03-24 10:22:56'),(9,'AsianCare','2022-03-24 10:22:56','2022-03-24 10:22:56'),(10,'Insular Life','2022-03-24 10:22:56','2022-03-24 10:22:56'),(11,'Medicare Plus','2022-03-24 10:22:56','2022-03-24 10:22:56'),(12,'FortuneCare','2022-03-24 10:22:56','2022-03-24 10:22:56'),(13,'Aventus','2022-03-24 10:22:56','2022-03-24 10:22:56'),(14,'MEDOCare','2022-03-24 10:22:56','2022-03-24 10:22:56'),(15,'Carewell','2022-03-24 10:22:56','2022-03-24 10:22:56');
/*!40000 ALTER TABLE `hmos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (66,'2014_10_12_000000_create_users_table',1),(67,'2014_10_12_100000_create_password_resets_table',1),(68,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(69,'2019_08_19_000000_create_failed_jobs_table',1),(70,'2019_12_14_000001_create_personal_access_tokens_table',1),(71,'2022_03_24_054619_create_sessions_table',1),(72,'2022_03_24_071413_add_username_users_table',1),(73,'2022_03_24_071510_create_facilities_table',1),(74,'2022_03_24_071528_create_equipments_table',1),(75,'2022_03_24_071543_create_doctors_table',1),(76,'2022_03_24_071605_create_doctor_specialization_table',1),(77,'2022_03_24_071620_create_specializations_table',1),(78,'2022_03_24_073119_create_doctor_facilities_table',1),(79,'2022_03_24_073137_create_appointments_table',1),(80,'2022_03_24_073308_create_permission_tables',1),(81,'2022_03_24_073531_create_patients_table',1),(82,'2022_03_24_083403_create_hmos_table',1),(83,'2022_03_24_083444_create_facility_hmos_table',1),(84,'2022_03_24_083503_create_services_table',1),(85,'2022_03_24_083523_create_facility_service_table',1),(86,'2022_03_24_101205_create_facility_equipment_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App\\Models\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super admin','web','2022-03-24 10:22:05','2022-03-24 10:22:05'),(2,'doctor','web','2022-03-24 10:22:05','2022-03-24 10:22:05'),(3,'patient','web','2022-03-24 10:22:05','2022-03-24 10:22:05'),(4,'staff','web','2022-03-24 10:22:05','2022-03-24 10:22:05');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Acne & Eczema','2022-03-24 10:22:40','2022-03-24 10:22:40'),(2,'Allergic Rhinitis','2022-03-24 10:22:40','2022-03-24 10:22:40'),(3,'Arthritis & Gout','2022-03-24 10:22:40','2022-03-24 10:22:40'),(4,'Back Pain','2022-03-24 10:22:40','2022-03-24 10:22:40'),(5,'Cancer','2022-03-24 10:22:40','2022-03-24 10:22:40'),(6,'Colds & Flu','2022-03-24 10:22:40','2022-03-24 10:22:40'),(7,'Depression, Anxiety & Mental Health','2022-03-24 10:22:40','2022-03-24 10:22:40'),(8,'Diabetes','2022-03-24 10:22:40','2022-03-24 10:22:40'),(9,'Diarrhea, Hyperacidity & Hemorrhoids','2022-03-24 10:22:40','2022-03-24 10:22:40'),(10,'Headaches & Migraine','2022-03-24 10:22:40','2022-03-24 10:22:40'),(11,'Heart Disease','2022-03-24 10:22:40','2022-03-24 10:22:40'),(12,'High Blood Pressure (Hypertension)','2022-03-24 10:22:40','2022-03-24 10:22:40'),(13,'High Cholesterol & Dyslipidemia','2022-03-24 10:22:40','2022-03-24 10:22:40'),(14,'Hyperthyroidism & Hypothyroidism','2022-03-24 10:22:40','2022-03-24 10:22:40'),(15,'Osteoporosis','2022-03-24 10:22:40','2022-03-24 10:22:40'),(16,'PCOS (Polycystic Ovary Syndrome) & Menopause','2022-03-24 10:22:40','2022-03-24 10:22:40'),(17,'Pneumonia, Bronchitis & TB','2022-03-24 10:22:40','2022-03-24 10:22:40'),(18,'Pregnancy','2022-03-24 10:22:40','2022-03-24 10:22:40'),(19,'Sore Throat & Tonsilitis','2022-03-24 10:22:40','2022-03-24 10:22:40'),(20,'UTI (Urinary Tract Infection)','2022-03-24 10:22:40','2022-03-24 10:22:40'),(21,'Alzheimer?s, Parkinson?s & Dementia','2022-03-24 10:22:40','2022-03-24 10:22:40'),(22,'Breast Problems','2022-03-24 10:22:40','2022-03-24 10:22:40'),(23,'Cataract, Glaucoma & Macular Degeneration','2022-03-24 10:22:40','2022-03-24 10:22:40'),(24,'Erectile Dysfunction','2022-03-24 10:22:40','2022-03-24 10:22:40'),(25,'Hearing Loss','2022-03-24 10:22:40','2022-03-24 10:22:40'),(26,'Hepatitis, Fatty Liver & Cirrhosis','2022-03-24 10:22:40','2022-03-24 10:22:40'),(27,'HIV/AIDS','2022-03-24 10:22:40','2022-03-24 10:22:40'),(28,'Insomnia & Sleep Apnea','2022-03-24 10:22:40','2022-03-24 10:22:40'),(29,'Kidney Stones','2022-03-24 10:22:40','2022-03-24 10:22:40'),(30,'Obesity & Weight Management','2022-03-24 10:22:40','2022-03-24 10:22:40'),(31,'Penile Infections & STIs/STDs','2022-03-24 10:22:40','2022-03-24 10:22:40'),(32,'Vaginal Infections & STIs/STDs','2022-03-24 10:22:40','2022-03-24 10:22:40');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('X6G0XwEGXu0XPvPFB9EAczxUaTrc1dtPyvsLqa3q',NULL,'192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczAySlRNRXNidHNLWHdZT05aM2VhZDFDaXZCTzE5VXVrOGluc0lKNiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL3NhbmRvYy5sb2MvZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9zYW5kb2MubG9jL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1648117306);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specializations`
--

DROP TABLE IF EXISTS `specializations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specializations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specializations`
--

LOCK TABLES `specializations` WRITE;
/*!40000 ALTER TABLE `specializations` DISABLE KEYS */;
INSERT INTO `specializations` VALUES (1,'Primary Care & General Medicine','2022-03-24 10:22:32','2022-03-24 10:22:32'),(2,'OB-GYNs & Womens Health','2022-03-24 10:22:32','2022-03-24 10:22:32'),(3,'Pediatrics','2022-03-24 10:22:32','2022-03-24 10:22:32'),(4,'Diabetes & Endocrinology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(5,'Eye & Vision Doctor','2022-03-24 10:22:32','2022-03-24 10:22:32'),(6,'Heart & Cardiology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(7,'Skin & Dermatology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(8,'Lungs, Chest & Pulmonology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(9,'Stomach, Digestion & Gastroenterology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(10,'Ears, Nose & Throat','2022-03-24 10:22:32','2022-03-24 10:22:32'),(11,'Kidney & Urine','2022-03-24 10:22:32','2022-03-24 10:22:32'),(12,'Brain & Nerves','2022-03-24 10:22:32','2022-03-24 10:22:32'),(13,'Surgery','2022-03-24 10:22:32','2022-03-24 10:22:32'),(14,'Cancer','2022-03-24 10:22:32','2022-03-24 10:22:32'),(15,'Mental Health','2022-03-24 10:22:32','2022-03-24 10:22:32'),(16,'Allergy & Immune System','2022-03-24 10:22:32','2022-03-24 10:22:32'),(17,'Infectious Disease','2022-03-24 10:22:32','2022-03-24 10:22:32'),(18,'Sleep Doctor','2022-03-24 10:22:32','2022-03-24 10:22:32'),(19,'Pain Medicine','2022-03-24 10:22:32','2022-03-24 10:22:32'),(20,'Sports & Rehab','2022-03-24 10:22:32','2022-03-24 10:22:32'),(21,'Maternal, Fetal & Newborn Care','2022-03-24 10:22:32','2022-03-24 10:22:32'),(22,'Aesthetics','2022-03-24 10:22:32','2022-03-24 10:22:32'),(23,'Blood & Hematology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(24,'Hepatology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(25,'Foot, Ankle & Lower Leg','2022-03-24 10:22:32','2022-03-24 10:22:32'),(26,'Joints, Muscles & Bones','2022-03-24 10:22:32','2022-03-24 10:22:32'),(27,'Geriatric','2022-03-24 10:22:32','2022-03-24 10:22:32'),(28,'Proctology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(29,'Hearing','2022-03-24 10:22:32','2022-03-24 10:22:32'),(30,'Hospice & Palliative Care','2022-03-24 10:22:32','2022-03-24 10:22:32'),(31,'Anesthesiologists','2022-03-24 10:22:32','2022-03-24 10:22:32'),(32,'Imaging & Radiology','2022-03-24 10:22:32','2022-03-24 10:22:32'),(33,'Poisons & Toxins','2022-03-24 10:22:32','2022-03-24 10:22:32'),(34,'Diet & Nutrition','2022-03-24 10:22:32','2022-03-24 10:22:32'),(35,'Lifestyle','2022-03-24 10:22:32','2022-03-24 10:22:32'),(36,'Dental Care','2022-03-24 10:22:32','2022-03-24 10:22:32'),(37,'Alternative Medicine','2022-03-24 10:22:32','2022-03-24 10:22:32'),(38,'Veterinary','2022-03-24 10:22:32','2022-03-24 10:22:32');
/*!40000 ALTER TABLE `specializations` ENABLE KEYS */;
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Doctor','doctor','doctor@sandoc.loc','2022-03-24 10:22:05','$2y$10$APsiaUkYez4yNTHajnAVLO8YscHgbPAAiQpVtSm.LXdoftWRrydBW',NULL,NULL,'mteUNC0aZj',NULL,NULL,'2022-03-24 10:22:05','2022-03-24 10:22:05');
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

-- Dump completed on 2022-03-24 14:03:59
