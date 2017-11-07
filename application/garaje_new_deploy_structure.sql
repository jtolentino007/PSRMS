CREATE DATABASE  IF NOT EXISTS `garaje_new` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `garaje_new`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: garaje_new
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`pos_invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 15:53:37
