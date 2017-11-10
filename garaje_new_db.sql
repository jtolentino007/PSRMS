CREATE DATABASE  IF NOT EXISTS `garaje_new_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `garaje_new_database`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: garaje_new_database
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

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
-- Table structure for table `approval_status`
--

DROP TABLE IF EXISTS `approval_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_status` (
  `approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_status` varchar(100) DEFAULT '',
  `approval_description` varchar(555) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`approval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_status`
--

LOCK TABLES `approval_status` WRITE;
/*!40000 ALTER TABLE `approval_status` DISABLE KEYS */;
INSERT INTO `approval_status` VALUES (1,'Approved','','','\0'),(2,'Pending','','','\0');
/*!40000 ALTER TABLE `approval_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_code` varchar(100) DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `batch_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'B-20171017-1','06:57:57',NULL,'2017-10-17',1),(2,'B-20171017-2','06:59:43',NULL,'2017-10-17',3),(3,'B-20171017-3','07:00:49',NULL,'2017-10-17',1),(4,'B-20171017-4','07:03:34',NULL,'2017-10-17',3),(5,'B-20171017-5','08:49:49',NULL,'2017-10-17',1),(6,'B-20171017-6','08:53:18',NULL,'2017-10-17',3),(7,'B-20171017-7','09:01:52',NULL,'2017-10-17',1),(8,'B-20171017-8','09:09:57',NULL,'2017-10-17',3),(9,'B-20171017-9','09:19:33',NULL,'2017-10-17',1),(10,'B-20171017-10','09:26:59','01:50:48','2017-10-17',3),(11,'B-20171018-11','01:51:53',NULL,'2017-10-18',3),(12,'B-20171018-12','02:28:05',NULL,'2017-10-18',1),(13,'B-20171018-13','05:09:58',NULL,'2017-10-18',3),(14,'B-20171018-14','07:24:45',NULL,'2017-10-18',1),(15,'B-20171018-15','07:27:23',NULL,'2017-10-18',3),(16,'B-20171018-16','08:14:47',NULL,'2017-10-18',1),(17,'B-20171018-17','08:19:41',NULL,'2017-10-18',3),(18,'B-20171018-18','11:01:42',NULL,'2017-10-18',1),(19,'B-20171018-19','11:13:06','02:06:44','2017-10-18',3),(20,'B-20171019-20','02:08:23',NULL,'2017-10-19',1),(21,'B-20171019-21','03:07:19',NULL,'2017-10-19',1),(22,'B-20171019-22','05:57:05',NULL,'2017-10-19',1),(23,'B-20171019-23','05:59:02',NULL,'2017-10-19',1),(24,'B-20171019-24','06:02:28','01:49:15','2017-10-19',4),(25,'B-20171020-25','04:24:23',NULL,'2017-10-20',1),(26,'B-20171020-26','04:42:21',NULL,'2017-10-20',1),(27,'B-20171020-27','05:14:36',NULL,'2017-10-20',1),(28,'B-20171020-28','06:03:40',NULL,'2017-10-20',3),(29,'B-20171020-29','06:08:11',NULL,'2017-10-20',1),(30,'B-20171020-30','06:09:24',NULL,'2017-10-20',1),(31,'B-20171020-31','06:10:36',NULL,'2017-10-20',3),(32,'B-20171020-32','07:05:22',NULL,'2017-10-20',1),(33,'B-20171020-33','07:05:56',NULL,'2017-10-20',3),(34,'B-20171020-34','08:12:22',NULL,'2017-10-20',1),(35,'B-20171020-35','08:13:54','02:26:55','2017-10-20',3),(36,'B-20171021-36','04:09:54',NULL,'2017-10-21',1),(37,'B-20171021-37','06:56:09',NULL,'2017-10-21',3),(38,'B-20171021-38','08:57:05',NULL,'2017-10-21',1),(39,'B-20171021-39','08:57:47',NULL,'2017-10-21',3),(40,'B-20171021-40','10:32:44',NULL,'2017-10-21',1),(41,'B-20171021-41','10:34:53',NULL,'2017-10-21',3),(42,'B-20171021-42','10:55:02',NULL,'2017-10-21',1),(43,'B-20171021-43','10:56:34','01:57:13','2017-10-21',3),(44,'B-20171022-44','03:46:52',NULL,'2017-10-22',1),(45,'B-20171022-45','05:36:40',NULL,'2017-10-22',3),(46,'B-20171022-46','08:44:50',NULL,'2017-10-22',1),(47,'B-20171022-47','08:45:52',NULL,'2017-10-22',1),(48,'B-20171022-48','08:46:03',NULL,'2017-10-22',1),(49,'B-20171022-49','08:46:19',NULL,'2017-10-22',1),(50,'B-20171022-50','08:51:08','09:48:00','2017-10-22',1),(51,'B-20171023-51','09:15:18',NULL,'2017-10-23',1),(52,'B-20171023-52','04:41:24',NULL,'2017-10-23',1),(53,'B-20171024-53','09:22:01',NULL,'2017-10-24',1),(54,'B-20171024-54','01:18:05',NULL,'2017-10-24',1),(55,'B-20171024-55','08:05:26','08:06:02','2017-10-24',1),(56,'B-20171024-56','08:09:53','08:20:15','2017-10-24',1),(57,'B-20171024-57','08:21:11',NULL,'2017-10-24',1),(58,'B-20171025-58','09:14:25',NULL,'2017-10-25',1),(59,'B-20171025-59','02:38:31',NULL,'2017-10-25',1),(60,'B-20171025-60','02:41:34',NULL,'2017-10-25',1),(61,'B-20171025-61','09:26:37','09:28:53','2017-10-25',1),(62,'B-20171026-62','01:23:40','01:47:20','2017-10-26',1),(63,'B-20171026-63','01:58:57',NULL,'2017-10-26',1),(64,'B-20171026-64','05:53:23',NULL,'2017-10-26',1),(65,'B-20171027-65','08:34:05',NULL,'2017-10-27',1),(66,'B-20171030-66','09:41:58',NULL,'2017-10-30',1),(67,'B-20171030-67','10:34:36',NULL,'2017-10-30',1),(69,'B-20171030-69','01:56:30',NULL,'2017-10-30',1),(70,'B-20171030-70','07:22:34',NULL,'2017-10-30',1),(71,'B-20171102-71','09:53:54',NULL,'2017-11-02',1),(72,'B-20171102-72','02:10:43',NULL,'2017-11-02',1),(73,'B-20171103-73','09:07:51',NULL,'2017-11-03',1),(74,'B-20171103-74','09:29:41',NULL,'2017-11-03',1),(75,'B-20171103-75','12:57:49',NULL,'2017-11-03',1),(76,'B-20171103-76','08:47:57',NULL,'2017-11-03',1),(77,'B-20171104-77','09:58:58',NULL,'2017-11-04',1),(78,'B-20171106-78','09:27:48',NULL,'2017-11-06',1),(79,'B-20171106-79','09:28:52',NULL,'2017-11-06',1),(80,'B-20171106-80','09:45:52',NULL,'2017-11-06',1),(81,'B-20171106-81','12:36:48',NULL,'2017-11-06',1),(82,'B-20171106-82','12:38:42',NULL,'2017-11-06',1),(83,'B-20171106-83','12:42:12',NULL,'2017-11-06',1),(84,'B-20171106-84','09:54:27',NULL,'2017-11-06',1),(85,'B-20171107-85','09:27:40',NULL,'2017-11-07',1),(86,'B-20171107-86','12:52:53',NULL,'2017-11-07',1),(87,'B-20171107-87','02:24:37',NULL,'2017-11-07',1),(88,'B-20171107-88','02:56:49',NULL,'2017-11-07',1),(89,'B-20171108-89','09:40:39',NULL,'2017-11-08',1),(90,'B-20171109-90','09:29:28',NULL,'2017-11-09',1),(91,'B-20171109-91','10:27:56',NULL,'2017-11-09',1),(92,'B-20171109-92','04:00:41',NULL,'2017-11-09',1),(93,'B-20171110-93','09:30:34',NULL,'2017-11-10',1);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `brand_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_code` bigint(20) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,NULL,'NO BRAND','',NULL,'0000-00-00 00:00:00','\0','');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `card_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_code` bigint(20) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,'STARTER','A',NULL,'0000-00-00 00:00:00','\0',''),(2,NULL,'SOUP','B',NULL,'0000-00-00 00:00:00','\0',''),(3,NULL,'VEGETABLE','D',NULL,'0000-00-00 00:00:00','\0',''),(4,NULL,'CHICKEN','E',NULL,'0000-00-00 00:00:00','\0',''),(5,NULL,'PORK','F',NULL,'0000-00-00 00:00:00','\0',''),(6,NULL,'BEEF','G',NULL,'0000-00-00 00:00:00','\0',''),(7,NULL,'GRILLED','H',NULL,'0000-00-00 00:00:00','\0',''),(8,NULL,'BARBEQUE','I',NULL,'0000-00-00 00:00:00','\0',''),(9,NULL,'SEAFOOD','J',NULL,'0000-00-00 00:00:00','\0',''),(10,NULL,'RICE','K',NULL,'0000-00-00 00:00:00','\0',''),(11,NULL,'SALAD','L',NULL,'0000-00-00 00:00:00','\0',''),(12,NULL,'STEAK','M',NULL,'0000-00-00 00:00:00','\0',''),(13,NULL,'INASAL AND SIZZLERS WITH JAVA RICE','N',NULL,'0000-00-00 00:00:00','\0',''),(14,NULL,'PLATTERS','O',NULL,'0000-00-00 00:00:00','\0',''),(15,NULL,'NOODLES','P',NULL,'0000-00-00 00:00:00','\0',''),(16,NULL,'SANDWICHES','Q',NULL,'0000-00-00 00:00:00','\0',''),(17,NULL,'SILOGS','R',NULL,'0000-00-00 00:00:00','\0',''),(18,NULL,'SWEET','S',NULL,'0000-00-00 00:00:00','\0',''),(19,NULL,'VIAND','',NULL,'0000-00-00 00:00:00','',''),(20,NULL,'KINILAW','C',NULL,'0000-00-00 00:00:00','\0',''),(21,NULL,'DRINKS','Z',NULL,'0000-00-00 00:00:00','\0',''),(22,NULL,'BEERS/ALCOPOP/PREMIUM BEERS','DA',NULL,'0000-00-00 00:00:00','\0',''),(23,NULL,'JUICES / SODA','DB',NULL,'0000-00-00 00:00:00','\0',''),(24,NULL,'SHAKES','DC',NULL,'0000-00-00 00:00:00','\0',''),(25,NULL,'COCKTAILS','DD',NULL,'0000-00-00 00:00:00','\0',''),(26,NULL,'GARAJE BUCKET','DE',NULL,'0000-00-00 00:00:00','\0',''),(27,NULL,'LIQUOR (PER SHOT)','DF',NULL,'0000-00-00 00:00:00','\0',''),(28,NULL,'LIQUOR (PER BOTTLE)','DG',NULL,'0000-00-00 00:00:00','\0',''),(29,NULL,'SHOOTERS','DH',NULL,'0000-00-00 00:00:00','\0',''),(30,NULL,'CIGARETTES','DI',NULL,'0000-00-00 00:00:00','\0','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_info`
--

DROP TABLE IF EXISTS `company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_info` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(555) DEFAULT '',
  `company_address` varchar(755) DEFAULT '',
  `email_address` varchar(155) DEFAULT '',
  `mobile_no` varchar(125) DEFAULT '',
  `landline` varchar(125) DEFAULT '',
  `tin_no` varchar(55) DEFAULT NULL,
  `tax_type_id` int(11) DEFAULT '0',
  `registered_to` varchar(555) DEFAULT '',
  `terminal` varchar(3) NOT NULL,
  `logo_path` varchar(555) DEFAULT '',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_info`
--

LOCK TABLES `company_info` WRITE;
/*!40000 ALTER TABLE `company_info` DISABLE KEYS */;
INSERT INTO `company_info` VALUES (1,'GARAJE 88 GRILL','ZEPPELIN ST. HENSONVILLE BRGY. MALABANIAS ANGELES CITY','','','',NULL,0,'','','');
/*!40000 ALTER TABLE `company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_photos`
--

DROP TABLE IF EXISTS `customer_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `photo_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_photos`
--

LOCK TABLES `customer_photos` WRITE;
/*!40000 ALTER TABLE `customer_photos` DISABLE KEYS */;
INSERT INTO `customer_photos` VALUES (1,1,NULL),(2,2,NULL);
/*!40000 ALTER TABLE `customer_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(125) DEFAULT '',
  `customer_name` varchar(555) DEFAULT '',
  `address` varchar(555) DEFAULT '',
  `email_address` varchar(100) DEFAULT '',
  `landline` varchar(100) DEFAULT '',
  `mobile_no` varchar(100) DEFAULT '',
  `photo_path` varchar(500) DEFAULT '',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'','WALK-IN',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','\0',''),(2,'','rose',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','\0','');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_invoice`
--

DROP TABLE IF EXISTS `delivery_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_invoice` (
  `dr_invoice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dr_invoice_no` varchar(75) DEFAULT '',
  `supplier_id` int(11) DEFAULT '0',
  `remarks` varchar(555) DEFAULT '',
  `total_discount` decimal(20,2) DEFAULT '0.00',
  `total_before_tax` decimal(20,2) DEFAULT '0.00',
  `total_tax_amount` decimal(20,2) DEFAULT '0.00',
  `total_after_tax` decimal(20,2) DEFAULT '0.00',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_received` date DEFAULT '0000-00-00',
  `date_delivered` date DEFAULT '0000-00-00',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00',
  `posted_by_user` int(11) DEFAULT '0',
  `modified_by_user` int(11) DEFAULT '0',
  `deleted_by_user` int(11) DEFAULT '0',
  PRIMARY KEY (`dr_invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_invoice`
--

LOCK TABLES `delivery_invoice` WRITE;
/*!40000 ALTER TABLE `delivery_invoice` DISABLE KEYS */;
INSERT INTO `delivery_invoice` VALUES (1,'A1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(2,'A1',1,'',0.00,0.00,0.00,0.00,'','','2017-10-19','0000-00-00','0000-00-00 00:00:00','2017-10-19 06:14:53','0000-00-00 00:00:00',1,0,0),(3,'A1',1,'',0.00,0.00,0.00,0.00,'','','2017-10-19','0000-00-00','0000-00-00 00:00:00','2017-10-19 06:14:50','0000-00-00 00:00:00',1,0,0),(4,'A2',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(5,'A3',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(6,'A4',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(7,'A5',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(8,'A6',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(9,'A9',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(10,'A10',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(11,'A14',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(12,'A19',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(13,'A20',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(14,'A21',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(15,'A24',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(16,'B1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(17,'B2',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(18,'B3',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(19,'B5',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(20,'B6',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(21,'E1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(22,'F1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(23,'G1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(24,'H1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(25,'I1',2,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(26,'J1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(27,'M1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(28,'N1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(29,'O1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0),(30,'P1',1,'',0.00,0.00,0.00,0.00,'','\0','2017-10-19','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,0);
/*!40000 ALTER TABLE `delivery_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_invoice_items`
--

DROP TABLE IF EXISTS `delivery_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_invoice_items` (
  `dr_invoice_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dr_invoice_id` bigint(20) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `unit_id` int(11) DEFAULT '0',
  `dr_qty` decimal(20,2) DEFAULT '0.00',
  `dr_discount` decimal(20,2) DEFAULT '0.00',
  `dr_price` decimal(20,2) DEFAULT '0.00',
  `dr_line_total_discount` decimal(20,2) DEFAULT '0.00',
  `dr_line_total_price` decimal(20,2) DEFAULT '0.00',
  `dr_tax_rate` decimal(20,2) DEFAULT '0.00',
  `dr_tax_amount` decimal(20,2) DEFAULT '0.00',
  `dr_non_tax_amount` decimal(20,2) DEFAULT '0.00',
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`dr_invoice_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_invoice_items`
--

LOCK TABLES `delivery_invoice_items` WRITE;
/*!40000 ALTER TABLE `delivery_invoice_items` DISABLE KEYS */;
INSERT INTO `delivery_invoice_items` VALUES (1,2,1,0,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(2,3,1,0,20.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(3,4,2,0,10.00,0.00,0.00,0.00,0.00,12.00,0.00,0.00,'\0'),(4,5,3,0,7.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(5,6,4,0,9.00,0.00,0.00,0.00,0.00,12.00,0.00,0.00,'\0'),(6,7,5,0,36.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(7,8,6,0,33.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(8,9,10,0,24.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(9,9,8,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(10,9,7,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(11,10,11,0,9.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(12,11,16,0,6.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(13,12,21,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(14,12,20,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(15,13,22,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(16,14,210,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(17,15,25,0,6.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(18,16,27,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(19,17,28,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(20,18,29,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(21,19,32,0,5.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(22,20,211,0,5.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(23,21,42,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(24,21,41,0,6.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(25,21,40,0,9.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(26,21,39,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(27,22,48,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(28,22,47,0,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(29,22,46,0,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(30,22,45,0,14.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(31,22,44,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(32,22,43,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(33,23,51,0,6.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(34,23,50,0,7.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(35,23,49,0,7.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(36,24,57,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(37,24,55,0,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(38,24,54,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(39,24,53,0,14.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(40,24,52,0,9.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(41,25,67,0,40.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(42,25,66,0,7.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(43,25,65,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(44,25,64,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(45,25,62,0,8.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(46,25,61,0,2.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(47,25,60,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(48,25,59,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(49,25,58,0,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(50,26,77,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(51,26,75,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(52,26,74,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(53,26,73,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(54,26,72,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(55,26,71,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(56,26,70,0,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(57,26,68,0,9.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(58,27,93,0,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(59,27,92,0,4.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(60,27,91,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(61,28,97,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(62,28,96,0,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(63,28,95,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(64,28,94,0,3.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(65,29,100,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(66,29,99,0,28.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(67,29,98,0,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(68,30,101,0,7.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(69,30,102,0,8.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(70,30,106,0,5.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(71,30,104,0,8.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0'),(72,30,103,0,9.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'\0');
/*!40000 ALTER TABLE `delivery_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `department_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_code` bigint(20) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `department_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `discount_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `discount_code` bigint(100) DEFAULT NULL,
  `discount_type` varchar(200) DEFAULT NULL,
  `discount_desc` varchar(200) DEFAULT NULL,
  `discount_percent` bigint(100) DEFAULT NULL,
  `discount_amount` bigint(100) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generics`
--

DROP TABLE IF EXISTS `generics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generics` (
  `generic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `generic_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`generic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generics`
--

LOCK TABLES `generics` WRITE;
/*!40000 ALTER TABLE `generics` DISABLE KEYS */;
/*!40000 ALTER TABLE `generics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftcards`
--

DROP TABLE IF EXISTS `giftcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcards` (
  `giftcard_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `giftcard_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`giftcard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcards`
--

LOCK TABLES `giftcards` WRITE;
/*!40000 ALTER TABLE `giftcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(100) NOT NULL,
  `ingredient_unit` int(11) NOT NULL,
  `ingredient_category_id` int(11) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'aaa',1,0,''),(2,'sss',1,0,''),(3,'dddsss',2,0,''),(4,'LEGS',1,2,'\0'),(5,'HAHAHA',0,0,''),(6,'AFAFAFA',0,0,''),(7,'WINGS',1,2,'\0'),(8,'TOMATO',4,4,'\0');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients_categories`
--

DROP TABLE IF EXISTS `ingredients_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients_categories` (
  `ingredient_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ingredient_category_name` varchar(50) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ingredient_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients_categories`
--

LOCK TABLES `ingredients_categories` WRITE;
/*!40000 ALTER TABLE `ingredients_categories` DISABLE KEYS */;
INSERT INTO `ingredients_categories` VALUES (1,'PORK',0),(2,'CHICKEN',0),(3,'BEEF',0),(4,'VEGETABLE',0),(5,'CONDIMENTS',0);
/*!40000 ALTER TABLE `ingredients_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `inventory_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventory_code` bigint(20) DEFAULT NULL,
  `inventory_name` varchar(255) DEFAULT NULL,
  `inventory_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuance`
--

DROP TABLE IF EXISTS `issuance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuance` (
  `issuance_id` int(11) NOT NULL AUTO_INCREMENT,
  `issuance_no` varchar(75) DEFAULT '',
  `supplier_id` int(11) DEFAULT '0',
  `remarks` varchar(555) DEFAULT '',
  `total_discount` decimal(20,2) DEFAULT '0.00',
  `total_before_tax` decimal(20,2) DEFAULT '0.00',
  `total_tax_amount` decimal(20,2) DEFAULT '0.00',
  `total_after_tax` decimal(20,2) DEFAULT '0.00',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_issued` date DEFAULT '0000-00-00',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00',
  `posted_by_user` int(11) DEFAULT '0',
  `modified_by_user` int(11) DEFAULT '0',
  `deleted_by_user` int(11) DEFAULT '0',
  PRIMARY KEY (`issuance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuance`
--

LOCK TABLES `issuance` WRITE;
/*!40000 ALTER TABLE `issuance` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuance_items`
--

DROP TABLE IF EXISTS `issuance_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuance_items` (
  `issuance_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `issuance_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `unit_id` int(11) DEFAULT '0',
  `is_qty` decimal(20,2) DEFAULT '0.00',
  `is_discount` decimal(20,2) DEFAULT '0.00',
  `is_price` decimal(20,2) DEFAULT '0.00',
  `is_line_total_discount` decimal(20,2) DEFAULT '0.00',
  `is_line_total_price` decimal(20,2) DEFAULT '0.00',
  `is_tax_rate` decimal(20,2) DEFAULT '0.00',
  `is_tax_amount` decimal(20,2) DEFAULT '0.00',
  `is_non_tax_amount` decimal(20,2) DEFAULT '0.00',
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`issuance_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuance_items`
--

LOCK TABLES `issuance_items` WRITE;
/*!40000 ALTER TABLE `issuance_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuance_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note1` varchar(755) DEFAULT '',
  `note2` varchar(755) DEFAULT '',
  `note3` varchar(755) DEFAULT '',
  `note4` varchar(755) DEFAULT '',
  `note5` varchar(755) DEFAULT '',
  `note6` varchar(755) DEFAULT '',
  `note7` varchar(755) DEFAULT '',
  `note8` varchar(755) DEFAULT '',
  `note9` varchar(755) DEFAULT '',
  `note10` varchar(755) DEFAULT '',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Hensonville, Angeles City','THIS INVOICE /RECEIPT SHALL BE VALID FOR FIVE (5) YEARS FROM THE DATE OF THE PERMIT TO USE','','','','','','','','');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status` varchar(75) DEFAULT '',
  `order_description` varchar(555) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Open','','','\0'),(2,'Closed','','','\0'),(3,'Partially received','','','\0');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tables`
--

DROP TABLE IF EXISTS `order_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_tables` (
  `order_table_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pos_invoice_id` bigint(20) DEFAULT '0',
  `table_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`order_table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=458 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tables`
--

LOCK TABLES `order_tables` WRITE;
/*!40000 ALTER TABLE `order_tables` DISABLE KEYS */;
INSERT INTO `order_tables` VALUES (1,1,18),(2,2,10),(3,3,12),(4,4,18),(5,5,20),(6,6,21),(19,7,9),(14,8,13),(16,9,14),(12,10,18),(13,11,21),(17,12,17),(18,13,13),(20,14,15),(21,15,18),(22,16,12),(23,17,16),(24,18,15),(25,19,8),(26,20,13),(27,21,13),(38,22,15),(36,23,10),(33,24,1),(34,25,9),(35,26,18),(39,27,16),(40,28,19),(41,29,17),(42,30,14),(43,31,4),(44,32,13),(46,33,13),(47,34,18),(48,35,18),(52,36,14),(60,37,15),(53,38,12),(79,39,18),(56,40,14),(63,41,19),(72,42,9),(81,43,10),(92,44,11),(78,45,16),(80,46,21),(83,47,18),(93,48,21),(94,49,21),(110,51,14),(98,52,8),(99,53,8),(100,54,15),(104,55,3),(161,56,9),(106,57,16),(108,58,22),(109,59,10),(111,60,19),(112,61,21),(157,62,21),(114,63,18),(115,64,13),(120,65,11),(117,66,14),(121,69,3),(119,68,20),(122,70,30),(123,71,30),(124,72,2),(125,73,6),(138,74,23),(127,75,29),(128,76,4),(162,77,1),(144,78,5),(135,79,24),(132,80,18),(133,81,16),(145,82,25),(141,83,13),(143,84,15),(146,85,11),(148,86,2),(154,87,13),(151,88,28),(158,89,18),(164,90,14),(159,91,16),(165,92,17),(175,93,5),(167,94,1),(168,95,20),(169,96,10),(170,97,14),(192,108,19),(172,99,11),(174,100,18),(176,101,20),(177,102,13),(178,103,9),(179,104,16),(180,105,17),(181,106,15),(196,109,16),(204,110,13),(203,111,3),(197,112,10),(201,113,22),(193,114,7),(194,115,31),(195,116,19),(198,117,17),(205,118,18),(206,119,16),(207,120,15),(210,121,18),(209,122,10),(211,123,14),(212,124,15),(213,125,1),(214,126,1),(215,126,15),(216,127,1),(217,128,1),(218,128,13),(219,129,1),(220,130,1),(221,131,1),(222,132,1),(223,133,1),(224,134,1),(225,134,15),(227,135,1),(228,136,7),(229,137,17),(230,138,1),(231,139,31),(232,140,1),(233,141,10),(234,142,28),(235,143,4),(236,144,1),(238,145,8),(239,146,6),(240,147,1),(241,148,7),(242,149,13),(243,150,10),(244,151,27),(247,152,1),(248,155,10),(249,156,16),(454,157,13),(455,158,26),(457,159,3);
/*!40000 ALTER TABLE `order_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `method_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_invoice`
--

DROP TABLE IF EXISTS `pos_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_invoice` (
  `pos_invoice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pos_invoice_no` varchar(100) DEFAULT '',
  `customer_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_discount` decimal(11,2) DEFAULT '0.00',
  `before_tax` decimal(11,2) DEFAULT '0.00',
  `total_tax_amount` decimal(11,2) DEFAULT '0.00',
  `total_after_tax` decimal(11,2) DEFAULT '0.00',
  `transaction_date` date NOT NULL DEFAULT '0000-00-00',
  `transaction_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_paid` bit(1) DEFAULT b'0',
  `end_batch` bit(1) DEFAULT b'0',
  `batch_id` int(11) DEFAULT '0',
  `is_current_batch` bit(1) DEFAULT b'0',
  PRIMARY KEY (`pos_invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_invoice`
--

LOCK TABLES `pos_invoice` WRITE;
/*!40000 ALTER TABLE `pos_invoice` DISABLE KEYS */;
INSERT INTO `pos_invoice` VALUES (1,'INV-20171017-1',1,3,0.00,330.00,0.00,330.00,'2017-10-17','2017-10-17 10:16:14','','',11,'\0'),(2,'INV-20171017-2',1,3,0.00,135.00,0.00,135.00,'2017-10-17','2017-10-17 10:17:47','','',11,'\0'),(3,'INV-20171017-3',1,3,0.00,1195.00,0.00,1195.00,'2017-10-17','2017-10-17 10:20:20','','',4,'\0'),(4,'INV-20171017-4',1,3,0.00,375.00,0.00,375.00,'2017-10-17','2017-10-17 10:30:24','','',11,'\0'),(6,'INV-20171017-6',1,3,0.00,800.00,0.00,800.00,'2017-10-17','2017-10-17 11:08:34','','',4,'\0'),(7,'INV-20171017-7',1,3,0.00,4550.00,0.00,4550.00,'2017-10-17','2017-10-17 11:43:55','','',10,'\0'),(8,'INV-20171017-8',1,3,0.00,995.00,0.00,995.00,'2017-10-17','2017-10-17 11:47:51','','',10,'\0'),(9,'INV-20171017-9',1,3,0.00,1000.00,0.00,1000.00,'2017-10-17','2017-10-17 12:46:19','','',10,'\0'),(10,'INV-20171017-10',1,3,0.00,931.20,16.80,948.00,'2017-10-17','2017-10-17 13:14:58','','',10,'\0'),(11,'INV-20171017-11',1,3,0.00,660.00,0.00,660.00,'2017-10-17','2017-10-17 13:27:40','','',10,'\0'),(12,'INV-20171017-12',1,3,0.00,1610.00,0.00,1610.00,'2017-10-18','2017-10-17 14:31:02','','',10,'\0'),(13,'INV-20171017-13',1,3,0.00,90.00,0.00,90.00,'2017-10-17','2017-10-17 14:33:58','','',10,'\0'),(14,'INV-20171017-14',1,3,0.00,1150.00,0.00,1150.00,'2017-10-18','2017-10-17 14:42:44','','',10,'\0'),(15,'INV-20171017-15',1,3,0.00,1070.00,0.00,1070.00,'2017-10-18','2017-10-17 15:38:23','','',10,'\0'),(16,'INV-20171017-16',1,3,0.00,405.00,0.00,405.00,'2017-10-18','2017-10-17 15:54:51','','',10,'\0'),(17,'INV-20171017-17',1,3,0.00,330.60,14.40,345.00,'2017-10-18','2017-10-17 16:16:01','','',10,'\0'),(18,'INV-20171017-18',1,3,0.00,90.00,0.00,90.00,'2017-10-18','2017-10-17 16:17:45','','',10,'\0'),(19,'INV-20171017-19',1,3,0.00,90.00,0.00,90.00,'2017-10-18','2017-10-17 16:26:35','','',10,'\0'),(20,'INV-20171018-20',1,3,0.00,455.00,0.00,455.00,'2017-10-18','2017-10-18 09:13:59','','',13,'\0'),(21,'INV-20171018-21',1,3,0.00,270.00,0.00,270.00,'2017-10-18','2017-10-18 09:14:03','','',13,'\0'),(22,'INV-20171018-22',1,3,0.00,2728.20,16.80,2745.00,'2017-10-18','2017-10-18 09:50:55','','',17,'\0'),(23,'INV-20171018-23',1,3,0.00,2035.00,0.00,2035.00,'2017-10-18','2017-10-18 10:57:59','','',17,'\0'),(24,'INV-20171018-24',2,3,0.00,465.00,0.00,465.00,'2017-10-18','2017-10-18 11:03:48','','',15,'\0'),(25,'INV-20171018-25',1,3,0.00,2690.00,0.00,2690.00,'2017-10-18','2017-10-18 11:30:16','','',19,'\0'),(26,'INV-20171018-26',1,3,0.00,915.00,0.00,915.00,'2017-10-18','2017-10-18 11:57:34','','',17,'\0'),(27,'INV-20171018-27',1,3,0.00,360.00,0.00,360.00,'2017-10-18','2017-10-18 13:56:33','','',17,'\0'),(28,'INV-20171018-28',1,3,0.00,1810.00,0.00,1810.00,'2017-10-19','2017-10-18 14:33:57','','',19,'\0'),(29,'INV-20171018-29',1,3,0.00,705.00,0.00,705.00,'2017-10-18','2017-10-18 14:40:05','','',17,'\0'),(30,'INV-20171018-30',1,3,0.00,1255.00,0.00,1255.00,'2017-10-19','2017-10-18 14:45:15','','',19,'\0'),(31,'INV-20171018-31',1,3,0.00,2120.00,0.00,2120.00,'2017-10-19','2017-10-18 14:47:56','','',19,'\0'),(32,'INV-20171018-32',1,3,0.00,660.00,0.00,660.00,'2017-10-19','2017-10-18 14:49:32','','',19,'\0'),(33,'INV-20171018-33',1,3,0.00,225.00,0.00,225.00,'2017-10-18','2017-10-18 14:49:34','','',17,'\0'),(34,'INV-20171018-34',1,3,0.00,570.00,0.00,570.00,'2017-10-19','2017-10-18 16:28:17','','',19,'\0'),(35,'INV-20171018-35',1,3,0.00,45.00,0.00,45.00,'2017-10-19','2017-10-18 17:33:30','','',19,'\0'),(36,'INV-20171019-36',1,4,0.00,620.00,0.00,620.00,'2017-10-19','2017-10-19 10:04:10','','',24,'\0'),(37,'INV-20171019-37',1,4,0.00,1745.60,14.40,1760.00,'2017-10-19','2017-10-19 10:15:25','','',24,'\0'),(38,'INV-20171019-38',1,4,0.00,150.00,0.00,150.00,'2017-10-19','2017-10-19 11:37:02','','',24,'\0'),(39,'INV-20171019-39',1,4,0.00,1055.00,0.00,1055.00,'2017-10-19','2017-10-19 12:56:10','','',24,'\0'),(40,'INV-20171019-40',1,4,0.00,375.00,0.00,375.00,'2017-10-19','2017-10-19 12:59:56','','',24,'\0'),(41,'INV-20171019-41',1,4,0.00,225.00,0.00,225.00,'2017-10-19','2017-10-19 14:18:40','','',24,'\0'),(42,'INV-20171019-42',1,4,0.00,1090.00,0.00,1090.00,'2017-10-20','2017-10-19 14:35:14','','',24,'\0'),(43,'INV-20171019-43',1,4,0.00,919.60,5.40,925.00,'2017-10-20','2017-10-19 14:37:24','','',24,'\0'),(44,'INV-20171019-44',1,4,0.00,2245.00,0.00,2245.00,'2017-10-20','2017-10-19 14:38:17','','',24,'\0'),(45,'INV-20171019-45',1,4,0.00,935.00,0.00,935.00,'2017-10-19','2017-10-19 14:45:45','','',24,'\0'),(46,'INV-20171019-46',1,4,0.00,225.00,0.00,225.00,'2017-10-19','2017-10-19 15:00:40','','',24,'\0'),(47,'INV-20171019-47',1,4,0.00,560.00,0.00,560.00,'2017-10-20','2017-10-19 15:20:58','','',24,'\0'),(48,'INV-20171020-48',1,3,0.00,490.00,0.00,490.00,'2017-10-20','2017-10-20 09:38:35','','',31,'\0'),(51,'INV-20171020-51',1,3,0.00,2885.00,0.00,2885.00,'2017-10-20','2017-10-20 10:15:36','','',33,'\0'),(52,'INV-20171020-52',1,3,0.00,675.00,0.00,675.00,'2017-10-20','2017-10-20 10:42:27','','',31,'\0'),(53,'INV-20171020-53',1,3,0.00,1878.00,0.00,1878.00,'2017-10-20','2017-10-20 10:44:31','','',35,'\0'),(54,'INV-20171020-54',1,3,0.00,1793.00,0.00,1793.00,'2017-10-20','2017-10-20 10:59:17','','',33,'\0'),(55,'INV-20171020-55',1,3,0.00,1268.00,0.00,1268.00,'2017-10-20','2017-10-20 11:00:57','','',33,'\0'),(56,'INV-20171020-56',1,3,0.00,5730.00,0.00,5730.00,'2017-10-21','2017-10-20 11:03:01','','',35,'\0'),(57,'INV-20171020-57',1,3,0.00,1235.00,0.00,1235.00,'2017-10-20','2017-10-20 11:23:55','','',35,'\0'),(58,'INV-20171020-58',1,3,0.00,1020.00,0.00,1020.00,'2017-10-20','2017-10-20 11:30:02','','',35,'\0'),(59,'INV-20171020-59',1,3,0.00,569.20,10.80,580.00,'2017-10-20','2017-10-20 11:33:49','','',35,'\0'),(60,'INV-20171020-60',1,3,0.00,1355.00,0.00,1355.00,'2017-10-20','2017-10-20 11:47:45','','',35,'\0'),(62,'INV-20171020-62',1,3,0.00,1150.00,0.00,1150.00,'2017-10-21','2017-10-20 11:54:57','','',35,'\0'),(63,'INV-20171020-63',1,3,0.00,1075.00,0.00,1075.00,'2017-10-20','2017-10-20 11:56:43','','',35,'\0'),(64,'INV-20171020-64',1,3,0.00,135.00,0.00,135.00,'2017-10-20','2017-10-20 12:22:36','','',35,'\0'),(65,'INV-20171020-65',1,3,0.00,930.00,0.00,930.00,'2017-10-20','2017-10-20 12:23:24','','',35,'\0'),(66,'INV-20171020-66',1,3,0.00,1420.00,0.00,1420.00,'2017-10-20','2017-10-20 12:40:23','','',35,'\0'),(68,'INV-20171020-68',1,3,0.00,690.00,0.00,690.00,'2017-10-20','2017-10-20 12:48:00','','',35,'\0'),(69,'INV-20171020-69',1,3,0.00,90.00,0.00,90.00,'2017-10-20','2017-10-20 12:58:54','','',35,'\0'),(70,'INV-20171020-70',1,3,0.00,645.00,0.00,645.00,'2017-10-20','2017-10-20 13:01:56','','',35,'\0'),(72,'INV-20171020-72',1,3,0.00,188.00,0.00,188.00,'2017-10-20','2017-10-20 13:09:59','','',35,'\0'),(73,'INV-20171020-73',1,3,0.00,1880.00,0.00,1880.00,'2017-10-20','2017-10-20 13:11:39','','',35,'\0'),(74,'INV-20171020-74',1,3,0.00,520.00,0.00,520.00,'2017-10-20','2017-10-20 13:41:44','','',35,'\0'),(75,'INV-20171020-75',1,3,0.00,100.00,0.00,100.00,'2017-10-20','2017-10-20 13:43:27','','',35,'\0'),(76,'INV-20171020-76',1,3,0.00,552.60,32.40,585.00,'2017-10-20','2017-10-20 13:54:44','','',35,'\0'),(77,'INV-20171020-77',1,3,0.00,50.00,0.00,50.00,'2017-10-21','2017-10-20 14:02:18','','',35,'\0'),(78,'INV-20171020-78',1,3,0.00,1320.60,14.40,1335.00,'2017-10-21','2017-10-20 14:12:34','','',35,'\0'),(79,'INV-20171020-79',1,3,0.00,600.00,0.00,600.00,'2017-10-20','2017-10-20 14:13:54','','',35,'\0'),(80,'INV-20171020-80',1,3,0.00,45.00,0.00,45.00,'2017-10-20','2017-10-20 14:18:07','','',35,'\0'),(81,'INV-20171020-81',1,3,0.00,225.00,0.00,225.00,'2017-10-20','2017-10-20 14:18:55','','',35,'\0'),(82,'INV-20171020-82',1,3,0.00,910.00,0.00,910.00,'2017-10-20','2017-10-20 14:30:49','','',35,'\0'),(83,'INV-20171020-83',1,3,0.00,323.20,16.80,340.00,'2017-10-20','2017-10-20 14:55:42','','',35,'\0'),(84,'INV-20171020-84',1,3,0.00,745.00,0.00,745.00,'2017-10-20','2017-10-20 15:09:24','','',35,'\0'),(85,'INV-20171020-85',1,3,0.00,225.00,0.00,225.00,'2017-10-20','2017-10-20 15:39:05','','',35,'\0'),(86,'INV-20171020-86',1,3,0.00,15.00,0.00,15.00,'2017-10-20','2017-10-20 15:44:42','','',35,'\0'),(87,'INV-20171020-87',1,3,0.00,800.00,0.00,800.00,'2017-10-21','2017-10-20 15:54:31','','',35,'\0'),(88,'INV-20171020-88',1,3,0.00,200.00,0.00,200.00,'2017-10-21','2017-10-20 16:11:15','','',35,'\0'),(89,'INV-20171020-89',1,3,0.00,625.00,0.00,625.00,'2017-10-21','2017-10-20 16:13:38','','',35,'\0'),(90,'INV-20171020-90',1,3,0.00,415.00,0.00,415.00,'2017-10-21','2017-10-20 16:45:00','','',35,'\0'),(91,'INV-20171020-91',1,3,0.00,450.00,0.00,450.00,'2017-10-21','2017-10-20 17:15:39','','',35,'\0'),(92,'INV-20171021-92',1,3,0.00,920.00,0.00,920.00,'2017-10-21','2017-10-21 10:57:05','','',39,'\0'),(93,'INV-20171021-93',1,3,0.00,895.00,0.00,895.00,'2017-10-21','2017-10-21 11:20:01','','',39,'\0'),(94,'INV-20171021-94',1,3,0.00,270.00,0.00,270.00,'2017-10-21','2017-10-21 11:32:21','','',37,'\0'),(95,'INV-20171021-95',1,3,0.00,668.60,14.40,683.00,'2017-10-21','2017-10-21 11:33:51','','',37,'\0'),(96,'INV-20171021-96',1,3,0.00,754.60,5.40,760.00,'2017-10-21','2017-10-21 11:34:59','','',39,'\0'),(97,'INV-20171021-97',1,3,0.00,860.00,0.00,860.00,'2017-10-21','2017-10-21 11:43:16','','',37,'\0'),(99,'INV-20171021-99',1,3,0.00,630.00,0.00,630.00,'2017-10-21','2017-10-21 12:08:17','','',39,'\0'),(100,'INV-20171021-100',1,3,0.00,405.00,0.00,405.00,'2017-10-21','2017-10-21 12:39:24','','',37,'\0'),(101,'INV-20171021-101',1,3,0.00,750.00,0.00,750.00,'2017-10-21','2017-10-21 13:03:23','','',43,'\0'),(102,'INV-20171021-102',1,3,0.00,490.00,0.00,490.00,'2017-10-21','2017-10-21 13:36:52','','',39,'\0'),(103,'INV-20171021-103',1,3,0.00,1070.00,0.00,1070.00,'2017-10-22','2017-10-21 13:48:56','','',43,'\0'),(104,'INV-20171021-104',1,3,0.00,180.00,0.00,180.00,'2017-10-21','2017-10-21 14:04:44','','',39,'\0'),(105,'INV-20171021-105',1,3,0.00,535.00,0.00,535.00,'2017-10-21','2017-10-21 14:08:25','','',39,'\0'),(106,'INV-20171021-106',1,3,0.00,515.00,0.00,515.00,'2017-10-21','2017-10-21 14:10:57','','',43,'\0'),(108,'INV-20171021-108',1,3,0.00,405.00,0.00,405.00,'2017-10-21','2017-10-21 14:31:47','','',43,'\0'),(109,'INV-20171021-109',1,3,0.00,310.00,0.00,310.00,'2017-10-21','2017-10-21 14:35:30','','',43,'\0'),(110,'INV-20171021-110',1,3,0.00,180.00,0.00,180.00,'2017-10-22','2017-10-21 14:50:31','','',43,'\0'),(111,'INV-20171021-111',1,3,0.00,565.00,0.00,565.00,'2017-10-22','2017-10-21 14:52:41','','',43,'\0'),(112,'INV-20171021-112',1,3,0.00,140.00,0.00,140.00,'2017-10-21','2017-10-21 14:58:08','','',43,'\0'),(113,'INV-20171021-113',1,3,0.00,360.00,0.00,360.00,'2017-10-22','2017-10-21 14:59:52','','',43,'\0'),(114,'INV-20171021-114',1,3,0.00,360.00,0.00,360.00,'2017-10-21','2017-10-21 15:08:02','','',43,'\0'),(115,'INV-20171021-115',1,3,0.00,100.00,0.00,100.00,'2017-10-21','2017-10-21 15:10:50','','',43,'\0'),(116,'INV-20171021-116',1,3,0.00,555.00,0.00,555.00,'2017-10-21','2017-10-21 15:12:47','','',43,'\0'),(117,'INV-20171021-117',1,3,0.00,430.60,14.40,445.00,'2017-10-22','2017-10-21 16:16:36','','',43,'\0'),(118,'INV-20171021-118',1,3,0.00,475.00,0.00,475.00,'2017-10-22','2017-10-21 16:21:25','','',43,'\0'),(119,'INV-20171022-119',1,3,0.00,880.00,0.00,880.00,'2017-10-22','2017-10-22 07:50:21','','',45,'\0'),(120,'INV-20171022-120',1,1,0.00,575.00,0.00,575.00,'2017-10-22','2017-10-22 09:14:48','','',44,'\0'),(121,'INV-20171022-121',1,3,0.00,610.60,14.40,625.00,'2017-10-22','2017-10-22 09:39:10','','',45,'\0'),(122,'INV-20171022-122',1,3,0.00,601.00,0.00,601.00,'2017-10-22','2017-10-22 09:44:29','','',45,'\0'),(123,'INV-20171022-123',1,3,0.00,1425.00,0.00,1425.00,'2017-10-22','2017-10-22 10:33:57','','',45,'\0'),(124,'INV-20171022-124',1,3,0.00,530.00,0.00,530.00,'2017-10-22','2017-10-22 10:38:49','','',45,'\0'),(125,'INV-20171022-125',2,1,0.00,611.20,28.80,640.00,'2017-10-22','2017-10-22 13:05:07','','',50,'\0'),(126,'INV-20171022-126',1,1,0.00,480.00,0.00,480.00,'2017-10-22','2017-10-22 13:17:52','','',50,'\0'),(127,'INV-20171022-127',1,1,0.00,670.00,0.00,670.00,'2017-10-22','2017-10-22 13:21:32','','',50,'\0'),(128,'INV-20171022-128',2,1,0.00,7200.00,0.00,7200.00,'2017-10-22','2017-10-22 13:27:36','','',50,'\0'),(129,'INV-20171022-129',2,1,0.00,360.00,0.00,360.00,'2017-10-22','2017-10-22 13:28:11','','',50,'\0'),(130,'INV-20171022-130',2,1,0.00,360.00,0.00,360.00,'2017-10-22','2017-10-22 13:30:08','','',50,'\0'),(131,'INV-20171022-131',2,1,0.00,445.00,0.00,445.00,'2017-10-22','2017-10-22 13:32:22','','',50,'\0'),(132,'INV-20171022-132',1,1,0.00,5400.00,0.00,5400.00,'2017-10-22','2017-10-22 13:40:49','','',50,'\0'),(133,'INV-20171023-133',1,1,0.00,900.00,0.00,900.00,'2017-10-23','2017-10-23 01:44:56','','',51,'\0'),(134,'INV-20171023-134',1,1,0.00,360.00,0.00,360.00,'2017-10-23','2017-10-23 01:51:04','','',51,'\0'),(135,'INV-20171023-135',1,1,0.00,1220.00,0.00,1220.00,'2017-10-23','2017-10-23 06:04:44','','',51,'\0'),(136,'INV-20171023-136',1,1,0.00,549.60,50.40,600.00,'2017-10-23','2017-10-23 08:41:50','','',52,'\0'),(137,'INV-20171023-137',1,1,0.00,960.00,0.00,960.00,'2017-10-23','2017-10-23 09:22:05','','',52,'\0'),(138,'INV-20171024-138',1,1,0.00,1336.20,28.80,1365.00,'2017-10-24','2017-10-24 01:51:19','','',53,'\0'),(139,'INV-20171024-139',1,1,0.00,470.00,0.00,470.00,'2017-10-24','2017-10-24 01:52:42','','',53,'\0'),(140,'INV-20171024-140',1,1,0.00,1060.00,0.00,1060.00,'2017-10-24','2017-10-24 12:11:18','','',56,'\0'),(141,'INV-20171024-141',1,1,0.00,560.00,0.00,560.00,'2017-10-24','2017-10-24 12:13:14','','',56,'\0'),(142,'INV-20171024-142',1,1,0.00,763.80,31.20,795.00,'2017-10-24','2017-10-24 12:14:11','','',56,'\0'),(143,'INV-20171024-143',1,1,0.00,303.20,16.80,320.00,'2017-10-24','2017-10-24 12:16:15','','',56,'\0'),(144,'INV-20171024-144',1,1,0.00,219.60,5.40,225.00,'2017-10-24','2017-10-24 12:43:20','','',57,'\0'),(145,'INV-20171025-145',1,1,0.00,675.00,0.00,675.00,'2017-10-25','2017-10-25 07:09:04','','',60,'\0'),(146,'INV-20171025-146',1,1,0.00,340.00,0.00,340.00,'2017-10-25','2017-10-25 13:27:06','','',61,'\0'),(147,'INV-20171026-147',1,1,0.00,833.20,16.80,850.00,'2017-10-26','2017-10-26 05:24:40','','',62,''),(148,'INV-20171026-148',1,1,0.00,475.00,0.00,475.00,'2017-10-26','2017-10-26 05:32:13','','',62,''),(149,'INV-20171026-149',1,1,0.00,355.00,0.00,355.00,'2017-10-26','2017-10-26 05:38:03','','',62,''),(150,'INV-20171026-150',1,1,0.00,970.00,0.00,970.00,'2017-10-26','2017-10-26 05:41:48','','',62,''),(151,'INV-20171026-151',1,1,0.00,669.60,5.40,675.00,'2017-10-26','2017-10-26 05:43:13','','',62,''),(152,'INV-20171026-152',1,1,0.00,616.00,84.00,700.00,'2017-10-26','2017-10-26 06:06:51','\0','',64,'\0'),(153,'INV-20171026-153',NULL,1,0.00,0.00,0.00,0.00,'2017-10-26','2017-10-26 09:59:44','\0','',64,'\0'),(154,'INV-20171026-154',NULL,1,0.00,0.00,0.00,0.00,'2017-10-26','2017-10-26 10:05:19','\0','',64,'\0'),(155,'INV-20171026-155',1,1,0.00,658.80,16.20,675.00,'2017-10-26','2017-10-26 10:09:49','\0','',64,'\0'),(156,'INV-20171026-156',1,1,0.00,583.80,16.20,600.00,'2017-10-26','2017-10-26 10:10:49','\0','',64,'\0'),(157,'INV-20171026-157',1,1,0.00,492.80,67.20,560.00,'2017-10-30','2017-10-26 10:12:10','','',70,'\0'),(158,'INV-20171026-158',1,1,0.00,2660.00,0.00,2660.00,'2017-10-30','2017-10-26 10:14:27','\0','',70,'\0'),(159,'INV-20171030-159',1,1,0.00,355.60,14.40,370.00,'2017-10-30','2017-10-30 11:36:54','\0','',70,'\0');
/*!40000 ALTER TABLE `pos_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_invoice_ajax`
--

DROP TABLE IF EXISTS `pos_invoice_ajax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_invoice_ajax` (
  `pos_invoice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pos_invoice_no` varchar(100) DEFAULT '',
  `customer_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_discount` decimal(11,2) DEFAULT '0.00',
  `before_tax` decimal(11,2) DEFAULT '0.00',
  `total_tax_amount` decimal(11,2) DEFAULT '0.00',
  `total_after_tax` decimal(11,2) DEFAULT '0.00',
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transaction_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_paid` bit(1) DEFAULT b'0',
  `end_batch` bit(1) DEFAULT b'0',
  `batch_id` int(11) DEFAULT '0',
  PRIMARY KEY (`pos_invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_invoice_ajax`
--

LOCK TABLES `pos_invoice_ajax` WRITE;
/*!40000 ALTER TABLE `pos_invoice_ajax` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_invoice_ajax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_invoice_items`
--

DROP TABLE IF EXISTS `pos_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_invoice_items` (
  `pos_invoice_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pos_qty` int(20) DEFAULT NULL,
  `pos_price` decimal(11,0) DEFAULT NULL,
  `pos_discount` decimal(11,0) DEFAULT NULL,
  `tax_rate` decimal(11,2) DEFAULT NULL,
  `tax_amount` decimal(11,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pos_invoice_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2538 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_invoice_items`
--

LOCK TABLES `pos_invoice_items` WRITE;
/*!40000 ALTER TABLE `pos_invoice_items` DISABLE KEYS */;
INSERT INTO `pos_invoice_items` VALUES (1,1,3,1,150,0,0.00,0.00,150.00,0),(2,1,206,4,45,0,0.00,0.00,180.00,0),(3,2,206,1,45,0,0.00,0.00,45.00,0),(4,3,174,2,225,0,0.00,0.00,450.00,0),(5,3,40,1,150,0,0.00,0.00,150.00,0),(6,3,15,1,150,0,0.00,0.00,150.00,0),(7,4,174,1,225,0,0.00,0.00,225.00,0),(8,2,206,1,45,0,0.00,0.00,45.00,0),(9,4,8,1,150,0,0.00,0.00,150.00,0),(15,2,206,1,45,0,0.00,0.00,45.00,0),(16,6,47,1,190,0,0.00,0.00,190.00,0),(17,3,58,10,10,0,0.00,0.00,100.00,0),(18,6,132,2,45,0,0.00,0.00,90.00,0),(19,3,174,1,225,0,0.00,0.00,225.00,0),(20,6,203,1,100,0,0.00,0.00,100.00,0),(28,6,212,1,180,0,0.00,0.00,180.00,0),(29,6,210,1,210,0,0.00,0.00,210.00,0),(30,6,78,2,15,0,0.00,0.00,30.00,0),(31,3,162,1,120,0,0.00,0.00,120.00,0),(64,10,162,1,120,0,0.00,0.00,120.00,0),(65,10,138,1,28,0,0.00,0.00,28.00,0),(66,10,220,1,225,0,0.00,0.00,225.00,0),(67,10,78,1,15,0,0.00,0.00,15.00,0),(68,10,102,1,150,0,0.00,0.00,150.00,0),(69,10,41,1,270,0,0.00,0.00,270.00,0),(70,11,220,1,225,0,0.00,0.00,225.00,0),(73,8,14,1,100,0,0.00,0.00,100.00,0),(74,8,174,1,225,0,0.00,0.00,225.00,0),(75,8,61,1,60,0,0.00,0.00,60.00,0),(76,8,58,5,10,0,0.00,0.00,50.00,0),(77,8,161,1,100,0,0.00,0.00,100.00,0),(78,8,6,1,180,0,0.00,0.00,180.00,0),(79,8,158,1,100,0,0.00,0.00,100.00,0),(80,11,201,1,100,0,0.00,0.00,100.00,0),(81,8,5,1,180,0,0.00,0.00,180.00,0),(83,10,4,1,140,0,12.00,16.80,140.00,0),(86,9,219,1,225,0,0.00,0.00,225.00,0),(87,9,174,2,225,0,0.00,0.00,450.00,0),(88,9,201,1,100,0,0.00,0.00,100.00,0),(91,11,220,1,225,0,0.00,0.00,225.00,0),(94,12,220,1,225,0,0.00,0.00,225.00,0),(95,12,217,1,225,0,0.00,0.00,225.00,0),(96,12,39,1,170,0,0.00,0.00,170.00,0),(98,13,132,2,45,0,0.00,0.00,90.00,0),(101,7,213,1,160,0,0.00,0.00,160.00,0),(102,7,123,1,120,0,0.00,0.00,120.00,0),(103,7,207,1,45,0,0.00,0.00,45.00,0),(104,7,98,1,250,0,0.00,0.00,250.00,0),(105,7,202,2,100,0,0.00,0.00,200.00,0),(106,7,217,5,225,0,0.00,0.00,1125.00,0),(107,7,136,1,140,0,0.00,0.00,140.00,0),(108,7,99,1,150,0,0.00,0.00,150.00,0),(109,7,206,5,45,0,0.00,0.00,225.00,0),(110,7,80,4,35,0,0.00,0.00,140.00,0),(111,7,8,1,150,0,0.00,0.00,150.00,0),(112,7,29,1,280,0,0.00,0.00,280.00,0),(113,7,47,1,190,0,0.00,0.00,190.00,0),(114,7,143,2,150,0,0.00,0.00,300.00,0),(115,7,136,1,140,0,0.00,0.00,140.00,0),(116,14,181,3,40,0,0.00,0.00,120.00,0),(117,14,178,1,150,0,0.00,0.00,150.00,0),(118,14,202,1,100,0,0.00,0.00,100.00,0),(119,14,206,1,45,0,0.00,0.00,45.00,0),(120,14,45,1,200,0,0.00,0.00,200.00,0),(121,14,212,1,180,0,0.00,0.00,180.00,0),(122,11,23,1,110,0,0.00,0.00,110.00,0),(123,7,217,1,225,0,0.00,0.00,225.00,0),(124,14,147,1,40,0,0.00,0.00,40.00,0),(125,7,136,1,140,0,0.00,0.00,140.00,0),(126,7,123,1,120,0,0.00,0.00,120.00,0),(127,12,6,1,180,0,0.00,0.00,180.00,0),(128,7,217,1,225,0,0.00,0.00,225.00,0),(129,12,220,1,225,0,0.00,0.00,225.00,0),(130,9,174,1,225,0,0.00,0.00,225.00,0),(131,7,217,1,225,0,0.00,0.00,225.00,0),(132,14,181,2,40,0,0.00,0.00,80.00,0),(133,14,206,1,45,0,0.00,0.00,45.00,0),(134,15,217,1,225,0,0.00,0.00,225.00,0),(135,14,178,1,150,0,0.00,0.00,150.00,0),(136,16,79,2,25,0,0.00,0.00,50.00,0),(137,16,37,1,180,0,0.00,0.00,180.00,0),(138,16,40,1,150,0,0.00,0.00,150.00,0),(139,14,181,1,40,0,0.00,0.00,40.00,0),(140,15,220,1,225,0,0.00,0.00,225.00,0),(141,17,220,1,225,0,0.00,0.00,225.00,0),(142,16,79,1,25,0,0.00,0.00,25.00,0),(143,18,206,2,45,0,0.00,0.00,90.00,0),(144,19,132,2,45,0,0.00,0.00,90.00,0),(145,12,39,1,170,0,0.00,0.00,170.00,0),(146,12,220,1,225,0,0.00,0.00,225.00,0),(147,12,206,2,45,0,0.00,0.00,90.00,0),(148,12,202,1,100,0,0.00,0.00,100.00,0),(149,17,2,1,120,0,12.00,14.40,120.00,0),(150,15,220,1,225,0,0.00,0.00,225.00,0),(151,15,39,1,170,0,0.00,0.00,170.00,0),(152,15,220,1,225,0,0.00,0.00,225.00,0),(153,20,6,1,180,0,0.00,0.00,180.00,0),(154,20,207,1,45,0,0.00,0.00,45.00,0),(155,20,206,1,45,0,0.00,0.00,45.00,0),(156,21,6,1,180,0,0.00,0.00,180.00,0),(157,21,207,1,45,0,0.00,0.00,45.00,0),(158,21,206,1,45,0,0.00,0.00,45.00,0),(159,20,67,2,15,0,0.00,0.00,30.00,0),(160,20,65,2,30,0,0.00,0.00,60.00,0),(161,20,66,2,25,0,0.00,0.00,50.00,0),(162,20,206,1,45,0,0.00,0.00,45.00,0),(189,24,94,2,135,0,0.00,0.00,270.00,0),(190,24,3,1,150,0,0.00,0.00,150.00,0),(195,25,217,1,225,0,0.00,0.00,225.00,0),(198,25,66,1,25,0,0.00,0.00,25.00,0),(199,25,65,1,30,0,0.00,0.00,30.00,0),(200,25,64,1,25,0,0.00,0.00,25.00,0),(201,25,60,1,30,0,0.00,0.00,30.00,0),(202,25,58,1,10,0,0.00,0.00,10.00,0),(203,25,66,3,25,0,0.00,0.00,75.00,0),(204,25,65,3,30,0,0.00,0.00,90.00,0),(205,25,64,3,25,0,0.00,0.00,75.00,0),(206,25,60,3,30,0,0.00,0.00,90.00,0),(207,25,58,5,10,0,0.00,0.00,50.00,0),(208,25,66,3,25,0,0.00,0.00,75.00,0),(209,25,65,3,30,0,0.00,0.00,90.00,0),(210,25,64,3,25,0,0.00,0.00,75.00,0),(211,25,60,3,30,0,0.00,0.00,90.00,0),(212,25,58,5,10,0,0.00,0.00,50.00,0),(216,26,159,1,100,0,0.00,0.00,100.00,0),(217,26,158,1,100,0,0.00,0.00,100.00,0),(218,26,78,2,15,0,0.00,0.00,30.00,0),(219,26,70,1,250,0,0.00,0.00,250.00,0),(220,26,210,1,210,0,0.00,0.00,210.00,0),(222,24,141,1,45,0,0.00,0.00,45.00,0),(223,25,67,1,15,0,0.00,0.00,15.00,0),(224,25,67,2,15,0,0.00,0.00,30.00,0),(225,25,143,1,150,0,0.00,0.00,150.00,0),(227,25,217,1,225,0,0.00,0.00,225.00,0),(228,25,78,1,15,0,0.00,0.00,15.00,0),(232,23,127,1,210,0,0.00,0.00,210.00,0),(233,23,85,1,205,0,0.00,0.00,205.00,0),(234,23,52,1,280,0,0.00,0.00,280.00,0),(235,23,47,1,190,0,0.00,0.00,190.00,0),(236,23,217,3,225,0,0.00,0.00,675.00,0),(237,23,71,1,250,0,0.00,0.00,250.00,0),(238,26,174,1,225,0,0.00,0.00,225.00,0),(241,25,143,1,150,0,0.00,0.00,150.00,0),(242,25,213,1,160,0,0.00,0.00,160.00,0),(243,25,202,1,100,0,0.00,0.00,100.00,0),(257,22,122,1,80,0,0.00,0.00,80.00,0),(258,22,174,1,225,0,0.00,0.00,225.00,0),(259,22,210,1,210,0,0.00,0.00,210.00,0),(260,22,82,1,180,0,0.00,0.00,180.00,0),(261,22,212,1,180,0,0.00,0.00,180.00,0),(262,22,43,1,380,0,0.00,0.00,380.00,0),(263,22,220,3,225,0,0.00,0.00,675.00,0),(264,22,62,2,60,0,0.00,0.00,120.00,0),(265,22,6,1,180,0,0.00,0.00,180.00,0),(266,22,4,1,140,0,12.00,16.80,140.00,0),(267,22,134,1,50,0,0.00,0.00,50.00,0),(268,22,217,1,225,0,0.00,0.00,225.00,0),(269,22,158,1,100,0,0.00,0.00,100.00,0),(270,23,217,1,225,0,0.00,0.00,225.00,0),(271,25,217,1,225,0,0.00,0.00,225.00,0),(272,27,160,1,100,0,0.00,0.00,100.00,0),(273,27,159,1,100,0,0.00,0.00,100.00,0),(274,27,67,2,15,0,0.00,0.00,30.00,0),(275,27,95,1,95,0,0.00,0.00,95.00,0),(276,25,136,1,140,0,0.00,0.00,140.00,0),(277,27,1,1,35,0,0.00,0.00,35.00,0),(278,28,174,1,225,0,0.00,0.00,225.00,0),(279,25,206,1,45,0,0.00,0.00,45.00,0),(280,28,53,1,280,0,0.00,0.00,280.00,0),(281,29,220,1,225,0,0.00,0.00,225.00,0),(282,29,57,1,150,0,0.00,0.00,150.00,0),(283,29,79,2,25,0,0.00,0.00,50.00,0),(284,29,52,1,280,0,0.00,0.00,280.00,0),(285,30,79,1,25,0,0.00,0.00,25.00,0),(286,30,78,2,15,0,0.00,0.00,30.00,0),(287,30,37,1,180,0,0.00,0.00,180.00,0),(288,30,47,1,190,0,0.00,0.00,190.00,0),(289,30,127,1,210,0,0.00,0.00,210.00,0),(290,30,73,1,250,0,0.00,0.00,250.00,0),(291,31,103,1,150,0,0.00,0.00,150.00,0),(292,31,18,1,110,0,0.00,0.00,110.00,0),(293,31,78,1,15,0,0.00,0.00,15.00,0),(294,31,99,1,150,0,0.00,0.00,150.00,0),(295,31,58,5,10,0,0.00,0.00,50.00,0),(296,31,67,5,15,0,0.00,0.00,75.00,0),(297,31,65,10,30,0,0.00,0.00,300.00,0),(298,31,64,6,25,0,0.00,0.00,150.00,0),(299,31,174,1,225,0,0.00,0.00,225.00,0),(300,32,174,1,225,0,0.00,0.00,225.00,0),(302,25,206,1,45,0,0.00,0.00,45.00,0),(303,33,174,1,225,0,0.00,0.00,225.00,0),(304,32,25,1,110,0,0.00,0.00,110.00,0),(305,31,141,1,45,0,0.00,0.00,45.00,0),(306,31,145,2,40,0,0.00,0.00,80.00,0),(307,31,64,4,25,0,0.00,0.00,100.00,0),(308,31,82,1,180,0,0.00,0.00,180.00,0),(309,25,221,1,120,0,0.00,0.00,120.00,0),(310,31,222,1,50,0,0.00,0.00,50.00,0),(311,31,65,4,30,0,0.00,0.00,120.00,0),(312,31,79,1,25,0,0.00,0.00,25.00,0),(313,31,137,1,20,0,0.00,0.00,20.00,0),(314,28,98,1,250,0,0.00,0.00,250.00,0),(315,28,174,1,225,0,0.00,0.00,225.00,0),(316,25,206,1,45,0,0.00,0.00,45.00,0),(317,31,14,1,100,0,0.00,0.00,100.00,0),(318,31,142,1,45,0,0.00,0.00,45.00,0),(319,31,145,1,40,0,0.00,0.00,40.00,0),(320,25,58,5,10,0,0.00,0.00,50.00,0),(321,32,174,1,225,0,0.00,0.00,225.00,0),(322,30,175,1,280,0,0.00,0.00,280.00,0),(323,30,206,1,45,0,0.00,0.00,45.00,0),(324,25,174,1,225,0,0.00,0.00,225.00,0),(325,25,217,1,225,0,0.00,0.00,225.00,0),(326,31,206,1,45,0,0.00,0.00,45.00,0),(327,34,132,2,45,0,0.00,0.00,90.00,0),(328,34,11,1,200,0,0.00,0.00,200.00,0),(329,34,183,1,80,0,0.00,0.00,80.00,0),(330,30,206,1,45,0,0.00,0.00,45.00,0),(331,31,206,1,45,0,0.00,0.00,45.00,0),(332,28,174,1,225,0,0.00,0.00,225.00,0),(333,34,42,1,200,0,0.00,0.00,200.00,0),(334,28,43,1,380,0,0.00,0.00,380.00,0),(335,35,132,1,45,0,0.00,0.00,45.00,0),(336,28,174,1,225,0,0.00,0.00,225.00,0),(337,32,202,1,100,0,0.00,0.00,100.00,0),(353,36,134,1,50,0,0.00,0.00,50.00,0),(354,36,213,1,160,0,0.00,0.00,160.00,0),(355,36,37,1,180,0,0.00,0.00,180.00,0),(356,36,78,2,15,0,0.00,0.00,30.00,0),(357,36,45,1,200,0,0.00,0.00,200.00,0),(359,38,104,1,150,0,0.00,0.00,150.00,0),(363,40,220,1,225,0,0.00,0.00,225.00,0),(369,40,15,1,150,0,0.00,0.00,150.00,0),(404,37,143,1,150,0,0.00,0.00,150.00,0),(405,37,80,3,35,0,0.00,0.00,105.00,0),(406,37,60,1,30,0,0.00,0.00,30.00,0),(407,37,47,1,190,0,0.00,0.00,190.00,0),(408,37,71,1,250,0,0.00,0.00,250.00,0),(409,37,220,1,225,0,0.00,0.00,225.00,0),(410,37,6,1,180,0,0.00,0.00,180.00,0),(411,37,2,1,120,0,12.00,14.40,120.00,0),(412,37,88,1,200,0,0.00,0.00,200.00,0),(413,37,65,2,30,0,0.00,0.00,60.00,0),(414,37,213,1,160,0,0.00,0.00,160.00,0),(422,41,220,1,225,0,0.00,0.00,225.00,0),(441,42,100,1,280,0,0.00,0.00,280.00,0),(442,42,136,2,140,0,0.00,0.00,280.00,0),(454,45,73,1,250,0,0.00,0.00,250.00,0),(455,45,220,1,225,0,0.00,0.00,225.00,0),(456,42,143,1,150,0,0.00,0.00,150.00,0),(457,39,47,1,190,0,0.00,0.00,190.00,0),(458,39,174,3,225,0,0.00,0.00,675.00,0),(459,39,47,1,190,0,0.00,0.00,190.00,0),(460,37,132,2,45,0,0.00,0.00,90.00,0),(464,46,220,1,225,0,0.00,0.00,225.00,0),(466,43,50,1,280,0,0.00,0.00,280.00,0),(467,43,3,1,150,0,0.00,0.00,150.00,0),(468,43,219,2,225,0,0.00,0.00,450.00,0),(474,45,6,1,180,0,0.00,0.00,180.00,0),(476,45,175,1,280,0,0.00,0.00,280.00,0),(478,42,202,2,100,0,0.00,0.00,200.00,0),(481,42,6,1,180,0,0.00,0.00,180.00,0),(483,43,131,1,45,0,12.00,5.40,45.00,0),(487,47,206,3,45,0,0.00,0.00,135.00,0),(488,47,141,1,45,0,0.00,0.00,45.00,0),(489,47,145,2,40,0,0.00,0.00,80.00,0),(490,47,6,1,180,0,0.00,0.00,180.00,0),(491,47,229,1,120,0,0.00,0.00,120.00,0),(570,44,58,15,10,0,0.00,0.00,150.00,0),(571,44,27,1,300,0,0.00,0.00,300.00,0),(572,44,88,1,200,0,0.00,0.00,200.00,0),(573,44,174,2,225,0,0.00,0.00,450.00,0),(574,44,20,1,190,0,0.00,0.00,190.00,0),(575,44,65,2,30,0,0.00,0.00,60.00,0),(576,44,67,2,15,0,0.00,0.00,30.00,0),(577,44,47,1,190,0,0.00,0.00,190.00,0),(578,44,220,3,225,0,0.00,0.00,675.00,0),(579,48,220,1,225,0,0.00,0.00,225.00,0),(584,48,78,1,15,0,0.00,0.00,15.00,0),(585,48,40,1,150,0,0.00,0.00,150.00,0),(590,48,58,2,10,0,0.00,0.00,20.00,0),(591,48,66,2,25,0,0.00,0.00,50.00,0),(592,48,67,2,15,0,0.00,0.00,30.00,0),(593,52,174,3,225,0,0.00,0.00,675.00,0),(594,53,6,1,180,0,0.00,0.00,180.00,0),(595,53,78,1,15,0,0.00,0.00,15.00,0),(596,53,43,1,380,0,0.00,0.00,380.00,0),(597,53,62,1,60,0,0.00,0.00,60.00,0),(598,53,67,7,15,0,0.00,0.00,105.00,0),(599,53,58,10,10,0,0.00,0.00,100.00,0),(600,53,62,1,60,0,0.00,0.00,60.00,0),(601,53,67,7,15,0,0.00,0.00,105.00,0),(602,53,58,10,10,0,0.00,0.00,100.00,0),(604,53,152,1,38,0,0.00,0.00,38.00,0),(605,54,78,1,15,0,0.00,0.00,15.00,0),(606,54,53,1,280,0,0.00,0.00,280.00,0),(607,54,52,1,280,0,0.00,0.00,280.00,0),(608,54,82,1,180,0,0.00,0.00,180.00,0),(609,54,37,1,180,0,0.00,0.00,180.00,0),(610,54,8,1,150,0,0.00,0.00,150.00,0),(611,54,14,1,100,0,0.00,0.00,100.00,0),(612,54,6,1,180,0,0.00,0.00,180.00,0),(629,53,78,3,15,0,0.00,0.00,45.00,0),(630,53,78,2,15,0,0.00,0.00,30.00,0),(632,55,206,2,45,0,0.00,0.00,90.00,0),(633,55,37,1,180,0,0.00,0.00,180.00,0),(634,55,43,1,380,0,0.00,0.00,380.00,0),(635,55,47,1,190,0,0.00,0.00,190.00,0),(640,53,78,1,15,0,0.00,0.00,15.00,0),(651,57,20,1,190,0,0.00,0.00,190.00,0),(652,57,10,1,90,0,0.00,0.00,90.00,0),(653,57,220,1,225,0,0.00,0.00,225.00,0),(663,55,151,1,38,0,0.00,0.00,38.00,0),(664,55,78,2,15,0,0.00,0.00,30.00,0),(665,55,206,2,45,0,0.00,0.00,90.00,0),(666,58,174,1,225,0,0.00,0.00,225.00,0),(667,58,40,1,150,0,0.00,0.00,150.00,0),(668,54,47,1,190,0,0.00,0.00,190.00,0),(670,59,131,1,45,0,12.00,5.40,45.00,0),(671,55,6,1,180,0,0.00,0.00,180.00,0),(676,51,104,2,150,0,0.00,0.00,300.00,0),(677,51,43,2,380,0,0.00,0.00,760.00,0),(678,51,206,2,45,0,0.00,0.00,90.00,0),(679,51,132,1,45,0,0.00,0.00,45.00,0),(680,51,134,1,50,0,0.00,0.00,50.00,0),(681,51,40,2,150,0,0.00,0.00,300.00,0),(682,51,82,4,180,0,0.00,0.00,720.00,0),(683,51,47,1,190,0,0.00,0.00,190.00,0),(684,51,50,1,280,0,0.00,0.00,280.00,0),(685,51,232,1,150,0,0.00,0.00,150.00,0),(686,58,232,1,150,0,0.00,0.00,150.00,0),(687,53,6,1,180,0,0.00,0.00,180.00,0),(688,60,46,1,250,0,0.00,0.00,250.00,0),(689,60,45,1,200,0,0.00,0.00,200.00,0),(690,60,78,4,15,0,0.00,0.00,60.00,0),(691,60,122,3,80,0,0.00,0.00,240.00,0),(692,54,153,1,38,0,0.00,0.00,38.00,0),(693,54,134,2,50,0,0.00,0.00,100.00,0),(694,54,158,1,100,0,0.00,0.00,100.00,0),(695,55,206,2,45,0,0.00,0.00,90.00,0),(701,63,174,1,225,0,0.00,0.00,225.00,0),(702,59,8,1,150,0,0.00,0.00,150.00,0),(704,57,220,1,225,0,0.00,0.00,225.00,0),(705,53,67,4,15,0,0.00,0.00,60.00,0),(706,53,66,4,25,0,0.00,0.00,100.00,0),(707,53,65,4,30,0,0.00,0.00,120.00,0),(708,60,122,1,80,0,0.00,0.00,80.00,0),(709,63,78,1,15,0,0.00,0.00,15.00,0),(710,63,42,2,200,0,0.00,0.00,400.00,0),(711,64,206,1,45,0,0.00,0.00,45.00,0),(712,64,65,1,30,0,0.00,0.00,30.00,0),(713,64,62,1,60,0,0.00,0.00,60.00,0),(716,63,174,1,225,0,0.00,0.00,225.00,0),(717,63,78,2,15,0,0.00,0.00,30.00,0),(718,57,220,1,225,0,0.00,0.00,225.00,0),(719,59,206,1,45,0,0.00,0.00,45.00,0),(720,66,220,1,225,0,0.00,0.00,225.00,0),(721,66,20,1,190,0,0.00,0.00,190.00,0),(722,66,11,1,200,0,0.00,0.00,200.00,0),(723,66,24,2,140,0,0.00,0.00,280.00,0),(728,60,232,1,150,0,0.00,0.00,150.00,0),(731,68,220,1,225,0,0.00,0.00,225.00,0),(732,59,73,1,250,0,0.00,0.00,250.00,0),(733,66,132,3,45,0,0.00,0.00,135.00,0),(734,65,40,1,150,0,0.00,0.00,150.00,0),(735,65,17,1,180,0,0.00,0.00,180.00,0),(736,57,58,10,10,0,0.00,0.00,100.00,0),(737,57,6,1,180,0,0.00,0.00,180.00,0),(738,69,206,1,45,0,0.00,0.00,45.00,0),(739,53,220,1,225,0,0.00,0.00,225.00,0),(740,70,78,6,15,0,0.00,0.00,90.00,0),(741,70,47,1,190,0,0.00,0.00,190.00,0),(742,70,55,2,160,0,0.00,0.00,320.00,0),(746,58,39,1,170,0,0.00,0.00,170.00,0),(747,58,174,1,225,0,0.00,0.00,225.00,0),(748,68,99,1,150,0,0.00,0.00,150.00,0),(749,68,10,1,90,0,0.00,0.00,90.00,0),(750,59,206,1,45,0,0.00,0.00,45.00,0),(751,59,131,1,45,0,12.00,5.40,45.00,0),(752,65,174,1,225,0,0.00,0.00,225.00,0),(754,60,174,1,225,0,0.00,0.00,225.00,0),(755,72,152,1,38,0,0.00,0.00,38.00,0),(756,72,93,1,150,0,0.00,0.00,150.00,0),(757,73,166,1,140,0,0.00,0.00,140.00,0),(758,73,100,1,280,0,0.00,0.00,280.00,0),(759,73,218,1,225,0,0.00,0.00,225.00,0),(760,73,220,1,225,0,0.00,0.00,225.00,0),(761,65,65,2,30,0,0.00,0.00,60.00,0),(762,65,67,4,15,0,0.00,0.00,60.00,0),(763,68,220,1,225,0,0.00,0.00,225.00,0),(764,65,65,1,30,0,0.00,0.00,30.00,0),(765,63,132,2,45,0,0.00,0.00,90.00,0),(766,63,207,2,45,0,0.00,0.00,90.00,0),(768,70,141,1,45,0,0.00,0.00,45.00,0),(769,73,220,1,225,0,0.00,0.00,225.00,0),(770,69,206,1,45,0,0.00,0.00,45.00,0),(773,60,232,1,150,0,0.00,0.00,150.00,0),(774,75,201,1,100,0,0.00,0.00,100.00,0),(775,76,65,6,30,0,0.00,0.00,180.00,0),(776,76,131,2,45,0,12.00,10.80,90.00,0),(777,76,206,1,45,0,0.00,0.00,45.00,0),(778,66,11,1,200,0,0.00,0.00,200.00,0),(779,66,20,1,190,0,0.00,0.00,190.00,0),(782,73,166,1,140,0,0.00,0.00,140.00,0),(783,73,100,1,280,0,0.00,0.00,280.00,0),(788,80,132,1,45,0,0.00,0.00,45.00,0),(789,81,217,1,225,0,0.00,0.00,225.00,0),(790,58,202,1,100,0,0.00,0.00,100.00,0),(791,53,220,1,225,0,0.00,0.00,225.00,0),(792,73,220,1,225,0,0.00,0.00,225.00,0),(799,65,220,1,225,0,0.00,0.00,225.00,0),(801,73,166,1,140,0,0.00,0.00,140.00,0),(802,79,220,1,225,0,0.00,0.00,225.00,0),(803,79,40,1,150,0,0.00,0.00,150.00,0),(804,76,131,2,45,0,12.00,10.80,90.00,0),(809,76,206,1,45,0,0.00,0.00,45.00,0),(817,74,24,1,140,0,0.00,0.00,140.00,0),(818,74,175,1,280,0,0.00,0.00,280.00,0),(819,74,14,1,100,0,0.00,0.00,100.00,0),(846,83,25,1,110,0,0.00,0.00,110.00,0),(847,83,4,1,140,0,12.00,16.80,140.00,0),(848,83,132,2,45,0,0.00,0.00,90.00,0),(849,79,220,1,225,0,0.00,0.00,225.00,0),(855,84,174,1,225,0,0.00,0.00,225.00,0),(856,84,16,1,180,0,0.00,0.00,180.00,0),(857,84,65,3,30,0,0.00,0.00,90.00,0),(858,84,98,1,250,0,0.00,0.00,250.00,0),(862,76,206,1,45,0,0.00,0.00,45.00,0),(863,76,131,2,45,0,12.00,10.80,90.00,0),(864,78,47,1,190,0,0.00,0.00,190.00,0),(865,78,137,1,20,0,0.00,0.00,20.00,0),(866,78,143,1,150,0,0.00,0.00,150.00,0),(867,78,2,1,120,0,12.00,14.40,120.00,0),(868,78,174,1,225,0,0.00,0.00,225.00,0),(870,82,38,1,155,0,0.00,0.00,155.00,0),(871,82,37,1,180,0,0.00,0.00,180.00,0),(872,82,79,1,25,0,0.00,0.00,25.00,0),(873,82,103,1,150,0,0.00,0.00,150.00,0),(874,82,217,1,225,0,0.00,0.00,225.00,0),(875,82,133,1,55,0,0.00,0.00,55.00,0),(876,82,65,4,30,0,0.00,0.00,120.00,0),(877,78,5,1,180,0,0.00,0.00,180.00,0),(878,78,174,1,225,0,0.00,0.00,225.00,0),(879,85,174,1,225,0,0.00,0.00,225.00,0),(882,86,78,1,15,0,0.00,0.00,15.00,0),(913,88,203,1,100,0,0.00,0.00,100.00,0),(914,88,202,1,100,0,0.00,0.00,100.00,0),(929,87,78,2,15,0,0.00,0.00,30.00,0),(930,87,65,4,30,0,0.00,0.00,120.00,0),(931,87,58,4,10,0,0.00,0.00,40.00,0),(932,87,37,1,180,0,0.00,0.00,180.00,0),(933,87,47,1,190,0,0.00,0.00,190.00,0),(935,87,78,1,15,0,0.00,0.00,15.00,0),(942,62,202,1,100,0,0.00,0.00,100.00,0),(943,62,220,2,225,0,0.00,0.00,450.00,0),(944,62,40,1,150,0,0.00,0.00,150.00,0),(945,89,220,1,225,0,0.00,0.00,225.00,0),(946,89,22,1,250,0,0.00,0.00,250.00,0),(947,89,99,1,150,0,0.00,0.00,150.00,0),(948,62,220,2,225,0,0.00,0.00,450.00,0),(951,91,174,1,225,0,0.00,0.00,225.00,0),(977,56,58,4,10,0,0.00,0.00,40.00,0),(978,56,136,1,140,0,0.00,0.00,140.00,0),(979,56,140,1,40,0,0.00,0.00,40.00,0),(980,56,98,1,250,0,0.00,0.00,250.00,0),(981,56,6,1,180,0,0.00,0.00,180.00,0),(982,56,47,1,190,0,0.00,0.00,190.00,0),(983,56,8,1,150,0,0.00,0.00,150.00,0),(984,56,82,1,180,0,0.00,0.00,180.00,0),(985,56,37,1,180,0,0.00,0.00,180.00,0),(986,56,45,1,200,0,0.00,0.00,200.00,0),(987,56,232,1,150,0,0.00,0.00,150.00,0),(988,56,39,1,170,0,0.00,0.00,170.00,0),(989,56,60,5,30,0,0.00,0.00,150.00,0),(990,56,80,1,35,0,0.00,0.00,35.00,0),(991,56,143,2,150,0,0.00,0.00,300.00,0),(992,56,174,3,225,0,0.00,0.00,675.00,0),(993,56,133,2,55,0,0.00,0.00,110.00,0),(994,56,40,1,150,0,0.00,0.00,150.00,0),(995,56,123,3,120,0,0.00,0.00,360.00,0),(996,56,65,5,30,0,0.00,0.00,150.00,0),(997,56,207,1,45,0,0.00,0.00,45.00,0),(998,56,203,10,100,0,0.00,0.00,1000.00,0),(999,56,217,2,225,0,0.00,0.00,450.00,0),(1000,56,206,2,45,0,0.00,0.00,90.00,0),(1001,77,134,1,50,0,0.00,0.00,50.00,0),(1002,56,202,3,100,0,0.00,0.00,300.00,0),(1003,56,207,1,45,0,0.00,0.00,45.00,0),(1004,78,174,1,225,0,0.00,0.00,225.00,0),(1006,91,174,1,225,0,0.00,0.00,225.00,0),(1007,87,220,1,225,0,0.00,0.00,225.00,0),(1012,90,46,1,250,0,0.00,0.00,250.00,0),(1013,90,78,2,15,0,0.00,0.00,30.00,0),(1014,90,132,3,45,0,0.00,0.00,135.00,0),(1015,92,220,1,225,0,0.00,0.00,225.00,0),(1016,92,202,1,100,0,0.00,0.00,100.00,0),(1017,92,22,1,250,0,0.00,0.00,250.00,0),(1022,94,94,1,135,0,0.00,0.00,135.00,0),(1023,95,206,1,45,0,0.00,0.00,45.00,0),(1024,95,151,1,38,0,0.00,0.00,38.00,0),(1025,95,104,1,150,0,0.00,0.00,150.00,0),(1026,95,2,1,120,0,12.00,14.40,120.00,0),(1027,95,6,1,180,0,0.00,0.00,180.00,0),(1028,96,98,1,250,0,0.00,0.00,250.00,0),(1029,96,174,1,225,0,0.00,0.00,225.00,0),(1030,95,232,1,150,0,0.00,0.00,150.00,0),(1031,97,161,1,100,0,0.00,0.00,100.00,0),(1032,97,159,1,100,0,0.00,0.00,100.00,0),(1033,97,158,2,100,0,0.00,0.00,200.00,0),(1034,97,78,4,15,0,0.00,0.00,60.00,0),(1035,97,45,1,200,0,0.00,0.00,200.00,0),(1036,97,31,1,200,0,0.00,0.00,200.00,0),(1038,99,220,1,225,0,0.00,0.00,225.00,0),(1039,99,6,1,180,0,0.00,0.00,180.00,0),(1044,92,123,1,120,0,0.00,0.00,120.00,0),(1045,94,94,1,135,0,0.00,0.00,135.00,0),(1046,100,174,1,225,0,0.00,0.00,225.00,0),(1047,100,17,1,180,0,0.00,0.00,180.00,0),(1048,93,6,1,180,0,0.00,0.00,180.00,0),(1049,93,177,1,120,0,0.00,0.00,120.00,0),(1050,93,144,1,45,0,0.00,0.00,45.00,0),(1051,93,40,1,150,0,0.00,0.00,150.00,0),(1052,93,78,2,15,0,0.00,0.00,30.00,0),(1053,93,70,1,250,0,0.00,0.00,250.00,0),(1055,96,206,1,45,0,0.00,0.00,45.00,0),(1056,93,177,1,120,0,0.00,0.00,120.00,0),(1057,96,8,1,150,0,0.00,0.00,150.00,0),(1058,92,220,1,225,0,0.00,0.00,225.00,0),(1059,101,220,1,225,0,0.00,0.00,225.00,0),(1060,101,8,1,150,0,0.00,0.00,150.00,0),(1061,96,131,1,45,0,12.00,5.40,45.00,0),(1062,96,206,1,45,0,0.00,0.00,45.00,0),(1063,99,220,1,225,0,0.00,0.00,225.00,0),(1064,101,232,1,150,0,0.00,0.00,150.00,0),(1065,102,6,1,180,0,0.00,0.00,180.00,0),(1066,102,134,3,50,0,0.00,0.00,150.00,0),(1067,103,218,1,225,0,0.00,0.00,225.00,0),(1068,103,6,1,180,0,0.00,0.00,180.00,0),(1069,104,207,4,45,0,0.00,0.00,180.00,0),(1070,105,220,1,225,0,0.00,0.00,225.00,0),(1071,105,78,2,15,0,0.00,0.00,30.00,0),(1072,105,67,2,15,0,0.00,0.00,30.00,0),(1073,105,46,1,250,0,0.00,0.00,250.00,0),(1074,106,6,1,180,0,0.00,0.00,180.00,0),(1075,106,174,1,225,0,0.00,0.00,225.00,0),(1076,102,213,1,160,0,0.00,0.00,160.00,0),(1098,103,218,1,225,0,0.00,0.00,225.00,0),(1099,101,174,1,225,0,0.00,0.00,225.00,0),(1100,108,220,1,225,0,0.00,0.00,225.00,0),(1101,108,6,1,180,0,0.00,0.00,180.00,0),(1102,114,67,3,15,0,0.00,0.00,45.00,0),(1103,114,40,1,150,0,0.00,0.00,150.00,0),(1104,114,78,4,15,0,0.00,0.00,60.00,0),(1107,115,202,1,100,0,0.00,0.00,100.00,0),(1108,116,82,1,180,0,0.00,0.00,180.00,0),(1109,116,65,5,30,0,0.00,0.00,150.00,0),(1110,116,220,1,225,0,0.00,0.00,225.00,0),(1112,103,58,5,10,0,0.00,0.00,50.00,0),(1113,103,60,3,30,0,0.00,0.00,90.00,0),(1114,103,67,5,15,0,0.00,0.00,75.00,0),(1115,106,67,2,15,0,0.00,0.00,30.00,0),(1116,106,61,1,60,0,0.00,0.00,60.00,0),(1117,106,58,2,10,0,0.00,0.00,20.00,0),(1118,109,234,1,220,0,0.00,0.00,220.00,0),(1119,109,10,1,90,0,0.00,0.00,90.00,0),(1121,114,207,1,45,0,0.00,0.00,45.00,0),(1122,114,78,1,15,0,0.00,0.00,15.00,0),(1123,114,207,1,45,0,0.00,0.00,45.00,0),(1125,112,24,1,140,0,0.00,0.00,140.00,0),(1126,103,218,1,225,0,0.00,0.00,225.00,0),(1127,117,2,1,120,0,12.00,14.40,120.00,0),(1128,117,202,1,100,0,0.00,0.00,100.00,0),(1129,117,174,1,225,0,0.00,0.00,225.00,0),(1133,113,182,1,40,0,0.00,0.00,40.00,0),(1134,113,181,1,40,0,0.00,0.00,40.00,0),(1135,113,175,1,280,0,0.00,0.00,280.00,0),(1138,111,217,1,225,0,0.00,0.00,225.00,0),(1139,111,8,1,150,0,0.00,0.00,150.00,0),(1140,111,20,1,190,0,0.00,0.00,190.00,0),(1141,110,132,4,45,0,0.00,0.00,180.00,0),(1143,118,40,1,150,0,0.00,0.00,150.00,0),(1144,118,202,1,100,0,0.00,0.00,100.00,0),(1145,118,220,1,225,0,0.00,0.00,225.00,0),(1146,119,78,4,15,0,0.00,0.00,60.00,0),(1147,119,45,1,200,0,0.00,0.00,200.00,0),(1148,119,47,1,190,0,0.00,0.00,190.00,0),(1149,119,217,1,225,0,0.00,0.00,225.00,0),(1150,119,183,1,80,0,0.00,0.00,80.00,0),(1151,119,183,1,80,0,0.00,0.00,80.00,0),(1152,120,220,1,225,0,0.00,0.00,225.00,0),(1153,120,104,1,150,0,0.00,0.00,150.00,0),(1154,120,11,1,200,0,0.00,0.00,200.00,0),(1159,122,40,1,150,0,0.00,0.00,150.00,0),(1160,122,37,1,180,0,0.00,0.00,180.00,0),(1161,122,152,2,38,0,0.00,0.00,76.00,0),(1162,122,206,1,45,0,0.00,0.00,45.00,0),(1163,122,79,2,25,0,0.00,0.00,50.00,0),(1164,122,206,1,45,0,0.00,0.00,45.00,0),(1165,119,206,1,45,0,0.00,0.00,45.00,0),(1166,121,47,1,190,0,0.00,0.00,190.00,0),(1167,121,2,1,120,0,12.00,14.40,120.00,0),(1168,121,219,1,225,0,0.00,0.00,225.00,0),(1169,121,164,1,90,0,0.00,0.00,90.00,0),(1170,123,132,1,45,0,0.00,0.00,45.00,0),(1171,123,141,2,45,0,0.00,0.00,90.00,0),(1172,123,158,2,100,0,0.00,0.00,200.00,0),(1173,123,82,1,180,0,0.00,0.00,180.00,0),(1174,123,6,1,180,0,0.00,0.00,180.00,0),(1175,123,11,1,200,0,0.00,0.00,200.00,0),(1176,123,43,1,380,0,0.00,0.00,380.00,0),(1177,123,232,1,150,0,0.00,0.00,150.00,0),(1178,124,175,1,280,0,0.00,0.00,280.00,0),(1179,124,73,1,250,0,0.00,0.00,250.00,0),(1180,122,133,1,55,0,0.00,0.00,55.00,0),(1181,125,11,2,200,0,0.00,0.00,400.00,0),(1182,125,2,2,120,0,12.00,28.80,240.00,0),(1183,126,176,2,120,0,0.00,0.00,240.00,0),(1184,126,177,2,120,0,0.00,0.00,240.00,0),(1185,127,166,2,140,0,0.00,0.00,280.00,0),(1186,127,167,3,130,0,0.00,0.00,390.00,0),(1187,128,186,4,1800,0,0.00,0.00,7200.00,0),(1188,129,163,2,90,0,0.00,0.00,180.00,0),(1189,129,164,2,90,0,0.00,0.00,180.00,0),(1190,130,172,2,90,0,0.00,0.00,180.00,0),(1191,130,163,2,90,0,0.00,0.00,180.00,0),(1192,131,234,1,220,0,0.00,0.00,220.00,0),(1193,131,174,1,225,0,0.00,0.00,225.00,0),(1194,132,186,3,1800,0,0.00,0.00,5400.00,0),(1195,133,27,3,300,0,0.00,0.00,900.00,0),(1196,134,171,2,90,0,0.00,0.00,180.00,0),(1197,134,164,2,90,0,0.00,0.00,180.00,0),(1202,135,19,1,130,0,0.00,0.00,130.00,0),(1203,135,194,1,80,0,0.00,0.00,80.00,0),(1204,135,127,3,210,0,0.00,0.00,630.00,0),(1205,135,43,1,380,0,0.00,0.00,380.00,0),(1206,136,10,2,90,0,0.00,0.00,180.00,0),(1207,136,4,3,140,0,12.00,50.40,420.00,0),(1208,137,175,1,280,0,0.00,0.00,280.00,0),(1209,137,46,1,250,0,0.00,0.00,250.00,0),(1210,137,47,1,190,0,0.00,0.00,190.00,0),(1211,137,78,3,15,0,0.00,0.00,45.00,0),(1212,137,67,3,15,0,0.00,0.00,45.00,0),(1213,137,58,3,10,0,0.00,0.00,30.00,0),(1214,137,139,1,120,0,0.00,0.00,120.00,0),(1215,138,218,1,225,0,0.00,0.00,225.00,0),(1216,138,10,2,90,0,0.00,0.00,180.00,0),(1217,138,7,2,180,0,0.00,0.00,360.00,0),(1218,138,5,2,180,0,0.00,0.00,360.00,0),(1219,138,2,2,120,0,12.00,28.80,240.00,0),(1220,139,25,1,110,0,0.00,0.00,110.00,0),(1221,139,22,1,250,0,0.00,0.00,250.00,0),(1222,139,23,1,110,0,0.00,0.00,110.00,0),(1223,140,170,2,90,0,0.00,0.00,180.00,0),(1224,140,169,2,100,0,0.00,0.00,200.00,0),(1225,140,163,2,90,0,0.00,0.00,180.00,0),(1226,140,43,1,380,0,0.00,0.00,380.00,0),(1227,140,139,1,120,0,0.00,0.00,120.00,0),(1228,141,141,1,45,0,0.00,0.00,45.00,0),(1229,141,194,1,80,0,0.00,0.00,80.00,0),(1230,141,11,2,200,0,0.00,0.00,400.00,0),(1231,141,1,1,35,0,0.00,0.00,35.00,0),(1232,142,4,1,140,0,12.00,16.80,140.00,0),(1233,142,2,1,120,0,12.00,14.40,120.00,0),(1234,142,98,1,250,0,0.00,0.00,250.00,0),(1235,142,133,1,55,0,0.00,0.00,55.00,0),(1236,142,146,2,40,0,0.00,0.00,80.00,0),(1237,142,143,1,150,0,0.00,0.00,150.00,0),(1238,143,10,2,90,0,0.00,0.00,180.00,0),(1239,143,4,1,140,0,12.00,16.80,140.00,0),(1240,144,206,2,45,0,0.00,0.00,90.00,0),(1241,144,207,2,45,0,0.00,0.00,90.00,0),(1242,144,131,1,45,0,12.00,5.40,45.00,0),(1246,145,174,1,225,0,0.00,0.00,225.00,0),(1247,145,218,2,225,0,0.00,0.00,450.00,0),(1248,146,143,2,150,0,0.00,0.00,300.00,0),(1249,146,137,2,20,0,0.00,0.00,40.00,0),(1250,147,174,1,225,0,0.00,0.00,225.00,0),(1251,147,10,1,90,0,0.00,0.00,90.00,0),(1252,147,7,2,180,0,0.00,0.00,360.00,0),(1253,147,4,1,140,0,12.00,16.80,140.00,0),(1254,147,1,1,35,0,0.00,0.00,35.00,0),(1255,148,175,1,280,0,0.00,0.00,280.00,0),(1256,148,143,1,150,0,0.00,0.00,150.00,0),(1257,148,141,1,45,0,0.00,0.00,45.00,0),(1258,149,1,1,35,0,0.00,0.00,35.00,0),(1259,149,158,1,100,0,0.00,0.00,100.00,0),(1260,149,234,1,220,0,0.00,0.00,220.00,0),(1261,150,139,1,120,0,0.00,0.00,120.00,0),(1262,150,217,1,225,0,0.00,0.00,225.00,0),(1263,150,195,1,80,0,0.00,0.00,80.00,0),(1264,150,82,1,180,0,0.00,0.00,180.00,0),(1265,150,85,1,205,0,0.00,0.00,205.00,0),(1266,150,21,1,160,0,0.00,0.00,160.00,0),(1267,151,65,1,30,0,0.00,0.00,30.00,0),(1268,151,61,1,60,0,0.00,0.00,60.00,0),(1269,151,127,1,210,0,0.00,0.00,210.00,0),(1270,151,36,1,170,0,0.00,0.00,170.00,0),(1271,151,213,1,160,0,0.00,0.00,160.00,0),(1272,151,131,1,45,0,12.00,5.40,45.00,0),(1281,152,4,2,140,0,12.00,33.60,280.00,0),(1282,155,5,3,180,0,0.00,0.00,540.00,0),(1283,155,131,3,45,0,12.00,16.20,135.00,0),(1284,156,67,3,15,0,0.00,0.00,45.00,0),(1285,156,127,2,210,0,0.00,0.00,420.00,0),(1286,156,131,3,45,0,12.00,16.20,135.00,0),(1292,152,4,3,140,0,12.00,50.40,420.00,0),(1650,177,217,1,225,0,0.00,0.00,225.00,0),(1651,183,82,1,180,0,0.00,0.00,180.00,0),(1652,183,37,1,180,0,0.00,0.00,180.00,0),(1653,183,40,1,150,0,0.00,0.00,150.00,0),(1654,174,217,1,225,0,0.00,0.00,225.00,0),(1655,182,8,1,150,0,0.00,0.00,150.00,0),(1656,174,2,1,120,0,12.00,14.40,120.00,0),(1657,174,90,1,90,0,0.00,0.00,90.00,0),(1658,180,78,1,15,0,0.00,0.00,15.00,0),(1659,180,40,1,150,0,0.00,0.00,150.00,0),(1660,180,202,1,100,0,0.00,0.00,100.00,0),(1661,180,47,1,190,0,0.00,0.00,190.00,0),(1662,180,217,1,225,0,0.00,0.00,225.00,0),(1663,180,37,1,180,0,0.00,0.00,180.00,0),(1664,182,201,1,100,0,0.00,0.00,100.00,0),(1665,172,133,1,55,0,0.00,0.00,55.00,0),(1666,175,217,1,225,0,0.00,0.00,225.00,0),(1667,175,64,3,25,0,0.00,0.00,75.00,0),(1668,180,217,1,225,0,0.00,0.00,225.00,0),(1675,173,202,1,100,0,0.00,0.00,100.00,0),(1677,184,210,1,210,0,0.00,0.00,210.00,0),(1678,184,134,2,50,0,0.00,0.00,100.00,0),(1679,184,8,1,150,0,0.00,0.00,150.00,0),(1680,184,64,2,25,0,0.00,0.00,50.00,0),(1681,184,58,4,10,0,0.00,0.00,40.00,0),(1682,184,78,1,15,0,0.00,0.00,15.00,0),(1683,174,217,1,225,0,0.00,0.00,225.00,0),(1684,175,201,1,100,0,0.00,0.00,100.00,0),(1685,177,217,1,225,0,0.00,0.00,225.00,0),(1686,182,219,1,225,0,0.00,0.00,225.00,0),(1687,185,98,1,250,0,0.00,0.00,250.00,0),(1688,175,202,1,100,0,0.00,0.00,100.00,0),(1689,184,134,1,50,0,0.00,0.00,50.00,0),(1690,185,65,5,30,0,0.00,0.00,150.00,0),(1691,180,152,1,38,0,0.00,0.00,38.00,0),(1692,180,142,3,45,0,0.00,0.00,135.00,0),(1693,175,10,1,90,0,0.00,0.00,90.00,0),(1694,175,53,1,280,0,0.00,0.00,280.00,0),(1695,175,88,1,200,0,0.00,0.00,200.00,0),(1696,175,137,1,20,0,0.00,0.00,20.00,0),(1697,175,64,1,25,0,0.00,0.00,25.00,0),(1698,175,67,1,15,0,0.00,0.00,15.00,0),(1699,175,65,1,30,0,0.00,0.00,30.00,0),(1700,175,217,1,225,0,0.00,0.00,225.00,0),(1701,182,5,1,180,0,0.00,0.00,180.00,0),(1702,177,202,1,100,0,0.00,0.00,100.00,0),(1703,185,100,1,280,0,0.00,0.00,280.00,0),(1704,185,246,1,1000,0,0.00,0.00,1000.00,0),(1705,175,25,1,110,0,0.00,0.00,110.00,0),(1706,175,217,1,225,0,0.00,0.00,225.00,0),(1707,177,206,2,45,0,0.00,0.00,90.00,0),(1708,175,15,1,150,0,0.00,0.00,150.00,0),(1709,175,144,1,45,0,0.00,0.00,45.00,0),(1710,175,141,1,45,0,0.00,0.00,45.00,0),(1718,187,174,1,225,0,0.00,0.00,225.00,0),(1719,187,24,1,140,0,0.00,0.00,140.00,0),(1720,187,98,1,250,0,0.00,0.00,250.00,0),(1722,187,232,1,150,0,0.00,0.00,150.00,0),(1723,182,174,1,225,0,0.00,0.00,225.00,0),(1724,186,41,1,270,0,0.00,0.00,270.00,0),(1725,186,47,1,190,0,0.00,0.00,190.00,0),(1726,186,55,1,160,0,0.00,0.00,160.00,0),(1727,186,104,1,150,0,0.00,0.00,150.00,0),(1728,186,78,8,15,0,0.00,0.00,120.00,0),(1729,186,80,1,35,0,0.00,0.00,35.00,0),(1730,186,218,1,225,0,0.00,0.00,225.00,0),(1733,179,99,1,150,0,0.00,0.00,150.00,0),(1734,179,123,1,120,0,0.00,0.00,120.00,0),(1735,179,202,1,100,0,0.00,0.00,100.00,0),(1736,179,97,1,120,0,0.00,0.00,120.00,0),(1737,175,123,1,120,0,0.00,0.00,120.00,0),(1738,186,78,4,15,0,0.00,0.00,60.00,0),(1739,186,97,1,120,0,0.00,0.00,120.00,0),(1740,186,218,1,225,0,0.00,0.00,225.00,0),(1741,187,10,1,90,0,0.00,0.00,90.00,0),(1742,187,25,1,110,0,0.00,0.00,110.00,0),(1743,187,176,1,120,0,0.00,0.00,120.00,0),(1744,187,220,1,225,0,0.00,0.00,225.00,0),(1745,186,6,1,180,0,0.00,0.00,180.00,0),(1746,188,6,1,180,0,0.00,0.00,180.00,0),(1747,188,217,1,225,0,0.00,0.00,225.00,0),(1748,189,206,1,45,0,0.00,0.00,45.00,0),(1749,189,207,1,45,0,0.00,0.00,45.00,0),(1750,189,3,1,150,0,0.00,0.00,150.00,0),(1751,190,202,1,100,0,0.00,0.00,100.00,0),(1752,191,207,2,45,0,0.00,0.00,90.00,0),(1753,191,212,1,180,0,0.00,0.00,180.00,0),(1754,191,207,1,45,0,0.00,0.00,45.00,0),(1764,195,5,1,180,0,0.00,0.00,180.00,0),(1765,195,132,2,45,0,0.00,0.00,90.00,0),(1773,196,217,1,225,0,0.00,0.00,225.00,0),(1774,196,22,1,250,0,0.00,0.00,250.00,0),(1776,196,232,1,150,0,0.00,0.00,150.00,0),(1778,195,220,1,225,0,0.00,0.00,225.00,0),(1779,197,220,1,225,0,0.00,0.00,225.00,0),(1780,197,55,1,160,0,0.00,0.00,160.00,0),(1781,197,40,1,150,0,0.00,0.00,150.00,0),(1782,195,3,1,150,0,0.00,0.00,150.00,0),(1783,197,203,1,100,0,0.00,0.00,100.00,0),(1796,192,207,3,45,0,0.00,0.00,135.00,0),(1797,192,206,1,45,0,0.00,0.00,45.00,0),(1798,192,65,2,30,0,0.00,0.00,60.00,0),(1799,192,58,4,10,0,0.00,0.00,40.00,0),(1800,192,79,2,25,0,0.00,0.00,50.00,0),(1801,192,47,1,190,0,0.00,0.00,190.00,0),(1808,197,220,1,225,0,0.00,0.00,225.00,0),(1809,196,132,1,45,0,0.00,0.00,45.00,0),(1812,194,99,1,150,0,0.00,0.00,150.00,0),(1813,194,174,2,225,0,0.00,0.00,450.00,0),(1814,194,98,1,250,0,0.00,0.00,250.00,0),(1815,194,78,1,15,0,0.00,0.00,15.00,0),(1816,194,52,1,280,0,0.00,0.00,280.00,0),(1817,194,158,1,100,0,0.00,0.00,100.00,0),(1840,202,132,1,45,0,0.00,0.00,45.00,0),(1841,202,131,1,45,0,12.00,5.40,45.00,0),(1843,202,132,1,45,0,0.00,0.00,45.00,0),(1845,198,230,1,120,0,0.00,0.00,120.00,0),(1846,198,229,1,120,0,0.00,0.00,120.00,0),(1847,198,223,1,150,0,0.00,0.00,150.00,0),(1848,198,106,1,120,0,0.00,0.00,120.00,0),(1849,198,47,2,190,0,0.00,0.00,380.00,0),(1850,198,53,1,280,0,0.00,0.00,280.00,0),(1851,198,37,2,180,0,0.00,0.00,360.00,0),(1852,198,78,2,15,0,0.00,0.00,30.00,0),(1853,198,220,1,225,0,0.00,0.00,225.00,0),(1854,198,213,4,160,0,0.00,0.00,640.00,0),(1855,198,143,1,150,0,0.00,0.00,150.00,0),(1858,195,174,1,225,0,0.00,0.00,225.00,0),(1859,203,62,1,60,0,0.00,0.00,60.00,0),(1860,203,131,1,45,0,12.00,5.40,45.00,0),(1861,198,78,1,15,0,0.00,0.00,15.00,0),(1862,197,132,1,45,0,0.00,0.00,45.00,0),(1863,198,6,1,180,0,0.00,0.00,180.00,0),(1864,199,39,1,170,0,0.00,0.00,170.00,0),(1865,199,67,4,15,0,0.00,0.00,60.00,0),(1866,199,174,2,225,0,0.00,0.00,450.00,0),(1867,201,202,1,100,0,0.00,0.00,100.00,0),(1868,201,229,1,120,0,0.00,0.00,120.00,0),(1869,201,218,1,225,0,0.00,0.00,225.00,0),(1870,201,40,1,150,0,0.00,0.00,150.00,0),(1871,201,55,1,160,0,0.00,0.00,160.00,0),(1872,201,47,1,190,0,0.00,0.00,190.00,0),(1873,201,78,4,15,0,0.00,0.00,60.00,0),(1874,201,49,1,200,0,0.00,0.00,200.00,0),(1875,198,213,1,160,0,0.00,0.00,160.00,0),(1876,198,220,1,225,0,0.00,0.00,225.00,0),(1877,195,67,2,15,0,0.00,0.00,30.00,0),(1878,193,36,1,170,0,0.00,0.00,170.00,0),(1879,193,47,1,190,0,0.00,0.00,190.00,0),(1880,193,78,4,15,0,0.00,0.00,60.00,0),(1881,193,2,1,120,0,12.00,14.40,120.00,0),(1882,198,213,1,160,0,0.00,0.00,160.00,0),(1886,203,131,1,45,0,12.00,5.40,45.00,0),(1887,202,131,1,45,0,12.00,5.40,45.00,0),(1888,202,132,1,45,0,0.00,0.00,45.00,0),(1889,199,210,1,210,0,0.00,0.00,210.00,0),(1890,199,78,3,15,0,0.00,0.00,45.00,0),(1891,198,213,1,160,0,0.00,0.00,160.00,0),(1892,199,132,2,45,0,0.00,0.00,90.00,0),(1893,198,213,1,160,0,0.00,0.00,160.00,0),(1894,198,213,1,160,0,0.00,0.00,160.00,0),(1895,204,220,1,225,0,0.00,0.00,225.00,0),(1896,200,202,1,100,0,0.00,0.00,100.00,0),(1897,200,162,1,120,0,0.00,0.00,120.00,0),(1898,200,134,1,50,0,0.00,0.00,50.00,0),(1899,200,67,1,15,0,0.00,0.00,15.00,0),(1900,200,58,4,10,0,0.00,0.00,40.00,0),(1901,200,61,1,60,0,0.00,0.00,60.00,0),(1902,200,80,1,35,0,0.00,0.00,35.00,0),(1903,205,213,1,160,0,0.00,0.00,160.00,0),(1904,206,207,1,45,0,0.00,0.00,45.00,0),(1905,207,218,1,225,0,0.00,0.00,225.00,0),(1906,208,132,2,45,0,0.00,0.00,90.00,0),(1907,208,132,1,45,0,0.00,0.00,45.00,0),(1908,208,86,1,130,0,0.00,0.00,130.00,0),(1910,210,50,1,280,0,0.00,0.00,280.00,0),(1911,210,78,2,15,0,0.00,0.00,30.00,0),(1916,209,96,1,130,0,0.00,0.00,130.00,0),(1925,210,207,1,45,0,0.00,0.00,45.00,0),(1926,210,207,1,45,0,0.00,0.00,45.00,0),(1927,212,174,1,225,0,0.00,0.00,225.00,0),(1928,212,47,1,190,0,0.00,0.00,190.00,0),(1929,214,220,1,225,0,0.00,0.00,225.00,0),(1930,214,20,1,190,0,0.00,0.00,190.00,0),(1931,215,8,1,150,0,0.00,0.00,150.00,0),(1932,215,220,1,225,0,0.00,0.00,225.00,0),(1933,216,133,1,55,0,0.00,0.00,55.00,0),(1936,214,220,1,225,0,0.00,0.00,225.00,0),(1942,215,66,5,25,0,0.00,0.00,125.00,0),(1943,215,58,10,10,0,0.00,0.00,100.00,0),(1944,212,4,1,140,0,12.00,16.80,140.00,0),(1956,221,220,1,225,0,0.00,0.00,225.00,0),(1957,219,42,1,200,0,0.00,0.00,200.00,0),(1958,219,58,6,10,0,0.00,0.00,60.00,0),(1959,219,66,1,25,0,0.00,0.00,25.00,0),(1960,219,64,2,25,0,0.00,0.00,50.00,0),(1961,219,78,1,15,0,0.00,0.00,15.00,0),(1962,219,207,1,45,0,0.00,0.00,45.00,0),(1963,219,134,1,50,0,0.00,0.00,50.00,0),(1964,221,57,1,150,0,0.00,0.00,150.00,0),(1965,221,25,1,110,0,0.00,0.00,110.00,0),(1966,210,207,1,45,0,0.00,0.00,45.00,0),(1967,222,133,1,55,0,0.00,0.00,55.00,0),(1968,222,206,1,45,0,0.00,0.00,45.00,0),(1969,222,4,1,140,0,12.00,16.80,140.00,0),(1971,216,133,1,55,0,0.00,0.00,55.00,0),(1972,222,133,1,55,0,0.00,0.00,55.00,0),(1975,224,58,2,10,0,0.00,0.00,20.00,0),(1978,210,61,1,60,0,0.00,0.00,60.00,0),(1979,210,65,1,30,0,0.00,0.00,30.00,0),(1980,210,207,1,45,0,0.00,0.00,45.00,0),(1981,214,220,1,225,0,0.00,0.00,225.00,0),(1982,215,220,1,225,0,0.00,0.00,225.00,0),(1983,221,217,1,225,0,0.00,0.00,225.00,0),(1990,212,15,1,150,0,0.00,0.00,150.00,0),(1991,212,20,1,190,0,0.00,0.00,190.00,0),(1996,225,65,4,30,0,0.00,0.00,120.00,0),(1999,225,52,1,280,0,0.00,0.00,280.00,0),(2000,224,67,8,15,0,0.00,0.00,120.00,0),(2002,226,6,1,180,0,0.00,0.00,180.00,0),(2003,225,78,4,15,0,0.00,0.00,60.00,0),(2004,218,43,1,380,0,0.00,0.00,380.00,0),(2005,218,37,1,180,0,0.00,0.00,180.00,0),(2006,218,162,1,120,0,0.00,0.00,120.00,0),(2013,213,207,2,45,0,0.00,0.00,90.00,0),(2014,213,41,1,270,0,0.00,0.00,270.00,0),(2015,213,78,7,15,0,0.00,0.00,105.00,0),(2016,213,64,4,25,0,0.00,0.00,100.00,0),(2017,213,53,2,280,0,0.00,0.00,560.00,0),(2018,213,47,1,190,0,0.00,0.00,190.00,0),(2019,213,220,2,225,0,0.00,0.00,450.00,0),(2020,227,217,1,225,0,0.00,0.00,225.00,0),(2021,227,98,1,250,0,0.00,0.00,250.00,0),(2022,227,47,1,190,0,0.00,0.00,190.00,0),(2023,227,8,1,150,0,0.00,0.00,150.00,0),(2024,227,78,8,15,0,0.00,0.00,120.00,0),(2025,227,37,1,180,0,0.00,0.00,180.00,0),(2026,225,143,1,150,0,0.00,0.00,150.00,0),(2027,222,206,1,45,0,0.00,0.00,45.00,0),(2028,222,133,1,55,0,0.00,0.00,55.00,0),(2029,210,207,1,45,0,0.00,0.00,45.00,0),(2031,216,206,1,45,0,0.00,0.00,45.00,0),(2032,212,247,1,100,0,0.00,0.00,100.00,0),(2033,212,174,1,225,0,0.00,0.00,225.00,0),(2035,227,47,1,190,0,0.00,0.00,190.00,0),(2039,229,71,1,250,0,0.00,0.00,250.00,0),(2040,229,65,3,30,0,0.00,0.00,90.00,0),(2041,229,78,2,15,0,0.00,0.00,30.00,0),(2042,229,40,1,150,0,0.00,0.00,150.00,0),(2043,229,122,1,80,0,0.00,0.00,80.00,0),(2044,229,132,1,45,0,0.00,0.00,45.00,0),(2045,229,144,1,45,0,0.00,0.00,45.00,0),(2047,214,220,1,225,0,0.00,0.00,225.00,0),(2049,222,133,1,55,0,0.00,0.00,55.00,0),(2051,211,64,2,25,0,0.00,0.00,50.00,0),(2052,211,6,1,180,0,0.00,0.00,180.00,0),(2053,211,220,1,225,0,0.00,0.00,225.00,0),(2062,211,67,1,15,0,0.00,0.00,15.00,0),(2063,211,67,1,15,0,0.00,0.00,15.00,0),(2064,230,220,1,225,0,0.00,0.00,225.00,0),(2065,223,3,1,150,0,0.00,0.00,150.00,0),(2066,223,220,1,225,0,0.00,0.00,225.00,0),(2067,223,217,1,225,0,0.00,0.00,225.00,0),(2068,223,8,1,150,0,0.00,0.00,150.00,0),(2069,223,122,1,80,0,0.00,0.00,80.00,0),(2070,217,234,1,220,0,0.00,0.00,220.00,0),(2071,217,47,1,190,0,0.00,0.00,190.00,0),(2072,217,210,1,210,0,0.00,0.00,210.00,0),(2073,217,82,1,180,0,0.00,0.00,180.00,0),(2074,217,217,1,225,0,0.00,0.00,225.00,0),(2075,217,6,1,180,0,0.00,0.00,180.00,0),(2076,217,71,1,250,0,0.00,0.00,250.00,0),(2082,212,174,1,225,0,0.00,0.00,225.00,0),(2083,212,247,1,100,0,0.00,0.00,100.00,0),(2084,212,5,1,180,0,0.00,0.00,180.00,0),(2085,214,6,1,180,0,0.00,0.00,180.00,0),(2086,228,6,1,180,0,0.00,0.00,180.00,0),(2087,228,10,1,90,0,0.00,0.00,90.00,0),(2088,228,4,1,140,0,12.00,16.80,140.00,0),(2089,228,41,1,270,0,0.00,0.00,270.00,0),(2090,228,78,1,15,0,0.00,0.00,15.00,0),(2091,228,220,2,225,0,0.00,0.00,450.00,0),(2092,214,220,1,225,0,0.00,0.00,225.00,0),(2093,228,220,1,225,0,0.00,0.00,225.00,0),(2094,220,174,1,225,0,0.00,0.00,225.00,0),(2095,220,11,1,200,0,0.00,0.00,200.00,0),(2096,220,64,4,25,0,0.00,0.00,100.00,0),(2097,220,220,1,225,0,0.00,0.00,225.00,0),(2098,220,25,1,110,0,0.00,0.00,110.00,0),(2099,214,220,1,225,0,0.00,0.00,225.00,0),(2100,214,71,1,250,0,0.00,0.00,250.00,0),(2101,212,174,1,225,0,0.00,0.00,225.00,0),(2102,212,201,1,100,0,0.00,0.00,100.00,0),(2104,232,217,1,225,0,0.00,0.00,225.00,0),(2111,212,247,1,100,0,0.00,0.00,100.00,0),(2113,212,202,1,100,0,0.00,0.00,100.00,0),(2124,234,78,3,15,0,0.00,0.00,45.00,0),(2125,234,92,1,270,0,0.00,0.00,270.00,0),(2126,234,36,1,170,0,0.00,0.00,170.00,0),(2127,234,46,1,250,0,0.00,0.00,250.00,0),(2128,234,134,3,50,0,0.00,0.00,150.00,0),(2129,234,143,1,150,0,0.00,0.00,150.00,0),(2130,233,40,1,150,0,0.00,0.00,150.00,0),(2131,233,132,5,45,0,0.00,0.00,225.00,0),(2145,231,20,1,190,0,0.00,0.00,190.00,0),(2146,231,8,1,150,0,0.00,0.00,150.00,0),(2147,231,10,1,90,0,0.00,0.00,90.00,0),(2148,231,220,4,225,0,0.00,0.00,900.00,0),(2149,231,203,1,100,0,0.00,0.00,100.00,0),(2150,235,139,1,120,0,0.00,0.00,120.00,0),(2151,235,220,1,225,0,0.00,0.00,225.00,0),(2152,235,217,1,225,0,0.00,0.00,225.00,0),(2153,235,26,1,80,0,0.00,0.00,80.00,0),(2154,235,4,1,140,0,12.00,16.80,140.00,0),(2155,235,78,6,15,0,0.00,0.00,90.00,0),(2156,235,24,1,140,0,0.00,0.00,140.00,0),(2157,235,37,1,180,0,0.00,0.00,180.00,0),(2158,235,8,1,150,0,0.00,0.00,150.00,0),(2159,235,47,1,190,0,0.00,0.00,190.00,0),(2160,236,143,1,150,0,0.00,0.00,150.00,0),(2161,236,78,7,15,0,0.00,0.00,105.00,0),(2162,236,6,1,180,0,0.00,0.00,180.00,0),(2163,236,70,1,250,0,0.00,0.00,250.00,0),(2164,236,45,1,200,0,0.00,0.00,200.00,0),(2165,236,47,1,190,0,0.00,0.00,190.00,0),(2166,235,220,1,225,0,0.00,0.00,225.00,0),(2167,237,41,1,270,0,0.00,0.00,270.00,0),(2168,237,36,1,170,0,0.00,0.00,170.00,0),(2169,237,82,1,180,0,0.00,0.00,180.00,0),(2170,237,31,1,200,0,0.00,0.00,200.00,0),(2171,237,47,1,190,0,0.00,0.00,190.00,0),(2172,235,45,1,200,0,0.00,0.00,200.00,0),(2173,235,6,1,180,0,0.00,0.00,180.00,0),(2174,237,97,1,120,0,0.00,0.00,120.00,0),(2175,238,78,5,15,0,0.00,0.00,75.00,0),(2176,238,11,1,200,0,0.00,0.00,200.00,0),(2177,238,66,3,25,0,0.00,0.00,75.00,0),(2178,238,65,3,30,0,0.00,0.00,90.00,0),(2179,238,61,3,60,0,0.00,0.00,180.00,0),(2180,238,31,2,200,0,0.00,0.00,400.00,0),(2186,235,220,1,225,0,0.00,0.00,225.00,0),(2193,237,78,2,15,0,0.00,0.00,30.00,0),(2199,240,234,1,220,0,0.00,0.00,220.00,0),(2200,240,47,1,190,0,0.00,0.00,190.00,0),(2227,240,234,1,220,0,0.00,0.00,220.00,0),(2237,241,220,1,225,0,0.00,0.00,225.00,0),(2238,241,174,1,225,0,0.00,0.00,225.00,0),(2239,241,148,4,40,0,0.00,0.00,160.00,0),(2240,241,67,6,15,0,0.00,0.00,90.00,0),(2241,241,6,3,180,0,0.00,0.00,540.00,0),(2242,241,210,1,210,0,0.00,0.00,210.00,0),(2243,241,97,1,120,0,0.00,0.00,120.00,0),(2244,241,103,1,150,0,0.00,0.00,150.00,0),(2245,241,102,1,150,0,0.00,0.00,150.00,0),(2246,241,15,1,150,0,0.00,0.00,150.00,0),(2247,239,47,2,190,0,0.00,0.00,380.00,0),(2248,239,3,1,150,0,0.00,0.00,150.00,0),(2249,239,148,1,40,0,0.00,0.00,40.00,0),(2250,239,145,1,40,0,0.00,0.00,40.00,0),(2251,239,8,4,150,0,0.00,0.00,600.00,0),(2252,239,58,2,10,0,0.00,0.00,20.00,0),(2253,239,60,2,30,0,0.00,0.00,60.00,0),(2254,239,98,6,250,0,0.00,0.00,1500.00,0),(2255,239,103,2,150,0,0.00,0.00,300.00,0),(2256,239,217,5,225,0,0.00,0.00,1125.00,0),(2257,239,220,2,225,0,0.00,0.00,450.00,0),(2258,239,219,2,225,0,0.00,0.00,450.00,0),(2259,241,220,1,225,0,0.00,0.00,225.00,0),(2260,239,232,1,150,0,0.00,0.00,150.00,0),(2261,239,88,2,200,0,0.00,0.00,400.00,0),(2262,241,122,3,80,0,0.00,0.00,240.00,0),(2267,240,66,5,25,0,0.00,0.00,125.00,0),(2268,240,58,10,10,0,0.00,0.00,100.00,0),(2275,241,210,1,210,0,0.00,0.00,210.00,0),(2276,239,220,1,225,0,0.00,0.00,225.00,0),(2277,239,217,1,225,0,0.00,0.00,225.00,0),(2278,239,145,1,40,0,0.00,0.00,40.00,0),(2279,239,219,1,225,0,0.00,0.00,225.00,0),(2280,239,217,1,225,0,0.00,0.00,225.00,0),(2281,241,4,1,140,0,12.00,16.80,140.00,0),(2282,239,145,1,40,0,0.00,0.00,40.00,0),(2283,239,201,1,100,0,0.00,0.00,100.00,0),(2284,243,133,2,55,0,0.00,0.00,110.00,0),(2285,239,217,1,225,0,0.00,0.00,225.00,0),(2286,239,1,1,35,0,0.00,0.00,35.00,0),(2287,239,91,1,260,0,0.00,0.00,260.00,0),(2288,239,232,1,150,0,0.00,0.00,150.00,0),(2289,239,220,1,225,0,0.00,0.00,225.00,0),(2290,239,15,1,150,0,0.00,0.00,150.00,0),(2291,244,78,6,15,0,0.00,0.00,90.00,0),(2292,244,25,1,110,0,0.00,0.00,110.00,0),(2293,244,41,1,270,0,0.00,0.00,270.00,0),(2296,239,219,1,225,0,0.00,0.00,225.00,0),(2297,239,217,1,225,0,0.00,0.00,225.00,0),(2298,239,8,1,150,0,0.00,0.00,150.00,0),(2300,245,234,1,220,0,0.00,0.00,220.00,0),(2301,245,3,1,150,0,0.00,0.00,150.00,0),(2302,245,20,1,190,0,0.00,0.00,190.00,0),(2303,239,6,1,180,0,0.00,0.00,180.00,0),(2304,246,217,1,225,0,0.00,0.00,225.00,0),(2305,246,174,1,225,0,0.00,0.00,225.00,0),(2306,239,217,1,225,0,0.00,0.00,225.00,0),(2307,239,132,1,45,0,0.00,0.00,45.00,0),(2308,246,6,1,180,0,0.00,0.00,180.00,0),(2309,239,131,1,45,0,12.00,5.40,45.00,0),(2310,246,202,1,100,0,0.00,0.00,100.00,0),(2311,247,220,1,225,0,0.00,0.00,225.00,0),(2312,239,6,1,180,0,0.00,0.00,180.00,0),(2313,248,220,1,225,0,0.00,0.00,225.00,0),(2316,248,6,1,180,0,0.00,0.00,180.00,0),(2317,241,132,2,45,0,0.00,0.00,90.00,0),(2318,239,220,1,225,0,0.00,0.00,225.00,0),(2319,239,8,1,150,0,0.00,0.00,150.00,0),(2323,239,47,1,190,0,0.00,0.00,190.00,0),(2324,239,137,1,20,0,0.00,0.00,20.00,0),(2327,251,14,1,100,0,0.00,0.00,100.00,0),(2328,251,220,1,225,0,0.00,0.00,225.00,0),(2329,251,16,1,180,0,0.00,0.00,180.00,0),(2339,248,15,1,150,0,0.00,0.00,150.00,0),(2340,248,40,1,150,0,0.00,0.00,150.00,0),(2341,239,232,1,150,0,0.00,0.00,150.00,0),(2347,254,79,1,25,0,0.00,0.00,25.00,0),(2348,254,37,1,180,0,0.00,0.00,180.00,0),(2349,254,47,1,190,0,0.00,0.00,190.00,0),(2350,242,6,1,180,0,0.00,0.00,180.00,0),(2351,242,134,1,50,0,0.00,0.00,50.00,0),(2352,242,220,2,225,0,0.00,0.00,450.00,0),(2353,242,78,4,15,0,0.00,0.00,60.00,0),(2354,242,210,1,210,0,0.00,0.00,210.00,0),(2355,242,8,1,150,0,0.00,0.00,150.00,0),(2356,242,71,1,250,0,0.00,0.00,250.00,0),(2357,254,217,1,225,0,0.00,0.00,225.00,0),(2358,250,39,1,170,0,0.00,0.00,170.00,0),(2359,250,22,1,250,0,0.00,0.00,250.00,0),(2360,250,132,2,45,0,0.00,0.00,90.00,0),(2361,250,134,1,50,0,0.00,0.00,50.00,0),(2362,252,181,1,40,0,0.00,0.00,40.00,0),(2363,252,42,1,200,0,0.00,0.00,200.00,0),(2364,252,78,4,15,0,0.00,0.00,60.00,0),(2365,252,47,1,190,0,0.00,0.00,190.00,0),(2366,252,218,1,225,0,0.00,0.00,225.00,0),(2367,250,132,1,45,0,0.00,0.00,45.00,0),(2368,255,220,1,225,0,0.00,0.00,225.00,0),(2369,252,181,1,40,0,0.00,0.00,40.00,0),(2370,250,207,1,45,0,0.00,0.00,45.00,0),(2377,256,234,1,220,0,0.00,0.00,220.00,0),(2379,256,6,1,180,0,0.00,0.00,180.00,0),(2381,256,25,1,110,0,0.00,0.00,110.00,0),(2383,255,15,1,150,0,0.00,0.00,150.00,0),(2384,255,11,1,200,0,0.00,0.00,200.00,0),(2385,251,220,1,225,0,0.00,0.00,225.00,0),(2387,251,220,1,225,0,0.00,0.00,225.00,0),(2388,248,220,1,225,0,0.00,0.00,225.00,0),(2389,244,207,2,45,0,0.00,0.00,90.00,0),(2396,248,134,1,50,0,0.00,0.00,50.00,0),(2397,249,127,1,210,0,0.00,0.00,210.00,0),(2398,249,202,3,100,0,0.00,0.00,300.00,0),(2399,249,201,1,100,0,0.00,0.00,100.00,0),(2400,249,6,1,180,0,0.00,0.00,180.00,0),(2401,249,234,1,220,0,0.00,0.00,220.00,0),(2402,249,220,2,225,0,0.00,0.00,450.00,0),(2410,249,40,1,150,0,0.00,0.00,150.00,0),(2411,255,201,1,100,0,0.00,0.00,100.00,0),(2419,253,134,2,50,0,0.00,0.00,100.00,0),(2420,253,131,2,45,0,12.00,10.80,90.00,0),(2421,253,47,1,190,0,0.00,0.00,190.00,0),(2422,253,6,1,180,0,0.00,0.00,180.00,0),(2423,253,234,2,220,0,0.00,0.00,440.00,0),(2424,253,175,1,280,0,0.00,0.00,280.00,0),(2425,253,202,1,100,0,0.00,0.00,100.00,0),(2426,253,133,3,55,0,0.00,0.00,165.00,0),(2427,253,134,3,50,0,0.00,0.00,150.00,0),(2428,255,132,3,45,0,0.00,0.00,135.00,0),(2429,257,20,1,190,0,0.00,0.00,190.00,0),(2430,257,88,1,200,0,0.00,0.00,200.00,0),(2431,257,206,1,45,0,0.00,0.00,45.00,0),(2432,257,152,1,38,0,0.00,0.00,38.00,0),(2433,258,174,1,225,0,0.00,0.00,225.00,0),(2434,257,206,1,45,0,0.00,0.00,45.00,0),(2435,259,17,1,180,0,0.00,0.00,180.00,0),(2436,259,1,2,35,0,0.00,0.00,70.00,0),(2437,259,58,6,10,0,0.00,0.00,60.00,0),(2438,259,175,1,280,0,0.00,0.00,280.00,0),(2439,257,133,1,55,0,0.00,0.00,55.00,0),(2440,259,210,1,210,0,0.00,0.00,210.00,0),(2449,260,140,1,40,0,0.00,0.00,40.00,0),(2450,260,78,2,15,0,0.00,0.00,30.00,0),(2451,260,2,1,120,0,12.00,14.40,120.00,0),(2452,260,49,1,200,0,0.00,0.00,200.00,0),(2453,260,137,1,20,0,0.00,0.00,20.00,0),(2454,257,67,2,15,0,0.00,0.00,30.00,0),(2455,259,202,1,100,0,0.00,0.00,100.00,0),(2456,259,203,1,100,0,0.00,0.00,100.00,0),(2457,261,234,1,220,0,0.00,0.00,220.00,0),(2458,261,4,1,140,0,12.00,16.80,140.00,0),(2459,257,133,1,55,0,0.00,0.00,55.00,0),(2466,262,41,2,270,0,0.00,0.00,540.00,0),(2467,262,37,2,180,0,0.00,0.00,360.00,0),(2468,262,46,2,250,0,0.00,0.00,500.00,0),(2469,262,47,2,190,0,0.00,0.00,380.00,0),(2470,262,82,3,180,0,0.00,0.00,540.00,0),(2478,257,206,1,45,0,0.00,0.00,45.00,0),(2479,257,133,1,55,0,0.00,0.00,55.00,0),(2480,263,133,2,55,0,0.00,0.00,110.00,0),(2481,263,64,2,25,0,0.00,0.00,50.00,0),(2482,263,61,1,60,0,0.00,0.00,60.00,0),(2483,263,66,2,25,0,0.00,0.00,50.00,0),(2484,263,11,1,200,0,0.00,0.00,200.00,0),(2485,263,78,1,15,0,0.00,0.00,15.00,0),(2486,263,138,1,28,0,0.00,0.00,28.00,0),(2487,263,232,1,150,0,0.00,0.00,150.00,0),(2491,257,2,1,120,0,12.00,14.40,120.00,0),(2492,257,67,1,15,0,0.00,0.00,15.00,0),(2493,263,133,2,55,0,0.00,0.00,110.00,0),(2494,265,47,1,190,0,0.00,0.00,190.00,0),(2495,265,17,2,180,0,0.00,0.00,360.00,0),(2496,265,174,1,225,0,0.00,0.00,225.00,0),(2499,267,40,1,150,0,0.00,0.00,150.00,0),(2500,267,174,1,225,0,0.00,0.00,225.00,0),(2504,264,6,1,180,0,0.00,0.00,180.00,0),(2505,264,136,1,140,0,0.00,0.00,140.00,0),(2506,268,220,1,225,0,0.00,0.00,225.00,0),(2507,268,8,1,150,0,0.00,0.00,150.00,0),(2508,267,174,1,225,0,0.00,0.00,225.00,0),(2509,269,150,1,40,0,0.00,0.00,40.00,0),(2510,269,145,3,40,0,0.00,0.00,120.00,0),(2511,269,229,2,120,0,0.00,0.00,240.00,0),(2512,269,94,1,135,0,0.00,0.00,135.00,0),(2513,269,64,6,25,0,0.00,0.00,150.00,0),(2514,269,94,1,135,0,0.00,0.00,135.00,0),(2516,270,174,1,225,0,0.00,0.00,225.00,0),(2517,270,232,1,150,0,0.00,0.00,150.00,0),(2518,270,99,1,150,0,0.00,0.00,150.00,0),(2519,269,145,1,40,0,0.00,0.00,40.00,0),(2520,266,24,1,140,0,0.00,0.00,140.00,0),(2521,266,220,1,225,0,0.00,0.00,225.00,0),(2522,266,167,1,130,0,0.00,0.00,130.00,0),(2523,268,132,1,45,0,0.00,0.00,45.00,0),(2529,157,4,4,140,0,12.00,67.20,560.00,0),(2530,158,137,1,20,0,0.00,0.00,20.00,0),(2531,158,176,2,120,0,0.00,0.00,240.00,0),(2532,158,188,1,2400,0,0.00,0.00,2400.00,0),(2536,159,98,1,250,0,0.00,0.00,250.00,0),(2537,159,2,1,120,0,12.00,14.40,120.00,0);
/*!40000 ALTER TABLE `pos_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_invoice_items_ajax`
--

DROP TABLE IF EXISTS `pos_invoice_items_ajax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_invoice_items_ajax` (
  `pos_invoice_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pos_qty` int(20) DEFAULT NULL,
  `pos_price` decimal(11,0) DEFAULT NULL,
  `pos_discount` decimal(11,0) DEFAULT NULL,
  `tax_rate` decimal(11,2) DEFAULT NULL,
  `tax_amount` decimal(11,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `grand_total` decimal(20,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pos_invoice_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_invoice_items_ajax`
--

LOCK TABLES `pos_invoice_items_ajax` WRITE;
/*!40000 ALTER TABLE `pos_invoice_items_ajax` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_invoice_items_ajax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_invoice_servers`
--

DROP TABLE IF EXISTS `pos_invoice_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_invoice_servers` (
  `pos_invoice_server_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_invoice_id` int(11) NOT NULL,
  `pos_invoice_items_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  PRIMARY KEY (`pos_invoice_server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2801 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_invoice_servers`
--

LOCK TABLES `pos_invoice_servers` WRITE;
/*!40000 ALTER TABLE `pos_invoice_servers` DISABLE KEYS */;
INSERT INTO `pos_invoice_servers` VALUES (1,48,579,3),(2,49,580,3),(3,50,581,3),(4,50,582,3),(5,51,583,3),(6,48,584,3),(7,48,585,3),(8,51,586,4),(9,51,587,4),(10,51,588,4),(11,51,589,4),(12,48,590,3),(13,48,591,3),(14,48,592,3),(15,52,593,1),(16,53,594,1),(17,53,595,1),(18,53,596,1),(19,53,597,1),(20,53,598,1),(21,53,599,1),(22,53,600,1),(23,53,601,1),(24,53,602,1),(25,51,603,3),(26,53,604,1),(27,54,605,4),(28,54,606,4),(29,54,607,4),(30,54,608,4),(31,54,609,4),(32,54,610,4),(33,54,611,4),(34,54,612,4),(35,55,613,5),(36,55,614,5),(37,55,615,5),(38,51,616,5),(39,56,617,1),(40,56,618,1),(41,56,619,1),(42,56,620,1),(43,56,621,1),(44,56,622,1),(45,56,623,1),(46,56,624,1),(47,55,625,5),(48,55,626,5),(49,55,627,5),(50,51,628,3),(51,53,629,1),(52,53,630,5),(53,55,631,5),(54,55,632,5),(55,55,633,5),(56,55,634,5),(57,55,635,5),(58,56,636,3),(59,51,637,1),(60,51,638,1),(61,51,639,1),(62,53,640,5),(63,51,641,1),(64,51,641,3),(65,51,641,4),(66,51,641,5),(67,51,642,1),(68,51,642,3),(69,51,642,4),(70,51,642,5),(71,51,643,1),(72,51,643,3),(73,51,643,4),(74,51,643,5),(75,51,644,1),(76,51,644,3),(77,51,644,4),(78,51,644,5),(79,51,645,1),(80,51,645,3),(81,51,645,4),(82,51,645,5),(83,51,646,1),(84,51,646,3),(85,51,646,4),(86,51,646,5),(87,51,647,1),(88,51,647,3),(89,51,647,4),(90,51,647,5),(91,51,648,1),(92,51,648,3),(93,51,648,4),(94,51,648,5),(95,51,649,1),(96,51,649,3),(97,51,649,4),(98,51,649,5),(99,56,650,3),(100,57,651,3),(101,57,652,3),(102,57,653,3),(103,51,654,1),(104,51,654,3),(105,51,654,4),(106,51,654,5),(107,51,655,1),(108,51,655,3),(109,51,655,4),(110,51,655,5),(111,51,656,1),(112,51,656,3),(113,51,656,4),(114,51,656,5),(115,51,657,1),(116,51,657,3),(117,51,657,4),(118,51,657,5),(119,51,658,1),(120,51,658,3),(121,51,658,4),(122,51,658,5),(123,51,659,1),(124,51,659,3),(125,51,659,4),(126,51,659,5),(127,51,660,1),(128,51,660,3),(129,51,660,4),(130,51,660,5),(131,51,661,1),(132,51,661,3),(133,51,661,4),(134,51,661,5),(135,51,662,1),(136,51,662,3),(137,51,662,4),(138,51,662,5),(139,55,663,1),(140,55,664,5),(141,55,665,1),(142,58,666,1),(143,58,667,1),(144,54,668,3),(145,56,669,1),(146,59,670,5),(147,55,671,5),(148,51,672,4),(149,51,673,4),(150,51,674,4),(151,56,675,1),(152,51,676,1),(153,51,676,3),(154,51,676,4),(155,51,676,5),(156,51,677,1),(157,51,677,3),(158,51,677,4),(159,51,677,5),(160,51,678,1),(161,51,678,3),(162,51,678,4),(163,51,678,5),(164,51,679,1),(165,51,679,3),(166,51,679,4),(167,51,679,5),(168,51,680,1),(169,51,680,3),(170,51,680,4),(171,51,680,5),(172,51,681,1),(173,51,681,3),(174,51,681,4),(175,51,681,5),(176,51,682,1),(177,51,682,3),(178,51,682,4),(179,51,682,5),(180,51,683,1),(181,51,683,3),(182,51,683,4),(183,51,683,5),(184,51,684,1),(185,51,684,3),(186,51,684,4),(187,51,684,5),(188,51,685,1),(189,51,685,3),(190,51,685,4),(191,51,685,5),(192,58,686,1),(193,53,687,3),(194,60,688,1),(195,60,689,1),(196,60,690,1),(197,60,691,1),(198,54,692,1),(199,54,693,1),(200,54,694,1),(201,55,695,4),(202,61,696,1),(203,61,697,1),(204,62,698,1),(205,62,699,1),(206,56,700,1),(207,63,701,1),(208,59,702,5),(209,56,703,1),(210,57,704,6),(211,53,705,5),(212,53,706,5),(213,53,707,5),(214,60,708,1),(215,63,709,1),(216,63,710,1),(217,64,711,1),(218,64,712,1),(219,64,713,1),(220,65,714,6),(221,65,715,6),(222,63,716,3),(223,63,717,5),(224,57,718,4),(225,59,719,5),(226,66,720,4),(227,66,721,4),(228,66,722,4),(229,66,723,4),(230,67,724,4),(231,67,725,4),(232,67,726,4),(233,67,727,4),(234,60,728,5),(235,56,729,5),(236,56,730,5),(237,68,731,1),(238,59,732,5),(239,66,733,1),(240,65,734,6),(241,65,735,6),(242,57,736,1),(243,57,737,1),(244,69,738,3),(245,53,739,5),(246,70,740,5),(247,70,741,5),(248,70,742,5),(249,71,743,5),(250,71,744,5),(251,71,745,5),(252,58,746,1),(253,58,747,1),(254,68,748,1),(255,68,749,1),(256,59,750,1),(257,59,751,1),(258,65,752,1),(259,62,753,1),(260,60,754,1),(261,72,755,1),(262,72,756,1),(263,73,757,5),(264,73,758,5),(265,73,759,5),(266,73,760,5),(267,65,761,6),(268,65,762,6),(269,68,763,1),(270,65,764,4),(271,63,765,3),(272,63,766,3),(273,62,767,5),(274,70,768,5),(275,73,769,5),(276,69,770,1),(277,74,771,5),(278,74,772,5),(279,60,773,5),(280,75,774,5),(281,76,775,6),(282,76,776,6),(283,76,777,6),(284,66,778,3),(285,66,779,3),(286,77,780,5),(287,77,781,5),(288,73,782,3),(289,73,783,5),(290,78,784,5),(291,79,785,1),(292,79,786,1),(293,78,787,1),(294,80,788,3),(295,81,789,3),(296,58,790,3),(297,53,791,5),(298,73,792,6),(299,82,793,1),(300,82,794,1),(301,82,795,1),(302,82,796,1),(303,82,797,1),(304,82,798,1),(305,65,799,1),(306,78,800,1),(307,73,801,3),(308,79,802,1),(309,79,803,1),(310,76,804,5),(311,56,805,1),(312,56,806,1),(313,56,807,1),(314,56,808,1),(315,76,809,1),(316,56,810,5),(317,78,811,1),(318,83,812,1),(319,83,813,1),(320,83,814,1),(321,74,815,5),(322,74,816,5),(323,74,817,5),(324,74,818,5),(325,74,819,4),(326,56,820,1),(327,56,820,3),(328,56,820,5),(329,56,821,1),(330,56,821,3),(331,56,821,5),(332,56,822,1),(333,56,822,3),(334,56,822,5),(335,56,823,1),(336,56,823,3),(337,56,823,5),(338,56,824,1),(339,56,824,3),(340,56,824,5),(341,56,825,1),(342,56,825,3),(343,56,825,5),(344,56,826,1),(345,56,826,3),(346,56,826,5),(347,56,827,1),(348,56,827,3),(349,56,827,5),(350,56,828,1),(351,56,828,3),(352,56,828,5),(353,56,829,1),(354,56,829,3),(355,56,829,5),(356,56,830,1),(357,56,830,3),(358,56,830,5),(359,56,831,1),(360,56,831,3),(361,56,831,5),(362,56,832,1),(363,56,832,3),(364,56,832,5),(365,56,833,1),(366,56,833,3),(367,56,833,5),(368,56,834,1),(369,56,834,3),(370,56,834,5),(371,56,835,1),(372,56,835,3),(373,56,835,5),(374,56,836,1),(375,56,836,3),(376,56,836,5),(377,56,837,1),(378,56,837,3),(379,56,837,5),(380,56,838,1),(381,56,838,3),(382,56,838,5),(383,82,839,1),(384,82,840,1),(385,82,841,1),(386,82,842,1),(387,82,843,1),(388,82,844,1),(389,82,845,1),(390,83,846,1),(391,83,847,1),(392,83,848,5),(393,79,849,4),(394,82,850,1),(395,82,851,1),(396,82,852,1),(397,82,853,1),(398,82,854,1),(399,84,855,1),(400,84,856,1),(401,84,857,1),(402,84,858,1),(403,56,859,1),(404,82,860,1),(405,78,861,1),(406,76,862,3),(407,76,863,3),(408,78,864,1),(409,78,864,5),(410,78,865,1),(411,78,865,5),(412,78,866,1),(413,78,866,5),(414,78,867,1),(415,78,867,5),(416,78,868,1),(417,78,868,5),(418,56,869,3),(419,82,870,1),(420,82,871,1),(421,82,872,1),(422,82,873,1),(423,82,874,1),(424,82,875,1),(425,82,876,1),(426,78,877,3),(427,78,878,3),(428,85,879,1),(429,77,880,5),(430,77,881,5),(431,86,882,5),(432,56,883,1),(433,87,884,5),(434,87,885,5),(435,87,886,5),(436,87,887,5),(437,87,888,5),(438,56,889,3),(439,56,890,1),(440,56,891,1),(441,56,892,1),(442,56,892,3),(443,56,892,5),(444,56,893,1),(445,56,893,3),(446,56,893,5),(447,56,894,1),(448,56,894,3),(449,56,894,5),(450,56,895,1),(451,56,895,3),(452,56,895,5),(453,56,896,1),(454,56,896,3),(455,56,896,5),(456,56,897,1),(457,56,897,3),(458,56,897,5),(459,56,898,1),(460,56,898,3),(461,56,898,5),(462,56,899,1),(463,56,899,3),(464,56,899,5),(465,56,900,1),(466,56,900,3),(467,56,900,5),(468,56,901,1),(469,56,901,3),(470,56,901,5),(471,56,902,1),(472,56,902,3),(473,56,902,5),(474,56,903,1),(475,56,903,3),(476,56,903,5),(477,56,904,1),(478,56,904,3),(479,56,904,5),(480,56,905,1),(481,56,905,3),(482,56,905,5),(483,56,906,1),(484,56,906,3),(485,56,906,5),(486,56,907,1),(487,56,907,3),(488,56,907,5),(489,56,908,1),(490,56,908,3),(491,56,908,5),(492,56,909,1),(493,56,909,3),(494,56,909,5),(495,56,910,1),(496,56,910,3),(497,56,910,5),(498,56,911,1),(499,56,911,3),(500,56,911,5),(501,56,912,1),(502,56,912,3),(503,56,912,5),(504,88,913,4),(505,88,914,4),(506,56,915,4),(507,89,916,1),(508,56,917,3),(509,56,918,3),(510,56,919,4),(511,56,920,3),(512,89,921,1),(513,89,922,1),(514,87,923,5),(515,87,924,5),(516,87,925,5),(517,87,926,5),(518,87,927,5),(519,87,928,1),(520,87,929,1),(521,87,929,5),(522,87,930,1),(523,87,930,5),(524,87,931,1),(525,87,931,5),(526,87,932,1),(527,87,932,5),(528,87,933,1),(529,87,933,5),(530,56,934,4),(531,87,935,1),(532,90,936,1),(533,90,937,1),(534,56,938,5),(535,89,939,1),(536,89,940,1),(537,89,941,1),(538,62,942,1),(539,62,942,5),(540,62,943,1),(541,62,943,5),(542,62,944,1),(543,62,944,5),(544,89,945,1),(545,89,946,1),(546,89,947,1),(547,62,948,1),(548,56,949,6),(549,56,950,6),(550,91,951,1),(551,56,952,1),(552,56,952,3),(553,56,952,4),(554,56,952,5),(555,56,952,6),(556,56,953,1),(557,56,953,3),(558,56,953,4),(559,56,953,5),(560,56,953,6),(561,56,954,1),(562,56,954,3),(563,56,954,4),(564,56,954,5),(565,56,954,6),(566,56,955,1),(567,56,955,3),(568,56,955,4),(569,56,955,5),(570,56,955,6),(571,56,956,1),(572,56,956,3),(573,56,956,4),(574,56,956,5),(575,56,956,6),(576,56,957,1),(577,56,957,3),(578,56,957,4),(579,56,957,5),(580,56,957,6),(581,56,958,1),(582,56,958,3),(583,56,958,4),(584,56,958,5),(585,56,958,6),(586,56,959,1),(587,56,959,3),(588,56,959,4),(589,56,959,5),(590,56,959,6),(591,56,960,1),(592,56,960,3),(593,56,960,4),(594,56,960,5),(595,56,960,6),(596,56,961,1),(597,56,961,3),(598,56,961,4),(599,56,961,5),(600,56,961,6),(601,56,962,1),(602,56,962,3),(603,56,962,4),(604,56,962,5),(605,56,962,6),(606,56,963,1),(607,56,963,3),(608,56,963,4),(609,56,963,5),(610,56,963,6),(611,56,964,1),(612,56,964,3),(613,56,964,4),(614,56,964,5),(615,56,964,6),(616,56,965,1),(617,56,965,3),(618,56,965,4),(619,56,965,5),(620,56,965,6),(621,56,966,1),(622,56,966,3),(623,56,966,4),(624,56,966,5),(625,56,966,6),(626,56,967,1),(627,56,967,3),(628,56,967,4),(629,56,967,5),(630,56,967,6),(631,56,968,1),(632,56,968,3),(633,56,968,4),(634,56,968,5),(635,56,968,6),(636,56,969,1),(637,56,969,3),(638,56,969,4),(639,56,969,5),(640,56,969,6),(641,56,970,1),(642,56,970,3),(643,56,970,4),(644,56,970,5),(645,56,970,6),(646,56,971,1),(647,56,971,3),(648,56,971,4),(649,56,971,5),(650,56,971,6),(651,56,972,1),(652,56,972,3),(653,56,972,4),(654,56,972,5),(655,56,972,6),(656,56,973,1),(657,56,973,3),(658,56,973,4),(659,56,973,5),(660,56,973,6),(661,56,974,1),(662,56,974,3),(663,56,974,4),(664,56,974,5),(665,56,974,6),(666,56,975,1),(667,56,975,3),(668,56,975,4),(669,56,975,5),(670,56,975,6),(671,56,976,1),(672,56,976,3),(673,56,976,4),(674,56,976,5),(675,56,976,6),(676,56,977,1),(677,56,977,3),(678,56,977,4),(679,56,977,5),(680,56,977,6),(681,56,978,1),(682,56,978,3),(683,56,978,4),(684,56,978,5),(685,56,978,6),(686,56,979,1),(687,56,979,3),(688,56,979,4),(689,56,979,5),(690,56,979,6),(691,56,980,1),(692,56,980,3),(693,56,980,4),(694,56,980,5),(695,56,980,6),(696,56,981,1),(697,56,981,3),(698,56,981,4),(699,56,981,5),(700,56,981,6),(701,56,982,1),(702,56,982,3),(703,56,982,4),(704,56,982,5),(705,56,982,6),(706,56,983,1),(707,56,983,3),(708,56,983,4),(709,56,983,5),(710,56,983,6),(711,56,984,1),(712,56,984,3),(713,56,984,4),(714,56,984,5),(715,56,984,6),(716,56,985,1),(717,56,985,3),(718,56,985,4),(719,56,985,5),(720,56,985,6),(721,56,986,1),(722,56,986,3),(723,56,986,4),(724,56,986,5),(725,56,986,6),(726,56,987,1),(727,56,987,3),(728,56,987,4),(729,56,987,5),(730,56,987,6),(731,56,988,1),(732,56,988,3),(733,56,988,4),(734,56,988,5),(735,56,988,6),(736,56,989,1),(737,56,989,3),(738,56,989,4),(739,56,989,5),(740,56,989,6),(741,56,990,1),(742,56,990,3),(743,56,990,4),(744,56,990,5),(745,56,990,6),(746,56,991,1),(747,56,991,3),(748,56,991,4),(749,56,991,5),(750,56,991,6),(751,56,992,1),(752,56,992,3),(753,56,992,4),(754,56,992,5),(755,56,992,6),(756,56,993,1),(757,56,993,3),(758,56,993,4),(759,56,993,5),(760,56,993,6),(761,56,994,1),(762,56,994,3),(763,56,994,4),(764,56,994,5),(765,56,994,6),(766,56,995,1),(767,56,995,3),(768,56,995,4),(769,56,995,5),(770,56,995,6),(771,56,996,1),(772,56,996,3),(773,56,996,4),(774,56,996,5),(775,56,996,6),(776,56,997,1),(777,56,997,3),(778,56,997,4),(779,56,997,5),(780,56,997,6),(781,56,998,1),(782,56,998,3),(783,56,998,4),(784,56,998,5),(785,56,998,6),(786,56,999,1),(787,56,999,3),(788,56,999,4),(789,56,999,5),(790,56,999,6),(791,56,1000,1),(792,56,1000,3),(793,56,1000,4),(794,56,1000,5),(795,56,1000,6),(796,77,1001,5),(797,56,1002,5),(798,56,1003,1),(799,78,1004,1),(800,90,1005,5),(801,91,1006,1),(802,87,1007,1),(803,90,1008,1),(804,90,1008,5),(805,90,1009,1),(806,90,1009,5),(807,90,1010,1),(808,90,1010,5),(809,90,1011,5),(810,90,1012,1),(811,90,1012,5),(812,90,1013,1),(813,90,1013,5),(814,90,1014,1),(815,90,1014,5),(816,92,1015,2),(817,92,1016,2),(818,92,1017,2),(819,93,1018,1),(820,93,1019,1),(821,93,1020,1),(822,93,1021,1),(823,94,1022,1),(824,95,1023,1),(825,95,1024,1),(826,95,1025,1),(827,95,1026,1),(828,95,1027,1),(829,96,1028,1),(830,96,1029,1),(831,95,1030,3),(832,97,1031,1),(833,97,1032,1),(834,97,1033,1),(835,97,1034,1),(836,97,1035,1),(837,97,1036,1),(838,98,1037,1),(839,99,1038,2),(840,99,1039,2),(841,93,1040,4),(842,93,1041,4),(843,100,1042,6),(844,100,1043,6),(845,92,1044,3),(846,94,1045,5),(847,100,1046,6),(848,100,1047,6),(849,93,1048,1),(850,93,1048,4),(851,93,1049,1),(852,93,1049,4),(853,93,1050,1),(854,93,1050,4),(855,93,1051,1),(856,93,1051,4),(857,93,1052,1),(858,93,1052,4),(859,93,1053,1),(860,93,1053,4),(861,98,1054,3),(862,96,1055,4),(863,93,1056,3),(864,96,1057,4),(865,92,1058,4),(866,101,1059,2),(867,101,1060,2),(868,96,1061,3),(869,96,1062,3),(870,99,1063,4),(871,101,1064,2),(872,102,1065,5),(873,102,1066,5),(874,103,1067,5),(875,103,1068,1),(876,104,1069,5),(877,105,1070,5),(878,105,1071,5),(879,105,1072,5),(880,105,1073,5),(881,106,1074,1),(882,106,1075,1),(883,102,1076,5),(884,98,1077,3),(885,98,1078,1),(886,98,1078,3),(887,98,1079,1),(888,98,1079,3),(889,98,1080,3),(890,107,1081,1),(891,108,1082,1),(892,109,1083,1),(893,108,1084,1),(894,108,1085,1),(895,108,1086,1),(896,108,1087,1),(897,110,1088,1),(898,111,1089,5),(899,111,1090,5),(900,112,1091,5),(901,111,1092,1),(902,113,1093,3),(903,109,1094,5),(904,108,1095,1),(905,108,1096,1),(906,108,1097,1),(907,103,1098,1),(908,101,1099,6),(909,108,1100,1),(910,108,1101,1),(911,114,1102,2),(912,114,1103,2),(913,114,1104,2),(914,112,1105,5),(915,111,1106,5),(916,115,1107,1),(917,116,1108,1),(918,116,1109,1),(919,116,1110,1),(920,110,1111,1),(921,103,1112,2),(922,103,1113,2),(923,103,1114,2),(924,106,1115,2),(925,106,1116,2),(926,106,1117,2),(927,109,1118,1),(928,109,1118,5),(929,109,1119,1),(930,109,1119,5),(931,113,1120,1),(932,114,1121,2),(933,114,1122,2),(934,114,1123,2),(935,113,1124,1),(936,112,1125,5),(937,103,1126,1),(938,117,1127,2),(939,117,1128,2),(940,117,1129,2),(941,118,1130,2),(942,110,1131,1),(943,118,1132,2),(944,113,1133,1),(945,113,1133,3),(946,113,1134,1),(947,113,1134,3),(948,113,1135,1),(949,113,1135,3),(950,110,1136,1),(951,110,1137,4),(952,111,1138,1),(953,111,1138,5),(954,111,1139,1),(955,111,1139,5),(956,111,1140,1),(957,111,1140,5),(958,110,1141,1),(959,110,1141,4),(960,118,1142,6),(961,118,1143,2),(962,118,1143,6),(963,118,1144,2),(964,118,1144,6),(965,118,1145,2),(966,118,1145,6),(967,119,1146,1),(968,119,1147,1),(969,119,1148,1),(970,119,1149,1),(971,119,1150,1),(972,119,1151,6),(973,120,1152,4),(974,120,1153,6),(975,120,1154,6),(976,121,1155,4),(977,121,1156,4),(978,121,1157,4),(979,121,1158,4),(980,122,1159,4),(981,122,1160,4),(982,122,1161,4),(983,122,1162,4),(984,122,1163,4),(985,122,1164,4),(986,119,1165,4),(987,121,1166,4),(988,121,1167,4),(989,121,1168,4),(990,121,1169,4),(991,123,1170,1),(992,123,1171,1),(993,123,1172,1),(994,123,1173,1),(995,123,1174,1),(996,123,1175,1),(997,123,1176,1),(998,123,1177,1),(999,124,1178,1),(1000,124,1179,2),(1001,122,1180,1),(1002,125,1181,1),(1003,125,1182,1),(1004,126,1183,1),(1005,126,1184,1),(1006,127,1185,3),(1007,127,1186,3),(1008,128,1187,4),(1009,129,1188,6),(1010,129,1189,6),(1011,130,1190,1),(1012,130,1191,1),(1013,131,1192,1),(1014,131,1193,1),(1015,132,1194,1),(1016,133,1195,1),(1017,134,1196,3),(1018,134,1197,3),(1019,135,1198,4),(1020,135,1199,4),(1021,135,1200,3),(1022,135,1201,3),(1023,135,1202,3),(1024,135,1202,4),(1025,135,1203,3),(1026,135,1203,4),(1027,135,1204,3),(1028,135,1204,4),(1029,135,1205,3),(1030,135,1205,4),(1031,136,1206,3),(1032,136,1207,3),(1033,137,1208,6),(1034,137,1209,6),(1035,137,1210,6),(1036,137,1211,6),(1037,137,1212,6),(1038,137,1213,6),(1039,137,1214,6),(1040,138,1215,4),(1041,138,1216,4),(1042,138,1217,4),(1043,138,1218,4),(1044,138,1219,4),(1045,139,1220,1),(1046,139,1221,1),(1047,139,1222,1),(1048,140,1223,1),(1049,140,1224,1),(1050,140,1225,1),(1051,140,1226,3),(1052,140,1227,3),(1053,141,1228,1),(1054,141,1229,1),(1055,141,1230,1),(1056,141,1231,1),(1057,142,1232,1),(1058,142,1233,1),(1059,142,1234,1),(1060,142,1235,1),(1061,142,1236,1),(1062,142,1237,1),(1063,143,1238,5),(1064,143,1239,5),(1065,144,1240,3),(1066,144,1241,3),(1067,144,1242,3),(1068,145,1243,5),(1069,145,1244,5),(1070,145,1245,5),(1071,145,1246,5),(1072,145,1247,5),(1073,146,1248,3),(1074,146,1249,3),(1075,147,1250,1),(1076,147,1251,1),(1077,147,1252,1),(1078,147,1253,1),(1079,147,1254,1),(1080,148,1255,1),(1081,148,1256,1),(1082,148,1257,1),(1083,149,1258,4),(1084,149,1259,4),(1085,149,1260,4),(1086,150,1261,6),(1087,150,1262,6),(1088,150,1263,6),(1089,150,1264,6),(1090,150,1265,6),(1091,150,1266,6),(1092,151,1267,1),(1093,151,1268,1),(1094,151,1269,1),(1095,151,1270,1),(1096,151,1271,1),(1097,151,1272,1),(1098,152,1273,4),(1099,152,1274,4),(1100,152,1275,4),(1101,152,1276,4),(1102,152,1277,4),(1103,152,1278,4),(1104,152,1279,4),(1105,152,1280,4),(1106,152,1281,4),(1107,155,1282,6),(1108,155,1283,6),(1109,156,1284,5),(1110,156,1285,5),(1111,156,1286,5),(1112,157,1287,3),(1113,157,1288,3),(1114,158,1289,6),(1115,158,1290,6),(1116,158,1291,3),(1117,152,1292,2),(2633,253,2415,2),(2634,253,2415,5),(2635,253,2416,1),(2636,253,2416,2),(2637,253,2416,5),(2638,253,2417,1),(2639,253,2417,2),(2640,253,2417,5),(2641,253,2418,1),(2642,253,2418,2),(2643,253,2418,5),(2644,253,2419,1),(2645,253,2419,2),(2646,253,2419,5),(2647,253,2420,1),(2648,253,2420,2),(2649,253,2420,5),(2650,253,2421,1),(2651,253,2421,2),(2652,253,2421,5),(2653,253,2422,1),(2654,253,2422,2),(2655,253,2422,5),(2656,253,2423,1),(2657,253,2423,2),(2658,253,2423,5),(2659,253,2424,1),(2660,253,2424,2),(2661,253,2424,5),(2662,253,2425,1),(2663,253,2425,2),(2664,253,2425,5),(2665,253,2426,5),(2666,253,2427,5),(2667,255,2428,2),(2668,257,2429,1),(2669,257,2430,1),(2670,257,2431,1),(2671,257,2432,1),(2672,258,2433,1),(2673,257,2434,2),(2674,259,2435,2),(2675,259,2436,2),(2676,259,2437,2),(2677,259,2438,2),(2678,257,2439,2),(2679,259,2440,2),(2680,260,2441,2),(2681,260,2442,2),(2682,260,2443,2),(2683,260,2444,2),(2684,260,2445,2),(2685,260,2446,2),(2686,260,2447,2),(2687,260,2448,2),(2688,260,2449,2),(2689,260,2450,2),(2690,260,2451,2),(2691,260,2452,2),(2692,260,2453,3),(2693,257,2454,2),(2694,259,2455,2),(2695,259,2456,1),(2696,261,2457,2),(2697,261,2458,2),(2698,257,2459,1),(2699,262,2460,2),(2700,262,2461,5),(2701,262,2462,5),(2702,262,2463,5),(2703,262,2464,5),(2704,262,2465,5),(2705,262,2466,2),(2706,262,2466,5),(2707,262,2467,2),(2708,262,2467,5),(2709,262,2468,2),(2710,262,2468,5),(2711,262,2469,2),(2712,262,2469,5),(2713,262,2470,2),(2714,262,2470,5),(2715,263,2471,1),(2716,263,2472,1),(2717,263,2473,1),(2718,263,2474,1),(2719,263,2475,1),(2720,263,2476,1),(2721,263,2477,1),(2722,257,2478,2),(2723,257,2479,2),(2724,263,2480,1),(2725,263,2481,1),(2726,263,2482,1),(2727,263,2483,1),(2728,263,2484,1),(2729,263,2485,1),(2730,263,2486,1),(2731,263,2487,2),(2732,264,2488,1),(2733,264,2489,1),(2734,264,2490,1),(2735,257,2491,2),(2736,257,2492,6),(2737,263,2493,2),(2738,265,2494,2),(2739,265,2495,2),(2740,265,2496,2),(2741,266,2497,2),(2742,266,2498,2),(2743,267,2499,2),(2744,267,2500,2),(2745,266,2501,3),(2746,264,2502,3),(2747,266,2503,3),(2748,264,2504,1),(2749,264,2504,3),(2750,264,2505,1),(2751,264,2505,3),(2752,268,2506,1),(2753,268,2507,1),(2754,267,2508,3),(2755,269,2509,3),(2756,269,2510,3),(2757,269,2511,3),(2758,269,2512,3),(2759,269,2513,3),(2760,269,2514,3),(2761,270,2515,3),(2762,270,2516,3),(2763,270,2517,3),(2764,270,2518,3),(2765,269,2519,2),(2766,266,2520,2),(2767,266,2520,3),(2768,266,2521,2),(2769,266,2521,3),(2770,266,2522,2),(2771,266,2522,3),(2772,268,2523,2),(2773,158,2524,4),(2774,158,2525,3),(2775,158,2525,4),(2776,158,2525,6),(2777,158,2526,3),(2778,158,2526,4),(2779,158,2526,6),(2780,158,2527,3),(2781,158,2527,4),(2782,158,2527,6),(2783,158,2528,3),(2784,158,2528,4),(2785,158,2528,6),(2786,157,2529,3),(2787,158,2530,3),(2788,158,2530,4),(2789,158,2530,6),(2790,158,2531,3),(2791,158,2531,4),(2792,158,2531,6),(2793,158,2532,3),(2794,158,2532,4),(2795,158,2532,6),(2796,159,2533,3),(2797,159,2534,3),(2798,159,2535,3),(2799,159,2536,3),(2800,159,2537,3);
/*!40000 ALTER TABLE `pos_invoice_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_payment`
--

DROP TABLE IF EXISTS `pos_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_payment` (
  `pos_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receipt_no` varchar(75) DEFAULT NULL,
  `amount_due` decimal(20,2) DEFAULT '0.00',
  `tendered` decimal(20,2) DEFAULT '0.00',
  `change` decimal(20,2) DEFAULT '0.00',
  `discount` decimal(20,2) DEFAULT '0.00',
  `pos_invoice_id` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `approved_by` int(11) DEFAULT '0',
  PRIMARY KEY (`pos_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_payment`
--

LOCK TABLES `pos_payment` WRITE;
/*!40000 ALTER TABLE `pos_payment` DISABLE KEYS */;
INSERT INTO `pos_payment` VALUES (1,'INV-00000001',330.00,500.00,170.00,0.00,1,'2017-10-17',1),(3,'INV-00000003',135.00,200.00,65.00,0.00,2,'2017-10-17',3),(4,'INV-00000004',800.00,1000.00,200.00,0.00,6,'2017-10-17',3),(5,'INV-00000005',375.00,400.00,25.00,0.00,4,'2017-10-17',3),(6,'INV-00000006',1195.00,1200.00,5.00,0.00,3,'2017-10-17',3),(7,'INV-00000007',995.00,1000.00,5.00,0.00,8,'2017-10-17',3),(8,'INV-00000008',90.00,100.00,10.00,0.00,13,'2017-10-17',3),(9,'INV-00000009',948.00,1000.00,52.00,0.00,10,'2017-10-17',3),(10,'INV-00000010',660.00,660.00,0.00,0.00,11,'2017-10-17',3),(11,'INV-00000011',4550.00,5000.00,450.00,0.00,7,'2017-10-17',3),(12,'INV-00000012',1150.00,2000.00,850.00,0.00,14,'2017-10-18',3),(13,'INV-00000013',405.00,500.00,95.00,0.00,16,'2017-10-18',3),(14,'INV-00000014',1000.00,1000.00,0.00,0.00,9,'2017-10-18',3),(15,'INV-00000015',90.00,100.00,10.00,0.00,18,'2017-10-18',3),(16,'INV-00000016',90.00,100.00,10.00,0.00,19,'2017-10-18',3),(17,'INV-00000017',1610.00,2000.00,390.00,0.00,12,'2017-10-18',3),(18,'INV-00000018',345.00,1000.00,655.00,0.00,17,'2017-10-18',3),(19,'INV-00000019',1070.00,1070.00,0.00,0.00,15,'2017-10-18',3),(20,'INV-00000020',270.00,270.00,0.00,0.00,21,'2017-10-18',1),(21,'INV-00000021',455.00,500.00,45.00,0.00,20,'2017-10-18',3),(22,'INV-00000022',2745.00,3000.00,255.00,0.00,22,'2017-10-18',3),(23,'INV-00000023',2035.00,2040.00,5.00,0.00,23,'2017-10-18',3),(24,'INV-00000024',360.00,1000.00,640.00,0.00,27,'2017-10-18',3),(25,'INV-00000025',915.00,950.00,35.00,0.00,26,'2017-10-18',3),(26,'INV-00000026',2690.00,2700.00,10.00,0.00,25,'2017-10-19',3),(27,'INV-00000027',465.00,500.00,35.00,0.00,24,'2017-10-19',3),(28,'INV-00000028',2120.00,2120.00,0.00,0.00,31,'2017-10-19',3),(29,'INV-00000029',570.00,1000.00,430.00,0.00,34,'2017-10-19',3),(30,'INV-00000030',705.00,1000.00,295.00,0.00,29,'2017-10-19',3),(31,'INV-00000031',1255.00,1300.00,45.00,0.00,30,'2017-10-19',3),(32,'INV-00000032',225.00,225.00,0.00,0.00,33,'2017-10-19',3),(33,'INV-00000033',45.00,100.00,55.00,0.00,35,'2017-10-19',3),(34,'INV-00000034',1810.00,1900.00,90.00,0.00,28,'2017-10-19',3),(35,'INV-00000035',660.00,1000.00,340.00,0.00,32,'2017-10-19',3),(36,'INV-00000036',620.00,700.00,80.00,0.00,36,'2017-10-19',3),(37,'INV-00000037',150.00,500.00,350.00,0.00,38,'2017-10-19',3),(38,'INV-00000038',375.00,400.00,25.00,0.00,40,'2017-10-19',3),(39,'INV-00000039',1055.00,1100.00,45.00,0.00,39,'2017-10-19',3),(40,'INV-00000040',225.00,225.00,0.00,0.00,41,'2017-10-19',3),(41,'INV-00000041',1760.00,2000.00,240.00,0.00,37,'2017-10-19',3),(42,'INV-00000042',1090.00,1100.00,10.00,0.00,42,'2017-10-20',3),(43,'INV-00000043',560.00,1000.00,440.00,0.00,47,'2017-10-20',3),(44,'INV-00000044',925.00,1000.00,75.00,0.00,43,'2017-10-20',3),(45,'INV-00000045',225.00,225.00,0.00,0.00,46,'2017-10-20',3),(46,'INV-00000046',935.00,1000.00,65.00,0.00,45,'2017-10-20',3),(47,'INV-00000047',2245.00,2300.00,55.00,0.00,44,'2017-10-20',3),(48,'INV-00000048',675.00,1000.00,325.00,0.00,52,'2017-10-20',3),(49,'INV-00000049',490.00,1000.00,510.00,0.00,48,'2017-10-20',3),(50,'INV-00000050',1268.00,2000.00,732.00,0.00,55,'2017-10-20',1),(51,'INV-00000051',2885.00,2885.00,0.00,0.00,51,'2017-10-20',1),(52,'INV-00000052',100.00,100.00,0.00,0.00,75,'2017-10-20',1),(53,'INV-00000053',1235.00,1250.00,15.00,0.00,57,'2017-10-20',3),(54,'INV-00000054',1075.00,1100.00,25.00,0.00,63,'2017-10-20',3),(55,'INV-00000055',1020.00,1020.00,0.00,0.00,58,'2017-10-20',3),(56,'INV-00000056',930.00,1000.00,70.00,0.00,65,'2017-10-20',3),(57,'INV-00000057',135.00,150.00,15.00,0.00,64,'2017-10-20',3),(58,'INV-00000058',580.00,600.00,20.00,0.00,59,'2017-10-20',3),(59,'INV-00000059',188.00,1000.00,812.00,0.00,72,'2017-10-20',3),(60,'INV-00000060',1793.00,1793.00,0.00,0.00,54,'2017-10-20',3),(61,'INV-00000061',340.00,340.00,0.00,0.00,83,'2017-10-20',3),(62,'INV-00000062',1355.00,2000.00,645.00,0.00,60,'2017-10-20',3),(63,'INV-00000063',45.00,50.00,5.00,0.00,80,'2017-10-20',3),(64,'INV-00000064',225.00,240.00,15.00,0.00,81,'2017-10-20',3),(65,'INV-00000065',1878.00,1900.00,22.00,0.00,53,'2017-10-20',3),(66,'INV-00000066',1880.00,2000.00,120.00,0.00,73,'2017-10-20',3),(67,'INV-00000067',910.00,1000.00,90.00,0.00,82,'2017-10-20',3),(68,'INV-00000068',690.00,1000.00,310.00,0.00,68,'2017-10-20',3),(69,'INV-00000069',585.00,1000.00,415.00,0.00,76,'2017-10-20',3),(70,'INV-00000070',200.00,500.00,300.00,0.00,88,'2017-10-21',3),(71,'INV-00000071',745.00,1000.00,255.00,0.00,84,'2017-10-21',3),(72,'INV-00000072',600.00,1000.00,400.00,0.00,79,'2017-10-21',3),(73,'INV-00000073',520.00,520.00,0.00,0.00,74,'2017-10-21',3),(74,'INV-00000074',1420.00,1500.00,80.00,0.00,66,'2017-10-21',3),(75,'INV-00000075',645.00,1000.00,355.00,0.00,70,'2017-10-21',3),(76,'INV-00000076',15.00,15.00,0.00,0.00,86,'2017-10-21',3),(77,'INV-00000077',90.00,100.00,10.00,0.00,69,'2017-10-21',3),(78,'INV-00000078',225.00,1000.00,775.00,0.00,85,'2017-10-21',3),(79,'INV-00000079',50.00,50.00,0.00,0.00,77,'2017-10-21',3),(80,'INV-00000080',1150.00,1150.00,0.00,0.00,62,'2017-10-21',3),(81,'INV-00000081',625.00,625.00,0.00,0.00,89,'2017-10-21',3),(82,'INV-00000082',800.00,1000.00,200.00,0.00,87,'2017-10-21',3),(83,'INV-00000083',5730.00,6000.00,270.00,0.00,56,'2017-10-21',3),(84,'INV-00000084',1335.00,1500.00,165.00,0.00,78,'2017-10-21',3),(85,'INV-00000085',415.00,1000.00,585.00,0.00,90,'2017-10-21',3),(86,'INV-00000086',450.00,450.00,0.00,0.00,91,'2017-10-21',3),(87,'INV-00000087',683.00,1000.00,317.00,0.00,95,'2017-10-21',3),(88,'INV-00000088',895.00,1000.00,105.00,0.00,93,'2017-10-21',3),(89,'INV-00000089',920.00,1000.00,80.00,0.00,92,'2017-10-21',3),(90,'INV-00000090',760.00,1000.00,240.00,0.00,96,'2017-10-21',3),(91,'INV-00000091',180.00,200.00,20.00,0.00,104,'2017-10-21',3),(92,'INV-00000092',405.00,500.00,95.00,0.00,100,'2017-10-21',3),(93,'INV-00000093',490.00,500.00,10.00,0.00,102,'2017-10-21',3),(94,'INV-00000094',405.00,500.00,95.00,0.00,108,'2017-10-21',3),(95,'INV-00000095',100.00,100.00,0.00,0.00,115,'2017-10-21',3),(96,'INV-00000096',535.00,550.00,15.00,0.00,105,'2017-10-21',3),(97,'INV-00000097',555.00,600.00,45.00,0.00,116,'2017-10-21',3),(98,'INV-00000098',630.00,630.00,0.00,0.00,99,'2017-10-21',3),(99,'INV-00000099',860.00,1000.00,140.00,0.00,97,'2017-10-21',3),(100,'INV-00000100',750.00,1000.00,250.00,0.00,101,'2017-10-21',3),(101,'INV-00000101',140.00,200.00,60.00,0.00,112,'2017-10-22',3),(102,'INV-00000102',310.00,320.00,10.00,0.00,109,'2017-10-22',3),(103,'INV-00000103',360.00,360.00,0.00,0.00,114,'2017-10-22',3),(104,'INV-00000104',180.00,500.00,320.00,0.00,110,'2017-10-22',3),(105,'INV-00000105',360.00,370.00,10.00,0.00,113,'2017-10-22',3),(106,'INV-00000106',515.00,520.00,5.00,0.00,106,'2017-10-22',3),(107,'INV-00000107',1070.00,1100.00,30.00,0.00,103,'2017-10-22',3),(108,'INV-00000108',445.00,445.00,0.00,0.00,117,'2017-10-22',3),(109,'INV-00000109',270.00,270.00,0.00,0.00,94,'2017-10-22',3),(110,'INV-00000110',565.00,600.00,35.00,0.00,111,'2017-10-22',3),(111,'INV-00000111',475.00,1000.00,525.00,0.00,118,'2017-10-22',3),(112,'INV-00000112',575.00,1000.00,425.00,0.00,120,'2017-10-22',3),(113,'INV-00000113',880.00,1000.00,120.00,0.00,119,'2017-10-22',3),(114,'INV-00000114',640.00,1000.00,360.00,0.00,125,'2017-10-22',1),(115,'INV-00000115',530.00,530.00,0.00,0.00,124,'2017-10-22',1),(116,'INV-00000116',1425.00,2000.00,575.00,0.00,123,'2017-10-22',1),(117,'INV-00000117',601.00,1000.00,399.00,0.00,122,'2017-10-22',1),(118,'INV-00000118',625.00,1000.00,375.00,0.00,121,'2017-10-22',1),(119,'INV-00000119',480.00,500.00,20.00,0.00,126,'2017-10-22',1),(120,'INV-00000120',670.00,1000.00,330.00,0.00,127,'2017-10-22',1),(121,'INV-00000121',7200.00,8000.00,800.00,0.00,128,'2017-10-22',1),(122,'INV-00000122',360.00,500.00,140.00,0.00,129,'2017-10-22',1),(123,'INV-00000123',360.00,500.00,140.00,0.00,130,'2017-10-22',1),(124,'INV-00000124',445.00,500.00,55.00,0.00,131,'2017-10-22',1),(125,'INV-00000125',5400.00,6000.00,600.00,0.00,132,'2017-10-22',1),(126,'INV-00000126',900.00,1000.00,100.00,0.00,133,'2017-10-23',1),(127,'INV-00000127',360.00,500.00,140.00,0.00,134,'2017-10-23',1),(128,'INV-00000128',1220.00,1400.00,180.00,0.00,135,'2017-10-23',1),(129,'INV-00000129',600.00,600.00,0.00,0.00,136,'2017-10-23',1),(130,'INV-00000130',470.00,500.00,30.00,0.00,139,'2017-10-24',1),(131,'INV-00000131',1365.00,1500.00,135.00,0.00,138,'2017-10-24',1),(132,'INV-00000132',960.00,1000.00,40.00,0.00,137,'2017-10-24',1),(133,'INV-00000133',320.00,500.00,180.00,0.00,143,'2017-10-24',1),(134,'INV-00000134',795.00,795.00,0.00,0.00,142,'2017-10-24',1),(135,'INV-00000135',560.00,560.00,0.00,0.00,141,'2017-10-24',1),(136,'INV-00000136',1060.00,1100.00,40.00,0.00,140,'2017-10-24',1),(137,'INV-00000137',340.00,340.00,0.00,0.00,146,'2017-10-25',1),(138,'INV-00000138',675.00,1000.00,325.00,0.00,145,'2017-10-25',1),(139,'INV-00000139',225.00,225.00,0.00,0.00,144,'2017-10-25',1),(140,'INV-00000140',675.00,675.00,0.00,0.00,151,'2017-10-26',1),(141,'INV-00000141',970.00,970.00,0.00,0.00,150,'2017-10-26',1),(142,'INV-00000142',355.00,500.00,145.00,0.00,149,'2017-10-26',1),(143,'INV-00000143',475.00,500.00,25.00,0.00,148,'2017-10-26',1),(144,'INV-00000144',850.00,1000.00,150.00,0.00,147,'2017-10-26',1),(145,'INV-00000145',560.00,560.00,0.00,0.00,157,'2017-10-30',1);
/*!40000 ALTER TABLE `pos_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_payment_details`
--

DROP TABLE IF EXISTS `pos_payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_payment_details` (
  `payment_details_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pos_payment_id` bigint(20) DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL,
  `cash_amount` int(11) DEFAULT NULL,
  `check_amount` int(11) DEFAULT NULL,
  `card_amount` int(11) DEFAULT NULL,
  `charge_amount` int(11) DEFAULT NULL,
  `cash_remarks` varchar(20) DEFAULT NULL,
  `check_bank` varchar(20) DEFAULT NULL,
  `check_address` varchar(20) DEFAULT NULL,
  `check_number` bigint(20) DEFAULT NULL,
  `check_date` date DEFAULT NULL,
  `card_type` varchar(20) DEFAULT NULL,
  `card_holder` varchar(20) DEFAULT NULL,
  `card_number` bigint(20) DEFAULT NULL,
  `approval_number` bigint(20) DEFAULT NULL,
  `card_expiry_date` date DEFAULT NULL,
  `charge_to` varchar(20) DEFAULT NULL,
  `charge_remarks` varchar(30) DEFAULT NULL,
  `charge_date` date DEFAULT NULL,
  PRIMARY KEY (`payment_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_payment_details`
--

LOCK TABLES `pos_payment_details` WRITE;
/*!40000 ALTER TABLE `pos_payment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(75) DEFAULT '',
  `product_desc` varchar(255) DEFAULT '',
  `quantity` bigint(50) DEFAULT NULL,
  `sale_cost` decimal(16,2) NOT NULL DEFAULT '0.00',
  `purchase_cost` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_rate` decimal(11,2) DEFAULT NULL,
  `markup_percent` decimal(16,2) DEFAULT '0.00',
  `minstock_order` int(11) NOT NULL DEFAULT '0',
  `maxstock_order` int(11) NOT NULL DEFAULT '0',
  `retailer_price` decimal(16,2) DEFAULT '0.00',
  `date_modified` timestamp NULL DEFAULT NULL,
  `inventory_type` varchar(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `is_tax_exempt` bit(1) DEFAULT b'0',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  `supplier_id` bigint(20) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT 'assets/img/default_product.png',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'A1','KWEK-KWEK',0,35.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d337b13e674.jpg'),(2,'A2','SALTED EGG CHIPS',0,120.00,0.00,12.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d337bb2cc15.JPG'),(3,'A3','CHICHARON BULAKLAK',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e0e2da38.JPG'),(4,'A4','GARAJE FRIES REGULAR, CHEESE, SOUR CREAM',0,140.00,0.00,12.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d337dec4761.JPG'),(5,'A5','GARAJE SPAM FRIES',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e1b13132.JPG'),(6,'A6','NACHO GARAJE',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(7,'A7','GARAJE PORK CHIPS',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e377b6e8.JPG'),(8,'A8','TOKWA\'T BABOY',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e408be7b.JPG'),(10,'A9','SIZZLING CORN WITH CHEESE',0,90.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e47df2c4.JPG'),(11,'A10','CALAMARES',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e4dc3229.JPG'),(12,'A11','CHEESY ONION RING',0,130.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(13,'A11','GARAJE DINAMITA',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/products/59d73e97a0ba5.JPG'),(14,'A12','CHEESE STICKS ',0,100.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(15,'A13','HAM AND CHEESE STICKS',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(16,'A14','FISH & FRIES ',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(17,'A15','FISH & CHIPS ',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(18,'A16','GARAJE KANGKONG CHIPS',0,110.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(19,'A17','GARAJE TOFU SISIG',0,130.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(20,'A18','CHICK AND CHIPS',0,190.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(21,'A19','CHICKEN SKIN',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(22,'A20','CRISPY CRABLETS',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(23,'A22','FRIED CHICKEN INTESTINE',0,110.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(24,'A23','SPICY TOFU',0,140.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(25,'A24','SIZZLING HOTDOG',0,110.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(26,'A25','MIXED NUTS',0,80.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(27,'B1','BULALO',0,300.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/products/59df1aeb453d4.jpg'),(28,'B2','SINIGANG NA BANGUS BELLY',0,240.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(29,'B3','SINIGANG NA HIPON',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(30,'B4','SINIGANG TUNA BELLY',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(31,'B4','SINIGANG NA BABOY ',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(32,'B5','CRAB & CORN SOUP',0,140.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(33,'C1','TANIGUE KILAW ',0,210.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(34,'C2','SISIG KILAW',0,0.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(35,'C3','SINUGLAW',0,0.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',2,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(36,'D1','PINAKBET',0,170.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',3,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(37,'D2','CHOPSEUY',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',3,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(38,'D3','SIZZLING KANGKONG A LA POBRE ',0,155.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',3,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(39,'E1','GARAJE CHICKEN SISIG ',0,170.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',4,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(40,'E2','FRIED CHICKEN HALF ',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',4,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(41,'E3','FRIED CHICKEN WHOLE',0,270.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',4,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(42,'E4','KOREAN SPICY CHICKEN',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',4,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(43,'F1','CRISPY PATA',0,380.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',5,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(44,'F2','PATATIM',0,400.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',5,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(45,'F3','LECHON KAWALI',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',5,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(46,'F4','CRISPY KARE KARE',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',5,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(47,'F5','SISIG GARAJE',0,190.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',5,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(48,'F6','BINAGOONGAN',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',5,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(49,'G1','PAPAITAN',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',6,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(50,'G2','BEEF CALDERETA',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',6,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(51,'G3','BEEF WITH BROCOLLI',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',6,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(52,'H1','GRILLED TUNA BELLY',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',7,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(53,'H2','GRILLED STUFFED PUSIT ',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',7,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(54,'H3','CHICKEN KEBAB',0,205.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',7,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(55,'H4','GRILLED LIEMPO',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',7,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(56,'H5','GRILLED HITO',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',7,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(57,'H5','GRILLED TILAPIA',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',7,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(58,'I1','CHICKEN INTESTINE',0,10.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(59,'I2','CHICKEN GIZZARD ',0,30.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(60,'I3','CHICKEN LIVER',0,30.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(61,'I4','CHICKEN BUTT',0,60.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(62,'I5','CHICKEN LEG',0,60.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(63,'I6','CHICKEN KEBAB 3PCS',0,100.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(64,'I6','PORK INTESTINE ',0,25.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(65,'I7','PORK BBQ',0,30.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(66,'I8','PORK EARS',0,25.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(67,'I9','HOTDOG',0,15.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',8,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(68,'J1','GAMBAS',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(69,'J2','GAMBAS',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(70,'J2','SEAFOOD SALPICAO',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(71,'J3','SPICY SQUID HEAD',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(72,'J4','CHILLI PRAWN',0,300.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(73,'J5','NILASING NA HIPON',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(74,'J6','TEMPURA 7PCS',0,220.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(75,'J7','BUTTERED TILAPIA W/MANGO SALSA',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(76,'J9','FRIED HITO',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(77,'J8','FRIED TILAPIA',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',9,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(78,'K1','STEAMED RICE ',0,15.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(79,'K2','GARLIC RICE',0,25.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(80,'K3','JAVA RICE ',0,35.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(81,'K4','BLACK RICE ',0,130.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(82,'K4','FRIED RICE 3-4 PERSON ',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(83,'K5','CRAB RICE ',0,210.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(84,'K6','BINAGOONG RICE ',0,185.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(85,'K7','SEAFOOD RICE ',0,205.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(86,'L1','PACO SALAD ',0,130.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',11,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(87,'L2','WHITE SALAD ',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',11,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(88,'L3','CEASAR SALAD ',0,200.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',11,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(89,'L4','TROPICAL SALAD',0,220.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',11,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(90,'L5','SLICED CUCUMBER',0,90.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',11,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(91,'M1','T-BONE STEAK ',0,260.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',12,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(92,'M2','PORTERHOUSE STEAK',0,270.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',12,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(93,'M3','BURGER STEAK',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',12,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(94,'N1','CHICKEN INASAL',0,135.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',13,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(95,'N2','PORK BBQ 2PCS',0,95.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',13,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(96,'N3','PORK SISIG/INASAL',0,130.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',13,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(97,'N4','CHICKEN SISIG/INASAL',0,120.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',13,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(98,'O1','INIHAW PLATTER',0,250.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',14,1,1,4,'\0','\0','',NULL,'assets/img/default_product.png'),(99,'O2','MIXED STREET BALL',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',14,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(100,'O3','FRITO PLATTER',0,280.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',14,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(101,'P1','PASTA ALIGUE ',0,230.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',15,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(102,'P2','CREAMY CARBONARA',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',15,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(103,'P3','PANCIT BIHON (REGULAR/SPICY)',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',15,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(104,'P4','PANCIT CANTON (REGULAR/SPICY)',0,150.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',15,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(105,'P5','SINGAPORE LAKSA',0,230.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',15,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(106,'P6','SEAFOOD RAMYUN',0,120.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',15,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(107,'Q1','GARAJE BURGER SELFIE',0,0.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',16,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(108,'Q2','CRISPY CHICKEN BURGER',0,0.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',16,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(109,'Q3','GARAJE BURGER GROUPIE',0,550.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',16,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(110,'Q4','HOME SANDWICH',0,0.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',16,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(111,'R1','TAPSILOG',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(112,'R2','TOCSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(113,'R3','LONGSILOG',0,140.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(114,'R4','HAMSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(115,'R5','BACONSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(116,'R6','HOTDOGSILOG',0,140.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(117,'R7','BURGERSILOG',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(118,'R8','DAINGSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(119,'R9','SPAMSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(120,'R10','CHICKENSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(121,'R11','FISHFILLETSILOG',0,160.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',17,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(122,'S1','VANILA ICE CREAM ',0,80.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',18,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(123,'S2','MANGO FLOAT',0,120.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',18,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(124,'S3','BANANA SPLIT ',0,155.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',18,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(125,'S4','FROZEN MAKI ',0,180.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',18,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(126,'S5','FRESH FRUIT PLATTER ',0,0.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',18,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(127,'C1','TANIGUE KINILAW',0,210.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',20,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(128,'C2','SISIG KINILAW',0,190.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',20,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(129,'C3','SINUGLAW',0,240.00,0.00,0.00,0.00,0,0,0.00,'0000-00-00 00:00:00','Inventory',20,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(130,'DA1','SML/APPLE/LEMON',0,45.00,0.00,12.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','','',NULL,'assets/img/default_product.png'),(131,'DA2','PALE PILSEN',0,45.00,0.00,12.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(132,'DA3','RED HORSE',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(133,'DA4','TIGER',0,55.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(134,'DA5','SMIRNOFF MULE',0,50.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(135,'DA6','HEINEKEN',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(136,'DA7','SOJU (JINRO)',0,140.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(137,'DB1','BOTTLED WATER',0,20.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(138,'DB2','ICED TEA',0,28.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(139,'DB3','ICED TEA PITCHER',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(140,'DB4','BLUE LEMONADE',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(141,'DB5','CUCUMBER LEMONADE',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(142,'DB6','LYCHEE LEMONADE',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(143,'DB7','LEMONADE (PITCHER)',0,150.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(144,'DB8','GARAJE CITRUS RED',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(145,'DB9','COKE (CAN)',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(146,'DB10','COKE ZERO (CAN)',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(147,'DB11','COKE LIGHT (CAN)',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(148,'DB12','ROOT BEER (CAN)',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(149,'DB13','SPRITE (CAN)',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(150,'DB14','ROYAL (CAN)',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(151,'DB15','PINEAPPLE JUICE',0,38.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(152,'DB16','MANGO JUICE',0,38.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(153,'DB17','ORANGE JUICE',0,38.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(154,'DB18','FOUR SEASON',0,38.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(155,'DB19','BLACK COFFEE',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(156,'DB20','HOT TEA (LIPTON YELLOW / GREEN)',0,35.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(157,'DB21','DINOSOUR',0,90.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',23,1,1,3,'\0','','',NULL,'assets/img/default_product.png'),(158,'DC1','MANGO SHAKE',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',24,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(159,'DC2','BUKO SHAKE',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',24,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(160,'DC3','MATCHA',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',24,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(161,'DC4','GARAJE CHOCO',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',24,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(162,'DC5','COOKIES & CREAM',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',24,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(163,'DD1','RUM AND COKE',0,90.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(164,'DD2','VODKA AND SPRITE',0,90.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(165,'DD3','MALDITA MARGARITA',0,130.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(166,'DD4','COSMOPOLITAN',0,140.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(167,'DD5','LONG ISLAND ICED TEA',0,130.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(168,'DD6','KAMIKAZE',0,110.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(169,'DD7','MOJITO GARAJE',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(170,'DD8','GARAJE SLING',0,90.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(171,'DD9','SCREWDRIVER',0,90.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(172,'DD10','TEQUILA SUNSET',0,90.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(173,'DD11','VODKA CRANBERRY',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',25,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(174,'DE1','6 LOCAL BEERS',0,225.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(175,'DE2','SMIRNOFF BUCKET',0,280.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(176,'DF1','JACK DANIELS',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(177,'DF2','JOHNNIE WALKER (BLACK)',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(178,'DF3','FUNDADOR',0,150.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(179,'DF4','CHIVAS REGAL',0,170.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(180,'DF5','HENNESY VSOP',0,170.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(181,'DF6','BACARDI GOLD',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(182,'DF7','BACARDI SUPERIOR',0,40.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(183,'DF8','JOSE CUERVO',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(184,'DF9','ABSOLUTE VODKA',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',27,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(185,'DG1','JACK DANIELS',0,2200.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(186,'DG2','JOHNNIE WALKER (BLACK)',0,1800.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(187,'DG3','FUNDADOR',0,2500.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(188,'DG4','CHIVAS REGAL',0,2400.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(189,'DG5','HENNESY VSOP',0,3100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(190,'DG6','BACARDI GOLD',0,600.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(191,'DG7','BACARDI SUPERIOR',0,600.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(192,'DG8','JOSE CUERVO',0,1400.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(193,'DG9','ABSOLUTE VODKA',0,1600.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',28,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(194,'DH1','ZOMBIE BRAIN',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(195,'DH2','D DESTROYER',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(196,'DH3','CHOCO LOCO SHOTS',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(197,'DH4','B-52',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(198,'DH5','BLOWJOB',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(199,'DH6','AK-47',0,80.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(200,'DH7','SHOOTERS SET',0,200.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',29,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(201,'DI1','MARLORO RED',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',30,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(202,'DI2','MARLBORO LIGHTS',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',30,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(203,'DI3','MARLBORO BLACK',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',30,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(204,'DA4','TIGER',0,55.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','','',NULL,'assets/img/default_product.png'),(205,'K5','EGG',0,20.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',10,1,1,2,'\0','','',NULL,'assets/img/products/59d337b13e674.jpg'),(206,'DA1','SML',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(207,'DA1','SMA',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(208,'DA8','SOJU GRAPEFRUIT',0,160.00,0.00,0.00,0.00,0,0,0.00,NULL,'Inventory',22,1,1,3,'\0','','',NULL,'assets/img/default_product.png'),(209,'DB21','RED TEA',0,45.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',24,1,1,1,'\0','','',NULL,'assets/img/default_product.png'),(210,'A21','BUFFALO WINGS 10PCS',0,210.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',1,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(211,'B6','CREAM OF MUSHROOM',0,140.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(212,'L2','GREEN SALAD',0,180.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',11,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(213,'DA8','SOJU GRAPEFRUIT',0,160.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',22,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(214,'DE3','TIGER 4+1',0,220.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',26,1,1,3,'\0','','',NULL,'assets/img/default_product.png'),(215,'B7','SINGAPORE LAKSA',0,115.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',2,1,1,2,'\0','','',NULL,'assets/img/default_product.png'),(216,'B7','SINGAPORE LAKSA',0,115.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',2,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(217,'DE1','SML BUCKET',0,225.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(218,'DE4','SMA BUCKET',0,225.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(219,'DE5','SMB BUCKET',0,225.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(220,'DE6','REDHORSE BUCKET',0,225.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(221,'R8','DAINGSILOG',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(222,'DB21','CALAMANSI JUICE',0,50.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',23,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(223,'R1','TAPSILOG',0,150.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(224,'R2','TOCSILOG',0,140.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(225,'R3','LONGSILOG',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(226,'R4','HAMSILOG',0,100.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(227,'R5','BACONSILOG',0,150.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(228,'R6','HOTDOGSILOG',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(229,'R9','SPAMSILOG',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(230,'R10','CHICKENSILOG',0,120.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(231,'R11','FISHFILLETSILOG',0,150.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',17,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(232,'Z1','Billiard',0,150.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',21,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png'),(233,'K5','EGG',0,20.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',10,1,1,2,'\0','\0','',NULL,'assets/img/default_product.png'),(234,'DE3','Tiger Bucket 4+1',0,220.00,0.00,0.00,0.00,0,0,0.00,NULL,'Non-Inventory',26,1,1,3,'\0','\0','',NULL,'assets/img/default_product.png');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promos`
--

DROP TABLE IF EXISTS `promos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promos` (
  `promo_id` int(11) NOT NULL DEFAULT '0',
  `promo_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`promo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promos`
--

LOCK TABLES `promos` WRITE;
/*!40000 ALTER TABLE `promos` DISABLE KEYS */;
/*!40000 ALTER TABLE `promos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order` (
  `purchase_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `po_no` varchar(75) DEFAULT '',
  `tax_type_id` int(11) DEFAULT '0',
  `contact_person` varchar(100) DEFAULT '',
  `remarks` varchar(155) DEFAULT '',
  `total_discount` decimal(20,2) DEFAULT '0.00',
  `total_before_tax` decimal(20,2) DEFAULT '0.00',
  `total_tax_amount` decimal(20,2) DEFAULT '0.00',
  `total_after_tax` decimal(20,2) DEFAULT '0.00',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`purchase_order_id`),
  UNIQUE KEY `po_no` (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_items` (
  `po_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `unit_id` int(11) DEFAULT '0',
  `po_price` decimal(20,2) DEFAULT '0.00',
  `po_discount` decimal(20,2) DEFAULT '0.00',
  `po_line_total_discount` decimal(20,2) DEFAULT '0.00',
  `po_tax_rate` decimal(11,2) DEFAULT '0.00',
  `po_qty` decimal(20,2) DEFAULT '0.00',
  `po_line_total` decimal(20,2) DEFAULT '0.00',
  `tax_amount` decimal(20,2) DEFAULT '0.00',
  `non_tax_amount` decimal(20,2) DEFAULT '0.00',
  PRIMARY KEY (`po_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_items`
--

LOCK TABLES `purchase_order_items` WRITE;
/*!40000 ALTER TABLE `purchase_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `ingredient_id` bigint(20) NOT NULL,
  `qty_per_order` decimal(20,2) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_deleted` datetime NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rights_links`
--

DROP TABLE IF EXISTS `rights_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rights_links` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(100) DEFAULT '',
  `link_code` varchar(20) DEFAULT NULL,
  `link_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rights_links`
--

LOCK TABLES `rights_links` WRITE;
/*!40000 ALTER TABLE `rights_links` DISABLE KEYS */;
INSERT INTO `rights_links` VALUES (1,'1','1-1','Stock Receiving'),(2,'1','1-2','Stock Issuance'),(3,'1','1-3','POS'),(4,'1','1-4','Receipts'),(5,'1','1-5','Daily Sales Report'),(6,'1','1-6','Inventory Report'),(7,'1','1-7','Categories'),(8,'1','1-8','Units'),(9,'1','1-9','Brands'),(10,'1','1-10','Discounts'),(11,'1','1-11','Cards'),(12,'1','1-12','Generics'),(13,'1','1-13','Locations'),(14,'1','1-14','Products'),(15,'1','1-15','Suppliers'),(16,'1','1-16','Customers'),(17,'1','1-17','Stocks'),(18,'1','1-18','X-Reading'),(19,'1','1-19','Z-Reading'),(20,'1','1-20','User Accounts'),(21,'1','1-21','User Rights'),(22,'1','1-22','Vendors'),(23,'1','1-23','Servers');
/*!40000 ALTER TABLE `rights_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `server_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_code` varchar(45) NOT NULL,
  `server_name` varchar(100) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` VALUES (1,'201701','MIKE',0),(2,'201702','MARTIN',0),(3,'201703','RED',0),(4,'201704','IAN',0),(5,'201705','JOSEPH',0),(6,'201706','JEFF',0),(7,'201707','CHE',0),(8,'201708','ROSE',0);
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shifts`
--

DROP TABLE IF EXISTS `shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shifts` (
  `shifts_id` int(11) NOT NULL AUTO_INCREMENT,
  `shift_start` time DEFAULT '00:00:00',
  `shift_end` time DEFAULT '00:00:00',
  PRIMARY KEY (`shifts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shifts`
--

LOCK TABLES `shifts` WRITE;
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
INSERT INTO `shifts` VALUES (1,'18:00:00','02:00:00');
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_details`
--

DROP TABLE IF EXISTS `stock_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_details` (
  `stock_details_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `reason` varchar(75) DEFAULT NULL,
  `added_stock` bigint(50) DEFAULT NULL,
  `minus_stock` bigint(50) DEFAULT NULL,
  `date_adjusted` date DEFAULT NULL,
  PRIMARY KEY (`stock_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_details`
--

LOCK TABLES `stock_details` WRITE;
/*!40000 ALTER TABLE `stock_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_photos`
--

DROP TABLE IF EXISTS `supplier_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT '0',
  `photo_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_photos`
--

LOCK TABLES `supplier_photos` WRITE;
/*!40000 ALTER TABLE `supplier_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(125) DEFAULT '',
  `supplier_name` varchar(555) DEFAULT '',
  `contact_person` varchar(255) DEFAULT '',
  `address` varchar(555) DEFAULT '',
  `email_address` varchar(100) DEFAULT '',
  `landline` varchar(100) DEFAULT '',
  `mobile_no` varchar(100) DEFAULT '',
  `photo_path` varchar(500) DEFAULT '',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tax_type_id` int(11) DEFAULT '0',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'','KITCHEN','',NULL,'garaje88grill@gmail.com',NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'\0',''),(2,'','GRILL','',NULL,'garaje88grill@gmail.com',NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'\0',''),(3,'','BAR','',NULL,'garaje88grill@gmail.com',NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'\0','');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_types`
--

DROP TABLE IF EXISTS `table_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_types` (
  `table_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`table_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_types`
--

LOCK TABLES `table_types` WRITE;
/*!40000 ALTER TABLE `table_types` DISABLE KEYS */;
INSERT INTO `table_types` VALUES (1,'Rounded'),(2,'Rectangular');
/*!40000 ALTER TABLE `table_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_type_id` int(11) DEFAULT '0',
  `table_orientation` varchar(45) DEFAULT 'Portrait',
  `table_name` varchar(45) DEFAULT NULL,
  `table_top` varchar(45) DEFAULT '0px',
  `table_bottom` varchar(45) DEFAULT '0px',
  `table_left` varchar(45) DEFAULT '0px',
  `table_right` varchar(45) DEFAULT '0px',
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,1,'Landscape','TABLE 1','0px','0px','0px','0px',0),(2,1,'Landscape','TABLE 2','0px','0px','0px','0px',0),(3,1,'Landscape','TABLE 3','0px','0px','0px','0px',0),(4,1,'Landscape','TABLE 4','0px','0px','0px','0px',0),(5,1,'Landscape','TABLE 5','0px','0px','0px','0px',0),(6,1,'Landscape','TABLE 6','0px','0px','0px','0px',0),(7,1,'Landscape','TABLE 7','0px','0px','0px','0px',0),(8,1,'Landscape','TABLE 8','0px','0px','0px','0px',0),(9,1,'Landscape','TABLE 9','0px','0px','0px','0px',0),(10,1,'Landscape','TABLE 10','0px','0px','0px','0px',0),(11,1,'Landscape','TABLE 11','0px','0px','0px','0px',0),(12,1,'Landscape','TABLE 12','0px','0px','0px','0px',0),(13,1,'Landscape','TABLE 13','0px','0px','0px','0px',0),(14,1,'Landscape','TABLE 14','0px','0px','0px','0px',0),(15,1,'Landscape','TABLE 15','0px','0px','0px','0px',0),(16,1,'Landscape','TABLE 16','0px','0px','0px','0px',0),(17,1,'Landscape','TABLE 17','0px','0px','0px','0px',0),(18,1,'Landscape','TABLE 18','0px','0px','0px','0px',0),(19,1,'Landscape','TABLE 19','0px','0px','0px','0px',0),(20,1,'Landscape','TABLE 20','0px','0px','0px','0px',0),(21,1,'Landscape','TABLE 21','0px','0px','0px','0px',0),(22,1,'Landscape','TABLE 22','0px','0px','0px','0px',0),(23,1,'Landscape','TABLE 23','0px','0px','0px','0px',0),(24,1,'Landscape','TABLE 24','0px','0px','0px','0px',0),(25,1,'Landscape','TABLE 25','0px','0px','0px','0px',0),(26,1,'Landscape','TABLE 26','0px','0px','0px','0px',0),(27,1,'Landscape','TABLE 27','0px','0px','0px','0px',0),(28,1,'Landscape','TABLE 28','0px','0px','0px','0px',0),(29,1,'Landscape','TABLE 29','0px','0px','0px','0px',0),(30,1,'Landscape','TABLE 30','0px','0px','0px','0px',0),(31,1,'Landscape','TAKE OUT 1','0px','0px','0px','0px',0),(32,1,'Landscape','TAKE OUT 2','0px','0px','0px','0px',0),(33,1,'Landscape','TAKE OUT 3','0px','0px','0px','0px',0),(34,1,'Landscape','TAKE OUT 4','0px','0px','0px','0px',0),(35,1,'Landscape','TAKE OUT 5','0px','0px','0px','0px',0),(36,1,'Landscape','TAKE OUT 6','0px','0px','0px','0px',0),(37,1,'Landscape','TAKE OUT 7','0px','0px','0px','0px',0),(38,1,'Landscape','TAKE OUT 8','0px','0px','0px','0px',0),(39,1,'Landscape','TAKE OUT 9','0px','0px','0px','0px',0),(40,1,'Landscape','TAKE OUT 10','0px','0px','0px','0px',0);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_types`
--

DROP TABLE IF EXISTS `tax_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_types` (
  `tax_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(155) DEFAULT '',
  `tax_rate` decimal(11,2) DEFAULT '0.00',
  `description` varchar(555) DEFAULT '',
  `is_default` bit(1) DEFAULT b'0',
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`tax_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_types`
--

LOCK TABLES `tax_types` WRITE;
/*!40000 ALTER TABLE `tax_types` DISABLE KEYS */;
INSERT INTO `tax_types` VALUES (1,'Non-vat',0.00,'','\0','\0'),(2,'Vatted',12.00,'','','\0');
/*!40000 ALTER TABLE `tax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `unit_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unit_code` bigint(20) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `unit_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,NULL,'KG','KILOGRAM',NULL,'0000-00-00 00:00:00','\0',''),(2,NULL,'GRAMS','GRAMS',NULL,'0000-00-00 00:00:00','\0',''),(3,NULL,'PIECES','PIECES',NULL,'0000-00-00 00:00:00','\0',''),(4,NULL,'SLICE','SLICE',NULL,'0000-00-00 00:00:00','\0',''),(5,NULL,'MILLILITER','MILLILITER',NULL,'0000-00-00 00:00:00','\0','');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_accounts` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT '',
  `user_pword` varchar(500) DEFAULT '',
  `user_lname` varchar(100) DEFAULT '',
  `user_fname` varchar(100) DEFAULT '',
  `user_mname` varchar(100) DEFAULT '',
  `user_address` varchar(155) DEFAULT '',
  `user_email` varchar(100) DEFAULT '',
  `user_mobile` varchar(100) DEFAULT '',
  `user_telephone` varchar(100) DEFAULT '',
  `user_bdate` date DEFAULT '0000-00-00',
  `user_group_id` int(11) DEFAULT '0',
  `photo_path` varchar(555) DEFAULT '',
  `file_directory` varchar(666) DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `date_deleted` int(11) DEFAULT '0',
  `modified_by_user` int(11) DEFAULT '0',
  `posted_by_user` int(11) DEFAULT '0',
  `deleted_by_user` int(11) DEFAULT '0',
  `is_online` tinyint(4) DEFAULT '0',
  `last_seen` datetime DEFAULT NULL,
  `token_id` text NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` VALUES (1,'rm9988','d033e22ae348aeb5660fc2140aec35850c4da997','MENDOZA','ROSALIE','','Angeles City','','','','2017-10-11',1,'assets/img/user/59df1b4924251.jpg',NULL,'','\0',NULL,'2017-11-10 01:30:34',0,0,0,0,1,'2017-11-10 09:30:34','983fcf21a58a7995daa199203078dce5'),(2,'jmakabali19','9752fb540f7084ff266a7a6439fe883c380cf49f','makabali','joseph','mamaril','avocado st. trinidad village, angeles city','josephmakabali@yahoo.com','09553586687','','1985-11-19',1,'assets/img/anonymous-icon.png',NULL,'','',NULL,'2017-10-19 09:59:42',0,0,0,0,0,NULL,''),(3,'che0512','c1b48657294f4e2ea22783900521162a24e9ab3d','BUNDALIAN','CHERRY ANN','M','Angeles city','','','','1987-08-12',2,'assets/img/anonymous-icon.png',NULL,'','\0',NULL,'2017-10-22 09:36:40',0,0,0,0,1,'2017-10-22 17:36:40','dcd1319c7cd1da596a401f9b1683adca'),(4,'jmakabali19','cabe7fab6e5a1352e9efd6f39c6a48e26d59e2a7','makabali','joseph','mamaril','Angeles City','josephmakabali@yahoo.com','09553586687','','1985-11-19',1,'assets/img/anonymous-icon.png',NULL,'','\0',NULL,'2017-11-07 06:45:33',0,0,0,0,1,'2017-10-19 18:02:27','e5b011b1ee055ff96646460d23d98692');
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_rights`
--

DROP TABLE IF EXISTS `user_group_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_rights` (
  `user_rights_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT '0',
  `link_code` varchar(20) DEFAULT '',
  PRIMARY KEY (`user_rights_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_rights`
--

LOCK TABLES `user_group_rights` WRITE;
/*!40000 ALTER TABLE `user_group_rights` DISABLE KEYS */;
INSERT INTO `user_group_rights` VALUES (1,1,'1-1'),(2,1,'1-2'),(3,1,'1-3'),(4,1,'1-4'),(5,1,'1-5'),(6,1,'1-6'),(7,1,'1-7'),(8,1,'1-8'),(9,1,'1-9'),(10,1,'1-10'),(11,1,'1-11'),(12,1,'1-12'),(13,1,'1-13'),(14,1,'1-14'),(15,1,'1-15'),(16,1,'1-16'),(17,1,'1-17'),(18,1,'1-18'),(19,1,'1-19'),(20,1,'1-20'),(21,1,'1-21'),(22,1,'1-22'),(23,1,'1-23'),(24,5,'1-19'),(25,1,'1-1'),(26,1,'1-2'),(27,1,'1-4'),(28,1,'1-5'),(29,1,'1-6'),(30,1,'1-7'),(31,1,'1-8'),(32,1,'1-9'),(33,1,'1-10'),(34,1,'1-11'),(35,1,'1-12'),(36,1,'1-13'),(37,1,'1-14'),(38,1,'1-15'),(39,1,'1-16'),(40,1,'1-17'),(41,1,'1-18'),(42,1,'1-19'),(43,1,'1-20'),(44,1,'1-21');
/*!40000 ALTER TABLE `user_group_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group` varchar(135) DEFAULT '',
  `user_group_desc` varchar(500) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'Manager','Can access all features.','','\0','0000-00-00 00:00:00','2017-09-30 08:38:29'),(2,'Cashier','Can access POS only','','\0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'TEST','','','','0000-00-00 00:00:00','2017-11-07 07:07:25');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups_permission`
--

DROP TABLE IF EXISTS `user_groups_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups_permission` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_group_id` bigint(20) DEFAULT NULL,
  `receiving_stock` varchar(20) DEFAULT NULL,
  `point_of_sale` varchar(20) DEFAULT NULL,
  `transactions` varchar(20) DEFAULT NULL,
  `sales_reports` varchar(20) DEFAULT NULL,
  `inventory_reports` varchar(20) DEFAULT NULL,
  `product_management` varchar(20) DEFAULT NULL,
  `supplier_management` varchar(20) DEFAULT NULL,
  `customer_management` varchar(20) DEFAULT NULL,
  `stock_management` varchar(20) DEFAULT NULL,
  `user_account` varchar(20) DEFAULT NULL,
  `user_rights` varchar(20) DEFAULT NULL,
  `company_info` varchar(20) DEFAULT NULL,
  `notes` varchar(20) DEFAULT NULL,
  `xreading` varchar(20) DEFAULT NULL,
  `zreading` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups_permission`
--

LOCK TABLES `user_groups_permission` WRITE;
/*!40000 ALTER TABLE `user_groups_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `vendor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_code` bigint(20) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  `is_last` bit(1) DEFAULT b'0',
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,NULL,'NO VENDOR',NULL,NULL,'0000-00-00 00:00:00','\0','','\0'),(2,NULL,'KITCHEN',NULL,NULL,'0000-00-00 00:00:00','\0','','\0'),(3,NULL,'BAR',NULL,NULL,'0000-00-00 00:00:00','\0','','\0'),(4,NULL,'GRILL',NULL,NULL,'0000-00-00 00:00:00','\0','','');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `void_logs`
--

DROP TABLE IF EXISTS `void_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `void_logs` (
  `void_logs_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_invoice_id` int(11) DEFAULT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `pos_qty` int(11) DEFAULT NULL,
  `pos_price` decimal(11,0) DEFAULT NULL,
  `pos_total` decimal(11,0) DEFAULT NULL,
  `void_datetime` datetime DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`void_logs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `void_logs`
--

LOCK TABLES `void_logs` WRITE;
/*!40000 ALTER TABLE `void_logs` DISABLE KEYS */;
INSERT INTO `void_logs` VALUES (1,152,'158',2,100,200,'2017-10-26 18:08:15',1),(2,152,'133',1,55,55,'2017-10-26 18:08:15',1),(3,157,'141',NULL,NULL,NULL,'2017-10-26 18:12:10',1),(4,158,'52',1,280,280,'2017-10-26 18:14:27',1),(5,158,'146',3,40,120,'2017-10-26 18:14:27',1),(6,158,'50',1,280,280,'2017-10-26 18:18:00',1),(7,152,'11',3,200,600,'2017-10-26 18:22:43',1),(8,157,'10',2,90,180,'2017-10-30 19:25:04',1),(9,158,'36',1,170,170,'2017-10-30 19:35:31',1),(10,159,'47',1,190,190,'2017-10-30 19:37:51',1);
/*!40000 ALTER TABLE `void_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10 10:11:18
