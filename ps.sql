-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2017 at 05:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `cr_receipt` (`char_prefix` VARCHAR(10)) RETURNS VARCHAR(100) CHARSET latin1 BEGIN
	DECLARE vCtrLastVal DOUBLE;
    
    SET vCtrLastVal=(SELECT IFNULL(MAX(m.Ctr),0)+1 FROM
    	(	
    		SELECT REPLACE(x.receipt_no,CONCAT(char_prefix,'-'),'') as Ctr FROM pos_payment as x
            WHERE x.receipt_no LIKE CONCAT(char_prefix,'%')
    	)
    	as m);
        
 
  RETURN CONCAT(char_prefix,'-',LPAD(vCtrLastVal,5,'0'));
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `cr_receipt_new` (`char_prefix` VARCHAR(10)) RETURNS VARCHAR(100) CHARSET latin1 BEGIN
	DECLARE vCtrLastVal DOUBLE;
    DECLARE vYearNow VARCHAR(4);
    
    SET vYearNow=CAST(YEAR(NOW()) as CHAR);
    SET vCtrLastVal=(SELECT IFNULL(MAX(m.Ctr),0)+1 FROM
    	(	
    		SELECT REPLACE(x.receipt_no,CONCAT(char_prefix,'-'),'') as Ctr FROM pos_payment as x
            WHERE x.receipt_no LIKE CONCAT(char_prefix,'%')
    	)
    	as m);
        
 
  RETURN CONCAT(vYearNow,'-',char_prefix,'-',LPAD(vCtrLastVal,5,'0'));
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `approval_status`
--

CREATE TABLE `approval_status` (
  `approval_id` int(11) NOT NULL,
  `approval_status` varchar(100) DEFAULT '',
  `approval_description` varchar(555) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval_status`
--

INSERT INTO `approval_status` (`approval_id`, `approval_status`, `approval_description`, `is_active`, `is_deleted`) VALUES
(1, 'Approved', '', b'1', b'0'),
(2, 'Pending', '', b'1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` bigint(20) NOT NULL,
  `brand_code` bigint(20) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_code`, `brand_name`, `brand_desc`, `date_created`, `date_modified`, `is_deleted`, `is_active`) VALUES
(1, NULL, 'haha', 'haha', NULL, '0000-00-00 00:00:00', b'0', b'1'),
(2, NULL, 'test', 'test', NULL, '0000-00-00 00:00:00', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_id` bigint(20) NOT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_id`, `card_name`, `is_deleted`, `is_active`) VALUES
(1, 'Mastercard', b'0', b'1'),
(2, 'Visa', b'0', b'1'),
(3, 'tests', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `category_code` bigint(20) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_code`, `category_name`, `category_desc`, `date_created`, `date_modified`, `is_deleted`, `is_active`) VALUES
(1, NULL, 'Foods', 'foods', NULL, '0000-00-00 00:00:00', b'0', b'1'),
(2, NULL, 'test', 'test', NULL, '0000-00-00 00:00:00', b'1', b'1'),
(3, NULL, 'sdf', 'sdf', NULL, '0000-00-00 00:00:00', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(555) DEFAULT '',
  `company_address` varchar(755) DEFAULT '',
  `email_address` varchar(155) DEFAULT '',
  `mobile_no` varchar(125) DEFAULT '',
  `landline` varchar(125) DEFAULT '',
  `tin_no` varchar(55) DEFAULT NULL,
  `tax_type_id` int(11) DEFAULT '0',
  `registered_to` varchar(555) DEFAULT '',
  `terminal` varchar(3) NOT NULL,
  `logo_path` varchar(555) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_id`, `company_name`, `company_address`, `email_address`, `mobile_no`, `landline`, `tin_no`, `tax_type_id`, `registered_to`, `terminal`, `logo_path`) VALUES
(1, 'JDEV IT BUSINESS SOLUTIONS', 'Balibago', 'jdev@gg.com', '', '(045)900-3988', '576456465-00', NULL, '', '1', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL,
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
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_code`, `customer_name`, `address`, `email_address`, `landline`, `mobile_no`, `photo_path`, `date_created`, `date_modified`, `is_deleted`, `is_active`) VALUES
(1, '', 'John Doe', 'weee', 'weee', '023', '123', 'assets/img/customer/59546e6f1b5f8.jpg', '0000-00-00 00:00:00', '2017-07-03 07:41:46', b'0', b'1'),
(2, '', 'William Shakespeare', 'gdfgdfg', 'dfgdfg', '123432', '43244', 'assets/img/customer/59546f4b9597c.jpg', '0000-00-00 00:00:00', '2017-07-03 07:41:56', b'0', b'1'),
(3, '', 'Juan Dela Cruz', 'ssss', 'sdfsdfsdf', '0234234', '1232423', 'assets/img/customer/59546f3a1aca3.jpg', '0000-00-00 00:00:00', '2017-07-03 07:42:08', b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_photos`
--

CREATE TABLE `customer_photos` (
  `photo_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `photo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_photos`
--

INSERT INTO `customer_photos` (`photo_id`, `customer_id`, `photo_path`) VALUES
(5, 1, 'assets/img/customer/59546e6f1b5f8.jpg'),
(6, 2, 'assets/img/customer/59546f4b9597c.jpg'),
(7, 3, 'assets/img/customer/59546f3a1aca3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_invoice`
--

CREATE TABLE `delivery_invoice` (
  `dr_invoice_id` bigint(20) NOT NULL,
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
  `deleted_by_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_invoice`
--

INSERT INTO `delivery_invoice` (`dr_invoice_id`, `dr_invoice_no`, `supplier_id`, `remarks`, `total_discount`, `total_before_tax`, `total_tax_amount`, `total_after_tax`, `is_active`, `is_deleted`, `date_received`, `date_delivered`, `date_created`, `date_modified`, `date_deleted`, `posted_by_user`, `modified_by_user`, `deleted_by_user`) VALUES
(1, 'ERGDSF46', 1, 'TEST', '0.00', '98.22', '11.78', '110.00', b'1', b'1', '2017-06-27', '0000-00-00', '0000-00-00 00:00:00', '2017-06-28 01:21:25', '0000-00-00 00:00:00', 1, 0, 0),
(2, '98u7', 1, 'jgmhj', '0.00', '89.29', '10.71', '100.00', b'1', b'0', '2017-06-28', '0000-00-00', '0000-00-00 00:00:00', '2017-06-28 01:59:22', '0000-00-00 00:00:00', 1, 0, 0),
(3, NULL, 0, NULL, '0.00', '0.00', '0.00', '0.00', b'1', b'0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_invoice_items`
--

CREATE TABLE `delivery_invoice_items` (
  `dr_invoice_item_id` bigint(20) NOT NULL,
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
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_invoice_items`
--

INSERT INTO `delivery_invoice_items` (`dr_invoice_item_id`, `dr_invoice_id`, `product_id`, `unit_id`, `dr_qty`, `dr_discount`, `dr_price`, `dr_line_total_discount`, `dr_line_total_price`, `dr_tax_rate`, `dr_tax_amount`, `dr_non_tax_amount`, `is_deleted`) VALUES
(3, 1, 3, 0, '10.00', '0.00', '10.00', '0.00', '100.00', '12.00', '10.71', '89.29', b'0'),
(4, 1, 3, 0, '1.00', '0.00', '10.00', '0.00', '10.00', '12.00', '1.07', '8.93', b'0'),
(6, 2, 3, 0, '10.00', '0.00', '10.00', '0.00', '100.00', '12.00', '10.71', '89.29', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) NOT NULL,
  `department_code` bigint(20) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `department_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` bigint(100) NOT NULL,
  `discount_code` bigint(100) DEFAULT NULL,
  `discount_type` varchar(200) DEFAULT NULL,
  `discount_desc` varchar(200) DEFAULT NULL,
  `discount_percent` bigint(100) DEFAULT NULL,
  `discount_amount` bigint(100) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `discount_code`, `discount_type`, `discount_desc`, `discount_percent`, `discount_amount`, `is_deleted`, `is_active`) VALUES
(1, 123, '', 'test', 10, 100, b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `generics`
--

CREATE TABLE `generics` (
  `generic_id` bigint(20) NOT NULL,
  `generic_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generics`
--

INSERT INTO `generics` (`generic_id`, `generic_name`, `is_deleted`, `is_active`) VALUES
(1, 'test', b'0', b'1'),
(2, 'sdfsdf2', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `giftcards`
--

CREATE TABLE `giftcards` (
  `giftcard_id` bigint(20) NOT NULL,
  `giftcard_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `giftcards`
--

INSERT INTO `giftcards` (`giftcard_id`, `giftcard_name`, `is_deleted`, `is_active`) VALUES
(1, 'test', b'0', b'1'),
(2, 'weeee', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` bigint(20) NOT NULL,
  `inventory_code` bigint(20) DEFAULT NULL,
  `inventory_name` varchar(255) DEFAULT NULL,
  `inventory_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuance`
--

CREATE TABLE `issuance` (
  `issuance_id` int(11) NOT NULL,
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
  `deleted_by_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuance`
--

INSERT INTO `issuance` (`issuance_id`, `issuance_no`, `supplier_id`, `remarks`, `total_discount`, `total_before_tax`, `total_tax_amount`, `total_after_tax`, `is_active`, `is_deleted`, `date_issued`, `date_created`, `date_modified`, `date_deleted`, `posted_by_user`, `modified_by_user`, `deleted_by_user`) VALUES
(1, '5645645', 1, 'haha', '0.00', '49.11', '5.89', '55.00', b'1', b'1', '2017-06-28', '0000-00-00 00:00:00', '2017-06-28 03:56:32', '0000-00-00 00:00:00', 1, 0, 0),
(2, '657', 1, 'haha', '0.00', '26.79', '3.21', '30.00', b'1', b'0', '2017-06-28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `issuance_items`
--

CREATE TABLE `issuance_items` (
  `issuance_items_id` int(11) NOT NULL,
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
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuance_items`
--

INSERT INTO `issuance_items` (`issuance_items_id`, `issuance_id`, `product_id`, `unit_id`, `is_qty`, `is_discount`, `is_price`, `is_line_total_discount`, `is_line_total_price`, `is_tax_rate`, `is_tax_amount`, `is_non_tax_amount`, `is_deleted`) VALUES
(10, 1, 1, 0, '1.00', '0.00', '25.00', '0.00', '25.00', '12.00', '2.68', '22.32', b'0'),
(11, 1, 3, 0, '2.00', '0.00', '10.00', '0.00', '20.00', '12.00', '2.14', '17.86', b'0'),
(12, 1, 3, 0, '1.00', '0.00', '10.00', '0.00', '10.00', '12.00', '1.07', '8.93', b'0'),
(13, 2, 2, 0, '1.00', '0.00', '20.00', '0.00', '20.00', '12.00', '2.14', '17.86', b'0'),
(14, 2, 3, 0, '1.00', '0.00', '10.00', '0.00', '10.00', '12.00', '1.07', '8.93', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` bigint(20) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `is_deleted`, `is_active`) VALUES
(1, 'test', b'0', b'1'),
(2, 'weee', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL,
  `note1` varchar(755) DEFAULT '',
  `note2` varchar(755) DEFAULT '',
  `note3` varchar(755) DEFAULT '',
  `note4` varchar(755) DEFAULT '',
  `note5` varchar(755) DEFAULT '',
  `note6` varchar(755) DEFAULT '',
  `note7` varchar(755) DEFAULT '',
  `note8` varchar(755) DEFAULT '',
  `note9` varchar(755) DEFAULT '',
  `note10` varchar(755) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `note1`, `note2`, `note3`, `note4`, `note5`, `note6`, `note7`, `note8`, `note9`, `note10`) VALUES
(1, 'Balibago Angeles City', 'TIN # 1069023951', 'Accre # 21A10690239500053844934', 'Date Issued : mm/dd/yyyy', 'THIS INVOICE/RECEIPT SHALL BE', 'VALID FOR FIVE (5) YEARS FROM', 'THE DATE OF THE PERMIT TO USE', 'BSS POS', 'TEL. NO. (045)900-3988', 'THANK YOU PLEASE COME AGAIN');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL,
  `order_status` varchar(75) DEFAULT '',
  `order_description` varchar(555) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `order_status`, `order_description`, `is_active`, `is_deleted`) VALUES
(1, 'Open', '', b'1', b'0'),
(2, 'Closed', '', b'1', b'0'),
(3, 'Partially received', '', b'1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `method_id` int(11) NOT NULL,
  `method_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pos_invoice`
--

CREATE TABLE `pos_invoice` (
  `pos_invoice_id` bigint(20) NOT NULL,
  `totaldiscount` decimal(11,2) DEFAULT NULL,
  `before_tax` decimal(11,2) DEFAULT NULL,
  `tax_amount` decimal(11,2) DEFAULT NULL,
  `total_after_tax` decimal(11,2) DEFAULT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transaction_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `end_batch` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_invoice`
--

INSERT INTO `pos_invoice` (`pos_invoice_id`, `totaldiscount`, `before_tax`, `tax_amount`, `total_after_tax`, `transaction_date`, `transaction_timestamp`, `user_id`, `customer_id`, `end_batch`) VALUES
(1, '0.00', '40.18', '4.82', '45.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(2, '0.00', '40.18', '4.82', '45.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(3, '0.00', '120.53', '14.47', '135.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(4, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(5, '0.00', '40.18', '4.82', '45.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(6, '0.00', '13.39', '1.61', '15.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(7, '0.00', '1013.48', '121.52', '1135.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(8, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(9, '0.00', '1339.29', '160.71', '1500.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(10, '0.00', '13.39', '1.61', '15.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(11, '0.00', '183.04', '21.96', '205.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(12, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(13, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(14, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(15, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(16, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(17, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(18, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(19, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(20, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(21, '0.00', '80.37', '9.63', '90.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(22, '0.00', '80.37', '9.63', '90.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(23, '0.00', '89.28', '10.72', '100.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(24, '0.00', '66.96', '8.04', '75.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(25, '0.00', '66.96', '8.04', '75.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(26, '0.00', '89.28', '10.72', '100.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(27, '0.00', '80.37', '9.63', '90.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(28, '0.00', '107.16', '12.84', '120.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(29, '0.00', '209.82', '25.18', '235.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(30, '0.00', '125.01', '14.99', '140.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(31, '0.00', '147.33', '17.67', '165.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(32, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(33, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(34, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(35, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, 0, b'1'),
(36, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(37, '0.00', '53.58', '6.42', '60.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(38, '0.00', '316.98', '38.02', '355.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(39, '0.00', '133.95', '16.05', '150.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(40, '0.00', '165.18', '19.82', '185.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(41, '0.00', '133.95', '16.05', '150.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(42, '0.00', '236.61', '28.39', '265.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(43, '0.00', '294.69', '35.31', '330.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(44, '0.00', '272.34', '32.66', '305.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(45, '0.00', '236.61', '28.39', '265.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(46, '0.00', '111.61', '13.39', '125.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(47, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(48, '0.00', '580.36', '69.64', '650.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(49, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(50, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(51, '0.00', '205.35', '24.65', '230.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'1'),
(52, '0.00', '267.86', '32.14', '300.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(53, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(54, '0.00', '200.89', '24.11', '225.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(55, '0.00', '781.25', '93.75', '875.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(56, '0.00', '1071.43', '128.57', '1200.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(57, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(58, '0.00', '26.79', '3.21', '30.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(59, '0.00', '22.32', '2.68', '25.00', '2017-07-31 07:46:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(60, '0.00', '26.79', '3.21', '30.00', '2017-07-30 16:00:00', '2017-07-31 07:47:46', 1, NULL, b'0'),
(61, '0.00', '13.39', '1.61', '15.00', '2017-07-30 16:00:00', '2017-07-31 07:48:25', 1, NULL, b'0'),
(62, '0.00', '26.79', '3.21', '30.00', '2017-07-30 16:00:00', '2017-07-31 08:25:16', 1, NULL, b'0'),
(63, '0.00', '267.86', '32.14', '300.00', '2017-07-30 16:00:00', '2017-07-31 08:36:26', 1, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `pos_invoice_items`
--

CREATE TABLE `pos_invoice_items` (
  `pos_invoice_items_id` int(11) NOT NULL,
  `pos_invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pos_qty` int(20) DEFAULT NULL,
  `pos_price` decimal(11,0) DEFAULT NULL,
  `pos_discount` decimal(11,0) DEFAULT NULL,
  `tax_rate` decimal(11,2) DEFAULT NULL,
  `tax_amount` decimal(11,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_invoice_items`
--

INSERT INTO `pos_invoice_items` (`pos_invoice_items_id`, `pos_invoice_id`, `product_id`, `pos_qty`, `pos_price`, `pos_discount`, `tax_rate`, `tax_amount`, `total`) VALUES
(1, 1, 3, 2, '15', '0', '12.00', '3.21', '30.00'),
(2, 1, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(3, 2, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(4, 2, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(5, 3, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(6, 3, 1, 4, '30', '0', '12.00', '12.86', '120.00'),
(7, 4, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(8, 5, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(9, 5, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(10, 6, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(11, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(12, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(13, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(14, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(15, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(16, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(17, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(18, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(19, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(20, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(21, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(22, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(23, 7, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(24, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(25, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(26, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(27, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(28, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(29, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(30, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(31, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(32, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(33, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(34, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(35, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(36, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(37, 7, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(38, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(39, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(40, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(41, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(42, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(43, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(44, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(45, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(46, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(47, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(48, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(49, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(50, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(51, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(52, 7, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(53, 7, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(54, 8, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(55, 9, 3, 100, '15', '0', '12.00', '160.71', '1500.00'),
(56, 10, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(57, 11, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(58, 11, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(59, 11, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(60, 11, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(61, 11, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(62, 11, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(63, 11, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(64, 11, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(65, 12, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(66, 13, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(67, 14, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(68, 15, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(69, 16, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(70, 17, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(71, 18, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(72, 19, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(73, 20, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(74, 21, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(75, 21, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(76, 21, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(77, 22, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(78, 22, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(79, 22, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(80, 23, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(81, 23, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(82, 23, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(83, 23, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(84, 24, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(85, 24, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(86, 24, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(87, 25, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(88, 25, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(89, 25, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(90, 26, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(91, 26, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(92, 26, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(93, 26, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(94, 27, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(95, 27, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(96, 27, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(97, 28, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(98, 28, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(99, 28, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(100, 28, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(101, 29, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(102, 29, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(103, 29, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(104, 29, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(105, 29, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(106, 29, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(107, 29, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(108, 29, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(109, 29, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(110, 29, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(111, 30, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(112, 30, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(113, 30, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(114, 30, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(115, 30, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(116, 31, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(117, 31, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(118, 31, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(119, 31, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(120, 31, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(121, 31, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(122, 32, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(123, 33, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(124, 34, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(125, 35, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(126, 36, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(127, 37, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(128, 37, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(129, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(130, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(131, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(132, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(133, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(134, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(135, 38, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(136, 38, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(137, 38, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(138, 38, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(139, 38, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(140, 38, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(141, 38, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(142, 39, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(143, 39, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(144, 39, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(145, 39, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(146, 39, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(147, 40, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(148, 40, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(149, 40, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(150, 40, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(151, 40, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(152, 40, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(153, 40, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(154, 41, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(155, 41, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(156, 41, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(157, 41, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(158, 41, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(159, 42, 11, 1, '30', '0', '12.00', '3.21', '30.00'),
(160, 42, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(161, 42, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(162, 42, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(163, 42, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(164, 42, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(165, 42, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(166, 42, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(167, 42, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(168, 42, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(169, 42, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(170, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(171, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(172, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(173, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(174, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(175, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(176, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(177, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(178, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(179, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(180, 43, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(181, 44, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(182, 44, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(183, 44, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(184, 44, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(185, 44, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(186, 44, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(187, 44, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(188, 44, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(189, 44, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(190, 44, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(191, 44, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(192, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(193, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(194, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(195, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(196, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(197, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(198, 45, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(199, 45, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(200, 45, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(201, 45, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(202, 46, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(203, 46, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(204, 46, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(205, 46, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(206, 46, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(207, 47, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(208, 48, 2, 8, '25', '0', '12.00', '21.43', '200.00'),
(209, 48, 1, 15, '30', '0', '12.00', '48.21', '450.00'),
(210, 49, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(211, 50, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(212, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(213, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(214, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(215, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(216, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(217, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(218, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(219, 51, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(220, 51, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(221, 52, 3, 20, '15', '0', '12.00', '32.14', '300.00'),
(222, 53, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(223, 54, 1, 5, '30', '0', '12.00', '16.07', '150.00'),
(224, 54, 2, 3, '25', '0', '12.00', '8.04', '75.00'),
(225, 55, 2, 11, '25', '0', '12.00', '29.46', '275.00'),
(226, 55, 1, 20, '30', '0', '12.00', '64.29', '600.00'),
(227, 56, 2, 30, '25', '0', '12.00', '80.36', '750.00'),
(228, 56, 1, 15, '30', '0', '12.00', '48.21', '450.00'),
(229, 57, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(230, 58, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(231, 59, 2, 1, '25', '0', '12.00', '2.68', '25.00'),
(232, 60, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(233, 61, 3, 1, '15', '0', '12.00', '1.61', '15.00'),
(234, 62, 1, 1, '30', '0', '12.00', '3.21', '30.00'),
(235, 63, 1, 10, '30', '0', '12.00', '32.14', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `pos_payment`
--

CREATE TABLE `pos_payment` (
  `pos_payment_id` bigint(20) NOT NULL,
  `receipt_no` varchar(75) DEFAULT NULL,
  `amount_due` decimal(20,2) DEFAULT '0.00',
  `tendered` decimal(20,2) DEFAULT '0.00',
  `change` decimal(20,2) DEFAULT '0.00',
  `discount` decimal(20,2) DEFAULT '0.00',
  `pos_invoice_id` int(11) DEFAULT NULL,
  `transaction_date` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_payment`
--

INSERT INTO `pos_payment` (`pos_payment_id`, `receipt_no`, `amount_due`, `tendered`, `change`, `discount`, `pos_invoice_id`, `transaction_date`) VALUES
(1, 'T1-00001', '45.00', '45.00', '0.00', '0.00', 1, '2017-06-27'),
(2, 'T1-00002', '45.00', '45.00', '0.00', '0.00', 2, '2017-06-27'),
(3, 'T1-00003', '135.00', '135.00', '0.00', '0.00', 3, '2017-06-27'),
(4, 'T1-00004', '30.00', '30.00', '0.00', '0.00', 4, '2017-06-28'),
(5, 'T1-00005', '45.00', '45.00', '0.00', '0.00', 5, '2017-06-28'),
(6, 'T1-00006', '0.00', '0.00', '0.00', '0.00', 6, '2017-07-03'),
(7, 'T1-00007', '0.00', '0.00', '0.00', '0.00', 7, '2017-07-05'),
(8, 'T1-00008', '0.00', '0.00', '0.00', '0.00', 8, '2017-07-06'),
(9, 'T1-00009', '0.00', '0.00', '0.00', '0.00', 9, '2017-07-06'),
(10, 'T1-00010', '0.00', '0.00', '0.00', '0.00', 10, '2017-07-06'),
(11, 'T1-00011', '0.00', '0.00', '0.00', '0.00', 11, '2017-07-06'),
(12, 'T1-00012', '0.00', '0.00', '0.00', '0.00', 12, '2017-07-07'),
(13, 'T1-00013', '0.00', '0.00', '0.00', '0.00', 13, '2017-07-07'),
(14, 'T1-00014', '0.00', '0.00', '0.00', '0.00', 14, '2017-07-07'),
(15, 'T1-00015', '0.00', '0.00', '0.00', '0.00', 15, '2017-07-07'),
(16, 'T1-00016', '0.00', '0.00', '0.00', '0.00', 16, '2017-07-07'),
(17, 'T1-00017', '0.00', '0.00', '0.00', '0.00', 17, '2017-07-07'),
(18, 'T1-00018', '0.00', '0.00', '0.00', '0.00', 18, '2017-07-07'),
(19, 'T1-00019', '0.00', '0.00', '0.00', '0.00', 19, '2017-07-07'),
(20, 'T1-00020', '0.00', '0.00', '0.00', '0.00', 20, '2017-07-07'),
(21, 'T1-00021', '0.00', '0.00', '0.00', '0.00', 21, '2017-07-07'),
(22, 'T1-00022', '0.00', '0.00', '0.00', '0.00', 22, '2017-07-07'),
(23, 'T1-00023', '0.00', '0.00', '0.00', '0.00', 23, '2017-07-07'),
(24, 'T1-00024', '0.00', '0.00', '0.00', '0.00', 24, '2017-07-07'),
(25, 'T1-00025', '0.00', '0.00', '0.00', '0.00', 25, '2017-07-07'),
(26, 'T1-00026', '0.00', '0.00', '0.00', '0.00', 26, '2017-07-07'),
(27, 'T1-00027', '0.00', '0.00', '0.00', '0.00', 27, '2017-07-07'),
(28, 'T1-00028', '0.00', '0.00', '0.00', '0.00', 28, '2017-07-07'),
(29, 'T1-00029', '0.00', '0.00', '0.00', '0.00', 29, '2017-07-07'),
(30, 'T1-00030', '0.00', '0.00', '0.00', '0.00', 30, '2017-07-07'),
(31, 'T1-00031', '0.00', '0.00', '0.00', '0.00', 31, '2017-07-07'),
(32, 'T1-00032', '0.00', '0.00', '0.00', '0.00', 32, '2017-07-07'),
(33, 'T1-00033', '0.00', '0.00', '0.00', '0.00', 33, '2017-07-07'),
(34, 'T1-00034', '0.00', '0.00', '0.00', '0.00', 34, '2017-07-07'),
(35, 'T1-00035', '0.00', '0.00', '0.00', '0.00', 35, '2017-07-07'),
(36, 'T1-00036', '30.00', '50.00', '20.00', '0.00', 36, '2017-07-07'),
(37, 'T1-00037', '60.00', '100.00', '40.00', '0.00', 37, '2017-07-07'),
(38, 'T1-00038', '355.00', '500.00', '145.00', '0.00', 38, '2017-07-07'),
(39, 'T1-00039', '150.00', '150.00', '0.00', '0.00', 39, '2017-07-07'),
(40, 'T1-00040', '185.00', '200.00', '15.00', '0.00', 40, '2017-07-07'),
(41, 'T1-00041', '150.00', '200.00', '50.00', '0.00', 41, '2017-07-07'),
(42, 'T1-00042', '265.00', '500.00', '235.00', '0.00', 42, '2017-07-07'),
(43, 'T1-00043', '330.00', '400.00', '70.00', '0.00', 43, '2017-07-07'),
(44, 'T1-00044', '305.00', '500.00', '195.00', '0.00', 44, '2017-07-07'),
(45, 'T1-00045', '265.00', '300.00', '35.00', '0.00', 45, '2017-07-07'),
(46, 'T1-00046', '125.00', '200.00', '75.00', '0.00', 46, '2017-07-07'),
(47, 'T1-00047', '25.00', '50.00', '25.00', '0.00', 47, '2017-07-10'),
(48, 'T1-00048', '650.00', '650.00', '0.00', '0.00', 48, '2017-07-11'),
(49, 'T1-00049', '30.00', '50.00', '20.00', '0.00', 49, '2017-07-13'),
(50, 'T1-00050', '25.00', '50.00', '25.00', '0.00', 50, '2017-07-13'),
(51, 'T1-00051', '230.00', '500.00', '270.00', '0.00', 51, '2017-07-20'),
(52, 'T1-00052', '300.00', '500.00', '200.00', '0.00', 52, '2017-07-27'),
(53, 'T1-00053', '25.00', '50.00', '25.00', '0.00', 53, '2017-07-27'),
(54, 'T1-00054', '225.00', '250.00', '25.00', '0.00', 54, '2017-07-28'),
(55, 'T1-00055', '875.00', '1000.00', '125.00', '0.00', 55, '2017-07-31'),
(56, 'T1-00056', '1200.00', '1500.00', '300.00', '0.00', 56, '2017-07-31'),
(57, 'T1-00057', '30.00', '50.00', '20.00', '0.00', 57, '2017-07-31'),
(58, 'T1-00058', '30.00', '50.00', '20.00', '0.00', 58, '2017-07-31'),
(59, 'T1-00059', '25.00', '50.00', '25.00', '0.00', 59, '2017-07-31'),
(60, 'T1-00060', '30.00', '50.00', '20.00', '0.00', 60, '2017-07-31'),
(61, 'T1-00061', '15.00', '20.00', '5.00', '0.00', 61, '2017-07-31'),
(62, 'T1-00062', '30.00', '50.00', '20.00', '0.00', 62, '2017-07-31'),
(63, 'T1-00063', '300.00', '500.00', '200.00', '0.00', 63, '2017-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `pos_payment_details`
--

CREATE TABLE `pos_payment_details` (
  `payment_details_id` bigint(20) NOT NULL,
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
  `charge_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_payment_details`
--

INSERT INTO `pos_payment_details` (`payment_details_id`, `pos_payment_id`, `method_id`, `cash_amount`, `check_amount`, `card_amount`, `charge_amount`, `cash_remarks`, `check_bank`, `check_address`, `check_number`, `check_date`, `card_type`, `card_holder`, `card_number`, `approval_number`, `card_expiry_date`, `charge_to`, `charge_remarks`, `charge_date`) VALUES
(1, 1, 1, 45, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 45, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 135, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 30, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 45, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 20, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 1200, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 1500, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 205, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, 1, 100, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, 1, 120, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, 1, 250, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 1, 140, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 1, 170, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35, 1, 50, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
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
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inventory_type` varchar(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `is_tax_exempt` bit(1) DEFAULT b'0',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1',
  `supplier_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_desc`, `quantity`, `sale_cost`, `purchase_cost`, `tax_rate`, `markup_percent`, `minstock_order`, `maxstock_order`, `retailer_price`, `date_modified`, `inventory_type`, `category_id`, `brand_id`, `unit_id`, `vendor_id`, `is_tax_exempt`, `is_deleted`, `is_active`, `supplier_id`) VALUES
(1, '4567890', 'Tuna', 3, '30.00', '25.00', '12.00', '0.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'0', b'1', NULL),
(2, '09879667', 'Corn Beef', -3, '25.00', '20.00', '12.00', '0.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Non-Inventory', 1, 1, 1, 1, b'0', b'0', b'1', NULL),
(3, '488850', 'Cheese', 0, '15.00', '10.00', '12.00', '0.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'0', b'1', NULL),
(4, '23234234', 'sdfdsfsdf', 0, '123.00', '123.00', '10.00', '10.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(5, '324324', 'weeee', 0, '123.00', '123.00', '10.00', '10.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(6, '123213123', 'fffff', 0, '123.00', '123.00', '123.00', '123.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(7, '1213123', 'eeee', 0, '1123.00', '1123.00', '1123.00', '1.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(8, '324234', 'gfdfgdfg', 0, '234.00', '234.00', '234.00', '234.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(9, '11123123', 'ttttttttttt', 0, '123.00', '123.00', '123.00', '123.00', 0, 0, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(10, '123123', 'yeah', 0, '123.00', '123.00', '123.00', '123.00', 123, 123, '0.00', '0000-00-00 00:00:00', 'Non-Inventory', 1, 1, 1, 1, b'0', b'1', b'1', NULL),
(11, '1342324', 'Coca Cola', 0, '30.00', '25.00', '12.00', '30.00', 10, 100, '0.00', '0000-00-00 00:00:00', 'Inventory', 1, 1, 1, 1, b'0', b'0', b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_order_id` bigint(20) NOT NULL,
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
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `po_item_id` bigint(20) NOT NULL,
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
  `non_tax_amount` decimal(20,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `stock_details_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `reason` varchar(75) DEFAULT NULL,
  `added_stock` bigint(50) DEFAULT NULL,
  `minus_stock` bigint(50) DEFAULT NULL,
  `date_adjusted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`stock_details_id`, `product_id`, `reason`, `added_stock`, `minus_stock`, `date_adjusted`) VALUES
(1, 3, 'out', NULL, 1, '2017-06-27'),
(2, 3, 'out', NULL, 2, '2017-06-27'),
(3, 3, 'ad', 1, NULL, '2017-06-27'),
(4, 3, 'ad', 1, NULL, '2017-06-27'),
(5, 3, 'cheese out ', NULL, 3, '2017-06-27'),
(6, 3, 'haha', 1, NULL, '2017-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) NOT NULL,
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
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_code`, `supplier_name`, `contact_person`, `address`, `email_address`, `landline`, `mobile_no`, `photo_path`, `date_created`, `date_modified`, `tax_type_id`, `is_deleted`, `is_active`) VALUES
(1, '', 'Puregold', '', 'balibago', 'puregold@gmail.com', '', '', 'assets/img/supplier/59546c7c51330.jpg', '0000-00-00 00:00:00', '2017-06-29 02:57:01', 1, b'0', b'1'),
(2, '', 'weee', '', 'sdfsdf', 'sdfsdf', '123', '123', 'assets/img/supplier/59546c8676735.jpg', '0000-00-00 00:00:00', '2017-06-29 02:57:11', 1, b'0', b'1'),
(3, '', 'rrrr', '', 'sdfsdf', 'sdfsdf', '123', '123', 'assets/img/supplier/59546c8b8181d.jpg', '0000-00-00 00:00:00', '2017-06-29 02:57:16', 1, b'0', b'1'),
(4, '', 'yyyyy', '', 'aaaa', 'sdfsdf', '234', '234', 'assets/img/supplier/59546c971bdcc.jpg', '0000-00-00 00:00:00', '2017-06-29 02:57:27', 2, b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_photos`
--

CREATE TABLE `supplier_photos` (
  `photo_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT '0',
  `photo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `tax_type_id` int(11) NOT NULL,
  `tax_type` varchar(155) DEFAULT '',
  `tax_rate` decimal(11,2) DEFAULT '0.00',
  `description` varchar(555) DEFAULT '',
  `is_default` bit(1) DEFAULT b'0',
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_types`
--

INSERT INTO `tax_types` (`tax_type_id`, `tax_type`, `tax_rate`, `description`, `is_default`, `is_deleted`) VALUES
(1, 'Non-vat', '0.00', '', b'0', b'0'),
(2, 'Vatted', '12.00', '', b'1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` bigint(20) NOT NULL,
  `unit_code` bigint(20) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `unit_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_code`, `unit_name`, `unit_desc`, `date_created`, `date_modified`, `is_deleted`, `is_active`) VALUES
(1, NULL, 'haha', 'haha', NULL, '0000-00-00 00:00:00', b'0', b'1'),
(2, NULL, 'tests', 'tests', NULL, '0000-00-00 00:00:00', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `user_id` int(11) NOT NULL,
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
  `photo_path` varchar(255) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`user_id`, `user_name`, `user_pword`, `user_lname`, `user_fname`, `user_mname`, `user_address`, `user_email`, `user_mobile`, `user_telephone`, `user_bdate`, `user_group_id`, `photo_path`, `is_active`, `is_deleted`, `date_created`, `date_modified`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Solution', 'JDEV', 'IT Business', 'San Jose, San Simon, Pampanga', 'jdev.itbusiness.solutions@gmail.com', '0935-746-7601', '', '1970-01-01', 1, '', b'1', b'0', NULL, '2017-07-27 01:09:33'),
(2, 'asd', '8e545e1c31f91f777c894b3bd2c2e7d7044cc9dd', 'asd', 'asd', 'asd', 'asdsa', 'asdsa', 'asd', 'asdas', '2016-10-27', 1, 'assets/img/anonymous-icon.png', b'1', b'0', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `user_group_id` int(11) NOT NULL,
  `user_group` varchar(135) DEFAULT '',
  `user_group_desc` varchar(500) DEFAULT '',
  `is_active` bit(1) DEFAULT b'1',
  `is_deleted` bit(1) DEFAULT b'0',
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`) VALUES
(1, 'Super User', 'Can access all features.', b'1', b'0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups_permission`
--

CREATE TABLE `user_groups_permission` (
  `permission_id` bigint(20) NOT NULL,
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
  `zreading` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups_permission`
--

INSERT INTO `user_groups_permission` (`permission_id`, `user_group_id`, `receiving_stock`, `point_of_sale`, `transactions`, `sales_reports`, `inventory_reports`, `product_management`, `supplier_management`, `customer_management`, `stock_management`, `user_account`, `user_rights`, `company_info`, `notes`, `xreading`, `zreading`) VALUES
(1, 2, 'disabled', 'disabled', 'disabled', 'disabled', 'disabled', 'disabled', 'disabled', 'disabled', 'disabled', 'enabled', 'enabled', 'enabled', 'enabled', 'disabled', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` bigint(20) NOT NULL,
  `vendor_code` bigint(20) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_desc` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` bit(1) DEFAULT b'0',
  `is_active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_code`, `vendor_name`, `vendor_desc`, `date_created`, `date_modified`, `is_deleted`, `is_active`) VALUES
(1, NULL, 'haha', 'hahaha', NULL, '0000-00-00 00:00:00', b'0', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_status`
--
ALTER TABLE `approval_status`
  ADD PRIMARY KEY (`approval_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_photos`
--
ALTER TABLE `customer_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `delivery_invoice`
--
ALTER TABLE `delivery_invoice`
  ADD PRIMARY KEY (`dr_invoice_id`);

--
-- Indexes for table `delivery_invoice_items`
--
ALTER TABLE `delivery_invoice_items`
  ADD PRIMARY KEY (`dr_invoice_item_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `generics`
--
ALTER TABLE `generics`
  ADD PRIMARY KEY (`generic_id`);

--
-- Indexes for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD PRIMARY KEY (`giftcard_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `issuance`
--
ALTER TABLE `issuance`
  ADD PRIMARY KEY (`issuance_id`);

--
-- Indexes for table `issuance_items`
--
ALTER TABLE `issuance_items`
  ADD PRIMARY KEY (`issuance_items_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`method_id`);

--
-- Indexes for table `pos_invoice`
--
ALTER TABLE `pos_invoice`
  ADD PRIMARY KEY (`pos_invoice_id`);

--
-- Indexes for table `pos_invoice_items`
--
ALTER TABLE `pos_invoice_items`
  ADD PRIMARY KEY (`pos_invoice_items_id`);

--
-- Indexes for table `pos_payment`
--
ALTER TABLE `pos_payment`
  ADD PRIMARY KEY (`pos_payment_id`);

--
-- Indexes for table `pos_payment_details`
--
ALTER TABLE `pos_payment_details`
  ADD PRIMARY KEY (`payment_details_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_order_id`),
  ADD UNIQUE KEY `po_no` (`po_no`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`po_item_id`);

--
-- Indexes for table `stock_details`
--
ALTER TABLE `stock_details`
  ADD PRIMARY KEY (`stock_details_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supplier_photos`
--
ALTER TABLE `supplier_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`tax_type_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `user_groups_permission`
--
ALTER TABLE `user_groups_permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval_status`
--
ALTER TABLE `approval_status`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_photos`
--
ALTER TABLE `customer_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `delivery_invoice`
--
ALTER TABLE `delivery_invoice`
  MODIFY `dr_invoice_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `delivery_invoice_items`
--
ALTER TABLE `delivery_invoice_items`
  MODIFY `dr_invoice_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `generics`
--
ALTER TABLE `generics`
  MODIFY `generic_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `giftcards`
--
ALTER TABLE `giftcards`
  MODIFY `giftcard_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issuance`
--
ALTER TABLE `issuance`
  MODIFY `issuance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `issuance_items`
--
ALTER TABLE `issuance_items`
  MODIFY `issuance_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `method_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pos_invoice`
--
ALTER TABLE `pos_invoice`
  MODIFY `pos_invoice_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `pos_invoice_items`
--
ALTER TABLE `pos_invoice_items`
  MODIFY `pos_invoice_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `pos_payment`
--
ALTER TABLE `pos_payment`
  MODIFY `pos_payment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `pos_payment_details`
--
ALTER TABLE `pos_payment_details`
  MODIFY `payment_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `purchase_order_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `po_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_details`
--
ALTER TABLE `stock_details`
  MODIFY `stock_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier_photos`
--
ALTER TABLE `supplier_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `tax_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_groups_permission`
--
ALTER TABLE `user_groups_permission`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
